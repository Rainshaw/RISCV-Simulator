# 计算机结构与体系实习Lab4

## 使用x86 SIMD指令对应用程序进行优化并分析

### 图像格式转化

YUV2RGB:
$$
\begin{bmatrix}
R\\
G\\
B
\end{bmatrix}
=
\begin{bmatrix}
1.164383 & 0 & 1.596027 \\
1.164383 & -0.391762 & -0.812968 \\
1.164383  & 2.017232 & 0
\end{bmatrix}
\begin{bmatrix}
Y-16\\
U-128\\
V-128
\end{bmatrix}
$$
Alpha 混合:
$$
\begin{bmatrix}
R^\prime\\G^\prime\\B^\prime
\end{bmatrix}
=
\begin{bmatrix}
A/256 & 0 & 0 \\
0 & A/256 & 0 \\
0 & 0 & A/256 \\
\end{bmatrix}
\begin{bmatrix}
R\\G\\B
\end{bmatrix}
$$
RGB2YUV:
$$
\begin{bmatrix}
Y\\U\\V
\end{bmatrix}
=
\begin{bmatrix}
0.256788 & 0.504129 & 0.097906 \\
-0.148223 & -0.290993 & 0.439216 \\
0.439216 & -0.367788 & -0.071427 
\end{bmatrix}
\begin{bmatrix}
R^\prime\\G^\prime\\B^\prime
\end{bmatrix}
+
\begin{bmatrix}
16\\128\\128
\end{bmatrix}
$$

### 基础ISA

直接实现上述矩阵乘法即可。源代码如下：

```c++
void BasicProcessor() {
    auto *data = new Pixel[size];
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            int offset = i * width + j;
            int yi = (uint8_t) y[i][j];
            int ui = (uint8_t) u[i / 2][j / 2];
            int vi = (uint8_t) v[i / 2][j / 2];
            int r = 1.164383 * (yi - 16) + 1.596027 * (vi - 128);
            int b = 1.164383 * (yi - 16) + 2.017232 * (ui - 128);
            int g = 1.164383 * (yi - 16) - 0.391762 * (ui - 128) - 0.812968 * (vi - 128);
            data[offset].r = between(r);
            data[offset].b = between(b);
            data[offset].g = between(g);
        }
    }

    for (int num = 0; num < frame_num; num++) {
        int a = num * 3 + 1;
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                int offset = i * width + j;
                int r = data[offset].r * a / 256.0;
                int b = data[offset].b * a / 256.0;
                int g = data[offset].g * a / 256.0;
                int yi = 0.256788 * r + 0.504129 * g + 0.097906 * b + 16;
                int ui = -0.148223 * r - 0.290993 * g + 0.439216 * b + 128;
                int vi = 0.439216 * r - 0.367788 * g - 0.071427 * b + 128;
                result[num][0][offset] = yi;
                result[num][1][(i / 2) * (width / 2) + (j / 2)] = ui;
                result[num][2][(i / 2) * (width / 2) + (j / 2)] = vi;
            }
        }
    }
    delete[] data;
}
```



### MMX扩展指令

MMX是一个比较老的指令集，只支持整数运算，使用64位寄存器，在C++中可以通过引用`mmintrin.h`头文件。由于原本运算都是浮点数运算，这里我参考[stackoverflow](https://stackoverflow.com/questions/1737726/how-to-perform-rgb-yuv-conversion-in-c-c)给出的算法，给出了使用整数并行运算的实现。源代码如下：

```c++
void MMXProcessor() {
    auto *data = new __m64[size];
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            auto yi = (uint8_t) y[i][j];
            auto ui = (uint8_t) u[i / 2][j / 2];
            auto vi = (uint8_t) v[i / 2][j / 2];
            __m64 yuv = _mm_setr_pi16(16, 128, 128, 0);
            yuv = _mm_sub_pi16(_mm_setr_pi16(yi, ui, vi, 0), yuv);
            __m64 r = _mm_madd_pi16(yuv, _mm_setr_pi16(298, 0, 409, 0));
            __m64 g = _mm_madd_pi16(yuv, _mm_setr_pi16(298, -100, -208, 0));
            __m64 b = _mm_madd_pi16(yuv, _mm_setr_pi16(298, 516, 0, 0));
            int rr = (_mm_cvtsi64_si32(r) + int(_mm_cvtm64_si64(r) >> 32));
            int gg = (_mm_cvtsi64_si32(g) + int(_mm_cvtm64_si64(g) >> 32));
            int bb = (_mm_cvtsi64_si32(b) + int(_mm_cvtm64_si64(b) >> 32));
            __m64 val = _mm_setr_pi32(rr, gg);
            val = _mm_add_pi32(val, _mm_setr_pi32(128, 128));
            val = _mm_srai_pi32(val, 8);
            int ri = between(_mm_cvtsi64_si32(val));
            int gi = between(int(_mm_cvtm64_si64(val)>>32));
            int bi = between((bb + 128) >> 8);
            data[i * width + j] = _mm_setr_pi16(ri, gi, bi, 0);
        }
    }
    for (int num = 0; num < frame_num; num++) {
        int a = num * 3 + 1;
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                int offset = i * width + j;
                __m64 rgb = _mm_srli_pi16(_mm_mullo_pi16(data[offset], _mm_set1_pi16(a)), 8);
                __m64 yi = (_mm_madd_pi16(rgb, _mm_setr_pi16(66, 129, 25, 0)));
                __m64 ui = (_mm_madd_pi16(rgb, _mm_setr_pi16(-38, -74, 112, 0)));
                __m64 vi = (_mm_madd_pi16(rgb, _mm_setr_pi16(112, -94, -18, 0)));
                int yy = (_mm_cvtsi64_si32(yi) + int(_mm_cvtm64_si64(yi) >> 32));
                int uu = (_mm_cvtsi64_si32(ui) + int(_mm_cvtm64_si64(ui) >> 32));
                int vv = (_mm_cvtsi64_si32(vi) + int(_mm_cvtm64_si64(vi) >> 32));
                __m64 val = _mm_setr_pi32(yy, uu);
                val = _mm_add_pi32(val, _mm_setr_pi32(128, 128));
                val = _mm_srai_pi32(val, 8);
                val = _mm_add_pi32(val, _mm_setr_pi32(16, 128));
                int ri = between(_mm_cvtsi64_si32(val));
                int gi = between(int(_mm_cvtm64_si64(val)>>32));
                int bi = between(((vv + 128) >> 8) + 128);
                result[num][0][offset] = ri;
                result[num][1][(i / 2) * (width / 2) + j / 2] = gi;
                result[num][2][(i / 2) * (width / 2) + j / 2] = bi;
            }
        }
    }
    delete[] data;
};
```

### SSE2扩展指令

SSE和SSE2指令集使用128位寄存器，可同时处理4个单精度浮点数或2个双精度浮点数。由于图像转化过程精度要求不高，所以可以简单的将程序并行化。在C++中可以引用`emmintrin.h`头文件。源代码如下：

```c++
void SSE2Processor() {
    auto *data = new __m128[size];
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            auto yi = (uint8_t) y[i][j];
            auto ui = (uint8_t) u[i / 2][j / 2];
            auto vi = (uint8_t) v[i / 2][j / 2];
            __m128 rgb = _mm_setr_ps(yi, ui, vi, 0);
            float r, g, b;
            rgb = _mm_sub_ps(rgb, _mm_setr_ps(16, 128, 128, 0));
            _mm_store_ss(&r, _mm_dp_ps(rgb, _mm_setr_ps(1.164383, 0, 1.596027, 0), 0b01110001));
            _mm_store_ss(&g, _mm_dp_ps(rgb, _mm_setr_ps(1.164383, -0.391762, -0.812968, 0), 0b01110001));
            _mm_store_ss(&b, _mm_dp_ps(rgb, _mm_setr_ps(1.164383, 2.017232, 0, 0), 0b01110001));
            r = between(r);
            g = between(g);
            b = between(b);
            data[i * width + j] = _mm_setr_ps(r, g, b, 0);
        }
    }

    for (int num = 0; num < frame_num; num++) {
        int a = num * 3 + 1;
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                int offset = i * width + j;
                __m128 rgba = _mm_mul_ps(data[offset], _mm_set1_ps(a / 256.0));
                float yi, ui, vi;
                _mm_store_ss(&yi, _mm_dp_ps(rgba, _mm_setr_ps(0.256788, 0.504129, 0.097906, 0), 0b01110001));
                _mm_store_ss(&ui, _mm_dp_ps(rgba, _mm_setr_ps(-0.148223, -0.290993, 0.439216, 0), 0b01110001));
                _mm_store_ss(&vi, _mm_dp_ps(rgba, _mm_setr_ps(0.439216, -0.367788, -0.071427, 0), 0b01110001));
                result[num][0][offset] = yi + 16;
                result[num][1][(i / 2) * (width / 2) + j / 2] = ui + 128;
                result[num][2][(i / 2) * (width / 2) + j / 2] = vi + 128;
            }
        }
    }
    delete[] data;
};
```

### AVX扩展指令

AVX扩展指令使用256位寄存器，可同时处理8个单精度浮点数，这里我每次使用3个256位寄存器，一次处理8个数据点，极大的提高了并行效率。在C++中可以引用`immintrin.h`头文件。源代码如下：

```c++
void AVXProcessor() {
    auto *data = new __m256[size * 3 / 8];
    int cont = 0;
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            ...
              
            __m256 y0 = _mm256_setr_ps(yi0, yi1, yi2, yi3, yi4, yi5, yi6, yi7);
            y0 = _mm256_sub_ps(y0, _mm256_set1_ps(16));
            y0 = _mm256_mul_ps(y0, _mm256_set1_ps(1.164383));

            __m256 u0 = _mm256_setr_ps(ui0, ui1, ui2, ui3, ui4, ui5, ui6, ui7);
            u0 = _mm256_sub_ps(u0, _mm256_set1_ps(128));

            __m256 v0 = _mm256_setr_ps(vi0, vi1, vi2, vi3, vi4, vi5, vi6, vi7);
            v0 = _mm256_sub_ps(v0, _mm256_set1_ps(128));

            __m256 r = _mm256_add_ps(y0, _mm256_mul_ps(v0, _mm256_set1_ps(1.596027)));
            __m256 g = _mm256_add_ps(y0, _mm256_add_ps(_mm256_mul_ps(u0, _mm256_set1_ps(-0.391762)),
                                                       _mm256_mul_ps(v0, _mm256_set1_ps(-0.812968))));
            __m256 b = _mm256_add_ps(y0, _mm256_mul_ps(u0, _mm256_set1_ps(2.017232)));
            __m256 zero = _mm256_set1_ps(0);
            __m256 max = _mm256_set1_ps(255);

            r = _mm256_max_ps(r, zero);
            r = _mm256_min_ps(r, max);
            g = _mm256_max_ps(g, zero);
            g = _mm256_min_ps(g, max);
            b = _mm256_max_ps(b, zero);
            b = _mm256_min_ps(b, max);

            data[cont++] = r;
            data[cont++] = g;
            data[cont++] = b;
        }
    }


    for (int num = 0; num < frame_num; num++) {
        int a = num * 3 + 1;
        cont = 0;
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                __m256 r = data[cont++];
                __m256 g = data[cont++];
                __m256 b = data[cont++];

                r = _mm256_mul_ps(r, _mm256_set1_ps(a / 256.0));
                g = _mm256_mul_ps(g, _mm256_set1_ps(a / 256.0));
                b = _mm256_mul_ps(b, _mm256_set1_ps(a / 256.0));

                __m256 yi = _mm256_add_ps(_mm256_set1_ps(16),
                                          _mm256_add_ps(_mm256_mul_ps(r, _mm256_set1_ps(0.256788)),
                                                        _mm256_add_ps(_mm256_mul_ps(g, _mm256_set1_ps(0.504129)),
                                                                      _mm256_mul_ps(b, _mm256_set1_ps(0.097906)))));
                __m256 ui = _mm256_add_ps(_mm256_set1_ps(128),
                                          _mm256_add_ps(_mm256_mul_ps(r, _mm256_set1_ps(-0.148223)),
                                                        _mm256_add_ps(_mm256_mul_ps(g, _mm256_set1_ps(-0.290993)),
                                                                      _mm256_mul_ps(b, _mm256_set1_ps(0.439216)))));
                __m256 vi = _mm256_add_ps(_mm256_set1_ps(128),
                                          _mm256_add_ps(_mm256_mul_ps(r, _mm256_set1_ps(0.439216)),
                                                        _mm256_add_ps(_mm256_mul_ps(g, _mm256_set1_ps(-0.367788)),
                                                                      _mm256_mul_ps(b, _mm256_set1_ps(-0.071427)))));

                yi = _mm256_cvtps_epi32(yi);
                ui = _mm256_cvtps_epi32(ui);
                vi = _mm256_cvtps_epi32(vi);

                ...
            }
        }
    }
    delete[] data;
};
```

### 运行结果

使用ffplay播放生成文件，仅凭肉眼看不出四个指令集生成文件的差异。对四个指令集运行时间统计如下表：

| 源文件   | BASIC  | MMX    | SSE2  | AVX   |
| -------- | ------ | ------ | ----- | ----- |
| dem1.yuv | 1230ms | 1243ms | 648ms | 375ms |
| dem2.yuv | 1274ms | 1281ms | 635ms | 332ms |

从上表中可以看出，SSE2和AVX指令对图像处理速度有很大提升，而MMX指令集相对基础指令集并没有太大改进。下面对这个结果做一个原因分析：

1. MMX使用整数运算，相对基础指令集并没有有效减少指令数。
2. SSE2相对BASIC实现了2倍的性能提升，这是因为SSE2中采用SIMD将点积运算并行化了。
3. AVX相对SSE2也有2倍性能提升，这是因为AVX中利用循环展开的方法，将原本的8次循环转化为1次循环，一次处理8个数据点，极大的实现了并行计算技术。

## 设计自定义扩展指令对SIMD应用优化并分析

### 需求

设计若干32位宽的扩展指令，支持8个宽度为256位的SIMD指令专用寄存器，支持8/16/32位pack、unpack计算，支持加/减/乘法，支持饱和计算，支持必要的数据传输指令。

### 自设计指令的编码、助记符，以及语义

一共有8个SIMD寄存器，分别标号m0~m7，则需要3位标示一个SIMD寄存器。为尽可能与RISCV其他扩展指令集兼容，OPCODE域仍取7位。为了满足SIMD的扩展性，使用5位标示一个SIMD寄存器，则可扩展至32个SIMD寄存器，个数与x、f寄存器相同。

| 编码                                              | 助记符    | 语义                                                         |
| ------------------------------------------------- | --------- | ------------------------------------------------------------ |
| \|0000000\|mrs2\|mrs1\|000\|mrd\|0000100\|        | addri8p   | mrs1和mrs2按packed 8位int相加放入mrd                         |
| \|0000000\|mrs2\|mrs1\|001\|mrd\|0000100\|        | addri8ps  | mrs1和mrs2按packed 8位int饱和相加放入mrd                     |
| \|0000001\|mrs2\|mrs1\|000\|mrd\|0000100\|        | addri16p  | mrs1和mrs2按packed 16位int相加放入mrd                        |
| \|0000001\|mrs2\|mrs1\|001\|mrd\|0000100\|        | addri16ps | mrs1和mrs2按packed 16位int饱和相加放入mrd                    |
| \|0000010\|mrs2\|mrs1\|000\|mrd\|0000100\|        | addri32p  | mrs1和mrs2按packed 32位int相加放入mrd                        |
| \|0000010\|mrs2\|mrs1\|001\|mrd\|0000100\|        | addri32ps | mrs1和mrs2按packed 32位int饱和相加放入mrd                    |
| \|0000011\|mrs2\|mrs1\|000\|mrd\|0000100\|        | addri64p  | mrs1和mrs2按packed 64位int相加放入mrd                        |
| \|0000011\|mrs2\|mrs1\|001\|mrd\|0000100\|        | addri64ps | mrs1和mrs2按packed 64位int饱和相加放入mrd                    |
| \|0000110\|mrs2\|mrs1\|000\|mrd\|0000100\|        | addrf32p  | mrs1和mrs2按packed 32位float相加放入mrd                      |
| \|0000111\|mrs2\|mrs1\|000\|mrd\|0000100\|        | addrf64p  | mrs1和mrs2按packed 64位double相加放入mrd                     |
| \|0001000\|mrs2\|mrs1\|000\|mrd\|0000100\|        | subri8p   | mrs1和mrs2按packed 8位int相减放入mrd                         |
| \|0001000\|mrs2\|mrs1\|001\|mrd\|0000100\|        | subri8ps  | mrs1和mrs2按packed 8位int饱和相减放入mrd                     |
| \|0001001\|mrs2\|mrs1\|000\|mrd\|0000100\|        | subri16p  | mrs1和mrs2按packed 16位int相减放入mrd                        |
| \|0001001\|mrs2\|mrs1\|001\|mrd\|0000100\|        | subri16ps | mrs1和mrs2按packed 16位int饱和相减放入mrd                    |
| \|0001010\|mrs2\|mrs1\|000\|mrd\|0000100\|        | subri32p  | mrs1和mrs2按packed 32位int相减放入mrd                        |
| \|0001010\|mrs2\|mrs1\|001\|mrd\|0000100\|        | subri32ps | mrs1和mrs2按packed 32位int饱和相减放入mrd                    |
| \|0001011\|mrs2\|mrs1\|000\|mrd\|0000100\|        | subri64p  | mrs1和mrs2按packed 64位int相减放入mrd                        |
| \|0001011\|mrs2\|mrs1\|001\|mrd\|0000100\|        | subri64ps | mrs1和mrs2按packed 64位int饱和相减放入mrd                    |
| \|0001110\|mrs2\|mrs1\|000\|mrd\|0000100\|        | subrf32p  | mrs1和mrs2按packed 32位float相减放入mrd                      |
| \|0001111\|mrs2\|mrs1\|000\|mrd\|0000100\|        | subrf64p  | mrs1和mrs2按packed 64位double相减放入mrd                     |
| \|0010000\|mrs2\|mrs1\|000\|mrd\|0000100\|        | mulri8p   | mrs1和mrs2按packed 8位int相乘放入mrd                         |
| \|0010001\|mrs2\|mrs1\|000\|mrd\|0000100\|        | mulri16p  | mrs1和mrs2按packed 16位int相乘放入mrd                        |
| \|0010010\|mrs2\|mrs1\|000\|mrd\|0000100\|        | mulri32p  | mrs1和mrs2按packed 32位int相乘放入mrd                        |
| \|0010011\|mrs2\|mrs1\|000\|mrd\|0000100\|        | mulri64p  | mrs1和mrs2按packed 64位int相乘放入mrd                        |
| \|0010110\|mrs2\|mrs1\|000\|mrd\|0000100\|        | mulrf32p  | mrs1和mrs2按packed 32位float相乘放入mrd                      |
| \|0010111\|mrs2\|mrs1\|000\|mrd\|0000100\|        | mulrf64p  | mrs1和mrs2按packed 64位double相乘放入mrd                     |
| \|0100000\|mrs2\|mrs1\|000\|mrd\|0000100\|        | maxri8p   | mrs1和mrs2按packed 8位int比较，大的放入mrd                   |
| \|0100001\|mrs2\|mrs1\|000\|mrd\|0000100\|        | maxri16p  | mrs1和mrs2按packed 16位int比较，大的放入mrd                  |
| \|0100010\|mrs2\|mrs1\|000\|mrd\|0000100\|        | maxri32p  | mrs1和mrs2按packed 32位int比较，大的放入mrd                  |
| \|0100011\|mrs2\|mrs1\|000\|mrd\|0000100\|        | maxri64p  | mrs1和mrs2按packed 64位int比较，大的放入mrd                  |
| \|0100110\|mrs2\|mrs1\|000\|mrd\|0000100\|        | maxrf32p  | mrs1和mrs2按packed 32位float比较，大的放入mrd                |
| \|0100111\|mrs2\|mrs1\|000\|mrd\|0000100\|        | maxrf64p  | mrs1和mrs2按packed 64位double比较，大的放入mrd               |
| \|1000000\|mrs2\|mrs1\|000\|mrd\|0000100\|        | minri8p   | mrs1和mrs2按packed 8位int比较，小的放入mrd                   |
| \|1000001\|mrs2\|mrs1\|000\|mrd\|0000100\|        | minri16p  | mrs1和mrs2按packed 16位int比较，小的放入mrd                  |
| \|1000010\|mrs2\|mrs1\|000\|mrd\|0000100\|        | minri32p  | mrs1和mrs2按packed 32位int比较，小的放入mrd                  |
| \|1000011\|mrs2\|mrs1\|000\|mrd\|0000100\|        | minri64p  | mrs1和mrs2按packed 64位int比较，小的放入mrd                  |
| \|1000110\|mrs2\|mrs1\|000\|mrd\|0000100\|        | minrf32p  | mrs1和mrs2按packed 32位float比较，小的放入mrd                |
| \|1000111\|mrs2\|mrs1\|000\|mrd\|0000100\|        | minrf64p  | mrs1和mrs2按packed 64位double比较，小的放入mrd               |
| \|imm[11:0]\|xrs1\|000\|mrd\|0001000\|            | addii8p   | xrs1和imm按packed 8位int相加复制多次放入mrd                  |
| \|imm[11:0]\|xrs1\|001\|mrd\|0001000\|            | addii16ps | xrs1和imm按packed 16位int相加复制多次放入mrd                 |
| \|imm[11:0]\|xrs1\|010\|mrd\|0001000\|            | addii32p  | xrs1和imm按packed 32位int相加复制多次放入mrd                 |
| \|imm[11:0]\|xrs1\|011\|mrd\|0001000\|            | addii64p  | xrs1和imm按packed 64位int相加复制多次放入mrd                 |
| \|imm[11:0]\|frs1\|110\|mrd\|0001000\|            | addif32p  | frs1和imm按packed 32位float相加复制多次放入mrd               |
| \|imm[11:0]\|frs1\|111\|mrd\|0001000\|            | addif64p  | frs1和imm按packed 64位double相加复制多次放入mrd              |
| \|0000000\|xrs2\|mrs1\|000\|mrd\|0100000\|        | sumi8     | 按8位整型计算mrs1中的和，结果存入mrd的第xrs2处(mrd视为64位分组) |
| \|0000001\|xrs2\|mrs1\|000\|mrd\|0100000\|        | sumi16    | 按16位整型计算mrs1中的和，结果存入mrd的第xrs2处(mrd视为64位分组) |
| \|0000010\|xrs2\|mrs1\|000\|mrd\|0100000\|        | sumi32    | 按32位整型计算mrs1中的和，结果存入mrd的第xrs2处(mrd视为64位分组) |
| \|0000011\|xrs2\|mrs1\|000\|mrd\|0100000\|        | sumi64    | 按64位整型计算mrs1中的和，结果存入mrd的第xrs2处(mrd视为64位分组) |
| \|0000110\|xrs2\|mrs1\|000\|mrd\|0100000\|        | sumf32    | 按32位浮点计算mrs1中的和，结果存入mrd的第xrs2处(mrd视为64位分组) |
| \|0000111\|xrs2\|mrs1\|000\|mrd\|0100000\|        | sumf64    | 按64位浮点计算mrs1中的和，结果存入mrd的第xrs2处(mrd视为64位分组) |
| \|imm[11:0]\|xrs1\|000\|mrd\|0010000\|            | lv        | xrs1和imm相加作为内存地址，从该地址读取32字节数据存入mrd     |
| \|imm[11:5]\|mrs2\|xrs1\|001\|imm[4:0]\|0010000\| | sd        | xrs1和imm相加作为内存地址，从mrs2中向该地址写入32字节数据    |

### 使用mySIMD重写核心程序

基本上是改写AVX指令集的程序，m0~m8为8个SIMD寄存器

```c++
void AVsXProcessor() {
    auto **data = new double *[size];
    for (int i = 0; i < size; i++) {
        data[i] = new double[4];
    }

    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            auto yi0 = (uint8_t) y[i][j];
            auto ui0 = (uint8_t) u[i / 2][j / 2];
            auto vi0 = (uint8_t) v[i / 2][j / 2];

            double tmp[4] = {yi0, ui0, vi0, 0};
            m0 = lv tmp, 0
            tmp = {16.0, 128.0, 128.0, 0.0};
            m1 = lv tmp, 0
            m0 = subrf64p m0, m1

            tmp = {1.164383, 0.0, 1.596027, 0.0};
            m1 = lv tmp, 0
            m2 = mulrf64p m0, m1

            tmp = {1.164383, -0.391762, -0.812968, 0.0};
            m1 = lv  tmp, 0
            m3 = mulrf64p m0, m1

            tmp = {1.164384, 2.017232, 0.0, 0.0};
            m1 = lv tmp, 0
            m4 = mulrf64p m0, m1

            m5 = sumf64 m2, 0
            m5 = sumf64 m3, 1
            m5 = sumf64 m4, 2

            tmp = {0, 0, 0, 0};
            m1 = lv tmp, 0
            m5 = maxrf64p m5, m1

            tmp = {255, 255, 255, 255};
            m1 = lv tmp, 0
            m5 = minrf64p m5, m1

            sv m5, data[i * width + j]
        }
    }


    for (int num = 0; num < frame_num; num++) {
        int a = num * 3 + 1;
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {

                double tmp[4] = {a / 256.0, a / 256.0, a / 256.0, a / 256.0};
                m0 = lv data[i * width + j], 0
                m1 = lv tmp, 0
                m0 = mulrf64p m0, m1

                tmp = {0.256788, 0.504129, 0.097906, 0.0};
                m1 = lv tmp, 0
                m2 = mulrf64p m0, m1

                tmp = {-0.148223, 0.290993, 0.439126, 0.0};
                m1 = lv tmp, 0
                m3 = mulrf64p m0, m1

                tmp = {0.439126, -0.367788, -0.071427, 0.0};
                m1 = lv tmp, 0
                m4 = mulrf64p m0, m1

                m5 = sumf64 m2, 0
                m5 = sumf64 m3, 1
                m5 = sumf64 m4, 2

                tmp = {16, 128, 128, 0};
                m1 = lv tmp, 0
                m5 = addrf64p m5, m1

                sv m5, tmp

                result[num][0][i * width + j] = tmp[0];
                result[num][1][(i / 2) * (width / 2) + j / 2] = tmp[1];
                result[num][2][(i / 2) * (width / 2) + j / 2] = tmp[2];

            }
        }
    }
    for (int i = 0; i < size; i++) {
        delete[] data[i];
    }
    delete[] data;
};
```

### 性能提升

使用mySIMD指令集后，主程序共包含32条SIMD指令，由于每条指令处理4个数据，但有一个数据是无效的，所以相对于一个像素点，其减少的指令数为32\*2=64条。如果进行优化，则每次循环只需要4个SIMD寄存器，那么由于图像处理出现数据冒险是小概率的，所以可以同时进行两个循环。

综上所述，减少的指令数大约为64\*1920\*1080=1.3x10^8条，执行速度会是原来的三倍左右。
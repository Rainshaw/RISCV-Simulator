//
// Created by 郜瑞啸 on 2020/5/26.
//

#include <cstdlib>
#include <cstdio>
#include <string>
#include <fstream>
#include <mmintrin.h> //MMX
#include <immintrin.h> //AVX
#include <emmintrin.h> //SSE 2
#include <ctime>

#define between(x) x<0? 0:(x>255? 255:x)

enum ISAType {
    BASIC = 0,
    MMX = 1,
    SSE2 = 2,
    AVX = 3,
} isa;

struct Pixel {
    uint8_t r, b, g, a;
};

const char *ISAName[]{
        "BASIC", "MMX", "SSE2", "AVX"
};
const int width = 1920;
const int height = 1080;
int size = width * height;
char *file_name = nullptr;
char y[height][width];
char u[height / 2][width / 2];
char v[height / 2][width / 2];
const int frame_num = 85;
char *result[frame_num][3];

bool parsePara(int argc, char **argv);

void printUsage();

void BasicProcessor();

void MMXProcessor();

void SSE2Processor();

void AVXProcessor();

int main(int argc, char *argv[]) {
    if (!parsePara(argc, argv)) {
        printUsage();
        exit(-1);
    }

    FILE *reader = fopen(file_name, "r");

    for (auto &i : result) {
        i[0] = new char[size];
        i[1] = new char[size / 4];
        i[2] = new char[size / 4];
    }

    fread(y, 1, width * height, reader);
    fread(u, 1, width / 2 * height / 2, reader);
    fread(v, 1, width / 2 * height / 2, reader);
    fclose(reader);

    int interval;
    if (isa == BASIC) {
        auto start = clock();
        BasicProcessor();
        auto end = clock();
        interval = (end - start) * 1000 / CLOCKS_PER_SEC;
    } else if (isa == MMX) {
        auto start = clock();
        MMXProcessor();
        auto end = clock();
        interval = (end - start) * 1000 / CLOCKS_PER_SEC;
    } else if (isa == SSE2) {
        auto start = clock();
        SSE2Processor();
        auto end = clock();
        interval = (end - start) * 1000 / CLOCKS_PER_SEC;

    } else {
        auto start = clock();
        AVXProcessor();
        auto end = clock();
        interval = (end - start) * 1000 / CLOCKS_PER_SEC;
    }
    printf("%s:\t%dms\n", ISAName[isa], interval);

    std::ofstream out(std::string(file_name) + "." + ISAName[isa] + ".yuv");
    for (auto &i : result) {
        out.write(i[0], size);
        out.write(i[1], size / 4);
        out.write(i[2], size / 4);
    }
    out.close();

    for (auto &i : result) {
        delete i[0];
        delete i[1];
        delete i[2];
    }
}

bool parsePara(int argc, char **argv) {
    for (int i = 1; i < argc; i++) {
        if (argv[i][0] == '-') {
            switch (argv[i][1]) {
                case 'i':
                    if (++i < argc) {
                        std::string type = argv[i];
                        if (type == "BASIC") {
                            isa = BASIC;
                        } else if (type == "MMX") {
                            isa = MMX;
                        } else if (type == "SSE2") {
                            isa = SSE2;
                        } else if (type == "AVX") {
                            isa = AVX;
                        } else {
                            return false;
                        }
                    } else {
                        return false;
                    }
                    break;
                default:
                    return false;
            }
        } else {
            if (file_name == nullptr) {
                file_name = argv[i];
            } else {
                return false;
            }
        }
    }
    return file_name != nullptr;
}

void printUsage() {
    printf("Usage: ./YuvImageProcessor -i isa yuv-file-path\n");
    printf("\tParameters:\n");
    printf("\t\tyuv-file-path: the path of the input yuv file\n");
    printf("\t\t-i: claim isa type\n");
    printf("\t\t    accpeted para: BASIC, MMX, SSE2, AVX\n");
}

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

void AVXProcessor() {
    auto *data = new __m256[size * 3 / 8];
    int cont = 0;
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            auto yi0 = (uint8_t) y[i][j];
            auto ui0 = (uint8_t) u[i / 2][j / 2];
            auto vi0 = (uint8_t) v[i / 2][j / 2];

            auto yi1 = (uint8_t) y[i][++j];
            auto ui1 = (uint8_t) u[i / 2][j / 2];
            auto vi1 = (uint8_t) v[i / 2][j / 2];

            auto yi2 = (uint8_t) y[i][++j];
            auto ui2 = (uint8_t) u[i / 2][j / 2];
            auto vi2 = (uint8_t) v[i / 2][j / 2];

            auto yi3 = (uint8_t) y[i][++j];
            auto ui3 = (uint8_t) u[i / 2][j / 2];
            auto vi3 = (uint8_t) v[i / 2][j / 2];

            auto yi4 = (uint8_t) y[i][++j];
            auto ui4 = (uint8_t) u[i / 2][j / 2];
            auto vi4 = (uint8_t) v[i / 2][j / 2];

            auto yi5 = (uint8_t) y[i][++j];
            auto ui5 = (uint8_t) u[i / 2][j / 2];
            auto vi5 = (uint8_t) v[i / 2][j / 2];

            auto yi6 = (uint8_t) y[i][++j];
            auto ui6 = (uint8_t) u[i / 2][j / 2];
            auto vi6 = (uint8_t) v[i / 2][j / 2];

            auto yi7 = (uint8_t) y[i][++j];
            auto ui7 = (uint8_t) u[i / 2][j / 2];
            auto vi7 = (uint8_t) v[i / 2][j / 2];

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
//            printf("y0:%d u0:%d v0:%d\n", yi0, ui0, vi0);
//            printf("r:%d g:%d b:%d\n", _mm256_extract_epi32(_mm256_cvtps_epi32(r), 0),
//                    _mm256_extract_epi32(_mm256_cvtps_epi32(g), 0), _mm256_extract_epi32(_mm256_cvtps_epi32(b), 0));
//            _mm256_cvtps_epi32(b);
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

                result[num][0][i * width + j] = _mm256_extract_epi32(yi, 0);
                result[num][1][(i / 2) * (width / 2) + j / 2] = _mm256_extract_epi32(ui, 0);
                result[num][2][(i / 2) * (width / 2) + j / 2] = _mm256_extract_epi32(vi, 0);
                result[num][0][i * width + (++j)] = _mm256_extract_epi32(yi, 1);
                result[num][1][(i / 2) * (width / 2) + j / 2] = _mm256_extract_epi32(ui, 1);
                result[num][2][(i / 2) * (width / 2) + j / 2] = _mm256_extract_epi32(vi, 1);
                result[num][0][i * width + (++j)] = _mm256_extract_epi32(yi, 2);
                result[num][1][(i / 2) * (width / 2) + j / 2] = _mm256_extract_epi32(ui, 2);
                result[num][2][(i / 2) * (width / 2) + j / 2] = _mm256_extract_epi32(vi, 2);
                result[num][0][i * width + (++j)] = _mm256_extract_epi32(yi, 3);
                result[num][1][(i / 2) * (width / 2) + j / 2] = _mm256_extract_epi32(ui, 3);
                result[num][2][(i / 2) * (width / 2) + j / 2] = _mm256_extract_epi32(vi, 3);
                result[num][0][i * width + (++j)] = _mm256_extract_epi32(yi, 4);
                result[num][1][(i / 2) * (width / 2) + j / 2] = _mm256_extract_epi32(ui, 4);
                result[num][2][(i / 2) * (width / 2) + j / 2] = _mm256_extract_epi32(vi, 4);
                result[num][0][i * width + (++j)] = _mm256_extract_epi32(yi, 5);
                result[num][1][(i / 2) * (width / 2) + j / 2] = _mm256_extract_epi32(ui, 5);
                result[num][2][(i / 2) * (width / 2) + j / 2] = _mm256_extract_epi32(vi, 5);
                result[num][0][i * width + (++j)] = _mm256_extract_epi32(yi, 6);
                result[num][1][(i / 2) * (width / 2) + j / 2] = _mm256_extract_epi32(ui, 6);
                result[num][2][(i / 2) * (width / 2) + j / 2] = _mm256_extract_epi32(vi, 6);
                result[num][0][i * width + (++j)] = _mm256_extract_epi32(yi, 7);
                result[num][1][(i / 2) * (width / 2) + j / 2] = _mm256_extract_epi32(ui, 7);
                result[num][2][(i / 2) * (width / 2) + j / 2] = _mm256_extract_epi32(vi, 7);
            }
        }
    }
    delete[] data;
};

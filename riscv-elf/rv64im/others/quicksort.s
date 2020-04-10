
quicksort.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00011537          	lui	a0,0x11
   100bc:	9ec50513          	addi	a0,a0,-1556 # 109ec <__libc_fini_array>
   100c0:	1890006f          	j	10a48 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00001197          	auipc	gp,0x1
   100cc:	75818193          	addi	gp,gp,1880 # 11820 <__global_pointer$>
   100d0:	f6018513          	addi	a0,gp,-160 # 11780 <completed.5525>
   100d4:	f9818613          	addi	a2,gp,-104 # 117b8 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	708000ef          	jal	ra,107e8 <memset>
   100e4:	00001517          	auipc	a0,0x1
   100e8:	96450513          	addi	a0,a0,-1692 # 10a48 <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00001517          	auipc	a0,0x1
   100f4:	8fc50513          	addi	a0,a0,-1796 # 109ec <__libc_fini_array>
   100f8:	151000ef          	jal	ra,10a48 <atexit>
   100fc:	650000ef          	jal	ra,1074c <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	278000ef          	jal	ra,10384 <main>
   10110:	60c0006f          	j	1071c <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	f601c703          	lbu	a4,-160(gp) # 11780 <completed.5525>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00011537          	lui	a0,0x11
   10138:	00050513          	mv	a0,a0
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	f6f18023          	sb	a5,-160(gp) # 11780 <completed.5525>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00011537          	lui	a0,0x11
   1016c:	f6818593          	addi	a1,gp,-152 # 11788 <object.5530>
   10170:	00050513          	mv	a0,a0
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <quicksort>:
   10180:	fd010113          	addi	sp,sp,-48
   10184:	02113423          	sd	ra,40(sp)
   10188:	02813023          	sd	s0,32(sp)
   1018c:	03010413          	addi	s0,sp,48
   10190:	fca43c23          	sd	a0,-40(s0)
   10194:	00058793          	mv	a5,a1
   10198:	00060713          	mv	a4,a2
   1019c:	fcf42a23          	sw	a5,-44(s0)
   101a0:	00070793          	mv	a5,a4
   101a4:	fcf42823          	sw	a5,-48(s0)
   101a8:	fd442703          	lw	a4,-44(s0)
   101ac:	fd042783          	lw	a5,-48(s0)
   101b0:	0007071b          	sext.w	a4,a4
   101b4:	0007879b          	sext.w	a5,a5
   101b8:	1ae7cc63          	blt	a5,a4,10370 <quicksort+0x1f0>
   101bc:	fd442783          	lw	a5,-44(s0)
   101c0:	00279793          	slli	a5,a5,0x2
   101c4:	fd843703          	ld	a4,-40(s0)
   101c8:	00f707b3          	add	a5,a4,a5
   101cc:	0007a783          	lw	a5,0(a5)
   101d0:	fef42223          	sw	a5,-28(s0)
   101d4:	fd442783          	lw	a5,-44(s0)
   101d8:	fef42623          	sw	a5,-20(s0)
   101dc:	fd042783          	lw	a5,-48(s0)
   101e0:	fef42423          	sw	a5,-24(s0)
   101e4:	0f40006f          	j	102d8 <quicksort+0x158>
   101e8:	fe842783          	lw	a5,-24(s0)
   101ec:	fff7879b          	addiw	a5,a5,-1
   101f0:	fef42423          	sw	a5,-24(s0)
   101f4:	fe842783          	lw	a5,-24(s0)
   101f8:	00279793          	slli	a5,a5,0x2
   101fc:	fd843703          	ld	a4,-40(s0)
   10200:	00f707b3          	add	a5,a4,a5
   10204:	0007a703          	lw	a4,0(a5)
   10208:	fe442783          	lw	a5,-28(s0)
   1020c:	0007879b          	sext.w	a5,a5
   10210:	02f74463          	blt	a4,a5,10238 <quicksort+0xb8>
   10214:	fec42703          	lw	a4,-20(s0)
   10218:	fe842783          	lw	a5,-24(s0)
   1021c:	0007071b          	sext.w	a4,a4
   10220:	0007879b          	sext.w	a5,a5
   10224:	fcf742e3          	blt	a4,a5,101e8 <quicksort+0x68>
   10228:	0100006f          	j	10238 <quicksort+0xb8>
   1022c:	fec42783          	lw	a5,-20(s0)
   10230:	0017879b          	addiw	a5,a5,1
   10234:	fef42623          	sw	a5,-20(s0)
   10238:	fec42783          	lw	a5,-20(s0)
   1023c:	00279793          	slli	a5,a5,0x2
   10240:	fd843703          	ld	a4,-40(s0)
   10244:	00f707b3          	add	a5,a4,a5
   10248:	0007a703          	lw	a4,0(a5)
   1024c:	fe442783          	lw	a5,-28(s0)
   10250:	0007879b          	sext.w	a5,a5
   10254:	00e7cc63          	blt	a5,a4,1026c <quicksort+0xec>
   10258:	fec42703          	lw	a4,-20(s0)
   1025c:	fe842783          	lw	a5,-24(s0)
   10260:	0007071b          	sext.w	a4,a4
   10264:	0007879b          	sext.w	a5,a5
   10268:	fcf742e3          	blt	a4,a5,1022c <quicksort+0xac>
   1026c:	fec42703          	lw	a4,-20(s0)
   10270:	fe842783          	lw	a5,-24(s0)
   10274:	0007071b          	sext.w	a4,a4
   10278:	0007879b          	sext.w	a5,a5
   1027c:	04f75e63          	bge	a4,a5,102d8 <quicksort+0x158>
   10280:	fec42783          	lw	a5,-20(s0)
   10284:	00279793          	slli	a5,a5,0x2
   10288:	fd843703          	ld	a4,-40(s0)
   1028c:	00f707b3          	add	a5,a4,a5
   10290:	0007a783          	lw	a5,0(a5)
   10294:	fef42023          	sw	a5,-32(s0)
   10298:	fe842783          	lw	a5,-24(s0)
   1029c:	00279793          	slli	a5,a5,0x2
   102a0:	fd843703          	ld	a4,-40(s0)
   102a4:	00f70733          	add	a4,a4,a5
   102a8:	fec42783          	lw	a5,-20(s0)
   102ac:	00279793          	slli	a5,a5,0x2
   102b0:	fd843683          	ld	a3,-40(s0)
   102b4:	00f687b3          	add	a5,a3,a5
   102b8:	00072703          	lw	a4,0(a4)
   102bc:	00e7a023          	sw	a4,0(a5)
   102c0:	fe842783          	lw	a5,-24(s0)
   102c4:	00279793          	slli	a5,a5,0x2
   102c8:	fd843703          	ld	a4,-40(s0)
   102cc:	00f707b3          	add	a5,a4,a5
   102d0:	fe042703          	lw	a4,-32(s0)
   102d4:	00e7a023          	sw	a4,0(a5)
   102d8:	fec42703          	lw	a4,-20(s0)
   102dc:	fe842783          	lw	a5,-24(s0)
   102e0:	0007071b          	sext.w	a4,a4
   102e4:	0007879b          	sext.w	a5,a5
   102e8:	f0f716e3          	bne	a4,a5,101f4 <quicksort+0x74>
   102ec:	fec42783          	lw	a5,-20(s0)
   102f0:	00279793          	slli	a5,a5,0x2
   102f4:	fd843703          	ld	a4,-40(s0)
   102f8:	00f70733          	add	a4,a4,a5
   102fc:	fd442783          	lw	a5,-44(s0)
   10300:	00279793          	slli	a5,a5,0x2
   10304:	fd843683          	ld	a3,-40(s0)
   10308:	00f687b3          	add	a5,a3,a5
   1030c:	00072703          	lw	a4,0(a4)
   10310:	00e7a023          	sw	a4,0(a5)
   10314:	fec42783          	lw	a5,-20(s0)
   10318:	00279793          	slli	a5,a5,0x2
   1031c:	fd843703          	ld	a4,-40(s0)
   10320:	00f707b3          	add	a5,a4,a5
   10324:	fe442703          	lw	a4,-28(s0)
   10328:	00e7a023          	sw	a4,0(a5)
   1032c:	fec42783          	lw	a5,-20(s0)
   10330:	fff7879b          	addiw	a5,a5,-1
   10334:	0007871b          	sext.w	a4,a5
   10338:	fd442783          	lw	a5,-44(s0)
   1033c:	00070613          	mv	a2,a4
   10340:	00078593          	mv	a1,a5
   10344:	fd843503          	ld	a0,-40(s0)
   10348:	e39ff0ef          	jal	ra,10180 <quicksort>
   1034c:	fec42783          	lw	a5,-20(s0)
   10350:	0017879b          	addiw	a5,a5,1
   10354:	0007879b          	sext.w	a5,a5
   10358:	fd042703          	lw	a4,-48(s0)
   1035c:	00070613          	mv	a2,a4
   10360:	00078593          	mv	a1,a5
   10364:	fd843503          	ld	a0,-40(s0)
   10368:	e19ff0ef          	jal	ra,10180 <quicksort>
   1036c:	0080006f          	j	10374 <quicksort+0x1f4>
   10370:	00000013          	nop
   10374:	02813083          	ld	ra,40(sp)
   10378:	02013403          	ld	s0,32(sp)
   1037c:	03010113          	addi	sp,sp,48
   10380:	00008067          	ret

0000000000010384 <main>:
   10384:	e1010113          	addi	sp,sp,-496
   10388:	1e113423          	sd	ra,488(sp)
   1038c:	1e813023          	sd	s0,480(sp)
   10390:	1f010413          	addi	s0,sp,496
   10394:	00a00793          	li	a5,10
   10398:	fcf42c23          	sw	a5,-40(s0)
   1039c:	000117b7          	lui	a5,0x11
   103a0:	ba078793          	addi	a5,a5,-1120 # 10ba0 <__errno+0x58>
   103a4:	0007b583          	ld	a1,0(a5)
   103a8:	0087b603          	ld	a2,8(a5)
   103ac:	0107b683          	ld	a3,16(a5)
   103b0:	0187b703          	ld	a4,24(a5)
   103b4:	0207b783          	ld	a5,32(a5)
   103b8:	fab43423          	sd	a1,-88(s0)
   103bc:	fac43823          	sd	a2,-80(s0)
   103c0:	fad43c23          	sd	a3,-72(s0)
   103c4:	fce43023          	sd	a4,-64(s0)
   103c8:	fcf43423          	sd	a5,-56(s0)
   103cc:	000117b7          	lui	a5,0x11
   103d0:	b5078513          	addi	a0,a5,-1200 # 10b50 <__errno+0x8>
   103d4:	270000ef          	jal	ra,10644 <print_s>
   103d8:	fe042623          	sw	zero,-20(s0)
   103dc:	0380006f          	j	10414 <main+0x90>
   103e0:	fec42783          	lw	a5,-20(s0)
   103e4:	00279793          	slli	a5,a5,0x2
   103e8:	ff040713          	addi	a4,s0,-16
   103ec:	00f707b3          	add	a5,a4,a5
   103f0:	fb87a783          	lw	a5,-72(a5)
   103f4:	00078513          	mv	a0,a5
   103f8:	220000ef          	jal	ra,10618 <print_d>
   103fc:	000117b7          	lui	a5,0x11
   10400:	b6078513          	addi	a0,a5,-1184 # 10b60 <__errno+0x18>
   10404:	240000ef          	jal	ra,10644 <print_s>
   10408:	fec42783          	lw	a5,-20(s0)
   1040c:	0017879b          	addiw	a5,a5,1
   10410:	fef42623          	sw	a5,-20(s0)
   10414:	fec42703          	lw	a4,-20(s0)
   10418:	fd842783          	lw	a5,-40(s0)
   1041c:	0007071b          	sext.w	a4,a4
   10420:	0007879b          	sext.w	a5,a5
   10424:	faf74ee3          	blt	a4,a5,103e0 <main+0x5c>
   10428:	000117b7          	lui	a5,0x11
   1042c:	b6878513          	addi	a0,a5,-1176 # 10b68 <__errno+0x20>
   10430:	214000ef          	jal	ra,10644 <print_s>
   10434:	000117b7          	lui	a5,0x11
   10438:	b7078513          	addi	a0,a5,-1168 # 10b70 <__errno+0x28>
   1043c:	208000ef          	jal	ra,10644 <print_s>
   10440:	fd842783          	lw	a5,-40(s0)
   10444:	fff7879b          	addiw	a5,a5,-1
   10448:	0007871b          	sext.w	a4,a5
   1044c:	fa840793          	addi	a5,s0,-88
   10450:	00070613          	mv	a2,a4
   10454:	00000593          	li	a1,0
   10458:	00078513          	mv	a0,a5
   1045c:	d25ff0ef          	jal	ra,10180 <quicksort>
   10460:	fe042423          	sw	zero,-24(s0)
   10464:	0380006f          	j	1049c <main+0x118>
   10468:	fe842783          	lw	a5,-24(s0)
   1046c:	00279793          	slli	a5,a5,0x2
   10470:	ff040713          	addi	a4,s0,-16
   10474:	00f707b3          	add	a5,a4,a5
   10478:	fb87a783          	lw	a5,-72(a5)
   1047c:	00078513          	mv	a0,a5
   10480:	198000ef          	jal	ra,10618 <print_d>
   10484:	000117b7          	lui	a5,0x11
   10488:	b6078513          	addi	a0,a5,-1184 # 10b60 <__errno+0x18>
   1048c:	1b8000ef          	jal	ra,10644 <print_s>
   10490:	fe842783          	lw	a5,-24(s0)
   10494:	0017879b          	addiw	a5,a5,1
   10498:	fef42423          	sw	a5,-24(s0)
   1049c:	fe842703          	lw	a4,-24(s0)
   104a0:	fd842783          	lw	a5,-40(s0)
   104a4:	0007071b          	sext.w	a4,a4
   104a8:	0007879b          	sext.w	a5,a5
   104ac:	faf74ee3          	blt	a4,a5,10468 <main+0xe4>
   104b0:	000117b7          	lui	a5,0x11
   104b4:	b6878513          	addi	a0,a5,-1176 # 10b68 <__errno+0x20>
   104b8:	18c000ef          	jal	ra,10644 <print_s>
   104bc:	06400793          	li	a5,100
   104c0:	fcf42a23          	sw	a5,-44(s0)
   104c4:	fe042223          	sw	zero,-28(s0)
   104c8:	0340006f          	j	104fc <main+0x178>
   104cc:	06400713          	li	a4,100
   104d0:	fe442783          	lw	a5,-28(s0)
   104d4:	40f707bb          	subw	a5,a4,a5
   104d8:	0007871b          	sext.w	a4,a5
   104dc:	fe442783          	lw	a5,-28(s0)
   104e0:	00279793          	slli	a5,a5,0x2
   104e4:	ff040693          	addi	a3,s0,-16
   104e8:	00f687b3          	add	a5,a3,a5
   104ec:	e2e7a423          	sw	a4,-472(a5)
   104f0:	fe442783          	lw	a5,-28(s0)
   104f4:	0017879b          	addiw	a5,a5,1
   104f8:	fef42223          	sw	a5,-28(s0)
   104fc:	fe442783          	lw	a5,-28(s0)
   10500:	0007871b          	sext.w	a4,a5
   10504:	06300793          	li	a5,99
   10508:	fce7d2e3          	bge	a5,a4,104cc <main+0x148>
   1050c:	000117b7          	lui	a5,0x11
   10510:	b8078513          	addi	a0,a5,-1152 # 10b80 <__errno+0x38>
   10514:	130000ef          	jal	ra,10644 <print_s>
   10518:	fe042023          	sw	zero,-32(s0)
   1051c:	0380006f          	j	10554 <main+0x1d0>
   10520:	fe042783          	lw	a5,-32(s0)
   10524:	00279793          	slli	a5,a5,0x2
   10528:	ff040713          	addi	a4,s0,-16
   1052c:	00f707b3          	add	a5,a4,a5
   10530:	e287a783          	lw	a5,-472(a5)
   10534:	00078513          	mv	a0,a5
   10538:	0e0000ef          	jal	ra,10618 <print_d>
   1053c:	000117b7          	lui	a5,0x11
   10540:	b6078513          	addi	a0,a5,-1184 # 10b60 <__errno+0x18>
   10544:	100000ef          	jal	ra,10644 <print_s>
   10548:	fe042783          	lw	a5,-32(s0)
   1054c:	0017879b          	addiw	a5,a5,1
   10550:	fef42023          	sw	a5,-32(s0)
   10554:	fe042703          	lw	a4,-32(s0)
   10558:	fd442783          	lw	a5,-44(s0)
   1055c:	0007071b          	sext.w	a4,a4
   10560:	0007879b          	sext.w	a5,a5
   10564:	faf74ee3          	blt	a4,a5,10520 <main+0x19c>
   10568:	000117b7          	lui	a5,0x11
   1056c:	b6878513          	addi	a0,a5,-1176 # 10b68 <__errno+0x20>
   10570:	0d4000ef          	jal	ra,10644 <print_s>
   10574:	000117b7          	lui	a5,0x11
   10578:	b9078513          	addi	a0,a5,-1136 # 10b90 <__errno+0x48>
   1057c:	0c8000ef          	jal	ra,10644 <print_s>
   10580:	fd442783          	lw	a5,-44(s0)
   10584:	fff7879b          	addiw	a5,a5,-1
   10588:	0007871b          	sext.w	a4,a5
   1058c:	e1840793          	addi	a5,s0,-488
   10590:	00070613          	mv	a2,a4
   10594:	00000593          	li	a1,0
   10598:	00078513          	mv	a0,a5
   1059c:	be5ff0ef          	jal	ra,10180 <quicksort>
   105a0:	fc042e23          	sw	zero,-36(s0)
   105a4:	0380006f          	j	105dc <main+0x258>
   105a8:	fdc42783          	lw	a5,-36(s0)
   105ac:	00279793          	slli	a5,a5,0x2
   105b0:	ff040713          	addi	a4,s0,-16
   105b4:	00f707b3          	add	a5,a4,a5
   105b8:	e287a783          	lw	a5,-472(a5)
   105bc:	00078513          	mv	a0,a5
   105c0:	058000ef          	jal	ra,10618 <print_d>
   105c4:	000117b7          	lui	a5,0x11
   105c8:	b6078513          	addi	a0,a5,-1184 # 10b60 <__errno+0x18>
   105cc:	078000ef          	jal	ra,10644 <print_s>
   105d0:	fdc42783          	lw	a5,-36(s0)
   105d4:	0017879b          	addiw	a5,a5,1
   105d8:	fcf42e23          	sw	a5,-36(s0)
   105dc:	fdc42703          	lw	a4,-36(s0)
   105e0:	fd442783          	lw	a5,-44(s0)
   105e4:	0007071b          	sext.w	a4,a4
   105e8:	0007879b          	sext.w	a5,a5
   105ec:	faf74ee3          	blt	a4,a5,105a8 <main+0x224>
   105f0:	000117b7          	lui	a5,0x11
   105f4:	b6878513          	addi	a0,a5,-1176 # 10b68 <__errno+0x20>
   105f8:	04c000ef          	jal	ra,10644 <print_s>
   105fc:	09c000ef          	jal	ra,10698 <exit_proc>
   10600:	00000793          	li	a5,0
   10604:	00078513          	mv	a0,a5
   10608:	1e813083          	ld	ra,488(sp)
   1060c:	1e013403          	ld	s0,480(sp)
   10610:	1f010113          	addi	sp,sp,496
   10614:	00008067          	ret

0000000000010618 <print_d>:
   10618:	fe010113          	addi	sp,sp,-32
   1061c:	00813c23          	sd	s0,24(sp)
   10620:	02010413          	addi	s0,sp,32
   10624:	00050793          	mv	a5,a0
   10628:	fef42623          	sw	a5,-20(s0)
   1062c:	00100893          	li	a7,1
   10630:	00000073          	ecall
   10634:	00000013          	nop
   10638:	01813403          	ld	s0,24(sp)
   1063c:	02010113          	addi	sp,sp,32
   10640:	00008067          	ret

0000000000010644 <print_s>:
   10644:	fe010113          	addi	sp,sp,-32
   10648:	00813c23          	sd	s0,24(sp)
   1064c:	02010413          	addi	s0,sp,32
   10650:	fea43423          	sd	a0,-24(s0)
   10654:	00300893          	li	a7,3
   10658:	00000073          	ecall
   1065c:	00000013          	nop
   10660:	01813403          	ld	s0,24(sp)
   10664:	02010113          	addi	sp,sp,32
   10668:	00008067          	ret

000000000001066c <print_c>:
   1066c:	fe010113          	addi	sp,sp,-32
   10670:	00813c23          	sd	s0,24(sp)
   10674:	02010413          	addi	s0,sp,32
   10678:	00050793          	mv	a5,a0
   1067c:	fef407a3          	sb	a5,-17(s0)
   10680:	00200893          	li	a7,2
   10684:	00000073          	ecall
   10688:	00000013          	nop
   1068c:	01813403          	ld	s0,24(sp)
   10690:	02010113          	addi	sp,sp,32
   10694:	00008067          	ret

0000000000010698 <exit_proc>:
   10698:	ff010113          	addi	sp,sp,-16
   1069c:	00813423          	sd	s0,8(sp)
   106a0:	01010413          	addi	s0,sp,16
   106a4:	00000893          	li	a7,0
   106a8:	00000073          	ecall
   106ac:	00000013          	nop
   106b0:	00813403          	ld	s0,8(sp)
   106b4:	01010113          	addi	sp,sp,16
   106b8:	00008067          	ret

00000000000106bc <read_char>:
   106bc:	fe010113          	addi	sp,sp,-32
   106c0:	00813c23          	sd	s0,24(sp)
   106c4:	02010413          	addi	s0,sp,32
   106c8:	00500893          	li	a7,5
   106cc:	00000073          	ecall
   106d0:	00050793          	mv	a5,a0
   106d4:	fef407a3          	sb	a5,-17(s0)
   106d8:	fef44783          	lbu	a5,-17(s0)
   106dc:	00078513          	mv	a0,a5
   106e0:	01813403          	ld	s0,24(sp)
   106e4:	02010113          	addi	sp,sp,32
   106e8:	00008067          	ret

00000000000106ec <read_num>:
   106ec:	fe010113          	addi	sp,sp,-32
   106f0:	00813c23          	sd	s0,24(sp)
   106f4:	02010413          	addi	s0,sp,32
   106f8:	00400893          	li	a7,4
   106fc:	00000073          	ecall
   10700:	00050793          	mv	a5,a0
   10704:	fef43423          	sd	a5,-24(s0)
   10708:	fe843783          	ld	a5,-24(s0)
   1070c:	00078513          	mv	a0,a5
   10710:	01813403          	ld	s0,24(sp)
   10714:	02010113          	addi	sp,sp,32
   10718:	00008067          	ret

000000000001071c <exit>:
   1071c:	ff010113          	addi	sp,sp,-16
   10720:	00000593          	li	a1,0
   10724:	00813023          	sd	s0,0(sp)
   10728:	00113423          	sd	ra,8(sp)
   1072c:	00050413          	mv	s0,a0
   10730:	194000ef          	jal	ra,108c4 <__call_exitprocs>
   10734:	f481b503          	ld	a0,-184(gp) # 11768 <_global_impure_ptr>
   10738:	05853783          	ld	a5,88(a0) # 11058 <impure_data+0x38>
   1073c:	00078463          	beqz	a5,10744 <exit+0x28>
   10740:	000780e7          	jalr	a5
   10744:	00040513          	mv	a0,s0
   10748:	3bc000ef          	jal	ra,10b04 <_exit>

000000000001074c <__libc_init_array>:
   1074c:	fe010113          	addi	sp,sp,-32
   10750:	00813823          	sd	s0,16(sp)
   10754:	01213023          	sd	s2,0(sp)
   10758:	00011437          	lui	s0,0x11
   1075c:	00011937          	lui	s2,0x11
   10760:	00440793          	addi	a5,s0,4 # 11004 <__preinit_array_end>
   10764:	00490913          	addi	s2,s2,4 # 11004 <__preinit_array_end>
   10768:	40f90933          	sub	s2,s2,a5
   1076c:	00113c23          	sd	ra,24(sp)
   10770:	00913423          	sd	s1,8(sp)
   10774:	40395913          	srai	s2,s2,0x3
   10778:	02090063          	beqz	s2,10798 <__libc_init_array+0x4c>
   1077c:	00440413          	addi	s0,s0,4
   10780:	00000493          	li	s1,0
   10784:	00043783          	ld	a5,0(s0)
   10788:	00148493          	addi	s1,s1,1
   1078c:	00840413          	addi	s0,s0,8
   10790:	000780e7          	jalr	a5
   10794:	fe9918e3          	bne	s2,s1,10784 <__libc_init_array+0x38>
   10798:	00011437          	lui	s0,0x11
   1079c:	00011937          	lui	s2,0x11
   107a0:	00840793          	addi	a5,s0,8 # 11008 <__init_array_start>
   107a4:	01890913          	addi	s2,s2,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   107a8:	40f90933          	sub	s2,s2,a5
   107ac:	40395913          	srai	s2,s2,0x3
   107b0:	02090063          	beqz	s2,107d0 <__libc_init_array+0x84>
   107b4:	00840413          	addi	s0,s0,8
   107b8:	00000493          	li	s1,0
   107bc:	00043783          	ld	a5,0(s0)
   107c0:	00148493          	addi	s1,s1,1
   107c4:	00840413          	addi	s0,s0,8
   107c8:	000780e7          	jalr	a5
   107cc:	fe9918e3          	bne	s2,s1,107bc <__libc_init_array+0x70>
   107d0:	01813083          	ld	ra,24(sp)
   107d4:	01013403          	ld	s0,16(sp)
   107d8:	00813483          	ld	s1,8(sp)
   107dc:	00013903          	ld	s2,0(sp)
   107e0:	02010113          	addi	sp,sp,32
   107e4:	00008067          	ret

00000000000107e8 <memset>:
   107e8:	00f00313          	li	t1,15
   107ec:	00050713          	mv	a4,a0
   107f0:	02c37a63          	bgeu	t1,a2,10824 <memset+0x3c>
   107f4:	00f77793          	andi	a5,a4,15
   107f8:	0a079063          	bnez	a5,10898 <memset+0xb0>
   107fc:	06059e63          	bnez	a1,10878 <memset+0x90>
   10800:	ff067693          	andi	a3,a2,-16
   10804:	00f67613          	andi	a2,a2,15
   10808:	00e686b3          	add	a3,a3,a4
   1080c:	00b73023          	sd	a1,0(a4)
   10810:	00b73423          	sd	a1,8(a4)
   10814:	01070713          	addi	a4,a4,16
   10818:	fed76ae3          	bltu	a4,a3,1080c <memset+0x24>
   1081c:	00061463          	bnez	a2,10824 <memset+0x3c>
   10820:	00008067          	ret
   10824:	40c306b3          	sub	a3,t1,a2
   10828:	00269693          	slli	a3,a3,0x2
   1082c:	00000297          	auipc	t0,0x0
   10830:	005686b3          	add	a3,a3,t0
   10834:	00c68067          	jr	12(a3)
   10838:	00b70723          	sb	a1,14(a4)
   1083c:	00b706a3          	sb	a1,13(a4)
   10840:	00b70623          	sb	a1,12(a4)
   10844:	00b705a3          	sb	a1,11(a4)
   10848:	00b70523          	sb	a1,10(a4)
   1084c:	00b704a3          	sb	a1,9(a4)
   10850:	00b70423          	sb	a1,8(a4)
   10854:	00b703a3          	sb	a1,7(a4)
   10858:	00b70323          	sb	a1,6(a4)
   1085c:	00b702a3          	sb	a1,5(a4)
   10860:	00b70223          	sb	a1,4(a4)
   10864:	00b701a3          	sb	a1,3(a4)
   10868:	00b70123          	sb	a1,2(a4)
   1086c:	00b700a3          	sb	a1,1(a4)
   10870:	00b70023          	sb	a1,0(a4)
   10874:	00008067          	ret
   10878:	0ff5f593          	andi	a1,a1,255
   1087c:	00859693          	slli	a3,a1,0x8
   10880:	00d5e5b3          	or	a1,a1,a3
   10884:	01059693          	slli	a3,a1,0x10
   10888:	00d5e5b3          	or	a1,a1,a3
   1088c:	02059693          	slli	a3,a1,0x20
   10890:	00d5e5b3          	or	a1,a1,a3
   10894:	f6dff06f          	j	10800 <memset+0x18>
   10898:	00279693          	slli	a3,a5,0x2
   1089c:	00000297          	auipc	t0,0x0
   108a0:	005686b3          	add	a3,a3,t0
   108a4:	00008293          	mv	t0,ra
   108a8:	f98680e7          	jalr	-104(a3)
   108ac:	00028093          	mv	ra,t0
   108b0:	ff078793          	addi	a5,a5,-16
   108b4:	40f70733          	sub	a4,a4,a5
   108b8:	00f60633          	add	a2,a2,a5
   108bc:	f6c374e3          	bgeu	t1,a2,10824 <memset+0x3c>
   108c0:	f3dff06f          	j	107fc <memset+0x14>

00000000000108c4 <__call_exitprocs>:
   108c4:	fb010113          	addi	sp,sp,-80
   108c8:	03413023          	sd	s4,32(sp)
   108cc:	f481ba03          	ld	s4,-184(gp) # 11768 <_global_impure_ptr>
   108d0:	03213823          	sd	s2,48(sp)
   108d4:	04113423          	sd	ra,72(sp)
   108d8:	1f8a3903          	ld	s2,504(s4)
   108dc:	04813023          	sd	s0,64(sp)
   108e0:	02913c23          	sd	s1,56(sp)
   108e4:	03313423          	sd	s3,40(sp)
   108e8:	01513c23          	sd	s5,24(sp)
   108ec:	01613823          	sd	s6,16(sp)
   108f0:	01713423          	sd	s7,8(sp)
   108f4:	01813023          	sd	s8,0(sp)
   108f8:	04090063          	beqz	s2,10938 <__call_exitprocs+0x74>
   108fc:	00050b13          	mv	s6,a0
   10900:	00058b93          	mv	s7,a1
   10904:	00100a93          	li	s5,1
   10908:	fff00993          	li	s3,-1
   1090c:	00892483          	lw	s1,8(s2)
   10910:	fff4841b          	addiw	s0,s1,-1
   10914:	02044263          	bltz	s0,10938 <__call_exitprocs+0x74>
   10918:	00349493          	slli	s1,s1,0x3
   1091c:	009904b3          	add	s1,s2,s1
   10920:	040b8463          	beqz	s7,10968 <__call_exitprocs+0xa4>
   10924:	2084b783          	ld	a5,520(s1)
   10928:	05778063          	beq	a5,s7,10968 <__call_exitprocs+0xa4>
   1092c:	fff4041b          	addiw	s0,s0,-1
   10930:	ff848493          	addi	s1,s1,-8
   10934:	ff3416e3          	bne	s0,s3,10920 <__call_exitprocs+0x5c>
   10938:	04813083          	ld	ra,72(sp)
   1093c:	04013403          	ld	s0,64(sp)
   10940:	03813483          	ld	s1,56(sp)
   10944:	03013903          	ld	s2,48(sp)
   10948:	02813983          	ld	s3,40(sp)
   1094c:	02013a03          	ld	s4,32(sp)
   10950:	01813a83          	ld	s5,24(sp)
   10954:	01013b03          	ld	s6,16(sp)
   10958:	00813b83          	ld	s7,8(sp)
   1095c:	00013c03          	ld	s8,0(sp)
   10960:	05010113          	addi	sp,sp,80
   10964:	00008067          	ret
   10968:	00892783          	lw	a5,8(s2)
   1096c:	0084b703          	ld	a4,8(s1)
   10970:	fff7879b          	addiw	a5,a5,-1
   10974:	06878263          	beq	a5,s0,109d8 <__call_exitprocs+0x114>
   10978:	0004b423          	sd	zero,8(s1)
   1097c:	fa0708e3          	beqz	a4,1092c <__call_exitprocs+0x68>
   10980:	31092783          	lw	a5,784(s2)
   10984:	008a96bb          	sllw	a3,s5,s0
   10988:	00892c03          	lw	s8,8(s2)
   1098c:	00d7f7b3          	and	a5,a5,a3
   10990:	0007879b          	sext.w	a5,a5
   10994:	02079263          	bnez	a5,109b8 <__call_exitprocs+0xf4>
   10998:	000700e7          	jalr	a4
   1099c:	00892703          	lw	a4,8(s2)
   109a0:	1f8a3783          	ld	a5,504(s4)
   109a4:	01871463          	bne	a4,s8,109ac <__call_exitprocs+0xe8>
   109a8:	f8f902e3          	beq	s2,a5,1092c <__call_exitprocs+0x68>
   109ac:	f80786e3          	beqz	a5,10938 <__call_exitprocs+0x74>
   109b0:	00078913          	mv	s2,a5
   109b4:	f59ff06f          	j	1090c <__call_exitprocs+0x48>
   109b8:	31492783          	lw	a5,788(s2)
   109bc:	1084b583          	ld	a1,264(s1)
   109c0:	00d7f7b3          	and	a5,a5,a3
   109c4:	0007879b          	sext.w	a5,a5
   109c8:	00079c63          	bnez	a5,109e0 <__call_exitprocs+0x11c>
   109cc:	000b0513          	mv	a0,s6
   109d0:	000700e7          	jalr	a4
   109d4:	fc9ff06f          	j	1099c <__call_exitprocs+0xd8>
   109d8:	00892423          	sw	s0,8(s2)
   109dc:	fa1ff06f          	j	1097c <__call_exitprocs+0xb8>
   109e0:	00058513          	mv	a0,a1
   109e4:	000700e7          	jalr	a4
   109e8:	fb5ff06f          	j	1099c <__call_exitprocs+0xd8>

00000000000109ec <__libc_fini_array>:
   109ec:	fe010113          	addi	sp,sp,-32
   109f0:	00813823          	sd	s0,16(sp)
   109f4:	000117b7          	lui	a5,0x11
   109f8:	00011437          	lui	s0,0x11
   109fc:	01840413          	addi	s0,s0,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   10a00:	02078793          	addi	a5,a5,32 # 11020 <impure_data>
   10a04:	408787b3          	sub	a5,a5,s0
   10a08:	00913423          	sd	s1,8(sp)
   10a0c:	00113c23          	sd	ra,24(sp)
   10a10:	4037d493          	srai	s1,a5,0x3
   10a14:	02048063          	beqz	s1,10a34 <__libc_fini_array+0x48>
   10a18:	ff878793          	addi	a5,a5,-8
   10a1c:	00878433          	add	s0,a5,s0
   10a20:	00043783          	ld	a5,0(s0)
   10a24:	fff48493          	addi	s1,s1,-1
   10a28:	ff840413          	addi	s0,s0,-8
   10a2c:	000780e7          	jalr	a5
   10a30:	fe0498e3          	bnez	s1,10a20 <__libc_fini_array+0x34>
   10a34:	01813083          	ld	ra,24(sp)
   10a38:	01013403          	ld	s0,16(sp)
   10a3c:	00813483          	ld	s1,8(sp)
   10a40:	02010113          	addi	sp,sp,32
   10a44:	00008067          	ret

0000000000010a48 <atexit>:
   10a48:	00050593          	mv	a1,a0
   10a4c:	00000693          	li	a3,0
   10a50:	00000613          	li	a2,0
   10a54:	00000513          	li	a0,0
   10a58:	0040006f          	j	10a5c <__register_exitproc>

0000000000010a5c <__register_exitproc>:
   10a5c:	f481b703          	ld	a4,-184(gp) # 11768 <_global_impure_ptr>
   10a60:	1f873783          	ld	a5,504(a4)
   10a64:	06078063          	beqz	a5,10ac4 <__register_exitproc+0x68>
   10a68:	0087a703          	lw	a4,8(a5)
   10a6c:	01f00813          	li	a6,31
   10a70:	08e84663          	blt	a6,a4,10afc <__register_exitproc+0xa0>
   10a74:	02050863          	beqz	a0,10aa4 <__register_exitproc+0x48>
   10a78:	00371813          	slli	a6,a4,0x3
   10a7c:	01078833          	add	a6,a5,a6
   10a80:	10c83823          	sd	a2,272(a6)
   10a84:	3107a883          	lw	a7,784(a5)
   10a88:	00100613          	li	a2,1
   10a8c:	00e6163b          	sllw	a2,a2,a4
   10a90:	00c8e8b3          	or	a7,a7,a2
   10a94:	3117a823          	sw	a7,784(a5)
   10a98:	20d83823          	sd	a3,528(a6)
   10a9c:	00200693          	li	a3,2
   10aa0:	02d50863          	beq	a0,a3,10ad0 <__register_exitproc+0x74>
   10aa4:	00270693          	addi	a3,a4,2
   10aa8:	00369693          	slli	a3,a3,0x3
   10aac:	0017071b          	addiw	a4,a4,1
   10ab0:	00e7a423          	sw	a4,8(a5)
   10ab4:	00d787b3          	add	a5,a5,a3
   10ab8:	00b7b023          	sd	a1,0(a5)
   10abc:	00000513          	li	a0,0
   10ac0:	00008067          	ret
   10ac4:	20070793          	addi	a5,a4,512
   10ac8:	1ef73c23          	sd	a5,504(a4)
   10acc:	f9dff06f          	j	10a68 <__register_exitproc+0xc>
   10ad0:	3147a683          	lw	a3,788(a5)
   10ad4:	00000513          	li	a0,0
   10ad8:	00c6e633          	or	a2,a3,a2
   10adc:	00270693          	addi	a3,a4,2
   10ae0:	00369693          	slli	a3,a3,0x3
   10ae4:	0017071b          	addiw	a4,a4,1
   10ae8:	30c7aa23          	sw	a2,788(a5)
   10aec:	00e7a423          	sw	a4,8(a5)
   10af0:	00d787b3          	add	a5,a5,a3
   10af4:	00b7b023          	sd	a1,0(a5)
   10af8:	00008067          	ret
   10afc:	fff00513          	li	a0,-1
   10b00:	00008067          	ret

0000000000010b04 <_exit>:
   10b04:	00000593          	li	a1,0
   10b08:	00000613          	li	a2,0
   10b0c:	00000693          	li	a3,0
   10b10:	00000713          	li	a4,0
   10b14:	00000793          	li	a5,0
   10b18:	05d00893          	li	a7,93
   10b1c:	00000073          	ecall
   10b20:	00054463          	bltz	a0,10b28 <_exit+0x24>
   10b24:	0000006f          	j	10b24 <_exit+0x20>
   10b28:	ff010113          	addi	sp,sp,-16
   10b2c:	00813023          	sd	s0,0(sp)
   10b30:	00050413          	mv	s0,a0
   10b34:	00113423          	sd	ra,8(sp)
   10b38:	4080043b          	negw	s0,s0
   10b3c:	00c000ef          	jal	ra,10b48 <__errno>
   10b40:	00852023          	sw	s0,0(a0)
   10b44:	0000006f          	j	10b44 <_exit+0x40>

0000000000010b48 <__errno>:
   10b48:	f581b503          	ld	a0,-168(gp) # 11778 <_impure_ptr>
   10b4c:	00008067          	ret

Disassembly of section .rodata:

0000000000010b50 <.rodata>:
   10b50:	7250                	ld	a2,160(a2)
   10b52:	7665                	lui	a2,0xffff9
   10b54:	4120                	lw	s0,64(a0)
   10b56:	203a                	fld	ft0,392(sp)
	...
   10b60:	0020                	addi	s0,sp,8
   10b62:	0000                	unimp
   10b64:	0000                	unimp
   10b66:	0000                	unimp
   10b68:	000a                	c.slli	zero,0x2
   10b6a:	0000                	unimp
   10b6c:	0000                	unimp
   10b6e:	0000                	unimp
   10b70:	74726f53          	0x74726f53
   10b74:	6465                	lui	s0,0x19
   10b76:	4120                	lw	s0,64(a0)
   10b78:	203a                	fld	ft0,392(sp)
   10b7a:	0000                	unimp
   10b7c:	0000                	unimp
   10b7e:	0000                	unimp
   10b80:	7250                	ld	a2,160(a2)
   10b82:	7665                	lui	a2,0xffff9
   10b84:	4220                	lw	s0,64(a2)
   10b86:	203a                	fld	ft0,392(sp)
	...
   10b90:	74726f53          	0x74726f53
   10b94:	6465                	lui	s0,0x19
   10b96:	4220                	lw	s0,64(a2)
   10b98:	203a                	fld	ft0,392(sp)
   10b9a:	0000                	unimp
   10b9c:	0000                	unimp
   10b9e:	0000                	unimp
   10ba0:	0005                	c.nop	1
   10ba2:	0000                	unimp
   10ba4:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
   10ba8:	0005                	c.nop	1
   10baa:	0000                	unimp
   10bac:	0006                	c.slli	zero,0x1
   10bae:	0000                	unimp
   10bb0:	00000007          	0x7
   10bb4:	0001                	nop
   10bb6:	0000                	unimp
   10bb8:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
   10bbc:	0005                	c.nop	1
   10bbe:	0000                	unimp
   10bc0:	0006                	c.slli	zero,0x1
   10bc2:	0000                	unimp
   10bc4:	0001                	nop
	...

Disassembly of section .eh_frame:

0000000000011000 <__FRAME_END__>:
   11000:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011008 <__init_array_start>:
   11008:	00b0                	addi	a2,sp,72
   1100a:	0001                	nop
   1100c:	0000                	unimp
	...

0000000000011010 <__frame_dummy_init_array_entry>:
   11010:	0160                	addi	s0,sp,140
   11012:	0001                	nop
   11014:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011018 <__do_global_dtors_aux_fini_array_entry>:
   11018:	0114                	addi	a3,sp,128
   1101a:	0001                	nop
   1101c:	0000                	unimp
	...

Disassembly of section .data:

0000000000011020 <impure_data>:
	...
   11028:	1558                	addi	a4,sp,676
   1102a:	0001                	nop
   1102c:	0000                	unimp
   1102e:	0000                	unimp
   11030:	1608                	addi	a0,sp,800
   11032:	0001                	nop
   11034:	0000                	unimp
   11036:	0000                	unimp
   11038:	16b8                	addi	a4,sp,872
   1103a:	0001                	nop
	...
   11108:	0001                	nop
   1110a:	0000                	unimp
   1110c:	0000                	unimp
   1110e:	0000                	unimp
   11110:	330e                	fld	ft6,224(sp)
   11112:	abcd                	j	11704 <impure_data+0x6e4>
   11114:	1234                	addi	a3,sp,296
   11116:	e66d                	bnez	a2,11200 <impure_data+0x1e0>
   11118:	deec                	sw	a1,124(a3)
   1111a:	0005                	c.nop	1
   1111c:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011768 <_global_impure_ptr>:
   11768:	1020                	addi	s0,sp,40
   1176a:	0001                	nop
   1176c:	0000                	unimp
	...

0000000000011770 <__dso_handle>:
	...

0000000000011778 <_impure_ptr>:
   11778:	1020                	addi	s0,sp,40
   1177a:	0001                	nop
   1177c:	0000                	unimp
	...

Disassembly of section .bss:

0000000000011780 <completed.5525>:
	...

0000000000011788 <object.5530>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3920                	fld	fs0,112(a0)
   c:	322e                	fld	ft4,232(sp)
   e:	302e                	fld	ft0,232(sp)
	...

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	2041                	0x2041
   2:	0000                	unimp
   4:	7200                	ld	s0,32(a2)
   6:	7369                	lui	t1,0xffffa
   8:	01007663          	bgeu	zero,a6,14 <register_fini-0x1009c>
   c:	0016                	c.slli	zero,0x5
   e:	0000                	unimp
  10:	1004                	addi	s1,sp,32
  12:	7205                	lui	tp,0xfffe1
  14:	3676                	fld	fa2,376(sp)
  16:	6934                	ld	a3,80(a0)
  18:	7032                	0x7032
  1a:	5f30                	lw	a2,120(a4)
  1c:	326d                	addiw	tp,tp,-5
  1e:	3070                	fld	fa2,224(s0)
	...


qsort.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	67450513          	addi	a0,a0,1652 # 10674 <__libc_fini_array>
   100c0:	6100006f          	j	106d0 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00001197          	auipc	gp,0x1
   100cc:	75818193          	addi	gp,gp,1880 # 11820 <__global_pointer$>
   100d0:	f6018513          	addi	a0,gp,-160 # 11780 <completed.5525>
   100d4:	04018613          	addi	a2,gp,64 # 11860 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	390000ef          	jal	ra,10470 <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	5ec50513          	addi	a0,a0,1516 # 106d0 <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	58450513          	addi	a0,a0,1412 # 10674 <__libc_fini_array>
   100f8:	5d8000ef          	jal	ra,106d0 <atexit>
   100fc:	2d8000ef          	jal	ra,103d4 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	228000ef          	jal	ra,10334 <main>
   10110:	2940006f          	j	103a4 <exit>

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

0000000000010180 <qsort>:
   10180:	fd010113          	addi	sp,sp,-48
   10184:	02113423          	sd	ra,40(sp)
   10188:	02813023          	sd	s0,32(sp)
   1018c:	03010413          	addi	s0,sp,48
   10190:	00050793          	mv	a5,a0
   10194:	00058713          	mv	a4,a1
   10198:	fcf42e23          	sw	a5,-36(s0)
   1019c:	00070793          	mv	a5,a4
   101a0:	fcf42c23          	sw	a5,-40(s0)
   101a4:	f9818713          	addi	a4,gp,-104 # 117b8 <result>
   101a8:	fdc42783          	lw	a5,-36(s0)
   101ac:	00279793          	slli	a5,a5,0x2
   101b0:	00f707b3          	add	a5,a4,a5
   101b4:	0007a783          	lw	a5,0(a5)
   101b8:	fef42223          	sw	a5,-28(s0)
   101bc:	fdc42783          	lw	a5,-36(s0)
   101c0:	fef42623          	sw	a5,-20(s0)
   101c4:	fd842783          	lw	a5,-40(s0)
   101c8:	fef42423          	sw	a5,-24(s0)
   101cc:	fdc42703          	lw	a4,-36(s0)
   101d0:	fd842783          	lw	a5,-40(s0)
   101d4:	0007071b          	sext.w	a4,a4
   101d8:	0007879b          	sext.w	a5,a5
   101dc:	14f75263          	bge	a4,a5,10320 <qsort+0x1a0>
   101e0:	0d80006f          	j	102b8 <qsort+0x138>
   101e4:	fe842783          	lw	a5,-24(s0)
   101e8:	fff7879b          	addiw	a5,a5,-1
   101ec:	fef42423          	sw	a5,-24(s0)
   101f0:	fec42703          	lw	a4,-20(s0)
   101f4:	fe842783          	lw	a5,-24(s0)
   101f8:	0007071b          	sext.w	a4,a4
   101fc:	0007879b          	sext.w	a5,a5
   10200:	02f75263          	bge	a4,a5,10224 <qsort+0xa4>
   10204:	f9818713          	addi	a4,gp,-104 # 117b8 <result>
   10208:	fe842783          	lw	a5,-24(s0)
   1020c:	00279793          	slli	a5,a5,0x2
   10210:	00f707b3          	add	a5,a4,a5
   10214:	0007a703          	lw	a4,0(a5)
   10218:	fe442783          	lw	a5,-28(s0)
   1021c:	0007879b          	sext.w	a5,a5
   10220:	fcf752e3          	bge	a4,a5,101e4 <qsort+0x64>
   10224:	f9818713          	addi	a4,gp,-104 # 117b8 <result>
   10228:	fe842783          	lw	a5,-24(s0)
   1022c:	00279793          	slli	a5,a5,0x2
   10230:	00f707b3          	add	a5,a4,a5
   10234:	0007a703          	lw	a4,0(a5)
   10238:	f9818693          	addi	a3,gp,-104 # 117b8 <result>
   1023c:	fec42783          	lw	a5,-20(s0)
   10240:	00279793          	slli	a5,a5,0x2
   10244:	00f687b3          	add	a5,a3,a5
   10248:	00e7a023          	sw	a4,0(a5)
   1024c:	0100006f          	j	1025c <qsort+0xdc>
   10250:	fec42783          	lw	a5,-20(s0)
   10254:	0017879b          	addiw	a5,a5,1
   10258:	fef42623          	sw	a5,-20(s0)
   1025c:	fec42703          	lw	a4,-20(s0)
   10260:	fe842783          	lw	a5,-24(s0)
   10264:	0007071b          	sext.w	a4,a4
   10268:	0007879b          	sext.w	a5,a5
   1026c:	02f75263          	bge	a4,a5,10290 <qsort+0x110>
   10270:	f9818713          	addi	a4,gp,-104 # 117b8 <result>
   10274:	fec42783          	lw	a5,-20(s0)
   10278:	00279793          	slli	a5,a5,0x2
   1027c:	00f707b3          	add	a5,a4,a5
   10280:	0007a703          	lw	a4,0(a5)
   10284:	fe442783          	lw	a5,-28(s0)
   10288:	0007879b          	sext.w	a5,a5
   1028c:	fce7d2e3          	bge	a5,a4,10250 <qsort+0xd0>
   10290:	f9818713          	addi	a4,gp,-104 # 117b8 <result>
   10294:	fec42783          	lw	a5,-20(s0)
   10298:	00279793          	slli	a5,a5,0x2
   1029c:	00f707b3          	add	a5,a4,a5
   102a0:	0007a703          	lw	a4,0(a5)
   102a4:	f9818693          	addi	a3,gp,-104 # 117b8 <result>
   102a8:	fe842783          	lw	a5,-24(s0)
   102ac:	00279793          	slli	a5,a5,0x2
   102b0:	00f687b3          	add	a5,a3,a5
   102b4:	00e7a023          	sw	a4,0(a5)
   102b8:	fec42703          	lw	a4,-20(s0)
   102bc:	fe842783          	lw	a5,-24(s0)
   102c0:	0007071b          	sext.w	a4,a4
   102c4:	0007879b          	sext.w	a5,a5
   102c8:	f2f744e3          	blt	a4,a5,101f0 <qsort+0x70>
   102cc:	f9818713          	addi	a4,gp,-104 # 117b8 <result>
   102d0:	fec42783          	lw	a5,-20(s0)
   102d4:	00279793          	slli	a5,a5,0x2
   102d8:	00f707b3          	add	a5,a4,a5
   102dc:	fe442703          	lw	a4,-28(s0)
   102e0:	00e7a023          	sw	a4,0(a5)
   102e4:	fec42783          	lw	a5,-20(s0)
   102e8:	fff7879b          	addiw	a5,a5,-1
   102ec:	0007871b          	sext.w	a4,a5
   102f0:	fdc42783          	lw	a5,-36(s0)
   102f4:	00070593          	mv	a1,a4
   102f8:	00078513          	mv	a0,a5
   102fc:	e85ff0ef          	jal	ra,10180 <qsort>
   10300:	fec42783          	lw	a5,-20(s0)
   10304:	0017879b          	addiw	a5,a5,1
   10308:	0007879b          	sext.w	a5,a5
   1030c:	fd842703          	lw	a4,-40(s0)
   10310:	00070593          	mv	a1,a4
   10314:	00078513          	mv	a0,a5
   10318:	e69ff0ef          	jal	ra,10180 <qsort>
   1031c:	0080006f          	j	10324 <qsort+0x1a4>
   10320:	00000013          	nop
   10324:	02813083          	ld	ra,40(sp)
   10328:	02013403          	ld	s0,32(sp)
   1032c:	03010113          	addi	sp,sp,48
   10330:	00008067          	ret

0000000000010334 <main>:
   10334:	fe010113          	addi	sp,sp,-32
   10338:	00113c23          	sd	ra,24(sp)
   1033c:	00813823          	sd	s0,16(sp)
   10340:	02010413          	addi	s0,sp,32
   10344:	02800793          	li	a5,40
   10348:	fef42623          	sw	a5,-20(s0)
   1034c:	0280006f          	j	10374 <main+0x40>
   10350:	f9818713          	addi	a4,gp,-104 # 117b8 <result>
   10354:	fec42783          	lw	a5,-20(s0)
   10358:	00279793          	slli	a5,a5,0x2
   1035c:	00f707b3          	add	a5,a4,a5
   10360:	fec42703          	lw	a4,-20(s0)
   10364:	00e7a023          	sw	a4,0(a5)
   10368:	fec42783          	lw	a5,-20(s0)
   1036c:	fff7879b          	addiw	a5,a5,-1
   10370:	fef42623          	sw	a5,-20(s0)
   10374:	fec42783          	lw	a5,-20(s0)
   10378:	0007879b          	sext.w	a5,a5
   1037c:	fcf04ae3          	bgtz	a5,10350 <main+0x1c>
   10380:	02700593          	li	a1,39
   10384:	00000513          	li	a0,0
   10388:	df9ff0ef          	jal	ra,10180 <qsort>
   1038c:	00000793          	li	a5,0
   10390:	00078513          	mv	a0,a5
   10394:	01813083          	ld	ra,24(sp)
   10398:	01013403          	ld	s0,16(sp)
   1039c:	02010113          	addi	sp,sp,32
   103a0:	00008067          	ret

00000000000103a4 <exit>:
   103a4:	ff010113          	addi	sp,sp,-16
   103a8:	00000593          	li	a1,0
   103ac:	00813023          	sd	s0,0(sp)
   103b0:	00113423          	sd	ra,8(sp)
   103b4:	00050413          	mv	s0,a0
   103b8:	194000ef          	jal	ra,1054c <__call_exitprocs>
   103bc:	f481b503          	ld	a0,-184(gp) # 11768 <_global_impure_ptr>
   103c0:	05853783          	ld	a5,88(a0) # 11058 <impure_data+0x38>
   103c4:	00078463          	beqz	a5,103cc <exit+0x28>
   103c8:	000780e7          	jalr	a5
   103cc:	00040513          	mv	a0,s0
   103d0:	3bc000ef          	jal	ra,1078c <_exit>

00000000000103d4 <__libc_init_array>:
   103d4:	fe010113          	addi	sp,sp,-32
   103d8:	00813823          	sd	s0,16(sp)
   103dc:	01213023          	sd	s2,0(sp)
   103e0:	00011437          	lui	s0,0x11
   103e4:	00011937          	lui	s2,0x11
   103e8:	00440793          	addi	a5,s0,4 # 11004 <__preinit_array_end>
   103ec:	00490913          	addi	s2,s2,4 # 11004 <__preinit_array_end>
   103f0:	40f90933          	sub	s2,s2,a5
   103f4:	00113c23          	sd	ra,24(sp)
   103f8:	00913423          	sd	s1,8(sp)
   103fc:	40395913          	srai	s2,s2,0x3
   10400:	02090063          	beqz	s2,10420 <__libc_init_array+0x4c>
   10404:	00440413          	addi	s0,s0,4
   10408:	00000493          	li	s1,0
   1040c:	00043783          	ld	a5,0(s0)
   10410:	00148493          	addi	s1,s1,1
   10414:	00840413          	addi	s0,s0,8
   10418:	000780e7          	jalr	a5
   1041c:	fe9918e3          	bne	s2,s1,1040c <__libc_init_array+0x38>
   10420:	00011437          	lui	s0,0x11
   10424:	00011937          	lui	s2,0x11
   10428:	00840793          	addi	a5,s0,8 # 11008 <__init_array_start>
   1042c:	01890913          	addi	s2,s2,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   10430:	40f90933          	sub	s2,s2,a5
   10434:	40395913          	srai	s2,s2,0x3
   10438:	02090063          	beqz	s2,10458 <__libc_init_array+0x84>
   1043c:	00840413          	addi	s0,s0,8
   10440:	00000493          	li	s1,0
   10444:	00043783          	ld	a5,0(s0)
   10448:	00148493          	addi	s1,s1,1
   1044c:	00840413          	addi	s0,s0,8
   10450:	000780e7          	jalr	a5
   10454:	fe9918e3          	bne	s2,s1,10444 <__libc_init_array+0x70>
   10458:	01813083          	ld	ra,24(sp)
   1045c:	01013403          	ld	s0,16(sp)
   10460:	00813483          	ld	s1,8(sp)
   10464:	00013903          	ld	s2,0(sp)
   10468:	02010113          	addi	sp,sp,32
   1046c:	00008067          	ret

0000000000010470 <memset>:
   10470:	00f00313          	li	t1,15
   10474:	00050713          	mv	a4,a0
   10478:	02c37a63          	bgeu	t1,a2,104ac <memset+0x3c>
   1047c:	00f77793          	andi	a5,a4,15
   10480:	0a079063          	bnez	a5,10520 <memset+0xb0>
   10484:	06059e63          	bnez	a1,10500 <memset+0x90>
   10488:	ff067693          	andi	a3,a2,-16
   1048c:	00f67613          	andi	a2,a2,15
   10490:	00e686b3          	add	a3,a3,a4
   10494:	00b73023          	sd	a1,0(a4)
   10498:	00b73423          	sd	a1,8(a4)
   1049c:	01070713          	addi	a4,a4,16
   104a0:	fed76ae3          	bltu	a4,a3,10494 <memset+0x24>
   104a4:	00061463          	bnez	a2,104ac <memset+0x3c>
   104a8:	00008067          	ret
   104ac:	40c306b3          	sub	a3,t1,a2
   104b0:	00269693          	slli	a3,a3,0x2
   104b4:	00000297          	auipc	t0,0x0
   104b8:	005686b3          	add	a3,a3,t0
   104bc:	00c68067          	jr	12(a3)
   104c0:	00b70723          	sb	a1,14(a4)
   104c4:	00b706a3          	sb	a1,13(a4)
   104c8:	00b70623          	sb	a1,12(a4)
   104cc:	00b705a3          	sb	a1,11(a4)
   104d0:	00b70523          	sb	a1,10(a4)
   104d4:	00b704a3          	sb	a1,9(a4)
   104d8:	00b70423          	sb	a1,8(a4)
   104dc:	00b703a3          	sb	a1,7(a4)
   104e0:	00b70323          	sb	a1,6(a4)
   104e4:	00b702a3          	sb	a1,5(a4)
   104e8:	00b70223          	sb	a1,4(a4)
   104ec:	00b701a3          	sb	a1,3(a4)
   104f0:	00b70123          	sb	a1,2(a4)
   104f4:	00b700a3          	sb	a1,1(a4)
   104f8:	00b70023          	sb	a1,0(a4)
   104fc:	00008067          	ret
   10500:	0ff5f593          	andi	a1,a1,255
   10504:	00859693          	slli	a3,a1,0x8
   10508:	00d5e5b3          	or	a1,a1,a3
   1050c:	01059693          	slli	a3,a1,0x10
   10510:	00d5e5b3          	or	a1,a1,a3
   10514:	02059693          	slli	a3,a1,0x20
   10518:	00d5e5b3          	or	a1,a1,a3
   1051c:	f6dff06f          	j	10488 <memset+0x18>
   10520:	00279693          	slli	a3,a5,0x2
   10524:	00000297          	auipc	t0,0x0
   10528:	005686b3          	add	a3,a3,t0
   1052c:	00008293          	mv	t0,ra
   10530:	f98680e7          	jalr	-104(a3)
   10534:	00028093          	mv	ra,t0
   10538:	ff078793          	addi	a5,a5,-16
   1053c:	40f70733          	sub	a4,a4,a5
   10540:	00f60633          	add	a2,a2,a5
   10544:	f6c374e3          	bgeu	t1,a2,104ac <memset+0x3c>
   10548:	f3dff06f          	j	10484 <memset+0x14>

000000000001054c <__call_exitprocs>:
   1054c:	fb010113          	addi	sp,sp,-80
   10550:	03413023          	sd	s4,32(sp)
   10554:	f481ba03          	ld	s4,-184(gp) # 11768 <_global_impure_ptr>
   10558:	03213823          	sd	s2,48(sp)
   1055c:	04113423          	sd	ra,72(sp)
   10560:	1f8a3903          	ld	s2,504(s4)
   10564:	04813023          	sd	s0,64(sp)
   10568:	02913c23          	sd	s1,56(sp)
   1056c:	03313423          	sd	s3,40(sp)
   10570:	01513c23          	sd	s5,24(sp)
   10574:	01613823          	sd	s6,16(sp)
   10578:	01713423          	sd	s7,8(sp)
   1057c:	01813023          	sd	s8,0(sp)
   10580:	04090063          	beqz	s2,105c0 <__call_exitprocs+0x74>
   10584:	00050b13          	mv	s6,a0
   10588:	00058b93          	mv	s7,a1
   1058c:	00100a93          	li	s5,1
   10590:	fff00993          	li	s3,-1
   10594:	00892483          	lw	s1,8(s2)
   10598:	fff4841b          	addiw	s0,s1,-1
   1059c:	02044263          	bltz	s0,105c0 <__call_exitprocs+0x74>
   105a0:	00349493          	slli	s1,s1,0x3
   105a4:	009904b3          	add	s1,s2,s1
   105a8:	040b8463          	beqz	s7,105f0 <__call_exitprocs+0xa4>
   105ac:	2084b783          	ld	a5,520(s1)
   105b0:	05778063          	beq	a5,s7,105f0 <__call_exitprocs+0xa4>
   105b4:	fff4041b          	addiw	s0,s0,-1
   105b8:	ff848493          	addi	s1,s1,-8
   105bc:	ff3416e3          	bne	s0,s3,105a8 <__call_exitprocs+0x5c>
   105c0:	04813083          	ld	ra,72(sp)
   105c4:	04013403          	ld	s0,64(sp)
   105c8:	03813483          	ld	s1,56(sp)
   105cc:	03013903          	ld	s2,48(sp)
   105d0:	02813983          	ld	s3,40(sp)
   105d4:	02013a03          	ld	s4,32(sp)
   105d8:	01813a83          	ld	s5,24(sp)
   105dc:	01013b03          	ld	s6,16(sp)
   105e0:	00813b83          	ld	s7,8(sp)
   105e4:	00013c03          	ld	s8,0(sp)
   105e8:	05010113          	addi	sp,sp,80
   105ec:	00008067          	ret
   105f0:	00892783          	lw	a5,8(s2)
   105f4:	0084b703          	ld	a4,8(s1)
   105f8:	fff7879b          	addiw	a5,a5,-1
   105fc:	06878263          	beq	a5,s0,10660 <__call_exitprocs+0x114>
   10600:	0004b423          	sd	zero,8(s1)
   10604:	fa0708e3          	beqz	a4,105b4 <__call_exitprocs+0x68>
   10608:	31092783          	lw	a5,784(s2)
   1060c:	008a96bb          	sllw	a3,s5,s0
   10610:	00892c03          	lw	s8,8(s2)
   10614:	00d7f7b3          	and	a5,a5,a3
   10618:	0007879b          	sext.w	a5,a5
   1061c:	02079263          	bnez	a5,10640 <__call_exitprocs+0xf4>
   10620:	000700e7          	jalr	a4
   10624:	00892703          	lw	a4,8(s2)
   10628:	1f8a3783          	ld	a5,504(s4)
   1062c:	01871463          	bne	a4,s8,10634 <__call_exitprocs+0xe8>
   10630:	f8f902e3          	beq	s2,a5,105b4 <__call_exitprocs+0x68>
   10634:	f80786e3          	beqz	a5,105c0 <__call_exitprocs+0x74>
   10638:	00078913          	mv	s2,a5
   1063c:	f59ff06f          	j	10594 <__call_exitprocs+0x48>
   10640:	31492783          	lw	a5,788(s2)
   10644:	1084b583          	ld	a1,264(s1)
   10648:	00d7f7b3          	and	a5,a5,a3
   1064c:	0007879b          	sext.w	a5,a5
   10650:	00079c63          	bnez	a5,10668 <__call_exitprocs+0x11c>
   10654:	000b0513          	mv	a0,s6
   10658:	000700e7          	jalr	a4
   1065c:	fc9ff06f          	j	10624 <__call_exitprocs+0xd8>
   10660:	00892423          	sw	s0,8(s2)
   10664:	fa1ff06f          	j	10604 <__call_exitprocs+0xb8>
   10668:	00058513          	mv	a0,a1
   1066c:	000700e7          	jalr	a4
   10670:	fb5ff06f          	j	10624 <__call_exitprocs+0xd8>

0000000000010674 <__libc_fini_array>:
   10674:	fe010113          	addi	sp,sp,-32
   10678:	00813823          	sd	s0,16(sp)
   1067c:	000117b7          	lui	a5,0x11
   10680:	00011437          	lui	s0,0x11
   10684:	01840413          	addi	s0,s0,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   10688:	02078793          	addi	a5,a5,32 # 11020 <impure_data>
   1068c:	408787b3          	sub	a5,a5,s0
   10690:	00913423          	sd	s1,8(sp)
   10694:	00113c23          	sd	ra,24(sp)
   10698:	4037d493          	srai	s1,a5,0x3
   1069c:	02048063          	beqz	s1,106bc <__libc_fini_array+0x48>
   106a0:	ff878793          	addi	a5,a5,-8
   106a4:	00878433          	add	s0,a5,s0
   106a8:	00043783          	ld	a5,0(s0)
   106ac:	fff48493          	addi	s1,s1,-1
   106b0:	ff840413          	addi	s0,s0,-8
   106b4:	000780e7          	jalr	a5
   106b8:	fe0498e3          	bnez	s1,106a8 <__libc_fini_array+0x34>
   106bc:	01813083          	ld	ra,24(sp)
   106c0:	01013403          	ld	s0,16(sp)
   106c4:	00813483          	ld	s1,8(sp)
   106c8:	02010113          	addi	sp,sp,32
   106cc:	00008067          	ret

00000000000106d0 <atexit>:
   106d0:	00050593          	mv	a1,a0
   106d4:	00000693          	li	a3,0
   106d8:	00000613          	li	a2,0
   106dc:	00000513          	li	a0,0
   106e0:	0040006f          	j	106e4 <__register_exitproc>

00000000000106e4 <__register_exitproc>:
   106e4:	f481b703          	ld	a4,-184(gp) # 11768 <_global_impure_ptr>
   106e8:	1f873783          	ld	a5,504(a4)
   106ec:	06078063          	beqz	a5,1074c <__register_exitproc+0x68>
   106f0:	0087a703          	lw	a4,8(a5)
   106f4:	01f00813          	li	a6,31
   106f8:	08e84663          	blt	a6,a4,10784 <__register_exitproc+0xa0>
   106fc:	02050863          	beqz	a0,1072c <__register_exitproc+0x48>
   10700:	00371813          	slli	a6,a4,0x3
   10704:	01078833          	add	a6,a5,a6
   10708:	10c83823          	sd	a2,272(a6)
   1070c:	3107a883          	lw	a7,784(a5)
   10710:	00100613          	li	a2,1
   10714:	00e6163b          	sllw	a2,a2,a4
   10718:	00c8e8b3          	or	a7,a7,a2
   1071c:	3117a823          	sw	a7,784(a5)
   10720:	20d83823          	sd	a3,528(a6)
   10724:	00200693          	li	a3,2
   10728:	02d50863          	beq	a0,a3,10758 <__register_exitproc+0x74>
   1072c:	00270693          	addi	a3,a4,2
   10730:	00369693          	slli	a3,a3,0x3
   10734:	0017071b          	addiw	a4,a4,1
   10738:	00e7a423          	sw	a4,8(a5)
   1073c:	00d787b3          	add	a5,a5,a3
   10740:	00b7b023          	sd	a1,0(a5)
   10744:	00000513          	li	a0,0
   10748:	00008067          	ret
   1074c:	20070793          	addi	a5,a4,512
   10750:	1ef73c23          	sd	a5,504(a4)
   10754:	f9dff06f          	j	106f0 <__register_exitproc+0xc>
   10758:	3147a683          	lw	a3,788(a5)
   1075c:	00000513          	li	a0,0
   10760:	00c6e633          	or	a2,a3,a2
   10764:	00270693          	addi	a3,a4,2
   10768:	00369693          	slli	a3,a3,0x3
   1076c:	0017071b          	addiw	a4,a4,1
   10770:	30c7aa23          	sw	a2,788(a5)
   10774:	00e7a423          	sw	a4,8(a5)
   10778:	00d787b3          	add	a5,a5,a3
   1077c:	00b7b023          	sd	a1,0(a5)
   10780:	00008067          	ret
   10784:	fff00513          	li	a0,-1
   10788:	00008067          	ret

000000000001078c <_exit>:
   1078c:	00000593          	li	a1,0
   10790:	00000613          	li	a2,0
   10794:	00000693          	li	a3,0
   10798:	00000713          	li	a4,0
   1079c:	00000793          	li	a5,0
   107a0:	05d00893          	li	a7,93
   107a4:	00000073          	ecall
   107a8:	00054463          	bltz	a0,107b0 <_exit+0x24>
   107ac:	0000006f          	j	107ac <_exit+0x20>
   107b0:	ff010113          	addi	sp,sp,-16
   107b4:	00813023          	sd	s0,0(sp)
   107b8:	00050413          	mv	s0,a0
   107bc:	00113423          	sd	ra,8(sp)
   107c0:	4080043b          	negw	s0,s0
   107c4:	00c000ef          	jal	ra,107d0 <__errno>
   107c8:	00852023          	sw	s0,0(a0)
   107cc:	0000006f          	j	107cc <_exit+0x40>

00000000000107d0 <__errno>:
   107d0:	f581b503          	ld	a0,-168(gp) # 11778 <_impure_ptr>
   107d4:	00008067          	ret

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

00000000000117b8 <result>:
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

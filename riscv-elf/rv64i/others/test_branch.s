
test_branch.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	72050513          	addi	a0,a0,1824 # 10720 <__libc_fini_array>
   100c0:	6bc0006f          	j	1077c <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00001197          	auipc	gp,0x1
   100cc:	75818193          	addi	gp,gp,1880 # 11820 <__global_pointer$>
   100d0:	f6018513          	addi	a0,gp,-160 # 11780 <completed.5525>
   100d4:	f9818613          	addi	a2,gp,-104 # 117b8 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	43c000ef          	jal	ra,1051c <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	69850513          	addi	a0,a0,1688 # 1077c <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	63050513          	addi	a0,a0,1584 # 10720 <__libc_fini_array>
   100f8:	684000ef          	jal	ra,1077c <atexit>
   100fc:	384000ef          	jal	ra,10480 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	074000ef          	jal	ra,10180 <main>
   10110:	3400006f          	j	10450 <exit>

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

0000000000010180 <main>:
   10180:	fc010113          	addi	sp,sp,-64
   10184:	02113c23          	sd	ra,56(sp)
   10188:	02813823          	sd	s0,48(sp)
   1018c:	04010413          	addi	s0,sp,64
   10190:	fe042023          	sw	zero,-32(s0)
   10194:	00100793          	li	a5,1
   10198:	fcf42e23          	sw	a5,-36(s0)
   1019c:	000117b7          	lui	a5,0x11
   101a0:	8d878793          	addi	a5,a5,-1832 # 108d8 <__errno+0x5c>
   101a4:	0007b703          	ld	a4,0(a5)
   101a8:	fce43423          	sd	a4,-56(s0)
   101ac:	0087b703          	ld	a4,8(a5)
   101b0:	fce43823          	sd	a4,-48(s0)
   101b4:	0107a783          	lw	a5,16(a5)
   101b8:	fcf42c23          	sw	a5,-40(s0)
   101bc:	fe042783          	lw	a5,-32(s0)
   101c0:	0007879b          	sext.w	a5,a5
   101c4:	00078863          	beqz	a5,101d4 <main+0x54>
   101c8:	000117b7          	lui	a5,0x11
   101cc:	88878513          	addi	a0,a5,-1912 # 10888 <__errno+0xc>
   101d0:	1a8000ef          	jal	ra,10378 <print_s>
   101d4:	fdc42783          	lw	a5,-36(s0)
   101d8:	0007879b          	sext.w	a5,a5
   101dc:	00078863          	beqz	a5,101ec <main+0x6c>
   101e0:	000117b7          	lui	a5,0x11
   101e4:	8b878513          	addi	a0,a5,-1864 # 108b8 <__errno+0x3c>
   101e8:	190000ef          	jal	ra,10378 <print_s>
   101ec:	000117b7          	lui	a5,0x11
   101f0:	8d078513          	addi	a0,a5,-1840 # 108d0 <__errno+0x54>
   101f4:	184000ef          	jal	ra,10378 <print_s>
   101f8:	fe042623          	sw	zero,-20(s0)
   101fc:	0340006f          	j	10230 <main+0xb0>
   10200:	fec42783          	lw	a5,-20(s0)
   10204:	00279793          	slli	a5,a5,0x2
   10208:	ff040713          	addi	a4,s0,-16
   1020c:	00f707b3          	add	a5,a4,a5
   10210:	fd87a783          	lw	a5,-40(a5)
   10214:	00078513          	mv	a0,a5
   10218:	134000ef          	jal	ra,1034c <print_d>
   1021c:	02000513          	li	a0,32
   10220:	180000ef          	jal	ra,103a0 <print_c>
   10224:	fec42783          	lw	a5,-20(s0)
   10228:	0017879b          	addiw	a5,a5,1
   1022c:	fef42623          	sw	a5,-20(s0)
   10230:	fec42783          	lw	a5,-20(s0)
   10234:	0007871b          	sext.w	a4,a5
   10238:	00400793          	li	a5,4
   1023c:	fce7d2e3          	bge	a5,a4,10200 <main+0x80>
   10240:	00a00513          	li	a0,10
   10244:	15c000ef          	jal	ra,103a0 <print_c>
   10248:	00100793          	li	a5,1
   1024c:	fef42423          	sw	a5,-24(s0)
   10250:	0740006f          	j	102c4 <main+0x144>
   10254:	fe842783          	lw	a5,-24(s0)
   10258:	00279793          	slli	a5,a5,0x2
   1025c:	ff040713          	addi	a4,s0,-16
   10260:	00f707b3          	add	a5,a4,a5
   10264:	fd87a703          	lw	a4,-40(a5)
   10268:	fe842783          	lw	a5,-24(s0)
   1026c:	fff7879b          	addiw	a5,a5,-1
   10270:	0007879b          	sext.w	a5,a5
   10274:	00279793          	slli	a5,a5,0x2
   10278:	ff040693          	addi	a3,s0,-16
   1027c:	00f687b3          	add	a5,a3,a5
   10280:	fd87a783          	lw	a5,-40(a5)
   10284:	00078693          	mv	a3,a5
   10288:	00068793          	mv	a5,a3
   1028c:	0027979b          	slliw	a5,a5,0x2
   10290:	00d787bb          	addw	a5,a5,a3
   10294:	0017979b          	slliw	a5,a5,0x1
   10298:	0007879b          	sext.w	a5,a5
   1029c:	00f707bb          	addw	a5,a4,a5
   102a0:	0007871b          	sext.w	a4,a5
   102a4:	fe842783          	lw	a5,-24(s0)
   102a8:	00279793          	slli	a5,a5,0x2
   102ac:	ff040693          	addi	a3,s0,-16
   102b0:	00f687b3          	add	a5,a3,a5
   102b4:	fce7ac23          	sw	a4,-40(a5)
   102b8:	fe842783          	lw	a5,-24(s0)
   102bc:	0017879b          	addiw	a5,a5,1
   102c0:	fef42423          	sw	a5,-24(s0)
   102c4:	fe842783          	lw	a5,-24(s0)
   102c8:	0007871b          	sext.w	a4,a5
   102cc:	00400793          	li	a5,4
   102d0:	f8e7d2e3          	bge	a5,a4,10254 <main+0xd4>
   102d4:	000117b7          	lui	a5,0x11
   102d8:	8d078513          	addi	a0,a5,-1840 # 108d0 <__errno+0x54>
   102dc:	09c000ef          	jal	ra,10378 <print_s>
   102e0:	fe042223          	sw	zero,-28(s0)
   102e4:	0340006f          	j	10318 <main+0x198>
   102e8:	fe442783          	lw	a5,-28(s0)
   102ec:	00279793          	slli	a5,a5,0x2
   102f0:	ff040713          	addi	a4,s0,-16
   102f4:	00f707b3          	add	a5,a4,a5
   102f8:	fd87a783          	lw	a5,-40(a5)
   102fc:	00078513          	mv	a0,a5
   10300:	04c000ef          	jal	ra,1034c <print_d>
   10304:	02000513          	li	a0,32
   10308:	098000ef          	jal	ra,103a0 <print_c>
   1030c:	fe442783          	lw	a5,-28(s0)
   10310:	0017879b          	addiw	a5,a5,1
   10314:	fef42223          	sw	a5,-28(s0)
   10318:	fe442783          	lw	a5,-28(s0)
   1031c:	0007871b          	sext.w	a4,a5
   10320:	00400793          	li	a5,4
   10324:	fce7d2e3          	bge	a5,a4,102e8 <main+0x168>
   10328:	00a00513          	li	a0,10
   1032c:	074000ef          	jal	ra,103a0 <print_c>
   10330:	09c000ef          	jal	ra,103cc <exit_proc>
   10334:	00000793          	li	a5,0
   10338:	00078513          	mv	a0,a5
   1033c:	03813083          	ld	ra,56(sp)
   10340:	03013403          	ld	s0,48(sp)
   10344:	04010113          	addi	sp,sp,64
   10348:	00008067          	ret

000000000001034c <print_d>:
   1034c:	fe010113          	addi	sp,sp,-32
   10350:	00813c23          	sd	s0,24(sp)
   10354:	02010413          	addi	s0,sp,32
   10358:	00050793          	mv	a5,a0
   1035c:	fef42623          	sw	a5,-20(s0)
   10360:	00100893          	li	a7,1
   10364:	00000073          	ecall
   10368:	00000013          	nop
   1036c:	01813403          	ld	s0,24(sp)
   10370:	02010113          	addi	sp,sp,32
   10374:	00008067          	ret

0000000000010378 <print_s>:
   10378:	fe010113          	addi	sp,sp,-32
   1037c:	00813c23          	sd	s0,24(sp)
   10380:	02010413          	addi	s0,sp,32
   10384:	fea43423          	sd	a0,-24(s0)
   10388:	00300893          	li	a7,3
   1038c:	00000073          	ecall
   10390:	00000013          	nop
   10394:	01813403          	ld	s0,24(sp)
   10398:	02010113          	addi	sp,sp,32
   1039c:	00008067          	ret

00000000000103a0 <print_c>:
   103a0:	fe010113          	addi	sp,sp,-32
   103a4:	00813c23          	sd	s0,24(sp)
   103a8:	02010413          	addi	s0,sp,32
   103ac:	00050793          	mv	a5,a0
   103b0:	fef407a3          	sb	a5,-17(s0)
   103b4:	00200893          	li	a7,2
   103b8:	00000073          	ecall
   103bc:	00000013          	nop
   103c0:	01813403          	ld	s0,24(sp)
   103c4:	02010113          	addi	sp,sp,32
   103c8:	00008067          	ret

00000000000103cc <exit_proc>:
   103cc:	ff010113          	addi	sp,sp,-16
   103d0:	00813423          	sd	s0,8(sp)
   103d4:	01010413          	addi	s0,sp,16
   103d8:	00000893          	li	a7,0
   103dc:	00000073          	ecall
   103e0:	00000013          	nop
   103e4:	00813403          	ld	s0,8(sp)
   103e8:	01010113          	addi	sp,sp,16
   103ec:	00008067          	ret

00000000000103f0 <read_char>:
   103f0:	fe010113          	addi	sp,sp,-32
   103f4:	00813c23          	sd	s0,24(sp)
   103f8:	02010413          	addi	s0,sp,32
   103fc:	00500893          	li	a7,5
   10400:	00000073          	ecall
   10404:	00050793          	mv	a5,a0
   10408:	fef407a3          	sb	a5,-17(s0)
   1040c:	fef44783          	lbu	a5,-17(s0)
   10410:	00078513          	mv	a0,a5
   10414:	01813403          	ld	s0,24(sp)
   10418:	02010113          	addi	sp,sp,32
   1041c:	00008067          	ret

0000000000010420 <read_num>:
   10420:	fe010113          	addi	sp,sp,-32
   10424:	00813c23          	sd	s0,24(sp)
   10428:	02010413          	addi	s0,sp,32
   1042c:	00400893          	li	a7,4
   10430:	00000073          	ecall
   10434:	00050793          	mv	a5,a0
   10438:	fef43423          	sd	a5,-24(s0)
   1043c:	fe843783          	ld	a5,-24(s0)
   10440:	00078513          	mv	a0,a5
   10444:	01813403          	ld	s0,24(sp)
   10448:	02010113          	addi	sp,sp,32
   1044c:	00008067          	ret

0000000000010450 <exit>:
   10450:	ff010113          	addi	sp,sp,-16
   10454:	00000593          	li	a1,0
   10458:	00813023          	sd	s0,0(sp)
   1045c:	00113423          	sd	ra,8(sp)
   10460:	00050413          	mv	s0,a0
   10464:	194000ef          	jal	ra,105f8 <__call_exitprocs>
   10468:	f481b503          	ld	a0,-184(gp) # 11768 <_global_impure_ptr>
   1046c:	05853783          	ld	a5,88(a0) # 11058 <impure_data+0x38>
   10470:	00078463          	beqz	a5,10478 <exit+0x28>
   10474:	000780e7          	jalr	a5
   10478:	00040513          	mv	a0,s0
   1047c:	3bc000ef          	jal	ra,10838 <_exit>

0000000000010480 <__libc_init_array>:
   10480:	fe010113          	addi	sp,sp,-32
   10484:	00813823          	sd	s0,16(sp)
   10488:	01213023          	sd	s2,0(sp)
   1048c:	00011437          	lui	s0,0x11
   10490:	00011937          	lui	s2,0x11
   10494:	00440793          	addi	a5,s0,4 # 11004 <__preinit_array_end>
   10498:	00490913          	addi	s2,s2,4 # 11004 <__preinit_array_end>
   1049c:	40f90933          	sub	s2,s2,a5
   104a0:	00113c23          	sd	ra,24(sp)
   104a4:	00913423          	sd	s1,8(sp)
   104a8:	40395913          	srai	s2,s2,0x3
   104ac:	02090063          	beqz	s2,104cc <__libc_init_array+0x4c>
   104b0:	00440413          	addi	s0,s0,4
   104b4:	00000493          	li	s1,0
   104b8:	00043783          	ld	a5,0(s0)
   104bc:	00148493          	addi	s1,s1,1
   104c0:	00840413          	addi	s0,s0,8
   104c4:	000780e7          	jalr	a5
   104c8:	fe9918e3          	bne	s2,s1,104b8 <__libc_init_array+0x38>
   104cc:	00011437          	lui	s0,0x11
   104d0:	00011937          	lui	s2,0x11
   104d4:	00840793          	addi	a5,s0,8 # 11008 <__init_array_start>
   104d8:	01890913          	addi	s2,s2,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   104dc:	40f90933          	sub	s2,s2,a5
   104e0:	40395913          	srai	s2,s2,0x3
   104e4:	02090063          	beqz	s2,10504 <__libc_init_array+0x84>
   104e8:	00840413          	addi	s0,s0,8
   104ec:	00000493          	li	s1,0
   104f0:	00043783          	ld	a5,0(s0)
   104f4:	00148493          	addi	s1,s1,1
   104f8:	00840413          	addi	s0,s0,8
   104fc:	000780e7          	jalr	a5
   10500:	fe9918e3          	bne	s2,s1,104f0 <__libc_init_array+0x70>
   10504:	01813083          	ld	ra,24(sp)
   10508:	01013403          	ld	s0,16(sp)
   1050c:	00813483          	ld	s1,8(sp)
   10510:	00013903          	ld	s2,0(sp)
   10514:	02010113          	addi	sp,sp,32
   10518:	00008067          	ret

000000000001051c <memset>:
   1051c:	00f00313          	li	t1,15
   10520:	00050713          	mv	a4,a0
   10524:	02c37a63          	bgeu	t1,a2,10558 <memset+0x3c>
   10528:	00f77793          	andi	a5,a4,15
   1052c:	0a079063          	bnez	a5,105cc <memset+0xb0>
   10530:	06059e63          	bnez	a1,105ac <memset+0x90>
   10534:	ff067693          	andi	a3,a2,-16
   10538:	00f67613          	andi	a2,a2,15
   1053c:	00e686b3          	add	a3,a3,a4
   10540:	00b73023          	sd	a1,0(a4)
   10544:	00b73423          	sd	a1,8(a4)
   10548:	01070713          	addi	a4,a4,16
   1054c:	fed76ae3          	bltu	a4,a3,10540 <memset+0x24>
   10550:	00061463          	bnez	a2,10558 <memset+0x3c>
   10554:	00008067          	ret
   10558:	40c306b3          	sub	a3,t1,a2
   1055c:	00269693          	slli	a3,a3,0x2
   10560:	00000297          	auipc	t0,0x0
   10564:	005686b3          	add	a3,a3,t0
   10568:	00c68067          	jr	12(a3)
   1056c:	00b70723          	sb	a1,14(a4)
   10570:	00b706a3          	sb	a1,13(a4)
   10574:	00b70623          	sb	a1,12(a4)
   10578:	00b705a3          	sb	a1,11(a4)
   1057c:	00b70523          	sb	a1,10(a4)
   10580:	00b704a3          	sb	a1,9(a4)
   10584:	00b70423          	sb	a1,8(a4)
   10588:	00b703a3          	sb	a1,7(a4)
   1058c:	00b70323          	sb	a1,6(a4)
   10590:	00b702a3          	sb	a1,5(a4)
   10594:	00b70223          	sb	a1,4(a4)
   10598:	00b701a3          	sb	a1,3(a4)
   1059c:	00b70123          	sb	a1,2(a4)
   105a0:	00b700a3          	sb	a1,1(a4)
   105a4:	00b70023          	sb	a1,0(a4)
   105a8:	00008067          	ret
   105ac:	0ff5f593          	andi	a1,a1,255
   105b0:	00859693          	slli	a3,a1,0x8
   105b4:	00d5e5b3          	or	a1,a1,a3
   105b8:	01059693          	slli	a3,a1,0x10
   105bc:	00d5e5b3          	or	a1,a1,a3
   105c0:	02059693          	slli	a3,a1,0x20
   105c4:	00d5e5b3          	or	a1,a1,a3
   105c8:	f6dff06f          	j	10534 <memset+0x18>
   105cc:	00279693          	slli	a3,a5,0x2
   105d0:	00000297          	auipc	t0,0x0
   105d4:	005686b3          	add	a3,a3,t0
   105d8:	00008293          	mv	t0,ra
   105dc:	f98680e7          	jalr	-104(a3)
   105e0:	00028093          	mv	ra,t0
   105e4:	ff078793          	addi	a5,a5,-16
   105e8:	40f70733          	sub	a4,a4,a5
   105ec:	00f60633          	add	a2,a2,a5
   105f0:	f6c374e3          	bgeu	t1,a2,10558 <memset+0x3c>
   105f4:	f3dff06f          	j	10530 <memset+0x14>

00000000000105f8 <__call_exitprocs>:
   105f8:	fb010113          	addi	sp,sp,-80
   105fc:	03413023          	sd	s4,32(sp)
   10600:	f481ba03          	ld	s4,-184(gp) # 11768 <_global_impure_ptr>
   10604:	03213823          	sd	s2,48(sp)
   10608:	04113423          	sd	ra,72(sp)
   1060c:	1f8a3903          	ld	s2,504(s4)
   10610:	04813023          	sd	s0,64(sp)
   10614:	02913c23          	sd	s1,56(sp)
   10618:	03313423          	sd	s3,40(sp)
   1061c:	01513c23          	sd	s5,24(sp)
   10620:	01613823          	sd	s6,16(sp)
   10624:	01713423          	sd	s7,8(sp)
   10628:	01813023          	sd	s8,0(sp)
   1062c:	04090063          	beqz	s2,1066c <__call_exitprocs+0x74>
   10630:	00050b13          	mv	s6,a0
   10634:	00058b93          	mv	s7,a1
   10638:	00100a93          	li	s5,1
   1063c:	fff00993          	li	s3,-1
   10640:	00892483          	lw	s1,8(s2)
   10644:	fff4841b          	addiw	s0,s1,-1
   10648:	02044263          	bltz	s0,1066c <__call_exitprocs+0x74>
   1064c:	00349493          	slli	s1,s1,0x3
   10650:	009904b3          	add	s1,s2,s1
   10654:	040b8463          	beqz	s7,1069c <__call_exitprocs+0xa4>
   10658:	2084b783          	ld	a5,520(s1)
   1065c:	05778063          	beq	a5,s7,1069c <__call_exitprocs+0xa4>
   10660:	fff4041b          	addiw	s0,s0,-1
   10664:	ff848493          	addi	s1,s1,-8
   10668:	ff3416e3          	bne	s0,s3,10654 <__call_exitprocs+0x5c>
   1066c:	04813083          	ld	ra,72(sp)
   10670:	04013403          	ld	s0,64(sp)
   10674:	03813483          	ld	s1,56(sp)
   10678:	03013903          	ld	s2,48(sp)
   1067c:	02813983          	ld	s3,40(sp)
   10680:	02013a03          	ld	s4,32(sp)
   10684:	01813a83          	ld	s5,24(sp)
   10688:	01013b03          	ld	s6,16(sp)
   1068c:	00813b83          	ld	s7,8(sp)
   10690:	00013c03          	ld	s8,0(sp)
   10694:	05010113          	addi	sp,sp,80
   10698:	00008067          	ret
   1069c:	00892783          	lw	a5,8(s2)
   106a0:	0084b703          	ld	a4,8(s1)
   106a4:	fff7879b          	addiw	a5,a5,-1
   106a8:	06878263          	beq	a5,s0,1070c <__call_exitprocs+0x114>
   106ac:	0004b423          	sd	zero,8(s1)
   106b0:	fa0708e3          	beqz	a4,10660 <__call_exitprocs+0x68>
   106b4:	31092783          	lw	a5,784(s2)
   106b8:	008a96bb          	sllw	a3,s5,s0
   106bc:	00892c03          	lw	s8,8(s2)
   106c0:	00d7f7b3          	and	a5,a5,a3
   106c4:	0007879b          	sext.w	a5,a5
   106c8:	02079263          	bnez	a5,106ec <__call_exitprocs+0xf4>
   106cc:	000700e7          	jalr	a4
   106d0:	00892703          	lw	a4,8(s2)
   106d4:	1f8a3783          	ld	a5,504(s4)
   106d8:	01871463          	bne	a4,s8,106e0 <__call_exitprocs+0xe8>
   106dc:	f8f902e3          	beq	s2,a5,10660 <__call_exitprocs+0x68>
   106e0:	f80786e3          	beqz	a5,1066c <__call_exitprocs+0x74>
   106e4:	00078913          	mv	s2,a5
   106e8:	f59ff06f          	j	10640 <__call_exitprocs+0x48>
   106ec:	31492783          	lw	a5,788(s2)
   106f0:	1084b583          	ld	a1,264(s1)
   106f4:	00d7f7b3          	and	a5,a5,a3
   106f8:	0007879b          	sext.w	a5,a5
   106fc:	00079c63          	bnez	a5,10714 <__call_exitprocs+0x11c>
   10700:	000b0513          	mv	a0,s6
   10704:	000700e7          	jalr	a4
   10708:	fc9ff06f          	j	106d0 <__call_exitprocs+0xd8>
   1070c:	00892423          	sw	s0,8(s2)
   10710:	fa1ff06f          	j	106b0 <__call_exitprocs+0xb8>
   10714:	00058513          	mv	a0,a1
   10718:	000700e7          	jalr	a4
   1071c:	fb5ff06f          	j	106d0 <__call_exitprocs+0xd8>

0000000000010720 <__libc_fini_array>:
   10720:	fe010113          	addi	sp,sp,-32
   10724:	00813823          	sd	s0,16(sp)
   10728:	000117b7          	lui	a5,0x11
   1072c:	00011437          	lui	s0,0x11
   10730:	01840413          	addi	s0,s0,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   10734:	02078793          	addi	a5,a5,32 # 11020 <impure_data>
   10738:	408787b3          	sub	a5,a5,s0
   1073c:	00913423          	sd	s1,8(sp)
   10740:	00113c23          	sd	ra,24(sp)
   10744:	4037d493          	srai	s1,a5,0x3
   10748:	02048063          	beqz	s1,10768 <__libc_fini_array+0x48>
   1074c:	ff878793          	addi	a5,a5,-8
   10750:	00878433          	add	s0,a5,s0
   10754:	00043783          	ld	a5,0(s0)
   10758:	fff48493          	addi	s1,s1,-1
   1075c:	ff840413          	addi	s0,s0,-8
   10760:	000780e7          	jalr	a5
   10764:	fe0498e3          	bnez	s1,10754 <__libc_fini_array+0x34>
   10768:	01813083          	ld	ra,24(sp)
   1076c:	01013403          	ld	s0,16(sp)
   10770:	00813483          	ld	s1,8(sp)
   10774:	02010113          	addi	sp,sp,32
   10778:	00008067          	ret

000000000001077c <atexit>:
   1077c:	00050593          	mv	a1,a0
   10780:	00000693          	li	a3,0
   10784:	00000613          	li	a2,0
   10788:	00000513          	li	a0,0
   1078c:	0040006f          	j	10790 <__register_exitproc>

0000000000010790 <__register_exitproc>:
   10790:	f481b703          	ld	a4,-184(gp) # 11768 <_global_impure_ptr>
   10794:	1f873783          	ld	a5,504(a4)
   10798:	06078063          	beqz	a5,107f8 <__register_exitproc+0x68>
   1079c:	0087a703          	lw	a4,8(a5)
   107a0:	01f00813          	li	a6,31
   107a4:	08e84663          	blt	a6,a4,10830 <__register_exitproc+0xa0>
   107a8:	02050863          	beqz	a0,107d8 <__register_exitproc+0x48>
   107ac:	00371813          	slli	a6,a4,0x3
   107b0:	01078833          	add	a6,a5,a6
   107b4:	10c83823          	sd	a2,272(a6)
   107b8:	3107a883          	lw	a7,784(a5)
   107bc:	00100613          	li	a2,1
   107c0:	00e6163b          	sllw	a2,a2,a4
   107c4:	00c8e8b3          	or	a7,a7,a2
   107c8:	3117a823          	sw	a7,784(a5)
   107cc:	20d83823          	sd	a3,528(a6)
   107d0:	00200693          	li	a3,2
   107d4:	02d50863          	beq	a0,a3,10804 <__register_exitproc+0x74>
   107d8:	00270693          	addi	a3,a4,2
   107dc:	00369693          	slli	a3,a3,0x3
   107e0:	0017071b          	addiw	a4,a4,1
   107e4:	00e7a423          	sw	a4,8(a5)
   107e8:	00d787b3          	add	a5,a5,a3
   107ec:	00b7b023          	sd	a1,0(a5)
   107f0:	00000513          	li	a0,0
   107f4:	00008067          	ret
   107f8:	20070793          	addi	a5,a4,512
   107fc:	1ef73c23          	sd	a5,504(a4)
   10800:	f9dff06f          	j	1079c <__register_exitproc+0xc>
   10804:	3147a683          	lw	a3,788(a5)
   10808:	00000513          	li	a0,0
   1080c:	00c6e633          	or	a2,a3,a2
   10810:	00270693          	addi	a3,a4,2
   10814:	00369693          	slli	a3,a3,0x3
   10818:	0017071b          	addiw	a4,a4,1
   1081c:	30c7aa23          	sw	a2,788(a5)
   10820:	00e7a423          	sw	a4,8(a5)
   10824:	00d787b3          	add	a5,a5,a3
   10828:	00b7b023          	sd	a1,0(a5)
   1082c:	00008067          	ret
   10830:	fff00513          	li	a0,-1
   10834:	00008067          	ret

0000000000010838 <_exit>:
   10838:	00000593          	li	a1,0
   1083c:	00000613          	li	a2,0
   10840:	00000693          	li	a3,0
   10844:	00000713          	li	a4,0
   10848:	00000793          	li	a5,0
   1084c:	05d00893          	li	a7,93
   10850:	00000073          	ecall
   10854:	00054463          	bltz	a0,1085c <_exit+0x24>
   10858:	0000006f          	j	10858 <_exit+0x20>
   1085c:	ff010113          	addi	sp,sp,-16
   10860:	00813023          	sd	s0,0(sp)
   10864:	00050413          	mv	s0,a0
   10868:	00113423          	sd	ra,8(sp)
   1086c:	4080043b          	negw	s0,s0
   10870:	00c000ef          	jal	ra,1087c <__errno>
   10874:	00852023          	sw	s0,0(a0)
   10878:	0000006f          	j	10878 <_exit+0x40>

000000000001087c <__errno>:
   1087c:	f581b503          	ld	a0,-168(gp) # 11778 <_impure_ptr>
   10880:	00008067          	ret

Disassembly of section .rodata:

0000000000010888 <.rodata>:
   10888:	7245                	lui	tp,0xffff1
   1088a:	6f72                	ld	t5,280(sp)
   1088c:	2c72                	fld	fs8,280(sp)
   1088e:	6620                	ld	s0,72(a2)
   10890:	2031                	0x2031
   10892:	7369                	lui	t1,0xffffa
   10894:	6620                	ld	s0,72(a2)
   10896:	6c61                	lui	s8,0x18
   10898:	202c6573          	csrrsi	a0,hedeleg,24
   1089c:	73206577          	0x73206577
   108a0:	6f68                	ld	a0,216(a4)
   108a2:	6c75                	lui	s8,0x1d
   108a4:	2064                	fld	fs1,192(s0)
   108a6:	6f6e                	ld	t5,216(sp)
   108a8:	2074                	fld	fa3,192(s0)
   108aa:	68206f67          	0x68206f67
   108ae:	7265                	lui	tp,0xffff9
   108b0:	2165                	addiw	sp,sp,25
   108b2:	000a                	c.slli	zero,0x2
   108b4:	0000                	unimp
   108b6:	0000                	unimp
   108b8:	6559                	lui	a0,0x16
   108ba:	66202c73          	csrr	s8,0x662
   108be:	2032                	fld	ft0,264(sp)
   108c0:	7369                	lui	t1,0xffffa
   108c2:	7420                	ld	s0,104(s0)
   108c4:	7572                	ld	a0,312(sp)
   108c6:	0a65                	addi	s4,s4,25
	...
   108d0:	5b61                	li	s6,-8
   108d2:	5d35                	li	s10,-19
   108d4:	3d20                	fld	fs0,120(a0)
   108d6:	0020                	addi	s0,sp,8
   108d8:	0001                	nop
   108da:	0000                	unimp
   108dc:	0002                	c.slli64	zero
   108de:	0000                	unimp
   108e0:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
   108e4:	0004                	0x4
   108e6:	0000                	unimp
   108e8:	0005                	c.nop	1
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
   0:	1b41                	addi	s6,s6,-16
   2:	0000                	unimp
   4:	7200                	ld	s0,32(a2)
   6:	7369                	lui	t1,0xffffa
   8:	01007663          	bgeu	zero,a6,14 <register_fini-0x1009c>
   c:	0011                	c.nop	4
   e:	0000                	unimp
  10:	1004                	addi	s1,sp,32
  12:	7205                	lui	tp,0xfffe1
  14:	3676                	fld	fa2,376(sp)
  16:	6934                	ld	a3,80(a0)
  18:	7032                	0x7032
  1a:	0030                	addi	a2,sp,8


test_arithmetic.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	68850513          	addi	a0,a0,1672 # 10688 <__libc_fini_array>
   100c0:	6240006f          	j	106e4 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00002197          	auipc	gp,0x2
   100cc:	f4018193          	addi	gp,gp,-192 # 12008 <__global_pointer$>
   100d0:	f6018513          	addi	a0,gp,-160 # 11f68 <completed.5525>
   100d4:	f9818613          	addi	a2,gp,-104 # 11fa0 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	3a4000ef          	jal	ra,10484 <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	60050513          	addi	a0,a0,1536 # 106e4 <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	59850513          	addi	a0,a0,1432 # 10688 <__libc_fini_array>
   100f8:	5ec000ef          	jal	ra,106e4 <atexit>
   100fc:	2ec000ef          	jal	ra,103e8 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	074000ef          	jal	ra,10180 <main>
   10110:	2a80006f          	j	103b8 <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	f601c703          	lbu	a4,-160(gp) # 11f68 <completed.5525>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00011537          	lui	a0,0x11
   10138:	7ec50513          	addi	a0,a0,2028 # 117ec <__FRAME_END__>
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	f6f18023          	sb	a5,-160(gp) # 11f68 <completed.5525>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00011537          	lui	a0,0x11
   1016c:	f6818593          	addi	a1,gp,-152 # 11f70 <object.5530>
   10170:	7ec50513          	addi	a0,a0,2028 # 117ec <__FRAME_END__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <main>:
   10180:	fc010113          	addi	sp,sp,-64
   10184:	02113c23          	sd	ra,56(sp)
   10188:	02813823          	sd	s0,48(sp)
   1018c:	04010413          	addi	s0,sp,64
   10190:	00a00793          	li	a5,10
   10194:	fef42623          	sw	a5,-20(s0)
   10198:	01400793          	li	a5,20
   1019c:	fef42423          	sw	a5,-24(s0)
   101a0:	01e00793          	li	a5,30
   101a4:	fef42223          	sw	a5,-28(s0)
   101a8:	000037b7          	lui	a5,0x3
   101ac:	03978793          	addi	a5,a5,57 # 3039 <register_fini-0xd077>
   101b0:	fef42023          	sw	a5,-32(s0)
   101b4:	00100793          	li	a5,1
   101b8:	fcf42e23          	sw	a5,-36(s0)
   101bc:	00200793          	li	a5,2
   101c0:	fcf42c23          	sw	a5,-40(s0)
   101c4:	fec42703          	lw	a4,-20(s0)
   101c8:	fe842783          	lw	a5,-24(s0)
   101cc:	00f707bb          	addw	a5,a4,a5
   101d0:	fcf42a23          	sw	a5,-44(s0)
   101d4:	fd442783          	lw	a5,-44(s0)
   101d8:	00078513          	mv	a0,a5
   101dc:	0d8000ef          	jal	ra,102b4 <print_d>
   101e0:	00a00513          	li	a0,10
   101e4:	124000ef          	jal	ra,10308 <print_c>
   101e8:	fec42703          	lw	a4,-20(s0)
   101ec:	fe842783          	lw	a5,-24(s0)
   101f0:	40f707bb          	subw	a5,a4,a5
   101f4:	fcf42823          	sw	a5,-48(s0)
   101f8:	fd042783          	lw	a5,-48(s0)
   101fc:	00078513          	mv	a0,a5
   10200:	0b4000ef          	jal	ra,102b4 <print_d>
   10204:	00a00513          	li	a0,10
   10208:	100000ef          	jal	ra,10308 <print_c>
   1020c:	fe442703          	lw	a4,-28(s0)
   10210:	fe042783          	lw	a5,-32(s0)
   10214:	02f707bb          	mulw	a5,a4,a5
   10218:	fcf42623          	sw	a5,-52(s0)
   1021c:	fcc42783          	lw	a5,-52(s0)
   10220:	00078513          	mv	a0,a5
   10224:	090000ef          	jal	ra,102b4 <print_d>
   10228:	00a00513          	li	a0,10
   1022c:	0dc000ef          	jal	ra,10308 <print_c>
   10230:	fe042703          	lw	a4,-32(s0)
   10234:	fe442783          	lw	a5,-28(s0)
   10238:	02f747bb          	divw	a5,a4,a5
   1023c:	fcf42a23          	sw	a5,-44(s0)
   10240:	fd442783          	lw	a5,-44(s0)
   10244:	00078513          	mv	a0,a5
   10248:	06c000ef          	jal	ra,102b4 <print_d>
   1024c:	00a00513          	li	a0,10
   10250:	0b8000ef          	jal	ra,10308 <print_c>
   10254:	fd842783          	lw	a5,-40(s0)
   10258:	fe042703          	lw	a4,-32(s0)
   1025c:	00f717bb          	sllw	a5,a4,a5
   10260:	fcf42823          	sw	a5,-48(s0)
   10264:	fd042783          	lw	a5,-48(s0)
   10268:	00078513          	mv	a0,a5
   1026c:	048000ef          	jal	ra,102b4 <print_d>
   10270:	00a00513          	li	a0,10
   10274:	094000ef          	jal	ra,10308 <print_c>
   10278:	fe042783          	lw	a5,-32(s0)
   1027c:	4047d79b          	sraiw	a5,a5,0x4
   10280:	fcf42623          	sw	a5,-52(s0)
   10284:	fcc42783          	lw	a5,-52(s0)
   10288:	00078513          	mv	a0,a5
   1028c:	028000ef          	jal	ra,102b4 <print_d>
   10290:	00a00513          	li	a0,10
   10294:	074000ef          	jal	ra,10308 <print_c>
   10298:	09c000ef          	jal	ra,10334 <exit_proc>
   1029c:	00000793          	li	a5,0
   102a0:	00078513          	mv	a0,a5
   102a4:	03813083          	ld	ra,56(sp)
   102a8:	03013403          	ld	s0,48(sp)
   102ac:	04010113          	addi	sp,sp,64
   102b0:	00008067          	ret

00000000000102b4 <print_d>:
   102b4:	fe010113          	addi	sp,sp,-32
   102b8:	00813c23          	sd	s0,24(sp)
   102bc:	02010413          	addi	s0,sp,32
   102c0:	00050793          	mv	a5,a0
   102c4:	fef42623          	sw	a5,-20(s0)
   102c8:	00100893          	li	a7,1
   102cc:	00000073          	ecall
   102d0:	00000013          	nop
   102d4:	01813403          	ld	s0,24(sp)
   102d8:	02010113          	addi	sp,sp,32
   102dc:	00008067          	ret

00000000000102e0 <print_s>:
   102e0:	fe010113          	addi	sp,sp,-32
   102e4:	00813c23          	sd	s0,24(sp)
   102e8:	02010413          	addi	s0,sp,32
   102ec:	fea43423          	sd	a0,-24(s0)
   102f0:	00300893          	li	a7,3
   102f4:	00000073          	ecall
   102f8:	00000013          	nop
   102fc:	01813403          	ld	s0,24(sp)
   10300:	02010113          	addi	sp,sp,32
   10304:	00008067          	ret

0000000000010308 <print_c>:
   10308:	fe010113          	addi	sp,sp,-32
   1030c:	00813c23          	sd	s0,24(sp)
   10310:	02010413          	addi	s0,sp,32
   10314:	00050793          	mv	a5,a0
   10318:	fef407a3          	sb	a5,-17(s0)
   1031c:	00200893          	li	a7,2
   10320:	00000073          	ecall
   10324:	00000013          	nop
   10328:	01813403          	ld	s0,24(sp)
   1032c:	02010113          	addi	sp,sp,32
   10330:	00008067          	ret

0000000000010334 <exit_proc>:
   10334:	ff010113          	addi	sp,sp,-16
   10338:	00813423          	sd	s0,8(sp)
   1033c:	01010413          	addi	s0,sp,16
   10340:	00000893          	li	a7,0
   10344:	00000073          	ecall
   10348:	00000013          	nop
   1034c:	00813403          	ld	s0,8(sp)
   10350:	01010113          	addi	sp,sp,16
   10354:	00008067          	ret

0000000000010358 <read_char>:
   10358:	fe010113          	addi	sp,sp,-32
   1035c:	00813c23          	sd	s0,24(sp)
   10360:	02010413          	addi	s0,sp,32
   10364:	00500893          	li	a7,5
   10368:	00000073          	ecall
   1036c:	00050793          	mv	a5,a0
   10370:	fef407a3          	sb	a5,-17(s0)
   10374:	fef44783          	lbu	a5,-17(s0)
   10378:	00078513          	mv	a0,a5
   1037c:	01813403          	ld	s0,24(sp)
   10380:	02010113          	addi	sp,sp,32
   10384:	00008067          	ret

0000000000010388 <read_num>:
   10388:	fe010113          	addi	sp,sp,-32
   1038c:	00813c23          	sd	s0,24(sp)
   10390:	02010413          	addi	s0,sp,32
   10394:	00400893          	li	a7,4
   10398:	00000073          	ecall
   1039c:	00050793          	mv	a5,a0
   103a0:	fef43423          	sd	a5,-24(s0)
   103a4:	fe843783          	ld	a5,-24(s0)
   103a8:	00078513          	mv	a0,a5
   103ac:	01813403          	ld	s0,24(sp)
   103b0:	02010113          	addi	sp,sp,32
   103b4:	00008067          	ret

00000000000103b8 <exit>:
   103b8:	ff010113          	addi	sp,sp,-16
   103bc:	00000593          	li	a1,0
   103c0:	00813023          	sd	s0,0(sp)
   103c4:	00113423          	sd	ra,8(sp)
   103c8:	00050413          	mv	s0,a0
   103cc:	194000ef          	jal	ra,10560 <__call_exitprocs>
   103d0:	f481b503          	ld	a0,-184(gp) # 11f50 <_global_impure_ptr>
   103d4:	05853783          	ld	a5,88(a0)
   103d8:	00078463          	beqz	a5,103e0 <exit+0x28>
   103dc:	000780e7          	jalr	a5
   103e0:	00040513          	mv	a0,s0
   103e4:	3bc000ef          	jal	ra,107a0 <_exit>

00000000000103e8 <__libc_init_array>:
   103e8:	fe010113          	addi	sp,sp,-32
   103ec:	00813823          	sd	s0,16(sp)
   103f0:	01213023          	sd	s2,0(sp)
   103f4:	00011437          	lui	s0,0x11
   103f8:	00011937          	lui	s2,0x11
   103fc:	7f040793          	addi	a5,s0,2032 # 117f0 <__init_array_start>
   10400:	7f090913          	addi	s2,s2,2032 # 117f0 <__init_array_start>
   10404:	40f90933          	sub	s2,s2,a5
   10408:	00113c23          	sd	ra,24(sp)
   1040c:	00913423          	sd	s1,8(sp)
   10410:	40395913          	srai	s2,s2,0x3
   10414:	02090063          	beqz	s2,10434 <__libc_init_array+0x4c>
   10418:	7f040413          	addi	s0,s0,2032
   1041c:	00000493          	li	s1,0
   10420:	00043783          	ld	a5,0(s0)
   10424:	00148493          	addi	s1,s1,1
   10428:	00840413          	addi	s0,s0,8
   1042c:	000780e7          	jalr	a5
   10430:	fe9918e3          	bne	s2,s1,10420 <__libc_init_array+0x38>
   10434:	00011437          	lui	s0,0x11
   10438:	00012937          	lui	s2,0x12
   1043c:	7f040793          	addi	a5,s0,2032 # 117f0 <__init_array_start>
   10440:	80090913          	addi	s2,s2,-2048 # 11800 <__do_global_dtors_aux_fini_array_entry>
   10444:	40f90933          	sub	s2,s2,a5
   10448:	40395913          	srai	s2,s2,0x3
   1044c:	02090063          	beqz	s2,1046c <__libc_init_array+0x84>
   10450:	7f040413          	addi	s0,s0,2032
   10454:	00000493          	li	s1,0
   10458:	00043783          	ld	a5,0(s0)
   1045c:	00148493          	addi	s1,s1,1
   10460:	00840413          	addi	s0,s0,8
   10464:	000780e7          	jalr	a5
   10468:	fe9918e3          	bne	s2,s1,10458 <__libc_init_array+0x70>
   1046c:	01813083          	ld	ra,24(sp)
   10470:	01013403          	ld	s0,16(sp)
   10474:	00813483          	ld	s1,8(sp)
   10478:	00013903          	ld	s2,0(sp)
   1047c:	02010113          	addi	sp,sp,32
   10480:	00008067          	ret

0000000000010484 <memset>:
   10484:	00f00313          	li	t1,15
   10488:	00050713          	mv	a4,a0
   1048c:	02c37a63          	bgeu	t1,a2,104c0 <memset+0x3c>
   10490:	00f77793          	andi	a5,a4,15
   10494:	0a079063          	bnez	a5,10534 <memset+0xb0>
   10498:	06059e63          	bnez	a1,10514 <memset+0x90>
   1049c:	ff067693          	andi	a3,a2,-16
   104a0:	00f67613          	andi	a2,a2,15
   104a4:	00e686b3          	add	a3,a3,a4
   104a8:	00b73023          	sd	a1,0(a4)
   104ac:	00b73423          	sd	a1,8(a4)
   104b0:	01070713          	addi	a4,a4,16
   104b4:	fed76ae3          	bltu	a4,a3,104a8 <memset+0x24>
   104b8:	00061463          	bnez	a2,104c0 <memset+0x3c>
   104bc:	00008067          	ret
   104c0:	40c306b3          	sub	a3,t1,a2
   104c4:	00269693          	slli	a3,a3,0x2
   104c8:	00000297          	auipc	t0,0x0
   104cc:	005686b3          	add	a3,a3,t0
   104d0:	00c68067          	jr	12(a3)
   104d4:	00b70723          	sb	a1,14(a4)
   104d8:	00b706a3          	sb	a1,13(a4)
   104dc:	00b70623          	sb	a1,12(a4)
   104e0:	00b705a3          	sb	a1,11(a4)
   104e4:	00b70523          	sb	a1,10(a4)
   104e8:	00b704a3          	sb	a1,9(a4)
   104ec:	00b70423          	sb	a1,8(a4)
   104f0:	00b703a3          	sb	a1,7(a4)
   104f4:	00b70323          	sb	a1,6(a4)
   104f8:	00b702a3          	sb	a1,5(a4)
   104fc:	00b70223          	sb	a1,4(a4)
   10500:	00b701a3          	sb	a1,3(a4)
   10504:	00b70123          	sb	a1,2(a4)
   10508:	00b700a3          	sb	a1,1(a4)
   1050c:	00b70023          	sb	a1,0(a4)
   10510:	00008067          	ret
   10514:	0ff5f593          	andi	a1,a1,255
   10518:	00859693          	slli	a3,a1,0x8
   1051c:	00d5e5b3          	or	a1,a1,a3
   10520:	01059693          	slli	a3,a1,0x10
   10524:	00d5e5b3          	or	a1,a1,a3
   10528:	02059693          	slli	a3,a1,0x20
   1052c:	00d5e5b3          	or	a1,a1,a3
   10530:	f6dff06f          	j	1049c <memset+0x18>
   10534:	00279693          	slli	a3,a5,0x2
   10538:	00000297          	auipc	t0,0x0
   1053c:	005686b3          	add	a3,a3,t0
   10540:	00008293          	mv	t0,ra
   10544:	f98680e7          	jalr	-104(a3)
   10548:	00028093          	mv	ra,t0
   1054c:	ff078793          	addi	a5,a5,-16
   10550:	40f70733          	sub	a4,a4,a5
   10554:	00f60633          	add	a2,a2,a5
   10558:	f6c374e3          	bgeu	t1,a2,104c0 <memset+0x3c>
   1055c:	f3dff06f          	j	10498 <memset+0x14>

0000000000010560 <__call_exitprocs>:
   10560:	fb010113          	addi	sp,sp,-80
   10564:	03413023          	sd	s4,32(sp)
   10568:	f481ba03          	ld	s4,-184(gp) # 11f50 <_global_impure_ptr>
   1056c:	03213823          	sd	s2,48(sp)
   10570:	04113423          	sd	ra,72(sp)
   10574:	1f8a3903          	ld	s2,504(s4)
   10578:	04813023          	sd	s0,64(sp)
   1057c:	02913c23          	sd	s1,56(sp)
   10580:	03313423          	sd	s3,40(sp)
   10584:	01513c23          	sd	s5,24(sp)
   10588:	01613823          	sd	s6,16(sp)
   1058c:	01713423          	sd	s7,8(sp)
   10590:	01813023          	sd	s8,0(sp)
   10594:	04090063          	beqz	s2,105d4 <__call_exitprocs+0x74>
   10598:	00050b13          	mv	s6,a0
   1059c:	00058b93          	mv	s7,a1
   105a0:	00100a93          	li	s5,1
   105a4:	fff00993          	li	s3,-1
   105a8:	00892483          	lw	s1,8(s2)
   105ac:	fff4841b          	addiw	s0,s1,-1
   105b0:	02044263          	bltz	s0,105d4 <__call_exitprocs+0x74>
   105b4:	00349493          	slli	s1,s1,0x3
   105b8:	009904b3          	add	s1,s2,s1
   105bc:	040b8463          	beqz	s7,10604 <__call_exitprocs+0xa4>
   105c0:	2084b783          	ld	a5,520(s1)
   105c4:	05778063          	beq	a5,s7,10604 <__call_exitprocs+0xa4>
   105c8:	fff4041b          	addiw	s0,s0,-1
   105cc:	ff848493          	addi	s1,s1,-8
   105d0:	ff3416e3          	bne	s0,s3,105bc <__call_exitprocs+0x5c>
   105d4:	04813083          	ld	ra,72(sp)
   105d8:	04013403          	ld	s0,64(sp)
   105dc:	03813483          	ld	s1,56(sp)
   105e0:	03013903          	ld	s2,48(sp)
   105e4:	02813983          	ld	s3,40(sp)
   105e8:	02013a03          	ld	s4,32(sp)
   105ec:	01813a83          	ld	s5,24(sp)
   105f0:	01013b03          	ld	s6,16(sp)
   105f4:	00813b83          	ld	s7,8(sp)
   105f8:	00013c03          	ld	s8,0(sp)
   105fc:	05010113          	addi	sp,sp,80
   10600:	00008067          	ret
   10604:	00892783          	lw	a5,8(s2)
   10608:	0084b703          	ld	a4,8(s1)
   1060c:	fff7879b          	addiw	a5,a5,-1
   10610:	06878263          	beq	a5,s0,10674 <__call_exitprocs+0x114>
   10614:	0004b423          	sd	zero,8(s1)
   10618:	fa0708e3          	beqz	a4,105c8 <__call_exitprocs+0x68>
   1061c:	31092783          	lw	a5,784(s2)
   10620:	008a96bb          	sllw	a3,s5,s0
   10624:	00892c03          	lw	s8,8(s2)
   10628:	00d7f7b3          	and	a5,a5,a3
   1062c:	0007879b          	sext.w	a5,a5
   10630:	02079263          	bnez	a5,10654 <__call_exitprocs+0xf4>
   10634:	000700e7          	jalr	a4
   10638:	00892703          	lw	a4,8(s2)
   1063c:	1f8a3783          	ld	a5,504(s4)
   10640:	01871463          	bne	a4,s8,10648 <__call_exitprocs+0xe8>
   10644:	f8f902e3          	beq	s2,a5,105c8 <__call_exitprocs+0x68>
   10648:	f80786e3          	beqz	a5,105d4 <__call_exitprocs+0x74>
   1064c:	00078913          	mv	s2,a5
   10650:	f59ff06f          	j	105a8 <__call_exitprocs+0x48>
   10654:	31492783          	lw	a5,788(s2)
   10658:	1084b583          	ld	a1,264(s1)
   1065c:	00d7f7b3          	and	a5,a5,a3
   10660:	0007879b          	sext.w	a5,a5
   10664:	00079c63          	bnez	a5,1067c <__call_exitprocs+0x11c>
   10668:	000b0513          	mv	a0,s6
   1066c:	000700e7          	jalr	a4
   10670:	fc9ff06f          	j	10638 <__call_exitprocs+0xd8>
   10674:	00892423          	sw	s0,8(s2)
   10678:	fa1ff06f          	j	10618 <__call_exitprocs+0xb8>
   1067c:	00058513          	mv	a0,a1
   10680:	000700e7          	jalr	a4
   10684:	fb5ff06f          	j	10638 <__call_exitprocs+0xd8>

0000000000010688 <__libc_fini_array>:
   10688:	fe010113          	addi	sp,sp,-32
   1068c:	00813823          	sd	s0,16(sp)
   10690:	000127b7          	lui	a5,0x12
   10694:	00012437          	lui	s0,0x12
   10698:	80040413          	addi	s0,s0,-2048 # 11800 <__do_global_dtors_aux_fini_array_entry>
   1069c:	80878793          	addi	a5,a5,-2040 # 11808 <impure_data>
   106a0:	408787b3          	sub	a5,a5,s0
   106a4:	00913423          	sd	s1,8(sp)
   106a8:	00113c23          	sd	ra,24(sp)
   106ac:	4037d493          	srai	s1,a5,0x3
   106b0:	02048063          	beqz	s1,106d0 <__libc_fini_array+0x48>
   106b4:	ff878793          	addi	a5,a5,-8
   106b8:	00878433          	add	s0,a5,s0
   106bc:	00043783          	ld	a5,0(s0)
   106c0:	fff48493          	addi	s1,s1,-1
   106c4:	ff840413          	addi	s0,s0,-8
   106c8:	000780e7          	jalr	a5
   106cc:	fe0498e3          	bnez	s1,106bc <__libc_fini_array+0x34>
   106d0:	01813083          	ld	ra,24(sp)
   106d4:	01013403          	ld	s0,16(sp)
   106d8:	00813483          	ld	s1,8(sp)
   106dc:	02010113          	addi	sp,sp,32
   106e0:	00008067          	ret

00000000000106e4 <atexit>:
   106e4:	00050593          	mv	a1,a0
   106e8:	00000693          	li	a3,0
   106ec:	00000613          	li	a2,0
   106f0:	00000513          	li	a0,0
   106f4:	0040006f          	j	106f8 <__register_exitproc>

00000000000106f8 <__register_exitproc>:
   106f8:	f481b703          	ld	a4,-184(gp) # 11f50 <_global_impure_ptr>
   106fc:	1f873783          	ld	a5,504(a4)
   10700:	06078063          	beqz	a5,10760 <__register_exitproc+0x68>
   10704:	0087a703          	lw	a4,8(a5)
   10708:	01f00813          	li	a6,31
   1070c:	08e84663          	blt	a6,a4,10798 <__register_exitproc+0xa0>
   10710:	02050863          	beqz	a0,10740 <__register_exitproc+0x48>
   10714:	00371813          	slli	a6,a4,0x3
   10718:	01078833          	add	a6,a5,a6
   1071c:	10c83823          	sd	a2,272(a6)
   10720:	3107a883          	lw	a7,784(a5)
   10724:	00100613          	li	a2,1
   10728:	00e6163b          	sllw	a2,a2,a4
   1072c:	00c8e8b3          	or	a7,a7,a2
   10730:	3117a823          	sw	a7,784(a5)
   10734:	20d83823          	sd	a3,528(a6)
   10738:	00200693          	li	a3,2
   1073c:	02d50863          	beq	a0,a3,1076c <__register_exitproc+0x74>
   10740:	00270693          	addi	a3,a4,2
   10744:	00369693          	slli	a3,a3,0x3
   10748:	0017071b          	addiw	a4,a4,1
   1074c:	00e7a423          	sw	a4,8(a5)
   10750:	00d787b3          	add	a5,a5,a3
   10754:	00b7b023          	sd	a1,0(a5)
   10758:	00000513          	li	a0,0
   1075c:	00008067          	ret
   10760:	20070793          	addi	a5,a4,512
   10764:	1ef73c23          	sd	a5,504(a4)
   10768:	f9dff06f          	j	10704 <__register_exitproc+0xc>
   1076c:	3147a683          	lw	a3,788(a5)
   10770:	00000513          	li	a0,0
   10774:	00c6e633          	or	a2,a3,a2
   10778:	00270693          	addi	a3,a4,2
   1077c:	00369693          	slli	a3,a3,0x3
   10780:	0017071b          	addiw	a4,a4,1
   10784:	30c7aa23          	sw	a2,788(a5)
   10788:	00e7a423          	sw	a4,8(a5)
   1078c:	00d787b3          	add	a5,a5,a3
   10790:	00b7b023          	sd	a1,0(a5)
   10794:	00008067          	ret
   10798:	fff00513          	li	a0,-1
   1079c:	00008067          	ret

00000000000107a0 <_exit>:
   107a0:	00000593          	li	a1,0
   107a4:	00000613          	li	a2,0
   107a8:	00000693          	li	a3,0
   107ac:	00000713          	li	a4,0
   107b0:	00000793          	li	a5,0
   107b4:	05d00893          	li	a7,93
   107b8:	00000073          	ecall
   107bc:	00054463          	bltz	a0,107c4 <_exit+0x24>
   107c0:	0000006f          	j	107c0 <_exit+0x20>
   107c4:	ff010113          	addi	sp,sp,-16
   107c8:	00813023          	sd	s0,0(sp)
   107cc:	00050413          	mv	s0,a0
   107d0:	00113423          	sd	ra,8(sp)
   107d4:	4080043b          	negw	s0,s0
   107d8:	00c000ef          	jal	ra,107e4 <__errno>
   107dc:	00852023          	sw	s0,0(a0)
   107e0:	0000006f          	j	107e0 <_exit+0x40>

00000000000107e4 <__errno>:
   107e4:	f581b503          	ld	a0,-168(gp) # 11f60 <_impure_ptr>
   107e8:	00008067          	ret

Disassembly of section .eh_frame:

00000000000117ec <__FRAME_END__>:
   117ec:	0000                	unimp
	...

Disassembly of section .init_array:

00000000000117f0 <__init_array_start>:
   117f0:	00b0                	addi	a2,sp,72
   117f2:	0001                	nop
   117f4:	0000                	unimp
	...

00000000000117f8 <__frame_dummy_init_array_entry>:
   117f8:	0160                	addi	s0,sp,140
   117fa:	0001                	nop
   117fc:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011800 <__do_global_dtors_aux_fini_array_entry>:
   11800:	0114                	addi	a3,sp,128
   11802:	0001                	nop
   11804:	0000                	unimp
	...

Disassembly of section .data:

0000000000011808 <impure_data>:
	...
   11810:	1d40                	addi	s0,sp,692
   11812:	0001                	nop
   11814:	0000                	unimp
   11816:	0000                	unimp
   11818:	1df0                	addi	a2,sp,764
   1181a:	0001                	nop
   1181c:	0000                	unimp
   1181e:	0000                	unimp
   11820:	1ea0                	addi	s0,sp,888
   11822:	0001                	nop
	...
   118f0:	0001                	nop
   118f2:	0000                	unimp
   118f4:	0000                	unimp
   118f6:	0000                	unimp
   118f8:	330e                	fld	ft6,224(sp)
   118fa:	abcd                	j	11eec <impure_data+0x6e4>
   118fc:	1234                	addi	a3,sp,296
   118fe:	e66d                	bnez	a2,119e8 <impure_data+0x1e0>
   11900:	deec                	sw	a1,124(a3)
   11902:	0005                	c.nop	1
   11904:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011f50 <_global_impure_ptr>:
   11f50:	1808                	addi	a0,sp,48
   11f52:	0001                	nop
   11f54:	0000                	unimp
	...

0000000000011f58 <__dso_handle>:
	...

0000000000011f60 <_impure_ptr>:
   11f60:	1808                	addi	a0,sp,48
   11f62:	0001                	nop
   11f64:	0000                	unimp
	...

Disassembly of section .bss:

0000000000011f68 <completed.5525>:
	...

0000000000011f70 <object.5530>:
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

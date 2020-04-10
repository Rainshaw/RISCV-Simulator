
test_arithmetic.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	7c450513          	addi	a0,a0,1988 # 107c4 <__libc_fini_array>
   100c0:	7600006f          	j	10820 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00001197          	auipc	gp,0x1
   100cc:	75818193          	addi	gp,gp,1880 # 11820 <__global_pointer$>
   100d0:	f6018513          	addi	a0,gp,-160 # 11780 <completed.5525>
   100d4:	f9818613          	addi	a2,gp,-104 # 117b8 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	4e0000ef          	jal	ra,105c0 <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	73c50513          	addi	a0,a0,1852 # 10820 <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	6d450513          	addi	a0,a0,1748 # 107c4 <__libc_fini_array>
   100f8:	728000ef          	jal	ra,10820 <atexit>
   100fc:	428000ef          	jal	ra,10524 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	074000ef          	jal	ra,10180 <main>
   10110:	3e40006f          	j	104f4 <exit>

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
   101dc:	0f0000ef          	jal	ra,102cc <print_d>
   101e0:	00a00513          	li	a0,10
   101e4:	13c000ef          	jal	ra,10320 <print_c>
   101e8:	fec42703          	lw	a4,-20(s0)
   101ec:	fe842783          	lw	a5,-24(s0)
   101f0:	40f707bb          	subw	a5,a4,a5
   101f4:	fcf42823          	sw	a5,-48(s0)
   101f8:	fd042783          	lw	a5,-48(s0)
   101fc:	00078513          	mv	a0,a5
   10200:	0cc000ef          	jal	ra,102cc <print_d>
   10204:	00a00513          	li	a0,10
   10208:	118000ef          	jal	ra,10320 <print_c>
   1020c:	fe442783          	lw	a5,-28(s0)
   10210:	fe042703          	lw	a4,-32(s0)
   10214:	00070593          	mv	a1,a4
   10218:	00078513          	mv	a0,a5
   1021c:	1b4000ef          	jal	ra,103d0 <__muldi3>
   10220:	00050793          	mv	a5,a0
   10224:	fcf42623          	sw	a5,-52(s0)
   10228:	fcc42783          	lw	a5,-52(s0)
   1022c:	00078513          	mv	a0,a5
   10230:	09c000ef          	jal	ra,102cc <print_d>
   10234:	00a00513          	li	a0,10
   10238:	0e8000ef          	jal	ra,10320 <print_c>
   1023c:	fe042783          	lw	a5,-32(s0)
   10240:	fe442703          	lw	a4,-28(s0)
   10244:	00070593          	mv	a1,a4
   10248:	00078513          	mv	a0,a5
   1024c:	1e8000ef          	jal	ra,10434 <__divdi3>
   10250:	00050793          	mv	a5,a0
   10254:	fcf42a23          	sw	a5,-44(s0)
   10258:	fd442783          	lw	a5,-44(s0)
   1025c:	00078513          	mv	a0,a5
   10260:	06c000ef          	jal	ra,102cc <print_d>
   10264:	00a00513          	li	a0,10
   10268:	0b8000ef          	jal	ra,10320 <print_c>
   1026c:	fd842783          	lw	a5,-40(s0)
   10270:	fe042703          	lw	a4,-32(s0)
   10274:	00f717bb          	sllw	a5,a4,a5
   10278:	fcf42823          	sw	a5,-48(s0)
   1027c:	fd042783          	lw	a5,-48(s0)
   10280:	00078513          	mv	a0,a5
   10284:	048000ef          	jal	ra,102cc <print_d>
   10288:	00a00513          	li	a0,10
   1028c:	094000ef          	jal	ra,10320 <print_c>
   10290:	fe042783          	lw	a5,-32(s0)
   10294:	4047d79b          	sraiw	a5,a5,0x4
   10298:	fcf42623          	sw	a5,-52(s0)
   1029c:	fcc42783          	lw	a5,-52(s0)
   102a0:	00078513          	mv	a0,a5
   102a4:	028000ef          	jal	ra,102cc <print_d>
   102a8:	00a00513          	li	a0,10
   102ac:	074000ef          	jal	ra,10320 <print_c>
   102b0:	09c000ef          	jal	ra,1034c <exit_proc>
   102b4:	00000793          	li	a5,0
   102b8:	00078513          	mv	a0,a5
   102bc:	03813083          	ld	ra,56(sp)
   102c0:	03013403          	ld	s0,48(sp)
   102c4:	04010113          	addi	sp,sp,64
   102c8:	00008067          	ret

00000000000102cc <print_d>:
   102cc:	fe010113          	addi	sp,sp,-32
   102d0:	00813c23          	sd	s0,24(sp)
   102d4:	02010413          	addi	s0,sp,32
   102d8:	00050793          	mv	a5,a0
   102dc:	fef42623          	sw	a5,-20(s0)
   102e0:	00100893          	li	a7,1
   102e4:	00000073          	ecall
   102e8:	00000013          	nop
   102ec:	01813403          	ld	s0,24(sp)
   102f0:	02010113          	addi	sp,sp,32
   102f4:	00008067          	ret

00000000000102f8 <print_s>:
   102f8:	fe010113          	addi	sp,sp,-32
   102fc:	00813c23          	sd	s0,24(sp)
   10300:	02010413          	addi	s0,sp,32
   10304:	fea43423          	sd	a0,-24(s0)
   10308:	00300893          	li	a7,3
   1030c:	00000073          	ecall
   10310:	00000013          	nop
   10314:	01813403          	ld	s0,24(sp)
   10318:	02010113          	addi	sp,sp,32
   1031c:	00008067          	ret

0000000000010320 <print_c>:
   10320:	fe010113          	addi	sp,sp,-32
   10324:	00813c23          	sd	s0,24(sp)
   10328:	02010413          	addi	s0,sp,32
   1032c:	00050793          	mv	a5,a0
   10330:	fef407a3          	sb	a5,-17(s0)
   10334:	00200893          	li	a7,2
   10338:	00000073          	ecall
   1033c:	00000013          	nop
   10340:	01813403          	ld	s0,24(sp)
   10344:	02010113          	addi	sp,sp,32
   10348:	00008067          	ret

000000000001034c <exit_proc>:
   1034c:	ff010113          	addi	sp,sp,-16
   10350:	00813423          	sd	s0,8(sp)
   10354:	01010413          	addi	s0,sp,16
   10358:	00000893          	li	a7,0
   1035c:	00000073          	ecall
   10360:	00000013          	nop
   10364:	00813403          	ld	s0,8(sp)
   10368:	01010113          	addi	sp,sp,16
   1036c:	00008067          	ret

0000000000010370 <read_char>:
   10370:	fe010113          	addi	sp,sp,-32
   10374:	00813c23          	sd	s0,24(sp)
   10378:	02010413          	addi	s0,sp,32
   1037c:	00500893          	li	a7,5
   10380:	00000073          	ecall
   10384:	00050793          	mv	a5,a0
   10388:	fef407a3          	sb	a5,-17(s0)
   1038c:	fef44783          	lbu	a5,-17(s0)
   10390:	00078513          	mv	a0,a5
   10394:	01813403          	ld	s0,24(sp)
   10398:	02010113          	addi	sp,sp,32
   1039c:	00008067          	ret

00000000000103a0 <read_num>:
   103a0:	fe010113          	addi	sp,sp,-32
   103a4:	00813c23          	sd	s0,24(sp)
   103a8:	02010413          	addi	s0,sp,32
   103ac:	00400893          	li	a7,4
   103b0:	00000073          	ecall
   103b4:	00050793          	mv	a5,a0
   103b8:	fef43423          	sd	a5,-24(s0)
   103bc:	fe843783          	ld	a5,-24(s0)
   103c0:	00078513          	mv	a0,a5
   103c4:	01813403          	ld	s0,24(sp)
   103c8:	02010113          	addi	sp,sp,32
   103cc:	00008067          	ret

00000000000103d0 <__muldi3>:
   103d0:	00050613          	mv	a2,a0
   103d4:	00000513          	li	a0,0
   103d8:	0015f693          	andi	a3,a1,1
   103dc:	00068463          	beqz	a3,103e4 <__muldi3+0x14>
   103e0:	00c50533          	add	a0,a0,a2
   103e4:	0015d593          	srli	a1,a1,0x1
   103e8:	00161613          	slli	a2,a2,0x1
   103ec:	fe0596e3          	bnez	a1,103d8 <__muldi3+0x8>
   103f0:	00008067          	ret

00000000000103f4 <__udivsi3>:
   103f4:	02051513          	slli	a0,a0,0x20
   103f8:	02059593          	slli	a1,a1,0x20
   103fc:	00008293          	mv	t0,ra
   10400:	03c000ef          	jal	ra,1043c <__udivdi3>
   10404:	0005051b          	sext.w	a0,a0
   10408:	00028067          	jr	t0

000000000001040c <__umodsi3>:
   1040c:	02051513          	slli	a0,a0,0x20
   10410:	02059593          	slli	a1,a1,0x20
   10414:	02055513          	srli	a0,a0,0x20
   10418:	0205d593          	srli	a1,a1,0x20
   1041c:	00008293          	mv	t0,ra
   10420:	01c000ef          	jal	ra,1043c <__udivdi3>
   10424:	0005851b          	sext.w	a0,a1
   10428:	00028067          	jr	t0

000000000001042c <__divsi3>:
   1042c:	fff00293          	li	t0,-1
   10430:	0a558c63          	beq	a1,t0,104e8 <__moddi3+0x30>

0000000000010434 <__divdi3>:
   10434:	06054063          	bltz	a0,10494 <__umoddi3+0x10>
   10438:	0605c663          	bltz	a1,104a4 <__umoddi3+0x20>

000000000001043c <__udivdi3>:
   1043c:	00058613          	mv	a2,a1
   10440:	00050593          	mv	a1,a0
   10444:	fff00513          	li	a0,-1
   10448:	02060c63          	beqz	a2,10480 <__udivdi3+0x44>
   1044c:	00100693          	li	a3,1
   10450:	00b67a63          	bgeu	a2,a1,10464 <__udivdi3+0x28>
   10454:	00c05863          	blez	a2,10464 <__udivdi3+0x28>
   10458:	00161613          	slli	a2,a2,0x1
   1045c:	00169693          	slli	a3,a3,0x1
   10460:	feb66ae3          	bltu	a2,a1,10454 <__udivdi3+0x18>
   10464:	00000513          	li	a0,0
   10468:	00c5e663          	bltu	a1,a2,10474 <__udivdi3+0x38>
   1046c:	40c585b3          	sub	a1,a1,a2
   10470:	00d56533          	or	a0,a0,a3
   10474:	0016d693          	srli	a3,a3,0x1
   10478:	00165613          	srli	a2,a2,0x1
   1047c:	fe0696e3          	bnez	a3,10468 <__udivdi3+0x2c>
   10480:	00008067          	ret

0000000000010484 <__umoddi3>:
   10484:	00008293          	mv	t0,ra
   10488:	fb5ff0ef          	jal	ra,1043c <__udivdi3>
   1048c:	00058513          	mv	a0,a1
   10490:	00028067          	jr	t0
   10494:	40a00533          	neg	a0,a0
   10498:	0005d863          	bgez	a1,104a8 <__umoddi3+0x24>
   1049c:	40b005b3          	neg	a1,a1
   104a0:	f9dff06f          	j	1043c <__udivdi3>
   104a4:	40b005b3          	neg	a1,a1
   104a8:	00008293          	mv	t0,ra
   104ac:	f91ff0ef          	jal	ra,1043c <__udivdi3>
   104b0:	40a00533          	neg	a0,a0
   104b4:	00028067          	jr	t0

00000000000104b8 <__moddi3>:
   104b8:	00008293          	mv	t0,ra
   104bc:	0005ca63          	bltz	a1,104d0 <__moddi3+0x18>
   104c0:	00054c63          	bltz	a0,104d8 <__moddi3+0x20>
   104c4:	f79ff0ef          	jal	ra,1043c <__udivdi3>
   104c8:	00058513          	mv	a0,a1
   104cc:	00028067          	jr	t0
   104d0:	40b005b3          	neg	a1,a1
   104d4:	fe0558e3          	bgez	a0,104c4 <__moddi3+0xc>
   104d8:	40a00533          	neg	a0,a0
   104dc:	f61ff0ef          	jal	ra,1043c <__udivdi3>
   104e0:	40b00533          	neg	a0,a1
   104e4:	00028067          	jr	t0
   104e8:	01f29293          	slli	t0,t0,0x1f
   104ec:	f45514e3          	bne	a0,t0,10434 <__divdi3>
   104f0:	00008067          	ret

00000000000104f4 <exit>:
   104f4:	ff010113          	addi	sp,sp,-16
   104f8:	00000593          	li	a1,0
   104fc:	00813023          	sd	s0,0(sp)
   10500:	00113423          	sd	ra,8(sp)
   10504:	00050413          	mv	s0,a0
   10508:	194000ef          	jal	ra,1069c <__call_exitprocs>
   1050c:	f481b503          	ld	a0,-184(gp) # 11768 <_global_impure_ptr>
   10510:	05853783          	ld	a5,88(a0) # 11058 <impure_data+0x38>
   10514:	00078463          	beqz	a5,1051c <exit+0x28>
   10518:	000780e7          	jalr	a5
   1051c:	00040513          	mv	a0,s0
   10520:	3bc000ef          	jal	ra,108dc <_exit>

0000000000010524 <__libc_init_array>:
   10524:	fe010113          	addi	sp,sp,-32
   10528:	00813823          	sd	s0,16(sp)
   1052c:	01213023          	sd	s2,0(sp)
   10530:	00011437          	lui	s0,0x11
   10534:	00011937          	lui	s2,0x11
   10538:	00440793          	addi	a5,s0,4 # 11004 <__preinit_array_end>
   1053c:	00490913          	addi	s2,s2,4 # 11004 <__preinit_array_end>
   10540:	40f90933          	sub	s2,s2,a5
   10544:	00113c23          	sd	ra,24(sp)
   10548:	00913423          	sd	s1,8(sp)
   1054c:	40395913          	srai	s2,s2,0x3
   10550:	02090063          	beqz	s2,10570 <__libc_init_array+0x4c>
   10554:	00440413          	addi	s0,s0,4
   10558:	00000493          	li	s1,0
   1055c:	00043783          	ld	a5,0(s0)
   10560:	00148493          	addi	s1,s1,1
   10564:	00840413          	addi	s0,s0,8
   10568:	000780e7          	jalr	a5
   1056c:	fe9918e3          	bne	s2,s1,1055c <__libc_init_array+0x38>
   10570:	00011437          	lui	s0,0x11
   10574:	00011937          	lui	s2,0x11
   10578:	00840793          	addi	a5,s0,8 # 11008 <__init_array_start>
   1057c:	01890913          	addi	s2,s2,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   10580:	40f90933          	sub	s2,s2,a5
   10584:	40395913          	srai	s2,s2,0x3
   10588:	02090063          	beqz	s2,105a8 <__libc_init_array+0x84>
   1058c:	00840413          	addi	s0,s0,8
   10590:	00000493          	li	s1,0
   10594:	00043783          	ld	a5,0(s0)
   10598:	00148493          	addi	s1,s1,1
   1059c:	00840413          	addi	s0,s0,8
   105a0:	000780e7          	jalr	a5
   105a4:	fe9918e3          	bne	s2,s1,10594 <__libc_init_array+0x70>
   105a8:	01813083          	ld	ra,24(sp)
   105ac:	01013403          	ld	s0,16(sp)
   105b0:	00813483          	ld	s1,8(sp)
   105b4:	00013903          	ld	s2,0(sp)
   105b8:	02010113          	addi	sp,sp,32
   105bc:	00008067          	ret

00000000000105c0 <memset>:
   105c0:	00f00313          	li	t1,15
   105c4:	00050713          	mv	a4,a0
   105c8:	02c37a63          	bgeu	t1,a2,105fc <memset+0x3c>
   105cc:	00f77793          	andi	a5,a4,15
   105d0:	0a079063          	bnez	a5,10670 <memset+0xb0>
   105d4:	06059e63          	bnez	a1,10650 <memset+0x90>
   105d8:	ff067693          	andi	a3,a2,-16
   105dc:	00f67613          	andi	a2,a2,15
   105e0:	00e686b3          	add	a3,a3,a4
   105e4:	00b73023          	sd	a1,0(a4)
   105e8:	00b73423          	sd	a1,8(a4)
   105ec:	01070713          	addi	a4,a4,16
   105f0:	fed76ae3          	bltu	a4,a3,105e4 <memset+0x24>
   105f4:	00061463          	bnez	a2,105fc <memset+0x3c>
   105f8:	00008067          	ret
   105fc:	40c306b3          	sub	a3,t1,a2
   10600:	00269693          	slli	a3,a3,0x2
   10604:	00000297          	auipc	t0,0x0
   10608:	005686b3          	add	a3,a3,t0
   1060c:	00c68067          	jr	12(a3)
   10610:	00b70723          	sb	a1,14(a4)
   10614:	00b706a3          	sb	a1,13(a4)
   10618:	00b70623          	sb	a1,12(a4)
   1061c:	00b705a3          	sb	a1,11(a4)
   10620:	00b70523          	sb	a1,10(a4)
   10624:	00b704a3          	sb	a1,9(a4)
   10628:	00b70423          	sb	a1,8(a4)
   1062c:	00b703a3          	sb	a1,7(a4)
   10630:	00b70323          	sb	a1,6(a4)
   10634:	00b702a3          	sb	a1,5(a4)
   10638:	00b70223          	sb	a1,4(a4)
   1063c:	00b701a3          	sb	a1,3(a4)
   10640:	00b70123          	sb	a1,2(a4)
   10644:	00b700a3          	sb	a1,1(a4)
   10648:	00b70023          	sb	a1,0(a4)
   1064c:	00008067          	ret
   10650:	0ff5f593          	andi	a1,a1,255
   10654:	00859693          	slli	a3,a1,0x8
   10658:	00d5e5b3          	or	a1,a1,a3
   1065c:	01059693          	slli	a3,a1,0x10
   10660:	00d5e5b3          	or	a1,a1,a3
   10664:	02059693          	slli	a3,a1,0x20
   10668:	00d5e5b3          	or	a1,a1,a3
   1066c:	f6dff06f          	j	105d8 <memset+0x18>
   10670:	00279693          	slli	a3,a5,0x2
   10674:	00000297          	auipc	t0,0x0
   10678:	005686b3          	add	a3,a3,t0
   1067c:	00008293          	mv	t0,ra
   10680:	f98680e7          	jalr	-104(a3)
   10684:	00028093          	mv	ra,t0
   10688:	ff078793          	addi	a5,a5,-16
   1068c:	40f70733          	sub	a4,a4,a5
   10690:	00f60633          	add	a2,a2,a5
   10694:	f6c374e3          	bgeu	t1,a2,105fc <memset+0x3c>
   10698:	f3dff06f          	j	105d4 <memset+0x14>

000000000001069c <__call_exitprocs>:
   1069c:	fb010113          	addi	sp,sp,-80
   106a0:	03413023          	sd	s4,32(sp)
   106a4:	f481ba03          	ld	s4,-184(gp) # 11768 <_global_impure_ptr>
   106a8:	03213823          	sd	s2,48(sp)
   106ac:	04113423          	sd	ra,72(sp)
   106b0:	1f8a3903          	ld	s2,504(s4)
   106b4:	04813023          	sd	s0,64(sp)
   106b8:	02913c23          	sd	s1,56(sp)
   106bc:	03313423          	sd	s3,40(sp)
   106c0:	01513c23          	sd	s5,24(sp)
   106c4:	01613823          	sd	s6,16(sp)
   106c8:	01713423          	sd	s7,8(sp)
   106cc:	01813023          	sd	s8,0(sp)
   106d0:	04090063          	beqz	s2,10710 <__call_exitprocs+0x74>
   106d4:	00050b13          	mv	s6,a0
   106d8:	00058b93          	mv	s7,a1
   106dc:	00100a93          	li	s5,1
   106e0:	fff00993          	li	s3,-1
   106e4:	00892483          	lw	s1,8(s2)
   106e8:	fff4841b          	addiw	s0,s1,-1
   106ec:	02044263          	bltz	s0,10710 <__call_exitprocs+0x74>
   106f0:	00349493          	slli	s1,s1,0x3
   106f4:	009904b3          	add	s1,s2,s1
   106f8:	040b8463          	beqz	s7,10740 <__call_exitprocs+0xa4>
   106fc:	2084b783          	ld	a5,520(s1)
   10700:	05778063          	beq	a5,s7,10740 <__call_exitprocs+0xa4>
   10704:	fff4041b          	addiw	s0,s0,-1
   10708:	ff848493          	addi	s1,s1,-8
   1070c:	ff3416e3          	bne	s0,s3,106f8 <__call_exitprocs+0x5c>
   10710:	04813083          	ld	ra,72(sp)
   10714:	04013403          	ld	s0,64(sp)
   10718:	03813483          	ld	s1,56(sp)
   1071c:	03013903          	ld	s2,48(sp)
   10720:	02813983          	ld	s3,40(sp)
   10724:	02013a03          	ld	s4,32(sp)
   10728:	01813a83          	ld	s5,24(sp)
   1072c:	01013b03          	ld	s6,16(sp)
   10730:	00813b83          	ld	s7,8(sp)
   10734:	00013c03          	ld	s8,0(sp)
   10738:	05010113          	addi	sp,sp,80
   1073c:	00008067          	ret
   10740:	00892783          	lw	a5,8(s2)
   10744:	0084b703          	ld	a4,8(s1)
   10748:	fff7879b          	addiw	a5,a5,-1
   1074c:	06878263          	beq	a5,s0,107b0 <__call_exitprocs+0x114>
   10750:	0004b423          	sd	zero,8(s1)
   10754:	fa0708e3          	beqz	a4,10704 <__call_exitprocs+0x68>
   10758:	31092783          	lw	a5,784(s2)
   1075c:	008a96bb          	sllw	a3,s5,s0
   10760:	00892c03          	lw	s8,8(s2)
   10764:	00d7f7b3          	and	a5,a5,a3
   10768:	0007879b          	sext.w	a5,a5
   1076c:	02079263          	bnez	a5,10790 <__call_exitprocs+0xf4>
   10770:	000700e7          	jalr	a4
   10774:	00892703          	lw	a4,8(s2)
   10778:	1f8a3783          	ld	a5,504(s4)
   1077c:	01871463          	bne	a4,s8,10784 <__call_exitprocs+0xe8>
   10780:	f8f902e3          	beq	s2,a5,10704 <__call_exitprocs+0x68>
   10784:	f80786e3          	beqz	a5,10710 <__call_exitprocs+0x74>
   10788:	00078913          	mv	s2,a5
   1078c:	f59ff06f          	j	106e4 <__call_exitprocs+0x48>
   10790:	31492783          	lw	a5,788(s2)
   10794:	1084b583          	ld	a1,264(s1)
   10798:	00d7f7b3          	and	a5,a5,a3
   1079c:	0007879b          	sext.w	a5,a5
   107a0:	00079c63          	bnez	a5,107b8 <__call_exitprocs+0x11c>
   107a4:	000b0513          	mv	a0,s6
   107a8:	000700e7          	jalr	a4
   107ac:	fc9ff06f          	j	10774 <__call_exitprocs+0xd8>
   107b0:	00892423          	sw	s0,8(s2)
   107b4:	fa1ff06f          	j	10754 <__call_exitprocs+0xb8>
   107b8:	00058513          	mv	a0,a1
   107bc:	000700e7          	jalr	a4
   107c0:	fb5ff06f          	j	10774 <__call_exitprocs+0xd8>

00000000000107c4 <__libc_fini_array>:
   107c4:	fe010113          	addi	sp,sp,-32
   107c8:	00813823          	sd	s0,16(sp)
   107cc:	000117b7          	lui	a5,0x11
   107d0:	00011437          	lui	s0,0x11
   107d4:	01840413          	addi	s0,s0,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   107d8:	02078793          	addi	a5,a5,32 # 11020 <impure_data>
   107dc:	408787b3          	sub	a5,a5,s0
   107e0:	00913423          	sd	s1,8(sp)
   107e4:	00113c23          	sd	ra,24(sp)
   107e8:	4037d493          	srai	s1,a5,0x3
   107ec:	02048063          	beqz	s1,1080c <__libc_fini_array+0x48>
   107f0:	ff878793          	addi	a5,a5,-8
   107f4:	00878433          	add	s0,a5,s0
   107f8:	00043783          	ld	a5,0(s0)
   107fc:	fff48493          	addi	s1,s1,-1
   10800:	ff840413          	addi	s0,s0,-8
   10804:	000780e7          	jalr	a5
   10808:	fe0498e3          	bnez	s1,107f8 <__libc_fini_array+0x34>
   1080c:	01813083          	ld	ra,24(sp)
   10810:	01013403          	ld	s0,16(sp)
   10814:	00813483          	ld	s1,8(sp)
   10818:	02010113          	addi	sp,sp,32
   1081c:	00008067          	ret

0000000000010820 <atexit>:
   10820:	00050593          	mv	a1,a0
   10824:	00000693          	li	a3,0
   10828:	00000613          	li	a2,0
   1082c:	00000513          	li	a0,0
   10830:	0040006f          	j	10834 <__register_exitproc>

0000000000010834 <__register_exitproc>:
   10834:	f481b703          	ld	a4,-184(gp) # 11768 <_global_impure_ptr>
   10838:	1f873783          	ld	a5,504(a4)
   1083c:	06078063          	beqz	a5,1089c <__register_exitproc+0x68>
   10840:	0087a703          	lw	a4,8(a5)
   10844:	01f00813          	li	a6,31
   10848:	08e84663          	blt	a6,a4,108d4 <__register_exitproc+0xa0>
   1084c:	02050863          	beqz	a0,1087c <__register_exitproc+0x48>
   10850:	00371813          	slli	a6,a4,0x3
   10854:	01078833          	add	a6,a5,a6
   10858:	10c83823          	sd	a2,272(a6)
   1085c:	3107a883          	lw	a7,784(a5)
   10860:	00100613          	li	a2,1
   10864:	00e6163b          	sllw	a2,a2,a4
   10868:	00c8e8b3          	or	a7,a7,a2
   1086c:	3117a823          	sw	a7,784(a5)
   10870:	20d83823          	sd	a3,528(a6)
   10874:	00200693          	li	a3,2
   10878:	02d50863          	beq	a0,a3,108a8 <__register_exitproc+0x74>
   1087c:	00270693          	addi	a3,a4,2
   10880:	00369693          	slli	a3,a3,0x3
   10884:	0017071b          	addiw	a4,a4,1
   10888:	00e7a423          	sw	a4,8(a5)
   1088c:	00d787b3          	add	a5,a5,a3
   10890:	00b7b023          	sd	a1,0(a5)
   10894:	00000513          	li	a0,0
   10898:	00008067          	ret
   1089c:	20070793          	addi	a5,a4,512
   108a0:	1ef73c23          	sd	a5,504(a4)
   108a4:	f9dff06f          	j	10840 <__register_exitproc+0xc>
   108a8:	3147a683          	lw	a3,788(a5)
   108ac:	00000513          	li	a0,0
   108b0:	00c6e633          	or	a2,a3,a2
   108b4:	00270693          	addi	a3,a4,2
   108b8:	00369693          	slli	a3,a3,0x3
   108bc:	0017071b          	addiw	a4,a4,1
   108c0:	30c7aa23          	sw	a2,788(a5)
   108c4:	00e7a423          	sw	a4,8(a5)
   108c8:	00d787b3          	add	a5,a5,a3
   108cc:	00b7b023          	sd	a1,0(a5)
   108d0:	00008067          	ret
   108d4:	fff00513          	li	a0,-1
   108d8:	00008067          	ret

00000000000108dc <_exit>:
   108dc:	00000593          	li	a1,0
   108e0:	00000613          	li	a2,0
   108e4:	00000693          	li	a3,0
   108e8:	00000713          	li	a4,0
   108ec:	00000793          	li	a5,0
   108f0:	05d00893          	li	a7,93
   108f4:	00000073          	ecall
   108f8:	00054463          	bltz	a0,10900 <_exit+0x24>
   108fc:	0000006f          	j	108fc <_exit+0x20>
   10900:	ff010113          	addi	sp,sp,-16
   10904:	00813023          	sd	s0,0(sp)
   10908:	00050413          	mv	s0,a0
   1090c:	00113423          	sd	ra,8(sp)
   10910:	4080043b          	negw	s0,s0
   10914:	00c000ef          	jal	ra,10920 <__errno>
   10918:	00852023          	sw	s0,0(a0)
   1091c:	0000006f          	j	1091c <_exit+0x40>

0000000000010920 <__errno>:
   10920:	f581b503          	ld	a0,-168(gp) # 11778 <_impure_ptr>
   10924:	00008067          	ret

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

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	002c                	addi	a1,sp,8
   2:	0000                	unimp
   4:	0002                	c.slli64	zero
   6:	0000                	unimp
   8:	0000                	unimp
   a:	0008                	0x8
   c:	0000                	unimp
   e:	0000                	unimp
  10:	03d0                	addi	a2,sp,452
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0024                	addi	s1,sp,8
	...
  2e:	0000                	unimp
  30:	002c                	addi	a1,sp,8
  32:	0000                	unimp
  34:	0002                	c.slli64	zero
  36:	002e                	c.slli	zero,0xb
  38:	0000                	unimp
  3a:	0008                	0x8
  3c:	0000                	unimp
  3e:	0000                	unimp
  40:	03f4                	addi	a3,sp,460
  42:	0001                	nop
  44:	0000                	unimp
  46:	0000                	unimp
  48:	0100                	addi	s0,sp,128
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	002a                	c.slli	zero,0xa
   2:	0000                	unimp
   4:	0002                	c.slli64	zero
   6:	0000                	unimp
   8:	0000                	unimp
   a:	0108                	addi	a0,sp,128
   c:	0000                	unimp
   e:	0000                	unimp
  10:	03d0                	addi	a2,sp,452
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	03f4                	addi	a3,sp,460
  1a:	0001                	nop
	...
  24:	00000033          	add	zero,zero,zero
  28:	00a1                	addi	ra,ra,8
  2a:	0000                	unimp
  2c:	8001                	c.srli64	s0
  2e:	002a                	c.slli	zero,0xa
  30:	0000                	unimp
  32:	0002                	c.slli64	zero
  34:	0014                	0x14
  36:	0000                	unimp
  38:	0108                	addi	a0,sp,128
  3a:	00000097          	auipc	ra,0x0
  3e:	03f4                	addi	a3,sp,460
  40:	0001                	nop
  42:	0000                	unimp
  44:	0000                	unimp
  46:	04f4                	addi	a3,sp,588
  48:	0001                	nop
  4a:	0000                	unimp
  4c:	0000                	unimp
  4e:	00ad                	addi	ra,ra,11
  50:	0000                	unimp
  52:	00000033          	add	zero,zero,zero
  56:	00a1                	addi	ra,ra,8
  58:	0000                	unimp
  5a:	8001                	c.srli64	s0

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	1101                	addi	sp,sp,-32
   2:	1000                	addi	s0,sp,32
   4:	1106                	slli	sp,sp,0x21
   6:	1201                	addi	tp,tp,-32
   8:	0301                	addi	t1,t1,0
   a:	1b0e                	slli	s6,s6,0x23
   c:	250e                	fld	fa0,192(sp)
   e:	130e                	slli	t1,t1,0x23
  10:	0005                	c.nop	1
  12:	0000                	unimp
  14:	1101                	addi	sp,sp,-32
  16:	1000                	addi	s0,sp,32
  18:	1106                	slli	sp,sp,0x21
  1a:	1201                	addi	tp,tp,-32
  1c:	0301                	addi	t1,t1,0
  1e:	1b0e                	slli	s6,s6,0x23
  20:	250e                	fld	fa0,192(sp)
  22:	130e                	slli	t1,t1,0x23
  24:	0005                	c.nop	1
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	00000093          	li	ra,0
   4:	00490003          	lb	zero,4(s2)
   8:	0000                	unimp
   a:	0101                	addi	sp,sp,0
   c:	000d0efb          	0xd0efb
  10:	0101                	addi	sp,sp,0
  12:	0101                	addi	sp,sp,0
  14:	0000                	unimp
  16:	0100                	addi	s0,sp,128
  18:	0000                	unimp
  1a:	2e01                	sext.w	t3,t3
  1c:	2f2e                	fld	ft10,200(sp)
  1e:	2e2e                	fld	ft8,200(sp)
  20:	2f2e2e2f          	0x2f2e2e2f
  24:	2e2e                	fld	ft8,200(sp)
  26:	7369722f          	0x7369722f
  2a:	672d7663          	bgeu	s10,s2,696 <register_fini-0xfa1a>
  2e:	6c2f6363          	bltu	t5,sp,6f4 <register_fini-0xf9bc>
  32:	6269                	lui	tp,0x1a
  34:	2f636367          	0x2f636367
  38:	666e6f63          	bltu	t3,t1,6b6 <register_fini-0xf9fa>
  3c:	6769                	lui	a4,0x1a
  3e:	7369722f          	0x7369722f
  42:	00007663          	bgeu	zero,zero,4e <register_fini-0x10062>
  46:	756d                	lui	a0,0xffffb
  48:	646c                	ld	a1,200(s0)
  4a:	3369                	addiw	t1,t1,-6
  4c:	532e                	lw	t1,232(sp)
  4e:	0100                	addi	s0,sp,128
  50:	0000                	unimp
  52:	0000                	unimp
  54:	0209                	addi	tp,tp,2
  56:	03d0                	addi	a2,sp,452
  58:	0001                	nop
  5a:	0000                	unimp
  5c:	0000                	unimp
  5e:	03012403          	lw	s0,48(sp)
  62:	0901                	addi	s2,s2,0
  64:	0004                	0x4
  66:	0301                	addi	t1,t1,0
  68:	0902                	c.slli64	s2
  6a:	0004                	0x4
  6c:	0301                	addi	t1,t1,0
  6e:	0901                	addi	s2,s2,0
  70:	0004                	0x4
  72:	0301                	addi	t1,t1,0
  74:	0901                	addi	s2,s2,0
  76:	0004                	0x4
  78:	0301                	addi	t1,t1,0
  7a:	0902                	c.slli64	s2
  7c:	0004                	0x4
  7e:	0301                	addi	t1,t1,0
  80:	0901                	addi	s2,s2,0
  82:	0004                	0x4
  84:	0301                	addi	t1,t1,0
  86:	0901                	addi	s2,s2,0
  88:	0004                	0x4
  8a:	0301                	addi	t1,t1,0
  8c:	0901                	addi	s2,s2,0
  8e:	0004                	0x4
  90:	0901                	addi	s2,s2,0
  92:	0004                	0x4
  94:	0100                	addi	s0,sp,128
  96:	da01                	beqz	a2,ffffffffffffffa6 <__global_pointer$+0xfffffffffffee786>
  98:	0001                	nop
  9a:	0300                	addi	s0,sp,384
  9c:	4600                	lw	s0,8(a2)
  9e:	0000                	unimp
  a0:	0100                	addi	s0,sp,128
  a2:	fb01                	bnez	a4,ffffffffffffffb2 <__global_pointer$+0xfffffffffffee792>
  a4:	0d0e                	slli	s10,s10,0x3
  a6:	0100                	addi	s0,sp,128
  a8:	0101                	addi	sp,sp,0
  aa:	0001                	nop
  ac:	0000                	unimp
  ae:	0001                	nop
  b0:	0100                	addi	s0,sp,128
  b2:	2e2e                	fld	ft8,200(sp)
  b4:	2f2e2e2f          	0x2f2e2e2f
  b8:	2e2e                	fld	ft8,200(sp)
  ba:	2f2e2e2f          	0x2f2e2e2f
  be:	6972                	ld	s2,280(sp)
  c0:	2d766373          	csrrsi	t1,0x2d7,12
  c4:	2f636367          	0x2f636367
  c8:	696c                	ld	a1,208(a0)
  ca:	6762                	ld	a4,24(sp)
  cc:	632f6363          	bltu	t5,s2,6f2 <register_fini-0xf9be>
  d0:	69666e6f          	jal	t3,66766 <__global_pointer$+0x54f46>
  d4:	69722f67          	0x69722f67
  d8:	00766373          	csrrsi	t1,0x7,12
  dc:	6400                	ld	s0,8(s0)
  de:	7669                	lui	a2,0xffffa
  e0:	532e                	lw	t1,232(sp)
  e2:	0100                	addi	s0,sp,128
  e4:	0000                	unimp
  e6:	0000                	unimp
  e8:	0209                	addi	tp,tp,2
  ea:	03f4                	addi	a3,sp,460
  ec:	0001                	nop
  ee:	0000                	unimp
  f0:	0000                	unimp
  f2:	03012703          	lw	a4,48(sp)
  f6:	0901                	addi	s2,s2,0
  f8:	0004                	0x4
  fa:	0301                	addi	t1,t1,0
  fc:	0901                	addi	s2,s2,0
  fe:	0004                	0x4
 100:	0301                	addi	t1,t1,0
 102:	0901                	addi	s2,s2,0
 104:	0004                	0x4
 106:	0301                	addi	t1,t1,0
 108:	0901                	addi	s2,s2,0
 10a:	0004                	0x4
 10c:	0301                	addi	t1,t1,0
 10e:	0901                	addi	s2,s2,0
 110:	0004                	0x4
 112:	0301                	addi	t1,t1,0
 114:	0905                	addi	s2,s2,1
 116:	0004                	0x4
 118:	0301                	addi	t1,t1,0
 11a:	0901                	addi	s2,s2,0
 11c:	0004                	0x4
 11e:	0301                	addi	t1,t1,0
 120:	0901                	addi	s2,s2,0
 122:	0004                	0x4
 124:	0301                	addi	t1,t1,0
 126:	0901                	addi	s2,s2,0
 128:	0004                	0x4
 12a:	0301                	addi	t1,t1,0
 12c:	0901                	addi	s2,s2,0
 12e:	0004                	0x4
 130:	0301                	addi	t1,t1,0
 132:	0901                	addi	s2,s2,0
 134:	0004                	0x4
 136:	0301                	addi	t1,t1,0
 138:	0901                	addi	s2,s2,0
 13a:	0004                	0x4
 13c:	0301                	addi	t1,t1,0
 13e:	0901                	addi	s2,s2,0
 140:	0004                	0x4
 142:	0301                	addi	t1,t1,0
 144:	00040907          	0x40907
 148:	0301                	addi	t1,t1,0
 14a:	0901                	addi	s2,s2,0
 14c:	0004                	0x4
 14e:	0301                	addi	t1,t1,0
 150:	0904                	addi	s1,sp,144
 152:	0004                	0x4
 154:	0301                	addi	t1,t1,0
 156:	0901                	addi	s2,s2,0
 158:	0004                	0x4
 15a:	0301                	addi	t1,t1,0
 15c:	0904                	addi	s1,sp,144
 15e:	0004                	0x4
 160:	0301                	addi	t1,t1,0
 162:	0901                	addi	s2,s2,0
 164:	0004                	0x4
 166:	0301                	addi	t1,t1,0
 168:	0901                	addi	s2,s2,0
 16a:	0004                	0x4
 16c:	0301                	addi	t1,t1,0
 16e:	0901                	addi	s2,s2,0
 170:	0004                	0x4
 172:	0301                	addi	t1,t1,0
 174:	0901                	addi	s2,s2,0
 176:	0004                	0x4
 178:	0301                	addi	t1,t1,0
 17a:	0901                	addi	s2,s2,0
 17c:	0004                	0x4
 17e:	0301                	addi	t1,t1,0
 180:	0902                	c.slli64	s2
 182:	0004                	0x4
 184:	0301                	addi	t1,t1,0
 186:	0901                	addi	s2,s2,0
 188:	0004                	0x4
 18a:	0301                	addi	t1,t1,0
 18c:	0901                	addi	s2,s2,0
 18e:	0004                	0x4
 190:	0301                	addi	t1,t1,0
 192:	0901                	addi	s2,s2,0
 194:	0004                	0x4
 196:	0301                	addi	t1,t1,0
 198:	0902                	c.slli64	s2
 19a:	0004                	0x4
 19c:	0301                	addi	t1,t1,0
 19e:	0902                	c.slli64	s2
 1a0:	0004                	0x4
 1a2:	0301                	addi	t1,t1,0
 1a4:	0901                	addi	s2,s2,0
 1a6:	0004                	0x4
 1a8:	0301                	addi	t1,t1,0
 1aa:	0901                	addi	s2,s2,0
 1ac:	0004                	0x4
 1ae:	0301                	addi	t1,t1,0
 1b0:	0902                	c.slli64	s2
 1b2:	0004                	0x4
 1b4:	0301                	addi	t1,t1,0
 1b6:	0901                	addi	s2,s2,0
 1b8:	0004                	0x4
 1ba:	0301                	addi	t1,t1,0
 1bc:	0901                	addi	s2,s2,0
 1be:	0004                	0x4
 1c0:	0301                	addi	t1,t1,0
 1c2:	0902                	c.slli64	s2
 1c4:	0004                	0x4
 1c6:	0301                	addi	t1,t1,0
 1c8:	0905                	addi	s2,s2,1
 1ca:	0004                	0x4
 1cc:	0301                	addi	t1,t1,0
 1ce:	0901                	addi	s2,s2,0
 1d0:	0004                	0x4
 1d2:	0301                	addi	t1,t1,0
 1d4:	0901                	addi	s2,s2,0
 1d6:	0004                	0x4
 1d8:	0301                	addi	t1,t1,0
 1da:	0901                	addi	s2,s2,0
 1dc:	0004                	0x4
 1de:	0301                	addi	t1,t1,0
 1e0:	0905                	addi	s2,s2,1
 1e2:	0004                	0x4
 1e4:	0301                	addi	t1,t1,0
 1e6:	0901                	addi	s2,s2,0
 1e8:	0004                	0x4
 1ea:	0301                	addi	t1,t1,0
 1ec:	0901                	addi	s2,s2,0
 1ee:	0004                	0x4
 1f0:	0301                	addi	t1,t1,0
 1f2:	0901                	addi	s2,s2,0
 1f4:	0004                	0x4
 1f6:	0301                	addi	t1,t1,0
 1f8:	0902                	c.slli64	s2
 1fa:	0004                	0x4
 1fc:	0301                	addi	t1,t1,0
 1fe:	0902                	c.slli64	s2
 200:	0004                	0x4
 202:	0301                	addi	t1,t1,0
 204:	0901                	addi	s2,s2,0
 206:	0004                	0x4
 208:	0301                	addi	t1,t1,0
 20a:	0901                	addi	s2,s2,0
 20c:	0004                	0x4
 20e:	0301                	addi	t1,t1,0
 210:	0901                	addi	s2,s2,0
 212:	0004                	0x4
 214:	0301                	addi	t1,t1,0
 216:	0904                	addi	s1,sp,144
 218:	0004                	0x4
 21a:	0301                	addi	t1,t1,0
 21c:	0901                	addi	s2,s2,0
 21e:	0004                	0x4
 220:	0301                	addi	t1,t1,0
 222:	0901                	addi	s2,s2,0
 224:	0004                	0x4
 226:	0301                	addi	t1,t1,0
 228:	0902                	c.slli64	s2
 22a:	0004                	0x4
 22c:	0301                	addi	t1,t1,0
 22e:	0901                	addi	s2,s2,0
 230:	0004                	0x4
 232:	0301                	addi	t1,t1,0
 234:	0901                	addi	s2,s2,0
 236:	0004                	0x4
 238:	0301                	addi	t1,t1,0
 23a:	0902                	c.slli64	s2
 23c:	0004                	0x4
 23e:	0301                	addi	t1,t1,0
 240:	0901                	addi	s2,s2,0
 242:	0004                	0x4
 244:	0301                	addi	t1,t1,0
 246:	0902                	c.slli64	s2
 248:	0004                	0x4
 24a:	0301                	addi	t1,t1,0
 24c:	0901                	addi	s2,s2,0
 24e:	0004                	0x4
 250:	0301                	addi	t1,t1,0
 252:	0901                	addi	s2,s2,0
 254:	0004                	0x4
 256:	0301                	addi	t1,t1,0
 258:	0901                	addi	s2,s2,0
 25a:	0004                	0x4
 25c:	0301                	addi	t1,t1,0
 25e:	0906                	slli	s2,s2,0x1
 260:	0004                	0x4
 262:	0301                	addi	t1,t1,0
 264:	0901                	addi	s2,s2,0
 266:	0004                	0x4
 268:	0301                	addi	t1,t1,0
 26a:	0901                	addi	s2,s2,0
 26c:	0004                	0x4
 26e:	0901                	addi	s2,s2,0
 270:	0004                	0x4
 272:	0100                	addi	s0,sp,128
 274:	01              	地址 0x0000000000000274 越界。


Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	2e2e                	fld	ft8,200(sp)
   2:	2f2e2e2f          	0x2f2e2e2f
   6:	2e2e                	fld	ft8,200(sp)
   8:	2f2e2e2f          	0x2f2e2e2f
   c:	6972                	ld	s2,280(sp)
   e:	2d766373          	csrrsi	t1,0x2d7,12
  12:	2f636367          	0x2f636367
  16:	696c                	ld	a1,208(a0)
  18:	6762                	ld	a4,24(sp)
  1a:	632f6363          	bltu	t5,s2,640 <register_fini-0xfa70>
  1e:	69666e6f          	jal	t3,666b4 <__global_pointer$+0x54e94>
  22:	69722f67          	0x69722f67
  26:	2f766373          	csrrsi	t1,0x2f7,12
  2a:	756d                	lui	a0,0xffffb
  2c:	646c                	ld	a1,200(s0)
  2e:	3369                	addiw	t1,t1,-6
  30:	532e                	lw	t1,232(sp)
  32:	2f00                	fld	fs0,24(a4)
  34:	6f68                	ld	a0,216(a4)
  36:	656d                	lui	a0,0x1b
  38:	6961722f          	0x6961722f
  3c:	736e                	ld	t1,248(sp)
  3e:	6168                	ld	a0,192(a0)
  40:	6f732f77          	0x6f732f77
  44:	7275                	lui	tp,0xffffd
  46:	632d6563          	bltu	s10,s2,670 <register_fini-0xfa40>
  4a:	2f65646f          	jal	s0,56340 <__global_pointer$+0x44b20>
  4e:	6972                	ld	s2,280(sp)
  50:	2d766373          	csrrsi	t1,0x2d7,12
  54:	2d756e67          	0x2d756e67
  58:	6f74                	ld	a3,216(a4)
  5a:	68636c6f          	jal	s8,366e0 <__global_pointer$+0x24ec0>
  5e:	6961                	lui	s2,0x18
  60:	2f6e                	fld	ft10,216(sp)
  62:	7672                	ld	a2,312(sp)
  64:	3436                	fld	fs0,360(sp)
  66:	2d69                	addiw	s10,s10,26
  68:	7562                	ld	a0,56(sp)
  6a:	6c69                	lui	s8,0x1a
  6c:	2f64                	fld	fs1,216(a4)
  6e:	7562                	ld	a0,56(sp)
  70:	6c69                	lui	s8,0x1a
  72:	2d64                	fld	fs1,216(a0)
  74:	2d636367          	0x2d636367
  78:	656e                	ld	a0,216(sp)
  7a:	62696c77          	0x62696c77
  7e:	732d                	lui	t1,0xfffeb
  80:	6174                	ld	a3,192(a0)
  82:	2f326567          	0x2f326567
  86:	6972                	ld	s2,280(sp)
  88:	36766373          	csrrsi	t1,0x367,12
  8c:	2d34                	fld	fa3,88(a0)
  8e:	6e75                	lui	t3,0x1d
  90:	776f6e6b          	0x776f6e6b
  94:	2d6e                	fld	fs10,216(sp)
  96:	6c65                	lui	s8,0x19
  98:	2f66                	fld	ft10,88(sp)
  9a:	696c                	ld	a1,208(a0)
  9c:	6762                	ld	a4,24(sp)
  9e:	47006363          	bltu	zero,a6,504 <register_fini-0xfbac>
  a2:	554e                	lw	a0,240(sp)
  a4:	4120                	lw	s0,64(a0)
  a6:	2e322053          	0x2e322053
  aa:	2e003433          	0x2e003433
  ae:	2f2e                	fld	ft10,200(sp)
  b0:	2e2e                	fld	ft8,200(sp)
  b2:	2f2e2e2f          	0x2f2e2e2f
  b6:	2e2e                	fld	ft8,200(sp)
  b8:	7369722f          	0x7369722f
  bc:	672d7663          	bgeu	s10,s2,728 <register_fini-0xf988>
  c0:	6c2f6363          	bltu	t5,sp,786 <register_fini-0xf92a>
  c4:	6269                	lui	tp,0x1a
  c6:	2f636367          	0x2f636367
  ca:	666e6f63          	bltu	t3,t1,748 <register_fini-0xf968>
  ce:	6769                	lui	a4,0x1a
  d0:	7369722f          	0x7369722f
  d4:	642f7663          	bgeu	t5,sp,720 <register_fini-0xf990>
  d8:	7669                	lui	a2,0xffffa
  da:	532e                	lw	t1,232(sp)
	...


helloworld.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	58c50513          	addi	a0,a0,1420 # 1058c <__libc_fini_array>
   100c0:	5280006f          	j	105e8 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00002197          	auipc	gp,0x2
   100cc:	e5818193          	addi	gp,gp,-424 # 11f20 <__global_pointer$>
   100d0:	f6018513          	addi	a0,gp,-160 # 11e80 <completed.5525>
   100d4:	f9818613          	addi	a2,gp,-104 # 11eb8 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	2a8000ef          	jal	ra,10388 <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	50450513          	addi	a0,a0,1284 # 105e8 <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	49c50513          	addi	a0,a0,1180 # 1058c <__libc_fini_array>
   100f8:	4f0000ef          	jal	ra,105e8 <atexit>
   100fc:	1f0000ef          	jal	ra,102ec <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	074000ef          	jal	ra,10180 <main>
   10110:	1ac0006f          	j	102bc <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	f601c703          	lbu	a4,-160(gp) # 11e80 <completed.5525>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00011537          	lui	a0,0x11
   10138:	70050513          	addi	a0,a0,1792 # 11700 <__FRAME_END__>
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	f6f18023          	sb	a5,-160(gp) # 11e80 <completed.5525>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00011537          	lui	a0,0x11
   1016c:	f6818593          	addi	a1,gp,-152 # 11e88 <object.5530>
   10170:	70050513          	addi	a0,a0,1792 # 11700 <__FRAME_END__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <main>:
   10180:	ff010113          	addi	sp,sp,-16
   10184:	00113423          	sd	ra,8(sp)
   10188:	00813023          	sd	s0,0(sp)
   1018c:	01010413          	addi	s0,sp,16
   10190:	000107b7          	lui	a5,0x10
   10194:	6f078513          	addi	a0,a5,1776 # 106f0 <__errno+0x8>
   10198:	04c000ef          	jal	ra,101e4 <print_s>
   1019c:	09c000ef          	jal	ra,10238 <exit_proc>
   101a0:	00000793          	li	a5,0
   101a4:	00078513          	mv	a0,a5
   101a8:	00813083          	ld	ra,8(sp)
   101ac:	00013403          	ld	s0,0(sp)
   101b0:	01010113          	addi	sp,sp,16
   101b4:	00008067          	ret

00000000000101b8 <print_d>:
   101b8:	fe010113          	addi	sp,sp,-32
   101bc:	00813c23          	sd	s0,24(sp)
   101c0:	02010413          	addi	s0,sp,32
   101c4:	00050793          	mv	a5,a0
   101c8:	fef42623          	sw	a5,-20(s0)
   101cc:	00100893          	li	a7,1
   101d0:	00000073          	ecall
   101d4:	00000013          	nop
   101d8:	01813403          	ld	s0,24(sp)
   101dc:	02010113          	addi	sp,sp,32
   101e0:	00008067          	ret

00000000000101e4 <print_s>:
   101e4:	fe010113          	addi	sp,sp,-32
   101e8:	00813c23          	sd	s0,24(sp)
   101ec:	02010413          	addi	s0,sp,32
   101f0:	fea43423          	sd	a0,-24(s0)
   101f4:	00300893          	li	a7,3
   101f8:	00000073          	ecall
   101fc:	00000013          	nop
   10200:	01813403          	ld	s0,24(sp)
   10204:	02010113          	addi	sp,sp,32
   10208:	00008067          	ret

000000000001020c <print_c>:
   1020c:	fe010113          	addi	sp,sp,-32
   10210:	00813c23          	sd	s0,24(sp)
   10214:	02010413          	addi	s0,sp,32
   10218:	00050793          	mv	a5,a0
   1021c:	fef407a3          	sb	a5,-17(s0)
   10220:	00200893          	li	a7,2
   10224:	00000073          	ecall
   10228:	00000013          	nop
   1022c:	01813403          	ld	s0,24(sp)
   10230:	02010113          	addi	sp,sp,32
   10234:	00008067          	ret

0000000000010238 <exit_proc>:
   10238:	ff010113          	addi	sp,sp,-16
   1023c:	00813423          	sd	s0,8(sp)
   10240:	01010413          	addi	s0,sp,16
   10244:	00000893          	li	a7,0
   10248:	00000073          	ecall
   1024c:	00000013          	nop
   10250:	00813403          	ld	s0,8(sp)
   10254:	01010113          	addi	sp,sp,16
   10258:	00008067          	ret

000000000001025c <read_char>:
   1025c:	fe010113          	addi	sp,sp,-32
   10260:	00813c23          	sd	s0,24(sp)
   10264:	02010413          	addi	s0,sp,32
   10268:	00500893          	li	a7,5
   1026c:	00000073          	ecall
   10270:	00050793          	mv	a5,a0
   10274:	fef407a3          	sb	a5,-17(s0)
   10278:	fef44783          	lbu	a5,-17(s0)
   1027c:	00078513          	mv	a0,a5
   10280:	01813403          	ld	s0,24(sp)
   10284:	02010113          	addi	sp,sp,32
   10288:	00008067          	ret

000000000001028c <read_num>:
   1028c:	fe010113          	addi	sp,sp,-32
   10290:	00813c23          	sd	s0,24(sp)
   10294:	02010413          	addi	s0,sp,32
   10298:	00400893          	li	a7,4
   1029c:	00000073          	ecall
   102a0:	00050793          	mv	a5,a0
   102a4:	fef43423          	sd	a5,-24(s0)
   102a8:	fe843783          	ld	a5,-24(s0)
   102ac:	00078513          	mv	a0,a5
   102b0:	01813403          	ld	s0,24(sp)
   102b4:	02010113          	addi	sp,sp,32
   102b8:	00008067          	ret

00000000000102bc <exit>:
   102bc:	ff010113          	addi	sp,sp,-16
   102c0:	00000593          	li	a1,0
   102c4:	00813023          	sd	s0,0(sp)
   102c8:	00113423          	sd	ra,8(sp)
   102cc:	00050413          	mv	s0,a0
   102d0:	194000ef          	jal	ra,10464 <__call_exitprocs>
   102d4:	f481b503          	ld	a0,-184(gp) # 11e68 <_global_impure_ptr>
   102d8:	05853783          	ld	a5,88(a0)
   102dc:	00078463          	beqz	a5,102e4 <exit+0x28>
   102e0:	000780e7          	jalr	a5
   102e4:	00040513          	mv	a0,s0
   102e8:	3bc000ef          	jal	ra,106a4 <_exit>

00000000000102ec <__libc_init_array>:
   102ec:	fe010113          	addi	sp,sp,-32
   102f0:	00813823          	sd	s0,16(sp)
   102f4:	01213023          	sd	s2,0(sp)
   102f8:	00011437          	lui	s0,0x11
   102fc:	00011937          	lui	s2,0x11
   10300:	70440793          	addi	a5,s0,1796 # 11704 <__preinit_array_end>
   10304:	70490913          	addi	s2,s2,1796 # 11704 <__preinit_array_end>
   10308:	40f90933          	sub	s2,s2,a5
   1030c:	00113c23          	sd	ra,24(sp)
   10310:	00913423          	sd	s1,8(sp)
   10314:	40395913          	srai	s2,s2,0x3
   10318:	02090063          	beqz	s2,10338 <__libc_init_array+0x4c>
   1031c:	70440413          	addi	s0,s0,1796
   10320:	00000493          	li	s1,0
   10324:	00043783          	ld	a5,0(s0)
   10328:	00148493          	addi	s1,s1,1
   1032c:	00840413          	addi	s0,s0,8
   10330:	000780e7          	jalr	a5
   10334:	fe9918e3          	bne	s2,s1,10324 <__libc_init_array+0x38>
   10338:	00011437          	lui	s0,0x11
   1033c:	00011937          	lui	s2,0x11
   10340:	70840793          	addi	a5,s0,1800 # 11708 <__init_array_start>
   10344:	71890913          	addi	s2,s2,1816 # 11718 <__do_global_dtors_aux_fini_array_entry>
   10348:	40f90933          	sub	s2,s2,a5
   1034c:	40395913          	srai	s2,s2,0x3
   10350:	02090063          	beqz	s2,10370 <__libc_init_array+0x84>
   10354:	70840413          	addi	s0,s0,1800
   10358:	00000493          	li	s1,0
   1035c:	00043783          	ld	a5,0(s0)
   10360:	00148493          	addi	s1,s1,1
   10364:	00840413          	addi	s0,s0,8
   10368:	000780e7          	jalr	a5
   1036c:	fe9918e3          	bne	s2,s1,1035c <__libc_init_array+0x70>
   10370:	01813083          	ld	ra,24(sp)
   10374:	01013403          	ld	s0,16(sp)
   10378:	00813483          	ld	s1,8(sp)
   1037c:	00013903          	ld	s2,0(sp)
   10380:	02010113          	addi	sp,sp,32
   10384:	00008067          	ret

0000000000010388 <memset>:
   10388:	00f00313          	li	t1,15
   1038c:	00050713          	mv	a4,a0
   10390:	02c37a63          	bgeu	t1,a2,103c4 <memset+0x3c>
   10394:	00f77793          	andi	a5,a4,15
   10398:	0a079063          	bnez	a5,10438 <memset+0xb0>
   1039c:	06059e63          	bnez	a1,10418 <memset+0x90>
   103a0:	ff067693          	andi	a3,a2,-16
   103a4:	00f67613          	andi	a2,a2,15
   103a8:	00e686b3          	add	a3,a3,a4
   103ac:	00b73023          	sd	a1,0(a4)
   103b0:	00b73423          	sd	a1,8(a4)
   103b4:	01070713          	addi	a4,a4,16
   103b8:	fed76ae3          	bltu	a4,a3,103ac <memset+0x24>
   103bc:	00061463          	bnez	a2,103c4 <memset+0x3c>
   103c0:	00008067          	ret
   103c4:	40c306b3          	sub	a3,t1,a2
   103c8:	00269693          	slli	a3,a3,0x2
   103cc:	00000297          	auipc	t0,0x0
   103d0:	005686b3          	add	a3,a3,t0
   103d4:	00c68067          	jr	12(a3)
   103d8:	00b70723          	sb	a1,14(a4)
   103dc:	00b706a3          	sb	a1,13(a4)
   103e0:	00b70623          	sb	a1,12(a4)
   103e4:	00b705a3          	sb	a1,11(a4)
   103e8:	00b70523          	sb	a1,10(a4)
   103ec:	00b704a3          	sb	a1,9(a4)
   103f0:	00b70423          	sb	a1,8(a4)
   103f4:	00b703a3          	sb	a1,7(a4)
   103f8:	00b70323          	sb	a1,6(a4)
   103fc:	00b702a3          	sb	a1,5(a4)
   10400:	00b70223          	sb	a1,4(a4)
   10404:	00b701a3          	sb	a1,3(a4)
   10408:	00b70123          	sb	a1,2(a4)
   1040c:	00b700a3          	sb	a1,1(a4)
   10410:	00b70023          	sb	a1,0(a4)
   10414:	00008067          	ret
   10418:	0ff5f593          	andi	a1,a1,255
   1041c:	00859693          	slli	a3,a1,0x8
   10420:	00d5e5b3          	or	a1,a1,a3
   10424:	01059693          	slli	a3,a1,0x10
   10428:	00d5e5b3          	or	a1,a1,a3
   1042c:	02059693          	slli	a3,a1,0x20
   10430:	00d5e5b3          	or	a1,a1,a3
   10434:	f6dff06f          	j	103a0 <memset+0x18>
   10438:	00279693          	slli	a3,a5,0x2
   1043c:	00000297          	auipc	t0,0x0
   10440:	005686b3          	add	a3,a3,t0
   10444:	00008293          	mv	t0,ra
   10448:	f98680e7          	jalr	-104(a3)
   1044c:	00028093          	mv	ra,t0
   10450:	ff078793          	addi	a5,a5,-16
   10454:	40f70733          	sub	a4,a4,a5
   10458:	00f60633          	add	a2,a2,a5
   1045c:	f6c374e3          	bgeu	t1,a2,103c4 <memset+0x3c>
   10460:	f3dff06f          	j	1039c <memset+0x14>

0000000000010464 <__call_exitprocs>:
   10464:	fb010113          	addi	sp,sp,-80
   10468:	03413023          	sd	s4,32(sp)
   1046c:	f481ba03          	ld	s4,-184(gp) # 11e68 <_global_impure_ptr>
   10470:	03213823          	sd	s2,48(sp)
   10474:	04113423          	sd	ra,72(sp)
   10478:	1f8a3903          	ld	s2,504(s4)
   1047c:	04813023          	sd	s0,64(sp)
   10480:	02913c23          	sd	s1,56(sp)
   10484:	03313423          	sd	s3,40(sp)
   10488:	01513c23          	sd	s5,24(sp)
   1048c:	01613823          	sd	s6,16(sp)
   10490:	01713423          	sd	s7,8(sp)
   10494:	01813023          	sd	s8,0(sp)
   10498:	04090063          	beqz	s2,104d8 <__call_exitprocs+0x74>
   1049c:	00050b13          	mv	s6,a0
   104a0:	00058b93          	mv	s7,a1
   104a4:	00100a93          	li	s5,1
   104a8:	fff00993          	li	s3,-1
   104ac:	00892483          	lw	s1,8(s2)
   104b0:	fff4841b          	addiw	s0,s1,-1
   104b4:	02044263          	bltz	s0,104d8 <__call_exitprocs+0x74>
   104b8:	00349493          	slli	s1,s1,0x3
   104bc:	009904b3          	add	s1,s2,s1
   104c0:	040b8463          	beqz	s7,10508 <__call_exitprocs+0xa4>
   104c4:	2084b783          	ld	a5,520(s1)
   104c8:	05778063          	beq	a5,s7,10508 <__call_exitprocs+0xa4>
   104cc:	fff4041b          	addiw	s0,s0,-1
   104d0:	ff848493          	addi	s1,s1,-8
   104d4:	ff3416e3          	bne	s0,s3,104c0 <__call_exitprocs+0x5c>
   104d8:	04813083          	ld	ra,72(sp)
   104dc:	04013403          	ld	s0,64(sp)
   104e0:	03813483          	ld	s1,56(sp)
   104e4:	03013903          	ld	s2,48(sp)
   104e8:	02813983          	ld	s3,40(sp)
   104ec:	02013a03          	ld	s4,32(sp)
   104f0:	01813a83          	ld	s5,24(sp)
   104f4:	01013b03          	ld	s6,16(sp)
   104f8:	00813b83          	ld	s7,8(sp)
   104fc:	00013c03          	ld	s8,0(sp)
   10500:	05010113          	addi	sp,sp,80
   10504:	00008067          	ret
   10508:	00892783          	lw	a5,8(s2)
   1050c:	0084b703          	ld	a4,8(s1)
   10510:	fff7879b          	addiw	a5,a5,-1
   10514:	06878263          	beq	a5,s0,10578 <__call_exitprocs+0x114>
   10518:	0004b423          	sd	zero,8(s1)
   1051c:	fa0708e3          	beqz	a4,104cc <__call_exitprocs+0x68>
   10520:	31092783          	lw	a5,784(s2)
   10524:	008a96bb          	sllw	a3,s5,s0
   10528:	00892c03          	lw	s8,8(s2)
   1052c:	00d7f7b3          	and	a5,a5,a3
   10530:	0007879b          	sext.w	a5,a5
   10534:	02079263          	bnez	a5,10558 <__call_exitprocs+0xf4>
   10538:	000700e7          	jalr	a4
   1053c:	00892703          	lw	a4,8(s2)
   10540:	1f8a3783          	ld	a5,504(s4)
   10544:	01871463          	bne	a4,s8,1054c <__call_exitprocs+0xe8>
   10548:	f8f902e3          	beq	s2,a5,104cc <__call_exitprocs+0x68>
   1054c:	f80786e3          	beqz	a5,104d8 <__call_exitprocs+0x74>
   10550:	00078913          	mv	s2,a5
   10554:	f59ff06f          	j	104ac <__call_exitprocs+0x48>
   10558:	31492783          	lw	a5,788(s2)
   1055c:	1084b583          	ld	a1,264(s1)
   10560:	00d7f7b3          	and	a5,a5,a3
   10564:	0007879b          	sext.w	a5,a5
   10568:	00079c63          	bnez	a5,10580 <__call_exitprocs+0x11c>
   1056c:	000b0513          	mv	a0,s6
   10570:	000700e7          	jalr	a4
   10574:	fc9ff06f          	j	1053c <__call_exitprocs+0xd8>
   10578:	00892423          	sw	s0,8(s2)
   1057c:	fa1ff06f          	j	1051c <__call_exitprocs+0xb8>
   10580:	00058513          	mv	a0,a1
   10584:	000700e7          	jalr	a4
   10588:	fb5ff06f          	j	1053c <__call_exitprocs+0xd8>

000000000001058c <__libc_fini_array>:
   1058c:	fe010113          	addi	sp,sp,-32
   10590:	00813823          	sd	s0,16(sp)
   10594:	000117b7          	lui	a5,0x11
   10598:	00011437          	lui	s0,0x11
   1059c:	71840413          	addi	s0,s0,1816 # 11718 <__do_global_dtors_aux_fini_array_entry>
   105a0:	72078793          	addi	a5,a5,1824 # 11720 <impure_data>
   105a4:	408787b3          	sub	a5,a5,s0
   105a8:	00913423          	sd	s1,8(sp)
   105ac:	00113c23          	sd	ra,24(sp)
   105b0:	4037d493          	srai	s1,a5,0x3
   105b4:	02048063          	beqz	s1,105d4 <__libc_fini_array+0x48>
   105b8:	ff878793          	addi	a5,a5,-8
   105bc:	00878433          	add	s0,a5,s0
   105c0:	00043783          	ld	a5,0(s0)
   105c4:	fff48493          	addi	s1,s1,-1
   105c8:	ff840413          	addi	s0,s0,-8
   105cc:	000780e7          	jalr	a5
   105d0:	fe0498e3          	bnez	s1,105c0 <__libc_fini_array+0x34>
   105d4:	01813083          	ld	ra,24(sp)
   105d8:	01013403          	ld	s0,16(sp)
   105dc:	00813483          	ld	s1,8(sp)
   105e0:	02010113          	addi	sp,sp,32
   105e4:	00008067          	ret

00000000000105e8 <atexit>:
   105e8:	00050593          	mv	a1,a0
   105ec:	00000693          	li	a3,0
   105f0:	00000613          	li	a2,0
   105f4:	00000513          	li	a0,0
   105f8:	0040006f          	j	105fc <__register_exitproc>

00000000000105fc <__register_exitproc>:
   105fc:	f481b703          	ld	a4,-184(gp) # 11e68 <_global_impure_ptr>
   10600:	1f873783          	ld	a5,504(a4)
   10604:	06078063          	beqz	a5,10664 <__register_exitproc+0x68>
   10608:	0087a703          	lw	a4,8(a5)
   1060c:	01f00813          	li	a6,31
   10610:	08e84663          	blt	a6,a4,1069c <__register_exitproc+0xa0>
   10614:	02050863          	beqz	a0,10644 <__register_exitproc+0x48>
   10618:	00371813          	slli	a6,a4,0x3
   1061c:	01078833          	add	a6,a5,a6
   10620:	10c83823          	sd	a2,272(a6)
   10624:	3107a883          	lw	a7,784(a5)
   10628:	00100613          	li	a2,1
   1062c:	00e6163b          	sllw	a2,a2,a4
   10630:	00c8e8b3          	or	a7,a7,a2
   10634:	3117a823          	sw	a7,784(a5)
   10638:	20d83823          	sd	a3,528(a6)
   1063c:	00200693          	li	a3,2
   10640:	02d50863          	beq	a0,a3,10670 <__register_exitproc+0x74>
   10644:	00270693          	addi	a3,a4,2
   10648:	00369693          	slli	a3,a3,0x3
   1064c:	0017071b          	addiw	a4,a4,1
   10650:	00e7a423          	sw	a4,8(a5)
   10654:	00d787b3          	add	a5,a5,a3
   10658:	00b7b023          	sd	a1,0(a5)
   1065c:	00000513          	li	a0,0
   10660:	00008067          	ret
   10664:	20070793          	addi	a5,a4,512
   10668:	1ef73c23          	sd	a5,504(a4)
   1066c:	f9dff06f          	j	10608 <__register_exitproc+0xc>
   10670:	3147a683          	lw	a3,788(a5)
   10674:	00000513          	li	a0,0
   10678:	00c6e633          	or	a2,a3,a2
   1067c:	00270693          	addi	a3,a4,2
   10680:	00369693          	slli	a3,a3,0x3
   10684:	0017071b          	addiw	a4,a4,1
   10688:	30c7aa23          	sw	a2,788(a5)
   1068c:	00e7a423          	sw	a4,8(a5)
   10690:	00d787b3          	add	a5,a5,a3
   10694:	00b7b023          	sd	a1,0(a5)
   10698:	00008067          	ret
   1069c:	fff00513          	li	a0,-1
   106a0:	00008067          	ret

00000000000106a4 <_exit>:
   106a4:	00000593          	li	a1,0
   106a8:	00000613          	li	a2,0
   106ac:	00000693          	li	a3,0
   106b0:	00000713          	li	a4,0
   106b4:	00000793          	li	a5,0
   106b8:	05d00893          	li	a7,93
   106bc:	00000073          	ecall
   106c0:	00054463          	bltz	a0,106c8 <_exit+0x24>
   106c4:	0000006f          	j	106c4 <_exit+0x20>
   106c8:	ff010113          	addi	sp,sp,-16
   106cc:	00813023          	sd	s0,0(sp)
   106d0:	00050413          	mv	s0,a0
   106d4:	00113423          	sd	ra,8(sp)
   106d8:	4080043b          	negw	s0,s0
   106dc:	00c000ef          	jal	ra,106e8 <__errno>
   106e0:	00852023          	sw	s0,0(a0)
   106e4:	0000006f          	j	106e4 <_exit+0x40>

00000000000106e8 <__errno>:
   106e8:	f581b503          	ld	a0,-168(gp) # 11e78 <_impure_ptr>
   106ec:	00008067          	ret

Disassembly of section .rodata:

00000000000106f0 <.rodata>:
   106f0:	6548                	ld	a0,136(a0)
   106f2:	6c6c                	ld	a1,216(s0)
   106f4:	57202c6f          	jal	s8,12c66 <__global_pointer$+0xd46>
   106f8:	646c726f          	jal	tp,d7d3e <__global_pointer$+0xc5e1e>
   106fc:	0a21                	addi	s4,s4,8
	...

Disassembly of section .eh_frame:

0000000000011700 <__FRAME_END__>:
   11700:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011708 <__init_array_start>:
   11708:	00b0                	addi	a2,sp,72
   1170a:	0001                	nop
   1170c:	0000                	unimp
	...

0000000000011710 <__frame_dummy_init_array_entry>:
   11710:	0160                	addi	s0,sp,140
   11712:	0001                	nop
   11714:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011718 <__do_global_dtors_aux_fini_array_entry>:
   11718:	0114                	addi	a3,sp,128
   1171a:	0001                	nop
   1171c:	0000                	unimp
	...

Disassembly of section .data:

0000000000011720 <impure_data>:
	...
   11728:	1c58                	addi	a4,sp,564
   1172a:	0001                	nop
   1172c:	0000                	unimp
   1172e:	0000                	unimp
   11730:	1d08                	addi	a0,sp,688
   11732:	0001                	nop
   11734:	0000                	unimp
   11736:	0000                	unimp
   11738:	1db8                	addi	a4,sp,760
   1173a:	0001                	nop
	...
   11808:	0001                	nop
   1180a:	0000                	unimp
   1180c:	0000                	unimp
   1180e:	0000                	unimp
   11810:	330e                	fld	ft6,224(sp)
   11812:	abcd                	j	11e04 <impure_data+0x6e4>
   11814:	1234                	addi	a3,sp,296
   11816:	e66d                	bnez	a2,11900 <impure_data+0x1e0>
   11818:	deec                	sw	a1,124(a3)
   1181a:	0005                	c.nop	1
   1181c:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011e68 <_global_impure_ptr>:
   11e68:	1720                	addi	s0,sp,936
   11e6a:	0001                	nop
   11e6c:	0000                	unimp
	...

0000000000011e70 <__dso_handle>:
	...

0000000000011e78 <_impure_ptr>:
   11e78:	1720                	addi	s0,sp,936
   11e7a:	0001                	nop
   11e7c:	0000                	unimp
	...

Disassembly of section .bss:

0000000000011e80 <completed.5525>:
	...

0000000000011e88 <object.5530>:
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

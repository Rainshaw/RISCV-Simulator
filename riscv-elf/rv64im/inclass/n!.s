
n!.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	4f850513          	addi	a0,a0,1272 # 104f8 <__libc_fini_array>
   100c0:	4940006f          	j	10554 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00002197          	auipc	gp,0x2
   100cc:	db018193          	addi	gp,gp,-592 # 11e78 <__global_pointer$>
   100d0:	f6018513          	addi	a0,gp,-160 # 11dd8 <result>
   100d4:	fa018613          	addi	a2,gp,-96 # 11e18 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	214000ef          	jal	ra,102f4 <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	47050513          	addi	a0,a0,1136 # 10554 <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	40850513          	addi	a0,a0,1032 # 104f8 <__libc_fini_array>
   100f8:	45c000ef          	jal	ra,10554 <atexit>
   100fc:	15c000ef          	jal	ra,10258 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	0e0000ef          	jal	ra,101ec <main>
   10110:	1180006f          	j	10228 <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	f681c703          	lbu	a4,-152(gp) # 11de0 <completed.5525>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00011537          	lui	a0,0x11
   10138:	65c50513          	addi	a0,a0,1628 # 1165c <__FRAME_END__>
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	f6f18423          	sb	a5,-152(gp) # 11de0 <completed.5525>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00011537          	lui	a0,0x11
   1016c:	f7018593          	addi	a1,gp,-144 # 11de8 <object.5530>
   10170:	65c50513          	addi	a0,a0,1628 # 1165c <__FRAME_END__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <cal_n>:
   10180:	fe010113          	addi	sp,sp,-32
   10184:	00113c23          	sd	ra,24(sp)
   10188:	00813823          	sd	s0,16(sp)
   1018c:	02010413          	addi	s0,sp,32
   10190:	00050793          	mv	a5,a0
   10194:	fef42623          	sw	a5,-20(s0)
   10198:	fec42783          	lw	a5,-20(s0)
   1019c:	0007871b          	sext.w	a4,a5
   101a0:	00100793          	li	a5,1
   101a4:	00f71663          	bne	a4,a5,101b0 <cal_n+0x30>
   101a8:	fec42783          	lw	a5,-20(s0)
   101ac:	02c0006f          	j	101d8 <cal_n+0x58>
   101b0:	fec42783          	lw	a5,-20(s0)
   101b4:	fff7879b          	addiw	a5,a5,-1
   101b8:	0007879b          	sext.w	a5,a5
   101bc:	00078513          	mv	a0,a5
   101c0:	fc1ff0ef          	jal	ra,10180 <cal_n>
   101c4:	00050793          	mv	a5,a0
   101c8:	00078713          	mv	a4,a5
   101cc:	fec42783          	lw	a5,-20(s0)
   101d0:	02e787bb          	mulw	a5,a5,a4
   101d4:	0007879b          	sext.w	a5,a5
   101d8:	00078513          	mv	a0,a5
   101dc:	01813083          	ld	ra,24(sp)
   101e0:	01013403          	ld	s0,16(sp)
   101e4:	02010113          	addi	sp,sp,32
   101e8:	00008067          	ret

00000000000101ec <main>:
   101ec:	ff010113          	addi	sp,sp,-16
   101f0:	00113423          	sd	ra,8(sp)
   101f4:	00813023          	sd	s0,0(sp)
   101f8:	01010413          	addi	s0,sp,16
   101fc:	00a00513          	li	a0,10
   10200:	f81ff0ef          	jal	ra,10180 <cal_n>
   10204:	00050793          	mv	a5,a0
   10208:	00078713          	mv	a4,a5
   1020c:	f6e1a023          	sw	a4,-160(gp) # 11dd8 <result>
   10210:	00000793          	li	a5,0
   10214:	00078513          	mv	a0,a5
   10218:	00813083          	ld	ra,8(sp)
   1021c:	00013403          	ld	s0,0(sp)
   10220:	01010113          	addi	sp,sp,16
   10224:	00008067          	ret

0000000000010228 <exit>:
   10228:	ff010113          	addi	sp,sp,-16
   1022c:	00000593          	li	a1,0
   10230:	00813023          	sd	s0,0(sp)
   10234:	00113423          	sd	ra,8(sp)
   10238:	00050413          	mv	s0,a0
   1023c:	194000ef          	jal	ra,103d0 <__call_exitprocs>
   10240:	f481b503          	ld	a0,-184(gp) # 11dc0 <_global_impure_ptr>
   10244:	05853783          	ld	a5,88(a0)
   10248:	00078463          	beqz	a5,10250 <exit+0x28>
   1024c:	000780e7          	jalr	a5
   10250:	00040513          	mv	a0,s0
   10254:	3bc000ef          	jal	ra,10610 <_exit>

0000000000010258 <__libc_init_array>:
   10258:	fe010113          	addi	sp,sp,-32
   1025c:	00813823          	sd	s0,16(sp)
   10260:	01213023          	sd	s2,0(sp)
   10264:	00011437          	lui	s0,0x11
   10268:	00011937          	lui	s2,0x11
   1026c:	66040793          	addi	a5,s0,1632 # 11660 <__init_array_start>
   10270:	66090913          	addi	s2,s2,1632 # 11660 <__init_array_start>
   10274:	40f90933          	sub	s2,s2,a5
   10278:	00113c23          	sd	ra,24(sp)
   1027c:	00913423          	sd	s1,8(sp)
   10280:	40395913          	srai	s2,s2,0x3
   10284:	02090063          	beqz	s2,102a4 <__libc_init_array+0x4c>
   10288:	66040413          	addi	s0,s0,1632
   1028c:	00000493          	li	s1,0
   10290:	00043783          	ld	a5,0(s0)
   10294:	00148493          	addi	s1,s1,1
   10298:	00840413          	addi	s0,s0,8
   1029c:	000780e7          	jalr	a5
   102a0:	fe9918e3          	bne	s2,s1,10290 <__libc_init_array+0x38>
   102a4:	00011437          	lui	s0,0x11
   102a8:	00011937          	lui	s2,0x11
   102ac:	66040793          	addi	a5,s0,1632 # 11660 <__init_array_start>
   102b0:	67090913          	addi	s2,s2,1648 # 11670 <__do_global_dtors_aux_fini_array_entry>
   102b4:	40f90933          	sub	s2,s2,a5
   102b8:	40395913          	srai	s2,s2,0x3
   102bc:	02090063          	beqz	s2,102dc <__libc_init_array+0x84>
   102c0:	66040413          	addi	s0,s0,1632
   102c4:	00000493          	li	s1,0
   102c8:	00043783          	ld	a5,0(s0)
   102cc:	00148493          	addi	s1,s1,1
   102d0:	00840413          	addi	s0,s0,8
   102d4:	000780e7          	jalr	a5
   102d8:	fe9918e3          	bne	s2,s1,102c8 <__libc_init_array+0x70>
   102dc:	01813083          	ld	ra,24(sp)
   102e0:	01013403          	ld	s0,16(sp)
   102e4:	00813483          	ld	s1,8(sp)
   102e8:	00013903          	ld	s2,0(sp)
   102ec:	02010113          	addi	sp,sp,32
   102f0:	00008067          	ret

00000000000102f4 <memset>:
   102f4:	00f00313          	li	t1,15
   102f8:	00050713          	mv	a4,a0
   102fc:	02c37a63          	bgeu	t1,a2,10330 <memset+0x3c>
   10300:	00f77793          	andi	a5,a4,15
   10304:	0a079063          	bnez	a5,103a4 <memset+0xb0>
   10308:	06059e63          	bnez	a1,10384 <memset+0x90>
   1030c:	ff067693          	andi	a3,a2,-16
   10310:	00f67613          	andi	a2,a2,15
   10314:	00e686b3          	add	a3,a3,a4
   10318:	00b73023          	sd	a1,0(a4)
   1031c:	00b73423          	sd	a1,8(a4)
   10320:	01070713          	addi	a4,a4,16
   10324:	fed76ae3          	bltu	a4,a3,10318 <memset+0x24>
   10328:	00061463          	bnez	a2,10330 <memset+0x3c>
   1032c:	00008067          	ret
   10330:	40c306b3          	sub	a3,t1,a2
   10334:	00269693          	slli	a3,a3,0x2
   10338:	00000297          	auipc	t0,0x0
   1033c:	005686b3          	add	a3,a3,t0
   10340:	00c68067          	jr	12(a3)
   10344:	00b70723          	sb	a1,14(a4)
   10348:	00b706a3          	sb	a1,13(a4)
   1034c:	00b70623          	sb	a1,12(a4)
   10350:	00b705a3          	sb	a1,11(a4)
   10354:	00b70523          	sb	a1,10(a4)
   10358:	00b704a3          	sb	a1,9(a4)
   1035c:	00b70423          	sb	a1,8(a4)
   10360:	00b703a3          	sb	a1,7(a4)
   10364:	00b70323          	sb	a1,6(a4)
   10368:	00b702a3          	sb	a1,5(a4)
   1036c:	00b70223          	sb	a1,4(a4)
   10370:	00b701a3          	sb	a1,3(a4)
   10374:	00b70123          	sb	a1,2(a4)
   10378:	00b700a3          	sb	a1,1(a4)
   1037c:	00b70023          	sb	a1,0(a4)
   10380:	00008067          	ret
   10384:	0ff5f593          	andi	a1,a1,255
   10388:	00859693          	slli	a3,a1,0x8
   1038c:	00d5e5b3          	or	a1,a1,a3
   10390:	01059693          	slli	a3,a1,0x10
   10394:	00d5e5b3          	or	a1,a1,a3
   10398:	02059693          	slli	a3,a1,0x20
   1039c:	00d5e5b3          	or	a1,a1,a3
   103a0:	f6dff06f          	j	1030c <memset+0x18>
   103a4:	00279693          	slli	a3,a5,0x2
   103a8:	00000297          	auipc	t0,0x0
   103ac:	005686b3          	add	a3,a3,t0
   103b0:	00008293          	mv	t0,ra
   103b4:	f98680e7          	jalr	-104(a3)
   103b8:	00028093          	mv	ra,t0
   103bc:	ff078793          	addi	a5,a5,-16
   103c0:	40f70733          	sub	a4,a4,a5
   103c4:	00f60633          	add	a2,a2,a5
   103c8:	f6c374e3          	bgeu	t1,a2,10330 <memset+0x3c>
   103cc:	f3dff06f          	j	10308 <memset+0x14>

00000000000103d0 <__call_exitprocs>:
   103d0:	fb010113          	addi	sp,sp,-80
   103d4:	03413023          	sd	s4,32(sp)
   103d8:	f481ba03          	ld	s4,-184(gp) # 11dc0 <_global_impure_ptr>
   103dc:	03213823          	sd	s2,48(sp)
   103e0:	04113423          	sd	ra,72(sp)
   103e4:	1f8a3903          	ld	s2,504(s4)
   103e8:	04813023          	sd	s0,64(sp)
   103ec:	02913c23          	sd	s1,56(sp)
   103f0:	03313423          	sd	s3,40(sp)
   103f4:	01513c23          	sd	s5,24(sp)
   103f8:	01613823          	sd	s6,16(sp)
   103fc:	01713423          	sd	s7,8(sp)
   10400:	01813023          	sd	s8,0(sp)
   10404:	04090063          	beqz	s2,10444 <__call_exitprocs+0x74>
   10408:	00050b13          	mv	s6,a0
   1040c:	00058b93          	mv	s7,a1
   10410:	00100a93          	li	s5,1
   10414:	fff00993          	li	s3,-1
   10418:	00892483          	lw	s1,8(s2)
   1041c:	fff4841b          	addiw	s0,s1,-1
   10420:	02044263          	bltz	s0,10444 <__call_exitprocs+0x74>
   10424:	00349493          	slli	s1,s1,0x3
   10428:	009904b3          	add	s1,s2,s1
   1042c:	040b8463          	beqz	s7,10474 <__call_exitprocs+0xa4>
   10430:	2084b783          	ld	a5,520(s1)
   10434:	05778063          	beq	a5,s7,10474 <__call_exitprocs+0xa4>
   10438:	fff4041b          	addiw	s0,s0,-1
   1043c:	ff848493          	addi	s1,s1,-8
   10440:	ff3416e3          	bne	s0,s3,1042c <__call_exitprocs+0x5c>
   10444:	04813083          	ld	ra,72(sp)
   10448:	04013403          	ld	s0,64(sp)
   1044c:	03813483          	ld	s1,56(sp)
   10450:	03013903          	ld	s2,48(sp)
   10454:	02813983          	ld	s3,40(sp)
   10458:	02013a03          	ld	s4,32(sp)
   1045c:	01813a83          	ld	s5,24(sp)
   10460:	01013b03          	ld	s6,16(sp)
   10464:	00813b83          	ld	s7,8(sp)
   10468:	00013c03          	ld	s8,0(sp)
   1046c:	05010113          	addi	sp,sp,80
   10470:	00008067          	ret
   10474:	00892783          	lw	a5,8(s2)
   10478:	0084b703          	ld	a4,8(s1)
   1047c:	fff7879b          	addiw	a5,a5,-1
   10480:	06878263          	beq	a5,s0,104e4 <__call_exitprocs+0x114>
   10484:	0004b423          	sd	zero,8(s1)
   10488:	fa0708e3          	beqz	a4,10438 <__call_exitprocs+0x68>
   1048c:	31092783          	lw	a5,784(s2)
   10490:	008a96bb          	sllw	a3,s5,s0
   10494:	00892c03          	lw	s8,8(s2)
   10498:	00d7f7b3          	and	a5,a5,a3
   1049c:	0007879b          	sext.w	a5,a5
   104a0:	02079263          	bnez	a5,104c4 <__call_exitprocs+0xf4>
   104a4:	000700e7          	jalr	a4
   104a8:	00892703          	lw	a4,8(s2)
   104ac:	1f8a3783          	ld	a5,504(s4)
   104b0:	01871463          	bne	a4,s8,104b8 <__call_exitprocs+0xe8>
   104b4:	f8f902e3          	beq	s2,a5,10438 <__call_exitprocs+0x68>
   104b8:	f80786e3          	beqz	a5,10444 <__call_exitprocs+0x74>
   104bc:	00078913          	mv	s2,a5
   104c0:	f59ff06f          	j	10418 <__call_exitprocs+0x48>
   104c4:	31492783          	lw	a5,788(s2)
   104c8:	1084b583          	ld	a1,264(s1)
   104cc:	00d7f7b3          	and	a5,a5,a3
   104d0:	0007879b          	sext.w	a5,a5
   104d4:	00079c63          	bnez	a5,104ec <__call_exitprocs+0x11c>
   104d8:	000b0513          	mv	a0,s6
   104dc:	000700e7          	jalr	a4
   104e0:	fc9ff06f          	j	104a8 <__call_exitprocs+0xd8>
   104e4:	00892423          	sw	s0,8(s2)
   104e8:	fa1ff06f          	j	10488 <__call_exitprocs+0xb8>
   104ec:	00058513          	mv	a0,a1
   104f0:	000700e7          	jalr	a4
   104f4:	fb5ff06f          	j	104a8 <__call_exitprocs+0xd8>

00000000000104f8 <__libc_fini_array>:
   104f8:	fe010113          	addi	sp,sp,-32
   104fc:	00813823          	sd	s0,16(sp)
   10500:	000117b7          	lui	a5,0x11
   10504:	00011437          	lui	s0,0x11
   10508:	67040413          	addi	s0,s0,1648 # 11670 <__do_global_dtors_aux_fini_array_entry>
   1050c:	67878793          	addi	a5,a5,1656 # 11678 <impure_data>
   10510:	408787b3          	sub	a5,a5,s0
   10514:	00913423          	sd	s1,8(sp)
   10518:	00113c23          	sd	ra,24(sp)
   1051c:	4037d493          	srai	s1,a5,0x3
   10520:	02048063          	beqz	s1,10540 <__libc_fini_array+0x48>
   10524:	ff878793          	addi	a5,a5,-8
   10528:	00878433          	add	s0,a5,s0
   1052c:	00043783          	ld	a5,0(s0)
   10530:	fff48493          	addi	s1,s1,-1
   10534:	ff840413          	addi	s0,s0,-8
   10538:	000780e7          	jalr	a5
   1053c:	fe0498e3          	bnez	s1,1052c <__libc_fini_array+0x34>
   10540:	01813083          	ld	ra,24(sp)
   10544:	01013403          	ld	s0,16(sp)
   10548:	00813483          	ld	s1,8(sp)
   1054c:	02010113          	addi	sp,sp,32
   10550:	00008067          	ret

0000000000010554 <atexit>:
   10554:	00050593          	mv	a1,a0
   10558:	00000693          	li	a3,0
   1055c:	00000613          	li	a2,0
   10560:	00000513          	li	a0,0
   10564:	0040006f          	j	10568 <__register_exitproc>

0000000000010568 <__register_exitproc>:
   10568:	f481b703          	ld	a4,-184(gp) # 11dc0 <_global_impure_ptr>
   1056c:	1f873783          	ld	a5,504(a4)
   10570:	06078063          	beqz	a5,105d0 <__register_exitproc+0x68>
   10574:	0087a703          	lw	a4,8(a5)
   10578:	01f00813          	li	a6,31
   1057c:	08e84663          	blt	a6,a4,10608 <__register_exitproc+0xa0>
   10580:	02050863          	beqz	a0,105b0 <__register_exitproc+0x48>
   10584:	00371813          	slli	a6,a4,0x3
   10588:	01078833          	add	a6,a5,a6
   1058c:	10c83823          	sd	a2,272(a6)
   10590:	3107a883          	lw	a7,784(a5)
   10594:	00100613          	li	a2,1
   10598:	00e6163b          	sllw	a2,a2,a4
   1059c:	00c8e8b3          	or	a7,a7,a2
   105a0:	3117a823          	sw	a7,784(a5)
   105a4:	20d83823          	sd	a3,528(a6)
   105a8:	00200693          	li	a3,2
   105ac:	02d50863          	beq	a0,a3,105dc <__register_exitproc+0x74>
   105b0:	00270693          	addi	a3,a4,2
   105b4:	00369693          	slli	a3,a3,0x3
   105b8:	0017071b          	addiw	a4,a4,1
   105bc:	00e7a423          	sw	a4,8(a5)
   105c0:	00d787b3          	add	a5,a5,a3
   105c4:	00b7b023          	sd	a1,0(a5)
   105c8:	00000513          	li	a0,0
   105cc:	00008067          	ret
   105d0:	20070793          	addi	a5,a4,512
   105d4:	1ef73c23          	sd	a5,504(a4)
   105d8:	f9dff06f          	j	10574 <__register_exitproc+0xc>
   105dc:	3147a683          	lw	a3,788(a5)
   105e0:	00000513          	li	a0,0
   105e4:	00c6e633          	or	a2,a3,a2
   105e8:	00270693          	addi	a3,a4,2
   105ec:	00369693          	slli	a3,a3,0x3
   105f0:	0017071b          	addiw	a4,a4,1
   105f4:	30c7aa23          	sw	a2,788(a5)
   105f8:	00e7a423          	sw	a4,8(a5)
   105fc:	00d787b3          	add	a5,a5,a3
   10600:	00b7b023          	sd	a1,0(a5)
   10604:	00008067          	ret
   10608:	fff00513          	li	a0,-1
   1060c:	00008067          	ret

0000000000010610 <_exit>:
   10610:	00000593          	li	a1,0
   10614:	00000613          	li	a2,0
   10618:	00000693          	li	a3,0
   1061c:	00000713          	li	a4,0
   10620:	00000793          	li	a5,0
   10624:	05d00893          	li	a7,93
   10628:	00000073          	ecall
   1062c:	00054463          	bltz	a0,10634 <_exit+0x24>
   10630:	0000006f          	j	10630 <_exit+0x20>
   10634:	ff010113          	addi	sp,sp,-16
   10638:	00813023          	sd	s0,0(sp)
   1063c:	00050413          	mv	s0,a0
   10640:	00113423          	sd	ra,8(sp)
   10644:	4080043b          	negw	s0,s0
   10648:	00c000ef          	jal	ra,10654 <__errno>
   1064c:	00852023          	sw	s0,0(a0)
   10650:	0000006f          	j	10650 <_exit+0x40>

0000000000010654 <__errno>:
   10654:	f581b503          	ld	a0,-168(gp) # 11dd0 <_impure_ptr>
   10658:	00008067          	ret

Disassembly of section .eh_frame:

000000000001165c <__FRAME_END__>:
   1165c:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011660 <__init_array_start>:
   11660:	00b0                	addi	a2,sp,72
   11662:	0001                	nop
   11664:	0000                	unimp
	...

0000000000011668 <__frame_dummy_init_array_entry>:
   11668:	0160                	addi	s0,sp,140
   1166a:	0001                	nop
   1166c:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011670 <__do_global_dtors_aux_fini_array_entry>:
   11670:	0114                	addi	a3,sp,128
   11672:	0001                	nop
   11674:	0000                	unimp
	...

Disassembly of section .data:

0000000000011678 <impure_data>:
	...
   11680:	1bb0                	addi	a2,sp,504
   11682:	0001                	nop
   11684:	0000                	unimp
   11686:	0000                	unimp
   11688:	1c60                	addi	s0,sp,572
   1168a:	0001                	nop
   1168c:	0000                	unimp
   1168e:	0000                	unimp
   11690:	1d10                	addi	a2,sp,688
   11692:	0001                	nop
	...
   11760:	0001                	nop
   11762:	0000                	unimp
   11764:	0000                	unimp
   11766:	0000                	unimp
   11768:	330e                	fld	ft6,224(sp)
   1176a:	abcd                	j	11d5c <impure_data+0x6e4>
   1176c:	1234                	addi	a3,sp,296
   1176e:	e66d                	bnez	a2,11858 <impure_data+0x1e0>
   11770:	deec                	sw	a1,124(a3)
   11772:	0005                	c.nop	1
   11774:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011dc0 <_global_impure_ptr>:
   11dc0:	1678                	addi	a4,sp,812
   11dc2:	0001                	nop
   11dc4:	0000                	unimp
	...

0000000000011dc8 <__dso_handle>:
	...

0000000000011dd0 <_impure_ptr>:
   11dd0:	1678                	addi	a4,sp,812
   11dd2:	0001                	nop
   11dd4:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000011dd8 <result>:
   11dd8:	0000                	unimp
	...

Disassembly of section .bss:

0000000000011de0 <completed.5525>:
	...

0000000000011de8 <object.5530>:
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


simple-function.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	55c50513          	addi	a0,a0,1372 # 1055c <__libc_fini_array>
   100c0:	4f80006f          	j	105b8 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00002197          	auipc	gp,0x2
   100cc:	e1818193          	addi	gp,gp,-488 # 11ee0 <__global_pointer$>
   100d0:	f8818513          	addi	a0,gp,-120 # 11e68 <completed.5525>
   100d4:	fc018613          	addi	a2,gp,-64 # 11ea0 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	278000ef          	jal	ra,10358 <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	4d450513          	addi	a0,a0,1236 # 105b8 <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	46c50513          	addi	a0,a0,1132 # 1055c <__libc_fini_array>
   100f8:	4c0000ef          	jal	ra,105b8 <atexit>
   100fc:	1c0000ef          	jal	ra,102bc <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	154000ef          	jal	ra,10260 <main>
   10110:	17c0006f          	j	1028c <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	f881c703          	lbu	a4,-120(gp) # 11e68 <completed.5525>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00011537          	lui	a0,0x11
   10138:	6c050513          	addi	a0,a0,1728 # 116c0 <__FRAME_END__>
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	f8f18423          	sb	a5,-120(gp) # 11e68 <completed.5525>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00011537          	lui	a0,0x11
   1016c:	f9018593          	addi	a1,gp,-112 # 11e70 <object.5530>
   10170:	6c050513          	addi	a0,a0,1728 # 116c0 <__FRAME_END__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <fuction>:
   10180:	fe010113          	addi	sp,sp,-32
   10184:	00813c23          	sd	s0,24(sp)
   10188:	02010413          	addi	s0,sp,32
   1018c:	fe042623          	sw	zero,-20(s0)
   10190:	fe042623          	sw	zero,-20(s0)
   10194:	0480006f          	j	101dc <fuction+0x5c>
   10198:	000117b7          	lui	a5,0x11
   1019c:	6e078713          	addi	a4,a5,1760 # 116e0 <result>
   101a0:	fec42783          	lw	a5,-20(s0)
   101a4:	00279793          	slli	a5,a5,0x2
   101a8:	00f707b3          	add	a5,a4,a5
   101ac:	0007a783          	lw	a5,0(a5)
   101b0:	00a7879b          	addiw	a5,a5,10
   101b4:	0007871b          	sext.w	a4,a5
   101b8:	000117b7          	lui	a5,0x11
   101bc:	6e078693          	addi	a3,a5,1760 # 116e0 <result>
   101c0:	fec42783          	lw	a5,-20(s0)
   101c4:	00279793          	slli	a5,a5,0x2
   101c8:	00f687b3          	add	a5,a3,a5
   101cc:	00e7a023          	sw	a4,0(a5)
   101d0:	fec42783          	lw	a5,-20(s0)
   101d4:	0017879b          	addiw	a5,a5,1
   101d8:	fef42623          	sw	a5,-20(s0)
   101dc:	fec42783          	lw	a5,-20(s0)
   101e0:	0007871b          	sext.w	a4,a5
   101e4:	00400793          	li	a5,4
   101e8:	fae7d8e3          	bge	a5,a4,10198 <fuction+0x18>
   101ec:	00500793          	li	a5,5
   101f0:	fef42623          	sw	a5,-20(s0)
   101f4:	0480006f          	j	1023c <fuction+0xbc>
   101f8:	000117b7          	lui	a5,0x11
   101fc:	6e078713          	addi	a4,a5,1760 # 116e0 <result>
   10200:	fec42783          	lw	a5,-20(s0)
   10204:	00279793          	slli	a5,a5,0x2
   10208:	00f707b3          	add	a5,a4,a5
   1020c:	0007a783          	lw	a5,0(a5)
   10210:	ffb7879b          	addiw	a5,a5,-5
   10214:	0007871b          	sext.w	a4,a5
   10218:	000117b7          	lui	a5,0x11
   1021c:	6e078693          	addi	a3,a5,1760 # 116e0 <result>
   10220:	fec42783          	lw	a5,-20(s0)
   10224:	00279793          	slli	a5,a5,0x2
   10228:	00f687b3          	add	a5,a3,a5
   1022c:	00e7a023          	sw	a4,0(a5)
   10230:	fec42783          	lw	a5,-20(s0)
   10234:	0017879b          	addiw	a5,a5,1
   10238:	fef42623          	sw	a5,-20(s0)
   1023c:	fec42783          	lw	a5,-20(s0)
   10240:	0007871b          	sext.w	a4,a5
   10244:	00900793          	li	a5,9
   10248:	fae7d8e3          	bge	a5,a4,101f8 <fuction+0x78>
   1024c:	00000013          	nop
   10250:	00000013          	nop
   10254:	01813403          	ld	s0,24(sp)
   10258:	02010113          	addi	sp,sp,32
   1025c:	00008067          	ret

0000000000010260 <main>:
   10260:	ff010113          	addi	sp,sp,-16
   10264:	00113423          	sd	ra,8(sp)
   10268:	00813023          	sd	s0,0(sp)
   1026c:	01010413          	addi	s0,sp,16
   10270:	f11ff0ef          	jal	ra,10180 <fuction>
   10274:	00000793          	li	a5,0
   10278:	00078513          	mv	a0,a5
   1027c:	00813083          	ld	ra,8(sp)
   10280:	00013403          	ld	s0,0(sp)
   10284:	01010113          	addi	sp,sp,16
   10288:	00008067          	ret

000000000001028c <exit>:
   1028c:	ff010113          	addi	sp,sp,-16
   10290:	00000593          	li	a1,0
   10294:	00813023          	sd	s0,0(sp)
   10298:	00113423          	sd	ra,8(sp)
   1029c:	00050413          	mv	s0,a0
   102a0:	194000ef          	jal	ra,10434 <__call_exitprocs>
   102a4:	f701b503          	ld	a0,-144(gp) # 11e50 <_global_impure_ptr>
   102a8:	05853783          	ld	a5,88(a0)
   102ac:	00078463          	beqz	a5,102b4 <exit+0x28>
   102b0:	000780e7          	jalr	a5
   102b4:	00040513          	mv	a0,s0
   102b8:	3bc000ef          	jal	ra,10674 <_exit>

00000000000102bc <__libc_init_array>:
   102bc:	fe010113          	addi	sp,sp,-32
   102c0:	00813823          	sd	s0,16(sp)
   102c4:	01213023          	sd	s2,0(sp)
   102c8:	00011437          	lui	s0,0x11
   102cc:	00011937          	lui	s2,0x11
   102d0:	6c440793          	addi	a5,s0,1732 # 116c4 <__preinit_array_end>
   102d4:	6c490913          	addi	s2,s2,1732 # 116c4 <__preinit_array_end>
   102d8:	40f90933          	sub	s2,s2,a5
   102dc:	00113c23          	sd	ra,24(sp)
   102e0:	00913423          	sd	s1,8(sp)
   102e4:	40395913          	srai	s2,s2,0x3
   102e8:	02090063          	beqz	s2,10308 <__libc_init_array+0x4c>
   102ec:	6c440413          	addi	s0,s0,1732
   102f0:	00000493          	li	s1,0
   102f4:	00043783          	ld	a5,0(s0)
   102f8:	00148493          	addi	s1,s1,1
   102fc:	00840413          	addi	s0,s0,8
   10300:	000780e7          	jalr	a5
   10304:	fe9918e3          	bne	s2,s1,102f4 <__libc_init_array+0x38>
   10308:	00011437          	lui	s0,0x11
   1030c:	00011937          	lui	s2,0x11
   10310:	6c840793          	addi	a5,s0,1736 # 116c8 <__init_array_start>
   10314:	6d890913          	addi	s2,s2,1752 # 116d8 <__do_global_dtors_aux_fini_array_entry>
   10318:	40f90933          	sub	s2,s2,a5
   1031c:	40395913          	srai	s2,s2,0x3
   10320:	02090063          	beqz	s2,10340 <__libc_init_array+0x84>
   10324:	6c840413          	addi	s0,s0,1736
   10328:	00000493          	li	s1,0
   1032c:	00043783          	ld	a5,0(s0)
   10330:	00148493          	addi	s1,s1,1
   10334:	00840413          	addi	s0,s0,8
   10338:	000780e7          	jalr	a5
   1033c:	fe9918e3          	bne	s2,s1,1032c <__libc_init_array+0x70>
   10340:	01813083          	ld	ra,24(sp)
   10344:	01013403          	ld	s0,16(sp)
   10348:	00813483          	ld	s1,8(sp)
   1034c:	00013903          	ld	s2,0(sp)
   10350:	02010113          	addi	sp,sp,32
   10354:	00008067          	ret

0000000000010358 <memset>:
   10358:	00f00313          	li	t1,15
   1035c:	00050713          	mv	a4,a0
   10360:	02c37a63          	bgeu	t1,a2,10394 <memset+0x3c>
   10364:	00f77793          	andi	a5,a4,15
   10368:	0a079063          	bnez	a5,10408 <memset+0xb0>
   1036c:	06059e63          	bnez	a1,103e8 <memset+0x90>
   10370:	ff067693          	andi	a3,a2,-16
   10374:	00f67613          	andi	a2,a2,15
   10378:	00e686b3          	add	a3,a3,a4
   1037c:	00b73023          	sd	a1,0(a4)
   10380:	00b73423          	sd	a1,8(a4)
   10384:	01070713          	addi	a4,a4,16
   10388:	fed76ae3          	bltu	a4,a3,1037c <memset+0x24>
   1038c:	00061463          	bnez	a2,10394 <memset+0x3c>
   10390:	00008067          	ret
   10394:	40c306b3          	sub	a3,t1,a2
   10398:	00269693          	slli	a3,a3,0x2
   1039c:	00000297          	auipc	t0,0x0
   103a0:	005686b3          	add	a3,a3,t0
   103a4:	00c68067          	jr	12(a3)
   103a8:	00b70723          	sb	a1,14(a4)
   103ac:	00b706a3          	sb	a1,13(a4)
   103b0:	00b70623          	sb	a1,12(a4)
   103b4:	00b705a3          	sb	a1,11(a4)
   103b8:	00b70523          	sb	a1,10(a4)
   103bc:	00b704a3          	sb	a1,9(a4)
   103c0:	00b70423          	sb	a1,8(a4)
   103c4:	00b703a3          	sb	a1,7(a4)
   103c8:	00b70323          	sb	a1,6(a4)
   103cc:	00b702a3          	sb	a1,5(a4)
   103d0:	00b70223          	sb	a1,4(a4)
   103d4:	00b701a3          	sb	a1,3(a4)
   103d8:	00b70123          	sb	a1,2(a4)
   103dc:	00b700a3          	sb	a1,1(a4)
   103e0:	00b70023          	sb	a1,0(a4)
   103e4:	00008067          	ret
   103e8:	0ff5f593          	andi	a1,a1,255
   103ec:	00859693          	slli	a3,a1,0x8
   103f0:	00d5e5b3          	or	a1,a1,a3
   103f4:	01059693          	slli	a3,a1,0x10
   103f8:	00d5e5b3          	or	a1,a1,a3
   103fc:	02059693          	slli	a3,a1,0x20
   10400:	00d5e5b3          	or	a1,a1,a3
   10404:	f6dff06f          	j	10370 <memset+0x18>
   10408:	00279693          	slli	a3,a5,0x2
   1040c:	00000297          	auipc	t0,0x0
   10410:	005686b3          	add	a3,a3,t0
   10414:	00008293          	mv	t0,ra
   10418:	f98680e7          	jalr	-104(a3)
   1041c:	00028093          	mv	ra,t0
   10420:	ff078793          	addi	a5,a5,-16
   10424:	40f70733          	sub	a4,a4,a5
   10428:	00f60633          	add	a2,a2,a5
   1042c:	f6c374e3          	bgeu	t1,a2,10394 <memset+0x3c>
   10430:	f3dff06f          	j	1036c <memset+0x14>

0000000000010434 <__call_exitprocs>:
   10434:	fb010113          	addi	sp,sp,-80
   10438:	03413023          	sd	s4,32(sp)
   1043c:	f701ba03          	ld	s4,-144(gp) # 11e50 <_global_impure_ptr>
   10440:	03213823          	sd	s2,48(sp)
   10444:	04113423          	sd	ra,72(sp)
   10448:	1f8a3903          	ld	s2,504(s4)
   1044c:	04813023          	sd	s0,64(sp)
   10450:	02913c23          	sd	s1,56(sp)
   10454:	03313423          	sd	s3,40(sp)
   10458:	01513c23          	sd	s5,24(sp)
   1045c:	01613823          	sd	s6,16(sp)
   10460:	01713423          	sd	s7,8(sp)
   10464:	01813023          	sd	s8,0(sp)
   10468:	04090063          	beqz	s2,104a8 <__call_exitprocs+0x74>
   1046c:	00050b13          	mv	s6,a0
   10470:	00058b93          	mv	s7,a1
   10474:	00100a93          	li	s5,1
   10478:	fff00993          	li	s3,-1
   1047c:	00892483          	lw	s1,8(s2)
   10480:	fff4841b          	addiw	s0,s1,-1
   10484:	02044263          	bltz	s0,104a8 <__call_exitprocs+0x74>
   10488:	00349493          	slli	s1,s1,0x3
   1048c:	009904b3          	add	s1,s2,s1
   10490:	040b8463          	beqz	s7,104d8 <__call_exitprocs+0xa4>
   10494:	2084b783          	ld	a5,520(s1)
   10498:	05778063          	beq	a5,s7,104d8 <__call_exitprocs+0xa4>
   1049c:	fff4041b          	addiw	s0,s0,-1
   104a0:	ff848493          	addi	s1,s1,-8
   104a4:	ff3416e3          	bne	s0,s3,10490 <__call_exitprocs+0x5c>
   104a8:	04813083          	ld	ra,72(sp)
   104ac:	04013403          	ld	s0,64(sp)
   104b0:	03813483          	ld	s1,56(sp)
   104b4:	03013903          	ld	s2,48(sp)
   104b8:	02813983          	ld	s3,40(sp)
   104bc:	02013a03          	ld	s4,32(sp)
   104c0:	01813a83          	ld	s5,24(sp)
   104c4:	01013b03          	ld	s6,16(sp)
   104c8:	00813b83          	ld	s7,8(sp)
   104cc:	00013c03          	ld	s8,0(sp)
   104d0:	05010113          	addi	sp,sp,80
   104d4:	00008067          	ret
   104d8:	00892783          	lw	a5,8(s2)
   104dc:	0084b703          	ld	a4,8(s1)
   104e0:	fff7879b          	addiw	a5,a5,-1
   104e4:	06878263          	beq	a5,s0,10548 <__call_exitprocs+0x114>
   104e8:	0004b423          	sd	zero,8(s1)
   104ec:	fa0708e3          	beqz	a4,1049c <__call_exitprocs+0x68>
   104f0:	31092783          	lw	a5,784(s2)
   104f4:	008a96bb          	sllw	a3,s5,s0
   104f8:	00892c03          	lw	s8,8(s2)
   104fc:	00d7f7b3          	and	a5,a5,a3
   10500:	0007879b          	sext.w	a5,a5
   10504:	02079263          	bnez	a5,10528 <__call_exitprocs+0xf4>
   10508:	000700e7          	jalr	a4
   1050c:	00892703          	lw	a4,8(s2)
   10510:	1f8a3783          	ld	a5,504(s4)
   10514:	01871463          	bne	a4,s8,1051c <__call_exitprocs+0xe8>
   10518:	f8f902e3          	beq	s2,a5,1049c <__call_exitprocs+0x68>
   1051c:	f80786e3          	beqz	a5,104a8 <__call_exitprocs+0x74>
   10520:	00078913          	mv	s2,a5
   10524:	f59ff06f          	j	1047c <__call_exitprocs+0x48>
   10528:	31492783          	lw	a5,788(s2)
   1052c:	1084b583          	ld	a1,264(s1)
   10530:	00d7f7b3          	and	a5,a5,a3
   10534:	0007879b          	sext.w	a5,a5
   10538:	00079c63          	bnez	a5,10550 <__call_exitprocs+0x11c>
   1053c:	000b0513          	mv	a0,s6
   10540:	000700e7          	jalr	a4
   10544:	fc9ff06f          	j	1050c <__call_exitprocs+0xd8>
   10548:	00892423          	sw	s0,8(s2)
   1054c:	fa1ff06f          	j	104ec <__call_exitprocs+0xb8>
   10550:	00058513          	mv	a0,a1
   10554:	000700e7          	jalr	a4
   10558:	fb5ff06f          	j	1050c <__call_exitprocs+0xd8>

000000000001055c <__libc_fini_array>:
   1055c:	fe010113          	addi	sp,sp,-32
   10560:	00813823          	sd	s0,16(sp)
   10564:	000117b7          	lui	a5,0x11
   10568:	00011437          	lui	s0,0x11
   1056c:	6d840413          	addi	s0,s0,1752 # 116d8 <__do_global_dtors_aux_fini_array_entry>
   10570:	6e078793          	addi	a5,a5,1760 # 116e0 <result>
   10574:	408787b3          	sub	a5,a5,s0
   10578:	00913423          	sd	s1,8(sp)
   1057c:	00113c23          	sd	ra,24(sp)
   10580:	4037d493          	srai	s1,a5,0x3
   10584:	02048063          	beqz	s1,105a4 <__libc_fini_array+0x48>
   10588:	ff878793          	addi	a5,a5,-8
   1058c:	00878433          	add	s0,a5,s0
   10590:	00043783          	ld	a5,0(s0)
   10594:	fff48493          	addi	s1,s1,-1
   10598:	ff840413          	addi	s0,s0,-8
   1059c:	000780e7          	jalr	a5
   105a0:	fe0498e3          	bnez	s1,10590 <__libc_fini_array+0x34>
   105a4:	01813083          	ld	ra,24(sp)
   105a8:	01013403          	ld	s0,16(sp)
   105ac:	00813483          	ld	s1,8(sp)
   105b0:	02010113          	addi	sp,sp,32
   105b4:	00008067          	ret

00000000000105b8 <atexit>:
   105b8:	00050593          	mv	a1,a0
   105bc:	00000693          	li	a3,0
   105c0:	00000613          	li	a2,0
   105c4:	00000513          	li	a0,0
   105c8:	0040006f          	j	105cc <__register_exitproc>

00000000000105cc <__register_exitproc>:
   105cc:	f701b703          	ld	a4,-144(gp) # 11e50 <_global_impure_ptr>
   105d0:	1f873783          	ld	a5,504(a4)
   105d4:	06078063          	beqz	a5,10634 <__register_exitproc+0x68>
   105d8:	0087a703          	lw	a4,8(a5)
   105dc:	01f00813          	li	a6,31
   105e0:	08e84663          	blt	a6,a4,1066c <__register_exitproc+0xa0>
   105e4:	02050863          	beqz	a0,10614 <__register_exitproc+0x48>
   105e8:	00371813          	slli	a6,a4,0x3
   105ec:	01078833          	add	a6,a5,a6
   105f0:	10c83823          	sd	a2,272(a6)
   105f4:	3107a883          	lw	a7,784(a5)
   105f8:	00100613          	li	a2,1
   105fc:	00e6163b          	sllw	a2,a2,a4
   10600:	00c8e8b3          	or	a7,a7,a2
   10604:	3117a823          	sw	a7,784(a5)
   10608:	20d83823          	sd	a3,528(a6)
   1060c:	00200693          	li	a3,2
   10610:	02d50863          	beq	a0,a3,10640 <__register_exitproc+0x74>
   10614:	00270693          	addi	a3,a4,2
   10618:	00369693          	slli	a3,a3,0x3
   1061c:	0017071b          	addiw	a4,a4,1
   10620:	00e7a423          	sw	a4,8(a5)
   10624:	00d787b3          	add	a5,a5,a3
   10628:	00b7b023          	sd	a1,0(a5)
   1062c:	00000513          	li	a0,0
   10630:	00008067          	ret
   10634:	20070793          	addi	a5,a4,512
   10638:	1ef73c23          	sd	a5,504(a4)
   1063c:	f9dff06f          	j	105d8 <__register_exitproc+0xc>
   10640:	3147a683          	lw	a3,788(a5)
   10644:	00000513          	li	a0,0
   10648:	00c6e633          	or	a2,a3,a2
   1064c:	00270693          	addi	a3,a4,2
   10650:	00369693          	slli	a3,a3,0x3
   10654:	0017071b          	addiw	a4,a4,1
   10658:	30c7aa23          	sw	a2,788(a5)
   1065c:	00e7a423          	sw	a4,8(a5)
   10660:	00d787b3          	add	a5,a5,a3
   10664:	00b7b023          	sd	a1,0(a5)
   10668:	00008067          	ret
   1066c:	fff00513          	li	a0,-1
   10670:	00008067          	ret

0000000000010674 <_exit>:
   10674:	00000593          	li	a1,0
   10678:	00000613          	li	a2,0
   1067c:	00000693          	li	a3,0
   10680:	00000713          	li	a4,0
   10684:	00000793          	li	a5,0
   10688:	05d00893          	li	a7,93
   1068c:	00000073          	ecall
   10690:	00054463          	bltz	a0,10698 <_exit+0x24>
   10694:	0000006f          	j	10694 <_exit+0x20>
   10698:	ff010113          	addi	sp,sp,-16
   1069c:	00813023          	sd	s0,0(sp)
   106a0:	00050413          	mv	s0,a0
   106a4:	00113423          	sd	ra,8(sp)
   106a8:	4080043b          	negw	s0,s0
   106ac:	00c000ef          	jal	ra,106b8 <__errno>
   106b0:	00852023          	sw	s0,0(a0)
   106b4:	0000006f          	j	106b4 <_exit+0x40>

00000000000106b8 <__errno>:
   106b8:	f801b503          	ld	a0,-128(gp) # 11e60 <_impure_ptr>
   106bc:	00008067          	ret

Disassembly of section .eh_frame:

00000000000116c0 <__FRAME_END__>:
   116c0:	0000                	unimp
	...

Disassembly of section .init_array:

00000000000116c8 <__init_array_start>:
   116c8:	00b0                	addi	a2,sp,72
   116ca:	0001                	nop
   116cc:	0000                	unimp
	...

00000000000116d0 <__frame_dummy_init_array_entry>:
   116d0:	0160                	addi	s0,sp,140
   116d2:	0001                	nop
   116d4:	0000                	unimp
	...

Disassembly of section .fini_array:

00000000000116d8 <__do_global_dtors_aux_fini_array_entry>:
   116d8:	0114                	addi	a3,sp,128
   116da:	0001                	nop
   116dc:	0000                	unimp
	...

Disassembly of section .data:

00000000000116e0 <result>:
   116e0:	0001                	nop
   116e2:	0000                	unimp
   116e4:	0002                	c.slli64	zero
   116e6:	0000                	unimp
   116e8:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
   116ec:	0004                	0x4
   116ee:	0000                	unimp
   116f0:	0005                	c.nop	1
   116f2:	0000                	unimp
   116f4:	0006                	c.slli	zero,0x1
   116f6:	0000                	unimp
   116f8:	00000007          	0x7
   116fc:	0008                	0x8
   116fe:	0000                	unimp
   11700:	0009                	c.nop	2
   11702:	0000                	unimp
   11704:	000a                	c.slli	zero,0x2
	...

0000000000011708 <impure_data>:
	...
   11710:	1c40                	addi	s0,sp,564
   11712:	0001                	nop
   11714:	0000                	unimp
   11716:	0000                	unimp
   11718:	1cf0                	addi	a2,sp,636
   1171a:	0001                	nop
   1171c:	0000                	unimp
   1171e:	0000                	unimp
   11720:	1da0                	addi	s0,sp,760
   11722:	0001                	nop
	...
   117f0:	0001                	nop
   117f2:	0000                	unimp
   117f4:	0000                	unimp
   117f6:	0000                	unimp
   117f8:	330e                	fld	ft6,224(sp)
   117fa:	abcd                	j	11dec <impure_data+0x6e4>
   117fc:	1234                	addi	a3,sp,296
   117fe:	e66d                	bnez	a2,118e8 <impure_data+0x1e0>
   11800:	deec                	sw	a1,124(a3)
   11802:	0005                	c.nop	1
   11804:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011e50 <_global_impure_ptr>:
   11e50:	1708                	addi	a0,sp,928
   11e52:	0001                	nop
   11e54:	0000                	unimp
	...

0000000000011e58 <__dso_handle>:
	...

0000000000011e60 <_impure_ptr>:
   11e60:	1708                	addi	a0,sp,928
   11e62:	0001                	nop
   11e64:	0000                	unimp
	...

Disassembly of section .bss:

0000000000011e68 <completed.5525>:
	...

0000000000011e70 <object.5530>:
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

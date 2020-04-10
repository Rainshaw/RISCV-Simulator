
add.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	53050513          	addi	a0,a0,1328 # 10530 <__libc_fini_array>
   100c0:	4cc0006f          	j	1058c <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00002197          	auipc	gp,0x2
   100cc:	de818193          	addi	gp,gp,-536 # 11eb0 <__global_pointer$>
   100d0:	f8818513          	addi	a0,gp,-120 # 11e38 <completed.5525>
   100d4:	fc018613          	addi	a2,gp,-64 # 11e70 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	24c000ef          	jal	ra,1032c <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	4a850513          	addi	a0,a0,1192 # 1058c <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	44050513          	addi	a0,a0,1088 # 10530 <__libc_fini_array>
   100f8:	494000ef          	jal	ra,1058c <atexit>
   100fc:	194000ef          	jal	ra,10290 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	074000ef          	jal	ra,10180 <main>
   10110:	1500006f          	j	10260 <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	f881c703          	lbu	a4,-120(gp) # 11e38 <completed.5525>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00011537          	lui	a0,0x11
   10138:	69450513          	addi	a0,a0,1684 # 11694 <__FRAME_END__>
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	f8f18423          	sb	a5,-120(gp) # 11e38 <completed.5525>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00011537          	lui	a0,0x11
   1016c:	f9018593          	addi	a1,gp,-112 # 11e40 <object.5530>
   10170:	69450513          	addi	a0,a0,1684 # 11694 <__FRAME_END__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <main>:
   10180:	fe010113          	addi	sp,sp,-32
   10184:	00813c23          	sd	s0,24(sp)
   10188:	02010413          	addi	s0,sp,32
   1018c:	fe042623          	sw	zero,-20(s0)
   10190:	fe042623          	sw	zero,-20(s0)
   10194:	0480006f          	j	101dc <main+0x5c>
   10198:	000117b7          	lui	a5,0x11
   1019c:	6b078713          	addi	a4,a5,1712 # 116b0 <result>
   101a0:	fec42783          	lw	a5,-20(s0)
   101a4:	00279793          	slli	a5,a5,0x2
   101a8:	00f707b3          	add	a5,a4,a5
   101ac:	0007a783          	lw	a5,0(a5)
   101b0:	00a7879b          	addiw	a5,a5,10
   101b4:	0007871b          	sext.w	a4,a5
   101b8:	000117b7          	lui	a5,0x11
   101bc:	6b078693          	addi	a3,a5,1712 # 116b0 <result>
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
   101e8:	fae7d8e3          	bge	a5,a4,10198 <main+0x18>
   101ec:	00500793          	li	a5,5
   101f0:	fef42623          	sw	a5,-20(s0)
   101f4:	0480006f          	j	1023c <main+0xbc>
   101f8:	000117b7          	lui	a5,0x11
   101fc:	6b078713          	addi	a4,a5,1712 # 116b0 <result>
   10200:	fec42783          	lw	a5,-20(s0)
   10204:	00279793          	slli	a5,a5,0x2
   10208:	00f707b3          	add	a5,a4,a5
   1020c:	0007a783          	lw	a5,0(a5)
   10210:	ffb7879b          	addiw	a5,a5,-5
   10214:	0007871b          	sext.w	a4,a5
   10218:	000117b7          	lui	a5,0x11
   1021c:	6b078693          	addi	a3,a5,1712 # 116b0 <result>
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
   10248:	fae7d8e3          	bge	a5,a4,101f8 <main+0x78>
   1024c:	00000793          	li	a5,0
   10250:	00078513          	mv	a0,a5
   10254:	01813403          	ld	s0,24(sp)
   10258:	02010113          	addi	sp,sp,32
   1025c:	00008067          	ret

0000000000010260 <exit>:
   10260:	ff010113          	addi	sp,sp,-16
   10264:	00000593          	li	a1,0
   10268:	00813023          	sd	s0,0(sp)
   1026c:	00113423          	sd	ra,8(sp)
   10270:	00050413          	mv	s0,a0
   10274:	194000ef          	jal	ra,10408 <__call_exitprocs>
   10278:	f701b503          	ld	a0,-144(gp) # 11e20 <_global_impure_ptr>
   1027c:	05853783          	ld	a5,88(a0)
   10280:	00078463          	beqz	a5,10288 <exit+0x28>
   10284:	000780e7          	jalr	a5
   10288:	00040513          	mv	a0,s0
   1028c:	3bc000ef          	jal	ra,10648 <_exit>

0000000000010290 <__libc_init_array>:
   10290:	fe010113          	addi	sp,sp,-32
   10294:	00813823          	sd	s0,16(sp)
   10298:	01213023          	sd	s2,0(sp)
   1029c:	00011437          	lui	s0,0x11
   102a0:	00011937          	lui	s2,0x11
   102a4:	69840793          	addi	a5,s0,1688 # 11698 <__init_array_start>
   102a8:	69890913          	addi	s2,s2,1688 # 11698 <__init_array_start>
   102ac:	40f90933          	sub	s2,s2,a5
   102b0:	00113c23          	sd	ra,24(sp)
   102b4:	00913423          	sd	s1,8(sp)
   102b8:	40395913          	srai	s2,s2,0x3
   102bc:	02090063          	beqz	s2,102dc <__libc_init_array+0x4c>
   102c0:	69840413          	addi	s0,s0,1688
   102c4:	00000493          	li	s1,0
   102c8:	00043783          	ld	a5,0(s0)
   102cc:	00148493          	addi	s1,s1,1
   102d0:	00840413          	addi	s0,s0,8
   102d4:	000780e7          	jalr	a5
   102d8:	fe9918e3          	bne	s2,s1,102c8 <__libc_init_array+0x38>
   102dc:	00011437          	lui	s0,0x11
   102e0:	00011937          	lui	s2,0x11
   102e4:	69840793          	addi	a5,s0,1688 # 11698 <__init_array_start>
   102e8:	6a890913          	addi	s2,s2,1704 # 116a8 <__do_global_dtors_aux_fini_array_entry>
   102ec:	40f90933          	sub	s2,s2,a5
   102f0:	40395913          	srai	s2,s2,0x3
   102f4:	02090063          	beqz	s2,10314 <__libc_init_array+0x84>
   102f8:	69840413          	addi	s0,s0,1688
   102fc:	00000493          	li	s1,0
   10300:	00043783          	ld	a5,0(s0)
   10304:	00148493          	addi	s1,s1,1
   10308:	00840413          	addi	s0,s0,8
   1030c:	000780e7          	jalr	a5
   10310:	fe9918e3          	bne	s2,s1,10300 <__libc_init_array+0x70>
   10314:	01813083          	ld	ra,24(sp)
   10318:	01013403          	ld	s0,16(sp)
   1031c:	00813483          	ld	s1,8(sp)
   10320:	00013903          	ld	s2,0(sp)
   10324:	02010113          	addi	sp,sp,32
   10328:	00008067          	ret

000000000001032c <memset>:
   1032c:	00f00313          	li	t1,15
   10330:	00050713          	mv	a4,a0
   10334:	02c37a63          	bgeu	t1,a2,10368 <memset+0x3c>
   10338:	00f77793          	andi	a5,a4,15
   1033c:	0a079063          	bnez	a5,103dc <memset+0xb0>
   10340:	06059e63          	bnez	a1,103bc <memset+0x90>
   10344:	ff067693          	andi	a3,a2,-16
   10348:	00f67613          	andi	a2,a2,15
   1034c:	00e686b3          	add	a3,a3,a4
   10350:	00b73023          	sd	a1,0(a4)
   10354:	00b73423          	sd	a1,8(a4)
   10358:	01070713          	addi	a4,a4,16
   1035c:	fed76ae3          	bltu	a4,a3,10350 <memset+0x24>
   10360:	00061463          	bnez	a2,10368 <memset+0x3c>
   10364:	00008067          	ret
   10368:	40c306b3          	sub	a3,t1,a2
   1036c:	00269693          	slli	a3,a3,0x2
   10370:	00000297          	auipc	t0,0x0
   10374:	005686b3          	add	a3,a3,t0
   10378:	00c68067          	jr	12(a3)
   1037c:	00b70723          	sb	a1,14(a4)
   10380:	00b706a3          	sb	a1,13(a4)
   10384:	00b70623          	sb	a1,12(a4)
   10388:	00b705a3          	sb	a1,11(a4)
   1038c:	00b70523          	sb	a1,10(a4)
   10390:	00b704a3          	sb	a1,9(a4)
   10394:	00b70423          	sb	a1,8(a4)
   10398:	00b703a3          	sb	a1,7(a4)
   1039c:	00b70323          	sb	a1,6(a4)
   103a0:	00b702a3          	sb	a1,5(a4)
   103a4:	00b70223          	sb	a1,4(a4)
   103a8:	00b701a3          	sb	a1,3(a4)
   103ac:	00b70123          	sb	a1,2(a4)
   103b0:	00b700a3          	sb	a1,1(a4)
   103b4:	00b70023          	sb	a1,0(a4)
   103b8:	00008067          	ret
   103bc:	0ff5f593          	andi	a1,a1,255
   103c0:	00859693          	slli	a3,a1,0x8
   103c4:	00d5e5b3          	or	a1,a1,a3
   103c8:	01059693          	slli	a3,a1,0x10
   103cc:	00d5e5b3          	or	a1,a1,a3
   103d0:	02059693          	slli	a3,a1,0x20
   103d4:	00d5e5b3          	or	a1,a1,a3
   103d8:	f6dff06f          	j	10344 <memset+0x18>
   103dc:	00279693          	slli	a3,a5,0x2
   103e0:	00000297          	auipc	t0,0x0
   103e4:	005686b3          	add	a3,a3,t0
   103e8:	00008293          	mv	t0,ra
   103ec:	f98680e7          	jalr	-104(a3)
   103f0:	00028093          	mv	ra,t0
   103f4:	ff078793          	addi	a5,a5,-16
   103f8:	40f70733          	sub	a4,a4,a5
   103fc:	00f60633          	add	a2,a2,a5
   10400:	f6c374e3          	bgeu	t1,a2,10368 <memset+0x3c>
   10404:	f3dff06f          	j	10340 <memset+0x14>

0000000000010408 <__call_exitprocs>:
   10408:	fb010113          	addi	sp,sp,-80
   1040c:	03413023          	sd	s4,32(sp)
   10410:	f701ba03          	ld	s4,-144(gp) # 11e20 <_global_impure_ptr>
   10414:	03213823          	sd	s2,48(sp)
   10418:	04113423          	sd	ra,72(sp)
   1041c:	1f8a3903          	ld	s2,504(s4)
   10420:	04813023          	sd	s0,64(sp)
   10424:	02913c23          	sd	s1,56(sp)
   10428:	03313423          	sd	s3,40(sp)
   1042c:	01513c23          	sd	s5,24(sp)
   10430:	01613823          	sd	s6,16(sp)
   10434:	01713423          	sd	s7,8(sp)
   10438:	01813023          	sd	s8,0(sp)
   1043c:	04090063          	beqz	s2,1047c <__call_exitprocs+0x74>
   10440:	00050b13          	mv	s6,a0
   10444:	00058b93          	mv	s7,a1
   10448:	00100a93          	li	s5,1
   1044c:	fff00993          	li	s3,-1
   10450:	00892483          	lw	s1,8(s2)
   10454:	fff4841b          	addiw	s0,s1,-1
   10458:	02044263          	bltz	s0,1047c <__call_exitprocs+0x74>
   1045c:	00349493          	slli	s1,s1,0x3
   10460:	009904b3          	add	s1,s2,s1
   10464:	040b8463          	beqz	s7,104ac <__call_exitprocs+0xa4>
   10468:	2084b783          	ld	a5,520(s1)
   1046c:	05778063          	beq	a5,s7,104ac <__call_exitprocs+0xa4>
   10470:	fff4041b          	addiw	s0,s0,-1
   10474:	ff848493          	addi	s1,s1,-8
   10478:	ff3416e3          	bne	s0,s3,10464 <__call_exitprocs+0x5c>
   1047c:	04813083          	ld	ra,72(sp)
   10480:	04013403          	ld	s0,64(sp)
   10484:	03813483          	ld	s1,56(sp)
   10488:	03013903          	ld	s2,48(sp)
   1048c:	02813983          	ld	s3,40(sp)
   10490:	02013a03          	ld	s4,32(sp)
   10494:	01813a83          	ld	s5,24(sp)
   10498:	01013b03          	ld	s6,16(sp)
   1049c:	00813b83          	ld	s7,8(sp)
   104a0:	00013c03          	ld	s8,0(sp)
   104a4:	05010113          	addi	sp,sp,80
   104a8:	00008067          	ret
   104ac:	00892783          	lw	a5,8(s2)
   104b0:	0084b703          	ld	a4,8(s1)
   104b4:	fff7879b          	addiw	a5,a5,-1
   104b8:	06878263          	beq	a5,s0,1051c <__call_exitprocs+0x114>
   104bc:	0004b423          	sd	zero,8(s1)
   104c0:	fa0708e3          	beqz	a4,10470 <__call_exitprocs+0x68>
   104c4:	31092783          	lw	a5,784(s2)
   104c8:	008a96bb          	sllw	a3,s5,s0
   104cc:	00892c03          	lw	s8,8(s2)
   104d0:	00d7f7b3          	and	a5,a5,a3
   104d4:	0007879b          	sext.w	a5,a5
   104d8:	02079263          	bnez	a5,104fc <__call_exitprocs+0xf4>
   104dc:	000700e7          	jalr	a4
   104e0:	00892703          	lw	a4,8(s2)
   104e4:	1f8a3783          	ld	a5,504(s4)
   104e8:	01871463          	bne	a4,s8,104f0 <__call_exitprocs+0xe8>
   104ec:	f8f902e3          	beq	s2,a5,10470 <__call_exitprocs+0x68>
   104f0:	f80786e3          	beqz	a5,1047c <__call_exitprocs+0x74>
   104f4:	00078913          	mv	s2,a5
   104f8:	f59ff06f          	j	10450 <__call_exitprocs+0x48>
   104fc:	31492783          	lw	a5,788(s2)
   10500:	1084b583          	ld	a1,264(s1)
   10504:	00d7f7b3          	and	a5,a5,a3
   10508:	0007879b          	sext.w	a5,a5
   1050c:	00079c63          	bnez	a5,10524 <__call_exitprocs+0x11c>
   10510:	000b0513          	mv	a0,s6
   10514:	000700e7          	jalr	a4
   10518:	fc9ff06f          	j	104e0 <__call_exitprocs+0xd8>
   1051c:	00892423          	sw	s0,8(s2)
   10520:	fa1ff06f          	j	104c0 <__call_exitprocs+0xb8>
   10524:	00058513          	mv	a0,a1
   10528:	000700e7          	jalr	a4
   1052c:	fb5ff06f          	j	104e0 <__call_exitprocs+0xd8>

0000000000010530 <__libc_fini_array>:
   10530:	fe010113          	addi	sp,sp,-32
   10534:	00813823          	sd	s0,16(sp)
   10538:	000117b7          	lui	a5,0x11
   1053c:	00011437          	lui	s0,0x11
   10540:	6a840413          	addi	s0,s0,1704 # 116a8 <__do_global_dtors_aux_fini_array_entry>
   10544:	6b078793          	addi	a5,a5,1712 # 116b0 <result>
   10548:	408787b3          	sub	a5,a5,s0
   1054c:	00913423          	sd	s1,8(sp)
   10550:	00113c23          	sd	ra,24(sp)
   10554:	4037d493          	srai	s1,a5,0x3
   10558:	02048063          	beqz	s1,10578 <__libc_fini_array+0x48>
   1055c:	ff878793          	addi	a5,a5,-8
   10560:	00878433          	add	s0,a5,s0
   10564:	00043783          	ld	a5,0(s0)
   10568:	fff48493          	addi	s1,s1,-1
   1056c:	ff840413          	addi	s0,s0,-8
   10570:	000780e7          	jalr	a5
   10574:	fe0498e3          	bnez	s1,10564 <__libc_fini_array+0x34>
   10578:	01813083          	ld	ra,24(sp)
   1057c:	01013403          	ld	s0,16(sp)
   10580:	00813483          	ld	s1,8(sp)
   10584:	02010113          	addi	sp,sp,32
   10588:	00008067          	ret

000000000001058c <atexit>:
   1058c:	00050593          	mv	a1,a0
   10590:	00000693          	li	a3,0
   10594:	00000613          	li	a2,0
   10598:	00000513          	li	a0,0
   1059c:	0040006f          	j	105a0 <__register_exitproc>

00000000000105a0 <__register_exitproc>:
   105a0:	f701b703          	ld	a4,-144(gp) # 11e20 <_global_impure_ptr>
   105a4:	1f873783          	ld	a5,504(a4)
   105a8:	06078063          	beqz	a5,10608 <__register_exitproc+0x68>
   105ac:	0087a703          	lw	a4,8(a5)
   105b0:	01f00813          	li	a6,31
   105b4:	08e84663          	blt	a6,a4,10640 <__register_exitproc+0xa0>
   105b8:	02050863          	beqz	a0,105e8 <__register_exitproc+0x48>
   105bc:	00371813          	slli	a6,a4,0x3
   105c0:	01078833          	add	a6,a5,a6
   105c4:	10c83823          	sd	a2,272(a6)
   105c8:	3107a883          	lw	a7,784(a5)
   105cc:	00100613          	li	a2,1
   105d0:	00e6163b          	sllw	a2,a2,a4
   105d4:	00c8e8b3          	or	a7,a7,a2
   105d8:	3117a823          	sw	a7,784(a5)
   105dc:	20d83823          	sd	a3,528(a6)
   105e0:	00200693          	li	a3,2
   105e4:	02d50863          	beq	a0,a3,10614 <__register_exitproc+0x74>
   105e8:	00270693          	addi	a3,a4,2
   105ec:	00369693          	slli	a3,a3,0x3
   105f0:	0017071b          	addiw	a4,a4,1
   105f4:	00e7a423          	sw	a4,8(a5)
   105f8:	00d787b3          	add	a5,a5,a3
   105fc:	00b7b023          	sd	a1,0(a5)
   10600:	00000513          	li	a0,0
   10604:	00008067          	ret
   10608:	20070793          	addi	a5,a4,512
   1060c:	1ef73c23          	sd	a5,504(a4)
   10610:	f9dff06f          	j	105ac <__register_exitproc+0xc>
   10614:	3147a683          	lw	a3,788(a5)
   10618:	00000513          	li	a0,0
   1061c:	00c6e633          	or	a2,a3,a2
   10620:	00270693          	addi	a3,a4,2
   10624:	00369693          	slli	a3,a3,0x3
   10628:	0017071b          	addiw	a4,a4,1
   1062c:	30c7aa23          	sw	a2,788(a5)
   10630:	00e7a423          	sw	a4,8(a5)
   10634:	00d787b3          	add	a5,a5,a3
   10638:	00b7b023          	sd	a1,0(a5)
   1063c:	00008067          	ret
   10640:	fff00513          	li	a0,-1
   10644:	00008067          	ret

0000000000010648 <_exit>:
   10648:	00000593          	li	a1,0
   1064c:	00000613          	li	a2,0
   10650:	00000693          	li	a3,0
   10654:	00000713          	li	a4,0
   10658:	00000793          	li	a5,0
   1065c:	05d00893          	li	a7,93
   10660:	00000073          	ecall
   10664:	00054463          	bltz	a0,1066c <_exit+0x24>
   10668:	0000006f          	j	10668 <_exit+0x20>
   1066c:	ff010113          	addi	sp,sp,-16
   10670:	00813023          	sd	s0,0(sp)
   10674:	00050413          	mv	s0,a0
   10678:	00113423          	sd	ra,8(sp)
   1067c:	4080043b          	negw	s0,s0
   10680:	00c000ef          	jal	ra,1068c <__errno>
   10684:	00852023          	sw	s0,0(a0)
   10688:	0000006f          	j	10688 <_exit+0x40>

000000000001068c <__errno>:
   1068c:	f801b503          	ld	a0,-128(gp) # 11e30 <_impure_ptr>
   10690:	00008067          	ret

Disassembly of section .eh_frame:

0000000000011694 <__FRAME_END__>:
   11694:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011698 <__init_array_start>:
   11698:	00b0                	addi	a2,sp,72
   1169a:	0001                	nop
   1169c:	0000                	unimp
	...

00000000000116a0 <__frame_dummy_init_array_entry>:
   116a0:	0160                	addi	s0,sp,140
   116a2:	0001                	nop
   116a4:	0000                	unimp
	...

Disassembly of section .fini_array:

00000000000116a8 <__do_global_dtors_aux_fini_array_entry>:
   116a8:	0114                	addi	a3,sp,128
   116aa:	0001                	nop
   116ac:	0000                	unimp
	...

Disassembly of section .data:

00000000000116b0 <result>:
   116b0:	0001                	nop
   116b2:	0000                	unimp
   116b4:	0002                	c.slli64	zero
   116b6:	0000                	unimp
   116b8:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
   116bc:	0004                	0x4
   116be:	0000                	unimp
   116c0:	0005                	c.nop	1
   116c2:	0000                	unimp
   116c4:	0006                	c.slli	zero,0x1
   116c6:	0000                	unimp
   116c8:	00000007          	0x7
   116cc:	0008                	0x8
   116ce:	0000                	unimp
   116d0:	0009                	c.nop	2
   116d2:	0000                	unimp
   116d4:	000a                	c.slli	zero,0x2
	...

00000000000116d8 <impure_data>:
	...
   116e0:	1c10                	addi	a2,sp,560
   116e2:	0001                	nop
   116e4:	0000                	unimp
   116e6:	0000                	unimp
   116e8:	1cc0                	addi	s0,sp,628
   116ea:	0001                	nop
   116ec:	0000                	unimp
   116ee:	0000                	unimp
   116f0:	1d70                	addi	a2,sp,700
   116f2:	0001                	nop
	...
   117c0:	0001                	nop
   117c2:	0000                	unimp
   117c4:	0000                	unimp
   117c6:	0000                	unimp
   117c8:	330e                	fld	ft6,224(sp)
   117ca:	abcd                	j	11dbc <impure_data+0x6e4>
   117cc:	1234                	addi	a3,sp,296
   117ce:	e66d                	bnez	a2,118b8 <impure_data+0x1e0>
   117d0:	deec                	sw	a1,124(a3)
   117d2:	0005                	c.nop	1
   117d4:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011e20 <_global_impure_ptr>:
   11e20:	16d8                	addi	a4,sp,868
   11e22:	0001                	nop
   11e24:	0000                	unimp
	...

0000000000011e28 <__dso_handle>:
	...

0000000000011e30 <_impure_ptr>:
   11e30:	16d8                	addi	a4,sp,868
   11e32:	0001                	nop
   11e34:	0000                	unimp
	...

Disassembly of section .bss:

0000000000011e38 <completed.5525>:
	...

0000000000011e40 <object.5530>:
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

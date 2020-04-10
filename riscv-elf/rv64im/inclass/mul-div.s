
mul-div.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	54450513          	addi	a0,a0,1348 # 10544 <__libc_fini_array>
   100c0:	4e00006f          	j	105a0 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00002197          	auipc	gp,0x2
   100cc:	e0018193          	addi	gp,gp,-512 # 11ec8 <__global_pointer$>
   100d0:	f8818513          	addi	a0,gp,-120 # 11e50 <completed.5525>
   100d4:	fc018613          	addi	a2,gp,-64 # 11e88 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	260000ef          	jal	ra,10340 <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	4bc50513          	addi	a0,a0,1212 # 105a0 <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	45450513          	addi	a0,a0,1108 # 10544 <__libc_fini_array>
   100f8:	4a8000ef          	jal	ra,105a0 <atexit>
   100fc:	1a8000ef          	jal	ra,102a4 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	074000ef          	jal	ra,10180 <main>
   10110:	1640006f          	j	10274 <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	f881c703          	lbu	a4,-120(gp) # 11e50 <completed.5525>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00011537          	lui	a0,0x11
   10138:	6a850513          	addi	a0,a0,1704 # 116a8 <__FRAME_END__>
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	f8f18423          	sb	a5,-120(gp) # 11e50 <completed.5525>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00011537          	lui	a0,0x11
   1016c:	f9018593          	addi	a1,gp,-112 # 11e58 <object.5530>
   10170:	6a850513          	addi	a0,a0,1704 # 116a8 <__FRAME_END__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <main>:
   10180:	fe010113          	addi	sp,sp,-32
   10184:	00813c23          	sd	s0,24(sp)
   10188:	02010413          	addi	s0,sp,32
   1018c:	fe042623          	sw	zero,-20(s0)
   10190:	fe042623          	sw	zero,-20(s0)
   10194:	0540006f          	j	101e8 <main+0x68>
   10198:	000117b7          	lui	a5,0x11
   1019c:	6c878713          	addi	a4,a5,1736 # 116c8 <result>
   101a0:	fec42783          	lw	a5,-20(s0)
   101a4:	00279793          	slli	a5,a5,0x2
   101a8:	00f707b3          	add	a5,a4,a5
   101ac:	0007a783          	lw	a5,0(a5)
   101b0:	00078713          	mv	a4,a5
   101b4:	00070793          	mv	a5,a4
   101b8:	0027979b          	slliw	a5,a5,0x2
   101bc:	00e787bb          	addw	a5,a5,a4
   101c0:	0007871b          	sext.w	a4,a5
   101c4:	000117b7          	lui	a5,0x11
   101c8:	6c878693          	addi	a3,a5,1736 # 116c8 <result>
   101cc:	fec42783          	lw	a5,-20(s0)
   101d0:	00279793          	slli	a5,a5,0x2
   101d4:	00f687b3          	add	a5,a3,a5
   101d8:	00e7a023          	sw	a4,0(a5)
   101dc:	fec42783          	lw	a5,-20(s0)
   101e0:	0017879b          	addiw	a5,a5,1
   101e4:	fef42623          	sw	a5,-20(s0)
   101e8:	fec42783          	lw	a5,-20(s0)
   101ec:	0007871b          	sext.w	a4,a5
   101f0:	00400793          	li	a5,4
   101f4:	fae7d2e3          	bge	a5,a4,10198 <main+0x18>
   101f8:	00500793          	li	a5,5
   101fc:	fef42623          	sw	a5,-20(s0)
   10200:	0500006f          	j	10250 <main+0xd0>
   10204:	000117b7          	lui	a5,0x11
   10208:	6c878713          	addi	a4,a5,1736 # 116c8 <result>
   1020c:	fec42783          	lw	a5,-20(s0)
   10210:	00279793          	slli	a5,a5,0x2
   10214:	00f707b3          	add	a5,a4,a5
   10218:	0007a783          	lw	a5,0(a5)
   1021c:	01f7d71b          	srliw	a4,a5,0x1f
   10220:	00f707bb          	addw	a5,a4,a5
   10224:	4017d79b          	sraiw	a5,a5,0x1
   10228:	0007871b          	sext.w	a4,a5
   1022c:	000117b7          	lui	a5,0x11
   10230:	6c878693          	addi	a3,a5,1736 # 116c8 <result>
   10234:	fec42783          	lw	a5,-20(s0)
   10238:	00279793          	slli	a5,a5,0x2
   1023c:	00f687b3          	add	a5,a3,a5
   10240:	00e7a023          	sw	a4,0(a5)
   10244:	fec42783          	lw	a5,-20(s0)
   10248:	0017879b          	addiw	a5,a5,1
   1024c:	fef42623          	sw	a5,-20(s0)
   10250:	fec42783          	lw	a5,-20(s0)
   10254:	0007871b          	sext.w	a4,a5
   10258:	00900793          	li	a5,9
   1025c:	fae7d4e3          	bge	a5,a4,10204 <main+0x84>
   10260:	00000793          	li	a5,0
   10264:	00078513          	mv	a0,a5
   10268:	01813403          	ld	s0,24(sp)
   1026c:	02010113          	addi	sp,sp,32
   10270:	00008067          	ret

0000000000010274 <exit>:
   10274:	ff010113          	addi	sp,sp,-16
   10278:	00000593          	li	a1,0
   1027c:	00813023          	sd	s0,0(sp)
   10280:	00113423          	sd	ra,8(sp)
   10284:	00050413          	mv	s0,a0
   10288:	194000ef          	jal	ra,1041c <__call_exitprocs>
   1028c:	f701b503          	ld	a0,-144(gp) # 11e38 <_global_impure_ptr>
   10290:	05853783          	ld	a5,88(a0)
   10294:	00078463          	beqz	a5,1029c <exit+0x28>
   10298:	000780e7          	jalr	a5
   1029c:	00040513          	mv	a0,s0
   102a0:	3bc000ef          	jal	ra,1065c <_exit>

00000000000102a4 <__libc_init_array>:
   102a4:	fe010113          	addi	sp,sp,-32
   102a8:	00813823          	sd	s0,16(sp)
   102ac:	01213023          	sd	s2,0(sp)
   102b0:	00011437          	lui	s0,0x11
   102b4:	00011937          	lui	s2,0x11
   102b8:	6ac40793          	addi	a5,s0,1708 # 116ac <__preinit_array_end>
   102bc:	6ac90913          	addi	s2,s2,1708 # 116ac <__preinit_array_end>
   102c0:	40f90933          	sub	s2,s2,a5
   102c4:	00113c23          	sd	ra,24(sp)
   102c8:	00913423          	sd	s1,8(sp)
   102cc:	40395913          	srai	s2,s2,0x3
   102d0:	02090063          	beqz	s2,102f0 <__libc_init_array+0x4c>
   102d4:	6ac40413          	addi	s0,s0,1708
   102d8:	00000493          	li	s1,0
   102dc:	00043783          	ld	a5,0(s0)
   102e0:	00148493          	addi	s1,s1,1
   102e4:	00840413          	addi	s0,s0,8
   102e8:	000780e7          	jalr	a5
   102ec:	fe9918e3          	bne	s2,s1,102dc <__libc_init_array+0x38>
   102f0:	00011437          	lui	s0,0x11
   102f4:	00011937          	lui	s2,0x11
   102f8:	6b040793          	addi	a5,s0,1712 # 116b0 <__init_array_start>
   102fc:	6c090913          	addi	s2,s2,1728 # 116c0 <__do_global_dtors_aux_fini_array_entry>
   10300:	40f90933          	sub	s2,s2,a5
   10304:	40395913          	srai	s2,s2,0x3
   10308:	02090063          	beqz	s2,10328 <__libc_init_array+0x84>
   1030c:	6b040413          	addi	s0,s0,1712
   10310:	00000493          	li	s1,0
   10314:	00043783          	ld	a5,0(s0)
   10318:	00148493          	addi	s1,s1,1
   1031c:	00840413          	addi	s0,s0,8
   10320:	000780e7          	jalr	a5
   10324:	fe9918e3          	bne	s2,s1,10314 <__libc_init_array+0x70>
   10328:	01813083          	ld	ra,24(sp)
   1032c:	01013403          	ld	s0,16(sp)
   10330:	00813483          	ld	s1,8(sp)
   10334:	00013903          	ld	s2,0(sp)
   10338:	02010113          	addi	sp,sp,32
   1033c:	00008067          	ret

0000000000010340 <memset>:
   10340:	00f00313          	li	t1,15
   10344:	00050713          	mv	a4,a0
   10348:	02c37a63          	bgeu	t1,a2,1037c <memset+0x3c>
   1034c:	00f77793          	andi	a5,a4,15
   10350:	0a079063          	bnez	a5,103f0 <memset+0xb0>
   10354:	06059e63          	bnez	a1,103d0 <memset+0x90>
   10358:	ff067693          	andi	a3,a2,-16
   1035c:	00f67613          	andi	a2,a2,15
   10360:	00e686b3          	add	a3,a3,a4
   10364:	00b73023          	sd	a1,0(a4)
   10368:	00b73423          	sd	a1,8(a4)
   1036c:	01070713          	addi	a4,a4,16
   10370:	fed76ae3          	bltu	a4,a3,10364 <memset+0x24>
   10374:	00061463          	bnez	a2,1037c <memset+0x3c>
   10378:	00008067          	ret
   1037c:	40c306b3          	sub	a3,t1,a2
   10380:	00269693          	slli	a3,a3,0x2
   10384:	00000297          	auipc	t0,0x0
   10388:	005686b3          	add	a3,a3,t0
   1038c:	00c68067          	jr	12(a3)
   10390:	00b70723          	sb	a1,14(a4)
   10394:	00b706a3          	sb	a1,13(a4)
   10398:	00b70623          	sb	a1,12(a4)
   1039c:	00b705a3          	sb	a1,11(a4)
   103a0:	00b70523          	sb	a1,10(a4)
   103a4:	00b704a3          	sb	a1,9(a4)
   103a8:	00b70423          	sb	a1,8(a4)
   103ac:	00b703a3          	sb	a1,7(a4)
   103b0:	00b70323          	sb	a1,6(a4)
   103b4:	00b702a3          	sb	a1,5(a4)
   103b8:	00b70223          	sb	a1,4(a4)
   103bc:	00b701a3          	sb	a1,3(a4)
   103c0:	00b70123          	sb	a1,2(a4)
   103c4:	00b700a3          	sb	a1,1(a4)
   103c8:	00b70023          	sb	a1,0(a4)
   103cc:	00008067          	ret
   103d0:	0ff5f593          	andi	a1,a1,255
   103d4:	00859693          	slli	a3,a1,0x8
   103d8:	00d5e5b3          	or	a1,a1,a3
   103dc:	01059693          	slli	a3,a1,0x10
   103e0:	00d5e5b3          	or	a1,a1,a3
   103e4:	02059693          	slli	a3,a1,0x20
   103e8:	00d5e5b3          	or	a1,a1,a3
   103ec:	f6dff06f          	j	10358 <memset+0x18>
   103f0:	00279693          	slli	a3,a5,0x2
   103f4:	00000297          	auipc	t0,0x0
   103f8:	005686b3          	add	a3,a3,t0
   103fc:	00008293          	mv	t0,ra
   10400:	f98680e7          	jalr	-104(a3)
   10404:	00028093          	mv	ra,t0
   10408:	ff078793          	addi	a5,a5,-16
   1040c:	40f70733          	sub	a4,a4,a5
   10410:	00f60633          	add	a2,a2,a5
   10414:	f6c374e3          	bgeu	t1,a2,1037c <memset+0x3c>
   10418:	f3dff06f          	j	10354 <memset+0x14>

000000000001041c <__call_exitprocs>:
   1041c:	fb010113          	addi	sp,sp,-80
   10420:	03413023          	sd	s4,32(sp)
   10424:	f701ba03          	ld	s4,-144(gp) # 11e38 <_global_impure_ptr>
   10428:	03213823          	sd	s2,48(sp)
   1042c:	04113423          	sd	ra,72(sp)
   10430:	1f8a3903          	ld	s2,504(s4)
   10434:	04813023          	sd	s0,64(sp)
   10438:	02913c23          	sd	s1,56(sp)
   1043c:	03313423          	sd	s3,40(sp)
   10440:	01513c23          	sd	s5,24(sp)
   10444:	01613823          	sd	s6,16(sp)
   10448:	01713423          	sd	s7,8(sp)
   1044c:	01813023          	sd	s8,0(sp)
   10450:	04090063          	beqz	s2,10490 <__call_exitprocs+0x74>
   10454:	00050b13          	mv	s6,a0
   10458:	00058b93          	mv	s7,a1
   1045c:	00100a93          	li	s5,1
   10460:	fff00993          	li	s3,-1
   10464:	00892483          	lw	s1,8(s2)
   10468:	fff4841b          	addiw	s0,s1,-1
   1046c:	02044263          	bltz	s0,10490 <__call_exitprocs+0x74>
   10470:	00349493          	slli	s1,s1,0x3
   10474:	009904b3          	add	s1,s2,s1
   10478:	040b8463          	beqz	s7,104c0 <__call_exitprocs+0xa4>
   1047c:	2084b783          	ld	a5,520(s1)
   10480:	05778063          	beq	a5,s7,104c0 <__call_exitprocs+0xa4>
   10484:	fff4041b          	addiw	s0,s0,-1
   10488:	ff848493          	addi	s1,s1,-8
   1048c:	ff3416e3          	bne	s0,s3,10478 <__call_exitprocs+0x5c>
   10490:	04813083          	ld	ra,72(sp)
   10494:	04013403          	ld	s0,64(sp)
   10498:	03813483          	ld	s1,56(sp)
   1049c:	03013903          	ld	s2,48(sp)
   104a0:	02813983          	ld	s3,40(sp)
   104a4:	02013a03          	ld	s4,32(sp)
   104a8:	01813a83          	ld	s5,24(sp)
   104ac:	01013b03          	ld	s6,16(sp)
   104b0:	00813b83          	ld	s7,8(sp)
   104b4:	00013c03          	ld	s8,0(sp)
   104b8:	05010113          	addi	sp,sp,80
   104bc:	00008067          	ret
   104c0:	00892783          	lw	a5,8(s2)
   104c4:	0084b703          	ld	a4,8(s1)
   104c8:	fff7879b          	addiw	a5,a5,-1
   104cc:	06878263          	beq	a5,s0,10530 <__call_exitprocs+0x114>
   104d0:	0004b423          	sd	zero,8(s1)
   104d4:	fa0708e3          	beqz	a4,10484 <__call_exitprocs+0x68>
   104d8:	31092783          	lw	a5,784(s2)
   104dc:	008a96bb          	sllw	a3,s5,s0
   104e0:	00892c03          	lw	s8,8(s2)
   104e4:	00d7f7b3          	and	a5,a5,a3
   104e8:	0007879b          	sext.w	a5,a5
   104ec:	02079263          	bnez	a5,10510 <__call_exitprocs+0xf4>
   104f0:	000700e7          	jalr	a4
   104f4:	00892703          	lw	a4,8(s2)
   104f8:	1f8a3783          	ld	a5,504(s4)
   104fc:	01871463          	bne	a4,s8,10504 <__call_exitprocs+0xe8>
   10500:	f8f902e3          	beq	s2,a5,10484 <__call_exitprocs+0x68>
   10504:	f80786e3          	beqz	a5,10490 <__call_exitprocs+0x74>
   10508:	00078913          	mv	s2,a5
   1050c:	f59ff06f          	j	10464 <__call_exitprocs+0x48>
   10510:	31492783          	lw	a5,788(s2)
   10514:	1084b583          	ld	a1,264(s1)
   10518:	00d7f7b3          	and	a5,a5,a3
   1051c:	0007879b          	sext.w	a5,a5
   10520:	00079c63          	bnez	a5,10538 <__call_exitprocs+0x11c>
   10524:	000b0513          	mv	a0,s6
   10528:	000700e7          	jalr	a4
   1052c:	fc9ff06f          	j	104f4 <__call_exitprocs+0xd8>
   10530:	00892423          	sw	s0,8(s2)
   10534:	fa1ff06f          	j	104d4 <__call_exitprocs+0xb8>
   10538:	00058513          	mv	a0,a1
   1053c:	000700e7          	jalr	a4
   10540:	fb5ff06f          	j	104f4 <__call_exitprocs+0xd8>

0000000000010544 <__libc_fini_array>:
   10544:	fe010113          	addi	sp,sp,-32
   10548:	00813823          	sd	s0,16(sp)
   1054c:	000117b7          	lui	a5,0x11
   10550:	00011437          	lui	s0,0x11
   10554:	6c040413          	addi	s0,s0,1728 # 116c0 <__do_global_dtors_aux_fini_array_entry>
   10558:	6c878793          	addi	a5,a5,1736 # 116c8 <result>
   1055c:	408787b3          	sub	a5,a5,s0
   10560:	00913423          	sd	s1,8(sp)
   10564:	00113c23          	sd	ra,24(sp)
   10568:	4037d493          	srai	s1,a5,0x3
   1056c:	02048063          	beqz	s1,1058c <__libc_fini_array+0x48>
   10570:	ff878793          	addi	a5,a5,-8
   10574:	00878433          	add	s0,a5,s0
   10578:	00043783          	ld	a5,0(s0)
   1057c:	fff48493          	addi	s1,s1,-1
   10580:	ff840413          	addi	s0,s0,-8
   10584:	000780e7          	jalr	a5
   10588:	fe0498e3          	bnez	s1,10578 <__libc_fini_array+0x34>
   1058c:	01813083          	ld	ra,24(sp)
   10590:	01013403          	ld	s0,16(sp)
   10594:	00813483          	ld	s1,8(sp)
   10598:	02010113          	addi	sp,sp,32
   1059c:	00008067          	ret

00000000000105a0 <atexit>:
   105a0:	00050593          	mv	a1,a0
   105a4:	00000693          	li	a3,0
   105a8:	00000613          	li	a2,0
   105ac:	00000513          	li	a0,0
   105b0:	0040006f          	j	105b4 <__register_exitproc>

00000000000105b4 <__register_exitproc>:
   105b4:	f701b703          	ld	a4,-144(gp) # 11e38 <_global_impure_ptr>
   105b8:	1f873783          	ld	a5,504(a4)
   105bc:	06078063          	beqz	a5,1061c <__register_exitproc+0x68>
   105c0:	0087a703          	lw	a4,8(a5)
   105c4:	01f00813          	li	a6,31
   105c8:	08e84663          	blt	a6,a4,10654 <__register_exitproc+0xa0>
   105cc:	02050863          	beqz	a0,105fc <__register_exitproc+0x48>
   105d0:	00371813          	slli	a6,a4,0x3
   105d4:	01078833          	add	a6,a5,a6
   105d8:	10c83823          	sd	a2,272(a6)
   105dc:	3107a883          	lw	a7,784(a5)
   105e0:	00100613          	li	a2,1
   105e4:	00e6163b          	sllw	a2,a2,a4
   105e8:	00c8e8b3          	or	a7,a7,a2
   105ec:	3117a823          	sw	a7,784(a5)
   105f0:	20d83823          	sd	a3,528(a6)
   105f4:	00200693          	li	a3,2
   105f8:	02d50863          	beq	a0,a3,10628 <__register_exitproc+0x74>
   105fc:	00270693          	addi	a3,a4,2
   10600:	00369693          	slli	a3,a3,0x3
   10604:	0017071b          	addiw	a4,a4,1
   10608:	00e7a423          	sw	a4,8(a5)
   1060c:	00d787b3          	add	a5,a5,a3
   10610:	00b7b023          	sd	a1,0(a5)
   10614:	00000513          	li	a0,0
   10618:	00008067          	ret
   1061c:	20070793          	addi	a5,a4,512
   10620:	1ef73c23          	sd	a5,504(a4)
   10624:	f9dff06f          	j	105c0 <__register_exitproc+0xc>
   10628:	3147a683          	lw	a3,788(a5)
   1062c:	00000513          	li	a0,0
   10630:	00c6e633          	or	a2,a3,a2
   10634:	00270693          	addi	a3,a4,2
   10638:	00369693          	slli	a3,a3,0x3
   1063c:	0017071b          	addiw	a4,a4,1
   10640:	30c7aa23          	sw	a2,788(a5)
   10644:	00e7a423          	sw	a4,8(a5)
   10648:	00d787b3          	add	a5,a5,a3
   1064c:	00b7b023          	sd	a1,0(a5)
   10650:	00008067          	ret
   10654:	fff00513          	li	a0,-1
   10658:	00008067          	ret

000000000001065c <_exit>:
   1065c:	00000593          	li	a1,0
   10660:	00000613          	li	a2,0
   10664:	00000693          	li	a3,0
   10668:	00000713          	li	a4,0
   1066c:	00000793          	li	a5,0
   10670:	05d00893          	li	a7,93
   10674:	00000073          	ecall
   10678:	00054463          	bltz	a0,10680 <_exit+0x24>
   1067c:	0000006f          	j	1067c <_exit+0x20>
   10680:	ff010113          	addi	sp,sp,-16
   10684:	00813023          	sd	s0,0(sp)
   10688:	00050413          	mv	s0,a0
   1068c:	00113423          	sd	ra,8(sp)
   10690:	4080043b          	negw	s0,s0
   10694:	00c000ef          	jal	ra,106a0 <__errno>
   10698:	00852023          	sw	s0,0(a0)
   1069c:	0000006f          	j	1069c <_exit+0x40>

00000000000106a0 <__errno>:
   106a0:	f801b503          	ld	a0,-128(gp) # 11e48 <_impure_ptr>
   106a4:	00008067          	ret

Disassembly of section .eh_frame:

00000000000116a8 <__FRAME_END__>:
   116a8:	0000                	unimp
	...

Disassembly of section .init_array:

00000000000116b0 <__init_array_start>:
   116b0:	00b0                	addi	a2,sp,72
   116b2:	0001                	nop
   116b4:	0000                	unimp
	...

00000000000116b8 <__frame_dummy_init_array_entry>:
   116b8:	0160                	addi	s0,sp,140
   116ba:	0001                	nop
   116bc:	0000                	unimp
	...

Disassembly of section .fini_array:

00000000000116c0 <__do_global_dtors_aux_fini_array_entry>:
   116c0:	0114                	addi	a3,sp,128
   116c2:	0001                	nop
   116c4:	0000                	unimp
	...

Disassembly of section .data:

00000000000116c8 <result>:
   116c8:	0001                	nop
   116ca:	0000                	unimp
   116cc:	0002                	c.slli64	zero
   116ce:	0000                	unimp
   116d0:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
   116d4:	0004                	0x4
   116d6:	0000                	unimp
   116d8:	0005                	c.nop	1
   116da:	0000                	unimp
   116dc:	0002                	c.slli64	zero
   116de:	0000                	unimp
   116e0:	0004                	0x4
   116e2:	0000                	unimp
   116e4:	0006                	c.slli	zero,0x1
   116e6:	0000                	unimp
   116e8:	0008                	0x8
   116ea:	0000                	unimp
   116ec:	000a                	c.slli	zero,0x2
	...

00000000000116f0 <impure_data>:
	...
   116f8:	1c28                	addi	a0,sp,568
   116fa:	0001                	nop
   116fc:	0000                	unimp
   116fe:	0000                	unimp
   11700:	1cd8                	addi	a4,sp,628
   11702:	0001                	nop
   11704:	0000                	unimp
   11706:	0000                	unimp
   11708:	1d88                	addi	a0,sp,752
   1170a:	0001                	nop
	...
   117d8:	0001                	nop
   117da:	0000                	unimp
   117dc:	0000                	unimp
   117de:	0000                	unimp
   117e0:	330e                	fld	ft6,224(sp)
   117e2:	abcd                	j	11dd4 <impure_data+0x6e4>
   117e4:	1234                	addi	a3,sp,296
   117e6:	e66d                	bnez	a2,118d0 <impure_data+0x1e0>
   117e8:	deec                	sw	a1,124(a3)
   117ea:	0005                	c.nop	1
   117ec:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011e38 <_global_impure_ptr>:
   11e38:	16f0                	addi	a2,sp,876
   11e3a:	0001                	nop
   11e3c:	0000                	unimp
	...

0000000000011e40 <__dso_handle>:
	...

0000000000011e48 <_impure_ptr>:
   11e48:	16f0                	addi	a2,sp,876
   11e4a:	0001                	nop
   11e4c:	0000                	unimp
	...

Disassembly of section .bss:

0000000000011e50 <completed.5525>:
	...

0000000000011e58 <object.5530>:
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

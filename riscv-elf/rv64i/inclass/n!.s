
n!.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	52850513          	addi	a0,a0,1320 # 10528 <__libc_fini_array>
   100c0:	4c40006f          	j	10584 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00002197          	auipc	gp,0x2
   100cc:	de018193          	addi	gp,gp,-544 # 11ea8 <__global_pointer$>
   100d0:	f6018513          	addi	a0,gp,-160 # 11e08 <result>
   100d4:	fa018613          	addi	a2,gp,-96 # 11e48 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	244000ef          	jal	ra,10324 <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	4a050513          	addi	a0,a0,1184 # 10584 <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	43850513          	addi	a0,a0,1080 # 10528 <__libc_fini_array>
   100f8:	48c000ef          	jal	ra,10584 <atexit>
   100fc:	18c000ef          	jal	ra,10288 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	0ec000ef          	jal	ra,101f8 <main>
   10110:	1480006f          	j	10258 <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	f681c703          	lbu	a4,-152(gp) # 11e10 <completed.5525>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00011537          	lui	a0,0x11
   10138:	68c50513          	addi	a0,a0,1676 # 1168c <__FRAME_END__>
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	f6f18423          	sb	a5,-152(gp) # 11e10 <completed.5525>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00011537          	lui	a0,0x11
   1016c:	f7018593          	addi	a1,gp,-144 # 11e18 <object.5530>
   10170:	68c50513          	addi	a0,a0,1676 # 1168c <__FRAME_END__>
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
   101ac:	0380006f          	j	101e4 <cal_n+0x64>
   101b0:	fec42783          	lw	a5,-20(s0)
   101b4:	fff7879b          	addiw	a5,a5,-1
   101b8:	0007879b          	sext.w	a5,a5
   101bc:	00078513          	mv	a0,a5
   101c0:	fc1ff0ef          	jal	ra,10180 <cal_n>
   101c4:	00050793          	mv	a5,a0
   101c8:	00078713          	mv	a4,a5
   101cc:	fec42783          	lw	a5,-20(s0)
   101d0:	00078593          	mv	a1,a5
   101d4:	00070513          	mv	a0,a4
   101d8:	05c000ef          	jal	ra,10234 <__muldi3>
   101dc:	00050793          	mv	a5,a0
   101e0:	0007879b          	sext.w	a5,a5
   101e4:	00078513          	mv	a0,a5
   101e8:	01813083          	ld	ra,24(sp)
   101ec:	01013403          	ld	s0,16(sp)
   101f0:	02010113          	addi	sp,sp,32
   101f4:	00008067          	ret

00000000000101f8 <main>:
   101f8:	ff010113          	addi	sp,sp,-16
   101fc:	00113423          	sd	ra,8(sp)
   10200:	00813023          	sd	s0,0(sp)
   10204:	01010413          	addi	s0,sp,16
   10208:	00a00513          	li	a0,10
   1020c:	f75ff0ef          	jal	ra,10180 <cal_n>
   10210:	00050793          	mv	a5,a0
   10214:	00078713          	mv	a4,a5
   10218:	f6e1a023          	sw	a4,-160(gp) # 11e08 <result>
   1021c:	00000793          	li	a5,0
   10220:	00078513          	mv	a0,a5
   10224:	00813083          	ld	ra,8(sp)
   10228:	00013403          	ld	s0,0(sp)
   1022c:	01010113          	addi	sp,sp,16
   10230:	00008067          	ret

0000000000010234 <__muldi3>:
   10234:	00050613          	mv	a2,a0
   10238:	00000513          	li	a0,0
   1023c:	0015f693          	andi	a3,a1,1
   10240:	00068463          	beqz	a3,10248 <__muldi3+0x14>
   10244:	00c50533          	add	a0,a0,a2
   10248:	0015d593          	srli	a1,a1,0x1
   1024c:	00161613          	slli	a2,a2,0x1
   10250:	fe0596e3          	bnez	a1,1023c <__muldi3+0x8>
   10254:	00008067          	ret

0000000000010258 <exit>:
   10258:	ff010113          	addi	sp,sp,-16
   1025c:	00000593          	li	a1,0
   10260:	00813023          	sd	s0,0(sp)
   10264:	00113423          	sd	ra,8(sp)
   10268:	00050413          	mv	s0,a0
   1026c:	194000ef          	jal	ra,10400 <__call_exitprocs>
   10270:	f481b503          	ld	a0,-184(gp) # 11df0 <_global_impure_ptr>
   10274:	05853783          	ld	a5,88(a0)
   10278:	00078463          	beqz	a5,10280 <exit+0x28>
   1027c:	000780e7          	jalr	a5
   10280:	00040513          	mv	a0,s0
   10284:	3bc000ef          	jal	ra,10640 <_exit>

0000000000010288 <__libc_init_array>:
   10288:	fe010113          	addi	sp,sp,-32
   1028c:	00813823          	sd	s0,16(sp)
   10290:	01213023          	sd	s2,0(sp)
   10294:	00011437          	lui	s0,0x11
   10298:	00011937          	lui	s2,0x11
   1029c:	69040793          	addi	a5,s0,1680 # 11690 <__init_array_start>
   102a0:	69090913          	addi	s2,s2,1680 # 11690 <__init_array_start>
   102a4:	40f90933          	sub	s2,s2,a5
   102a8:	00113c23          	sd	ra,24(sp)
   102ac:	00913423          	sd	s1,8(sp)
   102b0:	40395913          	srai	s2,s2,0x3
   102b4:	02090063          	beqz	s2,102d4 <__libc_init_array+0x4c>
   102b8:	69040413          	addi	s0,s0,1680
   102bc:	00000493          	li	s1,0
   102c0:	00043783          	ld	a5,0(s0)
   102c4:	00148493          	addi	s1,s1,1
   102c8:	00840413          	addi	s0,s0,8
   102cc:	000780e7          	jalr	a5
   102d0:	fe9918e3          	bne	s2,s1,102c0 <__libc_init_array+0x38>
   102d4:	00011437          	lui	s0,0x11
   102d8:	00011937          	lui	s2,0x11
   102dc:	69040793          	addi	a5,s0,1680 # 11690 <__init_array_start>
   102e0:	6a090913          	addi	s2,s2,1696 # 116a0 <__do_global_dtors_aux_fini_array_entry>
   102e4:	40f90933          	sub	s2,s2,a5
   102e8:	40395913          	srai	s2,s2,0x3
   102ec:	02090063          	beqz	s2,1030c <__libc_init_array+0x84>
   102f0:	69040413          	addi	s0,s0,1680
   102f4:	00000493          	li	s1,0
   102f8:	00043783          	ld	a5,0(s0)
   102fc:	00148493          	addi	s1,s1,1
   10300:	00840413          	addi	s0,s0,8
   10304:	000780e7          	jalr	a5
   10308:	fe9918e3          	bne	s2,s1,102f8 <__libc_init_array+0x70>
   1030c:	01813083          	ld	ra,24(sp)
   10310:	01013403          	ld	s0,16(sp)
   10314:	00813483          	ld	s1,8(sp)
   10318:	00013903          	ld	s2,0(sp)
   1031c:	02010113          	addi	sp,sp,32
   10320:	00008067          	ret

0000000000010324 <memset>:
   10324:	00f00313          	li	t1,15
   10328:	00050713          	mv	a4,a0
   1032c:	02c37a63          	bgeu	t1,a2,10360 <memset+0x3c>
   10330:	00f77793          	andi	a5,a4,15
   10334:	0a079063          	bnez	a5,103d4 <memset+0xb0>
   10338:	06059e63          	bnez	a1,103b4 <memset+0x90>
   1033c:	ff067693          	andi	a3,a2,-16
   10340:	00f67613          	andi	a2,a2,15
   10344:	00e686b3          	add	a3,a3,a4
   10348:	00b73023          	sd	a1,0(a4)
   1034c:	00b73423          	sd	a1,8(a4)
   10350:	01070713          	addi	a4,a4,16
   10354:	fed76ae3          	bltu	a4,a3,10348 <memset+0x24>
   10358:	00061463          	bnez	a2,10360 <memset+0x3c>
   1035c:	00008067          	ret
   10360:	40c306b3          	sub	a3,t1,a2
   10364:	00269693          	slli	a3,a3,0x2
   10368:	00000297          	auipc	t0,0x0
   1036c:	005686b3          	add	a3,a3,t0
   10370:	00c68067          	jr	12(a3)
   10374:	00b70723          	sb	a1,14(a4)
   10378:	00b706a3          	sb	a1,13(a4)
   1037c:	00b70623          	sb	a1,12(a4)
   10380:	00b705a3          	sb	a1,11(a4)
   10384:	00b70523          	sb	a1,10(a4)
   10388:	00b704a3          	sb	a1,9(a4)
   1038c:	00b70423          	sb	a1,8(a4)
   10390:	00b703a3          	sb	a1,7(a4)
   10394:	00b70323          	sb	a1,6(a4)
   10398:	00b702a3          	sb	a1,5(a4)
   1039c:	00b70223          	sb	a1,4(a4)
   103a0:	00b701a3          	sb	a1,3(a4)
   103a4:	00b70123          	sb	a1,2(a4)
   103a8:	00b700a3          	sb	a1,1(a4)
   103ac:	00b70023          	sb	a1,0(a4)
   103b0:	00008067          	ret
   103b4:	0ff5f593          	andi	a1,a1,255
   103b8:	00859693          	slli	a3,a1,0x8
   103bc:	00d5e5b3          	or	a1,a1,a3
   103c0:	01059693          	slli	a3,a1,0x10
   103c4:	00d5e5b3          	or	a1,a1,a3
   103c8:	02059693          	slli	a3,a1,0x20
   103cc:	00d5e5b3          	or	a1,a1,a3
   103d0:	f6dff06f          	j	1033c <memset+0x18>
   103d4:	00279693          	slli	a3,a5,0x2
   103d8:	00000297          	auipc	t0,0x0
   103dc:	005686b3          	add	a3,a3,t0
   103e0:	00008293          	mv	t0,ra
   103e4:	f98680e7          	jalr	-104(a3)
   103e8:	00028093          	mv	ra,t0
   103ec:	ff078793          	addi	a5,a5,-16
   103f0:	40f70733          	sub	a4,a4,a5
   103f4:	00f60633          	add	a2,a2,a5
   103f8:	f6c374e3          	bgeu	t1,a2,10360 <memset+0x3c>
   103fc:	f3dff06f          	j	10338 <memset+0x14>

0000000000010400 <__call_exitprocs>:
   10400:	fb010113          	addi	sp,sp,-80
   10404:	03413023          	sd	s4,32(sp)
   10408:	f481ba03          	ld	s4,-184(gp) # 11df0 <_global_impure_ptr>
   1040c:	03213823          	sd	s2,48(sp)
   10410:	04113423          	sd	ra,72(sp)
   10414:	1f8a3903          	ld	s2,504(s4)
   10418:	04813023          	sd	s0,64(sp)
   1041c:	02913c23          	sd	s1,56(sp)
   10420:	03313423          	sd	s3,40(sp)
   10424:	01513c23          	sd	s5,24(sp)
   10428:	01613823          	sd	s6,16(sp)
   1042c:	01713423          	sd	s7,8(sp)
   10430:	01813023          	sd	s8,0(sp)
   10434:	04090063          	beqz	s2,10474 <__call_exitprocs+0x74>
   10438:	00050b13          	mv	s6,a0
   1043c:	00058b93          	mv	s7,a1
   10440:	00100a93          	li	s5,1
   10444:	fff00993          	li	s3,-1
   10448:	00892483          	lw	s1,8(s2)
   1044c:	fff4841b          	addiw	s0,s1,-1
   10450:	02044263          	bltz	s0,10474 <__call_exitprocs+0x74>
   10454:	00349493          	slli	s1,s1,0x3
   10458:	009904b3          	add	s1,s2,s1
   1045c:	040b8463          	beqz	s7,104a4 <__call_exitprocs+0xa4>
   10460:	2084b783          	ld	a5,520(s1)
   10464:	05778063          	beq	a5,s7,104a4 <__call_exitprocs+0xa4>
   10468:	fff4041b          	addiw	s0,s0,-1
   1046c:	ff848493          	addi	s1,s1,-8
   10470:	ff3416e3          	bne	s0,s3,1045c <__call_exitprocs+0x5c>
   10474:	04813083          	ld	ra,72(sp)
   10478:	04013403          	ld	s0,64(sp)
   1047c:	03813483          	ld	s1,56(sp)
   10480:	03013903          	ld	s2,48(sp)
   10484:	02813983          	ld	s3,40(sp)
   10488:	02013a03          	ld	s4,32(sp)
   1048c:	01813a83          	ld	s5,24(sp)
   10490:	01013b03          	ld	s6,16(sp)
   10494:	00813b83          	ld	s7,8(sp)
   10498:	00013c03          	ld	s8,0(sp)
   1049c:	05010113          	addi	sp,sp,80
   104a0:	00008067          	ret
   104a4:	00892783          	lw	a5,8(s2)
   104a8:	0084b703          	ld	a4,8(s1)
   104ac:	fff7879b          	addiw	a5,a5,-1
   104b0:	06878263          	beq	a5,s0,10514 <__call_exitprocs+0x114>
   104b4:	0004b423          	sd	zero,8(s1)
   104b8:	fa0708e3          	beqz	a4,10468 <__call_exitprocs+0x68>
   104bc:	31092783          	lw	a5,784(s2)
   104c0:	008a96bb          	sllw	a3,s5,s0
   104c4:	00892c03          	lw	s8,8(s2)
   104c8:	00d7f7b3          	and	a5,a5,a3
   104cc:	0007879b          	sext.w	a5,a5
   104d0:	02079263          	bnez	a5,104f4 <__call_exitprocs+0xf4>
   104d4:	000700e7          	jalr	a4
   104d8:	00892703          	lw	a4,8(s2)
   104dc:	1f8a3783          	ld	a5,504(s4)
   104e0:	01871463          	bne	a4,s8,104e8 <__call_exitprocs+0xe8>
   104e4:	f8f902e3          	beq	s2,a5,10468 <__call_exitprocs+0x68>
   104e8:	f80786e3          	beqz	a5,10474 <__call_exitprocs+0x74>
   104ec:	00078913          	mv	s2,a5
   104f0:	f59ff06f          	j	10448 <__call_exitprocs+0x48>
   104f4:	31492783          	lw	a5,788(s2)
   104f8:	1084b583          	ld	a1,264(s1)
   104fc:	00d7f7b3          	and	a5,a5,a3
   10500:	0007879b          	sext.w	a5,a5
   10504:	00079c63          	bnez	a5,1051c <__call_exitprocs+0x11c>
   10508:	000b0513          	mv	a0,s6
   1050c:	000700e7          	jalr	a4
   10510:	fc9ff06f          	j	104d8 <__call_exitprocs+0xd8>
   10514:	00892423          	sw	s0,8(s2)
   10518:	fa1ff06f          	j	104b8 <__call_exitprocs+0xb8>
   1051c:	00058513          	mv	a0,a1
   10520:	000700e7          	jalr	a4
   10524:	fb5ff06f          	j	104d8 <__call_exitprocs+0xd8>

0000000000010528 <__libc_fini_array>:
   10528:	fe010113          	addi	sp,sp,-32
   1052c:	00813823          	sd	s0,16(sp)
   10530:	000117b7          	lui	a5,0x11
   10534:	00011437          	lui	s0,0x11
   10538:	6a040413          	addi	s0,s0,1696 # 116a0 <__do_global_dtors_aux_fini_array_entry>
   1053c:	6a878793          	addi	a5,a5,1704 # 116a8 <impure_data>
   10540:	408787b3          	sub	a5,a5,s0
   10544:	00913423          	sd	s1,8(sp)
   10548:	00113c23          	sd	ra,24(sp)
   1054c:	4037d493          	srai	s1,a5,0x3
   10550:	02048063          	beqz	s1,10570 <__libc_fini_array+0x48>
   10554:	ff878793          	addi	a5,a5,-8
   10558:	00878433          	add	s0,a5,s0
   1055c:	00043783          	ld	a5,0(s0)
   10560:	fff48493          	addi	s1,s1,-1
   10564:	ff840413          	addi	s0,s0,-8
   10568:	000780e7          	jalr	a5
   1056c:	fe0498e3          	bnez	s1,1055c <__libc_fini_array+0x34>
   10570:	01813083          	ld	ra,24(sp)
   10574:	01013403          	ld	s0,16(sp)
   10578:	00813483          	ld	s1,8(sp)
   1057c:	02010113          	addi	sp,sp,32
   10580:	00008067          	ret

0000000000010584 <atexit>:
   10584:	00050593          	mv	a1,a0
   10588:	00000693          	li	a3,0
   1058c:	00000613          	li	a2,0
   10590:	00000513          	li	a0,0
   10594:	0040006f          	j	10598 <__register_exitproc>

0000000000010598 <__register_exitproc>:
   10598:	f481b703          	ld	a4,-184(gp) # 11df0 <_global_impure_ptr>
   1059c:	1f873783          	ld	a5,504(a4)
   105a0:	06078063          	beqz	a5,10600 <__register_exitproc+0x68>
   105a4:	0087a703          	lw	a4,8(a5)
   105a8:	01f00813          	li	a6,31
   105ac:	08e84663          	blt	a6,a4,10638 <__register_exitproc+0xa0>
   105b0:	02050863          	beqz	a0,105e0 <__register_exitproc+0x48>
   105b4:	00371813          	slli	a6,a4,0x3
   105b8:	01078833          	add	a6,a5,a6
   105bc:	10c83823          	sd	a2,272(a6)
   105c0:	3107a883          	lw	a7,784(a5)
   105c4:	00100613          	li	a2,1
   105c8:	00e6163b          	sllw	a2,a2,a4
   105cc:	00c8e8b3          	or	a7,a7,a2
   105d0:	3117a823          	sw	a7,784(a5)
   105d4:	20d83823          	sd	a3,528(a6)
   105d8:	00200693          	li	a3,2
   105dc:	02d50863          	beq	a0,a3,1060c <__register_exitproc+0x74>
   105e0:	00270693          	addi	a3,a4,2
   105e4:	00369693          	slli	a3,a3,0x3
   105e8:	0017071b          	addiw	a4,a4,1
   105ec:	00e7a423          	sw	a4,8(a5)
   105f0:	00d787b3          	add	a5,a5,a3
   105f4:	00b7b023          	sd	a1,0(a5)
   105f8:	00000513          	li	a0,0
   105fc:	00008067          	ret
   10600:	20070793          	addi	a5,a4,512
   10604:	1ef73c23          	sd	a5,504(a4)
   10608:	f9dff06f          	j	105a4 <__register_exitproc+0xc>
   1060c:	3147a683          	lw	a3,788(a5)
   10610:	00000513          	li	a0,0
   10614:	00c6e633          	or	a2,a3,a2
   10618:	00270693          	addi	a3,a4,2
   1061c:	00369693          	slli	a3,a3,0x3
   10620:	0017071b          	addiw	a4,a4,1
   10624:	30c7aa23          	sw	a2,788(a5)
   10628:	00e7a423          	sw	a4,8(a5)
   1062c:	00d787b3          	add	a5,a5,a3
   10630:	00b7b023          	sd	a1,0(a5)
   10634:	00008067          	ret
   10638:	fff00513          	li	a0,-1
   1063c:	00008067          	ret

0000000000010640 <_exit>:
   10640:	00000593          	li	a1,0
   10644:	00000613          	li	a2,0
   10648:	00000693          	li	a3,0
   1064c:	00000713          	li	a4,0
   10650:	00000793          	li	a5,0
   10654:	05d00893          	li	a7,93
   10658:	00000073          	ecall
   1065c:	00054463          	bltz	a0,10664 <_exit+0x24>
   10660:	0000006f          	j	10660 <_exit+0x20>
   10664:	ff010113          	addi	sp,sp,-16
   10668:	00813023          	sd	s0,0(sp)
   1066c:	00050413          	mv	s0,a0
   10670:	00113423          	sd	ra,8(sp)
   10674:	4080043b          	negw	s0,s0
   10678:	00c000ef          	jal	ra,10684 <__errno>
   1067c:	00852023          	sw	s0,0(a0)
   10680:	0000006f          	j	10680 <_exit+0x40>

0000000000010684 <__errno>:
   10684:	f581b503          	ld	a0,-168(gp) # 11e00 <_impure_ptr>
   10688:	00008067          	ret

Disassembly of section .eh_frame:

000000000001168c <__FRAME_END__>:
   1168c:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011690 <__init_array_start>:
   11690:	00b0                	addi	a2,sp,72
   11692:	0001                	nop
   11694:	0000                	unimp
	...

0000000000011698 <__frame_dummy_init_array_entry>:
   11698:	0160                	addi	s0,sp,140
   1169a:	0001                	nop
   1169c:	0000                	unimp
	...

Disassembly of section .fini_array:

00000000000116a0 <__do_global_dtors_aux_fini_array_entry>:
   116a0:	0114                	addi	a3,sp,128
   116a2:	0001                	nop
   116a4:	0000                	unimp
	...

Disassembly of section .data:

00000000000116a8 <impure_data>:
	...
   116b0:	1be0                	addi	s0,sp,508
   116b2:	0001                	nop
   116b4:	0000                	unimp
   116b6:	0000                	unimp
   116b8:	1c90                	addi	a2,sp,624
   116ba:	0001                	nop
   116bc:	0000                	unimp
   116be:	0000                	unimp
   116c0:	1d40                	addi	s0,sp,692
   116c2:	0001                	nop
	...
   11790:	0001                	nop
   11792:	0000                	unimp
   11794:	0000                	unimp
   11796:	0000                	unimp
   11798:	330e                	fld	ft6,224(sp)
   1179a:	abcd                	j	11d8c <impure_data+0x6e4>
   1179c:	1234                	addi	a3,sp,296
   1179e:	e66d                	bnez	a2,11888 <impure_data+0x1e0>
   117a0:	deec                	sw	a1,124(a3)
   117a2:	0005                	c.nop	1
   117a4:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011df0 <_global_impure_ptr>:
   11df0:	16a8                	addi	a0,sp,872
   11df2:	0001                	nop
   11df4:	0000                	unimp
	...

0000000000011df8 <__dso_handle>:
	...

0000000000011e00 <_impure_ptr>:
   11e00:	16a8                	addi	a0,sp,872
   11e02:	0001                	nop
   11e04:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000011e08 <result>:
   11e08:	0000                	unimp
	...

Disassembly of section .bss:

0000000000011e10 <completed.5525>:
	...

0000000000011e18 <object.5530>:
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
  10:	0234                	addi	a3,sp,264
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0024                	addi	s1,sp,8
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
  10:	0234                	addi	a3,sp,264
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0258                	addi	a4,sp,260
  1a:	0001                	nop
	...
  24:	00000033          	add	zero,zero,zero
  28:	00a1                	addi	ra,ra,8
  2a:	0000                	unimp
  2c:	8001                	c.srli64	s0

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
  56:	0234                	addi	a3,sp,264
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
  96:	01              	地址 0x0000000000000096 越界。


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
  1e:	69666e6f          	jal	t3,666b4 <__global_pointer$+0x5480c>
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
  4a:	2f65646f          	jal	s0,56340 <__global_pointer$+0x44498>
  4e:	6972                	ld	s2,280(sp)
  50:	2d766373          	csrrsi	t1,0x2d7,12
  54:	2d756e67          	0x2d756e67
  58:	6f74                	ld	a3,216(a4)
  5a:	68636c6f          	jal	s8,366e0 <__global_pointer$+0x24838>
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
  aa:	          	snez	s0,zero

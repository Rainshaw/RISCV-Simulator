
test_syscall.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	63050513          	addi	a0,a0,1584 # 10630 <__libc_fini_array>
   100c0:	5cc0006f          	j	1068c <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00002197          	auipc	gp,0x2
   100cc:	f6818193          	addi	gp,gp,-152 # 12030 <__global_pointer$>
   100d0:	f6018513          	addi	a0,gp,-160 # 11f90 <completed.5525>
   100d4:	f9818613          	addi	a2,gp,-104 # 11fc8 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	34c000ef          	jal	ra,1042c <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	5a850513          	addi	a0,a0,1448 # 1068c <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	54050513          	addi	a0,a0,1344 # 10630 <__libc_fini_array>
   100f8:	594000ef          	jal	ra,1068c <atexit>
   100fc:	294000ef          	jal	ra,10390 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	074000ef          	jal	ra,10180 <main>
   10110:	2500006f          	j	10360 <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	f601c703          	lbu	a4,-160(gp) # 11f90 <completed.5525>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00012537          	lui	a0,0x12
   10138:	81450513          	addi	a0,a0,-2028 # 11814 <__FRAME_END__>
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	f6f18023          	sb	a5,-160(gp) # 11f90 <completed.5525>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00012537          	lui	a0,0x12
   1016c:	f6818593          	addi	a1,gp,-152 # 11f98 <object.5530>
   10170:	81450513          	addi	a0,a0,-2028 # 11814 <__FRAME_END__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <main>:
   10180:	fe010113          	addi	sp,sp,-32
   10184:	00113c23          	sd	ra,24(sp)
   10188:	00813823          	sd	s0,16(sp)
   1018c:	02010413          	addi	s0,sp,32
   10190:	000107b7          	lui	a5,0x10
   10194:	79878513          	addi	a0,a5,1944 # 10798 <__errno+0xc>
   10198:	0f0000ef          	jal	ra,10288 <print_s>
   1019c:	0001e7b7          	lui	a5,0x1e
   101a0:	24078513          	addi	a0,a5,576 # 1e240 <__global_pointer$+0xc210>
   101a4:	0b8000ef          	jal	ra,1025c <print_d>
   101a8:	06100513          	li	a0,97
   101ac:	104000ef          	jal	ra,102b0 <print_c>
   101b0:	06200513          	li	a0,98
   101b4:	0fc000ef          	jal	ra,102b0 <print_c>
   101b8:	06300513          	li	a0,99
   101bc:	0f4000ef          	jal	ra,102b0 <print_c>
   101c0:	00a00513          	li	a0,10
   101c4:	0ec000ef          	jal	ra,102b0 <print_c>
   101c8:	000107b7          	lui	a5,0x10
   101cc:	7b878513          	addi	a0,a5,1976 # 107b8 <__errno+0x2c>
   101d0:	0b8000ef          	jal	ra,10288 <print_s>
   101d4:	15c000ef          	jal	ra,10330 <read_num>
   101d8:	00050793          	mv	a5,a0
   101dc:	fef42623          	sw	a5,-20(s0)
   101e0:	000107b7          	lui	a5,0x10
   101e4:	7d078513          	addi	a0,a5,2000 # 107d0 <__errno+0x44>
   101e8:	0a0000ef          	jal	ra,10288 <print_s>
   101ec:	fec42783          	lw	a5,-20(s0)
   101f0:	00078513          	mv	a0,a5
   101f4:	068000ef          	jal	ra,1025c <print_d>
   101f8:	000107b7          	lui	a5,0x10
   101fc:	7e078513          	addi	a0,a5,2016 # 107e0 <__errno+0x54>
   10200:	088000ef          	jal	ra,10288 <print_s>
   10204:	000107b7          	lui	a5,0x10
   10208:	7e878513          	addi	a0,a5,2024 # 107e8 <__errno+0x5c>
   1020c:	07c000ef          	jal	ra,10288 <print_s>
   10210:	0f0000ef          	jal	ra,10300 <read_char>
   10214:	00050793          	mv	a5,a0
   10218:	fef405a3          	sb	a5,-21(s0)
   1021c:	000117b7          	lui	a5,0x11
   10220:	80078513          	addi	a0,a5,-2048 # 10800 <__errno+0x74>
   10224:	064000ef          	jal	ra,10288 <print_s>
   10228:	feb44783          	lbu	a5,-21(s0)
   1022c:	00078513          	mv	a0,a5
   10230:	080000ef          	jal	ra,102b0 <print_c>
   10234:	000107b7          	lui	a5,0x10
   10238:	7e078513          	addi	a0,a5,2016 # 107e0 <__errno+0x54>
   1023c:	04c000ef          	jal	ra,10288 <print_s>
   10240:	09c000ef          	jal	ra,102dc <exit_proc>
   10244:	00000793          	li	a5,0
   10248:	00078513          	mv	a0,a5
   1024c:	01813083          	ld	ra,24(sp)
   10250:	01013403          	ld	s0,16(sp)
   10254:	02010113          	addi	sp,sp,32
   10258:	00008067          	ret

000000000001025c <print_d>:
   1025c:	fe010113          	addi	sp,sp,-32
   10260:	00813c23          	sd	s0,24(sp)
   10264:	02010413          	addi	s0,sp,32
   10268:	00050793          	mv	a5,a0
   1026c:	fef42623          	sw	a5,-20(s0)
   10270:	00100893          	li	a7,1
   10274:	00000073          	ecall
   10278:	00000013          	nop
   1027c:	01813403          	ld	s0,24(sp)
   10280:	02010113          	addi	sp,sp,32
   10284:	00008067          	ret

0000000000010288 <print_s>:
   10288:	fe010113          	addi	sp,sp,-32
   1028c:	00813c23          	sd	s0,24(sp)
   10290:	02010413          	addi	s0,sp,32
   10294:	fea43423          	sd	a0,-24(s0)
   10298:	00300893          	li	a7,3
   1029c:	00000073          	ecall
   102a0:	00000013          	nop
   102a4:	01813403          	ld	s0,24(sp)
   102a8:	02010113          	addi	sp,sp,32
   102ac:	00008067          	ret

00000000000102b0 <print_c>:
   102b0:	fe010113          	addi	sp,sp,-32
   102b4:	00813c23          	sd	s0,24(sp)
   102b8:	02010413          	addi	s0,sp,32
   102bc:	00050793          	mv	a5,a0
   102c0:	fef407a3          	sb	a5,-17(s0)
   102c4:	00200893          	li	a7,2
   102c8:	00000073          	ecall
   102cc:	00000013          	nop
   102d0:	01813403          	ld	s0,24(sp)
   102d4:	02010113          	addi	sp,sp,32
   102d8:	00008067          	ret

00000000000102dc <exit_proc>:
   102dc:	ff010113          	addi	sp,sp,-16
   102e0:	00813423          	sd	s0,8(sp)
   102e4:	01010413          	addi	s0,sp,16
   102e8:	00000893          	li	a7,0
   102ec:	00000073          	ecall
   102f0:	00000013          	nop
   102f4:	00813403          	ld	s0,8(sp)
   102f8:	01010113          	addi	sp,sp,16
   102fc:	00008067          	ret

0000000000010300 <read_char>:
   10300:	fe010113          	addi	sp,sp,-32
   10304:	00813c23          	sd	s0,24(sp)
   10308:	02010413          	addi	s0,sp,32
   1030c:	00500893          	li	a7,5
   10310:	00000073          	ecall
   10314:	00050793          	mv	a5,a0
   10318:	fef407a3          	sb	a5,-17(s0)
   1031c:	fef44783          	lbu	a5,-17(s0)
   10320:	00078513          	mv	a0,a5
   10324:	01813403          	ld	s0,24(sp)
   10328:	02010113          	addi	sp,sp,32
   1032c:	00008067          	ret

0000000000010330 <read_num>:
   10330:	fe010113          	addi	sp,sp,-32
   10334:	00813c23          	sd	s0,24(sp)
   10338:	02010413          	addi	s0,sp,32
   1033c:	00400893          	li	a7,4
   10340:	00000073          	ecall
   10344:	00050793          	mv	a5,a0
   10348:	fef43423          	sd	a5,-24(s0)
   1034c:	fe843783          	ld	a5,-24(s0)
   10350:	00078513          	mv	a0,a5
   10354:	01813403          	ld	s0,24(sp)
   10358:	02010113          	addi	sp,sp,32
   1035c:	00008067          	ret

0000000000010360 <exit>:
   10360:	ff010113          	addi	sp,sp,-16
   10364:	00000593          	li	a1,0
   10368:	00813023          	sd	s0,0(sp)
   1036c:	00113423          	sd	ra,8(sp)
   10370:	00050413          	mv	s0,a0
   10374:	194000ef          	jal	ra,10508 <__call_exitprocs>
   10378:	f481b503          	ld	a0,-184(gp) # 11f78 <_global_impure_ptr>
   1037c:	05853783          	ld	a5,88(a0)
   10380:	00078463          	beqz	a5,10388 <exit+0x28>
   10384:	000780e7          	jalr	a5
   10388:	00040513          	mv	a0,s0
   1038c:	3bc000ef          	jal	ra,10748 <_exit>

0000000000010390 <__libc_init_array>:
   10390:	fe010113          	addi	sp,sp,-32
   10394:	00813823          	sd	s0,16(sp)
   10398:	01213023          	sd	s2,0(sp)
   1039c:	00012437          	lui	s0,0x12
   103a0:	00012937          	lui	s2,0x12
   103a4:	81840793          	addi	a5,s0,-2024 # 11818 <__init_array_start>
   103a8:	81890913          	addi	s2,s2,-2024 # 11818 <__init_array_start>
   103ac:	40f90933          	sub	s2,s2,a5
   103b0:	00113c23          	sd	ra,24(sp)
   103b4:	00913423          	sd	s1,8(sp)
   103b8:	40395913          	srai	s2,s2,0x3
   103bc:	02090063          	beqz	s2,103dc <__libc_init_array+0x4c>
   103c0:	81840413          	addi	s0,s0,-2024
   103c4:	00000493          	li	s1,0
   103c8:	00043783          	ld	a5,0(s0)
   103cc:	00148493          	addi	s1,s1,1
   103d0:	00840413          	addi	s0,s0,8
   103d4:	000780e7          	jalr	a5
   103d8:	fe9918e3          	bne	s2,s1,103c8 <__libc_init_array+0x38>
   103dc:	00012437          	lui	s0,0x12
   103e0:	00012937          	lui	s2,0x12
   103e4:	81840793          	addi	a5,s0,-2024 # 11818 <__init_array_start>
   103e8:	82890913          	addi	s2,s2,-2008 # 11828 <__do_global_dtors_aux_fini_array_entry>
   103ec:	40f90933          	sub	s2,s2,a5
   103f0:	40395913          	srai	s2,s2,0x3
   103f4:	02090063          	beqz	s2,10414 <__libc_init_array+0x84>
   103f8:	81840413          	addi	s0,s0,-2024
   103fc:	00000493          	li	s1,0
   10400:	00043783          	ld	a5,0(s0)
   10404:	00148493          	addi	s1,s1,1
   10408:	00840413          	addi	s0,s0,8
   1040c:	000780e7          	jalr	a5
   10410:	fe9918e3          	bne	s2,s1,10400 <__libc_init_array+0x70>
   10414:	01813083          	ld	ra,24(sp)
   10418:	01013403          	ld	s0,16(sp)
   1041c:	00813483          	ld	s1,8(sp)
   10420:	00013903          	ld	s2,0(sp)
   10424:	02010113          	addi	sp,sp,32
   10428:	00008067          	ret

000000000001042c <memset>:
   1042c:	00f00313          	li	t1,15
   10430:	00050713          	mv	a4,a0
   10434:	02c37a63          	bgeu	t1,a2,10468 <memset+0x3c>
   10438:	00f77793          	andi	a5,a4,15
   1043c:	0a079063          	bnez	a5,104dc <memset+0xb0>
   10440:	06059e63          	bnez	a1,104bc <memset+0x90>
   10444:	ff067693          	andi	a3,a2,-16
   10448:	00f67613          	andi	a2,a2,15
   1044c:	00e686b3          	add	a3,a3,a4
   10450:	00b73023          	sd	a1,0(a4)
   10454:	00b73423          	sd	a1,8(a4)
   10458:	01070713          	addi	a4,a4,16
   1045c:	fed76ae3          	bltu	a4,a3,10450 <memset+0x24>
   10460:	00061463          	bnez	a2,10468 <memset+0x3c>
   10464:	00008067          	ret
   10468:	40c306b3          	sub	a3,t1,a2
   1046c:	00269693          	slli	a3,a3,0x2
   10470:	00000297          	auipc	t0,0x0
   10474:	005686b3          	add	a3,a3,t0
   10478:	00c68067          	jr	12(a3)
   1047c:	00b70723          	sb	a1,14(a4)
   10480:	00b706a3          	sb	a1,13(a4)
   10484:	00b70623          	sb	a1,12(a4)
   10488:	00b705a3          	sb	a1,11(a4)
   1048c:	00b70523          	sb	a1,10(a4)
   10490:	00b704a3          	sb	a1,9(a4)
   10494:	00b70423          	sb	a1,8(a4)
   10498:	00b703a3          	sb	a1,7(a4)
   1049c:	00b70323          	sb	a1,6(a4)
   104a0:	00b702a3          	sb	a1,5(a4)
   104a4:	00b70223          	sb	a1,4(a4)
   104a8:	00b701a3          	sb	a1,3(a4)
   104ac:	00b70123          	sb	a1,2(a4)
   104b0:	00b700a3          	sb	a1,1(a4)
   104b4:	00b70023          	sb	a1,0(a4)
   104b8:	00008067          	ret
   104bc:	0ff5f593          	andi	a1,a1,255
   104c0:	00859693          	slli	a3,a1,0x8
   104c4:	00d5e5b3          	or	a1,a1,a3
   104c8:	01059693          	slli	a3,a1,0x10
   104cc:	00d5e5b3          	or	a1,a1,a3
   104d0:	02059693          	slli	a3,a1,0x20
   104d4:	00d5e5b3          	or	a1,a1,a3
   104d8:	f6dff06f          	j	10444 <memset+0x18>
   104dc:	00279693          	slli	a3,a5,0x2
   104e0:	00000297          	auipc	t0,0x0
   104e4:	005686b3          	add	a3,a3,t0
   104e8:	00008293          	mv	t0,ra
   104ec:	f98680e7          	jalr	-104(a3)
   104f0:	00028093          	mv	ra,t0
   104f4:	ff078793          	addi	a5,a5,-16
   104f8:	40f70733          	sub	a4,a4,a5
   104fc:	00f60633          	add	a2,a2,a5
   10500:	f6c374e3          	bgeu	t1,a2,10468 <memset+0x3c>
   10504:	f3dff06f          	j	10440 <memset+0x14>

0000000000010508 <__call_exitprocs>:
   10508:	fb010113          	addi	sp,sp,-80
   1050c:	03413023          	sd	s4,32(sp)
   10510:	f481ba03          	ld	s4,-184(gp) # 11f78 <_global_impure_ptr>
   10514:	03213823          	sd	s2,48(sp)
   10518:	04113423          	sd	ra,72(sp)
   1051c:	1f8a3903          	ld	s2,504(s4)
   10520:	04813023          	sd	s0,64(sp)
   10524:	02913c23          	sd	s1,56(sp)
   10528:	03313423          	sd	s3,40(sp)
   1052c:	01513c23          	sd	s5,24(sp)
   10530:	01613823          	sd	s6,16(sp)
   10534:	01713423          	sd	s7,8(sp)
   10538:	01813023          	sd	s8,0(sp)
   1053c:	04090063          	beqz	s2,1057c <__call_exitprocs+0x74>
   10540:	00050b13          	mv	s6,a0
   10544:	00058b93          	mv	s7,a1
   10548:	00100a93          	li	s5,1
   1054c:	fff00993          	li	s3,-1
   10550:	00892483          	lw	s1,8(s2)
   10554:	fff4841b          	addiw	s0,s1,-1
   10558:	02044263          	bltz	s0,1057c <__call_exitprocs+0x74>
   1055c:	00349493          	slli	s1,s1,0x3
   10560:	009904b3          	add	s1,s2,s1
   10564:	040b8463          	beqz	s7,105ac <__call_exitprocs+0xa4>
   10568:	2084b783          	ld	a5,520(s1)
   1056c:	05778063          	beq	a5,s7,105ac <__call_exitprocs+0xa4>
   10570:	fff4041b          	addiw	s0,s0,-1
   10574:	ff848493          	addi	s1,s1,-8
   10578:	ff3416e3          	bne	s0,s3,10564 <__call_exitprocs+0x5c>
   1057c:	04813083          	ld	ra,72(sp)
   10580:	04013403          	ld	s0,64(sp)
   10584:	03813483          	ld	s1,56(sp)
   10588:	03013903          	ld	s2,48(sp)
   1058c:	02813983          	ld	s3,40(sp)
   10590:	02013a03          	ld	s4,32(sp)
   10594:	01813a83          	ld	s5,24(sp)
   10598:	01013b03          	ld	s6,16(sp)
   1059c:	00813b83          	ld	s7,8(sp)
   105a0:	00013c03          	ld	s8,0(sp)
   105a4:	05010113          	addi	sp,sp,80
   105a8:	00008067          	ret
   105ac:	00892783          	lw	a5,8(s2)
   105b0:	0084b703          	ld	a4,8(s1)
   105b4:	fff7879b          	addiw	a5,a5,-1
   105b8:	06878263          	beq	a5,s0,1061c <__call_exitprocs+0x114>
   105bc:	0004b423          	sd	zero,8(s1)
   105c0:	fa0708e3          	beqz	a4,10570 <__call_exitprocs+0x68>
   105c4:	31092783          	lw	a5,784(s2)
   105c8:	008a96bb          	sllw	a3,s5,s0
   105cc:	00892c03          	lw	s8,8(s2)
   105d0:	00d7f7b3          	and	a5,a5,a3
   105d4:	0007879b          	sext.w	a5,a5
   105d8:	02079263          	bnez	a5,105fc <__call_exitprocs+0xf4>
   105dc:	000700e7          	jalr	a4
   105e0:	00892703          	lw	a4,8(s2)
   105e4:	1f8a3783          	ld	a5,504(s4)
   105e8:	01871463          	bne	a4,s8,105f0 <__call_exitprocs+0xe8>
   105ec:	f8f902e3          	beq	s2,a5,10570 <__call_exitprocs+0x68>
   105f0:	f80786e3          	beqz	a5,1057c <__call_exitprocs+0x74>
   105f4:	00078913          	mv	s2,a5
   105f8:	f59ff06f          	j	10550 <__call_exitprocs+0x48>
   105fc:	31492783          	lw	a5,788(s2)
   10600:	1084b583          	ld	a1,264(s1)
   10604:	00d7f7b3          	and	a5,a5,a3
   10608:	0007879b          	sext.w	a5,a5
   1060c:	00079c63          	bnez	a5,10624 <__call_exitprocs+0x11c>
   10610:	000b0513          	mv	a0,s6
   10614:	000700e7          	jalr	a4
   10618:	fc9ff06f          	j	105e0 <__call_exitprocs+0xd8>
   1061c:	00892423          	sw	s0,8(s2)
   10620:	fa1ff06f          	j	105c0 <__call_exitprocs+0xb8>
   10624:	00058513          	mv	a0,a1
   10628:	000700e7          	jalr	a4
   1062c:	fb5ff06f          	j	105e0 <__call_exitprocs+0xd8>

0000000000010630 <__libc_fini_array>:
   10630:	fe010113          	addi	sp,sp,-32
   10634:	00813823          	sd	s0,16(sp)
   10638:	000127b7          	lui	a5,0x12
   1063c:	00012437          	lui	s0,0x12
   10640:	82840413          	addi	s0,s0,-2008 # 11828 <__do_global_dtors_aux_fini_array_entry>
   10644:	83078793          	addi	a5,a5,-2000 # 11830 <impure_data>
   10648:	408787b3          	sub	a5,a5,s0
   1064c:	00913423          	sd	s1,8(sp)
   10650:	00113c23          	sd	ra,24(sp)
   10654:	4037d493          	srai	s1,a5,0x3
   10658:	02048063          	beqz	s1,10678 <__libc_fini_array+0x48>
   1065c:	ff878793          	addi	a5,a5,-8
   10660:	00878433          	add	s0,a5,s0
   10664:	00043783          	ld	a5,0(s0)
   10668:	fff48493          	addi	s1,s1,-1
   1066c:	ff840413          	addi	s0,s0,-8
   10670:	000780e7          	jalr	a5
   10674:	fe0498e3          	bnez	s1,10664 <__libc_fini_array+0x34>
   10678:	01813083          	ld	ra,24(sp)
   1067c:	01013403          	ld	s0,16(sp)
   10680:	00813483          	ld	s1,8(sp)
   10684:	02010113          	addi	sp,sp,32
   10688:	00008067          	ret

000000000001068c <atexit>:
   1068c:	00050593          	mv	a1,a0
   10690:	00000693          	li	a3,0
   10694:	00000613          	li	a2,0
   10698:	00000513          	li	a0,0
   1069c:	0040006f          	j	106a0 <__register_exitproc>

00000000000106a0 <__register_exitproc>:
   106a0:	f481b703          	ld	a4,-184(gp) # 11f78 <_global_impure_ptr>
   106a4:	1f873783          	ld	a5,504(a4)
   106a8:	06078063          	beqz	a5,10708 <__register_exitproc+0x68>
   106ac:	0087a703          	lw	a4,8(a5)
   106b0:	01f00813          	li	a6,31
   106b4:	08e84663          	blt	a6,a4,10740 <__register_exitproc+0xa0>
   106b8:	02050863          	beqz	a0,106e8 <__register_exitproc+0x48>
   106bc:	00371813          	slli	a6,a4,0x3
   106c0:	01078833          	add	a6,a5,a6
   106c4:	10c83823          	sd	a2,272(a6)
   106c8:	3107a883          	lw	a7,784(a5)
   106cc:	00100613          	li	a2,1
   106d0:	00e6163b          	sllw	a2,a2,a4
   106d4:	00c8e8b3          	or	a7,a7,a2
   106d8:	3117a823          	sw	a7,784(a5)
   106dc:	20d83823          	sd	a3,528(a6)
   106e0:	00200693          	li	a3,2
   106e4:	02d50863          	beq	a0,a3,10714 <__register_exitproc+0x74>
   106e8:	00270693          	addi	a3,a4,2
   106ec:	00369693          	slli	a3,a3,0x3
   106f0:	0017071b          	addiw	a4,a4,1
   106f4:	00e7a423          	sw	a4,8(a5)
   106f8:	00d787b3          	add	a5,a5,a3
   106fc:	00b7b023          	sd	a1,0(a5)
   10700:	00000513          	li	a0,0
   10704:	00008067          	ret
   10708:	20070793          	addi	a5,a4,512
   1070c:	1ef73c23          	sd	a5,504(a4)
   10710:	f9dff06f          	j	106ac <__register_exitproc+0xc>
   10714:	3147a683          	lw	a3,788(a5)
   10718:	00000513          	li	a0,0
   1071c:	00c6e633          	or	a2,a3,a2
   10720:	00270693          	addi	a3,a4,2
   10724:	00369693          	slli	a3,a3,0x3
   10728:	0017071b          	addiw	a4,a4,1
   1072c:	30c7aa23          	sw	a2,788(a5)
   10730:	00e7a423          	sw	a4,8(a5)
   10734:	00d787b3          	add	a5,a5,a3
   10738:	00b7b023          	sd	a1,0(a5)
   1073c:	00008067          	ret
   10740:	fff00513          	li	a0,-1
   10744:	00008067          	ret

0000000000010748 <_exit>:
   10748:	00000593          	li	a1,0
   1074c:	00000613          	li	a2,0
   10750:	00000693          	li	a3,0
   10754:	00000713          	li	a4,0
   10758:	00000793          	li	a5,0
   1075c:	05d00893          	li	a7,93
   10760:	00000073          	ecall
   10764:	00054463          	bltz	a0,1076c <_exit+0x24>
   10768:	0000006f          	j	10768 <_exit+0x20>
   1076c:	ff010113          	addi	sp,sp,-16
   10770:	00813023          	sd	s0,0(sp)
   10774:	00050413          	mv	s0,a0
   10778:	00113423          	sd	ra,8(sp)
   1077c:	4080043b          	negw	s0,s0
   10780:	00c000ef          	jal	ra,1078c <__errno>
   10784:	00852023          	sw	s0,0(a0)
   10788:	0000006f          	j	10788 <_exit+0x40>

000000000001078c <__errno>:
   1078c:	f581b503          	ld	a0,-168(gp) # 11f88 <_impure_ptr>
   10790:	00008067          	ret

Disassembly of section .rodata:

0000000000010798 <.rodata>:
   10798:	6854                	ld	a3,144(s0)
   1079a:	7369                	lui	t1,0xffffa
   1079c:	6920                	ld	s0,80(a0)
   1079e:	74732073          	csrs	0x747,t1
   107a2:	6972                	ld	s2,280(sp)
   107a4:	676e                	ld	a4,216(sp)
   107a6:	6620                	ld	s0,72(a2)
   107a8:	6f72                	ld	t5,280(sp)
   107aa:	206d                	0x206d
   107ac:	7270                	ld	a2,224(a2)
   107ae:	6e69                	lui	t3,0x1a
   107b0:	5f74                	lw	a3,124(a4)
   107b2:	0a292873          	csrrs	a6,0xa2,s2
   107b6:	0000                	unimp
   107b8:	6e45                	lui	t3,0x11
   107ba:	6574                	ld	a3,200(a0)
   107bc:	2072                	fld	ft0,280(sp)
   107be:	2061                	0x2061
   107c0:	756e                	ld	a0,248(sp)
   107c2:	626d                	lui	tp,0x1b
   107c4:	7265                	lui	tp,0xffff9
   107c6:	203a                	fld	ft0,392(sp)
	...
   107d0:	6854                	ld	a3,144(s0)
   107d2:	2065                	0x2065
   107d4:	756e                	ld	a0,248(sp)
   107d6:	626d                	lui	tp,0x1b
   107d8:	7265                	lui	tp,0xffff9
   107da:	6920                	ld	s0,80(a0)
   107dc:	00203a73          	csrrc	s4,frm,zero
   107e0:	000a                	c.slli	zero,0x2
   107e2:	0000                	unimp
   107e4:	0000                	unimp
   107e6:	0000                	unimp
   107e8:	6e45                	lui	t3,0x11
   107ea:	6574                	ld	a3,200(a0)
   107ec:	2072                	fld	ft0,280(sp)
   107ee:	2061                	0x2061
   107f0:	72616863          	bltu	sp,t1,10f20 <__errno+0x794>
   107f4:	6361                	lui	t1,0x18
   107f6:	6574                	ld	a3,200(a0)
   107f8:	3a72                	fld	fs4,312(sp)
   107fa:	0020                	addi	s0,sp,8
   107fc:	0000                	unimp
   107fe:	0000                	unimp
   10800:	6854                	ld	a3,144(s0)
   10802:	2065                	0x2065
   10804:	72616863          	bltu	sp,t1,10f34 <__errno+0x7a8>
   10808:	6361                	lui	t1,0x18
   1080a:	6574                	ld	a3,200(a0)
   1080c:	2072                	fld	ft0,280(sp)
   1080e:	7369                	lui	t1,0xffffa
   10810:	203a                	fld	ft0,392(sp)
	...

Disassembly of section .eh_frame:

0000000000011814 <__FRAME_END__>:
   11814:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011818 <__init_array_start>:
   11818:	00b0                	addi	a2,sp,72
   1181a:	0001                	nop
   1181c:	0000                	unimp
	...

0000000000011820 <__frame_dummy_init_array_entry>:
   11820:	0160                	addi	s0,sp,140
   11822:	0001                	nop
   11824:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011828 <__do_global_dtors_aux_fini_array_entry>:
   11828:	0114                	addi	a3,sp,128
   1182a:	0001                	nop
   1182c:	0000                	unimp
	...

Disassembly of section .data:

0000000000011830 <impure_data>:
	...
   11838:	1d68                	addi	a0,sp,700
   1183a:	0001                	nop
   1183c:	0000                	unimp
   1183e:	0000                	unimp
   11840:	1e18                	addi	a4,sp,816
   11842:	0001                	nop
   11844:	0000                	unimp
   11846:	0000                	unimp
   11848:	1ec8                	addi	a0,sp,884
   1184a:	0001                	nop
	...
   11918:	0001                	nop
   1191a:	0000                	unimp
   1191c:	0000                	unimp
   1191e:	0000                	unimp
   11920:	330e                	fld	ft6,224(sp)
   11922:	abcd                	j	11f14 <impure_data+0x6e4>
   11924:	1234                	addi	a3,sp,296
   11926:	e66d                	bnez	a2,11a10 <impure_data+0x1e0>
   11928:	deec                	sw	a1,124(a3)
   1192a:	0005                	c.nop	1
   1192c:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011f78 <_global_impure_ptr>:
   11f78:	1830                	addi	a2,sp,56
   11f7a:	0001                	nop
   11f7c:	0000                	unimp
	...

0000000000011f80 <__dso_handle>:
	...

0000000000011f88 <_impure_ptr>:
   11f88:	1830                	addi	a2,sp,56
   11f8a:	0001                	nop
   11f8c:	0000                	unimp
	...

Disassembly of section .bss:

0000000000011f90 <completed.5525>:
	...

0000000000011f98 <object.5530>:
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


ackermann.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	70450513          	addi	a0,a0,1796 # 10704 <__libc_fini_array>
   100c0:	6a00006f          	j	10760 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00001197          	auipc	gp,0x1
   100cc:	75818193          	addi	gp,gp,1880 # 11820 <__global_pointer$>
   100d0:	f6018513          	addi	a0,gp,-160 # 11780 <completed.5525>
   100d4:	f9818613          	addi	a2,gp,-104 # 117b8 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	420000ef          	jal	ra,10500 <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	67c50513          	addi	a0,a0,1660 # 10760 <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	61450513          	addi	a0,a0,1556 # 10704 <__libc_fini_array>
   100f8:	668000ef          	jal	ra,10760 <atexit>
   100fc:	368000ef          	jal	ra,10464 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	144000ef          	jal	ra,10250 <main>
   10110:	3240006f          	j	10434 <exit>

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

0000000000010180 <ackermann>:
   10180:	fd010113          	addi	sp,sp,-48
   10184:	02113423          	sd	ra,40(sp)
   10188:	02813023          	sd	s0,32(sp)
   1018c:	00913c23          	sd	s1,24(sp)
   10190:	03010413          	addi	s0,sp,48
   10194:	00050793          	mv	a5,a0
   10198:	00058713          	mv	a4,a1
   1019c:	fcf42e23          	sw	a5,-36(s0)
   101a0:	00070793          	mv	a5,a4
   101a4:	fcf42c23          	sw	a5,-40(s0)
   101a8:	fdc42783          	lw	a5,-36(s0)
   101ac:	0007879b          	sext.w	a5,a5
   101b0:	00079a63          	bnez	a5,101c4 <ackermann+0x44>
   101b4:	fd842783          	lw	a5,-40(s0)
   101b8:	0017879b          	addiw	a5,a5,1
   101bc:	0007879b          	sext.w	a5,a5
   101c0:	0780006f          	j	10238 <ackermann+0xb8>
   101c4:	fdc42783          	lw	a5,-36(s0)
   101c8:	0007879b          	sext.w	a5,a5
   101cc:	02f05863          	blez	a5,101fc <ackermann+0x7c>
   101d0:	fd842783          	lw	a5,-40(s0)
   101d4:	0007879b          	sext.w	a5,a5
   101d8:	02079263          	bnez	a5,101fc <ackermann+0x7c>
   101dc:	fdc42783          	lw	a5,-36(s0)
   101e0:	fff7879b          	addiw	a5,a5,-1
   101e4:	0007879b          	sext.w	a5,a5
   101e8:	00100593          	li	a1,1
   101ec:	00078513          	mv	a0,a5
   101f0:	f91ff0ef          	jal	ra,10180 <ackermann>
   101f4:	00050793          	mv	a5,a0
   101f8:	0400006f          	j	10238 <ackermann+0xb8>
   101fc:	fdc42783          	lw	a5,-36(s0)
   10200:	fff7879b          	addiw	a5,a5,-1
   10204:	0007849b          	sext.w	s1,a5
   10208:	fd842783          	lw	a5,-40(s0)
   1020c:	fff7879b          	addiw	a5,a5,-1
   10210:	0007871b          	sext.w	a4,a5
   10214:	fdc42783          	lw	a5,-36(s0)
   10218:	00070593          	mv	a1,a4
   1021c:	00078513          	mv	a0,a5
   10220:	f61ff0ef          	jal	ra,10180 <ackermann>
   10224:	00050793          	mv	a5,a0
   10228:	00078593          	mv	a1,a5
   1022c:	00048513          	mv	a0,s1
   10230:	f51ff0ef          	jal	ra,10180 <ackermann>
   10234:	00050793          	mv	a5,a0
   10238:	00078513          	mv	a0,a5
   1023c:	02813083          	ld	ra,40(sp)
   10240:	02013403          	ld	s0,32(sp)
   10244:	01813483          	ld	s1,24(sp)
   10248:	03010113          	addi	sp,sp,48
   1024c:	00008067          	ret

0000000000010250 <main>:
   10250:	fe010113          	addi	sp,sp,-32
   10254:	00113c23          	sd	ra,24(sp)
   10258:	00813823          	sd	s0,16(sp)
   1025c:	02010413          	addi	s0,sp,32
   10260:	fe042623          	sw	zero,-20(s0)
   10264:	0a00006f          	j	10304 <main+0xb4>
   10268:	fe042423          	sw	zero,-24(s0)
   1026c:	07c0006f          	j	102e8 <main+0x98>
   10270:	fe842703          	lw	a4,-24(s0)
   10274:	fec42783          	lw	a5,-20(s0)
   10278:	00070593          	mv	a1,a4
   1027c:	00078513          	mv	a0,a5
   10280:	f01ff0ef          	jal	ra,10180 <ackermann>
   10284:	00050793          	mv	a5,a0
   10288:	fef42223          	sw	a5,-28(s0)
   1028c:	000117b7          	lui	a5,0x11
   10290:	86878513          	addi	a0,a5,-1944 # 10868 <__errno+0x8>
   10294:	0c8000ef          	jal	ra,1035c <print_s>
   10298:	fec42783          	lw	a5,-20(s0)
   1029c:	00078513          	mv	a0,a5
   102a0:	090000ef          	jal	ra,10330 <print_d>
   102a4:	000117b7          	lui	a5,0x11
   102a8:	87878513          	addi	a0,a5,-1928 # 10878 <__errno+0x18>
   102ac:	0b0000ef          	jal	ra,1035c <print_s>
   102b0:	fe842783          	lw	a5,-24(s0)
   102b4:	00078513          	mv	a0,a5
   102b8:	078000ef          	jal	ra,10330 <print_d>
   102bc:	000117b7          	lui	a5,0x11
   102c0:	88078513          	addi	a0,a5,-1920 # 10880 <__errno+0x20>
   102c4:	098000ef          	jal	ra,1035c <print_s>
   102c8:	fe442783          	lw	a5,-28(s0)
   102cc:	00078513          	mv	a0,a5
   102d0:	060000ef          	jal	ra,10330 <print_d>
   102d4:	00a00513          	li	a0,10
   102d8:	0ac000ef          	jal	ra,10384 <print_c>
   102dc:	fe842783          	lw	a5,-24(s0)
   102e0:	0017879b          	addiw	a5,a5,1
   102e4:	fef42423          	sw	a5,-24(s0)
   102e8:	fe842783          	lw	a5,-24(s0)
   102ec:	0007871b          	sext.w	a4,a5
   102f0:	00400793          	li	a5,4
   102f4:	f6e7dee3          	bge	a5,a4,10270 <main+0x20>
   102f8:	fec42783          	lw	a5,-20(s0)
   102fc:	0017879b          	addiw	a5,a5,1
   10300:	fef42623          	sw	a5,-20(s0)
   10304:	fec42783          	lw	a5,-20(s0)
   10308:	0007871b          	sext.w	a4,a5
   1030c:	00300793          	li	a5,3
   10310:	f4e7dce3          	bge	a5,a4,10268 <main+0x18>
   10314:	09c000ef          	jal	ra,103b0 <exit_proc>
   10318:	00000793          	li	a5,0
   1031c:	00078513          	mv	a0,a5
   10320:	01813083          	ld	ra,24(sp)
   10324:	01013403          	ld	s0,16(sp)
   10328:	02010113          	addi	sp,sp,32
   1032c:	00008067          	ret

0000000000010330 <print_d>:
   10330:	fe010113          	addi	sp,sp,-32
   10334:	00813c23          	sd	s0,24(sp)
   10338:	02010413          	addi	s0,sp,32
   1033c:	00050793          	mv	a5,a0
   10340:	fef42623          	sw	a5,-20(s0)
   10344:	00100893          	li	a7,1
   10348:	00000073          	ecall
   1034c:	00000013          	nop
   10350:	01813403          	ld	s0,24(sp)
   10354:	02010113          	addi	sp,sp,32
   10358:	00008067          	ret

000000000001035c <print_s>:
   1035c:	fe010113          	addi	sp,sp,-32
   10360:	00813c23          	sd	s0,24(sp)
   10364:	02010413          	addi	s0,sp,32
   10368:	fea43423          	sd	a0,-24(s0)
   1036c:	00300893          	li	a7,3
   10370:	00000073          	ecall
   10374:	00000013          	nop
   10378:	01813403          	ld	s0,24(sp)
   1037c:	02010113          	addi	sp,sp,32
   10380:	00008067          	ret

0000000000010384 <print_c>:
   10384:	fe010113          	addi	sp,sp,-32
   10388:	00813c23          	sd	s0,24(sp)
   1038c:	02010413          	addi	s0,sp,32
   10390:	00050793          	mv	a5,a0
   10394:	fef407a3          	sb	a5,-17(s0)
   10398:	00200893          	li	a7,2
   1039c:	00000073          	ecall
   103a0:	00000013          	nop
   103a4:	01813403          	ld	s0,24(sp)
   103a8:	02010113          	addi	sp,sp,32
   103ac:	00008067          	ret

00000000000103b0 <exit_proc>:
   103b0:	ff010113          	addi	sp,sp,-16
   103b4:	00813423          	sd	s0,8(sp)
   103b8:	01010413          	addi	s0,sp,16
   103bc:	00000893          	li	a7,0
   103c0:	00000073          	ecall
   103c4:	00000013          	nop
   103c8:	00813403          	ld	s0,8(sp)
   103cc:	01010113          	addi	sp,sp,16
   103d0:	00008067          	ret

00000000000103d4 <read_char>:
   103d4:	fe010113          	addi	sp,sp,-32
   103d8:	00813c23          	sd	s0,24(sp)
   103dc:	02010413          	addi	s0,sp,32
   103e0:	00500893          	li	a7,5
   103e4:	00000073          	ecall
   103e8:	00050793          	mv	a5,a0
   103ec:	fef407a3          	sb	a5,-17(s0)
   103f0:	fef44783          	lbu	a5,-17(s0)
   103f4:	00078513          	mv	a0,a5
   103f8:	01813403          	ld	s0,24(sp)
   103fc:	02010113          	addi	sp,sp,32
   10400:	00008067          	ret

0000000000010404 <read_num>:
   10404:	fe010113          	addi	sp,sp,-32
   10408:	00813c23          	sd	s0,24(sp)
   1040c:	02010413          	addi	s0,sp,32
   10410:	00400893          	li	a7,4
   10414:	00000073          	ecall
   10418:	00050793          	mv	a5,a0
   1041c:	fef43423          	sd	a5,-24(s0)
   10420:	fe843783          	ld	a5,-24(s0)
   10424:	00078513          	mv	a0,a5
   10428:	01813403          	ld	s0,24(sp)
   1042c:	02010113          	addi	sp,sp,32
   10430:	00008067          	ret

0000000000010434 <exit>:
   10434:	ff010113          	addi	sp,sp,-16
   10438:	00000593          	li	a1,0
   1043c:	00813023          	sd	s0,0(sp)
   10440:	00113423          	sd	ra,8(sp)
   10444:	00050413          	mv	s0,a0
   10448:	194000ef          	jal	ra,105dc <__call_exitprocs>
   1044c:	f481b503          	ld	a0,-184(gp) # 11768 <_global_impure_ptr>
   10450:	05853783          	ld	a5,88(a0) # 11058 <impure_data+0x38>
   10454:	00078463          	beqz	a5,1045c <exit+0x28>
   10458:	000780e7          	jalr	a5
   1045c:	00040513          	mv	a0,s0
   10460:	3bc000ef          	jal	ra,1081c <_exit>

0000000000010464 <__libc_init_array>:
   10464:	fe010113          	addi	sp,sp,-32
   10468:	00813823          	sd	s0,16(sp)
   1046c:	01213023          	sd	s2,0(sp)
   10470:	00011437          	lui	s0,0x11
   10474:	00011937          	lui	s2,0x11
   10478:	00440793          	addi	a5,s0,4 # 11004 <__preinit_array_end>
   1047c:	00490913          	addi	s2,s2,4 # 11004 <__preinit_array_end>
   10480:	40f90933          	sub	s2,s2,a5
   10484:	00113c23          	sd	ra,24(sp)
   10488:	00913423          	sd	s1,8(sp)
   1048c:	40395913          	srai	s2,s2,0x3
   10490:	02090063          	beqz	s2,104b0 <__libc_init_array+0x4c>
   10494:	00440413          	addi	s0,s0,4
   10498:	00000493          	li	s1,0
   1049c:	00043783          	ld	a5,0(s0)
   104a0:	00148493          	addi	s1,s1,1
   104a4:	00840413          	addi	s0,s0,8
   104a8:	000780e7          	jalr	a5
   104ac:	fe9918e3          	bne	s2,s1,1049c <__libc_init_array+0x38>
   104b0:	00011437          	lui	s0,0x11
   104b4:	00011937          	lui	s2,0x11
   104b8:	00840793          	addi	a5,s0,8 # 11008 <__init_array_start>
   104bc:	01890913          	addi	s2,s2,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   104c0:	40f90933          	sub	s2,s2,a5
   104c4:	40395913          	srai	s2,s2,0x3
   104c8:	02090063          	beqz	s2,104e8 <__libc_init_array+0x84>
   104cc:	00840413          	addi	s0,s0,8
   104d0:	00000493          	li	s1,0
   104d4:	00043783          	ld	a5,0(s0)
   104d8:	00148493          	addi	s1,s1,1
   104dc:	00840413          	addi	s0,s0,8
   104e0:	000780e7          	jalr	a5
   104e4:	fe9918e3          	bne	s2,s1,104d4 <__libc_init_array+0x70>
   104e8:	01813083          	ld	ra,24(sp)
   104ec:	01013403          	ld	s0,16(sp)
   104f0:	00813483          	ld	s1,8(sp)
   104f4:	00013903          	ld	s2,0(sp)
   104f8:	02010113          	addi	sp,sp,32
   104fc:	00008067          	ret

0000000000010500 <memset>:
   10500:	00f00313          	li	t1,15
   10504:	00050713          	mv	a4,a0
   10508:	02c37a63          	bgeu	t1,a2,1053c <memset+0x3c>
   1050c:	00f77793          	andi	a5,a4,15
   10510:	0a079063          	bnez	a5,105b0 <memset+0xb0>
   10514:	06059e63          	bnez	a1,10590 <memset+0x90>
   10518:	ff067693          	andi	a3,a2,-16
   1051c:	00f67613          	andi	a2,a2,15
   10520:	00e686b3          	add	a3,a3,a4
   10524:	00b73023          	sd	a1,0(a4)
   10528:	00b73423          	sd	a1,8(a4)
   1052c:	01070713          	addi	a4,a4,16
   10530:	fed76ae3          	bltu	a4,a3,10524 <memset+0x24>
   10534:	00061463          	bnez	a2,1053c <memset+0x3c>
   10538:	00008067          	ret
   1053c:	40c306b3          	sub	a3,t1,a2
   10540:	00269693          	slli	a3,a3,0x2
   10544:	00000297          	auipc	t0,0x0
   10548:	005686b3          	add	a3,a3,t0
   1054c:	00c68067          	jr	12(a3)
   10550:	00b70723          	sb	a1,14(a4)
   10554:	00b706a3          	sb	a1,13(a4)
   10558:	00b70623          	sb	a1,12(a4)
   1055c:	00b705a3          	sb	a1,11(a4)
   10560:	00b70523          	sb	a1,10(a4)
   10564:	00b704a3          	sb	a1,9(a4)
   10568:	00b70423          	sb	a1,8(a4)
   1056c:	00b703a3          	sb	a1,7(a4)
   10570:	00b70323          	sb	a1,6(a4)
   10574:	00b702a3          	sb	a1,5(a4)
   10578:	00b70223          	sb	a1,4(a4)
   1057c:	00b701a3          	sb	a1,3(a4)
   10580:	00b70123          	sb	a1,2(a4)
   10584:	00b700a3          	sb	a1,1(a4)
   10588:	00b70023          	sb	a1,0(a4)
   1058c:	00008067          	ret
   10590:	0ff5f593          	andi	a1,a1,255
   10594:	00859693          	slli	a3,a1,0x8
   10598:	00d5e5b3          	or	a1,a1,a3
   1059c:	01059693          	slli	a3,a1,0x10
   105a0:	00d5e5b3          	or	a1,a1,a3
   105a4:	02059693          	slli	a3,a1,0x20
   105a8:	00d5e5b3          	or	a1,a1,a3
   105ac:	f6dff06f          	j	10518 <memset+0x18>
   105b0:	00279693          	slli	a3,a5,0x2
   105b4:	00000297          	auipc	t0,0x0
   105b8:	005686b3          	add	a3,a3,t0
   105bc:	00008293          	mv	t0,ra
   105c0:	f98680e7          	jalr	-104(a3)
   105c4:	00028093          	mv	ra,t0
   105c8:	ff078793          	addi	a5,a5,-16
   105cc:	40f70733          	sub	a4,a4,a5
   105d0:	00f60633          	add	a2,a2,a5
   105d4:	f6c374e3          	bgeu	t1,a2,1053c <memset+0x3c>
   105d8:	f3dff06f          	j	10514 <memset+0x14>

00000000000105dc <__call_exitprocs>:
   105dc:	fb010113          	addi	sp,sp,-80
   105e0:	03413023          	sd	s4,32(sp)
   105e4:	f481ba03          	ld	s4,-184(gp) # 11768 <_global_impure_ptr>
   105e8:	03213823          	sd	s2,48(sp)
   105ec:	04113423          	sd	ra,72(sp)
   105f0:	1f8a3903          	ld	s2,504(s4)
   105f4:	04813023          	sd	s0,64(sp)
   105f8:	02913c23          	sd	s1,56(sp)
   105fc:	03313423          	sd	s3,40(sp)
   10600:	01513c23          	sd	s5,24(sp)
   10604:	01613823          	sd	s6,16(sp)
   10608:	01713423          	sd	s7,8(sp)
   1060c:	01813023          	sd	s8,0(sp)
   10610:	04090063          	beqz	s2,10650 <__call_exitprocs+0x74>
   10614:	00050b13          	mv	s6,a0
   10618:	00058b93          	mv	s7,a1
   1061c:	00100a93          	li	s5,1
   10620:	fff00993          	li	s3,-1
   10624:	00892483          	lw	s1,8(s2)
   10628:	fff4841b          	addiw	s0,s1,-1
   1062c:	02044263          	bltz	s0,10650 <__call_exitprocs+0x74>
   10630:	00349493          	slli	s1,s1,0x3
   10634:	009904b3          	add	s1,s2,s1
   10638:	040b8463          	beqz	s7,10680 <__call_exitprocs+0xa4>
   1063c:	2084b783          	ld	a5,520(s1)
   10640:	05778063          	beq	a5,s7,10680 <__call_exitprocs+0xa4>
   10644:	fff4041b          	addiw	s0,s0,-1
   10648:	ff848493          	addi	s1,s1,-8
   1064c:	ff3416e3          	bne	s0,s3,10638 <__call_exitprocs+0x5c>
   10650:	04813083          	ld	ra,72(sp)
   10654:	04013403          	ld	s0,64(sp)
   10658:	03813483          	ld	s1,56(sp)
   1065c:	03013903          	ld	s2,48(sp)
   10660:	02813983          	ld	s3,40(sp)
   10664:	02013a03          	ld	s4,32(sp)
   10668:	01813a83          	ld	s5,24(sp)
   1066c:	01013b03          	ld	s6,16(sp)
   10670:	00813b83          	ld	s7,8(sp)
   10674:	00013c03          	ld	s8,0(sp)
   10678:	05010113          	addi	sp,sp,80
   1067c:	00008067          	ret
   10680:	00892783          	lw	a5,8(s2)
   10684:	0084b703          	ld	a4,8(s1)
   10688:	fff7879b          	addiw	a5,a5,-1
   1068c:	06878263          	beq	a5,s0,106f0 <__call_exitprocs+0x114>
   10690:	0004b423          	sd	zero,8(s1)
   10694:	fa0708e3          	beqz	a4,10644 <__call_exitprocs+0x68>
   10698:	31092783          	lw	a5,784(s2)
   1069c:	008a96bb          	sllw	a3,s5,s0
   106a0:	00892c03          	lw	s8,8(s2)
   106a4:	00d7f7b3          	and	a5,a5,a3
   106a8:	0007879b          	sext.w	a5,a5
   106ac:	02079263          	bnez	a5,106d0 <__call_exitprocs+0xf4>
   106b0:	000700e7          	jalr	a4
   106b4:	00892703          	lw	a4,8(s2)
   106b8:	1f8a3783          	ld	a5,504(s4)
   106bc:	01871463          	bne	a4,s8,106c4 <__call_exitprocs+0xe8>
   106c0:	f8f902e3          	beq	s2,a5,10644 <__call_exitprocs+0x68>
   106c4:	f80786e3          	beqz	a5,10650 <__call_exitprocs+0x74>
   106c8:	00078913          	mv	s2,a5
   106cc:	f59ff06f          	j	10624 <__call_exitprocs+0x48>
   106d0:	31492783          	lw	a5,788(s2)
   106d4:	1084b583          	ld	a1,264(s1)
   106d8:	00d7f7b3          	and	a5,a5,a3
   106dc:	0007879b          	sext.w	a5,a5
   106e0:	00079c63          	bnez	a5,106f8 <__call_exitprocs+0x11c>
   106e4:	000b0513          	mv	a0,s6
   106e8:	000700e7          	jalr	a4
   106ec:	fc9ff06f          	j	106b4 <__call_exitprocs+0xd8>
   106f0:	00892423          	sw	s0,8(s2)
   106f4:	fa1ff06f          	j	10694 <__call_exitprocs+0xb8>
   106f8:	00058513          	mv	a0,a1
   106fc:	000700e7          	jalr	a4
   10700:	fb5ff06f          	j	106b4 <__call_exitprocs+0xd8>

0000000000010704 <__libc_fini_array>:
   10704:	fe010113          	addi	sp,sp,-32
   10708:	00813823          	sd	s0,16(sp)
   1070c:	000117b7          	lui	a5,0x11
   10710:	00011437          	lui	s0,0x11
   10714:	01840413          	addi	s0,s0,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   10718:	02078793          	addi	a5,a5,32 # 11020 <impure_data>
   1071c:	408787b3          	sub	a5,a5,s0
   10720:	00913423          	sd	s1,8(sp)
   10724:	00113c23          	sd	ra,24(sp)
   10728:	4037d493          	srai	s1,a5,0x3
   1072c:	02048063          	beqz	s1,1074c <__libc_fini_array+0x48>
   10730:	ff878793          	addi	a5,a5,-8
   10734:	00878433          	add	s0,a5,s0
   10738:	00043783          	ld	a5,0(s0)
   1073c:	fff48493          	addi	s1,s1,-1
   10740:	ff840413          	addi	s0,s0,-8
   10744:	000780e7          	jalr	a5
   10748:	fe0498e3          	bnez	s1,10738 <__libc_fini_array+0x34>
   1074c:	01813083          	ld	ra,24(sp)
   10750:	01013403          	ld	s0,16(sp)
   10754:	00813483          	ld	s1,8(sp)
   10758:	02010113          	addi	sp,sp,32
   1075c:	00008067          	ret

0000000000010760 <atexit>:
   10760:	00050593          	mv	a1,a0
   10764:	00000693          	li	a3,0
   10768:	00000613          	li	a2,0
   1076c:	00000513          	li	a0,0
   10770:	0040006f          	j	10774 <__register_exitproc>

0000000000010774 <__register_exitproc>:
   10774:	f481b703          	ld	a4,-184(gp) # 11768 <_global_impure_ptr>
   10778:	1f873783          	ld	a5,504(a4)
   1077c:	06078063          	beqz	a5,107dc <__register_exitproc+0x68>
   10780:	0087a703          	lw	a4,8(a5)
   10784:	01f00813          	li	a6,31
   10788:	08e84663          	blt	a6,a4,10814 <__register_exitproc+0xa0>
   1078c:	02050863          	beqz	a0,107bc <__register_exitproc+0x48>
   10790:	00371813          	slli	a6,a4,0x3
   10794:	01078833          	add	a6,a5,a6
   10798:	10c83823          	sd	a2,272(a6)
   1079c:	3107a883          	lw	a7,784(a5)
   107a0:	00100613          	li	a2,1
   107a4:	00e6163b          	sllw	a2,a2,a4
   107a8:	00c8e8b3          	or	a7,a7,a2
   107ac:	3117a823          	sw	a7,784(a5)
   107b0:	20d83823          	sd	a3,528(a6)
   107b4:	00200693          	li	a3,2
   107b8:	02d50863          	beq	a0,a3,107e8 <__register_exitproc+0x74>
   107bc:	00270693          	addi	a3,a4,2
   107c0:	00369693          	slli	a3,a3,0x3
   107c4:	0017071b          	addiw	a4,a4,1
   107c8:	00e7a423          	sw	a4,8(a5)
   107cc:	00d787b3          	add	a5,a5,a3
   107d0:	00b7b023          	sd	a1,0(a5)
   107d4:	00000513          	li	a0,0
   107d8:	00008067          	ret
   107dc:	20070793          	addi	a5,a4,512
   107e0:	1ef73c23          	sd	a5,504(a4)
   107e4:	f9dff06f          	j	10780 <__register_exitproc+0xc>
   107e8:	3147a683          	lw	a3,788(a5)
   107ec:	00000513          	li	a0,0
   107f0:	00c6e633          	or	a2,a3,a2
   107f4:	00270693          	addi	a3,a4,2
   107f8:	00369693          	slli	a3,a3,0x3
   107fc:	0017071b          	addiw	a4,a4,1
   10800:	30c7aa23          	sw	a2,788(a5)
   10804:	00e7a423          	sw	a4,8(a5)
   10808:	00d787b3          	add	a5,a5,a3
   1080c:	00b7b023          	sd	a1,0(a5)
   10810:	00008067          	ret
   10814:	fff00513          	li	a0,-1
   10818:	00008067          	ret

000000000001081c <_exit>:
   1081c:	00000593          	li	a1,0
   10820:	00000613          	li	a2,0
   10824:	00000693          	li	a3,0
   10828:	00000713          	li	a4,0
   1082c:	00000793          	li	a5,0
   10830:	05d00893          	li	a7,93
   10834:	00000073          	ecall
   10838:	00054463          	bltz	a0,10840 <_exit+0x24>
   1083c:	0000006f          	j	1083c <_exit+0x20>
   10840:	ff010113          	addi	sp,sp,-16
   10844:	00813023          	sd	s0,0(sp)
   10848:	00050413          	mv	s0,a0
   1084c:	00113423          	sd	ra,8(sp)
   10850:	4080043b          	negw	s0,s0
   10854:	00c000ef          	jal	ra,10860 <__errno>
   10858:	00852023          	sw	s0,0(a0)
   1085c:	0000006f          	j	1085c <_exit+0x40>

0000000000010860 <__errno>:
   10860:	f581b503          	ld	a0,-168(gp) # 11778 <_impure_ptr>
   10864:	00008067          	ret

Disassembly of section .rodata:

0000000000010868 <.rodata>:
   10868:	6341                	lui	t1,0x10
   1086a:	6d72656b          	0x6d72656b
   1086e:	6e61                	lui	t3,0x18
   10870:	286e                	fld	fa6,216(sp)
   10872:	0000                	unimp
   10874:	0000                	unimp
   10876:	0000                	unimp
   10878:	002c                	addi	a1,sp,8
   1087a:	0000                	unimp
   1087c:	0000                	unimp
   1087e:	0000                	unimp
   10880:	2029                	0x2029
   10882:	203d                	0x203d
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

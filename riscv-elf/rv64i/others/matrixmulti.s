
matrixmulti.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00011537          	lui	a0,0x11
   100bc:	fcc50513          	addi	a0,a0,-52 # 10fcc <__libc_fini_array>
   100c0:	7690006f          	j	11028 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00003197          	auipc	gp,0x3
   100cc:	8e018193          	addi	gp,gp,-1824 # 129a8 <__global_pointer$>
   100d0:	f6818513          	addi	a0,gp,-152 # 12910 <completed.5525>
   100d4:	fa018613          	addi	a2,gp,-96 # 12948 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	4e9000ef          	jal	ra,10dc8 <memset>
   100e4:	00001517          	auipc	a0,0x1
   100e8:	f4450513          	addi	a0,a0,-188 # 11028 <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00001517          	auipc	a0,0x1
   100f4:	edc50513          	addi	a0,a0,-292 # 10fcc <__libc_fini_array>
   100f8:	731000ef          	jal	ra,11028 <atexit>
   100fc:	431000ef          	jal	ra,10d2c <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	2d4000ef          	jal	ra,103e0 <main>
   10110:	3ed0006f          	j	10cfc <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	f681c703          	lbu	a4,-152(gp) # 12910 <completed.5525>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00012537          	lui	a0,0x12
   10138:	18c50513          	addi	a0,a0,396 # 1218c <__FRAME_END__>
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	f6f18423          	sb	a5,-152(gp) # 12910 <completed.5525>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00012537          	lui	a0,0x12
   1016c:	f7018593          	addi	a1,gp,-144 # 12918 <object.5530>
   10170:	18c50513          	addi	a0,a0,396 # 1218c <__FRAME_END__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <matmulti>:
   10180:	f8010113          	addi	sp,sp,-128
   10184:	06113c23          	sd	ra,120(sp)
   10188:	06813823          	sd	s0,112(sp)
   1018c:	06913423          	sd	s1,104(sp)
   10190:	07213023          	sd	s2,96(sp)
   10194:	05313c23          	sd	s3,88(sp)
   10198:	08010413          	addi	s0,sp,128
   1019c:	f8a43c23          	sd	a0,-104(s0)
   101a0:	f8b43823          	sd	a1,-112(s0)
   101a4:	f8c43423          	sd	a2,-120(s0)
   101a8:	f8d42223          	sw	a3,-124(s0)
   101ac:	00a00693          	li	a3,10
   101b0:	fff68693          	addi	a3,a3,-1
   101b4:	fcd43423          	sd	a3,-56(s0)
   101b8:	00a00693          	li	a3,10
   101bc:	00068913          	mv	s2,a3
   101c0:	00000993          	li	s3,0
   101c4:	03b95693          	srli	a3,s2,0x3b
   101c8:	00599393          	slli	t2,s3,0x5
   101cc:	0076e3b3          	or	t2,a3,t2
   101d0:	00591313          	slli	t1,s2,0x5
   101d4:	00a00693          	li	a3,10
   101d8:	fff68693          	addi	a3,a3,-1
   101dc:	fad43823          	sd	a3,-80(s0)
   101e0:	00a00693          	li	a3,10
   101e4:	00068f13          	mv	t5,a3
   101e8:	00000f93          	li	t6,0
   101ec:	03bf5693          	srli	a3,t5,0x3b
   101f0:	005f9893          	slli	a7,t6,0x5
   101f4:	0116e8b3          	or	a7,a3,a7
   101f8:	005f1813          	slli	a6,t5,0x5
   101fc:	00a00693          	li	a3,10
   10200:	fff68693          	addi	a3,a3,-1
   10204:	fad43423          	sd	a3,-88(s0)
   10208:	00a00693          	li	a3,10
   1020c:	00068e13          	mv	t3,a3
   10210:	00000e93          	li	t4,0
   10214:	03be5693          	srli	a3,t3,0x3b
   10218:	005e9793          	slli	a5,t4,0x5
   1021c:	00f6e7b3          	or	a5,a3,a5
   10220:	005e1713          	slli	a4,t3,0x5
   10224:	fa042e23          	sw	zero,-68(s0)
   10228:	1800006f          	j	103a8 <matmulti+0x228>
   1022c:	fc042023          	sw	zero,-64(s0)
   10230:	1580006f          	j	10388 <matmulti+0x208>
   10234:	fbc42783          	lw	a5,-68(s0)
   10238:	00a00713          	li	a4,10
   1023c:	00070593          	mv	a1,a4
   10240:	00078513          	mv	a0,a5
   10244:	205000ef          	jal	ra,10c48 <__muldi3>
   10248:	00050793          	mv	a5,a0
   1024c:	00279793          	slli	a5,a5,0x2
   10250:	f8843703          	ld	a4,-120(s0)
   10254:	00f70733          	add	a4,a4,a5
   10258:	fc042783          	lw	a5,-64(s0)
   1025c:	00279793          	slli	a5,a5,0x2
   10260:	00f707b3          	add	a5,a4,a5
   10264:	0007a023          	sw	zero,0(a5)
   10268:	fc042223          	sw	zero,-60(s0)
   1026c:	0fc0006f          	j	10368 <matmulti+0x1e8>
   10270:	fbc42783          	lw	a5,-68(s0)
   10274:	00a00713          	li	a4,10
   10278:	00070593          	mv	a1,a4
   1027c:	00078513          	mv	a0,a5
   10280:	1c9000ef          	jal	ra,10c48 <__muldi3>
   10284:	00050793          	mv	a5,a0
   10288:	00279793          	slli	a5,a5,0x2
   1028c:	f8843703          	ld	a4,-120(s0)
   10290:	00f70733          	add	a4,a4,a5
   10294:	fc042783          	lw	a5,-64(s0)
   10298:	00279793          	slli	a5,a5,0x2
   1029c:	00f707b3          	add	a5,a4,a5
   102a0:	0007a903          	lw	s2,0(a5)
   102a4:	fbc42783          	lw	a5,-68(s0)
   102a8:	00a00713          	li	a4,10
   102ac:	00070593          	mv	a1,a4
   102b0:	00078513          	mv	a0,a5
   102b4:	195000ef          	jal	ra,10c48 <__muldi3>
   102b8:	00050793          	mv	a5,a0
   102bc:	00279793          	slli	a5,a5,0x2
   102c0:	f9843703          	ld	a4,-104(s0)
   102c4:	00f70733          	add	a4,a4,a5
   102c8:	fc442783          	lw	a5,-60(s0)
   102cc:	00279793          	slli	a5,a5,0x2
   102d0:	00f707b3          	add	a5,a4,a5
   102d4:	0007a483          	lw	s1,0(a5)
   102d8:	fc442783          	lw	a5,-60(s0)
   102dc:	00a00713          	li	a4,10
   102e0:	00070593          	mv	a1,a4
   102e4:	00078513          	mv	a0,a5
   102e8:	161000ef          	jal	ra,10c48 <__muldi3>
   102ec:	00050793          	mv	a5,a0
   102f0:	00279793          	slli	a5,a5,0x2
   102f4:	f9043703          	ld	a4,-112(s0)
   102f8:	00f70733          	add	a4,a4,a5
   102fc:	fc042783          	lw	a5,-64(s0)
   10300:	00279793          	slli	a5,a5,0x2
   10304:	00f707b3          	add	a5,a4,a5
   10308:	0007a783          	lw	a5,0(a5)
   1030c:	00078593          	mv	a1,a5
   10310:	00048513          	mv	a0,s1
   10314:	135000ef          	jal	ra,10c48 <__muldi3>
   10318:	00050793          	mv	a5,a0
   1031c:	0007849b          	sext.w	s1,a5
   10320:	fbc42783          	lw	a5,-68(s0)
   10324:	00a00713          	li	a4,10
   10328:	00070593          	mv	a1,a4
   1032c:	00078513          	mv	a0,a5
   10330:	119000ef          	jal	ra,10c48 <__muldi3>
   10334:	00050793          	mv	a5,a0
   10338:	00279793          	slli	a5,a5,0x2
   1033c:	f8843703          	ld	a4,-120(s0)
   10340:	00f706b3          	add	a3,a4,a5
   10344:	009907bb          	addw	a5,s2,s1
   10348:	0007871b          	sext.w	a4,a5
   1034c:	fc042783          	lw	a5,-64(s0)
   10350:	00279793          	slli	a5,a5,0x2
   10354:	00f687b3          	add	a5,a3,a5
   10358:	00e7a023          	sw	a4,0(a5)
   1035c:	fc442783          	lw	a5,-60(s0)
   10360:	0017879b          	addiw	a5,a5,1
   10364:	fcf42223          	sw	a5,-60(s0)
   10368:	fc442703          	lw	a4,-60(s0)
   1036c:	f8442783          	lw	a5,-124(s0)
   10370:	0007071b          	sext.w	a4,a4
   10374:	0007879b          	sext.w	a5,a5
   10378:	eef74ce3          	blt	a4,a5,10270 <matmulti+0xf0>
   1037c:	fc042783          	lw	a5,-64(s0)
   10380:	0017879b          	addiw	a5,a5,1
   10384:	fcf42023          	sw	a5,-64(s0)
   10388:	fc042703          	lw	a4,-64(s0)
   1038c:	f8442783          	lw	a5,-124(s0)
   10390:	0007071b          	sext.w	a4,a4
   10394:	0007879b          	sext.w	a5,a5
   10398:	e8f74ee3          	blt	a4,a5,10234 <matmulti+0xb4>
   1039c:	fbc42783          	lw	a5,-68(s0)
   103a0:	0017879b          	addiw	a5,a5,1
   103a4:	faf42e23          	sw	a5,-68(s0)
   103a8:	fbc42703          	lw	a4,-68(s0)
   103ac:	f8442783          	lw	a5,-124(s0)
   103b0:	0007071b          	sext.w	a4,a4
   103b4:	0007879b          	sext.w	a5,a5
   103b8:	e6f74ae3          	blt	a4,a5,1022c <matmulti+0xac>
   103bc:	00000013          	nop
   103c0:	00000013          	nop
   103c4:	07813083          	ld	ra,120(sp)
   103c8:	07013403          	ld	s0,112(sp)
   103cc:	06813483          	ld	s1,104(sp)
   103d0:	06013903          	ld	s2,96(sp)
   103d4:	05813983          	ld	s3,88(sp)
   103d8:	08010113          	addi	sp,sp,128
   103dc:	00008067          	ret

00000000000103e0 <main>:
   103e0:	e2010113          	addi	sp,sp,-480
   103e4:	1c113c23          	sd	ra,472(sp)
   103e8:	1c813823          	sd	s0,464(sp)
   103ec:	1c913423          	sd	s1,456(sp)
   103f0:	1d213023          	sd	s2,448(sp)
   103f4:	1b313c23          	sd	s3,440(sp)
   103f8:	1b413823          	sd	s4,432(sp)
   103fc:	1b513423          	sd	s5,424(sp)
   10400:	1b613023          	sd	s6,416(sp)
   10404:	19713c23          	sd	s7,408(sp)
   10408:	19813823          	sd	s8,400(sp)
   1040c:	19913423          	sd	s9,392(sp)
   10410:	19a13023          	sd	s10,384(sp)
   10414:	17b13c23          	sd	s11,376(sp)
   10418:	1e010413          	addi	s0,sp,480
   1041c:	00010793          	mv	a5,sp
   10420:	e2f43023          	sd	a5,-480(s0)
   10424:	00a00793          	li	a5,10
   10428:	fff78793          	addi	a5,a5,-1
   1042c:	f8f43023          	sd	a5,-128(s0)
   10430:	00a00793          	li	a5,10
   10434:	00078513          	mv	a0,a5
   10438:	00000593          	li	a1,0
   1043c:	03b55793          	srli	a5,a0,0x3b
   10440:	00559693          	slli	a3,a1,0x5
   10444:	00d7e6b3          	or	a3,a5,a3
   10448:	00551613          	slli	a2,a0,0x5
   1044c:	00a00793          	li	a5,10
   10450:	00279793          	slli	a5,a5,0x2
   10454:	e2f43423          	sd	a5,-472(s0)
   10458:	00a00793          	li	a5,10
   1045c:	fff78793          	addi	a5,a5,-1
   10460:	f8f43423          	sd	a5,-120(s0)
   10464:	00a00793          	li	a5,10
   10468:	00078313          	mv	t1,a5
   1046c:	00000393          	li	t2,0
   10470:	00a00793          	li	a5,10
   10474:	00078813          	mv	a6,a5
   10478:	00000893          	li	a7,0
   1047c:	00080613          	mv	a2,a6
   10480:	00088693          	mv	a3,a7
   10484:	00030513          	mv	a0,t1
   10488:	00038593          	mv	a1,t2
   1048c:	7e0000ef          	jal	ra,10c6c <__multi3>
   10490:	00050613          	mv	a2,a0
   10494:	00058693          	mv	a3,a1
   10498:	00060713          	mv	a4,a2
   1049c:	00068793          	mv	a5,a3
   104a0:	03b75693          	srli	a3,a4,0x3b
   104a4:	00579993          	slli	s3,a5,0x5
   104a8:	0136e9b3          	or	s3,a3,s3
   104ac:	00571913          	slli	s2,a4,0x5
   104b0:	00a00793          	li	a5,10
   104b4:	00078713          	mv	a4,a5
   104b8:	00a00793          	li	a5,10
   104bc:	00078593          	mv	a1,a5
   104c0:	00070513          	mv	a0,a4
   104c4:	784000ef          	jal	ra,10c48 <__muldi3>
   104c8:	00a00793          	li	a5,10
   104cc:	f0f43023          	sd	a5,-256(s0)
   104d0:	f0043423          	sd	zero,-248(s0)
   104d4:	00a00793          	li	a5,10
   104d8:	eef43823          	sd	a5,-272(s0)
   104dc:	ee043c23          	sd	zero,-264(s0)
   104e0:	ef043603          	ld	a2,-272(s0)
   104e4:	ef843683          	ld	a3,-264(s0)
   104e8:	f0043503          	ld	a0,-256(s0)
   104ec:	f0843583          	ld	a1,-248(s0)
   104f0:	77c000ef          	jal	ra,10c6c <__multi3>
   104f4:	00050613          	mv	a2,a0
   104f8:	00058693          	mv	a3,a1
   104fc:	00060713          	mv	a4,a2
   10500:	00068793          	mv	a5,a3
   10504:	03b75693          	srli	a3,a4,0x3b
   10508:	00579a93          	slli	s5,a5,0x5
   1050c:	0156eab3          	or	s5,a3,s5
   10510:	00571a13          	slli	s4,a4,0x5
   10514:	00a00793          	li	a5,10
   10518:	00078713          	mv	a4,a5
   1051c:	00a00793          	li	a5,10
   10520:	00078593          	mv	a1,a5
   10524:	00070513          	mv	a0,a4
   10528:	720000ef          	jal	ra,10c48 <__muldi3>
   1052c:	00050793          	mv	a5,a0
   10530:	00279793          	slli	a5,a5,0x2
   10534:	00f78793          	addi	a5,a5,15
   10538:	0047d793          	srli	a5,a5,0x4
   1053c:	00479793          	slli	a5,a5,0x4
   10540:	40f10133          	sub	sp,sp,a5
   10544:	00010793          	mv	a5,sp
   10548:	00378793          	addi	a5,a5,3
   1054c:	0027d793          	srli	a5,a5,0x2
   10550:	00279793          	slli	a5,a5,0x2
   10554:	f4f43c23          	sd	a5,-168(s0)
   10558:	00a00793          	li	a5,10
   1055c:	fff78793          	addi	a5,a5,-1
   10560:	f4f43823          	sd	a5,-176(s0)
   10564:	00a00793          	li	a5,10
   10568:	00078c13          	mv	s8,a5
   1056c:	00000c93          	li	s9,0
   10570:	03bc5793          	srli	a5,s8,0x3b
   10574:	005c9b93          	slli	s7,s9,0x5
   10578:	0177ebb3          	or	s7,a5,s7
   1057c:	005c1b13          	slli	s6,s8,0x5
   10580:	00a00793          	li	a5,10
   10584:	00279a13          	slli	s4,a5,0x2
   10588:	00a00793          	li	a5,10
   1058c:	fff78793          	addi	a5,a5,-1
   10590:	f4f43423          	sd	a5,-184(s0)
   10594:	00a00793          	li	a5,10
   10598:	eef43023          	sd	a5,-288(s0)
   1059c:	ee043423          	sd	zero,-280(s0)
   105a0:	00a00793          	li	a5,10
   105a4:	ecf43823          	sd	a5,-304(s0)
   105a8:	ec043c23          	sd	zero,-296(s0)
   105ac:	ed043603          	ld	a2,-304(s0)
   105b0:	ed843683          	ld	a3,-296(s0)
   105b4:	ee043503          	ld	a0,-288(s0)
   105b8:	ee843583          	ld	a1,-280(s0)
   105bc:	6b0000ef          	jal	ra,10c6c <__multi3>
   105c0:	00050613          	mv	a2,a0
   105c4:	00058693          	mv	a3,a1
   105c8:	00060713          	mv	a4,a2
   105cc:	00068793          	mv	a5,a3
   105d0:	03b75693          	srli	a3,a4,0x3b
   105d4:	00579613          	slli	a2,a5,0x5
   105d8:	e6c43423          	sd	a2,-408(s0)
   105dc:	e6843603          	ld	a2,-408(s0)
   105e0:	00c6e6b3          	or	a3,a3,a2
   105e4:	e6d43423          	sd	a3,-408(s0)
   105e8:	00571793          	slli	a5,a4,0x5
   105ec:	e6f43023          	sd	a5,-416(s0)
   105f0:	00a00793          	li	a5,10
   105f4:	00078713          	mv	a4,a5
   105f8:	00a00793          	li	a5,10
   105fc:	00078593          	mv	a1,a5
   10600:	00070513          	mv	a0,a4
   10604:	644000ef          	jal	ra,10c48 <__muldi3>
   10608:	00a00793          	li	a5,10
   1060c:	ecf43023          	sd	a5,-320(s0)
   10610:	ec043423          	sd	zero,-312(s0)
   10614:	00a00793          	li	a5,10
   10618:	eaf43823          	sd	a5,-336(s0)
   1061c:	ea043c23          	sd	zero,-328(s0)
   10620:	eb043603          	ld	a2,-336(s0)
   10624:	eb843683          	ld	a3,-328(s0)
   10628:	ec043503          	ld	a0,-320(s0)
   1062c:	ec843583          	ld	a1,-312(s0)
   10630:	63c000ef          	jal	ra,10c6c <__multi3>
   10634:	00050613          	mv	a2,a0
   10638:	00058693          	mv	a3,a1
   1063c:	00060713          	mv	a4,a2
   10640:	00068793          	mv	a5,a3
   10644:	03b75693          	srli	a3,a4,0x3b
   10648:	00579613          	slli	a2,a5,0x5
   1064c:	e4c43c23          	sd	a2,-424(s0)
   10650:	e5843603          	ld	a2,-424(s0)
   10654:	00c6e6b3          	or	a3,a3,a2
   10658:	e4d43c23          	sd	a3,-424(s0)
   1065c:	00571793          	slli	a5,a4,0x5
   10660:	e4f43823          	sd	a5,-432(s0)
   10664:	00a00793          	li	a5,10
   10668:	00078713          	mv	a4,a5
   1066c:	00a00793          	li	a5,10
   10670:	00078593          	mv	a1,a5
   10674:	00070513          	mv	a0,a4
   10678:	5d0000ef          	jal	ra,10c48 <__muldi3>
   1067c:	00050793          	mv	a5,a0
   10680:	00279793          	slli	a5,a5,0x2
   10684:	00f78793          	addi	a5,a5,15
   10688:	0047d793          	srli	a5,a5,0x4
   1068c:	00479793          	slli	a5,a5,0x4
   10690:	40f10133          	sub	sp,sp,a5
   10694:	00010793          	mv	a5,sp
   10698:	00378793          	addi	a5,a5,3
   1069c:	0027d793          	srli	a5,a5,0x2
   106a0:	00279793          	slli	a5,a5,0x2
   106a4:	f4f43023          	sd	a5,-192(s0)
   106a8:	00a00793          	li	a5,10
   106ac:	fff78793          	addi	a5,a5,-1
   106b0:	f2f43c23          	sd	a5,-200(s0)
   106b4:	00a00793          	li	a5,10
   106b8:	f0f43823          	sd	a5,-240(s0)
   106bc:	f0043c23          	sd	zero,-232(s0)
   106c0:	f1043783          	ld	a5,-240(s0)
   106c4:	03b7d793          	srli	a5,a5,0x3b
   106c8:	f1843703          	ld	a4,-232(s0)
   106cc:	00571713          	slli	a4,a4,0x5
   106d0:	e4e43423          	sd	a4,-440(s0)
   106d4:	e4843703          	ld	a4,-440(s0)
   106d8:	00e7e7b3          	or	a5,a5,a4
   106dc:	e4f43423          	sd	a5,-440(s0)
   106e0:	f1043783          	ld	a5,-240(s0)
   106e4:	00579793          	slli	a5,a5,0x5
   106e8:	e4f43023          	sd	a5,-448(s0)
   106ec:	00a00793          	li	a5,10
   106f0:	00279493          	slli	s1,a5,0x2
   106f4:	00a00793          	li	a5,10
   106f8:	fff78793          	addi	a5,a5,-1
   106fc:	f2f43823          	sd	a5,-208(s0)
   10700:	00a00793          	li	a5,10
   10704:	eaf43023          	sd	a5,-352(s0)
   10708:	ea043423          	sd	zero,-344(s0)
   1070c:	00a00793          	li	a5,10
   10710:	e8f43823          	sd	a5,-368(s0)
   10714:	e8043c23          	sd	zero,-360(s0)
   10718:	e9043603          	ld	a2,-368(s0)
   1071c:	e9843683          	ld	a3,-360(s0)
   10720:	ea043503          	ld	a0,-352(s0)
   10724:	ea843583          	ld	a1,-344(s0)
   10728:	544000ef          	jal	ra,10c6c <__multi3>
   1072c:	00050613          	mv	a2,a0
   10730:	00058693          	mv	a3,a1
   10734:	00060713          	mv	a4,a2
   10738:	00068793          	mv	a5,a3
   1073c:	03b75693          	srli	a3,a4,0x3b
   10740:	00579613          	slli	a2,a5,0x5
   10744:	e2c43c23          	sd	a2,-456(s0)
   10748:	e3843603          	ld	a2,-456(s0)
   1074c:	00c6e6b3          	or	a3,a3,a2
   10750:	e2d43c23          	sd	a3,-456(s0)
   10754:	00571793          	slli	a5,a4,0x5
   10758:	e2f43823          	sd	a5,-464(s0)
   1075c:	00a00793          	li	a5,10
   10760:	00078713          	mv	a4,a5
   10764:	00a00793          	li	a5,10
   10768:	00078593          	mv	a1,a5
   1076c:	00070513          	mv	a0,a4
   10770:	4d8000ef          	jal	ra,10c48 <__muldi3>
   10774:	00a00793          	li	a5,10
   10778:	e8f43023          	sd	a5,-384(s0)
   1077c:	e8043423          	sd	zero,-376(s0)
   10780:	00a00793          	li	a5,10
   10784:	e6f43823          	sd	a5,-400(s0)
   10788:	e6043c23          	sd	zero,-392(s0)
   1078c:	e7043603          	ld	a2,-400(s0)
   10790:	e7843683          	ld	a3,-392(s0)
   10794:	e8043503          	ld	a0,-384(s0)
   10798:	e8843583          	ld	a1,-376(s0)
   1079c:	4d0000ef          	jal	ra,10c6c <__multi3>
   107a0:	00050613          	mv	a2,a0
   107a4:	00058693          	mv	a3,a1
   107a8:	00060713          	mv	a4,a2
   107ac:	00068793          	mv	a5,a3
   107b0:	03b75693          	srli	a3,a4,0x3b
   107b4:	00579d93          	slli	s11,a5,0x5
   107b8:	01b6edb3          	or	s11,a3,s11
   107bc:	00571d13          	slli	s10,a4,0x5
   107c0:	00a00793          	li	a5,10
   107c4:	00078713          	mv	a4,a5
   107c8:	00a00793          	li	a5,10
   107cc:	00078593          	mv	a1,a5
   107d0:	00070513          	mv	a0,a4
   107d4:	474000ef          	jal	ra,10c48 <__muldi3>
   107d8:	00050793          	mv	a5,a0
   107dc:	00279793          	slli	a5,a5,0x2
   107e0:	00f78793          	addi	a5,a5,15
   107e4:	0047d793          	srli	a5,a5,0x4
   107e8:	00479793          	slli	a5,a5,0x4
   107ec:	40f10133          	sub	sp,sp,a5
   107f0:	00010793          	mv	a5,sp
   107f4:	00378793          	addi	a5,a5,3
   107f8:	0027d793          	srli	a5,a5,0x2
   107fc:	00279793          	slli	a5,a5,0x2
   10800:	f2f43423          	sd	a5,-216(s0)
   10804:	f6042023          	sw	zero,-160(s0)
   10808:	0d00006f          	j	108d8 <main+0x4f8>
   1080c:	f6042223          	sw	zero,-156(s0)
   10810:	0ac0006f          	j	108bc <main+0x4dc>
   10814:	e2843783          	ld	a5,-472(s0)
   10818:	0027d713          	srli	a4,a5,0x2
   1081c:	f5843903          	ld	s2,-168(s0)
   10820:	f6442983          	lw	s3,-156(s0)
   10824:	f6042783          	lw	a5,-160(s0)
   10828:	00070593          	mv	a1,a4
   1082c:	00078513          	mv	a0,a5
   10830:	418000ef          	jal	ra,10c48 <__muldi3>
   10834:	00050793          	mv	a5,a0
   10838:	00f987b3          	add	a5,s3,a5
   1083c:	00279793          	slli	a5,a5,0x2
   10840:	00f907b3          	add	a5,s2,a5
   10844:	f6042703          	lw	a4,-160(s0)
   10848:	00e7a023          	sw	a4,0(a5)
   1084c:	002a5713          	srli	a4,s4,0x2
   10850:	f4043903          	ld	s2,-192(s0)
   10854:	f6442983          	lw	s3,-156(s0)
   10858:	f6042783          	lw	a5,-160(s0)
   1085c:	00070593          	mv	a1,a4
   10860:	00078513          	mv	a0,a5
   10864:	3e4000ef          	jal	ra,10c48 <__muldi3>
   10868:	00050793          	mv	a5,a0
   1086c:	00f987b3          	add	a5,s3,a5
   10870:	00279793          	slli	a5,a5,0x2
   10874:	00f907b3          	add	a5,s2,a5
   10878:	f6442703          	lw	a4,-156(s0)
   1087c:	00e7a023          	sw	a4,0(a5)
   10880:	0024d713          	srli	a4,s1,0x2
   10884:	f2843903          	ld	s2,-216(s0)
   10888:	f6442983          	lw	s3,-156(s0)
   1088c:	f6042783          	lw	a5,-160(s0)
   10890:	00070593          	mv	a1,a4
   10894:	00078513          	mv	a0,a5
   10898:	3b0000ef          	jal	ra,10c48 <__muldi3>
   1089c:	00050793          	mv	a5,a0
   108a0:	00f987b3          	add	a5,s3,a5
   108a4:	00279793          	slli	a5,a5,0x2
   108a8:	00f907b3          	add	a5,s2,a5
   108ac:	0007a023          	sw	zero,0(a5)
   108b0:	f6442783          	lw	a5,-156(s0)
   108b4:	0017879b          	addiw	a5,a5,1
   108b8:	f6f42223          	sw	a5,-156(s0)
   108bc:	00a00713          	li	a4,10
   108c0:	f6442783          	lw	a5,-156(s0)
   108c4:	0007879b          	sext.w	a5,a5
   108c8:	f4e7c6e3          	blt	a5,a4,10814 <main+0x434>
   108cc:	f6042783          	lw	a5,-160(s0)
   108d0:	0017879b          	addiw	a5,a5,1
   108d4:	f6f42023          	sw	a5,-160(s0)
   108d8:	00a00713          	li	a4,10
   108dc:	f6042783          	lw	a5,-160(s0)
   108e0:	0007879b          	sext.w	a5,a5
   108e4:	f2e7c4e3          	blt	a5,a4,1080c <main+0x42c>
   108e8:	000117b7          	lui	a5,0x11
   108ec:	13078513          	addi	a0,a5,304 # 11130 <__errno+0x8>
   108f0:	280000ef          	jal	ra,10b70 <print_s>
   108f4:	f6042423          	sw	zero,-152(s0)
   108f8:	0880006f          	j	10980 <main+0x5a0>
   108fc:	f6042623          	sw	zero,-148(s0)
   10900:	0580006f          	j	10958 <main+0x578>
   10904:	e2843783          	ld	a5,-472(s0)
   10908:	0027d713          	srli	a4,a5,0x2
   1090c:	f5843903          	ld	s2,-168(s0)
   10910:	f6c42983          	lw	s3,-148(s0)
   10914:	f6842783          	lw	a5,-152(s0)
   10918:	00070593          	mv	a1,a4
   1091c:	00078513          	mv	a0,a5
   10920:	328000ef          	jal	ra,10c48 <__muldi3>
   10924:	00050793          	mv	a5,a0
   10928:	00f987b3          	add	a5,s3,a5
   1092c:	00279793          	slli	a5,a5,0x2
   10930:	00f907b3          	add	a5,s2,a5
   10934:	0007a783          	lw	a5,0(a5)
   10938:	00078513          	mv	a0,a5
   1093c:	208000ef          	jal	ra,10b44 <print_d>
   10940:	000117b7          	lui	a5,0x11
   10944:	14878513          	addi	a0,a5,328 # 11148 <__errno+0x20>
   10948:	228000ef          	jal	ra,10b70 <print_s>
   1094c:	f6c42783          	lw	a5,-148(s0)
   10950:	0017879b          	addiw	a5,a5,1
   10954:	f6f42623          	sw	a5,-148(s0)
   10958:	00a00713          	li	a4,10
   1095c:	f6c42783          	lw	a5,-148(s0)
   10960:	0007879b          	sext.w	a5,a5
   10964:	fae7c0e3          	blt	a5,a4,10904 <main+0x524>
   10968:	000117b7          	lui	a5,0x11
   1096c:	15078513          	addi	a0,a5,336 # 11150 <__errno+0x28>
   10970:	200000ef          	jal	ra,10b70 <print_s>
   10974:	f6842783          	lw	a5,-152(s0)
   10978:	0017879b          	addiw	a5,a5,1
   1097c:	f6f42423          	sw	a5,-152(s0)
   10980:	00a00713          	li	a4,10
   10984:	f6842783          	lw	a5,-152(s0)
   10988:	0007879b          	sext.w	a5,a5
   1098c:	f6e7c8e3          	blt	a5,a4,108fc <main+0x51c>
   10990:	000117b7          	lui	a5,0x11
   10994:	15878513          	addi	a0,a5,344 # 11158 <__errno+0x30>
   10998:	1d8000ef          	jal	ra,10b70 <print_s>
   1099c:	f6042823          	sw	zero,-144(s0)
   109a0:	0840006f          	j	10a24 <main+0x644>
   109a4:	f6042a23          	sw	zero,-140(s0)
   109a8:	0540006f          	j	109fc <main+0x61c>
   109ac:	002a5713          	srli	a4,s4,0x2
   109b0:	f4043903          	ld	s2,-192(s0)
   109b4:	f7442983          	lw	s3,-140(s0)
   109b8:	f7042783          	lw	a5,-144(s0)
   109bc:	00070593          	mv	a1,a4
   109c0:	00078513          	mv	a0,a5
   109c4:	284000ef          	jal	ra,10c48 <__muldi3>
   109c8:	00050793          	mv	a5,a0
   109cc:	00f987b3          	add	a5,s3,a5
   109d0:	00279793          	slli	a5,a5,0x2
   109d4:	00f907b3          	add	a5,s2,a5
   109d8:	0007a783          	lw	a5,0(a5)
   109dc:	00078513          	mv	a0,a5
   109e0:	164000ef          	jal	ra,10b44 <print_d>
   109e4:	000117b7          	lui	a5,0x11
   109e8:	14878513          	addi	a0,a5,328 # 11148 <__errno+0x20>
   109ec:	184000ef          	jal	ra,10b70 <print_s>
   109f0:	f7442783          	lw	a5,-140(s0)
   109f4:	0017879b          	addiw	a5,a5,1
   109f8:	f6f42a23          	sw	a5,-140(s0)
   109fc:	00a00713          	li	a4,10
   10a00:	f7442783          	lw	a5,-140(s0)
   10a04:	0007879b          	sext.w	a5,a5
   10a08:	fae7c2e3          	blt	a5,a4,109ac <main+0x5cc>
   10a0c:	000117b7          	lui	a5,0x11
   10a10:	15078513          	addi	a0,a5,336 # 11150 <__errno+0x28>
   10a14:	15c000ef          	jal	ra,10b70 <print_s>
   10a18:	f7042783          	lw	a5,-144(s0)
   10a1c:	0017879b          	addiw	a5,a5,1
   10a20:	f6f42823          	sw	a5,-144(s0)
   10a24:	00a00713          	li	a4,10
   10a28:	f7042783          	lw	a5,-144(s0)
   10a2c:	0007879b          	sext.w	a5,a5
   10a30:	f6e7cae3          	blt	a5,a4,109a4 <main+0x5c4>
   10a34:	f5843783          	ld	a5,-168(s0)
   10a38:	f4043703          	ld	a4,-192(s0)
   10a3c:	f2843603          	ld	a2,-216(s0)
   10a40:	00a00693          	li	a3,10
   10a44:	00070593          	mv	a1,a4
   10a48:	00078513          	mv	a0,a5
   10a4c:	f34ff0ef          	jal	ra,10180 <matmulti>
   10a50:	000117b7          	lui	a5,0x11
   10a54:	17078513          	addi	a0,a5,368 # 11170 <__errno+0x48>
   10a58:	118000ef          	jal	ra,10b70 <print_s>
   10a5c:	f6042c23          	sw	zero,-136(s0)
   10a60:	0840006f          	j	10ae4 <main+0x704>
   10a64:	f6042e23          	sw	zero,-132(s0)
   10a68:	0540006f          	j	10abc <main+0x6dc>
   10a6c:	0024d713          	srli	a4,s1,0x2
   10a70:	f2843903          	ld	s2,-216(s0)
   10a74:	f7c42983          	lw	s3,-132(s0)
   10a78:	f7842783          	lw	a5,-136(s0)
   10a7c:	00070593          	mv	a1,a4
   10a80:	00078513          	mv	a0,a5
   10a84:	1c4000ef          	jal	ra,10c48 <__muldi3>
   10a88:	00050793          	mv	a5,a0
   10a8c:	00f987b3          	add	a5,s3,a5
   10a90:	00279793          	slli	a5,a5,0x2
   10a94:	00f907b3          	add	a5,s2,a5
   10a98:	0007a783          	lw	a5,0(a5)
   10a9c:	00078513          	mv	a0,a5
   10aa0:	0a4000ef          	jal	ra,10b44 <print_d>
   10aa4:	000117b7          	lui	a5,0x11
   10aa8:	14878513          	addi	a0,a5,328 # 11148 <__errno+0x20>
   10aac:	0c4000ef          	jal	ra,10b70 <print_s>
   10ab0:	f7c42783          	lw	a5,-132(s0)
   10ab4:	0017879b          	addiw	a5,a5,1
   10ab8:	f6f42e23          	sw	a5,-132(s0)
   10abc:	00a00713          	li	a4,10
   10ac0:	f7c42783          	lw	a5,-132(s0)
   10ac4:	0007879b          	sext.w	a5,a5
   10ac8:	fae7c2e3          	blt	a5,a4,10a6c <main+0x68c>
   10acc:	000117b7          	lui	a5,0x11
   10ad0:	15078513          	addi	a0,a5,336 # 11150 <__errno+0x28>
   10ad4:	09c000ef          	jal	ra,10b70 <print_s>
   10ad8:	f7842783          	lw	a5,-136(s0)
   10adc:	0017879b          	addiw	a5,a5,1
   10ae0:	f6f42c23          	sw	a5,-136(s0)
   10ae4:	00a00713          	li	a4,10
   10ae8:	f7842783          	lw	a5,-136(s0)
   10aec:	0007879b          	sext.w	a5,a5
   10af0:	f6e7cae3          	blt	a5,a4,10a64 <main+0x684>
   10af4:	0d0000ef          	jal	ra,10bc4 <exit_proc>
   10af8:	e2043103          	ld	sp,-480(s0)
   10afc:	00000793          	li	a5,0
   10b00:	00078513          	mv	a0,a5
   10b04:	e2040113          	addi	sp,s0,-480
   10b08:	1d813083          	ld	ra,472(sp)
   10b0c:	1d013403          	ld	s0,464(sp)
   10b10:	1c813483          	ld	s1,456(sp)
   10b14:	1c013903          	ld	s2,448(sp)
   10b18:	1b813983          	ld	s3,440(sp)
   10b1c:	1b013a03          	ld	s4,432(sp)
   10b20:	1a813a83          	ld	s5,424(sp)
   10b24:	1a013b03          	ld	s6,416(sp)
   10b28:	19813b83          	ld	s7,408(sp)
   10b2c:	19013c03          	ld	s8,400(sp)
   10b30:	18813c83          	ld	s9,392(sp)
   10b34:	18013d03          	ld	s10,384(sp)
   10b38:	17813d83          	ld	s11,376(sp)
   10b3c:	1e010113          	addi	sp,sp,480
   10b40:	00008067          	ret

0000000000010b44 <print_d>:
   10b44:	fe010113          	addi	sp,sp,-32
   10b48:	00813c23          	sd	s0,24(sp)
   10b4c:	02010413          	addi	s0,sp,32
   10b50:	00050793          	mv	a5,a0
   10b54:	fef42623          	sw	a5,-20(s0)
   10b58:	00100893          	li	a7,1
   10b5c:	00000073          	ecall
   10b60:	00000013          	nop
   10b64:	01813403          	ld	s0,24(sp)
   10b68:	02010113          	addi	sp,sp,32
   10b6c:	00008067          	ret

0000000000010b70 <print_s>:
   10b70:	fe010113          	addi	sp,sp,-32
   10b74:	00813c23          	sd	s0,24(sp)
   10b78:	02010413          	addi	s0,sp,32
   10b7c:	fea43423          	sd	a0,-24(s0)
   10b80:	00300893          	li	a7,3
   10b84:	00000073          	ecall
   10b88:	00000013          	nop
   10b8c:	01813403          	ld	s0,24(sp)
   10b90:	02010113          	addi	sp,sp,32
   10b94:	00008067          	ret

0000000000010b98 <print_c>:
   10b98:	fe010113          	addi	sp,sp,-32
   10b9c:	00813c23          	sd	s0,24(sp)
   10ba0:	02010413          	addi	s0,sp,32
   10ba4:	00050793          	mv	a5,a0
   10ba8:	fef407a3          	sb	a5,-17(s0)
   10bac:	00200893          	li	a7,2
   10bb0:	00000073          	ecall
   10bb4:	00000013          	nop
   10bb8:	01813403          	ld	s0,24(sp)
   10bbc:	02010113          	addi	sp,sp,32
   10bc0:	00008067          	ret

0000000000010bc4 <exit_proc>:
   10bc4:	ff010113          	addi	sp,sp,-16
   10bc8:	00813423          	sd	s0,8(sp)
   10bcc:	01010413          	addi	s0,sp,16
   10bd0:	00000893          	li	a7,0
   10bd4:	00000073          	ecall
   10bd8:	00000013          	nop
   10bdc:	00813403          	ld	s0,8(sp)
   10be0:	01010113          	addi	sp,sp,16
   10be4:	00008067          	ret

0000000000010be8 <read_char>:
   10be8:	fe010113          	addi	sp,sp,-32
   10bec:	00813c23          	sd	s0,24(sp)
   10bf0:	02010413          	addi	s0,sp,32
   10bf4:	00500893          	li	a7,5
   10bf8:	00000073          	ecall
   10bfc:	00050793          	mv	a5,a0
   10c00:	fef407a3          	sb	a5,-17(s0)
   10c04:	fef44783          	lbu	a5,-17(s0)
   10c08:	00078513          	mv	a0,a5
   10c0c:	01813403          	ld	s0,24(sp)
   10c10:	02010113          	addi	sp,sp,32
   10c14:	00008067          	ret

0000000000010c18 <read_num>:
   10c18:	fe010113          	addi	sp,sp,-32
   10c1c:	00813c23          	sd	s0,24(sp)
   10c20:	02010413          	addi	s0,sp,32
   10c24:	00400893          	li	a7,4
   10c28:	00000073          	ecall
   10c2c:	00050793          	mv	a5,a0
   10c30:	fef43423          	sd	a5,-24(s0)
   10c34:	fe843783          	ld	a5,-24(s0)
   10c38:	00078513          	mv	a0,a5
   10c3c:	01813403          	ld	s0,24(sp)
   10c40:	02010113          	addi	sp,sp,32
   10c44:	00008067          	ret

0000000000010c48 <__muldi3>:
   10c48:	00050613          	mv	a2,a0
   10c4c:	00000513          	li	a0,0
   10c50:	0015f693          	andi	a3,a1,1
   10c54:	00068463          	beqz	a3,10c5c <__muldi3+0x14>
   10c58:	00c50533          	add	a0,a0,a2
   10c5c:	0015d593          	srli	a1,a1,0x1
   10c60:	00161613          	slli	a2,a2,0x1
   10c64:	fe0596e3          	bnez	a1,10c50 <__muldi3+0x8>
   10c68:	00008067          	ret

0000000000010c6c <__multi3>:
   10c6c:	00050313          	mv	t1,a0
   10c70:	ff010113          	addi	sp,sp,-16
   10c74:	00060513          	mv	a0,a2
   10c78:	00068893          	mv	a7,a3
   10c7c:	00113423          	sd	ra,8(sp)
   10c80:	00030613          	mv	a2,t1
   10c84:	00050693          	mv	a3,a0
   10c88:	00000713          	li	a4,0
   10c8c:	00000793          	li	a5,0
   10c90:	00000813          	li	a6,0
   10c94:	0016fe13          	andi	t3,a3,1
   10c98:	00171e93          	slli	t4,a4,0x1
   10c9c:	000e0c63          	beqz	t3,10cb4 <__multi3+0x48>
   10ca0:	01060e33          	add	t3,a2,a6
   10ca4:	010e3833          	sltu	a6,t3,a6
   10ca8:	00e787b3          	add	a5,a5,a4
   10cac:	00f807b3          	add	a5,a6,a5
   10cb0:	000e0813          	mv	a6,t3
   10cb4:	03f65713          	srli	a4,a2,0x3f
   10cb8:	0016d693          	srli	a3,a3,0x1
   10cbc:	00eee733          	or	a4,t4,a4
   10cc0:	00161613          	slli	a2,a2,0x1
   10cc4:	fc0698e3          	bnez	a3,10c94 <__multi3+0x28>
   10cc8:	00058663          	beqz	a1,10cd4 <__multi3+0x68>
   10ccc:	f7dff0ef          	jal	ra,10c48 <__muldi3>
   10cd0:	00a787b3          	add	a5,a5,a0
   10cd4:	00088a63          	beqz	a7,10ce8 <__multi3+0x7c>
   10cd8:	00030513          	mv	a0,t1
   10cdc:	00088593          	mv	a1,a7
   10ce0:	f69ff0ef          	jal	ra,10c48 <__muldi3>
   10ce4:	00f507b3          	add	a5,a0,a5
   10ce8:	00813083          	ld	ra,8(sp)
   10cec:	00080513          	mv	a0,a6
   10cf0:	00078593          	mv	a1,a5
   10cf4:	01010113          	addi	sp,sp,16
   10cf8:	00008067          	ret

0000000000010cfc <exit>:
   10cfc:	ff010113          	addi	sp,sp,-16
   10d00:	00000593          	li	a1,0
   10d04:	00813023          	sd	s0,0(sp)
   10d08:	00113423          	sd	ra,8(sp)
   10d0c:	00050413          	mv	s0,a0
   10d10:	194000ef          	jal	ra,10ea4 <__call_exitprocs>
   10d14:	f501b503          	ld	a0,-176(gp) # 128f8 <_global_impure_ptr>
   10d18:	05853783          	ld	a5,88(a0)
   10d1c:	00078463          	beqz	a5,10d24 <exit+0x28>
   10d20:	000780e7          	jalr	a5
   10d24:	00040513          	mv	a0,s0
   10d28:	3bc000ef          	jal	ra,110e4 <_exit>

0000000000010d2c <__libc_init_array>:
   10d2c:	fe010113          	addi	sp,sp,-32
   10d30:	00813823          	sd	s0,16(sp)
   10d34:	01213023          	sd	s2,0(sp)
   10d38:	00012437          	lui	s0,0x12
   10d3c:	00012937          	lui	s2,0x12
   10d40:	19040793          	addi	a5,s0,400 # 12190 <__init_array_start>
   10d44:	19090913          	addi	s2,s2,400 # 12190 <__init_array_start>
   10d48:	40f90933          	sub	s2,s2,a5
   10d4c:	00113c23          	sd	ra,24(sp)
   10d50:	00913423          	sd	s1,8(sp)
   10d54:	40395913          	srai	s2,s2,0x3
   10d58:	02090063          	beqz	s2,10d78 <__libc_init_array+0x4c>
   10d5c:	19040413          	addi	s0,s0,400
   10d60:	00000493          	li	s1,0
   10d64:	00043783          	ld	a5,0(s0)
   10d68:	00148493          	addi	s1,s1,1
   10d6c:	00840413          	addi	s0,s0,8
   10d70:	000780e7          	jalr	a5
   10d74:	fe9918e3          	bne	s2,s1,10d64 <__libc_init_array+0x38>
   10d78:	00012437          	lui	s0,0x12
   10d7c:	00012937          	lui	s2,0x12
   10d80:	19040793          	addi	a5,s0,400 # 12190 <__init_array_start>
   10d84:	1a090913          	addi	s2,s2,416 # 121a0 <__do_global_dtors_aux_fini_array_entry>
   10d88:	40f90933          	sub	s2,s2,a5
   10d8c:	40395913          	srai	s2,s2,0x3
   10d90:	02090063          	beqz	s2,10db0 <__libc_init_array+0x84>
   10d94:	19040413          	addi	s0,s0,400
   10d98:	00000493          	li	s1,0
   10d9c:	00043783          	ld	a5,0(s0)
   10da0:	00148493          	addi	s1,s1,1
   10da4:	00840413          	addi	s0,s0,8
   10da8:	000780e7          	jalr	a5
   10dac:	fe9918e3          	bne	s2,s1,10d9c <__libc_init_array+0x70>
   10db0:	01813083          	ld	ra,24(sp)
   10db4:	01013403          	ld	s0,16(sp)
   10db8:	00813483          	ld	s1,8(sp)
   10dbc:	00013903          	ld	s2,0(sp)
   10dc0:	02010113          	addi	sp,sp,32
   10dc4:	00008067          	ret

0000000000010dc8 <memset>:
   10dc8:	00f00313          	li	t1,15
   10dcc:	00050713          	mv	a4,a0
   10dd0:	02c37a63          	bgeu	t1,a2,10e04 <memset+0x3c>
   10dd4:	00f77793          	andi	a5,a4,15
   10dd8:	0a079063          	bnez	a5,10e78 <memset+0xb0>
   10ddc:	06059e63          	bnez	a1,10e58 <memset+0x90>
   10de0:	ff067693          	andi	a3,a2,-16
   10de4:	00f67613          	andi	a2,a2,15
   10de8:	00e686b3          	add	a3,a3,a4
   10dec:	00b73023          	sd	a1,0(a4)
   10df0:	00b73423          	sd	a1,8(a4)
   10df4:	01070713          	addi	a4,a4,16
   10df8:	fed76ae3          	bltu	a4,a3,10dec <memset+0x24>
   10dfc:	00061463          	bnez	a2,10e04 <memset+0x3c>
   10e00:	00008067          	ret
   10e04:	40c306b3          	sub	a3,t1,a2
   10e08:	00269693          	slli	a3,a3,0x2
   10e0c:	00000297          	auipc	t0,0x0
   10e10:	005686b3          	add	a3,a3,t0
   10e14:	00c68067          	jr	12(a3)
   10e18:	00b70723          	sb	a1,14(a4)
   10e1c:	00b706a3          	sb	a1,13(a4)
   10e20:	00b70623          	sb	a1,12(a4)
   10e24:	00b705a3          	sb	a1,11(a4)
   10e28:	00b70523          	sb	a1,10(a4)
   10e2c:	00b704a3          	sb	a1,9(a4)
   10e30:	00b70423          	sb	a1,8(a4)
   10e34:	00b703a3          	sb	a1,7(a4)
   10e38:	00b70323          	sb	a1,6(a4)
   10e3c:	00b702a3          	sb	a1,5(a4)
   10e40:	00b70223          	sb	a1,4(a4)
   10e44:	00b701a3          	sb	a1,3(a4)
   10e48:	00b70123          	sb	a1,2(a4)
   10e4c:	00b700a3          	sb	a1,1(a4)
   10e50:	00b70023          	sb	a1,0(a4)
   10e54:	00008067          	ret
   10e58:	0ff5f593          	andi	a1,a1,255
   10e5c:	00859693          	slli	a3,a1,0x8
   10e60:	00d5e5b3          	or	a1,a1,a3
   10e64:	01059693          	slli	a3,a1,0x10
   10e68:	00d5e5b3          	or	a1,a1,a3
   10e6c:	02059693          	slli	a3,a1,0x20
   10e70:	00d5e5b3          	or	a1,a1,a3
   10e74:	f6dff06f          	j	10de0 <memset+0x18>
   10e78:	00279693          	slli	a3,a5,0x2
   10e7c:	00000297          	auipc	t0,0x0
   10e80:	005686b3          	add	a3,a3,t0
   10e84:	00008293          	mv	t0,ra
   10e88:	f98680e7          	jalr	-104(a3)
   10e8c:	00028093          	mv	ra,t0
   10e90:	ff078793          	addi	a5,a5,-16
   10e94:	40f70733          	sub	a4,a4,a5
   10e98:	00f60633          	add	a2,a2,a5
   10e9c:	f6c374e3          	bgeu	t1,a2,10e04 <memset+0x3c>
   10ea0:	f3dff06f          	j	10ddc <memset+0x14>

0000000000010ea4 <__call_exitprocs>:
   10ea4:	fb010113          	addi	sp,sp,-80
   10ea8:	03413023          	sd	s4,32(sp)
   10eac:	f501ba03          	ld	s4,-176(gp) # 128f8 <_global_impure_ptr>
   10eb0:	03213823          	sd	s2,48(sp)
   10eb4:	04113423          	sd	ra,72(sp)
   10eb8:	1f8a3903          	ld	s2,504(s4)
   10ebc:	04813023          	sd	s0,64(sp)
   10ec0:	02913c23          	sd	s1,56(sp)
   10ec4:	03313423          	sd	s3,40(sp)
   10ec8:	01513c23          	sd	s5,24(sp)
   10ecc:	01613823          	sd	s6,16(sp)
   10ed0:	01713423          	sd	s7,8(sp)
   10ed4:	01813023          	sd	s8,0(sp)
   10ed8:	04090063          	beqz	s2,10f18 <__call_exitprocs+0x74>
   10edc:	00050b13          	mv	s6,a0
   10ee0:	00058b93          	mv	s7,a1
   10ee4:	00100a93          	li	s5,1
   10ee8:	fff00993          	li	s3,-1
   10eec:	00892483          	lw	s1,8(s2)
   10ef0:	fff4841b          	addiw	s0,s1,-1
   10ef4:	02044263          	bltz	s0,10f18 <__call_exitprocs+0x74>
   10ef8:	00349493          	slli	s1,s1,0x3
   10efc:	009904b3          	add	s1,s2,s1
   10f00:	040b8463          	beqz	s7,10f48 <__call_exitprocs+0xa4>
   10f04:	2084b783          	ld	a5,520(s1)
   10f08:	05778063          	beq	a5,s7,10f48 <__call_exitprocs+0xa4>
   10f0c:	fff4041b          	addiw	s0,s0,-1
   10f10:	ff848493          	addi	s1,s1,-8
   10f14:	ff3416e3          	bne	s0,s3,10f00 <__call_exitprocs+0x5c>
   10f18:	04813083          	ld	ra,72(sp)
   10f1c:	04013403          	ld	s0,64(sp)
   10f20:	03813483          	ld	s1,56(sp)
   10f24:	03013903          	ld	s2,48(sp)
   10f28:	02813983          	ld	s3,40(sp)
   10f2c:	02013a03          	ld	s4,32(sp)
   10f30:	01813a83          	ld	s5,24(sp)
   10f34:	01013b03          	ld	s6,16(sp)
   10f38:	00813b83          	ld	s7,8(sp)
   10f3c:	00013c03          	ld	s8,0(sp)
   10f40:	05010113          	addi	sp,sp,80
   10f44:	00008067          	ret
   10f48:	00892783          	lw	a5,8(s2)
   10f4c:	0084b703          	ld	a4,8(s1)
   10f50:	fff7879b          	addiw	a5,a5,-1
   10f54:	06878263          	beq	a5,s0,10fb8 <__call_exitprocs+0x114>
   10f58:	0004b423          	sd	zero,8(s1)
   10f5c:	fa0708e3          	beqz	a4,10f0c <__call_exitprocs+0x68>
   10f60:	31092783          	lw	a5,784(s2)
   10f64:	008a96bb          	sllw	a3,s5,s0
   10f68:	00892c03          	lw	s8,8(s2)
   10f6c:	00d7f7b3          	and	a5,a5,a3
   10f70:	0007879b          	sext.w	a5,a5
   10f74:	02079263          	bnez	a5,10f98 <__call_exitprocs+0xf4>
   10f78:	000700e7          	jalr	a4
   10f7c:	00892703          	lw	a4,8(s2)
   10f80:	1f8a3783          	ld	a5,504(s4)
   10f84:	01871463          	bne	a4,s8,10f8c <__call_exitprocs+0xe8>
   10f88:	f8f902e3          	beq	s2,a5,10f0c <__call_exitprocs+0x68>
   10f8c:	f80786e3          	beqz	a5,10f18 <__call_exitprocs+0x74>
   10f90:	00078913          	mv	s2,a5
   10f94:	f59ff06f          	j	10eec <__call_exitprocs+0x48>
   10f98:	31492783          	lw	a5,788(s2)
   10f9c:	1084b583          	ld	a1,264(s1)
   10fa0:	00d7f7b3          	and	a5,a5,a3
   10fa4:	0007879b          	sext.w	a5,a5
   10fa8:	00079c63          	bnez	a5,10fc0 <__call_exitprocs+0x11c>
   10fac:	000b0513          	mv	a0,s6
   10fb0:	000700e7          	jalr	a4
   10fb4:	fc9ff06f          	j	10f7c <__call_exitprocs+0xd8>
   10fb8:	00892423          	sw	s0,8(s2)
   10fbc:	fa1ff06f          	j	10f5c <__call_exitprocs+0xb8>
   10fc0:	00058513          	mv	a0,a1
   10fc4:	000700e7          	jalr	a4
   10fc8:	fb5ff06f          	j	10f7c <__call_exitprocs+0xd8>

0000000000010fcc <__libc_fini_array>:
   10fcc:	fe010113          	addi	sp,sp,-32
   10fd0:	00813823          	sd	s0,16(sp)
   10fd4:	000127b7          	lui	a5,0x12
   10fd8:	00012437          	lui	s0,0x12
   10fdc:	1a040413          	addi	s0,s0,416 # 121a0 <__do_global_dtors_aux_fini_array_entry>
   10fe0:	1a878793          	addi	a5,a5,424 # 121a8 <impure_data>
   10fe4:	408787b3          	sub	a5,a5,s0
   10fe8:	00913423          	sd	s1,8(sp)
   10fec:	00113c23          	sd	ra,24(sp)
   10ff0:	4037d493          	srai	s1,a5,0x3
   10ff4:	02048063          	beqz	s1,11014 <__libc_fini_array+0x48>
   10ff8:	ff878793          	addi	a5,a5,-8
   10ffc:	00878433          	add	s0,a5,s0
   11000:	00043783          	ld	a5,0(s0)
   11004:	fff48493          	addi	s1,s1,-1
   11008:	ff840413          	addi	s0,s0,-8
   1100c:	000780e7          	jalr	a5
   11010:	fe0498e3          	bnez	s1,11000 <__libc_fini_array+0x34>
   11014:	01813083          	ld	ra,24(sp)
   11018:	01013403          	ld	s0,16(sp)
   1101c:	00813483          	ld	s1,8(sp)
   11020:	02010113          	addi	sp,sp,32
   11024:	00008067          	ret

0000000000011028 <atexit>:
   11028:	00050593          	mv	a1,a0
   1102c:	00000693          	li	a3,0
   11030:	00000613          	li	a2,0
   11034:	00000513          	li	a0,0
   11038:	0040006f          	j	1103c <__register_exitproc>

000000000001103c <__register_exitproc>:
   1103c:	f501b703          	ld	a4,-176(gp) # 128f8 <_global_impure_ptr>
   11040:	1f873783          	ld	a5,504(a4)
   11044:	06078063          	beqz	a5,110a4 <__register_exitproc+0x68>
   11048:	0087a703          	lw	a4,8(a5)
   1104c:	01f00813          	li	a6,31
   11050:	08e84663          	blt	a6,a4,110dc <__register_exitproc+0xa0>
   11054:	02050863          	beqz	a0,11084 <__register_exitproc+0x48>
   11058:	00371813          	slli	a6,a4,0x3
   1105c:	01078833          	add	a6,a5,a6
   11060:	10c83823          	sd	a2,272(a6)
   11064:	3107a883          	lw	a7,784(a5)
   11068:	00100613          	li	a2,1
   1106c:	00e6163b          	sllw	a2,a2,a4
   11070:	00c8e8b3          	or	a7,a7,a2
   11074:	3117a823          	sw	a7,784(a5)
   11078:	20d83823          	sd	a3,528(a6)
   1107c:	00200693          	li	a3,2
   11080:	02d50863          	beq	a0,a3,110b0 <__register_exitproc+0x74>
   11084:	00270693          	addi	a3,a4,2
   11088:	00369693          	slli	a3,a3,0x3
   1108c:	0017071b          	addiw	a4,a4,1
   11090:	00e7a423          	sw	a4,8(a5)
   11094:	00d787b3          	add	a5,a5,a3
   11098:	00b7b023          	sd	a1,0(a5)
   1109c:	00000513          	li	a0,0
   110a0:	00008067          	ret
   110a4:	20070793          	addi	a5,a4,512
   110a8:	1ef73c23          	sd	a5,504(a4)
   110ac:	f9dff06f          	j	11048 <__register_exitproc+0xc>
   110b0:	3147a683          	lw	a3,788(a5)
   110b4:	00000513          	li	a0,0
   110b8:	00c6e633          	or	a2,a3,a2
   110bc:	00270693          	addi	a3,a4,2
   110c0:	00369693          	slli	a3,a3,0x3
   110c4:	0017071b          	addiw	a4,a4,1
   110c8:	30c7aa23          	sw	a2,788(a5)
   110cc:	00e7a423          	sw	a4,8(a5)
   110d0:	00d787b3          	add	a5,a5,a3
   110d4:	00b7b023          	sd	a1,0(a5)
   110d8:	00008067          	ret
   110dc:	fff00513          	li	a0,-1
   110e0:	00008067          	ret

00000000000110e4 <_exit>:
   110e4:	00000593          	li	a1,0
   110e8:	00000613          	li	a2,0
   110ec:	00000693          	li	a3,0
   110f0:	00000713          	li	a4,0
   110f4:	00000793          	li	a5,0
   110f8:	05d00893          	li	a7,93
   110fc:	00000073          	ecall
   11100:	00054463          	bltz	a0,11108 <_exit+0x24>
   11104:	0000006f          	j	11104 <_exit+0x20>
   11108:	ff010113          	addi	sp,sp,-16
   1110c:	00813023          	sd	s0,0(sp)
   11110:	00050413          	mv	s0,a0
   11114:	00113423          	sd	ra,8(sp)
   11118:	4080043b          	negw	s0,s0
   1111c:	00c000ef          	jal	ra,11128 <__errno>
   11120:	00852023          	sw	s0,0(a0)
   11124:	0000006f          	j	11124 <_exit+0x40>

0000000000011128 <__errno>:
   11128:	f601b503          	ld	a0,-160(gp) # 12908 <_impure_ptr>
   1112c:	00008067          	ret

Disassembly of section .rodata:

0000000000011130 <.rodata>:
   11130:	6854                	ld	a3,144(s0)
   11132:	2065                	0x2065
   11134:	746e6f63          	bltu	t3,t1,11892 <__errno+0x76a>
   11138:	6e65                	lui	t3,0x19
   1113a:	2074                	fld	fa3,192(s0)
   1113c:	4120666f          	jal	a2,1754e <__global_pointer$+0x4ba6>
   11140:	6920                	ld	s0,80(a0)
   11142:	0a203a73          	csrrc	s4,0xa2,zero
   11146:	0000                	unimp
   11148:	0020                	addi	s0,sp,8
   1114a:	0000                	unimp
   1114c:	0000                	unimp
   1114e:	0000                	unimp
   11150:	000a                	c.slli	zero,0x2
   11152:	0000                	unimp
   11154:	0000                	unimp
   11156:	0000                	unimp
   11158:	6854                	ld	a3,144(s0)
   1115a:	2065                	0x2065
   1115c:	746e6f63          	bltu	t3,t1,118ba <__errno+0x792>
   11160:	6e65                	lui	t3,0x19
   11162:	2074                	fld	fa3,192(s0)
   11164:	4220666f          	jal	a2,17586 <__global_pointer$+0x4bde>
   11168:	6920                	ld	s0,80(a0)
   1116a:	0a203a73          	csrrc	s4,0xa2,zero
   1116e:	0000                	unimp
   11170:	6854                	ld	a3,144(s0)
   11172:	2065                	0x2065
   11174:	746e6f63          	bltu	t3,t1,118d2 <__errno+0x7aa>
   11178:	6e65                	lui	t3,0x19
   1117a:	2074                	fld	fa3,192(s0)
   1117c:	4320666f          	jal	a2,175ae <__global_pointer$+0x4c06>
   11180:	413d                	li	sp,15
   11182:	422a                	lw	tp,136(sp)
   11184:	6920                	ld	s0,80(a0)
   11186:	0a203a73          	csrrc	s4,0xa2,zero
	...

Disassembly of section .eh_frame:

000000000001218c <__FRAME_END__>:
   1218c:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000012190 <__init_array_start>:
   12190:	00b0                	addi	a2,sp,72
   12192:	0001                	nop
   12194:	0000                	unimp
	...

0000000000012198 <__frame_dummy_init_array_entry>:
   12198:	0160                	addi	s0,sp,140
   1219a:	0001                	nop
   1219c:	0000                	unimp
	...

Disassembly of section .fini_array:

00000000000121a0 <__do_global_dtors_aux_fini_array_entry>:
   121a0:	0114                	addi	a3,sp,128
   121a2:	0001                	nop
   121a4:	0000                	unimp
	...

Disassembly of section .data:

00000000000121a8 <impure_data>:
	...
   121b0:	26e0                	fld	fs0,200(a3)
   121b2:	0001                	nop
   121b4:	0000                	unimp
   121b6:	0000                	unimp
   121b8:	2790                	fld	fa2,8(a5)
   121ba:	0001                	nop
   121bc:	0000                	unimp
   121be:	0000                	unimp
   121c0:	2840                	fld	fs0,144(s0)
   121c2:	0001                	nop
	...
   12290:	0001                	nop
   12292:	0000                	unimp
   12294:	0000                	unimp
   12296:	0000                	unimp
   12298:	330e                	fld	ft6,224(sp)
   1229a:	abcd                	j	1288c <impure_data+0x6e4>
   1229c:	1234                	addi	a3,sp,296
   1229e:	e66d                	bnez	a2,12388 <impure_data+0x1e0>
   122a0:	deec                	sw	a1,124(a3)
   122a2:	0005                	c.nop	1
   122a4:	0000000b          	0xb
	...

Disassembly of section .sdata:

00000000000128f0 <M>:
   128f0:	000a                	c.slli	zero,0x2
   128f2:	0000                	unimp
   128f4:	0000                	unimp
	...

00000000000128f8 <_global_impure_ptr>:
   128f8:	21a8                	fld	fa0,64(a1)
   128fa:	0001                	nop
   128fc:	0000                	unimp
	...

0000000000012900 <__dso_handle>:
	...

0000000000012908 <_impure_ptr>:
   12908:	21a8                	fld	fa0,64(a1)
   1290a:	0001                	nop
   1290c:	0000                	unimp
	...

Disassembly of section .bss:

0000000000012910 <completed.5525>:
	...

0000000000012918 <object.5530>:
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
  10:	0c48                	addi	a0,sp,532
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
  40:	0c6c                	addi	a1,sp,540
  42:	0001                	nop
  44:	0000                	unimp
  46:	0000                	unimp
  48:	0090                	addi	a2,sp,64
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
  10:	0c48                	addi	a0,sp,532
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0c6c                	addi	a1,sp,540
  1a:	0001                	nop
	...
  24:	00000033          	add	zero,zero,zero
  28:	00a1                	addi	ra,ra,8
  2a:	0000                	unimp
  2c:	8001                	c.srli64	s0
  2e:	00000d43          	fmadd.s	fs10,ft0,ft0,ft0,rne
  32:	0004                	0x4
  34:	0014                	0x14
  36:	0000                	unimp
  38:	0108                	addi	a0,sp,128
  3a:	06b2                	slli	a3,a3,0xc
  3c:	0000                	unimp
  3e:	510c                	lw	a1,32(a0)
  40:	33000003          	lb	zero,816(zero) # 330 <register_fini-0xfd80>
  44:	0000                	unimp
  46:	6c00                	ld	s0,24(s0)
  48:	010c                	addi	a1,sp,128
  4a:	0000                	unimp
  4c:	0000                	unimp
  4e:	9000                	0x9000
  50:	0000                	unimp
  52:	0000                	unimp
  54:	0000                	unimp
  56:	9700                	0x9700
  58:	0000                	unimp
  5a:	0200                	addi	s0,sp,256
  5c:	0710                	addi	a2,sp,896
  5e:	0519                	addi	a0,a0,6
  60:	0000                	unimp
  62:	0802                	c.slli64	a6
  64:	9d05                	subw	a0,a0,s1
  66:	0004                	0x4
  68:	0200                	addi	s0,sp,256
  6a:	0708                	addi	a0,sp,896
  6c:	0150                	addi	a2,sp,132
  6e:	0000                	unimp
  70:	69050403          	lb	s0,1680(a0)
  74:	746e                	ld	s0,248(sp)
  76:	0200                	addi	s0,sp,256
  78:	0508                	addi	a0,sp,640
  7a:	0498                	addi	a4,sp,576
  7c:	0000                	unimp
  7e:	1002                	c.slli	zero,0x20
  80:	8004                	0x8004
  82:	0001                	nop
  84:	0200                	addi	s0,sp,256
  86:	0601                	addi	a2,a2,0
  88:	066e                	slli	a2,a2,0x1b
  8a:	0000                	unimp
  8c:	0102                	c.slli64	sp
  8e:	6c08                	ld	a0,24(s0)
  90:	0006                	c.slli	zero,0x1
  92:	0200                	addi	s0,sp,256
  94:	0502                	c.slli64	a0
  96:	00ad                	addi	ra,ra,11
  98:	0000                	unimp
  9a:	0202                	c.slli64	tp
  9c:	00038407          	0x38407
  a0:	0200                	addi	s0,sp,256
  a2:	0704                	addi	s1,sp,896
  a4:	0155                	addi	sp,sp,21
  a6:	0000                	unimp
  a8:	e004                	sd	s1,0(s0)
  aa:	02000003          	lb	zero,32(zero) # 20 <register_fini-0x10090>
  ae:	015e                	slli	sp,sp,0x17
  b0:	00007317          	auipc	t1,0x7
  b4:	0500                	addi	s0,sp,640
  b6:	04cc                	addi	a1,sp,580
  b8:	0000                	unimp
  ba:	340e2e03          	lw	t3,832(t3) # 19340 <__global_pointer$+0x6998>
  be:	0000                	unimp
  c0:	0500                	addi	s0,sp,640
  c2:	0620                	addi	s0,sp,776
  c4:	0000                	unimp
  c6:	340e7403          	0x340e7403
  ca:	0000                	unimp
  cc:	0500                	addi	s0,sp,640
  ce:	00000777          	0x777
  d2:	34179303          	lh	t1,833(a5)
  d6:	0000                	unimp
  d8:	0600                	addi	s0,sp,768
  da:	0304                	addi	s1,sp,384
  dc:	03a5                	addi	t2,t2,9
  de:	00cd                	addi	ra,ra,19
  e0:	0000                	unimp
  e2:	0003cb07          	flq	fs6,0(t2)
  e6:	0300                	addi	s0,sp,384
  e8:	007a0ca7          	0x7a0ca7
  ec:	0000                	unimp
  ee:	00031807          	0x31807
  f2:	0300                	addi	s0,sp,384
  f4:	13a8                	addi	a0,sp,488
  f6:	00cd                	addi	ra,ra,19
  f8:	0000                	unimp
  fa:	0800                	addi	s0,sp,16
  fc:	005e                	c.slli	zero,0x17
  fe:	0000                	unimp
 100:	00dd                	addi	ra,ra,23
 102:	0000                	unimp
 104:	3b09                	addiw	s6,s6,-30
 106:	0000                	unimp
 108:	0300                	addi	s0,sp,384
 10a:	0a00                	addi	s0,sp,272
 10c:	0308                	addi	a0,sp,384
 10e:	09a2                	slli	s3,s3,0x8
 110:	0101                	addi	sp,sp,0
 112:	0000                	unimp
 114:	00060a0b          	0x60a0b
 118:	0300                	addi	s0,sp,384
 11a:	07a4                	addi	s1,sp,968
 11c:	0042                	c.slli	zero,0x10
 11e:	0000                	unimp
 120:	0b00                	addi	s0,sp,400
 122:	0612                	slli	a2,a2,0x4
 124:	0000                	unimp
 126:	ab05a903          	lw	s2,-1360(a1)
 12a:	0000                	unimp
 12c:	0400                	addi	s0,sp,512
 12e:	0500                	addi	s0,sp,640
 130:	04f0                	addi	a2,sp,588
 132:	0000                	unimp
 134:	dd03aa03          	lw	s4,-560(t2)
 138:	0000                	unimp
 13a:	0c00                	addi	s0,sp,528
 13c:	0508                	addi	a0,sp,640
 13e:	067f                	0x67f
 140:	0000                	unimp
 142:	1904                	addi	s1,sp,176
 144:	7319                	lui	t1,0xfffe6
 146:	0000                	unimp
 148:	0500                	addi	s0,sp,640
 14a:	000004fb          	0x4fb
 14e:	0c05                	addi	s8,s8,1
 150:	420d                	li	tp,3
 152:	0000                	unimp
 154:	0500                	addi	s0,sp,640
 156:	0562                	slli	a0,a0,0x18
 158:	0000                	unimp
 15a:	2304                	fld	fs1,0(a4)
 15c:	00011b1b          	slliw	s6,sp,0x0
 160:	0d00                	addi	s0,sp,656
 162:	000002db          	0x2db
 166:	0420                	addi	s0,sp,520
 168:	0834                	addi	a3,sp,24
 16a:	018d                	addi	gp,gp,3
 16c:	0000                	unimp
 16e:	0005ab0b          	0x5ab0b
 172:	0400                	addi	s0,sp,512
 174:	1336                	slli	t1,t1,0x2d
 176:	018d                	addi	gp,gp,3
 178:	0000                	unimp
 17a:	0e00                	addi	s0,sp,784
 17c:	6b5f 0400 0737      	0x73704006b5f
 182:	0042                	c.slli	zero,0x10
 184:	0000                	unimp
 186:	0b08                	addi	a0,sp,400
 188:	05f5                	addi	a1,a1,29
 18a:	0000                	unimp
 18c:	3704                	fld	fs1,40(a4)
 18e:	0000420b          	0x420b
 192:	0c00                	addi	s0,sp,528
 194:	0002cd0b          	0x2cd0b
 198:	0400                	addi	s0,sp,512
 19a:	00421437          	lui	s0,0x421
 19e:	0000                	unimp
 1a0:	0b10                	addi	a2,sp,400
 1a2:	0000023b          	addw	tp,zero,zero
 1a6:	3704                	fld	fs1,40(a4)
 1a8:	0000421b          	0x421b
 1ac:	1400                	addi	s0,sp,544
 1ae:	5f0e                	lw	t5,224(sp)
 1b0:	0078                	addi	a4,sp,12
 1b2:	3804                	fld	fs1,48(s0)
 1b4:	0001930b          	0x1930b
 1b8:	1800                	addi	s0,sp,48
 1ba:	0f00                	addi	s0,sp,912
 1bc:	3308                	fld	fa0,32(a4)
 1be:	0001                	nop
 1c0:	0800                	addi	s0,sp,16
 1c2:	0000010f          	0x10f
 1c6:	000001a3          	sb	zero,3(zero) # 3 <register_fini-0x100ad>
 1ca:	3b09                	addiw	s6,s6,-30
 1cc:	0000                	unimp
 1ce:	0000                	unimp
 1d0:	0d00                	addi	s0,sp,656
 1d2:	000002fb          	0x2fb
 1d6:	0424                	addi	s1,sp,520
 1d8:	083c                	addi	a5,sp,24
 1da:	0226                	slli	tp,tp,0x9
 1dc:	0000                	unimp
 1de:	0001c20b          	0x1c20b
 1e2:	0400                	addi	s0,sp,512
 1e4:	093e                	slli	s2,s2,0xf
 1e6:	0042                	c.slli	zero,0x10
 1e8:	0000                	unimp
 1ea:	0b00                	addi	s0,sp,400
 1ec:	07bc                	addi	a5,sp,968
 1ee:	0000                	unimp
 1f0:	3f04                	fld	fs1,56(a4)
 1f2:	4209                	li	tp,2
 1f4:	0000                	unimp
 1f6:	0400                	addi	s0,sp,512
 1f8:	0001ef0b          	0x1ef0b
 1fc:	0400                	addi	s0,sp,512
 1fe:	0940                	addi	s0,sp,148
 200:	0042                	c.slli	zero,0x10
 202:	0000                	unimp
 204:	0b08                	addi	a0,sp,400
 206:	0812                	slli	a6,a6,0x4
 208:	0000                	unimp
 20a:	4104                	lw	s1,0(a0)
 20c:	4209                	li	tp,2
 20e:	0000                	unimp
 210:	0c00                	addi	s0,sp,528
 212:	0004a60b          	0x4a60b
 216:	0400                	addi	s0,sp,512
 218:	0942                	slli	s2,s2,0x10
 21a:	0042                	c.slli	zero,0x10
 21c:	0000                	unimp
 21e:	0b10                	addi	a2,sp,400
 220:	0000043f 42094304 	0x420943040000043f
 228:	0000                	unimp
 22a:	1400                	addi	s0,sp,544
 22c:	0007600b          	0x7600b
 230:	0400                	addi	s0,sp,512
 232:	0944                	addi	s1,sp,148
 234:	0042                	c.slli	zero,0x10
 236:	0000                	unimp
 238:	0b18                	addi	a4,sp,400
 23a:	07f8                	addi	a4,sp,972
 23c:	0000                	unimp
 23e:	4504                	lw	s1,8(a0)
 240:	4209                	li	tp,2
 242:	0000                	unimp
 244:	1c00                	addi	s0,sp,560
 246:	0007a20b          	0x7a20b
 24a:	0400                	addi	s0,sp,512
 24c:	0946                	slli	s2,s2,0x11
 24e:	0042                	c.slli	zero,0x10
 250:	0000                	unimp
 252:	0020                	addi	s0,sp,8
 254:	0e10                	addi	a2,sp,784
 256:	0002                	c.slli64	zero
 258:	0800                	addi	s0,sp,16
 25a:	0402                	c.slli64	s0
 25c:	026c084f          	fnmadd.d	fa6,fs8,ft6,ft0,rne
 260:	0000                	unimp
 262:	0002b90b          	0x2b90b
 266:	0400                	addi	s0,sp,512
 268:	0a50                	addi	a2,sp,276
 26a:	026c                	addi	a1,sp,268
 26c:	0000                	unimp
 26e:	1100                	addi	s0,sp,160
 270:	053e                	slli	a0,a0,0xf
 272:	0000                	unimp
 274:	5104                	lw	s1,32(a0)
 276:	6c09                	lui	s8,0x2
 278:	0002                	c.slli64	zero
 27a:	0000                	unimp
 27c:	1101                	addi	sp,sp,-32
 27e:	00000663          	beqz	zero,28a <register_fini-0xfe26>
 282:	5304                	lw	s1,32(a4)
 284:	0f0a                	slli	t5,t5,0x2
 286:	0001                	nop
 288:	0000                	unimp
 28a:	1102                	slli	sp,sp,0x20
 28c:	00000233          	add	tp,zero,zero
 290:	5604                	lw	s1,40(a2)
 292:	0f0a                	slli	t5,t5,0x2
 294:	0001                	nop
 296:	0400                	addi	s0,sp,512
 298:	0002                	c.slli64	zero
 29a:	0d08                	addi	a0,sp,656
 29c:	0001                	nop
 29e:	7c00                	ld	s0,56(s0)
 2a0:	0002                	c.slli64	zero
 2a2:	0900                	addi	s0,sp,144
 2a4:	0000003b          	addw	zero,zero,zero
 2a8:	001f af10 0004      	0x4af10001f
 2ae:	1800                	addi	s0,sp,48
 2b0:	08620403          	lb	s0,134(tp) # fffffffffffe1086 <__global_pointer$+0xfffffffffffce6de>
 2b4:	02c0                	addi	s0,sp,324
 2b6:	0000                	unimp
 2b8:	0005ab0b          	0x5ab0b
 2bc:	0400                	addi	s0,sp,512
 2be:	02c01263          	bne	zero,a2,2e2 <register_fini-0xfdce>
 2c2:	0000                	unimp
 2c4:	0b00                	addi	s0,sp,400
 2c6:	05cd                	addi	a1,a1,19
 2c8:	0000                	unimp
 2ca:	6404                	ld	s1,8(s0)
 2cc:	4206                	lw	tp,64(sp)
 2ce:	0000                	unimp
 2d0:	0800                	addi	s0,sp,16
 2d2:	0002c80b          	0x2c80b
 2d6:	0400                	addi	s0,sp,512
 2d8:	0966                	slli	s2,s2,0x19
 2da:	02c6                	slli	t0,t0,0x11
 2dc:	0000                	unimp
 2de:	1110                	addi	a2,sp,160
 2e0:	020e                	slli	tp,tp,0x3
 2e2:	0000                	unimp
 2e4:	6704                	ld	s1,8(a4)
 2e6:	261e                	fld	fa2,448(sp)
 2e8:	0002                	c.slli64	zero
 2ea:	1000                	addi	s0,sp,32
 2ec:	0001                	nop
 2ee:	027c080f          	0x27c080f
 2f2:	0000                	unimp
 2f4:	d608                	sw	a0,40(a2)
 2f6:	0002                	c.slli64	zero
 2f8:	d600                	sw	s0,40(a2)
 2fa:	0002                	c.slli64	zero
 2fc:	0900                	addi	s0,sp,144
 2fe:	0000003b          	addw	zero,zero,zero
 302:	001f 080f 02dc      	0x2dc080f001f
 308:	0000                	unimp
 30a:	0d12                	slli	s10,s10,0x4
 30c:	0000056b          	0x56b
 310:	0410                	addi	a2,sp,512
 312:	087a                	slli	a6,a6,0x1e
 314:	0305                	addi	t1,t1,1
 316:	0000                	unimp
 318:	0001e90b          	0x1e90b
 31c:	0400                	addi	s0,sp,512
 31e:	0305117b          	0x305117b
 322:	0000                	unimp
 324:	0b00                	addi	s0,sp,400
 326:	00c9                	addi	ra,ra,18
 328:	0000                	unimp
 32a:	7c04                	ld	s1,56(s0)
 32c:	4206                	lw	tp,64(sp)
 32e:	0000                	unimp
 330:	0800                	addi	s0,sp,16
 332:	0f00                	addi	s0,sp,912
 334:	5e08                	lw	a0,56(a2)
 336:	0000                	unimp
 338:	0d00                	addi	s0,sp,656
 33a:	0594                	addi	a3,sp,704
 33c:	0000                	unimp
 33e:	04b0                	addi	a2,sp,584
 340:	08ba                	slli	a7,a7,0xe
 342:	044e                	slli	s0,s0,0x13
 344:	0000                	unimp
 346:	5f0e                	lw	t5,224(sp)
 348:	0070                	addi	a2,sp,12
 34a:	bb04                	fsd	fs1,48(a4)
 34c:	0512                	slli	a0,a0,0x4
 34e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
 352:	5f0e                	lw	t5,224(sp)
 354:	0072                	c.slli	zero,0x1c
 356:	bc04                	fsd	fs1,56(s0)
 358:	00004207          	flq	ft4,0(zero) # 0 <register_fini-0x100b0>
 35c:	0800                	addi	s0,sp,16
 35e:	5f0e                	lw	t5,224(sp)
 360:	bd040077          	0xbd040077
 364:	00004207          	flq	ft4,0(zero) # 0 <register_fini-0x100b0>
 368:	0c00                	addi	s0,sp,528
 36a:	00022c0b          	0x22c0b
 36e:	0400                	addi	s0,sp,512
 370:	09be                	slli	s3,s3,0xf
 372:	0065                	c.nop	25
 374:	0000                	unimp
 376:	0b10                	addi	a2,sp,400
 378:	0330                	addi	a2,sp,392
 37a:	0000                	unimp
 37c:	bf04                	fsd	fs1,56(a4)
 37e:	6509                	lui	a0,0x2
 380:	0000                	unimp
 382:	1200                	addi	s0,sp,288
 384:	5f0e                	lw	t5,224(sp)
 386:	6662                	ld	a2,24(sp)
 388:	0400                	addi	s0,sp,512
 38a:	11c0                	addi	s0,sp,228
 38c:	02dd                	addi	t0,t0,23
 38e:	0000                	unimp
 390:	0b18                	addi	a4,sp,400
 392:	0000016f          	jal	sp,392 <register_fini-0xfd1e>
 396:	c104                	sw	s1,0(a0)
 398:	00004207          	flq	ft4,0(zero) # 0 <register_fini-0x100b0>
 39c:	2800                	fld	fs0,16(s0)
 39e:	00021c0b          	0x21c0b
 3a2:	0400                	addi	s0,sp,512
 3a4:	0ac8                	addi	a0,sp,340
 3a6:	010d                	addi	sp,sp,3
 3a8:	0000                	unimp
 3aa:	0b30                	addi	a2,sp,408
 3ac:	050d                	addi	a0,a0,3
 3ae:	0000                	unimp
 3b0:	ca04                	sw	s1,16(a2)
 3b2:	d21d                	beqz	a2,2d8 <register_fini-0xfdd8>
 3b4:	0005                	c.nop	1
 3b6:	3800                	fld	fs0,48(s0)
 3b8:	0004380b          	0x4380b
 3bc:	0400                	addi	s0,sp,512
 3be:	1dcc                	addi	a1,sp,756
 3c0:	0601                	addi	a2,a2,0
 3c2:	0000                	unimp
 3c4:	0b40                	addi	s0,sp,404
 3c6:	061a                	slli	a2,a2,0x6
 3c8:	0000                	unimp
 3ca:	cf04                	sw	s1,24(a4)
 3cc:	250d                	addiw	a0,a0,3
 3ce:	0006                	c.slli	zero,0x1
 3d0:	4800                	lw	s0,16(s0)
 3d2:	0001cb0b          	0x1cb0b
 3d6:	0400                	addi	s0,sp,512
 3d8:	09d0                	addi	a2,sp,212
 3da:	0000063f 755f0e50 	0x755f0e500000063f
 3e2:	0062                	c.slli	zero,0x18
 3e4:	d304                	sw	s1,32(a4)
 3e6:	dd11                	beqz	a0,302 <register_fini-0xfdae>
 3e8:	0002                	c.slli64	zero
 3ea:	5800                	lw	s0,48(s0)
 3ec:	5f0e                	lw	t5,224(sp)
 3ee:	7075                	c.lui	zero,0xffffd
 3f0:	0400                	addi	s0,sp,512
 3f2:	12d4                	addi	a3,sp,356
 3f4:	0305                	addi	t1,t1,1
 3f6:	0000                	unimp
 3f8:	0e68                	addi	a0,sp,796
 3fa:	755f 0072 d504      	0xd5040072755f
 400:	00004207          	flq	ft4,0(zero) # 0 <register_fini-0x100b0>
 404:	7000                	ld	s0,32(s0)
 406:	0001d80b          	0x1d80b
 40a:	0400                	addi	s0,sp,512
 40c:	11d8                	addi	a4,sp,228
 40e:	0645                	addi	a2,a2,17
 410:	0000                	unimp
 412:	0b74                	addi	a3,sp,412
 414:	0794                	addi	a3,sp,960
 416:	0000                	unimp
 418:	d904                	sw	s1,48(a0)
 41a:	5511                	li	a0,-28
 41c:	0006                	c.slli	zero,0x1
 41e:	7700                	ld	s0,40(a4)
 420:	5f0e                	lw	t5,224(sp)
 422:	626c                	ld	a1,192(a2)
 424:	0400                	addi	s0,sp,512
 426:	11dc                	addi	a5,sp,228
 428:	02dd                	addi	t0,t0,23
 42a:	0000                	unimp
 42c:	0b78                	addi	a4,sp,412
 42e:	0631                	addi	a2,a2,12
 430:	0000                	unimp
 432:	df04                	sw	s1,56(a4)
 434:	00004207          	flq	ft4,0(zero) # 0 <register_fini-0x100b0>
 438:	8800                	0x8800
 43a:	0004720b          	0x4720b
 43e:	0400                	addi	s0,sp,512
 440:	0ae0                	addi	s0,sp,348
 442:	00000087          	0x87
 446:	0b90                	addi	a2,sp,464
 448:	0108                	addi	a0,sp,128
 44a:	0000                	unimp
 44c:	e304                	sd	s1,0(a4)
 44e:	6c12                	ld	s8,256(sp)
 450:	0004                	0x4
 452:	9800                	0x9800
 454:	0003e70b          	0x3e70b
 458:	0400                	addi	s0,sp,512
 45a:	01270ce7          	jalr	s9,18(a4)
 45e:	0000                	unimp
 460:	0ba0                	addi	s0,sp,472
 462:	0000030f          	0x30f
 466:	e904                	sd	s1,16(a0)
 468:	010e                	slli	sp,sp,0x3
 46a:	0001                	nop
 46c:	a400                	fsd	fs0,8(s0)
 46e:	0005720b          	0x5720b
 472:	0400                	addi	s0,sp,512
 474:	09ea                	slli	s3,s3,0x1a
 476:	0042                	c.slli	zero,0x10
 478:	0000                	unimp
 47a:	00ac                	addi	a1,sp,72
 47c:	00009f13          	slli	t5,ra,0x0
 480:	6c00                	ld	s0,24(s0)
 482:	0004                	0x4
 484:	1400                	addi	s0,sp,544
 486:	046c                	addi	a1,sp,524
 488:	0000                	unimp
 48a:	0d14                	addi	a3,sp,656
 48c:	0001                	nop
 48e:	1400                	addi	s0,sp,544
 490:	05c0                	addi	s0,sp,708
 492:	0000                	unimp
 494:	4214                	lw	a3,0(a2)
 496:	0000                	unimp
 498:	0000                	unimp
 49a:	0477080f          	0x477080f
 49e:	0000                	unimp
 4a0:	6c15                	lui	s8,0x5
 4a2:	0004                	0x4
 4a4:	1600                	addi	s0,sp,800
 4a6:	05fd                	addi	a1,a1,31
 4a8:	0000                	unimp
 4aa:	0748                	addi	a0,sp,900
 4ac:	6504                	ld	s1,8(a0)
 4ae:	0802                	c.slli64	a6
 4b0:	05c0                	addi	s0,sp,708
 4b2:	0000                	unimp
 4b4:	00055b17          	auipc	s6,0x55
 4b8:	0400                	addi	s0,sp,512
 4ba:	42070267          	jalr	tp,1056(a4)
 4be:	0000                	unimp
 4c0:	0000                	unimp
 4c2:	00077017          	auipc	zero,0x77
 4c6:	0400                	addi	s0,sp,512
 4c8:	026c                	addi	a1,sp,268
 4ca:	0006b10b          	0x6b10b
 4ce:	0800                	addi	s0,sp,16
 4d0:	00075817          	auipc	a6,0x75
 4d4:	0400                	addi	s0,sp,512
 4d6:	026c                	addi	a1,sp,268
 4d8:	b114                	fsd	fa3,32(a0)
 4da:	0006                	c.slli	zero,0x1
 4dc:	1000                	addi	s0,sp,32
 4de:	0002d317          	auipc	t1,0x2d
 4e2:	0400                	addi	s0,sp,512
 4e4:	026c                	addi	a1,sp,268
 4e6:	b11e                	fsd	ft7,160(sp)
 4e8:	0006                	c.slli	zero,0x1
 4ea:	1800                	addi	s0,sp,48
 4ec:	0005c817          	auipc	a6,0x5c
 4f0:	0400                	addi	s0,sp,512
 4f2:	026e                	slli	tp,tp,0x1b
 4f4:	4208                	lw	a0,0(a2)
 4f6:	0000                	unimp
 4f8:	2000                	fld	fs0,0(s0)
 4fa:	0000d717          	auipc	a4,0xd
 4fe:	0400                	addi	s0,sp,512
 500:	ba08026f          	jal	tp,fffffffffff808a0 <__global_pointer$+0xfffffffffff6def8>
 504:	0008                	0x8
 506:	2400                	fld	fs0,8(s0)
 508:	0005dc17          	auipc	s8,0x5d
 50c:	0400                	addi	s0,sp,512
 50e:	0272                	slli	tp,tp,0x1c
 510:	00004207          	flq	ft4,0(zero) # 0 <register_fini-0x100b0>
 514:	4000                	lw	s0,0(s0)
 516:	00080217          	auipc	tp,0x80
 51a:	0400                	addi	s0,sp,512
 51c:	cf160273          	0xcf160273
 520:	0008                	0x8
 522:	4800                	lw	s0,16(s0)
 524:	0004c117          	auipc	sp,0x4c
 528:	0400                	addi	s0,sp,512
 52a:	0275                	addi	tp,tp,29
 52c:	00004207          	flq	ft4,0(zero) # 0 <register_fini-0x100b0>
 530:	5000                	lw	s0,32(s0)
 532:	0005d217          	auipc	tp,0x5d
 536:	0400                	addi	s0,sp,512
 538:	e00a0277          	0xe00a0277
 53c:	0008                	0x8
 53e:	5800                	lw	s0,48(s0)
 540:	0003c317          	auipc	t1,0x3c
 544:	0400                	addi	s0,sp,512
 546:	027a                	slli	tp,tp,0x1e
 548:	00018d13          	mv	s10,gp
 54c:	6000                	ld	s0,0(s0)
 54e:	00024717          	auipc	a4,0x24
 552:	0400                	addi	s0,sp,512
 554:	4207027b          	0x4207027b
 558:	0000                	unimp
 55a:	6800                	ld	s0,16(s0)
 55c:	0007f317          	auipc	t1,0x7f
 560:	0400                	addi	s0,sp,512
 562:	027c                	addi	a5,sp,268
 564:	00018d13          	mv	s10,gp
 568:	7000                	ld	s0,32(s0)
 56a:	0004dc17          	auipc	s8,0x4d
 56e:	0400                	addi	s0,sp,512
 570:	027d                	addi	tp,tp,31
 572:	e614                	sd	a3,8(a2)
 574:	0008                	0x8
 576:	7800                	ld	s0,48(s0)
 578:	00032817          	auipc	a6,0x32
 57c:	0400                	addi	s0,sp,512
 57e:	0280                	addi	s0,sp,320
 580:	00004207          	flq	ft4,0(zero) # 0 <register_fini-0x100b0>
 584:	8000                	0x8000
 586:	00028517          	auipc	a0,0x28
 58a:	0400                	addi	s0,sp,512
 58c:	0281                	addi	t0,t0,0
 58e:	c009                	beqz	s0,590 <register_fini-0xfb20>
 590:	0005                	c.nop	1
 592:	8800                	0x8800
 594:	00055417          	auipc	s0,0x55
 598:	0400                	addi	s0,sp,512
 59a:	02a4                	addi	s1,sp,328
 59c:	00089407          	0x89407
 5a0:	9000                	0x9000
 5a2:	af18                	fsd	fa4,24(a4)
 5a4:	0004                	0x4
 5a6:	0400                	addi	s0,sp,512
 5a8:	02a8                	addi	a0,sp,328
 5aa:	0002c013          	xori	zero,t0,0
 5ae:	f800                	sd	s0,48(s0)
 5b0:	1801                	addi	a6,a6,-32
 5b2:	03a1                	addi	t2,t2,8
 5b4:	0000                	unimp
 5b6:	a904                	fsd	fs1,16(a0)
 5b8:	1202                	slli	tp,tp,0x20
 5ba:	027c                	addi	a5,sp,268
 5bc:	0000                	unimp
 5be:	0200                	addi	s0,sp,256
 5c0:	8a18                	0x8a18
 5c2:	04000007          	0x4000007
 5c6:	02ad                	addi	t0,t0,11
 5c8:	f70c                	sd	a1,40(a4)
 5ca:	0008                	0x8
 5cc:	1800                	addi	s0,sp,48
 5ce:	1805                	addi	a6,a6,-31
 5d0:	0224                	addi	s1,sp,264
 5d2:	0000                	unimp
 5d4:	b204                	fsd	fs1,32(a2)
 5d6:	1002                	c.slli	zero,0x20
 5d8:	0672                	slli	a2,a2,0x1c
 5da:	0000                	unimp
 5dc:	0520                	addi	s0,sp,648
 5de:	0918                	addi	a4,sp,144
 5e0:	0002                	c.slli64	zero
 5e2:	0400                	addi	s0,sp,512
 5e4:	02b4                	addi	a3,sp,328
 5e6:	030a                	slli	t1,t1,0x2
 5e8:	0009                	c.nop	2
 5ea:	3800                	fld	fs0,48(s0)
 5ec:	0005                	c.nop	1
 5ee:	05c6080f          	0x5c6080f
 5f2:	0000                	unimp
 5f4:	0102                	c.slli64	sp
 5f6:	7508                	ld	a0,40(a0)
 5f8:	0006                	c.slli	zero,0x1
 5fa:	1500                	addi	s0,sp,672
 5fc:	05c6                	slli	a1,a1,0x11
 5fe:	0000                	unimp
 600:	044e080f          	0x44e080f
 604:	0000                	unimp
 606:	00009f13          	slli	t5,ra,0x0
 60a:	f600                	sd	s0,40(a2)
 60c:	0005                	c.nop	1
 60e:	1400                	addi	s0,sp,544
 610:	046c                	addi	a1,sp,524
 612:	0000                	unimp
 614:	0d14                	addi	a3,sp,656
 616:	0001                	nop
 618:	1400                	addi	s0,sp,544
 61a:	05f6                	slli	a1,a1,0x1d
 61c:	0000                	unimp
 61e:	4214                	lw	a3,0(a2)
 620:	0000                	unimp
 622:	0000                	unimp
 624:	05cd080f          	0x5cd080f
 628:	0000                	unimp
 62a:	f615                	bnez	a2,556 <register_fini-0xfb5a>
 62c:	0005                	c.nop	1
 62e:	0f00                	addi	s0,sp,912
 630:	d808                	sw	a0,48(s0)
 632:	0005                	c.nop	1
 634:	1300                	addi	s0,sp,416
 636:	00000093          	li	ra,0
 63a:	0625                	addi	a2,a2,9
 63c:	0000                	unimp
 63e:	6c14                	ld	a3,24(s0)
 640:	0004                	0x4
 642:	1400                	addi	s0,sp,544
 644:	010d                	addi	sp,sp,3
 646:	0000                	unimp
 648:	9314                	0x9314
 64a:	0000                	unimp
 64c:	1400                	addi	s0,sp,544
 64e:	0042                	c.slli	zero,0x10
 650:	0000                	unimp
 652:	0f00                	addi	s0,sp,912
 654:	0708                	addi	a0,sp,896
 656:	0006                	c.slli	zero,0x1
 658:	1300                	addi	s0,sp,416
 65a:	0042                	c.slli	zero,0x10
 65c:	0000                	unimp
 65e:	0000063f 00046c14 	0x46c140000063f
 666:	1400                	addi	s0,sp,544
 668:	010d                	addi	sp,sp,3
 66a:	0000                	unimp
 66c:	0f00                	addi	s0,sp,912
 66e:	2b08                	fld	fa0,16(a4)
 670:	0006                	c.slli	zero,0x1
 672:	0800                	addi	s0,sp,16
 674:	005e                	c.slli	zero,0x17
 676:	0000                	unimp
 678:	0655                	addi	a2,a2,21
 67a:	0000                	unimp
 67c:	3b09                	addiw	s6,s6,-30
 67e:	0000                	unimp
 680:	0200                	addi	s0,sp,256
 682:	0800                	addi	s0,sp,16
 684:	005e                	c.slli	zero,0x17
 686:	0000                	unimp
 688:	0665                	addi	a2,a2,25
 68a:	0000                	unimp
 68c:	3b09                	addiw	s6,s6,-30
 68e:	0000                	unimp
 690:	0000                	unimp
 692:	0400                	addi	s0,sp,512
 694:	0240                	addi	s0,sp,260
 696:	0000                	unimp
 698:	2404                	fld	fs1,8(s0)
 69a:	1a01                	addi	s4,s4,-32
 69c:	0000030b          	0x30b
 6a0:	6a19                	lui	s4,0x6
 6a2:	18000007          	0x18000007
 6a6:	2804                	fld	fs1,16(s0)
 6a8:	0801                	addi	a6,a6,0
 6aa:	000006ab          	0x6ab
 6ae:	0005ab17          	auipc	s6,0x5a
 6b2:	0400                	addi	s0,sp,512
 6b4:	012a                	slli	sp,sp,0xa
 6b6:	ab11                	j	bca <register_fini-0xf4e6>
 6b8:	0006                	c.slli	zero,0x1
 6ba:	0000                	unimp
 6bc:	00019617          	auipc	a2,0x19
 6c0:	0400                	addi	s0,sp,512
 6c2:	4207012b          	0x4207012b
 6c6:	0000                	unimp
 6c8:	0800                	addi	s0,sp,16
 6ca:	00057a17          	auipc	s4,0x57
 6ce:	0400                	addi	s0,sp,512
 6d0:	012c                	addi	a1,sp,136
 6d2:	0006b10b          	0x6b10b
 6d6:	1000                	addi	s0,sp,32
 6d8:	0f00                	addi	s0,sp,912
 6da:	7208                	ld	a0,32(a2)
 6dc:	0006                	c.slli	zero,0x1
 6de:	0f00                	addi	s0,sp,912
 6e0:	6508                	ld	a0,8(a0)
 6e2:	0006                	c.slli	zero,0x1
 6e4:	1900                	addi	s0,sp,176
 6e6:	000000cf          	fnmadd.s	ft1,ft0,ft0,ft0,rne
 6ea:	040e                	slli	s0,s0,0x3
 6ec:	0144                	addi	s1,sp,132
 6ee:	f008                	sd	a0,32(s0)
 6f0:	0006                	c.slli	zero,0x1
 6f2:	1700                	addi	s0,sp,928
 6f4:	0604                	addi	s1,sp,768
 6f6:	0000                	unimp
 6f8:	4504                	lw	s1,8(a0)
 6fa:	1201                	addi	tp,tp,-32
 6fc:	06f0                	addi	a2,sp,844
 6fe:	0000                	unimp
 700:	1700                	addi	s0,sp,928
 702:	00000403          	lb	s0,0(zero) # 0 <register_fini-0x100b0>
 706:	4604                	lw	s1,8(a2)
 708:	1201                	addi	tp,tp,-32
 70a:	06f0                	addi	a2,sp,844
 70c:	0000                	unimp
 70e:	1706                	slli	a4,a4,0x21
 710:	067a                	slli	a2,a2,0x1e
 712:	0000                	unimp
 714:	4704                	lw	s1,8(a4)
 716:	1201                	addi	tp,tp,-32
 718:	006c                	addi	a1,sp,12
 71a:	0000                	unimp
 71c:	000c                	0xc
 71e:	6c08                	ld	a0,24(s0)
 720:	0000                	unimp
 722:	0000                	unimp
 724:	09000007          	0x9000007
 728:	0000003b          	addw	zero,zero,zero
 72c:	0002                	c.slli64	zero
 72e:	d81a                	sw	t1,48(sp)
 730:	8504                	0x8504
 732:	0702                	c.slli64	a4
 734:	0815                	addi	a6,a6,5
 736:	0000                	unimp
 738:	00045417          	auipc	s0,0x45
 73c:	0400                	addi	s0,sp,512
 73e:	73180287          	0x73180287
 742:	0000                	unimp
 744:	0000                	unimp
 746:	00064f17          	auipc	t5,0x64
 74a:	0400                	addi	s0,sp,512
 74c:	0288                	addi	a0,sp,320
 74e:	c012                	sw	tp,0(sp)
 750:	0005                	c.nop	1
 752:	0800                	addi	s0,sp,16
 754:	0003b617          	auipc	a2,0x3b
 758:	0400                	addi	s0,sp,512
 75a:	0289                	addi	t0,t0,2
 75c:	1510                	addi	a2,sp,672
 75e:	0008                	0x8
 760:	1000                	addi	s0,sp,32
 762:	0007ad17          	auipc	s10,0x7a
 766:	0400                	addi	s0,sp,512
 768:	028a                	slli	t0,t0,0x2
 76a:	0001a317          	auipc	t1,0x1a
 76e:	2c00                	fld	fs0,24(s0)
 770:	0002e317          	auipc	t1,0x2e
 774:	0400                	addi	s0,sp,512
 776:	420f028b          	0x420f028b
 77a:	0000                	unimp
 77c:	5000                	lw	s0,32(s0)
 77e:	0005a617          	auipc	a2,0x5a
 782:	0400                	addi	s0,sp,512
 784:	028c                	addi	a1,sp,320
 786:	252c                	fld	fa1,72(a0)
 788:	0008                	0x8
 78a:	5800                	lw	s0,48(s0)
 78c:	0007c517          	auipc	a0,0x7c
 790:	0400                	addi	s0,sp,512
 792:	028d                	addi	t0,t0,3
 794:	b71a                	fsd	ft6,424(sp)
 796:	0006                	c.slli	zero,0x1
 798:	6000                	ld	s0,0(s0)
 79a:	0005bb17          	auipc	s6,0x5b
 79e:	0400                	addi	s0,sp,512
 7a0:	028e                	slli	t0,t0,0x3
 7a2:	0116                	slli	sp,sp,0x5
 7a4:	0001                	nop
 7a6:	7000                	ld	s0,32(s0)
 7a8:	0007e517          	auipc	a0,0x7e
 7ac:	0400                	addi	s0,sp,512
 7ae:	0116028f          	0x116028f
 7b2:	0001                	nop
 7b4:	7800                	ld	s0,48(s0)
 7b6:	0001b417          	auipc	s0,0x1b
 7ba:	0400                	addi	s0,sp,512
 7bc:	0290                	addi	a2,sp,320
 7be:	0116                	slli	sp,sp,0x5
 7c0:	0001                	nop
 7c2:	8000                	0x8000
 7c4:	00078017          	auipc	zero,0x78
 7c8:	0400                	addi	s0,sp,512
 7ca:	0291                	addi	t0,t0,4
 7cc:	2c10                	fld	fa2,24(s0)
 7ce:	0008                	0x8
 7d0:	8800                	0x8800
 7d2:	0003aa17          	auipc	s4,0x3a
 7d6:	0400                	addi	s0,sp,512
 7d8:	0292                	slli	t0,t0,0x4
 7da:	3c10                	fld	fa2,56(s0)
 7dc:	0008                	0x8
 7de:	9000                	0x9000
 7e0:	0000fb17          	auipc	s6,0xf
 7e4:	0400                	addi	s0,sp,512
 7e6:	420f0293          	addi	t0,t5,1056 # 64b66 <__global_pointer$+0x521be>
 7ea:	0000                	unimp
 7ec:	a800                	fsd	fs0,16(s0)
 7ee:	00029e17          	auipc	t3,0x29
 7f2:	0400                	addi	s0,sp,512
 7f4:	0294                	addi	a3,sp,320
 7f6:	0116                	slli	sp,sp,0x5
 7f8:	0001                	nop
 7fa:	ac00                	fsd	fs0,24(s0)
 7fc:	00019d17          	auipc	s10,0x19
 800:	0400                	addi	s0,sp,512
 802:	0295                	addi	t0,t0,5
 804:	0116                	slli	sp,sp,0x5
 806:	0001                	nop
 808:	b400                	fsd	fs0,40(s0)
 80a:	00028d17          	auipc	s10,0x28
 80e:	0400                	addi	s0,sp,512
 810:	0296                	slli	t0,t0,0x5
 812:	0116                	slli	sp,sp,0x5
 814:	0001                	nop
 816:	bc00                	fsd	fs0,56(s0)
 818:	00010e17          	auipc	t3,0x10
 81c:	0400                	addi	s0,sp,512
 81e:	01160297          	auipc	t0,0x1160
 822:	0001                	nop
 824:	c400                	sw	s0,8(s0)
 826:	00013a17          	auipc	s4,0x13
 82a:	0400                	addi	s0,sp,512
 82c:	0298                	addi	a4,sp,320
 82e:	0116                	slli	sp,sp,0x5
 830:	0001                	nop
 832:	cc00                	sw	s0,24(s0)
 834:	00055917          	auipc	s2,0x55
 838:	0400                	addi	s0,sp,512
 83a:	0299                	addi	t0,t0,6
 83c:	4208                	lw	a0,0(a2)
 83e:	0000                	unimp
 840:	d400                	sw	s0,40(s0)
 842:	0800                	addi	s0,sp,16
 844:	05c6                	slli	a1,a1,0x11
 846:	0000                	unimp
 848:	0825                	addi	a6,a6,9
 84a:	0000                	unimp
 84c:	3b09                	addiw	s6,s6,-30
 84e:	0000                	unimp
 850:	1900                	addi	s0,sp,176
 852:	0200                	addi	s0,sp,256
 854:	0708                	addi	a0,sp,896
 856:	0000014b          	fnmsub.s	ft2,ft0,ft0,ft0,rne
 85a:	c608                	sw	a0,8(a2)
 85c:	0005                	c.nop	1
 85e:	3c00                	fld	fs0,56(s0)
 860:	0008                	0x8
 862:	0900                	addi	s0,sp,144
 864:	0000003b          	addw	zero,zero,zero
 868:	c6080007          	0xc6080007
 86c:	0005                	c.nop	1
 86e:	4c00                	lw	s0,24(s0)
 870:	0008                	0x8
 872:	0900                	addi	s0,sp,144
 874:	0000003b          	addw	zero,zero,zero
 878:	681b0017          	auipc	zero,0x681b0
 87c:	0401                	addi	s0,s0,0
 87e:	029e                	slli	t0,t0,0x7
 880:	00087407          	0x87407
 884:	1700                	addi	s0,sp,928
 886:	03d1                	addi	t2,t2,20
 888:	0000                	unimp
 88a:	a104                	fsd	fs1,0(a0)
 88c:	1b02                	slli	s6,s6,0x20
 88e:	0874                	addi	a3,sp,28
 890:	0000                	unimp
 892:	1700                	addi	s0,sp,928
 894:	02f2                	slli	t0,t0,0x1c
 896:	0000                	unimp
 898:	a204                	fsd	fs1,0(a2)
 89a:	1802                	slli	a6,a6,0x20
 89c:	0884                	addi	s1,sp,80
 89e:	0000                	unimp
 8a0:	00f0                	addi	a2,sp,76
 8a2:	0508                	addi	a0,sp,640
 8a4:	84000003          	lb	zero,-1984(zero) # fffffffffffff840 <__global_pointer$+0xfffffffffffece98>
 8a8:	0008                	0x8
 8aa:	0900                	addi	s0,sp,144
 8ac:	0000003b          	addw	zero,zero,zero
 8b0:	001d                	c.nop	7
 8b2:	7308                	ld	a0,32(a4)
 8b4:	0000                	unimp
 8b6:	9400                	0x9400
 8b8:	0008                	0x8
 8ba:	0900                	addi	s0,sp,144
 8bc:	0000003b          	addw	zero,zero,zero
 8c0:	001d                	c.nop	7
 8c2:	681c                	ld	a5,16(s0)
 8c4:	0401                	addi	s0,s0,0
 8c6:	ba030283          	lb	t0,-1120(t1) # 2e310 <__global_pointer$+0x1b968>
 8ca:	0008                	0x8
 8cc:	1d00                	addi	s0,sp,688
 8ce:	05fd                	addi	a1,a1,31
 8d0:	0000                	unimp
 8d2:	9a04                	0x9a04
 8d4:	0b02                	c.slli64	s6
 8d6:	0700                	addi	s0,sp,896
 8d8:	0000                	unimp
 8da:	9a1d                	andi	a2,a2,-25
 8dc:	04000007          	0x4000007
 8e0:	4c0b02a3          	sb	zero,1221(s6) # fca5 <register_fini-0x40b>
 8e4:	0008                	0x8
 8e6:	0000                	unimp
 8e8:	c608                	sw	a0,8(a2)
 8ea:	0005                	c.nop	1
 8ec:	ca00                	sw	s0,16(a2)
 8ee:	0008                	0x8
 8f0:	0900                	addi	s0,sp,144
 8f2:	0000003b          	addw	zero,zero,zero
 8f6:	0018                	0x18
 8f8:	091e                	slli	s2,s2,0x7
 8fa:	0004                	0x4
 8fc:	0f00                	addi	s0,sp,912
 8fe:	ca08                	sw	a0,16(a2)
 900:	0008                	0x8
 902:	1f00                	addi	s0,sp,944
 904:	08e0                	addi	s0,sp,92
 906:	0000                	unimp
 908:	6c14                	ld	a3,24(s0)
 90a:	0004                	0x4
 90c:	0000                	unimp
 90e:	08d5080f          	0x8d5080f
 912:	0000                	unimp
 914:	018d080f          	0x18d080f
 918:	0000                	unimp
 91a:	f71f 0008 1400      	0x14000008f71f
 920:	0042                	c.slli	zero,0x10
 922:	0000                	unimp
 924:	0f00                	addi	s0,sp,912
 926:	fd08                	sd	a0,56(a0)
 928:	0008                	0x8
 92a:	0f00                	addi	s0,sp,912
 92c:	ec08                	sd	a0,24(s0)
 92e:	0008                	0x8
 930:	0800                	addi	s0,sp,16
 932:	0665                	addi	a2,a2,25
 934:	0000                	unimp
 936:	00000913          	li	s2,0
 93a:	3b09                	addiw	s6,s6,-30
 93c:	0000                	unimp
 93e:	0200                	addi	s0,sp,256
 940:	2000                	fld	fs0,0(s0)
 942:	069e                	slli	a3,a3,0x7
 944:	0000                	unimp
 946:	3304                	fld	fs1,32(a4)
 948:	046c1703          	lh	a4,70(s8) # 4d5b0 <__global_pointer$+0x3ac08>
 94c:	0000                	unimp
 94e:	9720                	0x9720
 950:	0006                	c.slli	zero,0x1
 952:	0400                	addi	s0,sp,512
 954:	0334                	addi	a3,sp,392
 956:	721d                	lui	tp,0xfffe7
 958:	0004                	0x4
 95a:	0800                	addi	s0,sp,16
 95c:	05fc                	addi	a5,sp,716
 95e:	0000                	unimp
 960:	0938                	addi	a4,sp,152
 962:	0000                	unimp
 964:	0021                	c.nop	8
 966:	2d15                	addiw	s10,s10,5
 968:	0009                	c.nop	2
 96a:	2200                	fld	fs0,0(a2)
 96c:	0278                	addi	a4,sp,268
 96e:	0000                	unimp
 970:	1406                	slli	s0,s0,0x21
 972:	3824                	fld	fs1,112(s0)
 974:	0009                	c.nop	2
 976:	2200                	fld	fs0,0(a2)
 978:	059c                	addi	a5,sp,704
 97a:	0000                	unimp
 97c:	1506                	slli	a0,a0,0x21
 97e:	4215                	li	tp,5
 980:	0000                	unimp
 982:	0f00                	addi	s0,sp,912
 984:	5b08                	lw	a0,48(a4)
 986:	0009                	c.nop	2
 988:	1300                	addi	s0,sp,416
 98a:	0042                	c.slli	zero,0x10
 98c:	0000                	unimp
 98e:	0000096f          	jal	s2,98e <register_fini-0xf722>
 992:	6f14                	ld	a3,24(a4)
 994:	0009                	c.nop	2
 996:	1400                	addi	s0,sp,544
 998:	0000096f          	jal	s2,998 <register_fini-0xf718>
 99c:	0f00                	addi	s0,sp,912
 99e:	7508                	ld	a0,40(a0)
 9a0:	0009                	c.nop	2
 9a2:	2300                	fld	fs0,0(a4)
 9a4:	b722                	fsd	fs0,424(sp)
 9a6:	0004                	0x4
 9a8:	0700                	addi	s0,sp,896
 9aa:	05c00e67          	jalr	t3,92(zero) # 0 <register_fini-0x100b0>
 9ae:	0000                	unimp
 9b0:	d822                	sw	s0,48(sp)
 9b2:	08000003          	lb	zero,128(zero) # 80 <register_fini-0x10030>
 9b6:	0f10                	addi	a2,sp,912
 9b8:	098e                	slli	s3,s3,0x3
 9ba:	0000                	unimp
 9bc:	05c0080f          	0x5c0080f
 9c0:	0000                	unimp
 9c2:	ba22                	fsd	fs0,304(sp)
 9c4:	0004                	0x4
 9c6:	0800                	addi	s0,sp,16
 9c8:	0efc                	addi	a5,sp,860
 9ca:	05c0                	addi	s0,sp,708
 9cc:	0000                	unimp
 9ce:	7a22                	ld	s4,40(sp)
 9d0:	0004                	0x4
 9d2:	0800                	addi	s0,sp,16
 9d4:	0cfd                	addi	s9,s9,31
 9d6:	0042                	c.slli	zero,0x10
 9d8:	0000                	unimp
 9da:	4822                	lw	a6,8(sp)
 9dc:	0006                	c.slli	zero,0x1
 9de:	0800                	addi	s0,sp,16
 9e0:	14fd                	addi	s1,s1,-1
 9e2:	0042                	c.slli	zero,0x10
 9e4:	0000                	unimp
 9e6:	d422                	sw	s0,40(sp)
 9e8:	08000007          	0x8000007
 9ec:	1cfd                	addi	s9,s9,-1
 9ee:	0042                	c.slli	zero,0x10
 9f0:	0000                	unimp
 9f2:	2f22                	fld	ft10,8(sp)
 9f4:	0004                	0x4
 9f6:	0800                	addi	s0,sp,16
 9f8:	0cff                	0xcff
 9fa:	0042                	c.slli	zero,0x10
 9fc:	0000                	unimp
 9fe:	e622                	sd	s0,264(sp)
 a00:	0004                	0x4
 a02:	0900                	addi	s0,sp,144
 a04:	169a                	slli	a3,a3,0x26
 a06:	0034                	addi	a3,sp,8
 a08:	0000                	unimp
 a0a:	e222                	sd	s0,256(sp)
 a0c:	0000                	unimp
 a0e:	0900                	addi	s0,sp,144
 a10:	0042159b          	slliw	a1,tp,0x4
 a14:	0000                	unimp
 a16:	c008                	sw	a0,0(s0)
 a18:	0005                	c.nop	1
 a1a:	f800                	sd	s0,48(s0)
 a1c:	0009                	c.nop	2
 a1e:	0900                	addi	s0,sp,144
 a20:	0000003b          	addw	zero,zero,zero
 a24:	0001                	nop
 a26:	ac22                	fsd	fs0,24(sp)
 a28:	0001                	nop
 a2a:	0900                	addi	s0,sp,144
 a2c:	179e                	slli	a5,a5,0x27
 a2e:	09e8                	addi	a0,sp,220
 a30:	0000                	unimp
 a32:	3605                	addiw	a2,a2,-31
 a34:	0a000003          	lb	zero,160(zero) # a0 <register_fini-0x10010>
 a38:	162a                	slli	a2,a2,0x2a
 a3a:	00000073          	ecall
 a3e:	8a05                	andi	a2,a2,1
 a40:	0005                	c.nop	1
 a42:	0a00                	addi	s0,sp,272
 a44:	0a1c152f          	0xa1c152f
 a48:	0000                	unimp
 a4a:	0a22080f          	0xa22080f
 a4e:	0000                	unimp
 a50:	000a0413          	mv	s0,s4
 a54:	3100                	fld	fs0,32(a0)
 a56:	000a                	c.slli	zero,0x2
 a58:	1400                	addi	s0,sp,544
 a5a:	0000096f          	jal	s2,a5a <register_fini-0xf656>
 a5e:	0500                	addi	s0,sp,640
 a60:	081c                	addi	a5,sp,16
 a62:	0000                	unimp
 a64:	360a                	fld	fa2,160(sp)
 a66:	0009550f          	0x9550f
 a6a:	2200                	fld	fs0,0(a2)
 a6c:	000000b7          	lui	ra,0x0
 a70:	bb0a                	fsd	ft2,432(sp)
 a72:	1012                	c.slli	zero,0x24
 a74:	000a                	c.slli	zero,0x2
 a76:	2200                	fld	fs0,0(a2)
 a78:	00000687          	0x687
 a7c:	be0a                	fsd	ft2,312(sp)
 a7e:	3110                	fld	fa2,32(a0)
 a80:	000a                	c.slli	zero,0x2
 a82:	2400                	fld	fs0,8(s0)
 a84:	0300                	addi	s0,sp,384
 a86:	0000                	unimp
 a88:	00730407          	0x730407
 a8c:	0000                	unimp
 a8e:	9206180b          	0x9206180b
 a92:	000a                	c.slli	zero,0x2
 a94:	2500                	fld	fs0,8(a0)
 a96:	0534                	addi	a3,sp,648
 a98:	0000                	unimp
 a9a:	2500                	fld	fs0,8(a0)
 a9c:	03f8                	addi	a4,sp,460
 a9e:	0000                	unimp
 aa0:	2501                	sext.w	a0,a0
 aa2:	0449                	addi	s0,s0,18
 aa4:	0000                	unimp
 aa6:	2502                	fld	fa0,0(sp)
 aa8:	03ed                	addi	t2,t2,27
 aaa:	0000                	unimp
 aac:	052b2503          	lw	a0,82(s6)
 ab0:	0000                	unimp
 ab2:	2504                	fld	fs1,8(a0)
 ab4:	000007db          	0x7db
 ab8:	2505                	addiw	a0,a0,1
 aba:	07ca                	slli	a5,a5,0x12
 abc:	0000                	unimp
 abe:	0006                	c.slli	zero,0x1
 ac0:	8c22                	mv	s8,s0
 ac2:	0001                	nop
 ac4:	0b00                	addi	s0,sp,400
 ac6:	1c21                	addi	s8,s8,-24
 ac8:	0a55                	addi	s4,s4,21
 aca:	0000                	unimp
 acc:	6124                	ld	s1,64(a0)
 ace:	0004                	0x4
 ad0:	0700                	addi	s0,sp,896
 ad2:	7304                	ld	s1,32(a4)
 ad4:	0000                	unimp
 ad6:	0b00                	addi	s0,sp,400
 ad8:	0ac30623          	sb	a2,172(t1)
 adc:	0000                	unimp
 ade:	8025                	srli	s0,s0,0x9
 ae0:	0005                	c.nop	1
 ae2:	0000                	unimp
 ae4:	4a25                	li	s4,9
 ae6:	0005                	c.nop	1
 ae8:	0100                	addi	s0,sp,128
 aea:	5c25                	li	s8,-23
 aec:	0006                	c.slli	zero,0x1
 aee:	0200                	addi	s0,sp,256
 af0:	2200                	fld	fs0,0(a2)
 af2:	02ac                	addi	a1,sp,328
 af4:	0000                	unimp
 af6:	9e1e280b          	0x9e1e280b
 afa:	000a                	c.slli	zero,0x2
 afc:	2400                	fld	fs0,8(s0)
 afe:	011d                	addi	sp,sp,7
 b00:	0000                	unimp
 b02:	00730407          	0x730407
 b06:	0000                	unimp
 b08:	ee062b0b          	0xee062b0b
 b0c:	000a                	c.slli	zero,0x2
 b0e:	2500                	fld	fs0,8(a0)
 b10:	063a                	slli	a2,a2,0xe
 b12:	0000                	unimp
 b14:	2500                	fld	fs0,8(a0)
 b16:	0628                	addi	a0,sp,776
 b18:	0000                	unimp
 b1a:	0001                	nop
 b1c:	6022                	0x6022
 b1e:	0002                	c.slli64	zero
 b20:	0b00                	addi	s0,sp,400
 b22:	0acf2a2f          	amoswap.w.rl	s4,a2,(t5)
 b26:	0000                	unimp
 b28:	1422                	slli	s0,s0,0x28
 b2a:	0004                	0x4
 b2c:	0c00                	addi	s0,sp,528
 b2e:	1a29                	addi	s4,s4,-22
 b30:	0938                	addi	a4,sp,152
 b32:	0000                	unimp
 b34:	f922                	sd	s0,176(sp)
 b36:	0001                	nop
 b38:	0c00                	addi	s0,sp,528
 b3a:	1a38                	addi	a4,sp,312
 b3c:	0938                	addi	a4,sp,152
 b3e:	0000                	unimp
 b40:	0a05                	addi	s4,s4,1
 b42:	0008                	0x8
 b44:	0d00                	addi	s0,sp,656
 b46:	005e167b          	0x5e167b
 b4a:	0000                	unimp
 b4c:	1215                	addi	tp,tp,-27
 b4e:	0500000b          	0x500000b
 b52:	0751                	addi	a4,a4,20
 b54:	0000                	unimp
 b56:	840d                	srai	s0,s0,0x3
 b58:	0000340f          	0x340f
 b5c:	0500                	addi	s0,sp,640
 b5e:	0750                	addi	a2,sp,900
 b60:	0000                	unimp
 b62:	850d                	srai	a0,a0,0x3
 b64:	3b16                	fld	fs6,352(sp)
 b66:	0000                	unimp
 b68:	0500                	addi	s0,sp,640
 b6a:	0340                	addi	s0,sp,388
 b6c:	0000                	unimp
 b6e:	880d                	andi	s0,s0,3
 b70:	000b470f          	0xb470f
 b74:	0200                	addi	s0,sp,256
 b76:	0510                	addi	a2,sp,640
 b78:	031f 0000 0402      	0x4020000031f
 b7e:	9204                	0x9204
 b80:	0004                	0x4
 b82:	0200                	addi	s0,sp,256
 b84:	0308                	addi	a0,sp,384
 b86:	048a                	slli	s1,s1,0x2
 b88:	0000                	unimp
 b8a:	0802                	c.slli64	a6
 b8c:	8504                	0x8504
 b8e:	0001                	nop
 b90:	0200                	addi	s0,sp,256
 b92:	0310                	addi	a2,sp,384
 b94:	00ec                	addi	a1,sp,76
 b96:	0000                	unimp
 b98:	2002                	fld	ft0,0(sp)
 b9a:	00017803          	0x17803
 b9e:	1900                	addi	s0,sp,176
 ba0:	000004d3          	fadd.s	fs1,ft0,ft0,rne
 ba4:	0d10                	addi	a2,sp,656
 ba6:	01ed                	addi	gp,gp,27
 ba8:	9c0a                	add	s8,s8,sp
 baa:	2600000b          	0x2600000b
 bae:	6f6c                	ld	a1,216(a4)
 bb0:	ed0d0077          	0xed0d0077
 bb4:	1a01                	addi	s4,s4,-32
 bb6:	00000b23          	sb	zero,22(zero) # 16 <register_fini-0x1009a>
 bba:	1700                	addi	s0,sp,928
 bbc:	000002c3          	fmadd.s	ft5,ft0,ft0,ft0,rne
 bc0:	ed0d                	bnez	a0,bfa <register_fini-0xf4b6>
 bc2:	1f01                	addi	t5,t5,-32
 bc4:	00000b23          	sb	zero,22(zero) # 16 <register_fini-0x1009a>
 bc8:	0008                	0x8
 bca:	f40d1027          	0xf40d1027
 bce:	0901                	addi	s2,s2,0
 bd0:	0bbe                	slli	s7,s7,0xf
 bd2:	0000                	unimp
 bd4:	7328                	ld	a0,96(a4)
 bd6:	0d00                	addi	s0,sp,656
 bd8:	01f6                	slli	gp,gp,0x1d
 bda:	000b7113          	andi	sp,s6,0
 bde:	2800                	fld	fs0,16(s0)
 be0:	6c6c                	ld	a1,216(s0)
 be2:	0d00                	addi	s0,sp,656
 be4:	3b0a01f7          	0x3b0a01f7
 be8:	0000000b          	0xb
 bec:	aa04                	fsd	fs1,16(a2)
 bee:	0006                	c.slli	zero,0x1
 bf0:	0d00                	addi	s0,sp,656
 bf2:	01f8                	addi	a4,sp,204
 bf4:	000b9c03          	lh	s8,0(s7)
 bf8:	1500                	addi	s0,sp,672
 bfa:	0bbe                	slli	s7,s7,0xf
 bfc:	0000                	unimp
 bfe:	1e08                	addi	a0,sp,816
 c00:	e000000b          	0xe000000b
 c04:	0900000b          	0x900000b
 c08:	0000003b          	addw	zero,zero,zero
 c0c:	00ff                	0xff
 c0e:	d015                	beqz	s0,b32 <register_fini-0xf57e>
 c10:	2000000b          	0x2000000b
 c14:	0251                	addi	tp,tp,20
 c16:	0000                	unimp
 c18:	fc0d                	bnez	s0,b52 <register_fini-0xf55e>
 c1a:	1601                	addi	a2,a2,-32
 c1c:	0be0                	addi	s0,sp,476
 c1e:	0000                	unimp
 c20:	9720                	0x9720
 c22:	0d000003          	lb	zero,208(zero) # d0 <register_fini-0xffe0>
 c26:	0202                	c.slli64	tp
 c28:	e016                	sd	t0,0(sp)
 c2a:	2900000b          	0x2900000b
 c2e:	0481                	addi	s1,s1,0
 c30:	0000                	unimp
 c32:	2901                	sext.w	s2,s2
 c34:	3b01                	addiw	s6,s6,-32
 c36:	6c00000b          	0x6c00000b
 c3a:	010c                	addi	a1,sp,128
 c3c:	0000                	unimp
 c3e:	0000                	unimp
 c40:	9000                	0x9000
 c42:	0000                	unimp
 c44:	0000                	unimp
 c46:	0000                	unimp
 c48:	0100                	addi	s0,sp,128
 c4a:	2a9c                	fld	fa5,16(a3)
 c4c:	0075                	c.nop	29
 c4e:	2901                	sext.w	s2,s2
 c50:	3b12                	fld	fs6,288(sp)
 c52:	0000000b          	0xb
 c56:	0000                	unimp
 c58:	2a00                	fld	fs0,16(a2)
 c5a:	0076                	c.slli	zero,0x1d
 c5c:	2901                	sext.w	s2,s2
 c5e:	3b1c                	fld	fa5,48(a4)
 c60:	4000000b          	0x4000000b
 c64:	0000                	unimp
 c66:	2b00                	fld	fs0,16(a4)
 c68:	7575                	lui	a0,0xffffd
 c6a:	0100                	addi	s0,sp,128
 c6c:	0bcb112b          	0xbcb112b
 c70:	0000                	unimp
 c72:	0076762b          	0x76762b
 c76:	2c01                	sext.w	s8,s8
 c78:	cb11                	beqz	a4,c8c <register_fini-0xf424>
 c7a:	2b00000b          	0x2b00000b
 c7e:	2d010077          	0x2d010077
 c82:	000bbe0b          	0xbbe0b
 c86:	2c00                	fld	fs0,24(s0)
 c88:	01d2                	slli	gp,gp,0x14
 c8a:	0000                	unimp
 c8c:	2e01                	sext.w	t3,t3
 c8e:	2f0a                	fld	ft10,128(sp)
 c90:	8000000b          	0x8000000b
 c94:	0000                	unimp
 c96:	2c00                	fld	fs0,24(s0)
 c98:	0642                	slli	a2,a2,0x10
 c9a:	0000                	unimp
 c9c:	2f01                	sext.w	t5,t5
 c9e:	2f0a                	fld	ft10,128(sp)
 ca0:	b600000b          	0xb600000b
 ca4:	0000                	unimp
 ca6:	2d00                	fld	fs0,24(a0)
 ca8:	05b1                	addi	a1,a1,12
 caa:	0000                	unimp
 cac:	3001                	0x3001
 cae:	2f0a                	fld	ft10,128(sp)
 cb0:	0100000b          	0x100000b
 cb4:	2c5e                	fld	fs8,464(sp)
 cb6:	0000034b          	fnmsub.s	ft6,ft0,ft0,ft0,rne
 cba:	3101                	addiw	sp,sp,-32
 cbc:	2f0a                	fld	ft10,128(sp)
 cbe:	ec00000b          	0xec00000b
 cc2:	0000                	unimp
 cc4:	2c00                	fld	fs0,24(s0)
 cc6:	00000347          	fmsub.s	ft6,ft0,ft0,ft0,rne
 cca:	3201                	addiw	tp,tp,-32
 ccc:	2f0a                	fld	ft10,128(sp)
 cce:	4900000b          	0x4900000b
 cd2:	0001                	nop
 cd4:	2c00                	fld	fs0,24(s0)
 cd6:	02c1                	addi	t0,t0,16
 cd8:	0000                	unimp
 cda:	3301                	addiw	t1,t1,-32
 cdc:	2f0a                	fld	ft10,128(sp)
 cde:	8400000b          	0x8400000b
 ce2:	0001                	nop
 ce4:	2c00                	fld	fs0,24(s0)
 ce6:	01de                	slli	gp,gp,0x17
 ce8:	0000                	unimp
 cea:	3401                	addiw	s0,s0,-32
 cec:	2f0a                	fld	ft10,128(sp)
 cee:	ce00000b          	0xce00000b
 cf2:	0001                	nop
 cf4:	2d00                	fld	fs0,24(a0)
 cf6:	0162                	slli	sp,sp,0x18
 cf8:	0000                	unimp
 cfa:	3501                	addiw	a0,a0,-32
 cfc:	2f0a                	fld	ft10,128(sp)
 cfe:	0100000b          	0x100000b
 d02:	2c6d                	addiw	s8,s8,27
 d04:	00000513          	li	a0,0
 d08:	3601                	addiw	a2,a2,-32
 d0a:	2f0a                	fld	ft10,128(sp)
 d0c:	4300000b          	0x4300000b
 d10:	0002                	c.slli64	zero
 d12:	2e00                	fld	fs0,24(a2)
 d14:	0ccc                	addi	a1,sp,596
 d16:	0001                	nop
 d18:	0000                	unimp
 d1a:	0000                	unimp
 d1c:	0004                	0x4
 d1e:	0000                	unimp
 d20:	0000                	unimp
 d22:	0000                	unimp
 d24:	00000d17          	auipc	s10,0x0
 d28:	232d                	addiw	t1,t1,11
 d2a:	0004                	0x4
 d2c:	0100                	addi	s0,sp,128
 d2e:	1b50                	addi	a2,sp,436
 d30:	00000b2f          	0xb2f
 d34:	5a01                	li	s4,-32
 d36:	292d                	addiw	s2,s2,11
 d38:	0004                	0x4
 d3a:	0100                	addi	s0,sp,128
 d3c:	1b50                	addi	a2,sp,436
 d3e:	00000b2f          	0xb2f
 d42:	5b01                	li	s6,-32
 d44:	2f00                	fld	fs0,24(a4)
 d46:	0cd8                	addi	a4,sp,596
 d48:	0001                	nop
 d4a:	0000                	unimp
 d4c:	0000                	unimp
 d4e:	000c                	0xc
 d50:	0000                	unimp
 d52:	0000                	unimp
 d54:	0000                	unimp
 d56:	232d                	addiw	t1,t1,11
 d58:	0004                	0x4
 d5a:	0100                	addi	s0,sp,128
 d5c:	0b2f1153          	fsub.d	ft2,ft10,fs2,rtz
 d60:	0000                	unimp
 d62:	5a01                	li	s4,-32
 d64:	292d                	addiw	s2,s2,11
 d66:	0004                	0x4
 d68:	0100                	addi	s0,sp,128
 d6a:	0b2f1153          	fsub.d	ft2,ft10,fs2,rtz
 d6e:	0000                	unimp
 d70:	5b01                	li	s6,-32
 d72:	0000                	unimp
	...

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
  16:	2501                	sext.w	a0,a0
  18:	130e                	slli	t1,t1,0x23
  1a:	1b0e030b          	0x1b0e030b
  1e:	110e                	slli	sp,sp,0x23
  20:	1201                	addi	tp,tp,-32
  22:	00171007          	0x171007
  26:	0200                	addi	s0,sp,256
  28:	0024                	addi	s1,sp,8
  2a:	0b3e0b0b          	0xb3e0b0b
  2e:	00000e03          	lb	t3,0(zero) # 0 <register_fini-0x100b0>
  32:	0b002403          	lw	s0,176(zero) # b0 <register_fini-0x10000>
  36:	030b3e0b          	0x30b3e0b
  3a:	0008                	0x8
  3c:	0400                	addi	s0,sp,512
  3e:	0016                	c.slli	zero,0x5
  40:	0b3a0e03          	lb	t3,179(s4) # 138d9 <__global_pointer$+0xf31>
  44:	0b39053b          	0xb39053b
  48:	1349                	addi	t1,t1,-14
  4a:	0000                	unimp
  4c:	1605                	addi	a2,a2,-31
  4e:	0300                	addi	s0,sp,384
  50:	3a0e                	fld	fs4,224(sp)
  52:	390b3b0b          	0x390b3b0b
  56:	0013490b          	0x13490b
  5a:	0600                	addi	s0,sp,768
  5c:	0b0b0117          	auipc	sp,0xb0b0
  60:	0b3a                	slli	s6,s6,0xe
  62:	0b390b3b          	0xb390b3b
  66:	1301                	addi	t1,t1,-32
  68:	0000                	unimp
  6a:	03000d07          	0x3000d07
  6e:	3a0e                	fld	fs4,224(sp)
  70:	390b3b0b          	0x390b3b0b
  74:	0013490b          	0x13490b
  78:	0800                	addi	s0,sp,16
  7a:	0101                	addi	sp,sp,0
  7c:	1349                	addi	t1,t1,-14
  7e:	1301                	addi	t1,t1,-32
  80:	0000                	unimp
  82:	2109                	addiw	sp,sp,2
  84:	4900                	lw	s0,16(a0)
  86:	000b2f13          	slti	t5,s6,0
  8a:	0a00                	addi	s0,sp,272
  8c:	0b0b0113          	addi	sp,s6,176
  90:	0b3a                	slli	s6,s6,0xe
  92:	0b390b3b          	0xb390b3b
  96:	1301                	addi	t1,t1,-32
  98:	0000                	unimp
  9a:	03000d0b          	0x3000d0b
  9e:	3a0e                	fld	fs4,224(sp)
  a0:	390b3b0b          	0x390b3b0b
  a4:	3813490b          	0x3813490b
  a8:	0c00000b          	0xc00000b
  ac:	0b0b000f          	0xb0b000f
  b0:	0000                	unimp
  b2:	130d                	addi	t1,t1,-29
  b4:	0301                	addi	t1,t1,0
  b6:	0b0e                	slli	s6,s6,0x3
  b8:	3b0b3a0b          	0x3b0b3a0b
  bc:	010b390b          	0x10b390b
  c0:	0e000013          	li	zero,224
  c4:	000d                	c.nop	3
  c6:	0b3a0803          	lb	a6,179(s4)
  ca:	0b390b3b          	0xb390b3b
  ce:	1349                	addi	t1,t1,-14
  d0:	0b38                	addi	a4,sp,408
  d2:	0000                	unimp
  d4:	0b000f0f          	0xb000f0f
  d8:	0013490b          	0x13490b
  dc:	1000                	addi	s0,sp,32
  de:	0e030113          	addi	sp,t1,224
  e2:	0b3a050b          	0xb3a050b
  e6:	0b390b3b          	0xb390b3b
  ea:	1301                	addi	t1,t1,-32
  ec:	0000                	unimp
  ee:	0d11                	addi	s10,s10,4
  f0:	0300                	addi	s0,sp,384
  f2:	3a0e                	fld	fs4,224(sp)
  f4:	390b3b0b          	0x390b3b0b
  f8:	3813490b          	0x3813490b
  fc:	0005                	c.nop	1
  fe:	1200                	addi	s0,sp,288
 100:	0015                	c.nop	5
 102:	00001927          	0x1927
 106:	27011513          	0x27011513
 10a:	4919                	li	s2,6
 10c:	00130113          	addi	sp,t1,1
 110:	1400                	addi	s0,sp,544
 112:	0005                	c.nop	1
 114:	1349                	addi	t1,t1,-14
 116:	0000                	unimp
 118:	2615                	addiw	a2,a2,5
 11a:	4900                	lw	s0,16(a0)
 11c:	16000013          	li	zero,352
 120:	0e030113          	addi	sp,t1,224
 124:	0b3a050b          	0xb3a050b
 128:	0b39053b          	0xb39053b
 12c:	1301                	addi	t1,t1,-32
 12e:	0000                	unimp
 130:	03000d17          	auipc	s10,0x3000
 134:	3a0e                	fld	fs4,224(sp)
 136:	39053b0b          	0x39053b0b
 13a:	3813490b          	0x3813490b
 13e:	1800000b          	0x1800000b
 142:	000d                	c.nop	3
 144:	0b3a0e03          	lb	t3,179(s4)
 148:	0b39053b          	0xb39053b
 14c:	1349                	addi	t1,t1,-14
 14e:	0538                	addi	a4,sp,648
 150:	0000                	unimp
 152:	1319                	addi	t1,t1,-26
 154:	0301                	addi	t1,t1,0
 156:	0b0e                	slli	s6,s6,0x3
 158:	3b0b3a0b          	0x3b0b3a0b
 15c:	3905                	addiw	s2,s2,-31
 15e:	0013010b          	0x13010b
 162:	1a00                	addi	s0,sp,304
 164:	0b0b0113          	addi	sp,s6,176
 168:	0b3a                	slli	s6,s6,0xe
 16a:	0b39053b          	0xb39053b
 16e:	1301                	addi	t1,t1,-32
 170:	0000                	unimp
 172:	0b01131b          	0xb01131b
 176:	3a05                	addiw	s4,s4,-31
 178:	39053b0b          	0x39053b0b
 17c:	0013010b          	0x13010b
 180:	1c00                	addi	s0,sp,560
 182:	050b0117          	auipc	sp,0x50b0
 186:	0b3a                	slli	s6,s6,0xe
 188:	0b39053b          	0xb39053b
 18c:	1301                	addi	t1,t1,-32
 18e:	0000                	unimp
 190:	0d1d                	addi	s10,s10,7
 192:	0300                	addi	s0,sp,384
 194:	3a0e                	fld	fs4,224(sp)
 196:	39053b0b          	0x39053b0b
 19a:	0013490b          	0x13490b
 19e:	1e00                	addi	s0,sp,816
 1a0:	0e030013          	addi	zero,t1,224
 1a4:	193c                	addi	a5,sp,184
 1a6:	0000                	unimp
 1a8:	151f 2701 0119      	0x1192701151f
 1ae:	20000013          	li	zero,512
 1b2:	0034                	addi	a3,sp,8
 1b4:	0b3a0e03          	lb	t3,179(s4)
 1b8:	0b39053b          	0xb39053b
 1bc:	1349                	addi	t1,t1,-14
 1be:	193c193f 21210000 	0x21210000193c193f
 1c6:	0000                	unimp
 1c8:	2200                	fld	fs0,0(a2)
 1ca:	0034                	addi	a3,sp,8
 1cc:	0b3a0e03          	lb	t3,179(s4)
 1d0:	0b390b3b          	0xb390b3b
 1d4:	1349                	addi	t1,t1,-14
 1d6:	193c193f 26230000 	0x26230000193c193f
 1de:	0000                	unimp
 1e0:	2400                	fld	fs0,8(s0)
 1e2:	0104                	addi	s1,sp,128
 1e4:	0b3e0e03          	lb	t3,179(t3) # 108cb <main+0x4eb>
 1e8:	13490b0b          	0x13490b0b
 1ec:	0b3a                	slli	s6,s6,0xe
 1ee:	0b390b3b          	0xb390b3b
 1f2:	1301                	addi	t1,t1,-32
 1f4:	0000                	unimp
 1f6:	2825                	addiw	a6,a6,9
 1f8:	0300                	addi	s0,sp,384
 1fa:	1c0e                	slli	s8,s8,0x23
 1fc:	2600000b          	0x2600000b
 200:	000d                	c.nop	3
 202:	0b3a0803          	lb	a6,179(s4)
 206:	0b39053b          	0xb39053b
 20a:	1349                	addi	t1,t1,-14
 20c:	0b38                	addi	a4,sp,408
 20e:	0000                	unimp
 210:	0b011727          	0xb011727
 214:	3b0b3a0b          	0x3b0b3a0b
 218:	3905                	addiw	s2,s2,-31
 21a:	0013010b          	0x13010b
 21e:	2800                	fld	fs0,16(s0)
 220:	000d                	c.nop	3
 222:	0b3a0803          	lb	a6,179(s4)
 226:	0b39053b          	0xb39053b
 22a:	1349                	addi	t1,t1,-14
 22c:	0000                	unimp
 22e:	2e29                	addiw	t3,t3,10
 230:	3f01                	addiw	t5,t5,-32
 232:	0319                	addi	t1,t1,6
 234:	3a0e                	fld	fs4,224(sp)
 236:	390b3b0b          	0x390b3b0b
 23a:	4919270b          	0x4919270b
 23e:	12011113          	0x12011113
 242:	97184007          	flq	ft0,-1679(a6) # 31ee9 <__global_pointer$+0x1f541>
 246:	1942                	slli	s2,s2,0x30
 248:	0000                	unimp
 24a:	052a                	slli	a0,a0,0xa
 24c:	0300                	addi	s0,sp,384
 24e:	3a08                	fld	fa0,48(a2)
 250:	390b3b0b          	0x390b3b0b
 254:	0213490b          	0x213490b
 258:	2b000017          	auipc	zero,0x2b000
 25c:	0034                	addi	a3,sp,8
 25e:	0b3a0803          	lb	a6,179(s4)
 262:	0b390b3b          	0xb390b3b
 266:	1349                	addi	t1,t1,-14
 268:	0000                	unimp
 26a:	342c                	fld	fa1,104(s0)
 26c:	0300                	addi	s0,sp,384
 26e:	3a0e                	fld	fs4,224(sp)
 270:	390b3b0b          	0x390b3b0b
 274:	0213490b          	0x213490b
 278:	2d000017          	auipc	zero,0x2d000
 27c:	0034                	addi	a3,sp,8
 27e:	0b3a0e03          	lb	t3,179(s4)
 282:	0b390b3b          	0xb390b3b
 286:	1349                	addi	t1,t1,-14
 288:	1802                	slli	a6,a6,0x20
 28a:	0000                	unimp
 28c:	0b2e                	slli	s6,s6,0xb
 28e:	1101                	addi	sp,sp,-32
 290:	1201                	addi	tp,tp,-32
 292:	00130107          	0x130107
 296:	2f00                	fld	fs0,24(a4)
 298:	0111010b          	0x111010b
 29c:	0712                	slli	a4,a4,0x4
 29e:	0000                	unimp
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	00000093          	li	ra,0
   4:	00490003          	lb	zero,4(s2) # 55838 <__global_pointer$+0x42e90>
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
  56:	0c48                	addi	a0,sp,532
  58:	0001                	nop
  5a:	0000                	unimp
  5c:	0000                	unimp
  5e:	03012403          	lw	s0,48(sp) # 50b01b2 <__global_pointer$+0x509d80a>
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
  96:	3301                	addiw	t1,t1,-32
  98:	0004                	0x4
  9a:	0300                	addi	s0,sp,384
  9c:	3a00                	fld	fs0,48(a2)
  9e:	0002                	c.slli64	zero
  a0:	0100                	addi	s0,sp,128
  a2:	fb01                	bnez	a4,ffffffffffffffb2 <__global_pointer$+0xfffffffffffed60a>
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
  d0:	69666e6f          	jal	t3,66766 <__global_pointer$+0x53dbe>
  d4:	69722f67          	0x69722f67
  d8:	00766373          	csrrsi	t1,0x7,12
  dc:	6d6f682f          	0x6d6f682f
  e0:	2f65                	addiw	t5,t5,25
  e2:	6172                	ld	sp,280(sp)
  e4:	6e69                	lui	t3,0x1a
  e6:	77616873          	csrrsi	a6,0x776,2
  ea:	756f732f          	0x756f732f
  ee:	6372                	ld	t1,280(sp)
  f0:	2d65                	addiw	s10,s10,25
  f2:	65646f63          	bltu	s0,s6,750 <register_fini-0xf960>
  f6:	7369722f          	0x7369722f
  fa:	672d7663          	bgeu	s10,s2,766 <register_fini-0xf94a>
  fe:	756e                	ld	a0,248(sp)
 100:	742d                	lui	s0,0xfffeb
 102:	636c6f6f          	jal	t5,c6738 <__global_pointer$+0xb3d90>
 106:	6168                	ld	a0,192(a0)
 108:	6e69                	lui	t3,0x1a
 10a:	3676722f          	0x3676722f
 10e:	6934                	ld	a3,80(a0)
 110:	622d                	lui	tp,0xb
 112:	6975                	lui	s2,0x1d
 114:	646c                	ld	a1,200(s0)
 116:	6975622f          	0x6975622f
 11a:	646c                	ld	a1,200(s0)
 11c:	672d                	lui	a4,0xb
 11e:	6e2d6363          	bltu	s10,sp,804 <register_fini-0xf8ac>
 122:	7765                	lui	a4,0xffff9
 124:	696c                	ld	a1,208(a0)
 126:	2d62                	fld	fs10,24(sp)
 128:	67617473          	csrrci	s0,0x676,2
 12c:	3265                	addiw	tp,tp,-7
 12e:	6363672f          	0x6363672f
 132:	636e692f          	0x636e692f
 136:	756c                	ld	a1,232(a0)
 138:	6564                	ld	s1,200(a0)
 13a:	2f00                	fld	fs0,24(a4)
 13c:	6f68                	ld	a0,216(a4)
 13e:	656d                	lui	a0,0x1b
 140:	6961722f          	0x6961722f
 144:	736e                	ld	t1,248(sp)
 146:	6168                	ld	a0,192(a0)
 148:	69722f77          	0x69722f77
 14c:	2f766373          	csrrsi	t1,0x2f7,12
 150:	6972                	ld	s2,280(sp)
 152:	36766373          	csrrsi	t1,0x367,12
 156:	6934                	ld	a3,80(a0)
 158:	7369722f          	0x7369722f
 15c:	34367663          	bgeu	a2,gp,4a8 <register_fini-0xfc08>
 160:	752d                	lui	a0,0xfffeb
 162:	6b6e                	ld	s6,216(sp)
 164:	6f6e                	ld	t5,216(sp)
 166:	652d6e77          	0x652d6e77
 16a:	666c                	ld	a1,200(a2)
 16c:	636e692f          	0x636e692f
 170:	756c                	ld	a1,232(a0)
 172:	6564                	ld	s1,200(a0)
 174:	7379732f          	0x7379732f
 178:	2f00                	fld	fs0,24(a4)
 17a:	6f68                	ld	a0,216(a4)
 17c:	656d                	lui	a0,0x1b
 17e:	6961722f          	0x6961722f
 182:	736e                	ld	t1,248(sp)
 184:	6168                	ld	a0,192(a0)
 186:	69722f77          	0x69722f77
 18a:	2f766373          	csrrsi	t1,0x2f7,12
 18e:	6972                	ld	s2,280(sp)
 190:	36766373          	csrrsi	t1,0x367,12
 194:	6934                	ld	a3,80(a0)
 196:	7369722f          	0x7369722f
 19a:	34367663          	bgeu	a2,gp,4e6 <register_fini-0xfbca>
 19e:	752d                	lui	a0,0xfffeb
 1a0:	6b6e                	ld	s6,216(sp)
 1a2:	6f6e                	ld	t5,216(sp)
 1a4:	652d6e77          	0x652d6e77
 1a8:	666c                	ld	a1,200(a2)
 1aa:	636e692f          	0x636e692f
 1ae:	756c                	ld	a1,232(a0)
 1b0:	6564                	ld	s1,200(a0)
 1b2:	2e00                	fld	fs0,24(a2)
 1b4:	2f2e                	fld	ft10,200(sp)
 1b6:	2e2e                	fld	ft8,200(sp)
 1b8:	2f2e2e2f          	0x2f2e2e2f
 1bc:	2e2e                	fld	ft8,200(sp)
 1be:	7369722f          	0x7369722f
 1c2:	672d7663          	bgeu	s10,s2,82e <register_fini-0xf882>
 1c6:	6c2f6363          	bltu	t5,sp,88c <register_fini-0xf824>
 1ca:	6269                	lui	tp,0x1a
 1cc:	2f636367          	0x2f636367
 1d0:	2e2e                	fld	ft8,200(sp)
 1d2:	636e692f          	0x636e692f
 1d6:	756c                	ld	a1,232(a0)
 1d8:	6564                	ld	s1,200(a0)
 1da:	2e00                	fld	fs0,24(a2)
 1dc:	2f2e                	fld	ft10,200(sp)
 1de:	2e2e                	fld	ft8,200(sp)
 1e0:	2f2e2e2f          	0x2f2e2e2f
 1e4:	2e2e                	fld	ft8,200(sp)
 1e6:	7369722f          	0x7369722f
 1ea:	672d7663          	bgeu	s10,s2,856 <register_fini-0xf85a>
 1ee:	6c2f6363          	bltu	t5,sp,8b4 <register_fini-0xf7fc>
 1f2:	6269                	lui	tp,0x1a
 1f4:	2f636367          	0x2f636367
 1f8:	2e2e                	fld	ft8,200(sp)
 1fa:	6363672f          	0x6363672f
 1fe:	6e6f632f          	0x6e6f632f
 202:	6966                	ld	s2,88(sp)
 204:	69722f67          	0x69722f67
 208:	00766373          	csrrsi	t1,0x7,12
 20c:	2e2e                	fld	ft8,200(sp)
 20e:	2f2e2e2f          	0x2f2e2e2f
 212:	2f2e                	fld	ft10,200(sp)
 214:	00636367          	0x636367
 218:	2e2e                	fld	ft8,200(sp)
 21a:	2f2e2e2f          	0x2f2e2e2f
 21e:	2e2e                	fld	ft8,200(sp)
 220:	2f2e2e2f          	0x2f2e2e2f
 224:	6972                	ld	s2,280(sp)
 226:	2d766373          	csrrsi	t1,0x2d7,12
 22a:	2f636367          	0x2f636367
 22e:	696c                	ld	a1,208(a0)
 230:	6762                	ld	a4,24(sp)
 232:	00006363          	bltu	zero,zero,238 <register_fini-0xfe78>
 236:	756d                	lui	a0,0xffffb
 238:	746c                	ld	a1,232(s0)
 23a:	3369                	addiw	t1,t1,-6
 23c:	632e                	ld	t1,200(sp)
 23e:	0100                	addi	s0,sp,128
 240:	0000                	unimp
 242:	64647473          	csrrci	s0,0x646,8
 246:	6665                	lui	a2,0x19
 248:	682e                	ld	a6,200(sp)
 24a:	0200                	addi	s0,sp,256
 24c:	0000                	unimp
 24e:	745f 7079 7365      	0x73657079745f
 254:	682e                	ld	a6,200(sp)
 256:	0300                	addi	s0,sp,384
 258:	0000                	unimp
 25a:	6572                	ld	a0,280(sp)
 25c:	6e65                	lui	t3,0x19
 25e:	2e74                	fld	fa3,216(a2)
 260:	0068                	addi	a0,sp,12
 262:	6c000003          	lb	zero,1728(zero) # 6c0 <register_fini-0xf9f0>
 266:	2e6b636f          	jal	t1,b654c <__global_pointer$+0xa3ba4>
 26a:	0068                	addi	a0,sp,12
 26c:	65000003          	lb	zero,1616(zero) # 650 <register_fini-0xfa60>
 270:	7272                	ld	tp,312(sp)
 272:	6f6e                	ld	t5,216(sp)
 274:	682e                	ld	a6,200(sp)
 276:	0300                	addi	s0,sp,384
 278:	0000                	unimp
 27a:	6c647473          	csrrci	s0,0x6c6,8
 27e:	6269                	lui	tp,0x1a
 280:	682e                	ld	a6,200(sp)
 282:	0400                	addi	s0,sp,512
 284:	0000                	unimp
 286:	6e75                	lui	t3,0x1d
 288:	7369                	lui	t1,0xffffa
 28a:	6474                	ld	a3,200(s0)
 28c:	682e                	ld	a6,200(sp)
 28e:	0300                	addi	s0,sp,384
 290:	0000                	unimp
 292:	6974                	ld	a3,208(a0)
 294:	656d                	lui	a0,0x1b
 296:	682e                	ld	a6,200(sp)
 298:	0400                	addi	s0,sp,512
 29a:	0000                	unimp
 29c:	6168                	ld	a0,192(a0)
 29e:	61746873          	csrrsi	a6,0x617,8
 2a2:	2e62                	fld	ft8,24(sp)
 2a4:	0068                	addi	a0,sp,12
 2a6:	0005                	c.nop	1
 2a8:	7200                	ld	s0,32(a2)
 2aa:	7369                	lui	t1,0xffffa
 2ac:	6f2d7663          	bgeu	s10,s2,998 <register_fini-0xf718>
 2b0:	7470                	ld	a2,232(s0)
 2b2:	00682e73          	csrrs	t3,0x6,a6
 2b6:	0006                	c.slli	zero,0x1
 2b8:	6900                	ld	s0,16(a0)
 2ba:	736e                	ld	t1,248(sp)
 2bc:	2d6e                	fld	fs10,216(sp)
 2be:	736e6f63          	bltu	t3,s6,9fc <register_fini-0xf6b4>
 2c2:	6174                	ld	a3,192(a0)
 2c4:	746e                	ld	s0,248(sp)
 2c6:	00682e73          	csrrs	t3,0x6,a6
 2ca:	6c000007          	0x6c000007
 2ce:	6269                	lui	tp,0x1a
 2d0:	32636367          	0x32636367
 2d4:	682e                	ld	a6,200(sp)
 2d6:	0800                	addi	s0,sp,16
 2d8:	0000                	unimp
 2da:	0500                	addi	s0,sp,640
 2dc:	0001                	nop
 2de:	0209                	addi	tp,tp,2
 2e0:	0c6c                	addi	a1,sp,540
 2e2:	0001                	nop
 2e4:	0000                	unimp
 2e6:	0000                	unimp
 2e8:	05012903          	lw	s2,80(sp)
 2ec:	09010303          	lb	t1,144(sp)
 2f0:	0000                	unimp
 2f2:	0301                	addi	t1,t1,0
 2f4:	0901                	addi	s2,s2,0
 2f6:	0000                	unimp
 2f8:	0301                	addi	t1,t1,0
 2fa:	0901                	addi	s2,s2,0
 2fc:	0000                	unimp
 2fe:	0301                	addi	t1,t1,0
 300:	0901                	addi	s2,s2,0
 302:	0000                	unimp
 304:	0501                	addi	a0,a0,0
 306:	0601                	addi	a2,a2,0
 308:	00097c03          	0x97c03
 30c:	0100                	addi	s0,sp,128
 30e:	0a05                	addi	s4,s4,1
 310:	14090403          	lb	s0,320(s2) # 1d140 <__global_pointer$+0xa798>
 314:	0100                	addi	s0,sp,128
 316:	0305                	addi	t1,t1,1
 318:	0306                	slli	t1,t1,0x1
 31a:	0901                	addi	s2,s2,0
 31c:	0004                	0x4
 31e:	0301                	addi	t1,t1,0
 320:	0901                	addi	s2,s2,0
 322:	0000                	unimp
 324:	0301                	addi	t1,t1,0
 326:	0901                	addi	s2,s2,0
 328:	0000                	unimp
 32a:	0301                	addi	t1,t1,0
 32c:	0901                	addi	s2,s2,0
 32e:	0000                	unimp
 330:	0301                	addi	t1,t1,0
 332:	0901                	addi	s2,s2,0
 334:	0000                	unimp
 336:	0301                	addi	t1,t1,0
 338:	0901                	addi	s2,s2,0
 33a:	0000                	unimp
 33c:	0501                	addi	a0,a0,0
 33e:	060a                	slli	a2,a2,0x2
 340:	00097b03          	0x97b03
 344:	0100                	addi	s0,sp,128
 346:	04090503          	lb	a0,64(s2)
 34a:	0100                	addi	s0,sp,128
 34c:	04097f03          	0x4097f03
 350:	0100                	addi	s0,sp,128
 352:	04097e03          	0x4097e03
 356:	0100                	addi	s0,sp,128
 358:	0305                	addi	t1,t1,1
 35a:	0306                	slli	t1,t1,0x1
 35c:	0904                	addi	s1,sp,144
 35e:	0004                	0x4
 360:	0301                	addi	t1,t1,0
 362:	0901                	addi	s2,s2,0
 364:	0000                	unimp
 366:	0301                	addi	t1,t1,0
 368:	0904                	addi	s1,sp,144
 36a:	0000                	unimp
 36c:	0501                	addi	a0,a0,0
 36e:	09020307          	0x9020307
 372:	0000                	unimp
 374:	0301                	addi	t1,t1,0
 376:	0901                	addi	s2,s2,0
 378:	0000                	unimp
 37a:	0501                	addi	a0,a0,0
 37c:	0611                	addi	a2,a2,4
 37e:	00090203          	lb	tp,0(s2)
 382:	0100                	addi	s0,sp,128
 384:	1405                	addi	s0,s0,-31
 386:	04097e03          	0x4097e03
 38a:	0100                	addi	s0,sp,128
 38c:	0705                	addi	a4,a4,1
 38e:	0306                	slli	t1,t1,0x1
 390:	0901                	addi	s2,s2,0
 392:	0004                	0x4
 394:	0301                	addi	t1,t1,0
 396:	0901                	addi	s2,s2,0
 398:	0000                	unimp
 39a:	0501                	addi	a0,a0,0
 39c:	060a                	slli	a2,a2,0x2
 39e:	00090003          	lb	zero,0(s2)
 3a2:	0100                	addi	s0,sp,128
 3a4:	1105                	addi	sp,sp,-31
 3a6:	04097d03          	0x4097d03
 3aa:	0100                	addi	s0,sp,128
 3ac:	0405                	addi	s0,s0,1
 3ae:	0306                	slli	t1,t1,0x1
 3b0:	0905                	addi	s2,s2,1
 3b2:	0004                	0x4
 3b4:	0301                	addi	t1,t1,0
 3b6:	0901                	addi	s2,s2,0
 3b8:	0000                	unimp
 3ba:	0301                	addi	t1,t1,0
 3bc:	0901                	addi	s2,s2,0
 3be:	0000                	unimp
 3c0:	0501                	addi	a0,a0,0
 3c2:	0616                	slli	a2,a2,0x5
 3c4:	00097e03          	0x97e03
 3c8:	0100                	addi	s0,sp,128
 3ca:	1205                	addi	tp,tp,-31
 3cc:	04097d03          	0x4097d03
 3d0:	0100                	addi	s0,sp,128
 3d2:	0b05                	addi	s6,s6,1
 3d4:	04090503          	lb	a0,64(s2)
 3d8:	0100                	addi	s0,sp,128
 3da:	0a05                	addi	s4,s4,1
 3dc:	04097f03          	0x4097f03
 3e0:	0100                	addi	s0,sp,128
 3e2:	0705                	addi	a4,a4,1
 3e4:	0306                	slli	t1,t1,0x1
 3e6:	00040903          	lb	s2,0(s0) # fffffffffffeb000 <__global_pointer$+0xfffffffffffd8658>
 3ea:	0501                	addi	a0,a0,0
 3ec:	0611                	addi	a2,a2,4
 3ee:	00090003          	lb	zero,0(s2)
 3f2:	0100                	addi	s0,sp,128
 3f4:	0705                	addi	a4,a4,1
 3f6:	0306                	slli	t1,t1,0x1
 3f8:	0901                	addi	s2,s2,0
 3fa:	0004                	0x4
 3fc:	0501                	addi	a0,a0,0
 3fe:	060d                	addi	a2,a2,3
 400:	00090003          	lb	zero,0(s2)
 404:	0100                	addi	s0,sp,128
 406:	0705                	addi	a4,a4,1
 408:	0306                	slli	t1,t1,0x1
 40a:	0901                	addi	s2,s2,0
 40c:	0004                	0x4
 40e:	0301                	addi	t1,t1,0
 410:	0901                	addi	s2,s2,0
 412:	0000                	unimp
 414:	0501                	addi	a0,a0,0
 416:	0612                	slli	a2,a2,0x4
 418:	00090003          	lb	zero,0(s2)
 41c:	0100                	addi	s0,sp,128
 41e:	0905                	addi	s2,s2,1
 420:	0306                	slli	t1,t1,0x1
 422:	0902                	c.slli64	s2
 424:	0008                	0x8
 426:	0501                	addi	a0,a0,0
 428:	00030603          	lb	a2,0(t1) # ffffffffffffa000 <__global_pointer$+0xfffffffffffe7658>
 42c:	0009                	c.nop	2
 42e:	0100                	addi	s0,sp,128
 430:	0306                	slli	t1,t1,0x1
 432:	0902                	c.slli64	s2
 434:	0004                	0x4
 436:	0301                	addi	t1,t1,0
 438:	0901                	addi	s2,s2,0
 43a:	0000                	unimp
 43c:	0301                	addi	t1,t1,0
 43e:	0902                	c.slli64	s2
 440:	0000                	unimp
 442:	0501                	addi	a0,a0,0
 444:	0606                	slli	a2,a2,0x1
 446:	00090003          	lb	zero,0(s2)
 44a:	0100                	addi	s0,sp,128
 44c:	0505                	addi	a0,a0,1
 44e:	0306                	slli	t1,t1,0x1
 450:	0901                	addi	s2,s2,0
 452:	0004                	0x4
 454:	0501                	addi	a0,a0,0
 456:	0900031b          	addiw	t1,zero,144
 45a:	0000                	unimp
 45c:	0301                	addi	t1,t1,0
 45e:	0900                	addi	s0,sp,144
 460:	0000                	unimp
 462:	0301                	addi	t1,t1,0
 464:	0900                	addi	s0,sp,144
 466:	0000                	unimp
 468:	0301                	addi	t1,t1,0
 46a:	0900                	addi	s0,sp,144
 46c:	0004                	0x4
 46e:	0501                	addi	a0,a0,0
 470:	0619                	addi	a2,a2,6
 472:	00090003          	lb	zero,0(s2)
 476:	0100                	addi	s0,sp,128
 478:	0305                	addi	t1,t1,1
 47a:	0306                	slli	t1,t1,0x1
 47c:	0902                	c.slli64	s2
 47e:	0004                	0x4
 480:	0501                	addi	a0,a0,0
 482:	0606                	slli	a2,a2,0x1
 484:	00090003          	lb	zero,0(s2)
 488:	0100                	addi	s0,sp,128
 48a:	0505                	addi	a0,a0,1
 48c:	0306                	slli	t1,t1,0x1
 48e:	0901                	addi	s2,s2,0
 490:	0004                	0x4
 492:	0501                	addi	a0,a0,0
 494:	0311                	addi	t1,t1,4
 496:	0900                	addi	s0,sp,144
 498:	0000                	unimp
 49a:	0301                	addi	t1,t1,0
 49c:	0900                	addi	s0,sp,144
 49e:	0004                	0x4
 4a0:	0301                	addi	t1,t1,0
 4a2:	0900                	addi	s0,sp,144
 4a4:	0004                	0x4
 4a6:	0301                	addi	t1,t1,0
 4a8:	0900                	addi	s0,sp,144
 4aa:	0004                	0x4
 4ac:	0501                	addi	a0,a0,0
 4ae:	060e                	slli	a2,a2,0x3
 4b0:	00090003          	lb	zero,0(s2)
 4b4:	0100                	addi	s0,sp,128
 4b6:	0305                	addi	t1,t1,1
 4b8:	0306                	slli	t1,t1,0x1
 4ba:	0902                	c.slli64	s2
 4bc:	0004                	0x4
 4be:	0501                	addi	a0,a0,0
 4c0:	0601                	addi	a2,a2,0
 4c2:	00090103          	lb	sp,0(s2)
 4c6:	0100                	addi	s0,sp,128
 4c8:	1409                	addi	s0,s0,-30
 4ca:	0000                	unimp
 4cc:	0101                	addi	sp,sp,0

Disassembly of section .debug_frame:

0000000000000000 <.debug_frame>:
   0:	000c                	0xc
   2:	0000                	unimp
   4:	ffff                	0xffff
   6:	ffff                	0xffff
   8:	7c010003          	lb	zero,1984(sp)
   c:	0d01                	addi	s10,s10,0
   e:	0002                	c.slli64	zero
  10:	0024                	addi	s1,sp,8
  12:	0000                	unimp
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0c6c                	addi	a1,sp,540
  1a:	0001                	nop
  1c:	0000                	unimp
  1e:	0000                	unimp
  20:	0090                	addi	a2,sp,64
  22:	0000                	unimp
  24:	0000                	unimp
  26:	0000                	unimp
  28:	0e48                	addi	a0,sp,788
  2a:	4c10                	lw	a2,24(s0)
  2c:	0281                	addi	t0,t0,0
  2e:	6c02                	ld	s8,0(sp)
  30:	4cc1                	li	s9,16
  32:	000e                	c.slli	zero,0x3
  34:	0000                	unimp
	...

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
  1e:	69666e6f          	jal	t3,666b4 <__global_pointer$+0x53d0c>
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
  4a:	2f65646f          	jal	s0,56340 <__global_pointer$+0x43998>
  4e:	6972                	ld	s2,280(sp)
  50:	2d766373          	csrrsi	t1,0x2d7,12
  54:	2d756e67          	0x2d756e67
  58:	6f74                	ld	a3,216(a4)
  5a:	68636c6f          	jal	s8,366e0 <__global_pointer$+0x23d38>
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
  aa:	73003433          	0x73003433
  ae:	6f68                	ld	a0,216(a4)
  b0:	7472                	ld	s0,312(sp)
  b2:	6920                	ld	s0,80(a0)
  b4:	746e                	ld	s0,248(sp)
  b6:	6800                	ld	s0,16(s0)
  b8:	6174                	ld	a3,192(a0)
  ba:	5f62                	lw	t5,56(sp)
  bc:	6168                	ld	a0,192(a0)
  be:	705f6873          	csrrsi	a6,0x705,30
  c2:	746e696f          	jal	s2,e6808 <__global_pointer$+0xd3e60>
  c6:	7265                	lui	tp,0xffff9
  c8:	5f00                	lw	s0,56(a4)
  ca:	657a6973          	csrrsi	s2,0x657,20
  ce:	5f00                	lw	s0,56(a4)
  d0:	6172                	ld	sp,280(sp)
  d2:	646e                	ld	s0,216(sp)
  d4:	3834                	fld	fa3,112(s0)
  d6:	5f00                	lw	s0,56(a4)
  d8:	6d65                	lui	s10,0x19
  da:	7265                	lui	tp,0xffff9
  dc:	636e6567          	0x636e6567
  e0:	0079                	c.nop	30
  e2:	645f 7961 696c      	0x696c7961645f
  e8:	00746867          	0x746867
  ec:	706d6f63          	bltu	s10,t1,80a <register_fini-0xf8a6>
  f0:	656c                	ld	a1,200(a0)
  f2:	2078                	fld	fa4,192(s0)
  f4:	6f64                	ld	s1,216(a4)
  f6:	6275                	lui	tp,0x1d
  f8:	656c                	ld	a1,200(a0)
  fa:	5f00                	lw	s0,56(a4)
  fc:	64746567          	0x64746567
 100:	7461                	lui	s0,0xffff8
 102:	5f65                	li	t5,-7
 104:	7265                	lui	tp,0xffff9
 106:	0072                	c.slli	zero,0x1c
 108:	645f 7461 0061      	0x617461645f
 10e:	775f 7263 6f74      	0x6f747263775f
 114:	626d                	lui	tp,0x1b
 116:	735f 6174 6574      	0x65746174735f
 11c:	7200                	ld	s0,32(a2)
 11e:	7369                	lui	t1,0xffffa
 120:	6d5f7663          	bgeu	t5,s5,7ec <register_fini-0xf8c4>
 124:	6369                	lui	t1,0x1a
 126:	6f72                	ld	t5,280(sp)
 128:	7261                	lui	tp,0xffff8
 12a:	74696863          	bltu	s2,t1,87a <register_fini-0xf836>
 12e:	6365                	lui	t1,0x19
 130:	7574                	ld	a3,232(a0)
 132:	6572                	ld	a0,280(sp)
 134:	745f 7079 0065      	0x657079745f
 13a:	775f 7363 7472      	0x74727363775f
 140:	73626d6f          	jal	s10,26876 <__global_pointer$+0x13ece>
 144:	735f 6174 6574      	0x65746174735f
 14a:	6c00                	ld	s0,24(s0)
 14c:	20676e6f          	jal	t3,76352 <__global_pointer$+0x639aa>
 150:	6f6c                	ld	a1,216(a4)
 152:	676e                	ld	a4,216(sp)
 154:	7520                	ld	s0,104(a0)
 156:	736e                	ld	t1,248(sp)
 158:	6769                	lui	a4,0x1a
 15a:	656e                	ld	a0,216(sp)
 15c:	2064                	fld	fs1,192(s0)
 15e:	6e69                	lui	t3,0x1a
 160:	0074                	addi	a3,sp,12
 162:	69685f77          	0x69685f77
 166:	745f6867          	0x745f6867
 16a:	706d                	c.lui	zero,0xffffb
 16c:	7832                	ld	a6,296(sp)
 16e:	5f00                	lw	s0,56(a4)
 170:	626c                	ld	a1,192(a2)
 172:	7366                	ld	t1,120(sp)
 174:	7a69                	lui	s4,0xffffa
 176:	0065                	c.nop	25
 178:	706d6f63          	bltu	s10,t1,896 <register_fini-0xf81a>
 17c:	656c                	ld	a1,200(a0)
 17e:	2078                	fld	fa4,192(s0)
 180:	6f6c                	ld	a1,216(a4)
 182:	676e                	ld	a4,216(sp)
 184:	6420                	ld	s0,72(s0)
 186:	6c62756f          	jal	a0,2784c <__global_pointer$+0x14ea4>
 18a:	0065                	c.nop	25
 18c:	6972                	ld	s2,280(sp)
 18e:	5f766373          	csrrsi	t1,0x5f7,12
 192:	6261                	lui	tp,0x18
 194:	0069                	c.nop	26
 196:	6e5f 6f69 7362      	0x73626f696e5f
 19c:	5f00                	lw	s0,56(a4)
 19e:	626d                	lui	tp,0x1b
 1a0:	7472                	ld	s0,312(sp)
 1a2:	5f63776f          	jal	a4,37798 <__global_pointer$+0x24df0>
 1a6:	74617473          	csrrci	s0,0x746,2
 1aa:	0065                	c.nop	25
 1ac:	745f 6e7a 6d61      	0x6d616e7a745f
 1b2:	0065                	c.nop	25
 1b4:	775f 7463 6d6f      	0x6d6f7463775f
 1ba:	5f62                	lw	t5,56(sp)
 1bc:	74617473          	csrrci	s0,0x746,2
 1c0:	0065                	c.nop	25
 1c2:	5f5f 6d74 735f      	0x735f6d745f5f
 1c8:	6365                	lui	t1,0x19
 1ca:	5f00                	lw	s0,56(a4)
 1cc:	736f6c63          	bltu	t5,s6,904 <register_fini-0xf7ac>
 1d0:	0065                	c.nop	25
 1d2:	5f75                	li	t5,-3
 1d4:	6f6c                	ld	a1,216(a4)
 1d6:	755f0077          	0x755f0077
 1da:	7562                	ld	a0,56(sp)
 1dc:	0066                	c.slli	zero,0x19
 1de:	69685f77          	0x69685f77
 1e2:	745f6867          	0x745f6867
 1e6:	706d                	c.lui	zero,0xffffb
 1e8:	5f00                	lw	s0,56(a4)
 1ea:	6162                	ld	sp,24(sp)
 1ec:	5f006573          	csrrsi	a0,0x5f0,0
 1f0:	745f 5f6d 6f68      	0x6f685f6d745f
 1f6:	7275                	lui	tp,0xffffd
 1f8:	7500                	ld	s0,40(a0)
 1fa:	736e                	ld	t1,248(sp)
 1fc:	6570                	ld	a2,200(a0)
 1fe:	735f7663          	bgeu	t5,s5,92a <register_fini-0xf786>
 202:	7274                	ld	a3,224(a2)
 204:	6e69                	lui	t3,0x1a
 206:	5f007367          	0x5f007367
 20a:	735f 0066 6f5f      	0x6f5f0066735f
 210:	5f6e                	lw	t5,248(sp)
 212:	7865                	lui	a6,0xffff9
 214:	7469                	lui	s0,0xffffa
 216:	615f 6772 0073      	0x736772615f
 21c:	635f 6f6f 696b      	0x696b6f6f635f
 222:	0065                	c.nop	25
 224:	5f5f 6773 756c      	0x756c67735f5f
 22a:	0065                	c.nop	25
 22c:	665f 616c 7367      	0x7367616c665f
 232:	5f00                	lw	s0,56(a4)
 234:	7369                	lui	t1,0xffffa
 236:	635f 6178 5f00      	0x5f006178635f
 23c:	00736477          	0x736477
 240:	5f5f 4946 454c      	0x454c49465f5f
 246:	5f00                	lw	s0,56(a4)
 248:	6572                	ld	a0,280(sp)
 24a:	746c7573          	csrrci	a0,0x746,24
 24e:	6b5f 5f00 705f      	0x705f5f006b5f
 254:	6f63706f          	j	3794a <__global_pointer$+0x24fa2>
 258:	6e75                	lui	t3,0x1d
 25a:	5f74                	lw	a3,124(a4)
 25c:	6174                	ld	a3,192(a0)
 25e:	0062                	c.slli	zero,0x18
 260:	6972                	ld	s2,280(sp)
 262:	5f766373          	csrrsi	t1,0x5f7,12
 266:	696d                	lui	s2,0x1b
 268:	616f7263          	bgeu	t5,s6,86c <register_fini-0xf844>
 26c:	6372                	ld	t1,280(sp)
 26e:	6968                	ld	a0,208(a0)
 270:	6574                	ld	a3,200(a0)
 272:	72757463          	bgeu	a0,t2,99a <register_fini-0xf716>
 276:	0065                	c.nop	25
 278:	735f 7379 655f      	0x655f7379735f
 27e:	7272                	ld	tp,312(sp)
 280:	696c                	ld	a1,208(a0)
 282:	5f007473          	csrrci	s0,0x5f0,0
 286:	62747663          	bgeu	s0,t2,8b2 <register_fini-0xf7fe>
 28a:	6675                	lui	a2,0x1d
 28c:	5f00                	lw	s0,56(a4)
 28e:	626d                	lui	tp,0x1b
 290:	6f747273          	csrrci	tp,0x6f7,8
 294:	5f736377          	0x5f736377
 298:	74617473          	csrrci	s0,0x746,2
 29c:	0065                	c.nop	25
 29e:	6d5f 7262 656c      	0x656c72626d5f
 2a4:	5f6e                	lw	t5,248(sp)
 2a6:	74617473          	csrrci	s0,0x746,2
 2aa:	0065                	c.nop	25
 2ac:	6972                	ld	s2,280(sp)
 2ae:	5f766373          	csrrsi	t1,0x5f7,12
 2b2:	646f6d63          	bltu	t5,t1,90c <register_fini-0xf7a4>
 2b6:	6c65                	lui	s8,0x19
 2b8:	5f00                	lw	s0,56(a4)
 2ba:	6e66                	ld	t3,88(sp)
 2bc:	7261                	lui	tp,0xffff8
 2be:	77007367          	0x77007367
 2c2:	685f 6769 0068      	0x686769685f
 2c8:	665f 736e 5f00      	0x5f00736e665f
 2ce:	6e676973          	csrrsi	s2,0x6e6,14
 2d2:	5f00                	lw	s0,56(a4)
 2d4:	65647473          	csrrci	s0,0x656,8
 2d8:	7272                	ld	tp,312(sp)
 2da:	5f00                	lw	s0,56(a4)
 2dc:	6942                	ld	s2,16(sp)
 2de:	746e6967          	0x746e6967
 2e2:	5f00                	lw	s0,56(a4)
 2e4:	6d6d6167          	0x6d6d6167
 2e8:	5f61                	li	t5,-8
 2ea:	6e676973          	csrrsi	s2,0x6e6,14
 2ee:	006d6167          	0x6d6167
 2f2:	6e5f 616d 6c6c      	0x6c6c616d6e5f
 2f8:	5f00636f          	jal	t1,68e8 <register_fini-0x97c8>
 2fc:	745f 006d 6972      	0x6972006d745f
 302:	5f766373          	csrrsi	t1,0x5f7,12
 306:	6261                	lui	tp,0x18
 308:	5f69                	li	t5,-6
 30a:	7974                	ld	a3,240(a0)
 30c:	6570                	ld	a2,200(a0)
 30e:	5f00                	lw	s0,56(a4)
 310:	626d                	lui	tp,0x1b
 312:	74617473          	csrrci	s0,0x746,2
 316:	0065                	c.nop	25
 318:	5f5f 6377 6268      	0x626863775f5f
 31e:	5f00                	lw	s0,56(a4)
 320:	695f 746e 3231      	0x3231746e695f
 326:	0038                	addi	a4,sp,8
 328:	635f 7476 656c      	0x656c7476635f
 32e:	006e                	c.slli	zero,0x1b
 330:	665f 6c69 0065      	0x656c69665f
 336:	6168                	ld	a0,192(a0)
 338:	61766873          	csrrsi	a6,0x617,12
 33c:	5f6c                	lw	a1,124(a4)
 33e:	0074                	addi	a3,sp,12
 340:	4954                	lw	a3,20(a0)
 342:	7974                	ld	a3,240(a0)
 344:	6570                	ld	a2,200(a0)
 346:	6e00                	ld	s0,24(a2)
 348:	7765                	lui	a4,0xffff9
 34a:	775f 6c5f 776f      	0x776f6c5f775f
 350:	2e00                	fld	fs0,24(a2)
 352:	2f2e                	fld	ft10,200(sp)
 354:	2e2e                	fld	ft8,200(sp)
 356:	2f2e2e2f          	0x2f2e2e2f
 35a:	2e2e                	fld	ft8,200(sp)
 35c:	7369722f          	0x7369722f
 360:	672d7663          	bgeu	s10,s2,9cc <register_fini-0xf6e4>
 364:	6c2f6363          	bltu	t5,sp,a2a <register_fini-0xf686>
 368:	6269                	lui	tp,0x1a
 36a:	2f636367          	0x2f636367
 36e:	666e6f63          	bltu	t3,t1,9ec <register_fini-0xf6c4>
 372:	6769                	lui	a4,0x1a
 374:	7369722f          	0x7369722f
 378:	6d2f7663          	bgeu	t5,s2,a44 <register_fini-0xf66c>
 37c:	6c75                	lui	s8,0x1d
 37e:	6974                	ld	a3,208(a0)
 380:	00632e33          	slt	t3,t1,t1
 384:	726f6873          	csrrsi	a6,0x726,30
 388:	2074                	fld	fa3,192(s0)
 38a:	6e75                	lui	t3,0x1d
 38c:	6e676973          	csrrsi	s2,0x6e6,14
 390:	6465                	lui	s0,0x19
 392:	6920                	ld	s0,80(a0)
 394:	746e                	ld	s0,248(sp)
 396:	5f00                	lw	s0,56(a4)
 398:	635f 7a6c 745f      	0x745f7a6c635f
 39e:	6261                	lui	tp,0x18
 3a0:	5f00                	lw	s0,56(a4)
 3a2:	7461                	lui	s0,0xffff8
 3a4:	7865                	lui	a6,0xffff9
 3a6:	7469                	lui	s0,0xffffa
 3a8:	0030                	addi	a2,sp,8
 3aa:	735f 6769 616e      	0x616e6769735f
 3b0:	5f6c                	lw	a1,124(a4)
 3b2:	7562                	ld	a0,56(sp)
 3b4:	0066                	c.slli	zero,0x19
 3b6:	615f 6373 6974      	0x69746373615f
 3bc:	656d                	lui	a0,0x1b
 3be:	625f 6675 5f00      	0x5f006675625f
 3c4:	6572                	ld	a0,280(sp)
 3c6:	746c7573          	csrrci	a0,0x746,24
 3ca:	5f00                	lw	s0,56(a4)
 3cc:	775f 6863 5f00      	0x5f006863775f
 3d2:	656e                	ld	a0,216(sp)
 3d4:	7478                	ld	a4,232(s0)
 3d6:	0066                	c.slli	zero,0x19
 3d8:	6e65                	lui	t3,0x19
 3da:	6976                	ld	s2,344(sp)
 3dc:	6f72                	ld	t5,280(sp)
 3de:	006e                	c.slli	zero,0x1b
 3e0:	746e6977          	0x746e6977
 3e4:	745f 5f00 6f6c      	0x6f6c5f00745f
 3ea:	41006b63          	bltu	zero,a6,800 <register_fini-0xf8b0>
 3ee:	4942                	lw	s2,16(sp)
 3f0:	495f 504c 3233      	0x3233504c495f
 3f6:	0044                	addi	s1,sp,4
 3f8:	4241                	li	tp,16
 3fa:	5f49                	li	t5,-14
 3fc:	4c49                	li	s8,18
 3fe:	3350                	fld	fa2,160(a4)
 400:	4532                	lw	a0,12(sp)
 402:	5f00                	lw	s0,56(a4)
 404:	756d                	lui	a0,0xffffb
 406:	746c                	ld	a1,232(s0)
 408:	5f00                	lw	s0,56(a4)
 40a:	6c5f 636f 6c61      	0x6c61636f6c5f
 410:	5f65                	li	t5,-7
 412:	0074                	addi	a3,sp,12
 414:	6e75                	lui	t3,0x1d
 416:	63657073          	csrci	0x636,10
 41a:	735f 7274 6e69      	0x6e697274735f
 420:	5f007367          	0x5f007367
 424:	6f5f 3070 5f00      	0x5f0030706f5f
 42a:	6f5f 3170 6f00      	0x6f0031706f5f
 430:	7470                	ld	a2,232(s0)
 432:	6572                	ld	a0,280(sp)
 434:	00746573          	csrrsi	a0,0x7,8
 438:	775f 6972 6574      	0x65746972775f
 43e:	5f00                	lw	s0,56(a4)
 440:	745f 5f6d 6579      	0x65795f6d745f
 446:	7261                	lui	tp,0xffff8
 448:	4100                	lw	s0,0(a0)
 44a:	4942                	lw	s2,16(sp)
 44c:	495f 504c 3233      	0x3233504c495f
 452:	0046                	c.slli	zero,0x11
 454:	755f 756e 6573      	0x6573756e755f
 45a:	5f64                	lw	s1,124(a4)
 45c:	6172                	ld	sp,280(sp)
 45e:	646e                	ld	s0,216(sp)
 460:	7200                	ld	s0,32(a2)
 462:	7369                	lui	t1,0xffffa
 464:	635f7663          	bgeu	t5,s5,a90 <register_fini-0xf620>
 468:	5f65646f          	jal	s0,56a5e <__global_pointer$+0x440b6>
 46c:	6f6d                	lui	t5,0x1b
 46e:	6564                	ld	s1,200(a0)
 470:	006c                	addi	a1,sp,12
 472:	6f5f 6666 6573      	0x657366666f5f
 478:	0074                	addi	a3,sp,12
 47a:	6974706f          	j	48310 <__global_pointer$+0x35968>
 47e:	646e                	ld	s0,216(sp)
 480:	5f00                	lw	s0,56(a4)
 482:	6d5f 6c75 6974      	0x69746c756d5f
 488:	6f630033          	0x6f630033
 48c:	706d                	c.lui	zero,0xffffb
 48e:	656c                	ld	a1,200(a0)
 490:	2078                	fld	fa4,192(s0)
 492:	6c66                	ld	s8,88(sp)
 494:	0074616f          	jal	sp,46c9a <__global_pointer$+0x342f2>
 498:	6f6c                	ld	a1,216(a4)
 49a:	676e                	ld	a4,216(sp)
 49c:	6c20                	ld	s0,88(s0)
 49e:	20676e6f          	jal	t3,766a4 <__global_pointer$+0x63cfc>
 4a2:	6e69                	lui	t3,0x1a
 4a4:	0074                	addi	a3,sp,12
 4a6:	5f5f 6d74 6d5f      	0x6d5f6d745f5f
 4ac:	5f006e6f          	jal	t3,6a9c <register_fini-0x9614>
 4b0:	7461                	lui	s0,0xffff8
 4b2:	7865                	lui	a6,0xffff9
 4b4:	7469                	lui	s0,0xffffa
 4b6:	7300                	ld	s0,32(a4)
 4b8:	6275                	lui	tp,0x1d
 4ba:	6174706f          	j	482d0 <__global_pointer$+0x35928>
 4be:	6772                	ld	a4,280(sp)
 4c0:	5f00                	lw	s0,56(a4)
 4c2:	735f 6964 6964      	0x69646964735f
 4c8:	696e                	ld	s2,216(sp)
 4ca:	0074                	addi	a3,sp,12
 4cc:	6f5f 6666 745f      	0x745f66666f5f
 4d2:	4400                	lw	s0,8(s0)
 4d4:	72747357          	0x72747357
 4d8:	6375                	lui	t1,0x1d
 4da:	0074                	addi	a3,sp,12
 4dc:	665f 6572 6c65      	0x6c656572665f
 4e2:	7369                	lui	t1,0xffffa
 4e4:	0074                	addi	a3,sp,12
 4e6:	745f 6d69 7a65      	0x7a656d69745f
 4ec:	00656e6f          	jal	t3,564f2 <__global_pointer$+0x43b4a>
 4f0:	6d5f 7362 6174      	0x617473626d5f
 4f6:	6574                	ld	a3,200(a0)
 4f8:	745f 5f00 4f4c      	0x4f4c5f00745f
 4fe:	525f4b43          	fmadd.d	fs6,ft10,ft5,fa0,rmm
 502:	4345                	li	t1,17
 504:	5255                	li	tp,-11
 506:	45564953          	0x45564953
 50a:	545f 5f00 6572      	0x65725f00545f
 510:	6461                	lui	s0,0x18
 512:	6300                	ld	s0,0(a4)
 514:	7261                	lui	tp,0xffff8
 516:	7972                	ld	s2,312(sp)
 518:	5f00                	lw	s0,56(a4)
 51a:	695f 746e 3231      	0x3231746e695f
 520:	2038                	fld	fa4,64(s0)
 522:	6e75                	lui	t3,0x1d
 524:	6e676973          	csrrsi	s2,0x6e6,14
 528:	6465                	lui	s0,0x19
 52a:	4100                	lw	s0,0(a0)
 52c:	4942                	lw	s2,16(sp)
 52e:	4c5f 3650 0034      	0x3436504c5f
 534:	4241                	li	tp,16
 536:	5f49                	li	t5,-14
 538:	4c49                	li	s8,18
 53a:	3350                	fld	fa2,160(a4)
 53c:	0032                	c.slli	zero,0xc
 53e:	645f 6f73 685f      	0x685f6f73645f
 544:	6e61                	lui	t3,0x18
 546:	6c64                	ld	s1,216(s0)
 548:	0065                	c.nop	25
 54a:	4d5f4d43          	0x4d5f4d43
 54e:	4445                	li	s0,17
 550:	4e41                	li	t3,16
 552:	0059                	c.nop	22
 554:	6e5f 7765 5f00      	0x5f0077656e5f
 55a:	5f68                	lw	a0,124(a4)
 55c:	7265                	lui	tp,0xffff9
 55e:	6e72                	ld	t3,280(sp)
 560:	665f006f          	j	f13c4 <__global_pointer$+0xdea1c>
 564:	6f6c                	ld	a1,216(a4)
 566:	745f6b63          	bltu	t5,t0,cbc <register_fini-0xf3f4>
 56a:	5f00                	lw	s0,56(a4)
 56c:	735f 7562 0066      	0x667562735f
 572:	665f 616c 7367      	0x7367616c665f
 578:	0032                	c.slli	zero,0xc
 57a:	695f 626f 0073      	0x73626f695f
 580:	4d5f4d43          	0x4d5f4d43
 584:	4445                	li	s0,17
 586:	4f4c                	lw	a1,28(a4)
 588:	74680057          	0x74680057
 58c:	6261                	lui	tp,0x18
 58e:	685f 7361 0068      	0x687361685f
 594:	5f5f 4673 4c49      	0x4c4946735f5f
 59a:	0045                	c.nop	17
 59c:	735f 7379 6e5f      	0x6e5f7379735f
 5a2:	7265                	lui	tp,0xffff9
 5a4:	0072                	c.slli	zero,0x1c
 5a6:	725f 6e61 5f64      	0x5f646e61725f
 5ac:	656e                	ld	a0,216(sp)
 5ae:	7478                	ld	a4,232(s0)
 5b0:	7500                	ld	s0,40(a0)
 5b2:	6c5f 776f 6d5f      	0x6d5f776f6c5f
 5b8:	5f006273          	csrrsi	tp,0x5f0,0
 5bc:	626d                	lui	tp,0x1b
 5be:	656c                	ld	a1,200(a0)
 5c0:	5f6e                	lw	t5,248(sp)
 5c2:	74617473          	csrrci	s0,0x746,2
 5c6:	0065                	c.nop	25
 5c8:	695f 636e 5f00      	0x5f00636e695f
 5ce:	6e69                	lui	t3,0x1a
 5d0:	0064                	addi	s1,sp,12
 5d2:	5f5f 6c63 6165      	0x61656c635f5f
 5d8:	756e                	ld	a0,248(sp)
 5da:	0070                	addi	a2,sp,12
 5dc:	755f 736e 6570      	0x6570736e755f
 5e2:	69666963          	bltu	a2,s6,c74 <register_fini-0xf43c>
 5e6:	6465                	lui	s0,0x19
 5e8:	6c5f 636f 6c61      	0x6c61636f6c5f
 5ee:	5f65                	li	t5,-7
 5f0:	6e69                	lui	t3,0x1a
 5f2:	6f66                	ld	t5,88(sp)
 5f4:	5f00                	lw	s0,56(a4)
 5f6:	616d                	addi	sp,sp,240
 5f8:	7778                	ld	a4,232(a4)
 5fa:	7364                	ld	s1,224(a4)
 5fc:	5f00                	lw	s0,56(a4)
 5fe:	6572                	ld	a0,280(sp)
 600:	6e65                	lui	t3,0x19
 602:	0074                	addi	a3,sp,12
 604:	735f 6565 0064      	0x646565735f
 60a:	5f5f 6f63 6e75      	0x6e756f635f5f
 610:	0074                	addi	a3,sp,12
 612:	5f5f 6176 756c      	0x756c61765f5f
 618:	0065                	c.nop	25
 61a:	735f 6565 006b      	0x6b6565735f
 620:	665f 6f70 5f73      	0x5f736f70665f
 626:	0074                	addi	a3,sp,12
 628:	69666973          	csrrsi	s2,0x696,12
 62c:	6576                	ld	a0,344(sp)
 62e:	375f 5f00 6c62      	0x6c625f00375f
 634:	7a69736b          	0x7a69736b
 638:	0065                	c.nop	25
 63a:	656e6567          	0x656e6567
 63e:	6972                	ld	s2,280(sp)
 640:	5f760063          	beq	a2,s7,c20 <register_fini-0xf490>
 644:	6f6c                	ld	a1,216(a4)
 646:	706f0077          	0x706f0077
 64a:	6574                	ld	a3,200(a0)
 64c:	7272                	ld	tp,312(sp)
 64e:	5f00                	lw	s0,56(a4)
 650:	74727473          	csrrci	s0,0x747,4
 654:	6c5f6b6f          	jal	s6,f7518 <__global_pointer$+0xe4b70>
 658:	7361                	lui	t1,0xffff8
 65a:	0074                	addi	a3,sp,12
 65c:	505f4d43          	fmadd.s	fs10,ft10,ft5,fa0,rmm
 660:	4349                	li	t1,18
 662:	5f00                	lw	s0,56(a4)
 664:	6e66                	ld	t3,88(sp)
 666:	7974                	ld	a3,240(a0)
 668:	6570                	ld	a2,200(a0)
 66a:	6e750073          	0x6e750073
 66e:	6e676973          	csrrsi	s2,0x6e6,14
 672:	6465                	lui	s0,0x19
 674:	6320                	ld	s0,64(a4)
 676:	6168                	ld	a0,192(a0)
 678:	0072                	c.slli	zero,0x1c
 67a:	615f 6464 5f00      	0x5f006464615f
 680:	555f 6f4c 676e      	0x676e6f4c555f
 686:	6800                	ld	s0,16(s0)
 688:	6174                	ld	a3,192(a0)
 68a:	5f62                	lw	t5,56(sp)
 68c:	7165                	addi	sp,sp,-400
 68e:	705f 696f 746e      	0x746e696f705f
 694:	7265                	lui	tp,0xffff9
 696:	5f00                	lw	s0,56(a4)
 698:	626f6c67          	0x626f6c67
 69c:	6c61                	lui	s8,0x18
 69e:	695f 706d 7275      	0x7275706d695f
 6a4:	5f65                	li	t5,-7
 6a6:	7470                	ld	a2,232(s0)
 6a8:	0072                	c.slli	zero,0x1c
 6aa:	5744                	lw	s1,44(a4)
 6ac:	6e75                	lui	t3,0x1d
 6ae:	6f69                	lui	t5,0x1a
 6b0:	006e                	c.slli	zero,0x1b
 6b2:	20554e47          	fmsub.s	ft8,fa0,ft5,ft4,rmm
 6b6:	20373143          	fmadd.s	ft2,fa4,ft3,ft4,rup
 6ba:	2e39                	addiw	t3,t3,14
 6bc:	2e32                	fld	ft8,264(sp)
 6be:	2030                	fld	fa2,64(s0)
 6c0:	6d2d                	lui	s10,0xb
 6c2:	646f6d63          	bltu	t5,t1,d1c <register_fini-0xf394>
 6c6:	6c65                	lui	s8,0x19
 6c8:	6d3d                	lui	s10,0xf
 6ca:	6465                	lui	s0,0x19
 6cc:	6f6c                	ld	a1,216(a4)
 6ce:	6d2d2077          	0x6d2d2077
 6d2:	646f6d63          	bltu	t5,t1,d2c <register_fini-0xf384>
 6d6:	6c65                	lui	s8,0x19
 6d8:	6d3d                	lui	s10,0xf
 6da:	6465                	lui	s0,0x19
 6dc:	6f6c                	ld	a1,216(a4)
 6de:	6d2d2077          	0x6d2d2077
 6e2:	7574                	ld	a3,232(a0)
 6e4:	656e                	ld	a0,216(sp)
 6e6:	723d                	lui	tp,0xfffef
 6e8:	656b636f          	jal	t1,b6d3e <__global_pointer$+0xa4396>
 6ec:	2074                	fld	fa3,192(s0)
 6ee:	6d2d                	lui	s10,0xb
 6f0:	7261                	lui	tp,0xffff8
 6f2:	723d6863          	bltu	s10,gp,e22 <register_fini-0xf28e>
 6f6:	3676                	fld	fa2,376(sp)
 6f8:	6934                	ld	a3,80(a0)
 6fa:	2d20                	fld	fs0,88(a0)
 6fc:	616d                	addi	sp,sp,240
 6fe:	6962                	ld	s2,24(sp)
 700:	6c3d                	lui	s8,0xf
 702:	3670                	fld	fa2,232(a2)
 704:	2034                	fld	fa3,64(s0)
 706:	672d                	lui	a4,0xb
 708:	2d20                	fld	fs0,88(a0)
 70a:	2d20734f          	0x2d20734f
 70e:	2d20324f          	0x2d20324f
 712:	2d20734f          	0x2d20734f
 716:	6266                	ld	tp,88(sp)
 718:	6975                	lui	s2,0x1d
 71a:	646c                	ld	a1,200(s0)
 71c:	6e69                	lui	t3,0x1a
 71e:	696c2d67          	0x696c2d67
 722:	6762                	ld	a4,24(sp)
 724:	2d206363          	bltu	zero,s2,9ea <register_fini-0xf6c6>
 728:	6e66                	ld	t3,88(sp)
 72a:	74732d6f          	jal	s10,33670 <__global_pointer$+0x20cc8>
 72e:	6361                	lui	t1,0x18
 730:	72702d6b          	0x72702d6b
 734:	6365746f          	jal	s0,57d6a <__global_pointer$+0x453c2>
 738:	6f74                	ld	a3,216(a4)
 73a:	2072                	fld	ft0,280(sp)
 73c:	662d                	lui	a2,0xb
 73e:	6976                	ld	s2,344(sp)
 740:	69626973          	csrrsi	s2,0x696,4
 744:	696c                	ld	a1,208(a0)
 746:	7974                	ld	a3,240(a0)
 748:	683d                	lui	a6,0xf
 74a:	6469                	lui	s0,0x1a
 74c:	6564                	ld	s1,200(a0)
 74e:	006e                	c.slli	zero,0x1b
 750:	4455                	li	s0,21
 752:	7449                	lui	s0,0xffff2
 754:	7079                	c.lui	zero,0xffffe
 756:	0065                	c.nop	25
 758:	735f 6474 756f      	0x756f6474735f
 75e:	0074                	addi	a3,sp,12
 760:	5f5f 6d74 775f      	0x775f6d745f5f
 766:	6164                	ld	s1,192(a0)
 768:	0079                	c.nop	30
 76a:	675f 756c 0065      	0x65756c675f
 770:	735f 6474 6e69      	0x6e696474735f
 776:	5f00                	lw	s0,56(a4)
 778:	7a697373          	csrrci	t1,0x7a6,18
 77c:	5f65                	li	t5,-7
 77e:	0074                	addi	a3,sp,12
 780:	6c5f 3436 5f61      	0x5f6134366c5f
 786:	7562                	ld	a0,56(sp)
 788:	0066                	c.slli	zero,0x19
 78a:	735f 6769 665f      	0x665f6769735f
 790:	6e75                	lui	t3,0x1d
 792:	6e5f0063          	beq	t5,t0,e72 <register_fini-0xf23e>
 796:	7562                	ld	a0,56(sp)
 798:	0066                	c.slli	zero,0x19
 79a:	755f 756e 6573      	0x6573756e755f
 7a0:	0064                	addi	s1,sp,12
 7a2:	5f5f 6d74 695f      	0x695f6d745f5f
 7a8:	74736473          	csrrsi	s0,0x747,6
 7ac:	5f00                	lw	s0,56(a4)
 7ae:	6f6c                	ld	a1,216(a4)
 7b0:	746c6163          	bltu	s8,t1,ef2 <register_fini-0xf1be>
 7b4:	6d69                	lui	s10,0x1a
 7b6:	5f65                	li	t5,-7
 7b8:	7562                	ld	a0,56(sp)
 7ba:	0066                	c.slli	zero,0x19
 7bc:	5f5f 6d74 6d5f      	0x6d5f6d745f5f
 7c2:	6e69                	lui	t3,0x1a
 7c4:	5f00                	lw	s0,56(a4)
 7c6:	3472                	fld	fs0,312(sp)
 7c8:	0038                	addi	a4,sp,8
 7ca:	4241                	li	tp,16
 7cc:	5f49                	li	t5,-14
 7ce:	504c                	lw	a1,36(s0)
 7d0:	3436                	fld	fs0,360(sp)
 7d2:	0044                	addi	s1,sp,4
 7d4:	6f74706f          	j	486ca <__global_pointer$+0x35d22>
 7d8:	7470                	ld	a2,232(s0)
 7da:	4100                	lw	s0,0(a0)
 7dc:	4942                	lw	s2,16(sp)
 7de:	4c5f 3650 4634      	0x463436504c5f
 7e4:	5f00                	lw	s0,56(a4)
 7e6:	626d                	lui	tp,0x1b
 7e8:	6f74                	ld	a3,216(a4)
 7ea:	735f6377          	0x735f6377
 7ee:	6174                	ld	a3,192(a0)
 7f0:	6574                	ld	a3,200(a0)
 7f2:	5f00                	lw	s0,56(a4)
 7f4:	3570                	fld	fa2,232(a0)
 7f6:	5f5f0073          	0x5f5f0073
 7fa:	6d74                	ld	a3,216(a0)
 7fc:	795f 6164 0079      	0x796164795f
 802:	6c5f 636f 6c61      	0x6c61636f6c5f
 808:	0065                	c.nop	25
 80a:	5155                	li	sp,-11
 80c:	7449                	lui	s0,0xffff2
 80e:	7079                	c.lui	zero,0xffffe
 810:	0065                	c.nop	25
 812:	5f5f 6d74 6d5f      	0x6d5f6d745f5f
 818:	6164                	ld	s1,192(a0)
 81a:	0079                	c.nop	30
 81c:	7468                	ld	a0,232(s0)
 81e:	6261                	lui	tp,0x18
 820:	655f 0071       	0x71655f

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
	...
   8:	000c                	0xc
   a:	0000                	unimp
   c:	0000                	unimp
   e:	0000                	unimp
  10:	0006                	c.slli	zero,0x1
  12:	935a                	add	t1,t1,s6
  14:	5b08                	lw	a0,48(a4)
  16:	000c0893          	mv	a7,s8
  1a:	0000                	unimp
  1c:	0000                	unimp
  1e:	0000                	unimp
  20:	0090                	addi	a2,sp,64
  22:	0000                	unimp
  24:	0000                	unimp
  26:	0000                	unimp
  28:	0006                	c.slli	zero,0x1
  2a:	0af503f3          	0xaf503f3
  2e:	9f2d                	addw	a4,a4,a1
	...
  48:	0018                	0x18
  4a:	0000                	unimp
  4c:	0000                	unimp
  4e:	0000                	unimp
  50:	0006                	c.slli	zero,0x1
  52:	935c                	0x935c
  54:	5d08                	lw	a0,56(a0)
  56:	00180893          	addi	a7,a6,1 # f001 <register_fini-0x10af>
  5a:	0000                	unimp
  5c:	0000                	unimp
  5e:	0000                	unimp
  60:	0090                	addi	a2,sp,64
  62:	0000                	unimp
  64:	0000                	unimp
  66:	0000                	unimp
  68:	0006                	c.slli	zero,0x1
  6a:	0cf503f3          	0xcf503f3
  6e:	9f2d                	addw	a4,a4,a1
	...
  80:	0018                	0x18
  82:	0000                	unimp
  84:	0000                	unimp
  86:	0000                	unimp
  88:	0028                	addi	a0,sp,8
  8a:	0000                	unimp
  8c:	0000                	unimp
  8e:	0000                	unimp
  90:	0001                	nop
  92:	2856                	fld	fa6,336(sp)
  94:	0000                	unimp
  96:	0000                	unimp
  98:	0000                	unimp
  9a:	5800                	lw	s0,48(s0)
  9c:	0000                	unimp
  9e:	0000                	unimp
  a0:	0000                	unimp
  a2:	0100                	addi	s0,sp,128
  a4:	5c00                	lw	s0,56(s0)
	...
  b6:	0018                	0x18
  b8:	0000                	unimp
  ba:	0000                	unimp
  bc:	0000                	unimp
  be:	0028                	addi	a0,sp,8
  c0:	0000                	unimp
  c2:	0000                	unimp
  c4:	0000                	unimp
  c6:	0001                	nop
  c8:	285a                	fld	fa6,400(sp)
  ca:	0000                	unimp
  cc:	0000                	unimp
  ce:	0000                	unimp
  d0:	6400                	ld	s0,8(s0)
  d2:	0000                	unimp
  d4:	0000                	unimp
  d6:	0000                	unimp
  d8:	0100                	addi	s0,sp,128
  da:	5d00                	lw	s0,56(a0)
	...
  ec:	0018                	0x18
  ee:	0000                	unimp
  f0:	0000                	unimp
  f2:	0000                	unimp
  f4:	0028                	addi	a0,sp,8
  f6:	0000                	unimp
  f8:	0000                	unimp
  fa:	0000                	unimp
  fc:	0002                	c.slli64	zero
  fe:	9f30                	0x9f30
 100:	0028                	addi	a0,sp,8
 102:	0000                	unimp
 104:	0000                	unimp
 106:	0000                	unimp
 108:	0038                	addi	a4,sp,8
 10a:	0000                	unimp
 10c:	0000                	unimp
 10e:	0000                	unimp
 110:	0001                	nop
 112:	3860                	fld	fs0,240(s0)
 114:	0000                	unimp
 116:	0000                	unimp
 118:	0000                	unimp
 11a:	4800                	lw	s0,16(s0)
 11c:	0000                	unimp
 11e:	0000                	unimp
 120:	0000                	unimp
 122:	0100                	addi	s0,sp,128
 124:	6c00                	ld	s0,24(s0)
 126:	0048                	addi	a0,sp,4
 128:	0000                	unimp
 12a:	0000                	unimp
 12c:	0000                	unimp
 12e:	0090                	addi	a2,sp,64
 130:	0000                	unimp
 132:	0000                	unimp
 134:	0000                	unimp
 136:	0001                	nop
 138:	0060                	addi	s0,sp,12
	...
 146:	0000                	unimp
 148:	2800                	fld	fs0,16(s0)
 14a:	0000                	unimp
 14c:	0000                	unimp
 14e:	0000                	unimp
 150:	3800                	fld	fs0,48(s0)
 152:	0000                	unimp
 154:	0000                	unimp
 156:	0000                	unimp
 158:	0600                	addi	s0,sp,768
 15a:	7c00                	ld	s0,56(s0)
 15c:	8000                	0x8000
 15e:	2200                	fld	fs0,0(a2)
 160:	389f 0000 0000      	0x389f
 166:	0000                	unimp
 168:	4800                	lw	s0,16(s0)
 16a:	0000                	unimp
 16c:	0000                	unimp
 16e:	0000                	unimp
 170:	0100                	addi	s0,sp,128
 172:	6c00                	ld	s0,24(s0)
	...
 184:	0018                	0x18
 186:	0000                	unimp
 188:	0000                	unimp
 18a:	0000                	unimp
 18c:	0028                	addi	a0,sp,8
 18e:	0000                	unimp
 190:	0000                	unimp
 192:	0000                	unimp
 194:	0002                	c.slli64	zero
 196:	9f30                	0x9f30
 198:	0028                	addi	a0,sp,8
 19a:	0000                	unimp
 19c:	0000                	unimp
 19e:	0000                	unimp
 1a0:	0040                	addi	s0,sp,4
 1a2:	0000                	unimp
 1a4:	0000                	unimp
 1a6:	0000                	unimp
 1a8:	0001                	nop
 1aa:	445f 0000 0000      	0x445f
 1b0:	0000                	unimp
 1b2:	6800                	ld	s0,16(s0)
 1b4:	0000                	unimp
 1b6:	0000                	unimp
 1b8:	0000                	unimp
 1ba:	0100                	addi	s0,sp,128
 1bc:	5f00                	lw	s0,56(a4)
	...
 1ce:	0018                	0x18
 1d0:	0000                	unimp
 1d2:	0000                	unimp
 1d4:	0000                	unimp
 1d6:	0028                	addi	a0,sp,8
 1d8:	0000                	unimp
 1da:	0000                	unimp
 1dc:	0000                	unimp
 1de:	0002                	c.slli64	zero
 1e0:	9f30                	0x9f30
 1e2:	0028                	addi	a0,sp,8
 1e4:	0000                	unimp
 1e6:	0000                	unimp
 1e8:	0000                	unimp
 1ea:	0030                	addi	a2,sp,8
 1ec:	0000                	unimp
 1ee:	0000                	unimp
 1f0:	0000                	unimp
 1f2:	0001                	nop
 1f4:	305e                	fld	ft0,496(sp)
 1f6:	0000                	unimp
 1f8:	0000                	unimp
 1fa:	0000                	unimp
 1fc:	4000                	lw	s0,0(s0)
 1fe:	0000                	unimp
 200:	0000                	unimp
 202:	0000                	unimp
 204:	0600                	addi	s0,sp,768
 206:	7f00                	ld	s0,56(a4)
 208:	7e00                	ld	s0,56(a2)
 20a:	2200                	fld	fs0,0(a2)
 20c:	409f 0000 0000      	0x409f
 212:	0000                	unimp
 214:	4400                	lw	s0,8(s0)
 216:	0000                	unimp
 218:	0000                	unimp
 21a:	0000                	unimp
 21c:	0100                	addi	s0,sp,128
 21e:	5f00                	lw	s0,56(a4)
 220:	0058                	addi	a4,sp,4
 222:	0000                	unimp
 224:	0000                	unimp
 226:	0000                	unimp
 228:	0090                	addi	a2,sp,64
 22a:	0000                	unimp
 22c:	0000                	unimp
 22e:	0000                	unimp
 230:	0001                	nop
 232:	005e                	c.slli	zero,0x17
	...
 240:	0000                	unimp
 242:	3800                	fld	fs0,48(s0)
 244:	0000                	unimp
 246:	0000                	unimp
 248:	0000                	unimp
 24a:	3c00                	fld	fs0,56(s0)
 24c:	0000                	unimp
 24e:	0000                	unimp
 250:	0000                	unimp
 252:	1f00                	addi	s0,sp,944
 254:	8000                	0x8000
 256:	2300                	fld	fs0,0(a4)
 258:	8080                	0x8080
 25a:	8080                	0x8080
 25c:	8080                	0x8080
 25e:	8080                	0x8080
 260:	0180                	addi	s0,sp,192
 262:	008c                	addi	a1,sp,64
 264:	80808023          	sb	s0,-2048(ra) # fffffffffffff800 <__global_pointer$+0xfffffffffffece58>
 268:	8080                	0x8080
 26a:	8080                	0x8080
 26c:	8080                	0x8080
 26e:	2b01                	sext.w	s6,s6
 270:	ff08                	sd	a0,56(a4)
 272:	9f1a                	add	t5,t5,t1
	...

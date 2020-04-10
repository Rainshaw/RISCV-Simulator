
matrixmulti.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00011537          	lui	a0,0x11
   100bc:	ee850513          	addi	a0,a0,-280 # 10ee8 <__libc_fini_array>
   100c0:	6850006f          	j	10f44 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00003197          	auipc	gp,0x3
   100cc:	80018193          	addi	gp,gp,-2048 # 128c8 <__global_pointer$>
   100d0:	f6818513          	addi	a0,gp,-152 # 12830 <completed.5525>
   100d4:	fa018613          	addi	a2,gp,-96 # 12868 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	405000ef          	jal	ra,10ce4 <memset>
   100e4:	00001517          	auipc	a0,0x1
   100e8:	e6050513          	addi	a0,a0,-416 # 10f44 <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00001517          	auipc	a0,0x1
   100f4:	df850513          	addi	a0,a0,-520 # 10ee8 <__libc_fini_array>
   100f8:	64d000ef          	jal	ra,10f44 <atexit>
   100fc:	34d000ef          	jal	ra,10c48 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	27c000ef          	jal	ra,10388 <main>
   10110:	3090006f          	j	10c18 <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	f681c703          	lbu	a4,-152(gp) # 12830 <completed.5525>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00012537          	lui	a0,0x12
   10138:	0ac50513          	addi	a0,a0,172 # 120ac <__FRAME_END__>
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	f6f18423          	sb	a5,-152(gp) # 12830 <completed.5525>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00012537          	lui	a0,0x12
   1016c:	f7018593          	addi	a1,gp,-144 # 12838 <object.5530>
   10170:	0ac50513          	addi	a0,a0,172 # 120ac <__FRAME_END__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <matmulti>:
   10180:	f9010113          	addi	sp,sp,-112
   10184:	06813423          	sd	s0,104(sp)
   10188:	07213023          	sd	s2,96(sp)
   1018c:	05313c23          	sd	s3,88(sp)
   10190:	07010413          	addi	s0,sp,112
   10194:	faa43423          	sd	a0,-88(s0)
   10198:	fab43023          	sd	a1,-96(s0)
   1019c:	f8c43c23          	sd	a2,-104(s0)
   101a0:	f8d42a23          	sw	a3,-108(s0)
   101a4:	00a00693          	li	a3,10
   101a8:	fff68693          	addi	a3,a3,-1
   101ac:	fcd43c23          	sd	a3,-40(s0)
   101b0:	00a00693          	li	a3,10
   101b4:	00068913          	mv	s2,a3
   101b8:	00000993          	li	s3,0
   101bc:	03b95693          	srli	a3,s2,0x3b
   101c0:	00599393          	slli	t2,s3,0x5
   101c4:	0076e3b3          	or	t2,a3,t2
   101c8:	00591313          	slli	t1,s2,0x5
   101cc:	00a00693          	li	a3,10
   101d0:	fff68693          	addi	a3,a3,-1
   101d4:	fcd43023          	sd	a3,-64(s0)
   101d8:	00a00693          	li	a3,10
   101dc:	00068f13          	mv	t5,a3
   101e0:	00000f93          	li	t6,0
   101e4:	03bf5693          	srli	a3,t5,0x3b
   101e8:	005f9893          	slli	a7,t6,0x5
   101ec:	0116e8b3          	or	a7,a3,a7
   101f0:	005f1813          	slli	a6,t5,0x5
   101f4:	00a00693          	li	a3,10
   101f8:	fff68693          	addi	a3,a3,-1
   101fc:	fad43c23          	sd	a3,-72(s0)
   10200:	00a00693          	li	a3,10
   10204:	00068e13          	mv	t3,a3
   10208:	00000e93          	li	t4,0
   1020c:	03be5693          	srli	a3,t3,0x3b
   10210:	005e9793          	slli	a5,t4,0x5
   10214:	00f6e7b3          	or	a5,a3,a5
   10218:	005e1713          	slli	a4,t3,0x5
   1021c:	fc042623          	sw	zero,-52(s0)
   10220:	1380006f          	j	10358 <matmulti+0x1d8>
   10224:	fc042823          	sw	zero,-48(s0)
   10228:	1100006f          	j	10338 <matmulti+0x1b8>
   1022c:	fcc42783          	lw	a5,-52(s0)
   10230:	00a00713          	li	a4,10
   10234:	02e787b3          	mul	a5,a5,a4
   10238:	00279793          	slli	a5,a5,0x2
   1023c:	f9843703          	ld	a4,-104(s0)
   10240:	00f70733          	add	a4,a4,a5
   10244:	fd042783          	lw	a5,-48(s0)
   10248:	00279793          	slli	a5,a5,0x2
   1024c:	00f707b3          	add	a5,a4,a5
   10250:	0007a023          	sw	zero,0(a5)
   10254:	fc042a23          	sw	zero,-44(s0)
   10258:	0c00006f          	j	10318 <matmulti+0x198>
   1025c:	fcc42783          	lw	a5,-52(s0)
   10260:	00a00713          	li	a4,10
   10264:	02e787b3          	mul	a5,a5,a4
   10268:	00279793          	slli	a5,a5,0x2
   1026c:	f9843703          	ld	a4,-104(s0)
   10270:	00f70733          	add	a4,a4,a5
   10274:	fd042783          	lw	a5,-48(s0)
   10278:	00279793          	slli	a5,a5,0x2
   1027c:	00f707b3          	add	a5,a4,a5
   10280:	0007a703          	lw	a4,0(a5)
   10284:	fcc42783          	lw	a5,-52(s0)
   10288:	00a00693          	li	a3,10
   1028c:	02d787b3          	mul	a5,a5,a3
   10290:	00279793          	slli	a5,a5,0x2
   10294:	fa843683          	ld	a3,-88(s0)
   10298:	00f686b3          	add	a3,a3,a5
   1029c:	fd442783          	lw	a5,-44(s0)
   102a0:	00279793          	slli	a5,a5,0x2
   102a4:	00f687b3          	add	a5,a3,a5
   102a8:	0007a683          	lw	a3,0(a5)
   102ac:	fd442783          	lw	a5,-44(s0)
   102b0:	00a00613          	li	a2,10
   102b4:	02c787b3          	mul	a5,a5,a2
   102b8:	00279793          	slli	a5,a5,0x2
   102bc:	fa043603          	ld	a2,-96(s0)
   102c0:	00f60633          	add	a2,a2,a5
   102c4:	fd042783          	lw	a5,-48(s0)
   102c8:	00279793          	slli	a5,a5,0x2
   102cc:	00f607b3          	add	a5,a2,a5
   102d0:	0007a783          	lw	a5,0(a5)
   102d4:	02f687bb          	mulw	a5,a3,a5
   102d8:	0007879b          	sext.w	a5,a5
   102dc:	fcc42683          	lw	a3,-52(s0)
   102e0:	00a00613          	li	a2,10
   102e4:	02c686b3          	mul	a3,a3,a2
   102e8:	00269693          	slli	a3,a3,0x2
   102ec:	f9843603          	ld	a2,-104(s0)
   102f0:	00d606b3          	add	a3,a2,a3
   102f4:	00f707bb          	addw	a5,a4,a5
   102f8:	0007871b          	sext.w	a4,a5
   102fc:	fd042783          	lw	a5,-48(s0)
   10300:	00279793          	slli	a5,a5,0x2
   10304:	00f687b3          	add	a5,a3,a5
   10308:	00e7a023          	sw	a4,0(a5)
   1030c:	fd442783          	lw	a5,-44(s0)
   10310:	0017879b          	addiw	a5,a5,1
   10314:	fcf42a23          	sw	a5,-44(s0)
   10318:	fd442703          	lw	a4,-44(s0)
   1031c:	f9442783          	lw	a5,-108(s0)
   10320:	0007071b          	sext.w	a4,a4
   10324:	0007879b          	sext.w	a5,a5
   10328:	f2f74ae3          	blt	a4,a5,1025c <matmulti+0xdc>
   1032c:	fd042783          	lw	a5,-48(s0)
   10330:	0017879b          	addiw	a5,a5,1
   10334:	fcf42823          	sw	a5,-48(s0)
   10338:	fd042703          	lw	a4,-48(s0)
   1033c:	f9442783          	lw	a5,-108(s0)
   10340:	0007071b          	sext.w	a4,a4
   10344:	0007879b          	sext.w	a5,a5
   10348:	eef742e3          	blt	a4,a5,1022c <matmulti+0xac>
   1034c:	fcc42783          	lw	a5,-52(s0)
   10350:	0017879b          	addiw	a5,a5,1
   10354:	fcf42623          	sw	a5,-52(s0)
   10358:	fcc42703          	lw	a4,-52(s0)
   1035c:	f9442783          	lw	a5,-108(s0)
   10360:	0007071b          	sext.w	a4,a4
   10364:	0007879b          	sext.w	a5,a5
   10368:	eaf74ee3          	blt	a4,a5,10224 <matmulti+0xa4>
   1036c:	00000013          	nop
   10370:	00000013          	nop
   10374:	06813403          	ld	s0,104(sp)
   10378:	06013903          	ld	s2,96(sp)
   1037c:	05813983          	ld	s3,88(sp)
   10380:	07010113          	addi	sp,sp,112
   10384:	00008067          	ret

0000000000010388 <main>:
   10388:	de010113          	addi	sp,sp,-544
   1038c:	20113c23          	sd	ra,536(sp)
   10390:	20813823          	sd	s0,528(sp)
   10394:	20913423          	sd	s1,520(sp)
   10398:	21213023          	sd	s2,512(sp)
   1039c:	1f313c23          	sd	s3,504(sp)
   103a0:	1f413823          	sd	s4,496(sp)
   103a4:	1f513423          	sd	s5,488(sp)
   103a8:	1f613023          	sd	s6,480(sp)
   103ac:	1d713c23          	sd	s7,472(sp)
   103b0:	1d813823          	sd	s8,464(sp)
   103b4:	1d913423          	sd	s9,456(sp)
   103b8:	1da13023          	sd	s10,448(sp)
   103bc:	1bb13c23          	sd	s11,440(sp)
   103c0:	22010413          	addi	s0,sp,544
   103c4:	00010793          	mv	a5,sp
   103c8:	def43023          	sd	a5,-544(s0)
   103cc:	00a00793          	li	a5,10
   103d0:	fff78793          	addi	a5,a5,-1
   103d4:	f8f43023          	sd	a5,-128(s0)
   103d8:	00a00793          	li	a5,10
   103dc:	00078513          	mv	a0,a5
   103e0:	00000593          	li	a1,0
   103e4:	03b55793          	srli	a5,a0,0x3b
   103e8:	00559693          	slli	a3,a1,0x5
   103ec:	00d7e6b3          	or	a3,a5,a3
   103f0:	00551613          	slli	a2,a0,0x5
   103f4:	00a00793          	li	a5,10
   103f8:	00279793          	slli	a5,a5,0x2
   103fc:	def43423          	sd	a5,-536(s0)
   10400:	00a00793          	li	a5,10
   10404:	fff78793          	addi	a5,a5,-1
   10408:	f8f43423          	sd	a5,-120(s0)
   1040c:	00a00793          	li	a5,10
   10410:	00078313          	mv	t1,a5
   10414:	00000393          	li	t2,0
   10418:	00a00793          	li	a5,10
   1041c:	00078813          	mv	a6,a5
   10420:	00000893          	li	a7,0
   10424:	03038733          	mul	a4,t2,a6
   10428:	026887b3          	mul	a5,a7,t1
   1042c:	00f706b3          	add	a3,a4,a5
   10430:	03030733          	mul	a4,t1,a6
   10434:	030337b3          	mulhu	a5,t1,a6
   10438:	00070e13          	mv	t3,a4
   1043c:	00078e93          	mv	t4,a5
   10440:	01d687b3          	add	a5,a3,t4
   10444:	00078e93          	mv	t4,a5
   10448:	03be5793          	srli	a5,t3,0x3b
   1044c:	005e9f93          	slli	t6,t4,0x5
   10450:	01f7efb3          	or	t6,a5,t6
   10454:	005e1f13          	slli	t5,t3,0x5
   10458:	00a00793          	li	a5,10
   1045c:	00078a13          	mv	s4,a5
   10460:	00000a93          	li	s5,0
   10464:	00a00793          	li	a5,10
   10468:	00078913          	mv	s2,a5
   1046c:	00000993          	li	s3,0
   10470:	032a8733          	mul	a4,s5,s2
   10474:	034987b3          	mul	a5,s3,s4
   10478:	00f706b3          	add	a3,a4,a5
   1047c:	032a0733          	mul	a4,s4,s2
   10480:	032a37b3          	mulhu	a5,s4,s2
   10484:	00070b13          	mv	s6,a4
   10488:	00078b93          	mv	s7,a5
   1048c:	017687b3          	add	a5,a3,s7
   10490:	00078b93          	mv	s7,a5
   10494:	03bb5793          	srli	a5,s6,0x3b
   10498:	005b9c93          	slli	s9,s7,0x5
   1049c:	0197ecb3          	or	s9,a5,s9
   104a0:	005b1c13          	slli	s8,s6,0x5
   104a4:	00a00793          	li	a5,10
   104a8:	00078713          	mv	a4,a5
   104ac:	00a00793          	li	a5,10
   104b0:	02f707b3          	mul	a5,a4,a5
   104b4:	00279793          	slli	a5,a5,0x2
   104b8:	00f78793          	addi	a5,a5,15
   104bc:	0047d793          	srli	a5,a5,0x4
   104c0:	00479793          	slli	a5,a5,0x4
   104c4:	40f10133          	sub	sp,sp,a5
   104c8:	00010793          	mv	a5,sp
   104cc:	00378793          	addi	a5,a5,3
   104d0:	0027d793          	srli	a5,a5,0x2
   104d4:	00279793          	slli	a5,a5,0x2
   104d8:	f4f43c23          	sd	a5,-168(s0)
   104dc:	00a00793          	li	a5,10
   104e0:	fff78793          	addi	a5,a5,-1
   104e4:	f4f43823          	sd	a5,-176(s0)
   104e8:	00a00793          	li	a5,10
   104ec:	e4f43823          	sd	a5,-432(s0)
   104f0:	e4043c23          	sd	zero,-424(s0)
   104f4:	e5043783          	ld	a5,-432(s0)
   104f8:	03b7d793          	srli	a5,a5,0x3b
   104fc:	e5843703          	ld	a4,-424(s0)
   10500:	00571d93          	slli	s11,a4,0x5
   10504:	01b7edb3          	or	s11,a5,s11
   10508:	e5043783          	ld	a5,-432(s0)
   1050c:	00579d13          	slli	s10,a5,0x5
   10510:	00a00793          	li	a5,10
   10514:	00279913          	slli	s2,a5,0x2
   10518:	00a00793          	li	a5,10
   1051c:	fff78793          	addi	a5,a5,-1
   10520:	f4f43423          	sd	a5,-184(s0)
   10524:	00a00793          	li	a5,10
   10528:	ecf43823          	sd	a5,-304(s0)
   1052c:	ec043c23          	sd	zero,-296(s0)
   10530:	00a00793          	li	a5,10
   10534:	ecf43023          	sd	a5,-320(s0)
   10538:	ec043423          	sd	zero,-312(s0)
   1053c:	ed843783          	ld	a5,-296(s0)
   10540:	ec043703          	ld	a4,-320(s0)
   10544:	02e78733          	mul	a4,a5,a4
   10548:	ec843783          	ld	a5,-312(s0)
   1054c:	ed043683          	ld	a3,-304(s0)
   10550:	02d787b3          	mul	a5,a5,a3
   10554:	00f706b3          	add	a3,a4,a5
   10558:	ed043783          	ld	a5,-304(s0)
   1055c:	ec043703          	ld	a4,-320(s0)
   10560:	02e78733          	mul	a4,a5,a4
   10564:	ed043783          	ld	a5,-304(s0)
   10568:	ec043603          	ld	a2,-320(s0)
   1056c:	02c7b7b3          	mulhu	a5,a5,a2
   10570:	f0e43823          	sd	a4,-240(s0)
   10574:	f0f43c23          	sd	a5,-232(s0)
   10578:	f1843783          	ld	a5,-232(s0)
   1057c:	00f687b3          	add	a5,a3,a5
   10580:	f0f43c23          	sd	a5,-232(s0)
   10584:	f1043783          	ld	a5,-240(s0)
   10588:	03b7d793          	srli	a5,a5,0x3b
   1058c:	f1843703          	ld	a4,-232(s0)
   10590:	00571713          	slli	a4,a4,0x5
   10594:	e2e43c23          	sd	a4,-456(s0)
   10598:	e3843703          	ld	a4,-456(s0)
   1059c:	00e7e7b3          	or	a5,a5,a4
   105a0:	e2f43c23          	sd	a5,-456(s0)
   105a4:	f1043783          	ld	a5,-240(s0)
   105a8:	00579793          	slli	a5,a5,0x5
   105ac:	e2f43823          	sd	a5,-464(s0)
   105b0:	00a00793          	li	a5,10
   105b4:	eaf43823          	sd	a5,-336(s0)
   105b8:	ea043c23          	sd	zero,-328(s0)
   105bc:	00a00793          	li	a5,10
   105c0:	eaf43023          	sd	a5,-352(s0)
   105c4:	ea043423          	sd	zero,-344(s0)
   105c8:	eb843783          	ld	a5,-328(s0)
   105cc:	ea043703          	ld	a4,-352(s0)
   105d0:	02e78733          	mul	a4,a5,a4
   105d4:	ea843783          	ld	a5,-344(s0)
   105d8:	eb043683          	ld	a3,-336(s0)
   105dc:	02d787b3          	mul	a5,a5,a3
   105e0:	00f706b3          	add	a3,a4,a5
   105e4:	eb043783          	ld	a5,-336(s0)
   105e8:	ea043703          	ld	a4,-352(s0)
   105ec:	02e78733          	mul	a4,a5,a4
   105f0:	eb043783          	ld	a5,-336(s0)
   105f4:	ea043603          	ld	a2,-352(s0)
   105f8:	02c7b7b3          	mulhu	a5,a5,a2
   105fc:	f0e43023          	sd	a4,-256(s0)
   10600:	f0f43423          	sd	a5,-248(s0)
   10604:	f0843783          	ld	a5,-248(s0)
   10608:	00f687b3          	add	a5,a3,a5
   1060c:	f0f43423          	sd	a5,-248(s0)
   10610:	f0043783          	ld	a5,-256(s0)
   10614:	03b7d793          	srli	a5,a5,0x3b
   10618:	f0843703          	ld	a4,-248(s0)
   1061c:	00571713          	slli	a4,a4,0x5
   10620:	e2e43423          	sd	a4,-472(s0)
   10624:	e2843703          	ld	a4,-472(s0)
   10628:	00e7e7b3          	or	a5,a5,a4
   1062c:	e2f43423          	sd	a5,-472(s0)
   10630:	f0043783          	ld	a5,-256(s0)
   10634:	00579793          	slli	a5,a5,0x5
   10638:	e2f43023          	sd	a5,-480(s0)
   1063c:	00a00793          	li	a5,10
   10640:	00078713          	mv	a4,a5
   10644:	00a00793          	li	a5,10
   10648:	02f707b3          	mul	a5,a4,a5
   1064c:	00279793          	slli	a5,a5,0x2
   10650:	00f78793          	addi	a5,a5,15
   10654:	0047d793          	srli	a5,a5,0x4
   10658:	00479793          	slli	a5,a5,0x4
   1065c:	40f10133          	sub	sp,sp,a5
   10660:	00010793          	mv	a5,sp
   10664:	00378793          	addi	a5,a5,3
   10668:	0027d793          	srli	a5,a5,0x2
   1066c:	00279793          	slli	a5,a5,0x2
   10670:	f4f43023          	sd	a5,-192(s0)
   10674:	00a00793          	li	a5,10
   10678:	fff78793          	addi	a5,a5,-1
   1067c:	f2f43c23          	sd	a5,-200(s0)
   10680:	00a00793          	li	a5,10
   10684:	e4f43023          	sd	a5,-448(s0)
   10688:	e4043423          	sd	zero,-440(s0)
   1068c:	e4043783          	ld	a5,-448(s0)
   10690:	03b7d793          	srli	a5,a5,0x3b
   10694:	e4843703          	ld	a4,-440(s0)
   10698:	00571713          	slli	a4,a4,0x5
   1069c:	e0e43c23          	sd	a4,-488(s0)
   106a0:	e1843703          	ld	a4,-488(s0)
   106a4:	00e7e7b3          	or	a5,a5,a4
   106a8:	e0f43c23          	sd	a5,-488(s0)
   106ac:	e4043783          	ld	a5,-448(s0)
   106b0:	00579793          	slli	a5,a5,0x5
   106b4:	e0f43823          	sd	a5,-496(s0)
   106b8:	00a00793          	li	a5,10
   106bc:	00279493          	slli	s1,a5,0x2
   106c0:	00a00793          	li	a5,10
   106c4:	fff78793          	addi	a5,a5,-1
   106c8:	f2f43823          	sd	a5,-208(s0)
   106cc:	00a00793          	li	a5,10
   106d0:	e8f43823          	sd	a5,-368(s0)
   106d4:	e8043c23          	sd	zero,-360(s0)
   106d8:	00a00793          	li	a5,10
   106dc:	e8f43023          	sd	a5,-384(s0)
   106e0:	e8043423          	sd	zero,-376(s0)
   106e4:	e9843783          	ld	a5,-360(s0)
   106e8:	e8043703          	ld	a4,-384(s0)
   106ec:	02e78733          	mul	a4,a5,a4
   106f0:	e8843783          	ld	a5,-376(s0)
   106f4:	e9043683          	ld	a3,-368(s0)
   106f8:	02d787b3          	mul	a5,a5,a3
   106fc:	00f707b3          	add	a5,a4,a5
   10700:	e9043703          	ld	a4,-368(s0)
   10704:	e8043683          	ld	a3,-384(s0)
   10708:	02d706b3          	mul	a3,a4,a3
   1070c:	e9043703          	ld	a4,-368(s0)
   10710:	e8043603          	ld	a2,-384(s0)
   10714:	02c73733          	mulhu	a4,a4,a2
   10718:	eed43823          	sd	a3,-272(s0)
   1071c:	eee43c23          	sd	a4,-264(s0)
   10720:	ef843703          	ld	a4,-264(s0)
   10724:	00e787b3          	add	a5,a5,a4
   10728:	eef43c23          	sd	a5,-264(s0)
   1072c:	ef043783          	ld	a5,-272(s0)
   10730:	03b7d793          	srli	a5,a5,0x3b
   10734:	ef843703          	ld	a4,-264(s0)
   10738:	00571713          	slli	a4,a4,0x5
   1073c:	e0e43423          	sd	a4,-504(s0)
   10740:	e0843703          	ld	a4,-504(s0)
   10744:	00e7e7b3          	or	a5,a5,a4
   10748:	e0f43423          	sd	a5,-504(s0)
   1074c:	ef043783          	ld	a5,-272(s0)
   10750:	00579793          	slli	a5,a5,0x5
   10754:	e0f43023          	sd	a5,-512(s0)
   10758:	00a00793          	li	a5,10
   1075c:	e6f43823          	sd	a5,-400(s0)
   10760:	e6043c23          	sd	zero,-392(s0)
   10764:	00a00793          	li	a5,10
   10768:	e6f43023          	sd	a5,-416(s0)
   1076c:	e6043423          	sd	zero,-408(s0)
   10770:	e7843783          	ld	a5,-392(s0)
   10774:	e6043703          	ld	a4,-416(s0)
   10778:	02e78733          	mul	a4,a5,a4
   1077c:	e6843783          	ld	a5,-408(s0)
   10780:	e7043683          	ld	a3,-400(s0)
   10784:	02d787b3          	mul	a5,a5,a3
   10788:	00f707b3          	add	a5,a4,a5
   1078c:	e7043703          	ld	a4,-400(s0)
   10790:	e6043683          	ld	a3,-416(s0)
   10794:	02d706b3          	mul	a3,a4,a3
   10798:	e7043703          	ld	a4,-400(s0)
   1079c:	e6043603          	ld	a2,-416(s0)
   107a0:	02c73733          	mulhu	a4,a4,a2
   107a4:	eed43023          	sd	a3,-288(s0)
   107a8:	eee43423          	sd	a4,-280(s0)
   107ac:	ee843703          	ld	a4,-280(s0)
   107b0:	00e787b3          	add	a5,a5,a4
   107b4:	eef43423          	sd	a5,-280(s0)
   107b8:	ee043783          	ld	a5,-288(s0)
   107bc:	03b7d793          	srli	a5,a5,0x3b
   107c0:	ee843703          	ld	a4,-280(s0)
   107c4:	00571713          	slli	a4,a4,0x5
   107c8:	dee43c23          	sd	a4,-520(s0)
   107cc:	df843703          	ld	a4,-520(s0)
   107d0:	00e7e7b3          	or	a5,a5,a4
   107d4:	def43c23          	sd	a5,-520(s0)
   107d8:	ee043783          	ld	a5,-288(s0)
   107dc:	00579793          	slli	a5,a5,0x5
   107e0:	def43823          	sd	a5,-528(s0)
   107e4:	00a00793          	li	a5,10
   107e8:	00078713          	mv	a4,a5
   107ec:	00a00793          	li	a5,10
   107f0:	02f707b3          	mul	a5,a4,a5
   107f4:	00279793          	slli	a5,a5,0x2
   107f8:	00f78793          	addi	a5,a5,15
   107fc:	0047d793          	srli	a5,a5,0x4
   10800:	00479793          	slli	a5,a5,0x4
   10804:	40f10133          	sub	sp,sp,a5
   10808:	00010793          	mv	a5,sp
   1080c:	00378793          	addi	a5,a5,3
   10810:	0027d793          	srli	a5,a5,0x2
   10814:	00279793          	slli	a5,a5,0x2
   10818:	f2f43423          	sd	a5,-216(s0)
   1081c:	f6042023          	sw	zero,-160(s0)
   10820:	0ac0006f          	j	108cc <main+0x544>
   10824:	f6042223          	sw	zero,-156(s0)
   10828:	0880006f          	j	108b0 <main+0x528>
   1082c:	de843783          	ld	a5,-536(s0)
   10830:	0027d793          	srli	a5,a5,0x2
   10834:	f5843703          	ld	a4,-168(s0)
   10838:	f6442683          	lw	a3,-156(s0)
   1083c:	f6042603          	lw	a2,-160(s0)
   10840:	02f607b3          	mul	a5,a2,a5
   10844:	00f687b3          	add	a5,a3,a5
   10848:	00279793          	slli	a5,a5,0x2
   1084c:	00f707b3          	add	a5,a4,a5
   10850:	f6042703          	lw	a4,-160(s0)
   10854:	00e7a023          	sw	a4,0(a5)
   10858:	00295793          	srli	a5,s2,0x2
   1085c:	f4043703          	ld	a4,-192(s0)
   10860:	f6442683          	lw	a3,-156(s0)
   10864:	f6042603          	lw	a2,-160(s0)
   10868:	02f607b3          	mul	a5,a2,a5
   1086c:	00f687b3          	add	a5,a3,a5
   10870:	00279793          	slli	a5,a5,0x2
   10874:	00f707b3          	add	a5,a4,a5
   10878:	f6442703          	lw	a4,-156(s0)
   1087c:	00e7a023          	sw	a4,0(a5)
   10880:	0024d793          	srli	a5,s1,0x2
   10884:	f2843703          	ld	a4,-216(s0)
   10888:	f6442683          	lw	a3,-156(s0)
   1088c:	f6042603          	lw	a2,-160(s0)
   10890:	02f607b3          	mul	a5,a2,a5
   10894:	00f687b3          	add	a5,a3,a5
   10898:	00279793          	slli	a5,a5,0x2
   1089c:	00f707b3          	add	a5,a4,a5
   108a0:	0007a023          	sw	zero,0(a5)
   108a4:	f6442783          	lw	a5,-156(s0)
   108a8:	0017879b          	addiw	a5,a5,1
   108ac:	f6f42223          	sw	a5,-156(s0)
   108b0:	00a00713          	li	a4,10
   108b4:	f6442783          	lw	a5,-156(s0)
   108b8:	0007879b          	sext.w	a5,a5
   108bc:	f6e7c8e3          	blt	a5,a4,1082c <main+0x4a4>
   108c0:	f6042783          	lw	a5,-160(s0)
   108c4:	0017879b          	addiw	a5,a5,1
   108c8:	f6f42023          	sw	a5,-160(s0)
   108cc:	00a00713          	li	a4,10
   108d0:	f6042783          	lw	a5,-160(s0)
   108d4:	0007879b          	sext.w	a5,a5
   108d8:	f4e7c6e3          	blt	a5,a4,10824 <main+0x49c>
   108dc:	000117b7          	lui	a5,0x11
   108e0:	05078513          	addi	a0,a5,80 # 11050 <__errno+0xc>
   108e4:	25c000ef          	jal	ra,10b40 <print_s>
   108e8:	f6042423          	sw	zero,-152(s0)
   108ec:	07c0006f          	j	10968 <main+0x5e0>
   108f0:	f6042623          	sw	zero,-148(s0)
   108f4:	04c0006f          	j	10940 <main+0x5b8>
   108f8:	de843783          	ld	a5,-536(s0)
   108fc:	0027d793          	srli	a5,a5,0x2
   10900:	f5843703          	ld	a4,-168(s0)
   10904:	f6c42683          	lw	a3,-148(s0)
   10908:	f6842603          	lw	a2,-152(s0)
   1090c:	02f607b3          	mul	a5,a2,a5
   10910:	00f687b3          	add	a5,a3,a5
   10914:	00279793          	slli	a5,a5,0x2
   10918:	00f707b3          	add	a5,a4,a5
   1091c:	0007a783          	lw	a5,0(a5)
   10920:	00078513          	mv	a0,a5
   10924:	1f0000ef          	jal	ra,10b14 <print_d>
   10928:	000117b7          	lui	a5,0x11
   1092c:	06878513          	addi	a0,a5,104 # 11068 <__errno+0x24>
   10930:	210000ef          	jal	ra,10b40 <print_s>
   10934:	f6c42783          	lw	a5,-148(s0)
   10938:	0017879b          	addiw	a5,a5,1
   1093c:	f6f42623          	sw	a5,-148(s0)
   10940:	00a00713          	li	a4,10
   10944:	f6c42783          	lw	a5,-148(s0)
   10948:	0007879b          	sext.w	a5,a5
   1094c:	fae7c6e3          	blt	a5,a4,108f8 <main+0x570>
   10950:	000117b7          	lui	a5,0x11
   10954:	07078513          	addi	a0,a5,112 # 11070 <__errno+0x2c>
   10958:	1e8000ef          	jal	ra,10b40 <print_s>
   1095c:	f6842783          	lw	a5,-152(s0)
   10960:	0017879b          	addiw	a5,a5,1
   10964:	f6f42423          	sw	a5,-152(s0)
   10968:	00a00713          	li	a4,10
   1096c:	f6842783          	lw	a5,-152(s0)
   10970:	0007879b          	sext.w	a5,a5
   10974:	f6e7cee3          	blt	a5,a4,108f0 <main+0x568>
   10978:	000117b7          	lui	a5,0x11
   1097c:	07878513          	addi	a0,a5,120 # 11078 <__errno+0x34>
   10980:	1c0000ef          	jal	ra,10b40 <print_s>
   10984:	f6042823          	sw	zero,-144(s0)
   10988:	0780006f          	j	10a00 <main+0x678>
   1098c:	f6042a23          	sw	zero,-140(s0)
   10990:	0480006f          	j	109d8 <main+0x650>
   10994:	00295793          	srli	a5,s2,0x2
   10998:	f4043703          	ld	a4,-192(s0)
   1099c:	f7442683          	lw	a3,-140(s0)
   109a0:	f7042603          	lw	a2,-144(s0)
   109a4:	02f607b3          	mul	a5,a2,a5
   109a8:	00f687b3          	add	a5,a3,a5
   109ac:	00279793          	slli	a5,a5,0x2
   109b0:	00f707b3          	add	a5,a4,a5
   109b4:	0007a783          	lw	a5,0(a5)
   109b8:	00078513          	mv	a0,a5
   109bc:	158000ef          	jal	ra,10b14 <print_d>
   109c0:	000117b7          	lui	a5,0x11
   109c4:	06878513          	addi	a0,a5,104 # 11068 <__errno+0x24>
   109c8:	178000ef          	jal	ra,10b40 <print_s>
   109cc:	f7442783          	lw	a5,-140(s0)
   109d0:	0017879b          	addiw	a5,a5,1
   109d4:	f6f42a23          	sw	a5,-140(s0)
   109d8:	00a00713          	li	a4,10
   109dc:	f7442783          	lw	a5,-140(s0)
   109e0:	0007879b          	sext.w	a5,a5
   109e4:	fae7c8e3          	blt	a5,a4,10994 <main+0x60c>
   109e8:	000117b7          	lui	a5,0x11
   109ec:	07078513          	addi	a0,a5,112 # 11070 <__errno+0x2c>
   109f0:	150000ef          	jal	ra,10b40 <print_s>
   109f4:	f7042783          	lw	a5,-144(s0)
   109f8:	0017879b          	addiw	a5,a5,1
   109fc:	f6f42823          	sw	a5,-144(s0)
   10a00:	00a00713          	li	a4,10
   10a04:	f7042783          	lw	a5,-144(s0)
   10a08:	0007879b          	sext.w	a5,a5
   10a0c:	f8e7c0e3          	blt	a5,a4,1098c <main+0x604>
   10a10:	f5843783          	ld	a5,-168(s0)
   10a14:	f4043703          	ld	a4,-192(s0)
   10a18:	f2843603          	ld	a2,-216(s0)
   10a1c:	00a00693          	li	a3,10
   10a20:	00070593          	mv	a1,a4
   10a24:	00078513          	mv	a0,a5
   10a28:	f58ff0ef          	jal	ra,10180 <matmulti>
   10a2c:	000117b7          	lui	a5,0x11
   10a30:	09078513          	addi	a0,a5,144 # 11090 <__errno+0x4c>
   10a34:	10c000ef          	jal	ra,10b40 <print_s>
   10a38:	f6042c23          	sw	zero,-136(s0)
   10a3c:	0780006f          	j	10ab4 <main+0x72c>
   10a40:	f6042e23          	sw	zero,-132(s0)
   10a44:	0480006f          	j	10a8c <main+0x704>
   10a48:	0024d793          	srli	a5,s1,0x2
   10a4c:	f2843703          	ld	a4,-216(s0)
   10a50:	f7c42683          	lw	a3,-132(s0)
   10a54:	f7842603          	lw	a2,-136(s0)
   10a58:	02f607b3          	mul	a5,a2,a5
   10a5c:	00f687b3          	add	a5,a3,a5
   10a60:	00279793          	slli	a5,a5,0x2
   10a64:	00f707b3          	add	a5,a4,a5
   10a68:	0007a783          	lw	a5,0(a5)
   10a6c:	00078513          	mv	a0,a5
   10a70:	0a4000ef          	jal	ra,10b14 <print_d>
   10a74:	000117b7          	lui	a5,0x11
   10a78:	06878513          	addi	a0,a5,104 # 11068 <__errno+0x24>
   10a7c:	0c4000ef          	jal	ra,10b40 <print_s>
   10a80:	f7c42783          	lw	a5,-132(s0)
   10a84:	0017879b          	addiw	a5,a5,1
   10a88:	f6f42e23          	sw	a5,-132(s0)
   10a8c:	00a00713          	li	a4,10
   10a90:	f7c42783          	lw	a5,-132(s0)
   10a94:	0007879b          	sext.w	a5,a5
   10a98:	fae7c8e3          	blt	a5,a4,10a48 <main+0x6c0>
   10a9c:	000117b7          	lui	a5,0x11
   10aa0:	07078513          	addi	a0,a5,112 # 11070 <__errno+0x2c>
   10aa4:	09c000ef          	jal	ra,10b40 <print_s>
   10aa8:	f7842783          	lw	a5,-136(s0)
   10aac:	0017879b          	addiw	a5,a5,1
   10ab0:	f6f42c23          	sw	a5,-136(s0)
   10ab4:	00a00713          	li	a4,10
   10ab8:	f7842783          	lw	a5,-136(s0)
   10abc:	0007879b          	sext.w	a5,a5
   10ac0:	f8e7c0e3          	blt	a5,a4,10a40 <main+0x6b8>
   10ac4:	0d0000ef          	jal	ra,10b94 <exit_proc>
   10ac8:	de043103          	ld	sp,-544(s0)
   10acc:	00000793          	li	a5,0
   10ad0:	00078513          	mv	a0,a5
   10ad4:	de040113          	addi	sp,s0,-544
   10ad8:	21813083          	ld	ra,536(sp)
   10adc:	21013403          	ld	s0,528(sp)
   10ae0:	20813483          	ld	s1,520(sp)
   10ae4:	20013903          	ld	s2,512(sp)
   10ae8:	1f813983          	ld	s3,504(sp)
   10aec:	1f013a03          	ld	s4,496(sp)
   10af0:	1e813a83          	ld	s5,488(sp)
   10af4:	1e013b03          	ld	s6,480(sp)
   10af8:	1d813b83          	ld	s7,472(sp)
   10afc:	1d013c03          	ld	s8,464(sp)
   10b00:	1c813c83          	ld	s9,456(sp)
   10b04:	1c013d03          	ld	s10,448(sp)
   10b08:	1b813d83          	ld	s11,440(sp)
   10b0c:	22010113          	addi	sp,sp,544
   10b10:	00008067          	ret

0000000000010b14 <print_d>:
   10b14:	fe010113          	addi	sp,sp,-32
   10b18:	00813c23          	sd	s0,24(sp)
   10b1c:	02010413          	addi	s0,sp,32
   10b20:	00050793          	mv	a5,a0
   10b24:	fef42623          	sw	a5,-20(s0)
   10b28:	00100893          	li	a7,1
   10b2c:	00000073          	ecall
   10b30:	00000013          	nop
   10b34:	01813403          	ld	s0,24(sp)
   10b38:	02010113          	addi	sp,sp,32
   10b3c:	00008067          	ret

0000000000010b40 <print_s>:
   10b40:	fe010113          	addi	sp,sp,-32
   10b44:	00813c23          	sd	s0,24(sp)
   10b48:	02010413          	addi	s0,sp,32
   10b4c:	fea43423          	sd	a0,-24(s0)
   10b50:	00300893          	li	a7,3
   10b54:	00000073          	ecall
   10b58:	00000013          	nop
   10b5c:	01813403          	ld	s0,24(sp)
   10b60:	02010113          	addi	sp,sp,32
   10b64:	00008067          	ret

0000000000010b68 <print_c>:
   10b68:	fe010113          	addi	sp,sp,-32
   10b6c:	00813c23          	sd	s0,24(sp)
   10b70:	02010413          	addi	s0,sp,32
   10b74:	00050793          	mv	a5,a0
   10b78:	fef407a3          	sb	a5,-17(s0)
   10b7c:	00200893          	li	a7,2
   10b80:	00000073          	ecall
   10b84:	00000013          	nop
   10b88:	01813403          	ld	s0,24(sp)
   10b8c:	02010113          	addi	sp,sp,32
   10b90:	00008067          	ret

0000000000010b94 <exit_proc>:
   10b94:	ff010113          	addi	sp,sp,-16
   10b98:	00813423          	sd	s0,8(sp)
   10b9c:	01010413          	addi	s0,sp,16
   10ba0:	00000893          	li	a7,0
   10ba4:	00000073          	ecall
   10ba8:	00000013          	nop
   10bac:	00813403          	ld	s0,8(sp)
   10bb0:	01010113          	addi	sp,sp,16
   10bb4:	00008067          	ret

0000000000010bb8 <read_char>:
   10bb8:	fe010113          	addi	sp,sp,-32
   10bbc:	00813c23          	sd	s0,24(sp)
   10bc0:	02010413          	addi	s0,sp,32
   10bc4:	00500893          	li	a7,5
   10bc8:	00000073          	ecall
   10bcc:	00050793          	mv	a5,a0
   10bd0:	fef407a3          	sb	a5,-17(s0)
   10bd4:	fef44783          	lbu	a5,-17(s0)
   10bd8:	00078513          	mv	a0,a5
   10bdc:	01813403          	ld	s0,24(sp)
   10be0:	02010113          	addi	sp,sp,32
   10be4:	00008067          	ret

0000000000010be8 <read_num>:
   10be8:	fe010113          	addi	sp,sp,-32
   10bec:	00813c23          	sd	s0,24(sp)
   10bf0:	02010413          	addi	s0,sp,32
   10bf4:	00400893          	li	a7,4
   10bf8:	00000073          	ecall
   10bfc:	00050793          	mv	a5,a0
   10c00:	fef43423          	sd	a5,-24(s0)
   10c04:	fe843783          	ld	a5,-24(s0)
   10c08:	00078513          	mv	a0,a5
   10c0c:	01813403          	ld	s0,24(sp)
   10c10:	02010113          	addi	sp,sp,32
   10c14:	00008067          	ret

0000000000010c18 <exit>:
   10c18:	ff010113          	addi	sp,sp,-16
   10c1c:	00000593          	li	a1,0
   10c20:	00813023          	sd	s0,0(sp)
   10c24:	00113423          	sd	ra,8(sp)
   10c28:	00050413          	mv	s0,a0
   10c2c:	194000ef          	jal	ra,10dc0 <__call_exitprocs>
   10c30:	f501b503          	ld	a0,-176(gp) # 12818 <_global_impure_ptr>
   10c34:	05853783          	ld	a5,88(a0)
   10c38:	00078463          	beqz	a5,10c40 <exit+0x28>
   10c3c:	000780e7          	jalr	a5
   10c40:	00040513          	mv	a0,s0
   10c44:	3bc000ef          	jal	ra,11000 <_exit>

0000000000010c48 <__libc_init_array>:
   10c48:	fe010113          	addi	sp,sp,-32
   10c4c:	00813823          	sd	s0,16(sp)
   10c50:	01213023          	sd	s2,0(sp)
   10c54:	00012437          	lui	s0,0x12
   10c58:	00012937          	lui	s2,0x12
   10c5c:	0b040793          	addi	a5,s0,176 # 120b0 <__init_array_start>
   10c60:	0b090913          	addi	s2,s2,176 # 120b0 <__init_array_start>
   10c64:	40f90933          	sub	s2,s2,a5
   10c68:	00113c23          	sd	ra,24(sp)
   10c6c:	00913423          	sd	s1,8(sp)
   10c70:	40395913          	srai	s2,s2,0x3
   10c74:	02090063          	beqz	s2,10c94 <__libc_init_array+0x4c>
   10c78:	0b040413          	addi	s0,s0,176
   10c7c:	00000493          	li	s1,0
   10c80:	00043783          	ld	a5,0(s0)
   10c84:	00148493          	addi	s1,s1,1
   10c88:	00840413          	addi	s0,s0,8
   10c8c:	000780e7          	jalr	a5
   10c90:	fe9918e3          	bne	s2,s1,10c80 <__libc_init_array+0x38>
   10c94:	00012437          	lui	s0,0x12
   10c98:	00012937          	lui	s2,0x12
   10c9c:	0b040793          	addi	a5,s0,176 # 120b0 <__init_array_start>
   10ca0:	0c090913          	addi	s2,s2,192 # 120c0 <__do_global_dtors_aux_fini_array_entry>
   10ca4:	40f90933          	sub	s2,s2,a5
   10ca8:	40395913          	srai	s2,s2,0x3
   10cac:	02090063          	beqz	s2,10ccc <__libc_init_array+0x84>
   10cb0:	0b040413          	addi	s0,s0,176
   10cb4:	00000493          	li	s1,0
   10cb8:	00043783          	ld	a5,0(s0)
   10cbc:	00148493          	addi	s1,s1,1
   10cc0:	00840413          	addi	s0,s0,8
   10cc4:	000780e7          	jalr	a5
   10cc8:	fe9918e3          	bne	s2,s1,10cb8 <__libc_init_array+0x70>
   10ccc:	01813083          	ld	ra,24(sp)
   10cd0:	01013403          	ld	s0,16(sp)
   10cd4:	00813483          	ld	s1,8(sp)
   10cd8:	00013903          	ld	s2,0(sp)
   10cdc:	02010113          	addi	sp,sp,32
   10ce0:	00008067          	ret

0000000000010ce4 <memset>:
   10ce4:	00f00313          	li	t1,15
   10ce8:	00050713          	mv	a4,a0
   10cec:	02c37a63          	bgeu	t1,a2,10d20 <memset+0x3c>
   10cf0:	00f77793          	andi	a5,a4,15
   10cf4:	0a079063          	bnez	a5,10d94 <memset+0xb0>
   10cf8:	06059e63          	bnez	a1,10d74 <memset+0x90>
   10cfc:	ff067693          	andi	a3,a2,-16
   10d00:	00f67613          	andi	a2,a2,15
   10d04:	00e686b3          	add	a3,a3,a4
   10d08:	00b73023          	sd	a1,0(a4)
   10d0c:	00b73423          	sd	a1,8(a4)
   10d10:	01070713          	addi	a4,a4,16
   10d14:	fed76ae3          	bltu	a4,a3,10d08 <memset+0x24>
   10d18:	00061463          	bnez	a2,10d20 <memset+0x3c>
   10d1c:	00008067          	ret
   10d20:	40c306b3          	sub	a3,t1,a2
   10d24:	00269693          	slli	a3,a3,0x2
   10d28:	00000297          	auipc	t0,0x0
   10d2c:	005686b3          	add	a3,a3,t0
   10d30:	00c68067          	jr	12(a3)
   10d34:	00b70723          	sb	a1,14(a4)
   10d38:	00b706a3          	sb	a1,13(a4)
   10d3c:	00b70623          	sb	a1,12(a4)
   10d40:	00b705a3          	sb	a1,11(a4)
   10d44:	00b70523          	sb	a1,10(a4)
   10d48:	00b704a3          	sb	a1,9(a4)
   10d4c:	00b70423          	sb	a1,8(a4)
   10d50:	00b703a3          	sb	a1,7(a4)
   10d54:	00b70323          	sb	a1,6(a4)
   10d58:	00b702a3          	sb	a1,5(a4)
   10d5c:	00b70223          	sb	a1,4(a4)
   10d60:	00b701a3          	sb	a1,3(a4)
   10d64:	00b70123          	sb	a1,2(a4)
   10d68:	00b700a3          	sb	a1,1(a4)
   10d6c:	00b70023          	sb	a1,0(a4)
   10d70:	00008067          	ret
   10d74:	0ff5f593          	andi	a1,a1,255
   10d78:	00859693          	slli	a3,a1,0x8
   10d7c:	00d5e5b3          	or	a1,a1,a3
   10d80:	01059693          	slli	a3,a1,0x10
   10d84:	00d5e5b3          	or	a1,a1,a3
   10d88:	02059693          	slli	a3,a1,0x20
   10d8c:	00d5e5b3          	or	a1,a1,a3
   10d90:	f6dff06f          	j	10cfc <memset+0x18>
   10d94:	00279693          	slli	a3,a5,0x2
   10d98:	00000297          	auipc	t0,0x0
   10d9c:	005686b3          	add	a3,a3,t0
   10da0:	00008293          	mv	t0,ra
   10da4:	f98680e7          	jalr	-104(a3)
   10da8:	00028093          	mv	ra,t0
   10dac:	ff078793          	addi	a5,a5,-16
   10db0:	40f70733          	sub	a4,a4,a5
   10db4:	00f60633          	add	a2,a2,a5
   10db8:	f6c374e3          	bgeu	t1,a2,10d20 <memset+0x3c>
   10dbc:	f3dff06f          	j	10cf8 <memset+0x14>

0000000000010dc0 <__call_exitprocs>:
   10dc0:	fb010113          	addi	sp,sp,-80
   10dc4:	03413023          	sd	s4,32(sp)
   10dc8:	f501ba03          	ld	s4,-176(gp) # 12818 <_global_impure_ptr>
   10dcc:	03213823          	sd	s2,48(sp)
   10dd0:	04113423          	sd	ra,72(sp)
   10dd4:	1f8a3903          	ld	s2,504(s4)
   10dd8:	04813023          	sd	s0,64(sp)
   10ddc:	02913c23          	sd	s1,56(sp)
   10de0:	03313423          	sd	s3,40(sp)
   10de4:	01513c23          	sd	s5,24(sp)
   10de8:	01613823          	sd	s6,16(sp)
   10dec:	01713423          	sd	s7,8(sp)
   10df0:	01813023          	sd	s8,0(sp)
   10df4:	04090063          	beqz	s2,10e34 <__call_exitprocs+0x74>
   10df8:	00050b13          	mv	s6,a0
   10dfc:	00058b93          	mv	s7,a1
   10e00:	00100a93          	li	s5,1
   10e04:	fff00993          	li	s3,-1
   10e08:	00892483          	lw	s1,8(s2)
   10e0c:	fff4841b          	addiw	s0,s1,-1
   10e10:	02044263          	bltz	s0,10e34 <__call_exitprocs+0x74>
   10e14:	00349493          	slli	s1,s1,0x3
   10e18:	009904b3          	add	s1,s2,s1
   10e1c:	040b8463          	beqz	s7,10e64 <__call_exitprocs+0xa4>
   10e20:	2084b783          	ld	a5,520(s1)
   10e24:	05778063          	beq	a5,s7,10e64 <__call_exitprocs+0xa4>
   10e28:	fff4041b          	addiw	s0,s0,-1
   10e2c:	ff848493          	addi	s1,s1,-8
   10e30:	ff3416e3          	bne	s0,s3,10e1c <__call_exitprocs+0x5c>
   10e34:	04813083          	ld	ra,72(sp)
   10e38:	04013403          	ld	s0,64(sp)
   10e3c:	03813483          	ld	s1,56(sp)
   10e40:	03013903          	ld	s2,48(sp)
   10e44:	02813983          	ld	s3,40(sp)
   10e48:	02013a03          	ld	s4,32(sp)
   10e4c:	01813a83          	ld	s5,24(sp)
   10e50:	01013b03          	ld	s6,16(sp)
   10e54:	00813b83          	ld	s7,8(sp)
   10e58:	00013c03          	ld	s8,0(sp)
   10e5c:	05010113          	addi	sp,sp,80
   10e60:	00008067          	ret
   10e64:	00892783          	lw	a5,8(s2)
   10e68:	0084b703          	ld	a4,8(s1)
   10e6c:	fff7879b          	addiw	a5,a5,-1
   10e70:	06878263          	beq	a5,s0,10ed4 <__call_exitprocs+0x114>
   10e74:	0004b423          	sd	zero,8(s1)
   10e78:	fa0708e3          	beqz	a4,10e28 <__call_exitprocs+0x68>
   10e7c:	31092783          	lw	a5,784(s2)
   10e80:	008a96bb          	sllw	a3,s5,s0
   10e84:	00892c03          	lw	s8,8(s2)
   10e88:	00d7f7b3          	and	a5,a5,a3
   10e8c:	0007879b          	sext.w	a5,a5
   10e90:	02079263          	bnez	a5,10eb4 <__call_exitprocs+0xf4>
   10e94:	000700e7          	jalr	a4
   10e98:	00892703          	lw	a4,8(s2)
   10e9c:	1f8a3783          	ld	a5,504(s4)
   10ea0:	01871463          	bne	a4,s8,10ea8 <__call_exitprocs+0xe8>
   10ea4:	f8f902e3          	beq	s2,a5,10e28 <__call_exitprocs+0x68>
   10ea8:	f80786e3          	beqz	a5,10e34 <__call_exitprocs+0x74>
   10eac:	00078913          	mv	s2,a5
   10eb0:	f59ff06f          	j	10e08 <__call_exitprocs+0x48>
   10eb4:	31492783          	lw	a5,788(s2)
   10eb8:	1084b583          	ld	a1,264(s1)
   10ebc:	00d7f7b3          	and	a5,a5,a3
   10ec0:	0007879b          	sext.w	a5,a5
   10ec4:	00079c63          	bnez	a5,10edc <__call_exitprocs+0x11c>
   10ec8:	000b0513          	mv	a0,s6
   10ecc:	000700e7          	jalr	a4
   10ed0:	fc9ff06f          	j	10e98 <__call_exitprocs+0xd8>
   10ed4:	00892423          	sw	s0,8(s2)
   10ed8:	fa1ff06f          	j	10e78 <__call_exitprocs+0xb8>
   10edc:	00058513          	mv	a0,a1
   10ee0:	000700e7          	jalr	a4
   10ee4:	fb5ff06f          	j	10e98 <__call_exitprocs+0xd8>

0000000000010ee8 <__libc_fini_array>:
   10ee8:	fe010113          	addi	sp,sp,-32
   10eec:	00813823          	sd	s0,16(sp)
   10ef0:	000127b7          	lui	a5,0x12
   10ef4:	00012437          	lui	s0,0x12
   10ef8:	0c040413          	addi	s0,s0,192 # 120c0 <__do_global_dtors_aux_fini_array_entry>
   10efc:	0c878793          	addi	a5,a5,200 # 120c8 <impure_data>
   10f00:	408787b3          	sub	a5,a5,s0
   10f04:	00913423          	sd	s1,8(sp)
   10f08:	00113c23          	sd	ra,24(sp)
   10f0c:	4037d493          	srai	s1,a5,0x3
   10f10:	02048063          	beqz	s1,10f30 <__libc_fini_array+0x48>
   10f14:	ff878793          	addi	a5,a5,-8
   10f18:	00878433          	add	s0,a5,s0
   10f1c:	00043783          	ld	a5,0(s0)
   10f20:	fff48493          	addi	s1,s1,-1
   10f24:	ff840413          	addi	s0,s0,-8
   10f28:	000780e7          	jalr	a5
   10f2c:	fe0498e3          	bnez	s1,10f1c <__libc_fini_array+0x34>
   10f30:	01813083          	ld	ra,24(sp)
   10f34:	01013403          	ld	s0,16(sp)
   10f38:	00813483          	ld	s1,8(sp)
   10f3c:	02010113          	addi	sp,sp,32
   10f40:	00008067          	ret

0000000000010f44 <atexit>:
   10f44:	00050593          	mv	a1,a0
   10f48:	00000693          	li	a3,0
   10f4c:	00000613          	li	a2,0
   10f50:	00000513          	li	a0,0
   10f54:	0040006f          	j	10f58 <__register_exitproc>

0000000000010f58 <__register_exitproc>:
   10f58:	f501b703          	ld	a4,-176(gp) # 12818 <_global_impure_ptr>
   10f5c:	1f873783          	ld	a5,504(a4)
   10f60:	06078063          	beqz	a5,10fc0 <__register_exitproc+0x68>
   10f64:	0087a703          	lw	a4,8(a5)
   10f68:	01f00813          	li	a6,31
   10f6c:	08e84663          	blt	a6,a4,10ff8 <__register_exitproc+0xa0>
   10f70:	02050863          	beqz	a0,10fa0 <__register_exitproc+0x48>
   10f74:	00371813          	slli	a6,a4,0x3
   10f78:	01078833          	add	a6,a5,a6
   10f7c:	10c83823          	sd	a2,272(a6)
   10f80:	3107a883          	lw	a7,784(a5)
   10f84:	00100613          	li	a2,1
   10f88:	00e6163b          	sllw	a2,a2,a4
   10f8c:	00c8e8b3          	or	a7,a7,a2
   10f90:	3117a823          	sw	a7,784(a5)
   10f94:	20d83823          	sd	a3,528(a6)
   10f98:	00200693          	li	a3,2
   10f9c:	02d50863          	beq	a0,a3,10fcc <__register_exitproc+0x74>
   10fa0:	00270693          	addi	a3,a4,2
   10fa4:	00369693          	slli	a3,a3,0x3
   10fa8:	0017071b          	addiw	a4,a4,1
   10fac:	00e7a423          	sw	a4,8(a5)
   10fb0:	00d787b3          	add	a5,a5,a3
   10fb4:	00b7b023          	sd	a1,0(a5)
   10fb8:	00000513          	li	a0,0
   10fbc:	00008067          	ret
   10fc0:	20070793          	addi	a5,a4,512
   10fc4:	1ef73c23          	sd	a5,504(a4)
   10fc8:	f9dff06f          	j	10f64 <__register_exitproc+0xc>
   10fcc:	3147a683          	lw	a3,788(a5)
   10fd0:	00000513          	li	a0,0
   10fd4:	00c6e633          	or	a2,a3,a2
   10fd8:	00270693          	addi	a3,a4,2
   10fdc:	00369693          	slli	a3,a3,0x3
   10fe0:	0017071b          	addiw	a4,a4,1
   10fe4:	30c7aa23          	sw	a2,788(a5)
   10fe8:	00e7a423          	sw	a4,8(a5)
   10fec:	00d787b3          	add	a5,a5,a3
   10ff0:	00b7b023          	sd	a1,0(a5)
   10ff4:	00008067          	ret
   10ff8:	fff00513          	li	a0,-1
   10ffc:	00008067          	ret

0000000000011000 <_exit>:
   11000:	00000593          	li	a1,0
   11004:	00000613          	li	a2,0
   11008:	00000693          	li	a3,0
   1100c:	00000713          	li	a4,0
   11010:	00000793          	li	a5,0
   11014:	05d00893          	li	a7,93
   11018:	00000073          	ecall
   1101c:	00054463          	bltz	a0,11024 <_exit+0x24>
   11020:	0000006f          	j	11020 <_exit+0x20>
   11024:	ff010113          	addi	sp,sp,-16
   11028:	00813023          	sd	s0,0(sp)
   1102c:	00050413          	mv	s0,a0
   11030:	00113423          	sd	ra,8(sp)
   11034:	4080043b          	negw	s0,s0
   11038:	00c000ef          	jal	ra,11044 <__errno>
   1103c:	00852023          	sw	s0,0(a0)
   11040:	0000006f          	j	11040 <_exit+0x40>

0000000000011044 <__errno>:
   11044:	f601b503          	ld	a0,-160(gp) # 12828 <_impure_ptr>
   11048:	00008067          	ret

Disassembly of section .rodata:

0000000000011050 <.rodata>:
   11050:	6854                	ld	a3,144(s0)
   11052:	2065                	0x2065
   11054:	746e6f63          	bltu	t3,t1,117b2 <__errno+0x76e>
   11058:	6e65                	lui	t3,0x19
   1105a:	2074                	fld	fa3,192(s0)
   1105c:	4120666f          	jal	a2,1746e <__global_pointer$+0x4ba6>
   11060:	6920                	ld	s0,80(a0)
   11062:	0a203a73          	csrrc	s4,0xa2,zero
   11066:	0000                	unimp
   11068:	0020                	addi	s0,sp,8
   1106a:	0000                	unimp
   1106c:	0000                	unimp
   1106e:	0000                	unimp
   11070:	000a                	c.slli	zero,0x2
   11072:	0000                	unimp
   11074:	0000                	unimp
   11076:	0000                	unimp
   11078:	6854                	ld	a3,144(s0)
   1107a:	2065                	0x2065
   1107c:	746e6f63          	bltu	t3,t1,117da <__errno+0x796>
   11080:	6e65                	lui	t3,0x19
   11082:	2074                	fld	fa3,192(s0)
   11084:	4220666f          	jal	a2,174a6 <__global_pointer$+0x4bde>
   11088:	6920                	ld	s0,80(a0)
   1108a:	0a203a73          	csrrc	s4,0xa2,zero
   1108e:	0000                	unimp
   11090:	6854                	ld	a3,144(s0)
   11092:	2065                	0x2065
   11094:	746e6f63          	bltu	t3,t1,117f2 <__errno+0x7ae>
   11098:	6e65                	lui	t3,0x19
   1109a:	2074                	fld	fa3,192(s0)
   1109c:	4320666f          	jal	a2,174ce <__global_pointer$+0x4c06>
   110a0:	413d                	li	sp,15
   110a2:	422a                	lw	tp,136(sp)
   110a4:	6920                	ld	s0,80(a0)
   110a6:	0a203a73          	csrrc	s4,0xa2,zero
	...

Disassembly of section .eh_frame:

00000000000120ac <__FRAME_END__>:
   120ac:	0000                	unimp
	...

Disassembly of section .init_array:

00000000000120b0 <__init_array_start>:
   120b0:	00b0                	addi	a2,sp,72
   120b2:	0001                	nop
   120b4:	0000                	unimp
	...

00000000000120b8 <__frame_dummy_init_array_entry>:
   120b8:	0160                	addi	s0,sp,140
   120ba:	0001                	nop
   120bc:	0000                	unimp
	...

Disassembly of section .fini_array:

00000000000120c0 <__do_global_dtors_aux_fini_array_entry>:
   120c0:	0114                	addi	a3,sp,128
   120c2:	0001                	nop
   120c4:	0000                	unimp
	...

Disassembly of section .data:

00000000000120c8 <impure_data>:
	...
   120d0:	2600                	fld	fs0,8(a2)
   120d2:	0001                	nop
   120d4:	0000                	unimp
   120d6:	0000                	unimp
   120d8:	26b0                	fld	fa2,72(a3)
   120da:	0001                	nop
   120dc:	0000                	unimp
   120de:	0000                	unimp
   120e0:	2760                	fld	fs0,200(a4)
   120e2:	0001                	nop
	...
   121b0:	0001                	nop
   121b2:	0000                	unimp
   121b4:	0000                	unimp
   121b6:	0000                	unimp
   121b8:	330e                	fld	ft6,224(sp)
   121ba:	abcd                	j	127ac <impure_data+0x6e4>
   121bc:	1234                	addi	a3,sp,296
   121be:	e66d                	bnez	a2,122a8 <impure_data+0x1e0>
   121c0:	deec                	sw	a1,124(a3)
   121c2:	0005                	c.nop	1
   121c4:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000012810 <M>:
   12810:	000a                	c.slli	zero,0x2
   12812:	0000                	unimp
   12814:	0000                	unimp
	...

0000000000012818 <_global_impure_ptr>:
   12818:	20c8                	fld	fa0,128(s1)
   1281a:	0001                	nop
   1281c:	0000                	unimp
	...

0000000000012820 <__dso_handle>:
	...

0000000000012828 <_impure_ptr>:
   12828:	20c8                	fld	fa0,128(s1)
   1282a:	0001                	nop
   1282c:	0000                	unimp
	...

Disassembly of section .bss:

0000000000012830 <completed.5525>:
	...

0000000000012838 <object.5530>:
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

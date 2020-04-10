
double-float.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00011537          	lui	a0,0x11
   100bc:	5d050513          	addi	a0,a0,1488 # 115d0 <__libc_fini_array>
   100c0:	56c0106f          	j	1162c <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00002197          	auipc	gp,0x2
   100cc:	75818193          	addi	gp,gp,1880 # 12820 <__global_pointer$>
   100d0:	fd818513          	addi	a0,gp,-40 # 127f8 <completed.5525>
   100d4:	01018613          	addi	a2,gp,16 # 12830 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	2ec010ef          	jal	ra,113cc <memset>
   100e4:	00001517          	auipc	a0,0x1
   100e8:	54850513          	addi	a0,a0,1352 # 1162c <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00001517          	auipc	a0,0x1
   100f4:	4e050513          	addi	a0,a0,1248 # 115d0 <__libc_fini_array>
   100f8:	534010ef          	jal	ra,1162c <atexit>
   100fc:	234010ef          	jal	ra,11330 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	074000ef          	jal	ra,10180 <main>
   10110:	1f00106f          	j	11300 <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	fd81c703          	lbu	a4,-40(gp) # 127f8 <completed.5525>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00012537          	lui	a0,0x12
   10138:	00050513          	mv	a0,a0
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	fcf18c23          	sb	a5,-40(gp) # 127f8 <completed.5525>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00012537          	lui	a0,0x12
   1016c:	fe018593          	addi	a1,gp,-32 # 12800 <object.5530>
   10170:	00050513          	mv	a0,a0
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <main>:
   10180:	fd010113          	addi	sp,sp,-48
   10184:	02113423          	sd	ra,40(sp)
   10188:	02813023          	sd	s0,32(sp)
   1018c:	00913c23          	sd	s1,24(sp)
   10190:	03010413          	addi	s0,sp,48
   10194:	fc042e23          	sw	zero,-36(s0)
   10198:	00400793          	li	a5,4
   1019c:	fcf42e23          	sw	a5,-36(s0)
   101a0:	0780006f          	j	10218 <main+0x98>
   101a4:	000127b7          	lui	a5,0x12
   101a8:	02078713          	addi	a4,a5,32 # 12020 <result_double>
   101ac:	fdc42783          	lw	a5,-36(s0)
   101b0:	00379793          	slli	a5,a5,0x3
   101b4:	00f707b3          	add	a5,a4,a5
   101b8:	0007b483          	ld	s1,0(a5)
   101bc:	fdc42783          	lw	a5,-36(s0)
   101c0:	00078513          	mv	a0,a5
   101c4:	685000ef          	jal	ra,11048 <__floatsidf>
   101c8:	00050713          	mv	a4,a0
   101cc:	000117b7          	lui	a5,0x11
   101d0:	7387b583          	ld	a1,1848(a5) # 11738 <__errno+0xc>
   101d4:	00070513          	mv	a0,a4
   101d8:	694000ef          	jal	ra,1086c <__muldf3>
   101dc:	00050793          	mv	a5,a0
   101e0:	00078593          	mv	a1,a5
   101e4:	00048513          	mv	a0,s1
   101e8:	21c000ef          	jal	ra,10404 <__adddf3>
   101ec:	00050793          	mv	a5,a0
   101f0:	00078693          	mv	a3,a5
   101f4:	000127b7          	lui	a5,0x12
   101f8:	02078713          	addi	a4,a5,32 # 12020 <result_double>
   101fc:	fdc42783          	lw	a5,-36(s0)
   10200:	00379793          	slli	a5,a5,0x3
   10204:	00f707b3          	add	a5,a4,a5
   10208:	00d7b023          	sd	a3,0(a5)
   1020c:	fdc42783          	lw	a5,-36(s0)
   10210:	fff7879b          	addiw	a5,a5,-1
   10214:	fcf42e23          	sw	a5,-36(s0)
   10218:	fdc42783          	lw	a5,-36(s0)
   1021c:	0007879b          	sext.w	a5,a5
   10220:	f807d2e3          	bgez	a5,101a4 <main+0x24>
   10224:	00500793          	li	a5,5
   10228:	fcf42e23          	sw	a5,-36(s0)
   1022c:	0780006f          	j	102a4 <main+0x124>
   10230:	000127b7          	lui	a5,0x12
   10234:	02078713          	addi	a4,a5,32 # 12020 <result_double>
   10238:	fdc42783          	lw	a5,-36(s0)
   1023c:	00379793          	slli	a5,a5,0x3
   10240:	00f707b3          	add	a5,a4,a5
   10244:	0007b483          	ld	s1,0(a5)
   10248:	fdc42783          	lw	a5,-36(s0)
   1024c:	00078513          	mv	a0,a5
   10250:	5f9000ef          	jal	ra,11048 <__floatsidf>
   10254:	00050713          	mv	a4,a0
   10258:	000117b7          	lui	a5,0x11
   1025c:	7387b583          	ld	a1,1848(a5) # 11738 <__errno+0xc>
   10260:	00070513          	mv	a0,a4
   10264:	608000ef          	jal	ra,1086c <__muldf3>
   10268:	00050793          	mv	a5,a0
   1026c:	00078593          	mv	a1,a5
   10270:	00048513          	mv	a0,s1
   10274:	14d000ef          	jal	ra,10bc0 <__subdf3>
   10278:	00050793          	mv	a5,a0
   1027c:	00078693          	mv	a3,a5
   10280:	000127b7          	lui	a5,0x12
   10284:	02078713          	addi	a4,a5,32 # 12020 <result_double>
   10288:	fdc42783          	lw	a5,-36(s0)
   1028c:	00379793          	slli	a5,a5,0x3
   10290:	00f707b3          	add	a5,a4,a5
   10294:	00d7b023          	sd	a3,0(a5)
   10298:	fdc42783          	lw	a5,-36(s0)
   1029c:	0017879b          	addiw	a5,a5,1
   102a0:	fcf42e23          	sw	a5,-36(s0)
   102a4:	fdc42783          	lw	a5,-36(s0)
   102a8:	0007871b          	sext.w	a4,a5
   102ac:	00900793          	li	a5,9
   102b0:	f8e7d0e3          	bge	a5,a4,10230 <main+0xb0>
   102b4:	00400793          	li	a5,4
   102b8:	fcf42e23          	sw	a5,-36(s0)
   102bc:	0840006f          	j	10340 <main+0x1c0>
   102c0:	85018713          	addi	a4,gp,-1968 # 12070 <result_float>
   102c4:	fdc42783          	lw	a5,-36(s0)
   102c8:	00279793          	slli	a5,a5,0x2
   102cc:	00f707b3          	add	a5,a4,a5
   102d0:	0007a783          	lw	a5,0(a5)
   102d4:	00078513          	mv	a0,a5
   102d8:	5f5000ef          	jal	ra,110cc <__extendsfdf2>
   102dc:	00050493          	mv	s1,a0
   102e0:	fdc42783          	lw	a5,-36(s0)
   102e4:	00078513          	mv	a0,a5
   102e8:	561000ef          	jal	ra,11048 <__floatsidf>
   102ec:	00050713          	mv	a4,a0
   102f0:	000117b7          	lui	a5,0x11
   102f4:	7387b583          	ld	a1,1848(a5) # 11738 <__errno+0xc>
   102f8:	00070513          	mv	a0,a4
   102fc:	570000ef          	jal	ra,1086c <__muldf3>
   10300:	00050793          	mv	a5,a0
   10304:	00078593          	mv	a1,a5
   10308:	00048513          	mv	a0,s1
   1030c:	0f8000ef          	jal	ra,10404 <__adddf3>
   10310:	00050793          	mv	a5,a0
   10314:	00078513          	mv	a0,a5
   10318:	659000ef          	jal	ra,11170 <__truncdfsf2>
   1031c:	00050693          	mv	a3,a0
   10320:	85018713          	addi	a4,gp,-1968 # 12070 <result_float>
   10324:	fdc42783          	lw	a5,-36(s0)
   10328:	00279793          	slli	a5,a5,0x2
   1032c:	00f707b3          	add	a5,a4,a5
   10330:	00d7a023          	sw	a3,0(a5)
   10334:	fdc42783          	lw	a5,-36(s0)
   10338:	fff7879b          	addiw	a5,a5,-1
   1033c:	fcf42e23          	sw	a5,-36(s0)
   10340:	fdc42783          	lw	a5,-36(s0)
   10344:	0007879b          	sext.w	a5,a5
   10348:	f607dce3          	bgez	a5,102c0 <main+0x140>
   1034c:	00500793          	li	a5,5
   10350:	fcf42e23          	sw	a5,-36(s0)
   10354:	0840006f          	j	103d8 <main+0x258>
   10358:	85018713          	addi	a4,gp,-1968 # 12070 <result_float>
   1035c:	fdc42783          	lw	a5,-36(s0)
   10360:	00279793          	slli	a5,a5,0x2
   10364:	00f707b3          	add	a5,a4,a5
   10368:	0007a783          	lw	a5,0(a5)
   1036c:	00078513          	mv	a0,a5
   10370:	55d000ef          	jal	ra,110cc <__extendsfdf2>
   10374:	00050493          	mv	s1,a0
   10378:	fdc42783          	lw	a5,-36(s0)
   1037c:	00078513          	mv	a0,a5
   10380:	4c9000ef          	jal	ra,11048 <__floatsidf>
   10384:	00050713          	mv	a4,a0
   10388:	000117b7          	lui	a5,0x11
   1038c:	7387b583          	ld	a1,1848(a5) # 11738 <__errno+0xc>
   10390:	00070513          	mv	a0,a4
   10394:	4d8000ef          	jal	ra,1086c <__muldf3>
   10398:	00050793          	mv	a5,a0
   1039c:	00078593          	mv	a1,a5
   103a0:	00048513          	mv	a0,s1
   103a4:	01d000ef          	jal	ra,10bc0 <__subdf3>
   103a8:	00050793          	mv	a5,a0
   103ac:	00078513          	mv	a0,a5
   103b0:	5c1000ef          	jal	ra,11170 <__truncdfsf2>
   103b4:	00050693          	mv	a3,a0
   103b8:	85018713          	addi	a4,gp,-1968 # 12070 <result_float>
   103bc:	fdc42783          	lw	a5,-36(s0)
   103c0:	00279793          	slli	a5,a5,0x2
   103c4:	00f707b3          	add	a5,a4,a5
   103c8:	00d7a023          	sw	a3,0(a5)
   103cc:	fdc42783          	lw	a5,-36(s0)
   103d0:	0017879b          	addiw	a5,a5,1
   103d4:	fcf42e23          	sw	a5,-36(s0)
   103d8:	fdc42783          	lw	a5,-36(s0)
   103dc:	0007871b          	sext.w	a4,a5
   103e0:	00900793          	li	a5,9
   103e4:	f6e7dae3          	bge	a5,a4,10358 <main+0x1d8>
   103e8:	00000793          	li	a5,0
   103ec:	00078513          	mv	a0,a5
   103f0:	02813083          	ld	ra,40(sp)
   103f4:	02013403          	ld	s0,32(sp)
   103f8:	01813483          	ld	s1,24(sp)
   103fc:	03010113          	addi	sp,sp,48
   10400:	00008067          	ret

0000000000010404 <__adddf3>:
   10404:	fe010113          	addi	sp,sp,-32
   10408:	fff00813          	li	a6,-1
   1040c:	00c85713          	srli	a4,a6,0xc
   10410:	0345d613          	srli	a2,a1,0x34
   10414:	00813823          	sd	s0,16(sp)
   10418:	03455413          	srli	s0,a0,0x34
   1041c:	00a777b3          	and	a5,a4,a0
   10420:	00913423          	sd	s1,8(sp)
   10424:	00b77733          	and	a4,a4,a1
   10428:	7ff47413          	andi	s0,s0,2047
   1042c:	7ff67613          	andi	a2,a2,2047
   10430:	00113c23          	sd	ra,24(sp)
   10434:	01213023          	sd	s2,0(sp)
   10438:	03f55493          	srli	s1,a0,0x3f
   1043c:	03f5d593          	srli	a1,a1,0x3f
   10440:	00379793          	slli	a5,a5,0x3
   10444:	00371713          	slli	a4,a4,0x3
   10448:	40c406bb          	subw	a3,s0,a2
   1044c:	18b49c63          	bne	s1,a1,105e4 <__adddf3+0x1e0>
   10450:	0006859b          	sext.w	a1,a3
   10454:	0ab05863          	blez	a1,10504 <__adddf3+0x100>
   10458:	06061663          	bnez	a2,104c4 <__adddf3+0xc0>
   1045c:	04070663          	beqz	a4,104a8 <__adddf3+0xa4>
   10460:	fff6859b          	addiw	a1,a3,-1
   10464:	02059e63          	bnez	a1,104a0 <__adddf3+0x9c>
   10468:	00e787b3          	add	a5,a5,a4
   1046c:	00879713          	slli	a4,a5,0x8
   10470:	02075c63          	bgez	a4,104a8 <__adddf3+0xa4>
   10474:	00140413          	addi	s0,s0,1
   10478:	7ff00713          	li	a4,2047
   1047c:	34e40a63          	beq	s0,a4,107d0 <__adddf3+0x3cc>
   10480:	1ff00713          	li	a4,511
   10484:	03671713          	slli	a4,a4,0x36
   10488:	0017f693          	andi	a3,a5,1
   1048c:	fff70713          	addi	a4,a4,-1
   10490:	0017d793          	srli	a5,a5,0x1
   10494:	00e7f7b3          	and	a5,a5,a4
   10498:	00d7e7b3          	or	a5,a5,a3
   1049c:	00c0006f          	j	104a8 <__adddf3+0xa4>
   104a0:	7ff00693          	li	a3,2047
   104a4:	02d41a63          	bne	s0,a3,104d8 <__adddf3+0xd4>
   104a8:	0077f713          	andi	a4,a5,7
   104ac:	32070463          	beqz	a4,107d4 <__adddf3+0x3d0>
   104b0:	00f7f713          	andi	a4,a5,15
   104b4:	00400693          	li	a3,4
   104b8:	30d70e63          	beq	a4,a3,107d4 <__adddf3+0x3d0>
   104bc:	00478793          	addi	a5,a5,4
   104c0:	3140006f          	j	107d4 <__adddf3+0x3d0>
   104c4:	7ff00693          	li	a3,2047
   104c8:	fed400e3          	beq	s0,a3,104a8 <__adddf3+0xa4>
   104cc:	00100693          	li	a3,1
   104d0:	03769693          	slli	a3,a3,0x37
   104d4:	00d76733          	or	a4,a4,a3
   104d8:	03800613          	li	a2,56
   104dc:	00100693          	li	a3,1
   104e0:	00b64e63          	blt	a2,a1,104fc <__adddf3+0xf8>
   104e4:	04000693          	li	a3,64
   104e8:	00b75633          	srl	a2,a4,a1
   104ec:	40b685bb          	subw	a1,a3,a1
   104f0:	00b71733          	sll	a4,a4,a1
   104f4:	00e03733          	snez	a4,a4
   104f8:	00e666b3          	or	a3,a2,a4
   104fc:	00d787b3          	add	a5,a5,a3
   10500:	f6dff06f          	j	1046c <__adddf3+0x68>
   10504:	06058a63          	beqz	a1,10578 <__adddf3+0x174>
   10508:	04041a63          	bnez	s0,1055c <__adddf3+0x158>
   1050c:	2a078263          	beqz	a5,107b0 <__adddf3+0x3ac>
   10510:	01059863          	bne	a1,a6,10520 <__adddf3+0x11c>
   10514:	00e787b3          	add	a5,a5,a4
   10518:	00060413          	mv	s0,a2
   1051c:	f51ff06f          	j	1046c <__adddf3+0x68>
   10520:	7ff00593          	li	a1,2047
   10524:	2ab60063          	beq	a2,a1,107c4 <__adddf3+0x3c0>
   10528:	fff6c693          	not	a3,a3
   1052c:	0006869b          	sext.w	a3,a3
   10530:	03800513          	li	a0,56
   10534:	00100593          	li	a1,1
   10538:	00d54e63          	blt	a0,a3,10554 <__adddf3+0x150>
   1053c:	04000593          	li	a1,64
   10540:	00d7d533          	srl	a0,a5,a3
   10544:	40d586bb          	subw	a3,a1,a3
   10548:	00d797b3          	sll	a5,a5,a3
   1054c:	00f037b3          	snez	a5,a5
   10550:	00f565b3          	or	a1,a0,a5
   10554:	00e587b3          	add	a5,a1,a4
   10558:	fc1ff06f          	j	10518 <__adddf3+0x114>
   1055c:	7ff00593          	li	a1,2047
   10560:	26b60263          	beq	a2,a1,107c4 <__adddf3+0x3c0>
   10564:	00100593          	li	a1,1
   10568:	03759593          	slli	a1,a1,0x37
   1056c:	40d006bb          	negw	a3,a3
   10570:	00b7e7b3          	or	a5,a5,a1
   10574:	fbdff06f          	j	10530 <__adddf3+0x12c>
   10578:	00140693          	addi	a3,s0,1
   1057c:	7fe6f613          	andi	a2,a3,2046
   10580:	04061663          	bnez	a2,105cc <__adddf3+0x1c8>
   10584:	02041663          	bnez	s0,105b0 <__adddf3+0x1ac>
   10588:	22078a63          	beqz	a5,107bc <__adddf3+0x3b8>
   1058c:	f0070ee3          	beqz	a4,104a8 <__adddf3+0xa4>
   10590:	00e787b3          	add	a5,a5,a4
   10594:	00879713          	slli	a4,a5,0x8
   10598:	f00758e3          	bgez	a4,104a8 <__adddf3+0xa4>
   1059c:	03781813          	slli	a6,a6,0x37
   105a0:	fff80813          	addi	a6,a6,-1
   105a4:	0107f7b3          	and	a5,a5,a6
   105a8:	00100413          	li	s0,1
   105ac:	efdff06f          	j	104a8 <__adddf3+0xa4>
   105b0:	20078a63          	beqz	a5,107c4 <__adddf3+0x3c0>
   105b4:	16070e63          	beqz	a4,10730 <__adddf3+0x32c>
   105b8:	00100793          	li	a5,1
   105bc:	00000493          	li	s1,0
   105c0:	03679793          	slli	a5,a5,0x36
   105c4:	7ff00413          	li	s0,2047
   105c8:	20c0006f          	j	107d4 <__adddf3+0x3d0>
   105cc:	7ff00613          	li	a2,2047
   105d0:	1ec68e63          	beq	a3,a2,107cc <__adddf3+0x3c8>
   105d4:	00e787b3          	add	a5,a5,a4
   105d8:	0017d793          	srli	a5,a5,0x1
   105dc:	00068413          	mv	s0,a3
   105e0:	ec9ff06f          	j	104a8 <__adddf3+0xa4>
   105e4:	0006851b          	sext.w	a0,a3
   105e8:	06a05c63          	blez	a0,10660 <__adddf3+0x25c>
   105ec:	04061e63          	bnez	a2,10648 <__adddf3+0x244>
   105f0:	ea070ce3          	beqz	a4,104a8 <__adddf3+0xa4>
   105f4:	fff6851b          	addiw	a0,a3,-1
   105f8:	00051e63          	bnez	a0,10614 <__adddf3+0x210>
   105fc:	40e787b3          	sub	a5,a5,a4
   10600:	00879713          	slli	a4,a5,0x8
   10604:	ea0752e3          	bgez	a4,104a8 <__adddf3+0xa4>
   10608:	00979793          	slli	a5,a5,0x9
   1060c:	0097d913          	srli	s2,a5,0x9
   10610:	13c0006f          	j	1074c <__adddf3+0x348>
   10614:	7ff00693          	li	a3,2047
   10618:	e8d408e3          	beq	s0,a3,104a8 <__adddf3+0xa4>
   1061c:	03800613          	li	a2,56
   10620:	00100693          	li	a3,1
   10624:	00a64e63          	blt	a2,a0,10640 <__adddf3+0x23c>
   10628:	04000693          	li	a3,64
   1062c:	00a75633          	srl	a2,a4,a0
   10630:	40a6853b          	subw	a0,a3,a0
   10634:	00a71733          	sll	a4,a4,a0
   10638:	00e03733          	snez	a4,a4
   1063c:	00e666b3          	or	a3,a2,a4
   10640:	40d787b3          	sub	a5,a5,a3
   10644:	fbdff06f          	j	10600 <__adddf3+0x1fc>
   10648:	7ff00693          	li	a3,2047
   1064c:	e4d40ee3          	beq	s0,a3,104a8 <__adddf3+0xa4>
   10650:	00100693          	li	a3,1
   10654:	03769693          	slli	a3,a3,0x37
   10658:	00d76733          	or	a4,a4,a3
   1065c:	fc1ff06f          	j	1061c <__adddf3+0x218>
   10660:	06050c63          	beqz	a0,106d8 <__adddf3+0x2d4>
   10664:	04041c63          	bnez	s0,106bc <__adddf3+0x2b8>
   10668:	1e078063          	beqz	a5,10848 <__adddf3+0x444>
   1066c:	01051a63          	bne	a0,a6,10680 <__adddf3+0x27c>
   10670:	40f707b3          	sub	a5,a4,a5
   10674:	00060413          	mv	s0,a2
   10678:	00058493          	mv	s1,a1
   1067c:	f85ff06f          	j	10600 <__adddf3+0x1fc>
   10680:	7ff00513          	li	a0,2047
   10684:	1ca60a63          	beq	a2,a0,10858 <__adddf3+0x454>
   10688:	fff6c693          	not	a3,a3
   1068c:	0006869b          	sext.w	a3,a3
   10690:	03800813          	li	a6,56
   10694:	00100513          	li	a0,1
   10698:	00d84e63          	blt	a6,a3,106b4 <__adddf3+0x2b0>
   1069c:	04000513          	li	a0,64
   106a0:	00d7d833          	srl	a6,a5,a3
   106a4:	40d506bb          	subw	a3,a0,a3
   106a8:	00d797b3          	sll	a5,a5,a3
   106ac:	00f037b3          	snez	a5,a5
   106b0:	00f86533          	or	a0,a6,a5
   106b4:	40a707b3          	sub	a5,a4,a0
   106b8:	fbdff06f          	j	10674 <__adddf3+0x270>
   106bc:	7ff00513          	li	a0,2047
   106c0:	18a60c63          	beq	a2,a0,10858 <__adddf3+0x454>
   106c4:	00100513          	li	a0,1
   106c8:	03751513          	slli	a0,a0,0x37
   106cc:	40d006bb          	negw	a3,a3
   106d0:	00a7e7b3          	or	a5,a5,a0
   106d4:	fbdff06f          	j	10690 <__adddf3+0x28c>
   106d8:	00140693          	addi	a3,s0,1
   106dc:	7fe6f693          	andi	a3,a3,2046
   106e0:	04069c63          	bnez	a3,10738 <__adddf3+0x334>
   106e4:	02041e63          	bnez	s0,10720 <__adddf3+0x31c>
   106e8:	00079c63          	bnez	a5,10700 <__adddf3+0x2fc>
   106ec:	00070793          	mv	a5,a4
   106f0:	16071063          	bnez	a4,10850 <__adddf3+0x44c>
   106f4:	00000793          	li	a5,0
   106f8:	00000493          	li	s1,0
   106fc:	0d80006f          	j	107d4 <__adddf3+0x3d0>
   10700:	da0704e3          	beqz	a4,104a8 <__adddf3+0xa4>
   10704:	40e786b3          	sub	a3,a5,a4
   10708:	00869613          	slli	a2,a3,0x8
   1070c:	40f707b3          	sub	a5,a4,a5
   10710:	14064063          	bltz	a2,10850 <__adddf3+0x44c>
   10714:	fe0680e3          	beqz	a3,106f4 <__adddf3+0x2f0>
   10718:	00068793          	mv	a5,a3
   1071c:	d8dff06f          	j	104a8 <__adddf3+0xa4>
   10720:	e8079ae3          	bnez	a5,105b4 <__adddf3+0x1b0>
   10724:	e8070ae3          	beqz	a4,105b8 <__adddf3+0x1b4>
   10728:	00070793          	mv	a5,a4
   1072c:	00058493          	mv	s1,a1
   10730:	7ff00413          	li	s0,2047
   10734:	d75ff06f          	j	104a8 <__adddf3+0xa4>
   10738:	40e78933          	sub	s2,a5,a4
   1073c:	00891693          	slli	a3,s2,0x8
   10740:	0406d463          	bgez	a3,10788 <__adddf3+0x384>
   10744:	40f70933          	sub	s2,a4,a5
   10748:	00058493          	mv	s1,a1
   1074c:	00090513          	mv	a0,s2
   10750:	375000ef          	jal	ra,112c4 <__clzdi2>
   10754:	ff85079b          	addiw	a5,a0,-8
   10758:	00f91933          	sll	s2,s2,a5
   1075c:	0287ce63          	blt	a5,s0,10798 <__adddf3+0x394>
   10760:	4087853b          	subw	a0,a5,s0
   10764:	0015051b          	addiw	a0,a0,1
   10768:	04000413          	li	s0,64
   1076c:	00a957b3          	srl	a5,s2,a0
   10770:	40a4053b          	subw	a0,s0,a0
   10774:	00a91933          	sll	s2,s2,a0
   10778:	01203933          	snez	s2,s2
   1077c:	0127e7b3          	or	a5,a5,s2
   10780:	00000413          	li	s0,0
   10784:	d25ff06f          	j	104a8 <__adddf3+0xa4>
   10788:	fc0912e3          	bnez	s2,1074c <__adddf3+0x348>
   1078c:	00000793          	li	a5,0
   10790:	00000413          	li	s0,0
   10794:	f65ff06f          	j	106f8 <__adddf3+0x2f4>
   10798:	40f40433          	sub	s0,s0,a5
   1079c:	fff00793          	li	a5,-1
   107a0:	03779793          	slli	a5,a5,0x37
   107a4:	fff78793          	addi	a5,a5,-1
   107a8:	00f977b3          	and	a5,s2,a5
   107ac:	cfdff06f          	j	104a8 <__adddf3+0xa4>
   107b0:	00070793          	mv	a5,a4
   107b4:	00060413          	mv	s0,a2
   107b8:	cf1ff06f          	j	104a8 <__adddf3+0xa4>
   107bc:	00070793          	mv	a5,a4
   107c0:	ce9ff06f          	j	104a8 <__adddf3+0xa4>
   107c4:	00070793          	mv	a5,a4
   107c8:	f69ff06f          	j	10730 <__adddf3+0x32c>
   107cc:	7ff00413          	li	s0,2047
   107d0:	00000793          	li	a5,0
   107d4:	00879713          	slli	a4,a5,0x8
   107d8:	02075063          	bgez	a4,107f8 <__adddf3+0x3f4>
   107dc:	00140413          	addi	s0,s0,1
   107e0:	7ff00713          	li	a4,2047
   107e4:	08e40063          	beq	s0,a4,10864 <__adddf3+0x460>
   107e8:	fff00713          	li	a4,-1
   107ec:	03771713          	slli	a4,a4,0x37
   107f0:	fff70713          	addi	a4,a4,-1
   107f4:	00e7f7b3          	and	a5,a5,a4
   107f8:	7ff00713          	li	a4,2047
   107fc:	0037d793          	srli	a5,a5,0x3
   10800:	00e41a63          	bne	s0,a4,10814 <__adddf3+0x410>
   10804:	00078863          	beqz	a5,10814 <__adddf3+0x410>
   10808:	00100793          	li	a5,1
   1080c:	03379793          	slli	a5,a5,0x33
   10810:	00000493          	li	s1,0
   10814:	7ff47413          	andi	s0,s0,2047
   10818:	00c79793          	slli	a5,a5,0xc
   1081c:	03441413          	slli	s0,s0,0x34
   10820:	00c7d793          	srli	a5,a5,0xc
   10824:	01813083          	ld	ra,24(sp)
   10828:	00f467b3          	or	a5,s0,a5
   1082c:	01013403          	ld	s0,16(sp)
   10830:	03f49513          	slli	a0,s1,0x3f
   10834:	00013903          	ld	s2,0(sp)
   10838:	00813483          	ld	s1,8(sp)
   1083c:	00a7e533          	or	a0,a5,a0
   10840:	02010113          	addi	sp,sp,32
   10844:	00008067          	ret
   10848:	00070793          	mv	a5,a4
   1084c:	00060413          	mv	s0,a2
   10850:	00058493          	mv	s1,a1
   10854:	c55ff06f          	j	104a8 <__adddf3+0xa4>
   10858:	00070793          	mv	a5,a4
   1085c:	7ff00413          	li	s0,2047
   10860:	ff1ff06f          	j	10850 <__adddf3+0x44c>
   10864:	00000793          	li	a5,0
   10868:	f91ff06f          	j	107f8 <__adddf3+0x3f4>

000000000001086c <__muldf3>:
   1086c:	fc010113          	addi	sp,sp,-64
   10870:	03455793          	srli	a5,a0,0x34
   10874:	02913423          	sd	s1,40(sp)
   10878:	03213023          	sd	s2,32(sp)
   1087c:	01413823          	sd	s4,16(sp)
   10880:	00c51493          	slli	s1,a0,0xc
   10884:	02113c23          	sd	ra,56(sp)
   10888:	02813823          	sd	s0,48(sp)
   1088c:	01313c23          	sd	s3,24(sp)
   10890:	01513423          	sd	s5,8(sp)
   10894:	03579713          	slli	a4,a5,0x35
   10898:	00058a13          	mv	s4,a1
   1089c:	00c4d493          	srli	s1,s1,0xc
   108a0:	03f55913          	srli	s2,a0,0x3f
   108a4:	08070e63          	beqz	a4,10940 <__muldf3+0xd4>
   108a8:	7ff7f993          	andi	s3,a5,2047
   108ac:	7ff00793          	li	a5,2047
   108b0:	0af98a63          	beq	s3,a5,10964 <__muldf3+0xf8>
   108b4:	00100793          	li	a5,1
   108b8:	00349493          	slli	s1,s1,0x3
   108bc:	03779793          	slli	a5,a5,0x37
   108c0:	00f4e4b3          	or	s1,s1,a5
   108c4:	c0198993          	addi	s3,s3,-1023
   108c8:	00000a93          	li	s5,0
   108cc:	034a5793          	srli	a5,s4,0x34
   108d0:	00ca1413          	slli	s0,s4,0xc
   108d4:	03579693          	slli	a3,a5,0x35
   108d8:	00c45413          	srli	s0,s0,0xc
   108dc:	7ff7f713          	andi	a4,a5,2047
   108e0:	03fa5a13          	srli	s4,s4,0x3f
   108e4:	0a068063          	beqz	a3,10984 <__muldf3+0x118>
   108e8:	7ff00793          	li	a5,2047
   108ec:	0af70e63          	beq	a4,a5,109a8 <__muldf3+0x13c>
   108f0:	00100793          	li	a5,1
   108f4:	00341413          	slli	s0,s0,0x3
   108f8:	03779793          	slli	a5,a5,0x37
   108fc:	00f46433          	or	s0,s0,a5
   10900:	c0170713          	addi	a4,a4,-1023
   10904:	00000793          	li	a5,0
   10908:	00e989b3          	add	s3,s3,a4
   1090c:	002a9713          	slli	a4,s5,0x2
   10910:	00f76733          	or	a4,a4,a5
   10914:	fff70713          	addi	a4,a4,-1
   10918:	00e00693          	li	a3,14
   1091c:	01494833          	xor	a6,s2,s4
   10920:	00198893          	addi	a7,s3,1
   10924:	0ae6e263          	bltu	a3,a4,109c8 <__muldf3+0x15c>
   10928:	000116b7          	lui	a3,0x11
   1092c:	00271713          	slli	a4,a4,0x2
   10930:	74068693          	addi	a3,a3,1856 # 11740 <__errno+0x14>
   10934:	00d70733          	add	a4,a4,a3
   10938:	00072703          	lw	a4,0(a4)
   1093c:	00070067          	jr	a4
   10940:	02048c63          	beqz	s1,10978 <__muldf3+0x10c>
   10944:	00048513          	mv	a0,s1
   10948:	17d000ef          	jal	ra,112c4 <__clzdi2>
   1094c:	0005071b          	sext.w	a4,a0
   10950:	c0d00993          	li	s3,-1011
   10954:	ff85051b          	addiw	a0,a0,-8
   10958:	00a494b3          	sll	s1,s1,a0
   1095c:	40e989b3          	sub	s3,s3,a4
   10960:	f69ff06f          	j	108c8 <__muldf3+0x5c>
   10964:	7ff00993          	li	s3,2047
   10968:	00200a93          	li	s5,2
   1096c:	f60480e3          	beqz	s1,108cc <__muldf3+0x60>
   10970:	00300a93          	li	s5,3
   10974:	f59ff06f          	j	108cc <__muldf3+0x60>
   10978:	00000993          	li	s3,0
   1097c:	00100a93          	li	s5,1
   10980:	f4dff06f          	j	108cc <__muldf3+0x60>
   10984:	02040c63          	beqz	s0,109bc <__muldf3+0x150>
   10988:	00040513          	mv	a0,s0
   1098c:	139000ef          	jal	ra,112c4 <__clzdi2>
   10990:	0005079b          	sext.w	a5,a0
   10994:	c0d00713          	li	a4,-1011
   10998:	ff85051b          	addiw	a0,a0,-8
   1099c:	00a41433          	sll	s0,s0,a0
   109a0:	40f70733          	sub	a4,a4,a5
   109a4:	f61ff06f          	j	10904 <__muldf3+0x98>
   109a8:	7ff00713          	li	a4,2047
   109ac:	00200793          	li	a5,2
   109b0:	f4040ce3          	beqz	s0,10908 <__muldf3+0x9c>
   109b4:	00300793          	li	a5,3
   109b8:	f51ff06f          	j	10908 <__muldf3+0x9c>
   109bc:	00000713          	li	a4,0
   109c0:	00100793          	li	a5,1
   109c4:	f45ff06f          	j	10908 <__muldf3+0x9c>
   109c8:	fff00793          	li	a5,-1
   109cc:	0207d793          	srli	a5,a5,0x20
   109d0:	0204de93          	srli	t4,s1,0x20
   109d4:	02045713          	srli	a4,s0,0x20
   109d8:	00f4f4b3          	and	s1,s1,a5
   109dc:	00f47433          	and	s0,s0,a5
   109e0:	00048513          	mv	a0,s1
   109e4:	00040593          	mv	a1,s0
   109e8:	0b9000ef          	jal	ra,112a0 <__muldi3>
   109ec:	00050313          	mv	t1,a0
   109f0:	00070593          	mv	a1,a4
   109f4:	00048513          	mv	a0,s1
   109f8:	0a9000ef          	jal	ra,112a0 <__muldi3>
   109fc:	00050793          	mv	a5,a0
   10a00:	00040593          	mv	a1,s0
   10a04:	000e8513          	mv	a0,t4
   10a08:	099000ef          	jal	ra,112a0 <__muldi3>
   10a0c:	00050e13          	mv	t3,a0
   10a10:	00070593          	mv	a1,a4
   10a14:	000e8513          	mv	a0,t4
   10a18:	089000ef          	jal	ra,112a0 <__muldi3>
   10a1c:	02035713          	srli	a4,t1,0x20
   10a20:	01c787b3          	add	a5,a5,t3
   10a24:	00f707b3          	add	a5,a4,a5
   10a28:	01c7f863          	bgeu	a5,t3,10a38 <__muldf3+0x1cc>
   10a2c:	00100713          	li	a4,1
   10a30:	02071713          	slli	a4,a4,0x20
   10a34:	00e50533          	add	a0,a0,a4
   10a38:	fff00413          	li	s0,-1
   10a3c:	02045413          	srli	s0,s0,0x20
   10a40:	0087f733          	and	a4,a5,s0
   10a44:	00837333          	and	t1,t1,s0
   10a48:	02071713          	slli	a4,a4,0x20
   10a4c:	00670733          	add	a4,a4,t1
   10a50:	00971413          	slli	s0,a4,0x9
   10a54:	0207d793          	srli	a5,a5,0x20
   10a58:	00803433          	snez	s0,s0
   10a5c:	03775713          	srli	a4,a4,0x37
   10a60:	00a787b3          	add	a5,a5,a0
   10a64:	00e46733          	or	a4,s0,a4
   10a68:	00979793          	slli	a5,a5,0x9
   10a6c:	00e7e433          	or	s0,a5,a4
   10a70:	00779713          	slli	a4,a5,0x7
   10a74:	08075e63          	bgez	a4,10b10 <__muldf3+0x2a4>
   10a78:	00145793          	srli	a5,s0,0x1
   10a7c:	00147413          	andi	s0,s0,1
   10a80:	0087e433          	or	s0,a5,s0
   10a84:	3ff88793          	addi	a5,a7,1023
   10a88:	08f05863          	blez	a5,10b18 <__muldf3+0x2ac>
   10a8c:	00747713          	andi	a4,s0,7
   10a90:	00070a63          	beqz	a4,10aa4 <__muldf3+0x238>
   10a94:	00f47713          	andi	a4,s0,15
   10a98:	00400693          	li	a3,4
   10a9c:	00d70463          	beq	a4,a3,10aa4 <__muldf3+0x238>
   10aa0:	00440413          	addi	s0,s0,4
   10aa4:	00741713          	slli	a4,s0,0x7
   10aa8:	00075c63          	bgez	a4,10ac0 <__muldf3+0x254>
   10aac:	fff00793          	li	a5,-1
   10ab0:	03879793          	slli	a5,a5,0x38
   10ab4:	fff78793          	addi	a5,a5,-1
   10ab8:	00f47433          	and	s0,s0,a5
   10abc:	40088793          	addi	a5,a7,1024
   10ac0:	7fe00713          	li	a4,2046
   10ac4:	00345413          	srli	s0,s0,0x3
   10ac8:	0af75c63          	bge	a4,a5,10b80 <__muldf3+0x314>
   10acc:	00000413          	li	s0,0
   10ad0:	7ff00793          	li	a5,2047
   10ad4:	0ac0006f          	j	10b80 <__muldf3+0x314>
   10ad8:	00090813          	mv	a6,s2
   10adc:	00048413          	mv	s0,s1
   10ae0:	000a8793          	mv	a5,s5
   10ae4:	00200713          	li	a4,2
   10ae8:	fee782e3          	beq	a5,a4,10acc <__muldf3+0x260>
   10aec:	00300713          	li	a4,3
   10af0:	08e78063          	beq	a5,a4,10b70 <__muldf3+0x304>
   10af4:	00100713          	li	a4,1
   10af8:	f8e796e3          	bne	a5,a4,10a84 <__muldf3+0x218>
   10afc:	00000413          	li	s0,0
   10b00:	00000793          	li	a5,0
   10b04:	07c0006f          	j	10b80 <__muldf3+0x314>
   10b08:	000a0813          	mv	a6,s4
   10b0c:	fd9ff06f          	j	10ae4 <__muldf3+0x278>
   10b10:	00098893          	mv	a7,s3
   10b14:	f71ff06f          	j	10a84 <__muldf3+0x218>
   10b18:	00100513          	li	a0,1
   10b1c:	40f50533          	sub	a0,a0,a5
   10b20:	03800793          	li	a5,56
   10b24:	fca7cce3          	blt	a5,a0,10afc <__muldf3+0x290>
   10b28:	04000713          	li	a4,64
   10b2c:	00a457b3          	srl	a5,s0,a0
   10b30:	40a7053b          	subw	a0,a4,a0
   10b34:	00a41433          	sll	s0,s0,a0
   10b38:	00803433          	snez	s0,s0
   10b3c:	0087e433          	or	s0,a5,s0
   10b40:	00747793          	andi	a5,s0,7
   10b44:	00078a63          	beqz	a5,10b58 <__muldf3+0x2ec>
   10b48:	00f47793          	andi	a5,s0,15
   10b4c:	00400713          	li	a4,4
   10b50:	00e78463          	beq	a5,a4,10b58 <__muldf3+0x2ec>
   10b54:	00440413          	addi	s0,s0,4
   10b58:	00841793          	slli	a5,s0,0x8
   10b5c:	00345413          	srli	s0,s0,0x3
   10b60:	fa07d0e3          	bgez	a5,10b00 <__muldf3+0x294>
   10b64:	00000413          	li	s0,0
   10b68:	00100793          	li	a5,1
   10b6c:	0140006f          	j	10b80 <__muldf3+0x314>
   10b70:	00100413          	li	s0,1
   10b74:	03341413          	slli	s0,s0,0x33
   10b78:	7ff00793          	li	a5,2047
   10b7c:	00000813          	li	a6,0
   10b80:	7ff7f793          	andi	a5,a5,2047
   10b84:	00c41413          	slli	s0,s0,0xc
   10b88:	03479793          	slli	a5,a5,0x34
   10b8c:	00c45413          	srli	s0,s0,0xc
   10b90:	0087e433          	or	s0,a5,s0
   10b94:	03f81513          	slli	a0,a6,0x3f
   10b98:	03813083          	ld	ra,56(sp)
   10b9c:	00a46533          	or	a0,s0,a0
   10ba0:	03013403          	ld	s0,48(sp)
   10ba4:	02813483          	ld	s1,40(sp)
   10ba8:	02013903          	ld	s2,32(sp)
   10bac:	01813983          	ld	s3,24(sp)
   10bb0:	01013a03          	ld	s4,16(sp)
   10bb4:	00813a83          	ld	s5,8(sp)
   10bb8:	04010113          	addi	sp,sp,64
   10bbc:	00008067          	ret

0000000000010bc0 <__subdf3>:
   10bc0:	fff00713          	li	a4,-1
   10bc4:	fe010113          	addi	sp,sp,-32
   10bc8:	00c75713          	srli	a4,a4,0xc
   10bcc:	0345d613          	srli	a2,a1,0x34
   10bd0:	03455813          	srli	a6,a0,0x34
   10bd4:	00a777b3          	and	a5,a4,a0
   10bd8:	00813823          	sd	s0,16(sp)
   10bdc:	00b77733          	and	a4,a4,a1
   10be0:	00913423          	sd	s1,8(sp)
   10be4:	7ff87813          	andi	a6,a6,2047
   10be8:	00113c23          	sd	ra,24(sp)
   10bec:	01213023          	sd	s2,0(sp)
   10bf0:	7ff67613          	andi	a2,a2,2047
   10bf4:	7ff00693          	li	a3,2047
   10bf8:	00080413          	mv	s0,a6
   10bfc:	03f55493          	srli	s1,a0,0x3f
   10c00:	00379793          	slli	a5,a5,0x3
   10c04:	03f5d593          	srli	a1,a1,0x3f
   10c08:	00371713          	slli	a4,a4,0x3
   10c0c:	00d61463          	bne	a2,a3,10c14 <__subdf3+0x54>
   10c10:	00071463          	bnez	a4,10c18 <__subdf3+0x58>
   10c14:	0015c593          	xori	a1,a1,1
   10c18:	40c806bb          	subw	a3,a6,a2
   10c1c:	0006851b          	sext.w	a0,a3
   10c20:	18959e63          	bne	a1,s1,10dbc <__subdf3+0x1fc>
   10c24:	0aa05863          	blez	a0,10cd4 <__subdf3+0x114>
   10c28:	06061663          	bnez	a2,10c94 <__subdf3+0xd4>
   10c2c:	04070663          	beqz	a4,10c78 <__subdf3+0xb8>
   10c30:	fff6851b          	addiw	a0,a3,-1
   10c34:	02051e63          	bnez	a0,10c70 <__subdf3+0xb0>
   10c38:	00e787b3          	add	a5,a5,a4
   10c3c:	00879713          	slli	a4,a5,0x8
   10c40:	02075c63          	bgez	a4,10c78 <__subdf3+0xb8>
   10c44:	00140413          	addi	s0,s0,1
   10c48:	7ff00713          	li	a4,2047
   10c4c:	36e40263          	beq	s0,a4,10fb0 <__subdf3+0x3f0>
   10c50:	1ff00713          	li	a4,511
   10c54:	03671713          	slli	a4,a4,0x36
   10c58:	0017f693          	andi	a3,a5,1
   10c5c:	fff70713          	addi	a4,a4,-1
   10c60:	0017d793          	srli	a5,a5,0x1
   10c64:	00e7f7b3          	and	a5,a5,a4
   10c68:	00d7e7b3          	or	a5,a5,a3
   10c6c:	00c0006f          	j	10c78 <__subdf3+0xb8>
   10c70:	7ff00693          	li	a3,2047
   10c74:	02d81a63          	bne	a6,a3,10ca8 <__subdf3+0xe8>
   10c78:	0077f713          	andi	a4,a5,7
   10c7c:	32070c63          	beqz	a4,10fb4 <__subdf3+0x3f4>
   10c80:	00f7f713          	andi	a4,a5,15
   10c84:	00400693          	li	a3,4
   10c88:	32d70663          	beq	a4,a3,10fb4 <__subdf3+0x3f4>
   10c8c:	00478793          	addi	a5,a5,4
   10c90:	3240006f          	j	10fb4 <__subdf3+0x3f4>
   10c94:	7ff00693          	li	a3,2047
   10c98:	fed800e3          	beq	a6,a3,10c78 <__subdf3+0xb8>
   10c9c:	00100693          	li	a3,1
   10ca0:	03769693          	slli	a3,a3,0x37
   10ca4:	00d76733          	or	a4,a4,a3
   10ca8:	03800613          	li	a2,56
   10cac:	00100693          	li	a3,1
   10cb0:	00a64e63          	blt	a2,a0,10ccc <__subdf3+0x10c>
   10cb4:	04000693          	li	a3,64
   10cb8:	00a75633          	srl	a2,a4,a0
   10cbc:	40a6853b          	subw	a0,a3,a0
   10cc0:	00a71733          	sll	a4,a4,a0
   10cc4:	00e03733          	snez	a4,a4
   10cc8:	00e666b3          	or	a3,a2,a4
   10ccc:	00d787b3          	add	a5,a5,a3
   10cd0:	f6dff06f          	j	10c3c <__subdf3+0x7c>
   10cd4:	06050c63          	beqz	a0,10d4c <__subdf3+0x18c>
   10cd8:	04081c63          	bnez	a6,10d30 <__subdf3+0x170>
   10cdc:	2a078a63          	beqz	a5,10f90 <__subdf3+0x3d0>
   10ce0:	fff00593          	li	a1,-1
   10ce4:	00b51863          	bne	a0,a1,10cf4 <__subdf3+0x134>
   10ce8:	00e787b3          	add	a5,a5,a4
   10cec:	00060413          	mv	s0,a2
   10cf0:	f4dff06f          	j	10c3c <__subdf3+0x7c>
   10cf4:	7ff00593          	li	a1,2047
   10cf8:	2ab60663          	beq	a2,a1,10fa4 <__subdf3+0x3e4>
   10cfc:	fff6c693          	not	a3,a3
   10d00:	0006869b          	sext.w	a3,a3
   10d04:	03800513          	li	a0,56
   10d08:	00100593          	li	a1,1
   10d0c:	00d54e63          	blt	a0,a3,10d28 <__subdf3+0x168>
   10d10:	04000593          	li	a1,64
   10d14:	00d7d533          	srl	a0,a5,a3
   10d18:	40d586bb          	subw	a3,a1,a3
   10d1c:	00d797b3          	sll	a5,a5,a3
   10d20:	00f037b3          	snez	a5,a5
   10d24:	00f565b3          	or	a1,a0,a5
   10d28:	00e587b3          	add	a5,a1,a4
   10d2c:	fc1ff06f          	j	10cec <__subdf3+0x12c>
   10d30:	7ff00593          	li	a1,2047
   10d34:	26b60863          	beq	a2,a1,10fa4 <__subdf3+0x3e4>
   10d38:	00100593          	li	a1,1
   10d3c:	03759593          	slli	a1,a1,0x37
   10d40:	40d006bb          	negw	a3,a3
   10d44:	00b7e7b3          	or	a5,a5,a1
   10d48:	fbdff06f          	j	10d04 <__subdf3+0x144>
   10d4c:	00180693          	addi	a3,a6,1
   10d50:	7fe6f613          	andi	a2,a3,2046
   10d54:	04061863          	bnez	a2,10da4 <__subdf3+0x1e4>
   10d58:	02081863          	bnez	a6,10d88 <__subdf3+0x1c8>
   10d5c:	24078063          	beqz	a5,10f9c <__subdf3+0x3dc>
   10d60:	f0070ce3          	beqz	a4,10c78 <__subdf3+0xb8>
   10d64:	00e787b3          	add	a5,a5,a4
   10d68:	00879713          	slli	a4,a5,0x8
   10d6c:	f00756e3          	bgez	a4,10c78 <__subdf3+0xb8>
   10d70:	fff00713          	li	a4,-1
   10d74:	03771713          	slli	a4,a4,0x37
   10d78:	fff70713          	addi	a4,a4,-1
   10d7c:	00e7f7b3          	and	a5,a5,a4
   10d80:	00100413          	li	s0,1
   10d84:	ef5ff06f          	j	10c78 <__subdf3+0xb8>
   10d88:	20078e63          	beqz	a5,10fa4 <__subdf3+0x3e4>
   10d8c:	18070063          	beqz	a4,10f0c <__subdf3+0x34c>
   10d90:	00100793          	li	a5,1
   10d94:	00000493          	li	s1,0
   10d98:	03679793          	slli	a5,a5,0x36
   10d9c:	7ff00413          	li	s0,2047
   10da0:	2140006f          	j	10fb4 <__subdf3+0x3f4>
   10da4:	7ff00613          	li	a2,2047
   10da8:	20c68263          	beq	a3,a2,10fac <__subdf3+0x3ec>
   10dac:	00e787b3          	add	a5,a5,a4
   10db0:	0017d793          	srli	a5,a5,0x1
   10db4:	00068413          	mv	s0,a3
   10db8:	ec1ff06f          	j	10c78 <__subdf3+0xb8>
   10dbc:	06a05c63          	blez	a0,10e34 <__subdf3+0x274>
   10dc0:	04061e63          	bnez	a2,10e1c <__subdf3+0x25c>
   10dc4:	ea070ae3          	beqz	a4,10c78 <__subdf3+0xb8>
   10dc8:	fff6851b          	addiw	a0,a3,-1
   10dcc:	00051e63          	bnez	a0,10de8 <__subdf3+0x228>
   10dd0:	40e787b3          	sub	a5,a5,a4
   10dd4:	00879713          	slli	a4,a5,0x8
   10dd8:	ea0750e3          	bgez	a4,10c78 <__subdf3+0xb8>
   10ddc:	00979793          	slli	a5,a5,0x9
   10de0:	0097d913          	srli	s2,a5,0x9
   10de4:	1440006f          	j	10f28 <__subdf3+0x368>
   10de8:	7ff00693          	li	a3,2047
   10dec:	e8d806e3          	beq	a6,a3,10c78 <__subdf3+0xb8>
   10df0:	03800613          	li	a2,56
   10df4:	00100693          	li	a3,1
   10df8:	00a64e63          	blt	a2,a0,10e14 <__subdf3+0x254>
   10dfc:	04000693          	li	a3,64
   10e00:	00a75633          	srl	a2,a4,a0
   10e04:	40a6853b          	subw	a0,a3,a0
   10e08:	00a71733          	sll	a4,a4,a0
   10e0c:	00e03733          	snez	a4,a4
   10e10:	00e666b3          	or	a3,a2,a4
   10e14:	40d787b3          	sub	a5,a5,a3
   10e18:	fbdff06f          	j	10dd4 <__subdf3+0x214>
   10e1c:	7ff00693          	li	a3,2047
   10e20:	e4d80ce3          	beq	a6,a3,10c78 <__subdf3+0xb8>
   10e24:	00100693          	li	a3,1
   10e28:	03769693          	slli	a3,a3,0x37
   10e2c:	00d76733          	or	a4,a4,a3
   10e30:	fc1ff06f          	j	10df0 <__subdf3+0x230>
   10e34:	06050e63          	beqz	a0,10eb0 <__subdf3+0x2f0>
   10e38:	04081e63          	bnez	a6,10e94 <__subdf3+0x2d4>
   10e3c:	1e078663          	beqz	a5,11028 <__subdf3+0x468>
   10e40:	fff00813          	li	a6,-1
   10e44:	01051a63          	bne	a0,a6,10e58 <__subdf3+0x298>
   10e48:	40f707b3          	sub	a5,a4,a5
   10e4c:	00060413          	mv	s0,a2
   10e50:	00058493          	mv	s1,a1
   10e54:	f81ff06f          	j	10dd4 <__subdf3+0x214>
   10e58:	7ff00513          	li	a0,2047
   10e5c:	1ca60c63          	beq	a2,a0,11034 <__subdf3+0x474>
   10e60:	fff6c693          	not	a3,a3
   10e64:	0006869b          	sext.w	a3,a3
   10e68:	03800813          	li	a6,56
   10e6c:	00100513          	li	a0,1
   10e70:	00d84e63          	blt	a6,a3,10e8c <__subdf3+0x2cc>
   10e74:	04000513          	li	a0,64
   10e78:	00d7d833          	srl	a6,a5,a3
   10e7c:	40d506bb          	subw	a3,a0,a3
   10e80:	00d797b3          	sll	a5,a5,a3
   10e84:	00f037b3          	snez	a5,a5
   10e88:	00f86533          	or	a0,a6,a5
   10e8c:	40a707b3          	sub	a5,a4,a0
   10e90:	fbdff06f          	j	10e4c <__subdf3+0x28c>
   10e94:	7ff00513          	li	a0,2047
   10e98:	18a60e63          	beq	a2,a0,11034 <__subdf3+0x474>
   10e9c:	00100513          	li	a0,1
   10ea0:	03751513          	slli	a0,a0,0x37
   10ea4:	40d006bb          	negw	a3,a3
   10ea8:	00a7e7b3          	or	a5,a5,a0
   10eac:	fbdff06f          	j	10e68 <__subdf3+0x2a8>
   10eb0:	00180693          	addi	a3,a6,1
   10eb4:	7fe6f693          	andi	a3,a3,2046
   10eb8:	04069e63          	bnez	a3,10f14 <__subdf3+0x354>
   10ebc:	04081063          	bnez	a6,10efc <__subdf3+0x33c>
   10ec0:	00079c63          	bnez	a5,10ed8 <__subdf3+0x318>
   10ec4:	00000493          	li	s1,0
   10ec8:	0e070663          	beqz	a4,10fb4 <__subdf3+0x3f4>
   10ecc:	00070793          	mv	a5,a4
   10ed0:	00058493          	mv	s1,a1
   10ed4:	da5ff06f          	j	10c78 <__subdf3+0xb8>
   10ed8:	da0700e3          	beqz	a4,10c78 <__subdf3+0xb8>
   10edc:	40e786b3          	sub	a3,a5,a4
   10ee0:	00869613          	slli	a2,a3,0x8
   10ee4:	40f707b3          	sub	a5,a4,a5
   10ee8:	fe0644e3          	bltz	a2,10ed0 <__subdf3+0x310>
   10eec:	00000793          	li	a5,0
   10ef0:	08068063          	beqz	a3,10f70 <__subdf3+0x3b0>
   10ef4:	00068793          	mv	a5,a3
   10ef8:	d81ff06f          	j	10c78 <__subdf3+0xb8>
   10efc:	e80798e3          	bnez	a5,10d8c <__subdf3+0x1cc>
   10f00:	e80708e3          	beqz	a4,10d90 <__subdf3+0x1d0>
   10f04:	00070793          	mv	a5,a4
   10f08:	00058493          	mv	s1,a1
   10f0c:	7ff00413          	li	s0,2047
   10f10:	d69ff06f          	j	10c78 <__subdf3+0xb8>
   10f14:	40e78933          	sub	s2,a5,a4
   10f18:	00891693          	slli	a3,s2,0x8
   10f1c:	0406d463          	bgez	a3,10f64 <__subdf3+0x3a4>
   10f20:	40f70933          	sub	s2,a4,a5
   10f24:	00058493          	mv	s1,a1
   10f28:	00090513          	mv	a0,s2
   10f2c:	398000ef          	jal	ra,112c4 <__clzdi2>
   10f30:	ff85079b          	addiw	a5,a0,-8
   10f34:	00f91933          	sll	s2,s2,a5
   10f38:	0487c063          	blt	a5,s0,10f78 <__subdf3+0x3b8>
   10f3c:	4087853b          	subw	a0,a5,s0
   10f40:	0015051b          	addiw	a0,a0,1
   10f44:	04000413          	li	s0,64
   10f48:	00a957b3          	srl	a5,s2,a0
   10f4c:	40a4053b          	subw	a0,s0,a0
   10f50:	00a91933          	sll	s2,s2,a0
   10f54:	01203933          	snez	s2,s2
   10f58:	0127e7b3          	or	a5,a5,s2
   10f5c:	00000413          	li	s0,0
   10f60:	d19ff06f          	j	10c78 <__subdf3+0xb8>
   10f64:	fc0912e3          	bnez	s2,10f28 <__subdf3+0x368>
   10f68:	00000793          	li	a5,0
   10f6c:	00000413          	li	s0,0
   10f70:	00000493          	li	s1,0
   10f74:	0400006f          	j	10fb4 <__subdf3+0x3f4>
   10f78:	40f40433          	sub	s0,s0,a5
   10f7c:	fff00793          	li	a5,-1
   10f80:	03779793          	slli	a5,a5,0x37
   10f84:	fff78793          	addi	a5,a5,-1
   10f88:	00f977b3          	and	a5,s2,a5
   10f8c:	cedff06f          	j	10c78 <__subdf3+0xb8>
   10f90:	00070793          	mv	a5,a4
   10f94:	00060413          	mv	s0,a2
   10f98:	ce1ff06f          	j	10c78 <__subdf3+0xb8>
   10f9c:	00070793          	mv	a5,a4
   10fa0:	cd9ff06f          	j	10c78 <__subdf3+0xb8>
   10fa4:	00070793          	mv	a5,a4
   10fa8:	f65ff06f          	j	10f0c <__subdf3+0x34c>
   10fac:	7ff00413          	li	s0,2047
   10fb0:	00000793          	li	a5,0
   10fb4:	00879713          	slli	a4,a5,0x8
   10fb8:	02075063          	bgez	a4,10fd8 <__subdf3+0x418>
   10fbc:	00140413          	addi	s0,s0,1
   10fc0:	7ff00713          	li	a4,2047
   10fc4:	06e40e63          	beq	s0,a4,11040 <__subdf3+0x480>
   10fc8:	fff00713          	li	a4,-1
   10fcc:	03771713          	slli	a4,a4,0x37
   10fd0:	fff70713          	addi	a4,a4,-1
   10fd4:	00e7f7b3          	and	a5,a5,a4
   10fd8:	7ff00713          	li	a4,2047
   10fdc:	0037d793          	srli	a5,a5,0x3
   10fe0:	00e41a63          	bne	s0,a4,10ff4 <__subdf3+0x434>
   10fe4:	00078863          	beqz	a5,10ff4 <__subdf3+0x434>
   10fe8:	00100793          	li	a5,1
   10fec:	03379793          	slli	a5,a5,0x33
   10ff0:	00000493          	li	s1,0
   10ff4:	7ff47413          	andi	s0,s0,2047
   10ff8:	00c79793          	slli	a5,a5,0xc
   10ffc:	03441413          	slli	s0,s0,0x34
   11000:	00c7d793          	srli	a5,a5,0xc
   11004:	01813083          	ld	ra,24(sp)
   11008:	00f467b3          	or	a5,s0,a5
   1100c:	01013403          	ld	s0,16(sp)
   11010:	03f49513          	slli	a0,s1,0x3f
   11014:	00013903          	ld	s2,0(sp)
   11018:	00813483          	ld	s1,8(sp)
   1101c:	00a7e533          	or	a0,a5,a0
   11020:	02010113          	addi	sp,sp,32
   11024:	00008067          	ret
   11028:	00070793          	mv	a5,a4
   1102c:	00060413          	mv	s0,a2
   11030:	ea1ff06f          	j	10ed0 <__subdf3+0x310>
   11034:	00070793          	mv	a5,a4
   11038:	7ff00413          	li	s0,2047
   1103c:	e95ff06f          	j	10ed0 <__subdf3+0x310>
   11040:	00000793          	li	a5,0
   11044:	f95ff06f          	j	10fd8 <__subdf3+0x418>

0000000000011048 <__floatsidf>:
   11048:	fe010113          	addi	sp,sp,-32
   1104c:	00113c23          	sd	ra,24(sp)
   11050:	00813823          	sd	s0,16(sp)
   11054:	00913423          	sd	s1,8(sp)
   11058:	06050263          	beqz	a0,110bc <__floatsidf+0x74>
   1105c:	0005079b          	sext.w	a5,a0
   11060:	03f55493          	srli	s1,a0,0x3f
   11064:	00055463          	bgez	a0,1106c <__floatsidf+0x24>
   11068:	40f007bb          	negw	a5,a5
   1106c:	02079413          	slli	s0,a5,0x20
   11070:	02045413          	srli	s0,s0,0x20
   11074:	00040513          	mv	a0,s0
   11078:	24c000ef          	jal	ra,112c4 <__clzdi2>
   1107c:	43e00793          	li	a5,1086
   11080:	40a7873b          	subw	a4,a5,a0
   11084:	43300793          	li	a5,1075
   11088:	40e787bb          	subw	a5,a5,a4
   1108c:	00f417b3          	sll	a5,s0,a5
   11090:	01813083          	ld	ra,24(sp)
   11094:	01013403          	ld	s0,16(sp)
   11098:	00c79793          	slli	a5,a5,0xc
   1109c:	03471713          	slli	a4,a4,0x34
   110a0:	00c7d793          	srli	a5,a5,0xc
   110a4:	03f49513          	slli	a0,s1,0x3f
   110a8:	00f767b3          	or	a5,a4,a5
   110ac:	00813483          	ld	s1,8(sp)
   110b0:	00a7e533          	or	a0,a5,a0
   110b4:	02010113          	addi	sp,sp,32
   110b8:	00008067          	ret
   110bc:	00000793          	li	a5,0
   110c0:	00000713          	li	a4,0
   110c4:	00000493          	li	s1,0
   110c8:	fc9ff06f          	j	11090 <__floatsidf+0x48>

00000000000110cc <__extendsfdf2>:
   110cc:	0175579b          	srliw	a5,a0,0x17
   110d0:	fe010113          	addi	sp,sp,-32
   110d4:	0ff7f793          	andi	a5,a5,255
   110d8:	00813823          	sd	s0,16(sp)
   110dc:	00913423          	sd	s1,8(sp)
   110e0:	02951413          	slli	s0,a0,0x29
   110e4:	01f5549b          	srliw	s1,a0,0x1f
   110e8:	00178513          	addi	a0,a5,1
   110ec:	00113c23          	sd	ra,24(sp)
   110f0:	0fe57513          	andi	a0,a0,254
   110f4:	02945413          	srli	s0,s0,0x29
   110f8:	02050c63          	beqz	a0,11130 <__extendsfdf2+0x64>
   110fc:	38078513          	addi	a0,a5,896
   11100:	01d41413          	slli	s0,s0,0x1d
   11104:	00c41413          	slli	s0,s0,0xc
   11108:	03451513          	slli	a0,a0,0x34
   1110c:	00c45413          	srli	s0,s0,0xc
   11110:	00856433          	or	s0,a0,s0
   11114:	03f49513          	slli	a0,s1,0x3f
   11118:	01813083          	ld	ra,24(sp)
   1111c:	00a46533          	or	a0,s0,a0
   11120:	01013403          	ld	s0,16(sp)
   11124:	00813483          	ld	s1,8(sp)
   11128:	02010113          	addi	sp,sp,32
   1112c:	00008067          	ret
   11130:	02079263          	bnez	a5,11154 <__extendsfdf2+0x88>
   11134:	fc0408e3          	beqz	s0,11104 <__extendsfdf2+0x38>
   11138:	00040513          	mv	a0,s0
   1113c:	188000ef          	jal	ra,112c4 <__clzdi2>
   11140:	ff55079b          	addiw	a5,a0,-11
   11144:	00f41433          	sll	s0,s0,a5
   11148:	3a900793          	li	a5,937
   1114c:	40a7853b          	subw	a0,a5,a0
   11150:	fb5ff06f          	j	11104 <__extendsfdf2+0x38>
   11154:	7ff00513          	li	a0,2047
   11158:	fa0406e3          	beqz	s0,11104 <__extendsfdf2+0x38>
   1115c:	00100793          	li	a5,1
   11160:	01d41413          	slli	s0,s0,0x1d
   11164:	03379793          	slli	a5,a5,0x33
   11168:	00f46433          	or	s0,s0,a5
   1116c:	f99ff06f          	j	11104 <__extendsfdf2+0x38>

0000000000011170 <__truncdfsf2>:
   11170:	03455713          	srli	a4,a0,0x34
   11174:	7ff77713          	andi	a4,a4,2047
   11178:	00170613          	addi	a2,a4,1
   1117c:	00c51793          	slli	a5,a0,0xc
   11180:	7fe67613          	andi	a2,a2,2046
   11184:	00c7d693          	srli	a3,a5,0xc
   11188:	03f55513          	srli	a0,a0,0x3f
   1118c:	0097d793          	srli	a5,a5,0x9
   11190:	06060463          	beqz	a2,111f8 <__truncdfsf2+0x88>
   11194:	c8070713          	addi	a4,a4,-896
   11198:	0fe00613          	li	a2,254
   1119c:	08e64063          	blt	a2,a4,1121c <__truncdfsf2+0xac>
   111a0:	04e04263          	bgtz	a4,111e4 <__truncdfsf2+0x74>
   111a4:	fe900693          	li	a3,-23
   111a8:	0cd74a63          	blt	a4,a3,1127c <__truncdfsf2+0x10c>
   111ac:	00100693          	li	a3,1
   111b0:	03769693          	slli	a3,a3,0x37
   111b4:	00d7e7b3          	or	a5,a5,a3
   111b8:	01e00693          	li	a3,30
   111bc:	40e686bb          	subw	a3,a3,a4
   111c0:	0227071b          	addiw	a4,a4,34
   111c4:	00d7d6b3          	srl	a3,a5,a3
   111c8:	00e797b3          	sll	a5,a5,a4
   111cc:	00f037b3          	snez	a5,a5
   111d0:	00f6e7b3          	or	a5,a3,a5
   111d4:	00000713          	li	a4,0
   111d8:	0077f693          	andi	a3,a5,7
   111dc:	04068463          	beqz	a3,11224 <__truncdfsf2+0xb4>
   111e0:	0a40006f          	j	11284 <__truncdfsf2+0x114>
   111e4:	02669693          	slli	a3,a3,0x26
   111e8:	01d7d793          	srli	a5,a5,0x1d
   111ec:	00d036b3          	snez	a3,a3
   111f0:	00d7e7b3          	or	a5,a5,a3
   111f4:	fe5ff06f          	j	111d8 <__truncdfsf2+0x68>
   111f8:	00071663          	bnez	a4,11204 <__truncdfsf2+0x94>
   111fc:	00f037b3          	snez	a5,a5
   11200:	fd9ff06f          	j	111d8 <__truncdfsf2+0x68>
   11204:	0ff00713          	li	a4,255
   11208:	00078e63          	beqz	a5,11224 <__truncdfsf2+0xb4>
   1120c:	01d7d793          	srli	a5,a5,0x1d
   11210:	ff87f793          	andi	a5,a5,-8
   11214:	020006b7          	lui	a3,0x2000
   11218:	fd9ff06f          	j	111f0 <__truncdfsf2+0x80>
   1121c:	00000793          	li	a5,0
   11220:	0ff00713          	li	a4,255
   11224:	02579693          	slli	a3,a5,0x25
   11228:	0006de63          	bgez	a3,11244 <__truncdfsf2+0xd4>
   1122c:	00170713          	addi	a4,a4,1
   11230:	0ff00693          	li	a3,255
   11234:	06d70263          	beq	a4,a3,11298 <__truncdfsf2+0x128>
   11238:	fc0006b7          	lui	a3,0xfc000
   1123c:	fff68693          	addi	a3,a3,-1 # fffffffffbffffff <__BSS_END__+0xfffffffffbfed7cf>
   11240:	00d7f7b3          	and	a5,a5,a3
   11244:	0ff00693          	li	a3,255
   11248:	0037d793          	srli	a5,a5,0x3
   1124c:	00d71863          	bne	a4,a3,1125c <__truncdfsf2+0xec>
   11250:	00078663          	beqz	a5,1125c <__truncdfsf2+0xec>
   11254:	004007b7          	lui	a5,0x400
   11258:	00000513          	li	a0,0
   1125c:	0ff77713          	andi	a4,a4,255
   11260:	02979793          	slli	a5,a5,0x29
   11264:	0177171b          	slliw	a4,a4,0x17
   11268:	0297d793          	srli	a5,a5,0x29
   1126c:	00e7e7b3          	or	a5,a5,a4
   11270:	01f5151b          	slliw	a0,a0,0x1f
   11274:	00f56533          	or	a0,a0,a5
   11278:	00008067          	ret
   1127c:	00100793          	li	a5,1
   11280:	00000713          	li	a4,0
   11284:	00f7f693          	andi	a3,a5,15
   11288:	00400613          	li	a2,4
   1128c:	f8c68ce3          	beq	a3,a2,11224 <__truncdfsf2+0xb4>
   11290:	00478793          	addi	a5,a5,4 # 400004 <__BSS_END__+0x3ed7d4>
   11294:	f91ff06f          	j	11224 <__truncdfsf2+0xb4>
   11298:	00000793          	li	a5,0
   1129c:	fa9ff06f          	j	11244 <__truncdfsf2+0xd4>

00000000000112a0 <__muldi3>:
   112a0:	00050613          	mv	a2,a0
   112a4:	00000513          	li	a0,0
   112a8:	0015f693          	andi	a3,a1,1
   112ac:	00068463          	beqz	a3,112b4 <__muldi3+0x14>
   112b0:	00c50533          	add	a0,a0,a2
   112b4:	0015d593          	srli	a1,a1,0x1
   112b8:	00161613          	slli	a2,a2,0x1
   112bc:	fe0596e3          	bnez	a1,112a8 <__muldi3+0x8>
   112c0:	00008067          	ret

00000000000112c4 <__clzdi2>:
   112c4:	03800793          	li	a5,56
   112c8:	00f55733          	srl	a4,a0,a5
   112cc:	0ff77713          	andi	a4,a4,255
   112d0:	00071663          	bnez	a4,112dc <__clzdi2+0x18>
   112d4:	ff878793          	addi	a5,a5,-8
   112d8:	fe0798e3          	bnez	a5,112c8 <__clzdi2+0x4>
   112dc:	00011737          	lui	a4,0x11
   112e0:	04000693          	li	a3,64
   112e4:	40f686b3          	sub	a3,a3,a5
   112e8:	00f55533          	srl	a0,a0,a5
   112ec:	78070793          	addi	a5,a4,1920 # 11780 <__clz_tab>
   112f0:	00a78533          	add	a0,a5,a0
   112f4:	00054503          	lbu	a0,0(a0) # 12000 <__FRAME_END__>
   112f8:	40a6853b          	subw	a0,a3,a0
   112fc:	00008067          	ret

0000000000011300 <exit>:
   11300:	ff010113          	addi	sp,sp,-16
   11304:	00000593          	li	a1,0
   11308:	00813023          	sd	s0,0(sp)
   1130c:	00113423          	sd	ra,8(sp)
   11310:	00050413          	mv	s0,a0
   11314:	194000ef          	jal	ra,114a8 <__call_exitprocs>
   11318:	fc01b503          	ld	a0,-64(gp) # 127e0 <_global_impure_ptr>
   1131c:	05853783          	ld	a5,88(a0)
   11320:	00078463          	beqz	a5,11328 <exit+0x28>
   11324:	000780e7          	jalr	a5
   11328:	00040513          	mv	a0,s0
   1132c:	3bc000ef          	jal	ra,116e8 <_exit>

0000000000011330 <__libc_init_array>:
   11330:	fe010113          	addi	sp,sp,-32
   11334:	00813823          	sd	s0,16(sp)
   11338:	01213023          	sd	s2,0(sp)
   1133c:	00012437          	lui	s0,0x12
   11340:	00012937          	lui	s2,0x12
   11344:	00440793          	addi	a5,s0,4 # 12004 <__preinit_array_end>
   11348:	00490913          	addi	s2,s2,4 # 12004 <__preinit_array_end>
   1134c:	40f90933          	sub	s2,s2,a5
   11350:	00113c23          	sd	ra,24(sp)
   11354:	00913423          	sd	s1,8(sp)
   11358:	40395913          	srai	s2,s2,0x3
   1135c:	02090063          	beqz	s2,1137c <__libc_init_array+0x4c>
   11360:	00440413          	addi	s0,s0,4
   11364:	00000493          	li	s1,0
   11368:	00043783          	ld	a5,0(s0)
   1136c:	00148493          	addi	s1,s1,1
   11370:	00840413          	addi	s0,s0,8
   11374:	000780e7          	jalr	a5
   11378:	fe9918e3          	bne	s2,s1,11368 <__libc_init_array+0x38>
   1137c:	00012437          	lui	s0,0x12
   11380:	00012937          	lui	s2,0x12
   11384:	00840793          	addi	a5,s0,8 # 12008 <__init_array_start>
   11388:	01890913          	addi	s2,s2,24 # 12018 <__do_global_dtors_aux_fini_array_entry>
   1138c:	40f90933          	sub	s2,s2,a5
   11390:	40395913          	srai	s2,s2,0x3
   11394:	02090063          	beqz	s2,113b4 <__libc_init_array+0x84>
   11398:	00840413          	addi	s0,s0,8
   1139c:	00000493          	li	s1,0
   113a0:	00043783          	ld	a5,0(s0)
   113a4:	00148493          	addi	s1,s1,1
   113a8:	00840413          	addi	s0,s0,8
   113ac:	000780e7          	jalr	a5
   113b0:	fe9918e3          	bne	s2,s1,113a0 <__libc_init_array+0x70>
   113b4:	01813083          	ld	ra,24(sp)
   113b8:	01013403          	ld	s0,16(sp)
   113bc:	00813483          	ld	s1,8(sp)
   113c0:	00013903          	ld	s2,0(sp)
   113c4:	02010113          	addi	sp,sp,32
   113c8:	00008067          	ret

00000000000113cc <memset>:
   113cc:	00f00313          	li	t1,15
   113d0:	00050713          	mv	a4,a0
   113d4:	02c37a63          	bgeu	t1,a2,11408 <memset+0x3c>
   113d8:	00f77793          	andi	a5,a4,15
   113dc:	0a079063          	bnez	a5,1147c <memset+0xb0>
   113e0:	06059e63          	bnez	a1,1145c <memset+0x90>
   113e4:	ff067693          	andi	a3,a2,-16
   113e8:	00f67613          	andi	a2,a2,15
   113ec:	00e686b3          	add	a3,a3,a4
   113f0:	00b73023          	sd	a1,0(a4)
   113f4:	00b73423          	sd	a1,8(a4)
   113f8:	01070713          	addi	a4,a4,16
   113fc:	fed76ae3          	bltu	a4,a3,113f0 <memset+0x24>
   11400:	00061463          	bnez	a2,11408 <memset+0x3c>
   11404:	00008067          	ret
   11408:	40c306b3          	sub	a3,t1,a2
   1140c:	00269693          	slli	a3,a3,0x2
   11410:	00000297          	auipc	t0,0x0
   11414:	005686b3          	add	a3,a3,t0
   11418:	00c68067          	jr	12(a3)
   1141c:	00b70723          	sb	a1,14(a4)
   11420:	00b706a3          	sb	a1,13(a4)
   11424:	00b70623          	sb	a1,12(a4)
   11428:	00b705a3          	sb	a1,11(a4)
   1142c:	00b70523          	sb	a1,10(a4)
   11430:	00b704a3          	sb	a1,9(a4)
   11434:	00b70423          	sb	a1,8(a4)
   11438:	00b703a3          	sb	a1,7(a4)
   1143c:	00b70323          	sb	a1,6(a4)
   11440:	00b702a3          	sb	a1,5(a4)
   11444:	00b70223          	sb	a1,4(a4)
   11448:	00b701a3          	sb	a1,3(a4)
   1144c:	00b70123          	sb	a1,2(a4)
   11450:	00b700a3          	sb	a1,1(a4)
   11454:	00b70023          	sb	a1,0(a4)
   11458:	00008067          	ret
   1145c:	0ff5f593          	andi	a1,a1,255
   11460:	00859693          	slli	a3,a1,0x8
   11464:	00d5e5b3          	or	a1,a1,a3
   11468:	01059693          	slli	a3,a1,0x10
   1146c:	00d5e5b3          	or	a1,a1,a3
   11470:	02059693          	slli	a3,a1,0x20
   11474:	00d5e5b3          	or	a1,a1,a3
   11478:	f6dff06f          	j	113e4 <memset+0x18>
   1147c:	00279693          	slli	a3,a5,0x2
   11480:	00000297          	auipc	t0,0x0
   11484:	005686b3          	add	a3,a3,t0
   11488:	00008293          	mv	t0,ra
   1148c:	f98680e7          	jalr	-104(a3)
   11490:	00028093          	mv	ra,t0
   11494:	ff078793          	addi	a5,a5,-16
   11498:	40f70733          	sub	a4,a4,a5
   1149c:	00f60633          	add	a2,a2,a5
   114a0:	f6c374e3          	bgeu	t1,a2,11408 <memset+0x3c>
   114a4:	f3dff06f          	j	113e0 <memset+0x14>

00000000000114a8 <__call_exitprocs>:
   114a8:	fb010113          	addi	sp,sp,-80
   114ac:	03413023          	sd	s4,32(sp)
   114b0:	fc01ba03          	ld	s4,-64(gp) # 127e0 <_global_impure_ptr>
   114b4:	03213823          	sd	s2,48(sp)
   114b8:	04113423          	sd	ra,72(sp)
   114bc:	1f8a3903          	ld	s2,504(s4)
   114c0:	04813023          	sd	s0,64(sp)
   114c4:	02913c23          	sd	s1,56(sp)
   114c8:	03313423          	sd	s3,40(sp)
   114cc:	01513c23          	sd	s5,24(sp)
   114d0:	01613823          	sd	s6,16(sp)
   114d4:	01713423          	sd	s7,8(sp)
   114d8:	01813023          	sd	s8,0(sp)
   114dc:	04090063          	beqz	s2,1151c <__call_exitprocs+0x74>
   114e0:	00050b13          	mv	s6,a0
   114e4:	00058b93          	mv	s7,a1
   114e8:	00100a93          	li	s5,1
   114ec:	fff00993          	li	s3,-1
   114f0:	00892483          	lw	s1,8(s2)
   114f4:	fff4841b          	addiw	s0,s1,-1
   114f8:	02044263          	bltz	s0,1151c <__call_exitprocs+0x74>
   114fc:	00349493          	slli	s1,s1,0x3
   11500:	009904b3          	add	s1,s2,s1
   11504:	040b8463          	beqz	s7,1154c <__call_exitprocs+0xa4>
   11508:	2084b783          	ld	a5,520(s1)
   1150c:	05778063          	beq	a5,s7,1154c <__call_exitprocs+0xa4>
   11510:	fff4041b          	addiw	s0,s0,-1
   11514:	ff848493          	addi	s1,s1,-8
   11518:	ff3416e3          	bne	s0,s3,11504 <__call_exitprocs+0x5c>
   1151c:	04813083          	ld	ra,72(sp)
   11520:	04013403          	ld	s0,64(sp)
   11524:	03813483          	ld	s1,56(sp)
   11528:	03013903          	ld	s2,48(sp)
   1152c:	02813983          	ld	s3,40(sp)
   11530:	02013a03          	ld	s4,32(sp)
   11534:	01813a83          	ld	s5,24(sp)
   11538:	01013b03          	ld	s6,16(sp)
   1153c:	00813b83          	ld	s7,8(sp)
   11540:	00013c03          	ld	s8,0(sp)
   11544:	05010113          	addi	sp,sp,80
   11548:	00008067          	ret
   1154c:	00892783          	lw	a5,8(s2)
   11550:	0084b703          	ld	a4,8(s1)
   11554:	fff7879b          	addiw	a5,a5,-1
   11558:	06878263          	beq	a5,s0,115bc <__call_exitprocs+0x114>
   1155c:	0004b423          	sd	zero,8(s1)
   11560:	fa0708e3          	beqz	a4,11510 <__call_exitprocs+0x68>
   11564:	31092783          	lw	a5,784(s2)
   11568:	008a96bb          	sllw	a3,s5,s0
   1156c:	00892c03          	lw	s8,8(s2)
   11570:	00d7f7b3          	and	a5,a5,a3
   11574:	0007879b          	sext.w	a5,a5
   11578:	02079263          	bnez	a5,1159c <__call_exitprocs+0xf4>
   1157c:	000700e7          	jalr	a4
   11580:	00892703          	lw	a4,8(s2)
   11584:	1f8a3783          	ld	a5,504(s4)
   11588:	01871463          	bne	a4,s8,11590 <__call_exitprocs+0xe8>
   1158c:	f8f902e3          	beq	s2,a5,11510 <__call_exitprocs+0x68>
   11590:	f80786e3          	beqz	a5,1151c <__call_exitprocs+0x74>
   11594:	00078913          	mv	s2,a5
   11598:	f59ff06f          	j	114f0 <__call_exitprocs+0x48>
   1159c:	31492783          	lw	a5,788(s2)
   115a0:	1084b583          	ld	a1,264(s1)
   115a4:	00d7f7b3          	and	a5,a5,a3
   115a8:	0007879b          	sext.w	a5,a5
   115ac:	00079c63          	bnez	a5,115c4 <__call_exitprocs+0x11c>
   115b0:	000b0513          	mv	a0,s6
   115b4:	000700e7          	jalr	a4
   115b8:	fc9ff06f          	j	11580 <__call_exitprocs+0xd8>
   115bc:	00892423          	sw	s0,8(s2)
   115c0:	fa1ff06f          	j	11560 <__call_exitprocs+0xb8>
   115c4:	00058513          	mv	a0,a1
   115c8:	000700e7          	jalr	a4
   115cc:	fb5ff06f          	j	11580 <__call_exitprocs+0xd8>

00000000000115d0 <__libc_fini_array>:
   115d0:	fe010113          	addi	sp,sp,-32
   115d4:	00813823          	sd	s0,16(sp)
   115d8:	000127b7          	lui	a5,0x12
   115dc:	00012437          	lui	s0,0x12
   115e0:	01840413          	addi	s0,s0,24 # 12018 <__do_global_dtors_aux_fini_array_entry>
   115e4:	02078793          	addi	a5,a5,32 # 12020 <result_double>
   115e8:	408787b3          	sub	a5,a5,s0
   115ec:	00913423          	sd	s1,8(sp)
   115f0:	00113c23          	sd	ra,24(sp)
   115f4:	4037d493          	srai	s1,a5,0x3
   115f8:	02048063          	beqz	s1,11618 <__libc_fini_array+0x48>
   115fc:	ff878793          	addi	a5,a5,-8
   11600:	00878433          	add	s0,a5,s0
   11604:	00043783          	ld	a5,0(s0)
   11608:	fff48493          	addi	s1,s1,-1
   1160c:	ff840413          	addi	s0,s0,-8
   11610:	000780e7          	jalr	a5
   11614:	fe0498e3          	bnez	s1,11604 <__libc_fini_array+0x34>
   11618:	01813083          	ld	ra,24(sp)
   1161c:	01013403          	ld	s0,16(sp)
   11620:	00813483          	ld	s1,8(sp)
   11624:	02010113          	addi	sp,sp,32
   11628:	00008067          	ret

000000000001162c <atexit>:
   1162c:	00050593          	mv	a1,a0
   11630:	00000693          	li	a3,0
   11634:	00000613          	li	a2,0
   11638:	00000513          	li	a0,0
   1163c:	0040006f          	j	11640 <__register_exitproc>

0000000000011640 <__register_exitproc>:
   11640:	fc01b703          	ld	a4,-64(gp) # 127e0 <_global_impure_ptr>
   11644:	1f873783          	ld	a5,504(a4)
   11648:	06078063          	beqz	a5,116a8 <__register_exitproc+0x68>
   1164c:	0087a703          	lw	a4,8(a5)
   11650:	01f00813          	li	a6,31
   11654:	08e84663          	blt	a6,a4,116e0 <__register_exitproc+0xa0>
   11658:	02050863          	beqz	a0,11688 <__register_exitproc+0x48>
   1165c:	00371813          	slli	a6,a4,0x3
   11660:	01078833          	add	a6,a5,a6
   11664:	10c83823          	sd	a2,272(a6)
   11668:	3107a883          	lw	a7,784(a5)
   1166c:	00100613          	li	a2,1
   11670:	00e6163b          	sllw	a2,a2,a4
   11674:	00c8e8b3          	or	a7,a7,a2
   11678:	3117a823          	sw	a7,784(a5)
   1167c:	20d83823          	sd	a3,528(a6)
   11680:	00200693          	li	a3,2
   11684:	02d50863          	beq	a0,a3,116b4 <__register_exitproc+0x74>
   11688:	00270693          	addi	a3,a4,2
   1168c:	00369693          	slli	a3,a3,0x3
   11690:	0017071b          	addiw	a4,a4,1
   11694:	00e7a423          	sw	a4,8(a5)
   11698:	00d787b3          	add	a5,a5,a3
   1169c:	00b7b023          	sd	a1,0(a5)
   116a0:	00000513          	li	a0,0
   116a4:	00008067          	ret
   116a8:	20070793          	addi	a5,a4,512
   116ac:	1ef73c23          	sd	a5,504(a4)
   116b0:	f9dff06f          	j	1164c <__register_exitproc+0xc>
   116b4:	3147a683          	lw	a3,788(a5)
   116b8:	00000513          	li	a0,0
   116bc:	00c6e633          	or	a2,a3,a2
   116c0:	00270693          	addi	a3,a4,2
   116c4:	00369693          	slli	a3,a3,0x3
   116c8:	0017071b          	addiw	a4,a4,1
   116cc:	30c7aa23          	sw	a2,788(a5)
   116d0:	00e7a423          	sw	a4,8(a5)
   116d4:	00d787b3          	add	a5,a5,a3
   116d8:	00b7b023          	sd	a1,0(a5)
   116dc:	00008067          	ret
   116e0:	fff00513          	li	a0,-1
   116e4:	00008067          	ret

00000000000116e8 <_exit>:
   116e8:	00000593          	li	a1,0
   116ec:	00000613          	li	a2,0
   116f0:	00000693          	li	a3,0
   116f4:	00000713          	li	a4,0
   116f8:	00000793          	li	a5,0
   116fc:	05d00893          	li	a7,93
   11700:	00000073          	ecall
   11704:	00054463          	bltz	a0,1170c <_exit+0x24>
   11708:	0000006f          	j	11708 <_exit+0x20>
   1170c:	ff010113          	addi	sp,sp,-16
   11710:	00813023          	sd	s0,0(sp)
   11714:	00050413          	mv	s0,a0
   11718:	00113423          	sd	ra,8(sp)
   1171c:	4080043b          	negw	s0,s0
   11720:	00c000ef          	jal	ra,1172c <__errno>
   11724:	00852023          	sw	s0,0(a0)
   11728:	0000006f          	j	11728 <_exit+0x40>

000000000001172c <__errno>:
   1172c:	fd01b503          	ld	a0,-48(gp) # 127f0 <_impure_ptr>
   11730:	00008067          	ret

Disassembly of section .rodata:

0000000000011738 <__clz_tab-0x48>:
   11738:	999a                	add	s3,s3,t1
   1173a:	9999                	andi	a1,a1,-26
   1173c:	9999                	andi	a1,a1,-26
   1173e:	3ff1                	addiw	t6,t6,-4
   11740:	0ae4                	addi	s1,sp,348
   11742:	0001                	nop
   11744:	0ae4                	addi	s1,sp,348
   11746:	0001                	nop
   11748:	0b08                	addi	a0,sp,400
   1174a:	0001                	nop
   1174c:	0adc                	addi	a5,sp,340
   1174e:	0001                	nop
   11750:	0adc                	addi	a5,sp,340
   11752:	0001                	nop
   11754:	0b70                	addi	a2,sp,412
   11756:	0001                	nop
   11758:	0b08                	addi	a0,sp,400
   1175a:	0001                	nop
   1175c:	0adc                	addi	a5,sp,340
   1175e:	0001                	nop
   11760:	0b70                	addi	a2,sp,412
   11762:	0001                	nop
   11764:	0adc                	addi	a5,sp,340
   11766:	0001                	nop
   11768:	0b08                	addi	a0,sp,400
   1176a:	0001                	nop
   1176c:	0ad8                	addi	a4,sp,340
   1176e:	0001                	nop
   11770:	0ad8                	addi	a4,sp,340
   11772:	0001                	nop
   11774:	0ad8                	addi	a4,sp,340
   11776:	0001                	nop
   11778:	0b70                	addi	a2,sp,412
   1177a:	0001                	nop
   1177c:	0000                	unimp
	...

0000000000011780 <__clz_tab>:
   11780:	0100                	addi	s0,sp,128
   11782:	0202                	c.slli64	tp
   11784:	03030303          	lb	t1,48(t1) # 101a4 <main+0x24>
   11788:	0404                	addi	s1,sp,512
   1178a:	0404                	addi	s1,sp,512
   1178c:	0404                	addi	s1,sp,512
   1178e:	0404                	addi	s1,sp,512
   11790:	0505                	addi	a0,a0,1
   11792:	0505                	addi	a0,a0,1
   11794:	0505                	addi	a0,a0,1
   11796:	0505                	addi	a0,a0,1
   11798:	0505                	addi	a0,a0,1
   1179a:	0505                	addi	a0,a0,1
   1179c:	0505                	addi	a0,a0,1
   1179e:	0505                	addi	a0,a0,1
   117a0:	0606                	slli	a2,a2,0x1
   117a2:	0606                	slli	a2,a2,0x1
   117a4:	0606                	slli	a2,a2,0x1
   117a6:	0606                	slli	a2,a2,0x1
   117a8:	0606                	slli	a2,a2,0x1
   117aa:	0606                	slli	a2,a2,0x1
   117ac:	0606                	slli	a2,a2,0x1
   117ae:	0606                	slli	a2,a2,0x1
   117b0:	0606                	slli	a2,a2,0x1
   117b2:	0606                	slli	a2,a2,0x1
   117b4:	0606                	slli	a2,a2,0x1
   117b6:	0606                	slli	a2,a2,0x1
   117b8:	0606                	slli	a2,a2,0x1
   117ba:	0606                	slli	a2,a2,0x1
   117bc:	0606                	slli	a2,a2,0x1
   117be:	0606                	slli	a2,a2,0x1
   117c0:	07070707          	0x7070707
   117c4:	07070707          	0x7070707
   117c8:	07070707          	0x7070707
   117cc:	07070707          	0x7070707
   117d0:	07070707          	0x7070707
   117d4:	07070707          	0x7070707
   117d8:	07070707          	0x7070707
   117dc:	07070707          	0x7070707
   117e0:	07070707          	0x7070707
   117e4:	07070707          	0x7070707
   117e8:	07070707          	0x7070707
   117ec:	07070707          	0x7070707
   117f0:	07070707          	0x7070707
   117f4:	07070707          	0x7070707
   117f8:	07070707          	0x7070707
   117fc:	07070707          	0x7070707
   11800:	0808                	addi	a0,sp,16
   11802:	0808                	addi	a0,sp,16
   11804:	0808                	addi	a0,sp,16
   11806:	0808                	addi	a0,sp,16
   11808:	0808                	addi	a0,sp,16
   1180a:	0808                	addi	a0,sp,16
   1180c:	0808                	addi	a0,sp,16
   1180e:	0808                	addi	a0,sp,16
   11810:	0808                	addi	a0,sp,16
   11812:	0808                	addi	a0,sp,16
   11814:	0808                	addi	a0,sp,16
   11816:	0808                	addi	a0,sp,16
   11818:	0808                	addi	a0,sp,16
   1181a:	0808                	addi	a0,sp,16
   1181c:	0808                	addi	a0,sp,16
   1181e:	0808                	addi	a0,sp,16
   11820:	0808                	addi	a0,sp,16
   11822:	0808                	addi	a0,sp,16
   11824:	0808                	addi	a0,sp,16
   11826:	0808                	addi	a0,sp,16
   11828:	0808                	addi	a0,sp,16
   1182a:	0808                	addi	a0,sp,16
   1182c:	0808                	addi	a0,sp,16
   1182e:	0808                	addi	a0,sp,16
   11830:	0808                	addi	a0,sp,16
   11832:	0808                	addi	a0,sp,16
   11834:	0808                	addi	a0,sp,16
   11836:	0808                	addi	a0,sp,16
   11838:	0808                	addi	a0,sp,16
   1183a:	0808                	addi	a0,sp,16
   1183c:	0808                	addi	a0,sp,16
   1183e:	0808                	addi	a0,sp,16
   11840:	0808                	addi	a0,sp,16
   11842:	0808                	addi	a0,sp,16
   11844:	0808                	addi	a0,sp,16
   11846:	0808                	addi	a0,sp,16
   11848:	0808                	addi	a0,sp,16
   1184a:	0808                	addi	a0,sp,16
   1184c:	0808                	addi	a0,sp,16
   1184e:	0808                	addi	a0,sp,16
   11850:	0808                	addi	a0,sp,16
   11852:	0808                	addi	a0,sp,16
   11854:	0808                	addi	a0,sp,16
   11856:	0808                	addi	a0,sp,16
   11858:	0808                	addi	a0,sp,16
   1185a:	0808                	addi	a0,sp,16
   1185c:	0808                	addi	a0,sp,16
   1185e:	0808                	addi	a0,sp,16
   11860:	0808                	addi	a0,sp,16
   11862:	0808                	addi	a0,sp,16
   11864:	0808                	addi	a0,sp,16
   11866:	0808                	addi	a0,sp,16
   11868:	0808                	addi	a0,sp,16
   1186a:	0808                	addi	a0,sp,16
   1186c:	0808                	addi	a0,sp,16
   1186e:	0808                	addi	a0,sp,16
   11870:	0808                	addi	a0,sp,16
   11872:	0808                	addi	a0,sp,16
   11874:	0808                	addi	a0,sp,16
   11876:	0808                	addi	a0,sp,16
   11878:	0808                	addi	a0,sp,16
   1187a:	0808                	addi	a0,sp,16
   1187c:	0808                	addi	a0,sp,16
   1187e:	0808                	addi	a0,sp,16

Disassembly of section .eh_frame:

0000000000012000 <__FRAME_END__>:
   12000:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000012008 <__init_array_start>:
   12008:	00b0                	addi	a2,sp,72
   1200a:	0001                	nop
   1200c:	0000                	unimp
	...

0000000000012010 <__frame_dummy_init_array_entry>:
   12010:	0160                	addi	s0,sp,140
   12012:	0001                	nop
   12014:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000012018 <__do_global_dtors_aux_fini_array_entry>:
   12018:	0114                	addi	a3,sp,128
   1201a:	0001                	nop
   1201c:	0000                	unimp
	...

Disassembly of section .data:

0000000000012020 <result_double>:
   12020:	999a                	add	s3,s3,t1
   12022:	9999                	andi	a1,a1,-26
   12024:	9999                	andi	a1,a1,-26
   12026:	3ff1                	addiw	t6,t6,-4
   12028:	999a                	add	s3,s3,t1
   1202a:	9999                	andi	a1,a1,-26
   1202c:	9999                	andi	a1,a1,-26
   1202e:	4001                	c.li	zero,0
   12030:	6666                	ld	a2,88(sp)
   12032:	6666                	ld	a2,88(sp)
   12034:	6666                	ld	a2,88(sp)
   12036:	400a                	0x400a
   12038:	999a                	add	s3,s3,t1
   1203a:	9999                	andi	a1,a1,-26
   1203c:	9999                	andi	a1,a1,-26
   1203e:	4011                	c.li	zero,4
   12040:	0000                	unimp
   12042:	0000                	unimp
   12044:	0000                	unimp
   12046:	4016                	0x4016
   12048:	6666                	ld	a2,88(sp)
   1204a:	6666                	ld	a2,88(sp)
   1204c:	6666                	ld	a2,88(sp)
   1204e:	401a                	0x401a
   12050:	cccd                	beqz	s1,1210a <impure_data+0x72>
   12052:	cccc                	sw	a1,28(s1)
   12054:	cccc                	sw	a1,28(s1)
   12056:	401e                	0x401e
   12058:	999a                	add	s3,s3,t1
   1205a:	9999                	andi	a1,a1,-26
   1205c:	9999                	andi	a1,a1,-26
   1205e:	4021                	c.li	zero,8
   12060:	cccd                	beqz	s1,1211a <impure_data+0x82>
   12062:	cccc                	sw	a1,28(s1)
   12064:	cccc                	sw	a1,28(s1)
   12066:	00004023          	0x4023
   1206a:	0000                	unimp
   1206c:	0000                	unimp
   1206e:	4026                	0x4026

0000000000012070 <result_float>:
   12070:	cccd                	beqz	s1,1212a <impure_data+0x92>
   12072:	3f8c                	fld	fa1,56(a5)
   12074:	cccd                	beqz	s1,1212e <impure_data+0x96>
   12076:	400c                	lw	a1,0(s0)
   12078:	40533333          	0x40533333
   1207c:	cccd                	beqz	s1,12136 <impure_data+0x9e>
   1207e:	408c                	lw	a1,0(s1)
   12080:	0000                	unimp
   12082:	40b0                	lw	a2,64(s1)
   12084:	40d33333          	0x40d33333
   12088:	6666                	ld	a2,88(sp)
   1208a:	40f6                	lw	ra,92(sp)
   1208c:	cccd                	beqz	s1,12146 <impure_data+0xae>
   1208e:	410c                	lw	a1,0(a0)
   12090:	6666                	ld	a2,88(sp)
   12092:	411e                	lw	sp,196(sp)
   12094:	0000                	unimp
   12096:	4130                	lw	a2,64(a0)

0000000000012098 <impure_data>:
	...
   120a0:	25d0                	fld	fa2,136(a1)
   120a2:	0001                	nop
   120a4:	0000                	unimp
   120a6:	0000                	unimp
   120a8:	2680                	fld	fs0,8(a3)
   120aa:	0001                	nop
   120ac:	0000                	unimp
   120ae:	0000                	unimp
   120b0:	2730                	fld	fa2,72(a4)
   120b2:	0001                	nop
	...
   12180:	0001                	nop
   12182:	0000                	unimp
   12184:	0000                	unimp
   12186:	0000                	unimp
   12188:	330e                	fld	ft6,224(sp)
   1218a:	abcd                	j	1277c <impure_data+0x6e4>
   1218c:	1234                	addi	a3,sp,296
   1218e:	e66d                	bnez	a2,12278 <impure_data+0x1e0>
   12190:	deec                	sw	a1,124(a3)
   12192:	0005                	c.nop	1
   12194:	0000000b          	0xb
	...

Disassembly of section .sdata:

00000000000127e0 <_global_impure_ptr>:
   127e0:	2098                	fld	fa4,0(s1)
   127e2:	0001                	nop
   127e4:	0000                	unimp
	...

00000000000127e8 <__dso_handle>:
	...

00000000000127f0 <_impure_ptr>:
   127f0:	2098                	fld	fa4,0(s1)
   127f2:	0001                	nop
   127f4:	0000                	unimp
	...

Disassembly of section .bss:

00000000000127f8 <completed.5525>:
	...

0000000000012800 <object.5530>:
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
  10:	0404                	addi	s1,sp,512
  12:	0001                	nop
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0468                	addi	a0,sp,524
	...
  2e:	0000                	unimp
  30:	002c                	addi	a1,sp,8
  32:	0000                	unimp
  34:	0002                	c.slli64	zero
  36:	0398                	addi	a4,sp,448
  38:	0000                	unimp
  3a:	0008                	0x8
  3c:	0000                	unimp
  3e:	0000                	unimp
  40:	086c                	addi	a1,sp,28
  42:	0001                	nop
  44:	0000                	unimp
  46:	0000                	unimp
  48:	0354                	addi	a3,sp,388
	...
  5e:	0000                	unimp
  60:	002c                	addi	a1,sp,8
  62:	0000                	unimp
  64:	0002                	c.slli64	zero
  66:	083c                	addi	a5,sp,24
  68:	0000                	unimp
  6a:	0008                	0x8
  6c:	0000                	unimp
  6e:	0000                	unimp
  70:	0bc0                	addi	s0,sp,468
  72:	0001                	nop
  74:	0000                	unimp
  76:	0000                	unimp
  78:	0488                	addi	a0,sp,576
	...
  8e:	0000                	unimp
  90:	002c                	addi	a1,sp,8
  92:	0000                	unimp
  94:	0002                	c.slli64	zero
  96:	0bd4                	addi	a3,sp,468
  98:	0000                	unimp
  9a:	0008                	0x8
  9c:	0000                	unimp
  9e:	0000                	unimp
  a0:	1048                	addi	a0,sp,36
  a2:	0001                	nop
  a4:	0000                	unimp
  a6:	0000                	unimp
  a8:	0084                	addi	s1,sp,64
	...
  be:	0000                	unimp
  c0:	002c                	addi	a1,sp,8
  c2:	0000                	unimp
  c4:	0002                	c.slli64	zero
  c6:	00000e2f          	0xe2f
  ca:	0008                	0x8
  cc:	0000                	unimp
  ce:	0000                	unimp
  d0:	10cc                	addi	a1,sp,100
  d2:	0001                	nop
  d4:	0000                	unimp
  d6:	0000                	unimp
  d8:	00a4                	addi	s1,sp,72
	...
  ee:	0000                	unimp
  f0:	002c                	addi	a1,sp,8
  f2:	0000                	unimp
  f4:	0002                	c.slli64	zero
  f6:	10ea                	slli	ra,ra,0x3a
  f8:	0000                	unimp
  fa:	0008                	0x8
  fc:	0000                	unimp
  fe:	0000                	unimp
 100:	1170                	addi	a2,sp,172
 102:	0001                	nop
 104:	0000                	unimp
 106:	0000                	unimp
 108:	0130                	addi	a2,sp,136
	...
 11e:	0000                	unimp
 120:	002c                	addi	a1,sp,8
 122:	0000                	unimp
 124:	0002                	c.slli64	zero
 126:	000013c7          	fmsub.s	ft7,ft0,ft0,ft0,rtz
 12a:	0008                	0x8
 12c:	0000                	unimp
 12e:	0000                	unimp
 130:	12a0                	addi	s0,sp,360
 132:	0001                	nop
 134:	0000                	unimp
 136:	0000                	unimp
 138:	0024                	addi	s1,sp,8
	...
 14e:	0000                	unimp
 150:	002c                	addi	a1,sp,8
 152:	0000                	unimp
 154:	0002                	c.slli64	zero
 156:	13f5                	addi	t2,t2,-3
 158:	0000                	unimp
 15a:	0008                	0x8
 15c:	0000                	unimp
 15e:	0000                	unimp
 160:	12c4                	addi	s1,sp,356
 162:	0001                	nop
 164:	0000                	unimp
 166:	0000                	unimp
 168:	003c                	addi	a5,sp,8
	...
 17e:	0000                	unimp
 180:	001c                	0x1c
 182:	0000                	unimp
 184:	0002                	c.slli64	zero
 186:	1fee                	slli	t6,t6,0x3b
 188:	0000                	unimp
 18a:	0008                	0x8
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
       0:	0394                	addi	a3,sp,448
       2:	0000                	unimp
       4:	0004                	0x4
       6:	0000                	unimp
       8:	0000                	unimp
       a:	0108                	addi	a0,sp,128
       c:	0141                	addi	sp,sp,16
       e:	0000                	unimp
      10:	9c0c                	0x9c0c
      12:	0000                	unimp
      14:	2500                	fld	fs0,8(a0)
      16:	0000                	unimp
      18:	0400                	addi	s0,sp,512
      1a:	0104                	addi	s1,sp,128
      1c:	0000                	unimp
      1e:	0000                	unimp
      20:	6800                	ld	s0,16(s0)
      22:	0004                	0x4
	...
      2c:	0200                	addi	s0,sp,256
      2e:	0408                	addi	a0,sp,512
      30:	063d                	addi	a2,a2,15
      32:	0000                	unimp
      34:	1002                	c.slli	zero,0x20
      36:	df05                	beqz	a4,ffffffffffffff6e <__BSS_END__+0xfffffffffffed73e>
      38:	0001                	nop
      3a:	0200                	addi	s0,sp,256
      3c:	0710                	addi	a2,sp,896
      3e:	0000                	unimp
      40:	0000                	unimp
      42:	0802                	c.slli64	a6
      44:	4a05                	li	s4,1
      46:	0002                	c.slli64	zero
      48:	0200                	addi	s0,sp,256
      4a:	0601                	addi	a2,a2,0
      4c:	0000010b          	0x10b
      50:	69050403          	lb	s0,1680(a0)
      54:	746e                	ld	s0,248(sp)
      56:	0400                	addi	s0,sp,512
      58:	01fc                	addi	a5,sp,204
      5a:	0000                	unimp
      5c:	4a02                	lw	s4,0(sp)
      5e:	1601                	addi	a2,a2,-32
      60:	0069                	c.nop	26
      62:	0000                	unimp
      64:	5705                	li	a4,-31
      66:	0000                	unimp
      68:	0200                	addi	s0,sp,256
      6a:	0801                	addi	a6,a6,0
      6c:	0109                	addi	sp,sp,2
      6e:	0000                	unimp
      70:	0402                	c.slli64	s0
      72:	00021d07          	0x21d07
      76:	0200                	addi	s0,sp,256
      78:	0708                	addi	a0,sp,896
      7a:	0218                	addi	a4,sp,256
      7c:	0000                	unimp
      7e:	6406                	ld	s0,64(sp)
      80:	0000                	unimp
      82:	8e00                	0x8e00
      84:	0000                	unimp
      86:	0700                	addi	s0,sp,896
      88:	00000077          	0x77
      8c:	00ff                	0xff
      8e:	7e05                	lui	t3,0xfffe1
      90:	0000                	unimp
      92:	0800                	addi	s0,sp,16
      94:	0204                	addi	s1,sp,256
      96:	0000                	unimp
      98:	3c04                	fld	fs1,56(s0)
      9a:	8e16                	mv	t3,t0
      9c:	0000                	unimp
      9e:	0900                	addi	s0,sp,144
      a0:	00e4                	addi	s1,sp,76
      a2:	0000                	unimp
      a4:	2d0f4803          	lbu	a6,720(t5)
      a8:	0000                	unimp
      aa:	0a00                	addi	s0,sp,272
      ac:	0308                	addi	a0,sp,384
      ae:	03ca                	slli	t2,t2,0x12
      b0:	00e5                	addi	ra,ra,25
      b2:	0000                	unimp
      b4:	00020e0b          	0x20e0b
      b8:	0300                	addi	s0,sp,384
      ba:	10d1                	addi	ra,ra,-12
      bc:	00e5                	addi	ra,ra,25
      be:	0000                	unimp
      c0:	3408                	fld	fa0,40(s0)
      c2:	000c                	0xc
      c4:	650c                	ld	a1,8(a0)
      c6:	7078                	ld	a4,224(s0)
      c8:	0300                	addi	s0,sp,384
      ca:	0ed2                	slli	t4,t4,0x14
      cc:	0070                	addi	a2,sp,12
      ce:	0000                	unimp
      d0:	0b04                	addi	s1,sp,400
      d2:	0401                	addi	s0,s0,0
      d4:	0007720b          	0x7720b
      d8:	0300                	addi	s0,sp,384
      da:	00700ed3          	fadd.s	ft9,ft0,ft7,rne
      de:	0000                	unimp
      e0:	0104                	addi	s1,sp,128
      e2:	0400                	addi	s0,sp,512
      e4:	0200                	addi	s0,sp,256
      e6:	0708                	addi	a0,sp,896
      e8:	00000213          	li	tp,0
      ec:	6a0d                	lui	s4,0x3
      ee:	0002                	c.slli64	zero
      f0:	0800                	addi	s0,sp,16
      f2:	1207c703          	lbu	a4,288(a5)
      f6:	0001                	nop
      f8:	0e00                	addi	s0,sp,784
      fa:	6c66                	ld	s8,88(sp)
      fc:	0074                	addi	a3,sp,12
      fe:	9f0ac903          	lbu	s2,-1552(s5)
     102:	0000                	unimp
     104:	0f00                	addi	s0,sp,912
     106:	029e                	slli	t0,t0,0x7
     108:	0000                	unimp
     10a:	ab05d503          	lhu	a0,-1360(a1)
     10e:	0000                	unimp
     110:	0000                	unimp
     112:	9310                	0x9310
     114:	0000                	unimp
     116:	0100                	addi	s0,sp,128
     118:	009f0123          	sb	s1,2(t5)
     11c:	0000                	unimp
     11e:	0404                	addi	s1,sp,512
     120:	0001                	nop
     122:	0000                	unimp
     124:	0000                	unimp
     126:	0468                	addi	a0,sp,524
     128:	0000                	unimp
     12a:	0000                	unimp
     12c:	0000                	unimp
     12e:	9c01                	subw	s0,s0,s0
     130:	0390                	addi	a2,sp,448
     132:	0000                	unimp
     134:	6111                	addi	sp,sp,256
     136:	0100                	addi	s0,sp,128
     138:	009f1223          	sh	s1,4(t5)
     13c:	0000                	unimp
     13e:	0000                	unimp
     140:	0000                	unimp
     142:	6211                	lui	tp,0x4
     144:	0100                	addi	s0,sp,128
     146:	009f1c23          	sh	s1,24(t5)
     14a:	0000                	unimp
     14c:	013d                	addi	sp,sp,15
     14e:	0000                	unimp
     150:	ca12                	sw	tp,20(sp)
     152:	0000                	unimp
     154:	0100                	addi	s0,sp,128
     156:	0325                	addi	t1,t1,9
     158:	0050                	addi	a2,sp,4
     15a:	0000                	unimp
     15c:	0178                	addi	a4,sp,140
     15e:	0000                	unimp
     160:	0002bc13          	sltiu	s8,t0,0
     164:	0100                	addi	s0,sp,128
     166:	0325                	addi	t1,t1,9
     168:	0050                	addi	a2,sp,4
     16a:	0000                	unimp
     16c:	1400                	addi	s0,sp,544
     16e:	5f41                	li	t5,-16
     170:	26010063          	beqz	sp,3d0 <register_fini-0xfce0>
     174:	00039003          	lh	zero,0(t2)
     178:	1500                	addi	s0,sp,672
     17a:	5f41                	li	t5,-16
     17c:	26010073          	0x26010073
     180:	00039003          	lh	zero,0(t2)
     184:	0000                	unimp
     186:	0002                	c.slli64	zero
     188:	1500                	addi	s0,sp,672
     18a:	5f41                	li	t5,-16
     18c:	0065                	c.nop	25
     18e:	2601                	sext.w	a2,a2
     190:	00039003          	lh	zero,0(t2)
     194:	e100                	sd	s0,0(a0)
     196:	0002                	c.slli64	zero
     198:	1500                	addi	s0,sp,672
     19a:	5f41                	li	t5,-16
     19c:	0066                	c.slli	zero,0x19
     19e:	2601                	sext.w	a2,a2
     1a0:	0000e503          	lwu	a0,0(ra) # 1013c <__do_global_dtors_aux+0x28>
     1a4:	6700                	ld	s0,8(a4)
     1a6:	0004                	0x4
     1a8:	1400                	addi	s0,sp,544
     1aa:	5f42                	lw	t5,48(sp)
     1ac:	27010063          	beq	sp,a6,40c <register_fini-0xfca4>
     1b0:	00039003          	lh	zero,0(t2)
     1b4:	1500                	addi	s0,sp,672
     1b6:	5f42                	lw	t5,48(sp)
     1b8:	27010073          	0x27010073
     1bc:	00039003          	lh	zero,0(t2)
     1c0:	1b00                	addi	s0,sp,432
     1c2:	15000007          	0x15000007
     1c6:	5f42                	lw	t5,48(sp)
     1c8:	0065                	c.nop	25
     1ca:	2701                	sext.w	a4,a4
     1cc:	00039003          	lh	zero,0(t2)
     1d0:	8a00                	0x8a00
     1d2:	15000007          	0x15000007
     1d6:	5f42                	lw	t5,48(sp)
     1d8:	0066                	c.slli	zero,0x19
     1da:	2701                	sext.w	a4,a4
     1dc:	0000e503          	lwu	a0,0(ra)
     1e0:	a400                	fsd	fs0,8(s0)
     1e2:	0008                	0x8
     1e4:	1400                	addi	s0,sp,544
     1e6:	5f52                	lw	t5,52(sp)
     1e8:	28010063          	beqz	sp,468 <register_fini-0xfc48>
     1ec:	00039003          	lh	zero,0(t2)
     1f0:	1500                	addi	s0,sp,672
     1f2:	5f52                	lw	t5,52(sp)
     1f4:	28010073          	0x28010073
     1f8:	00039003          	lh	zero,0(t2)
     1fc:	9800                	0x9800
     1fe:	0009                	c.nop	2
     200:	1500                	addi	s0,sp,672
     202:	5f52                	lw	t5,52(sp)
     204:	0065                	c.nop	25
     206:	2801                	sext.w	a6,a6
     208:	00039003          	lh	zero,0(t2)
     20c:	7900                	ld	s0,48(a0)
     20e:	000a                	c.slli	zero,0x2
     210:	1500                	addi	s0,sp,672
     212:	5f52                	lw	t5,52(sp)
     214:	0066                	c.slli	zero,0x19
     216:	2801                	sext.w	a6,a6
     218:	0000e503          	lwu	a0,0(ra)
     21c:	4d00                	lw	s0,24(a0)
     21e:	000c                	0xc
     220:	1500                	addi	s0,sp,672
     222:	0072                	c.slli	zero,0x1c
     224:	2901                	sext.w	s2,s2
     226:	9f0a                	add	t5,t5,sp
     228:	0000                	unimp
     22a:	ee00                	sd	s0,24(a2)
     22c:	000e                	c.slli	zero,0x3
     22e:	1600                	addi	s0,sp,800
     230:	0000                	unimp
     232:	0000                	unimp
     234:	0245                	addi	tp,tp,17
     236:	0000                	unimp
     238:	00011717          	auipc	a4,0x11
     23c:	0100                	addi	s0,sp,128
     23e:	032c                	addi	a1,sp,392
     240:	00ec                	addi	a1,sp,76
     242:	0000                	unimp
     244:	1600                	addi	s0,sp,800
     246:	0060                	addi	s0,sp,12
     248:	0000                	unimp
     24a:	0000025b          	0x25b
     24e:	00011717          	auipc	a4,0x11
     252:	0100                	addi	s0,sp,128
     254:	032d                	addi	t1,t1,11
     256:	00ec                	addi	a1,sp,76
     258:	0000                	unimp
     25a:	1600                	addi	s0,sp,800
     25c:	0100                	addi	s0,sp,128
     25e:	0000                	unimp
     260:	02b5                	addi	t0,t0,13
     262:	0000                	unimp
     264:	9418                	0x9418
     266:	0002                	c.slli64	zero
     268:	0100                	addi	s0,sp,128
     26a:	032e                	slli	t1,t1,0xb
     26c:	04d8                	addi	a4,sp,580
     26e:	0001                	nop
     270:	0000                	unimp
     272:	0000                	unimp
     274:	9918                	0x9918
     276:	0002                	c.slli64	zero
     278:	0100                	addi	s0,sp,128
     27a:	032e                	slli	t1,t1,0xb
     27c:	0530                	addi	a2,sp,648
     27e:	0001                	nop
     280:	0000                	unimp
     282:	0000                	unimp
     284:	2a18                	fld	fa4,16(a2)
     286:	0002                	c.slli64	zero
     288:	0100                	addi	s0,sp,128
     28a:	032e                	slli	t1,t1,0xb
     28c:	046c                	addi	a1,sp,524
     28e:	0001                	nop
     290:	0000                	unimp
     292:	0000                	unimp
     294:	0018                	0x18
     296:	0001                	nop
     298:	0100                	addi	s0,sp,128
     29a:	032e                	slli	t1,t1,0xb
     29c:	04a8                	addi	a0,sp,584
     29e:	0001                	nop
     2a0:	0000                	unimp
     2a2:	0000                	unimp
     2a4:	5312                	lw	t1,36(sp)
     2a6:	0002                	c.slli64	zero
     2a8:	0100                	addi	s0,sp,128
     2aa:	032e                	slli	t1,t1,0xb
     2ac:	0050                	addi	a2,sp,4
     2ae:	0000                	unimp
     2b0:	00000f2b          	0xf2b
     2b4:	1600                	addi	s0,sp,800
     2b6:	0160                	addi	s0,sp,140
     2b8:	0000                	unimp
     2ba:	0335                	addi	t1,t1,13
     2bc:	0000                	unimp
     2be:	e818                	sd	a4,16(s0)
     2c0:	0001                	nop
     2c2:	0100                	addi	s0,sp,128
     2c4:	032e                	slli	t1,t1,0xb
     2c6:	061c                	addi	a5,sp,768
     2c8:	0001                	nop
     2ca:	0000                	unimp
     2cc:	0000                	unimp
     2ce:	ed18                	sd	a4,24(a0)
     2d0:	0001                	nop
     2d2:	0100                	addi	s0,sp,128
     2d4:	032e                	slli	t1,t1,0xb
     2d6:	0690                	addi	a2,sp,832
     2d8:	0001                	nop
     2da:	0000                	unimp
     2dc:	0000                	unimp
     2de:	f218                	sd	a4,32(a2)
     2e0:	0001                	nop
     2e2:	0100                	addi	s0,sp,128
     2e4:	032e                	slli	t1,t1,0xb
     2e6:	0600                	addi	s0,sp,768
     2e8:	0001                	nop
     2ea:	0000                	unimp
     2ec:	0000                	unimp
     2ee:	f718                	sd	a4,40(a4)
     2f0:	0001                	nop
     2f2:	0100                	addi	s0,sp,128
     2f4:	032e                	slli	t1,t1,0xb
     2f6:	074c                	addi	a1,sp,900
     2f8:	0001                	nop
     2fa:	0000                	unimp
     2fc:	0000                	unimp
     2fe:	7618                	ld	a4,40(a2)
     300:	0002                	c.slli64	zero
     302:	0100                	addi	s0,sp,128
     304:	032e                	slli	t1,t1,0xb
     306:	04a8                	addi	a0,sp,584
     308:	0001                	nop
     30a:	0000                	unimp
     30c:	0000                	unimp
     30e:	5312                	lw	t1,36(sp)
     310:	0002                	c.slli64	zero
     312:	0100                	addi	s0,sp,128
     314:	032e                	slli	t1,t1,0xb
     316:	0050                	addi	a2,sp,4
     318:	0000                	unimp
     31a:	000010db          	0x10db
     31e:	d019                	beqz	s0,224 <register_fini-0xfe8c>
     320:	0001                	nop
     322:	1200                	addi	s0,sp,288
     324:	0000022f          	0x22f
     328:	2e01                	sext.w	t3,t3
     32a:	00005003          	lhu	zero,0(zero) # 0 <register_fini-0x100b0>
     32e:	8b00                	0x8b00
     330:	0012                	c.slli	zero,0x4
     332:	0000                	unimp
     334:	1600                	addi	s0,sp,800
     336:	0210                	addi	a2,sp,256
     338:	0000                	unimp
     33a:	037d                	addi	t1,t1,31
     33c:	0000                	unimp
     33e:	0002a317          	auipc	t1,0x2a
     342:	0100                	addi	s0,sp,128
     344:	0050032f          	0x50032f
     348:	0000                	unimp
     34a:	171a                	slli	a4,a4,0x26
     34c:	000000cf          	fnmadd.s	ft1,ft0,ft0,ft0,rne
     350:	2f01                	sext.w	t5,t5
     352:	00039003          	lh	zero,0(t2)
     356:	1700                	addi	s0,sp,928
     358:	012c                	addi	a1,sp,136
     35a:	0000                	unimp
     35c:	2f01                	sext.w	t5,t5
     35e:	00039003          	lh	zero,0(t2)
     362:	1700                	addi	s0,sp,928
     364:	027f                	0x27f
     366:	0000                	unimp
     368:	2f01                	sext.w	t5,t5
     36a:	00039003          	lh	zero,0(t2)
     36e:	1700                	addi	s0,sp,928
     370:	000000eb          	0xeb
     374:	2f01                	sext.w	t5,t5
     376:	0000e503          	lwu	a0,0(ra)
     37a:	0000                	unimp
     37c:	1900                	addi	s0,sp,176
     37e:	0250                	addi	a2,sp,260
     380:	0000                	unimp
     382:	00001217          	auipc	tp,0x1
     386:	0100                	addi	s0,sp,128
     388:	00ec032f          	0xec032f
     38c:	0000                	unimp
     38e:	0000                	unimp
     390:	0802                	c.slli64	a6
     392:	4505                	li	a0,1
     394:	0002                	c.slli64	zero
     396:	0000                	unimp
     398:	04a0                	addi	s0,sp,584
     39a:	0000                	unimp
     39c:	0004                	0x4
     39e:	0184                	addi	s1,sp,192
     3a0:	0000                	unimp
     3a2:	0108                	addi	a0,sp,128
     3a4:	0141                	addi	sp,sp,16
     3a6:	0000                	unimp
     3a8:	cd0c                	sw	a1,24(a0)
     3aa:	25000003          	lb	zero,592(zero) # 250 <register_fini-0xfe60>
     3ae:	0000                	unimp
     3b0:	6c00                	ld	s0,24(s0)
     3b2:	0108                	addi	a0,sp,128
     3b4:	0000                	unimp
     3b6:	0000                	unimp
     3b8:	5400                	lw	s0,40(s0)
     3ba:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     3be:	0000                	unimp
     3c0:	7a00                	ld	s0,48(a2)
     3c2:	000a                	c.slli	zero,0x2
     3c4:	0200                	addi	s0,sp,256
     3c6:	0408                	addi	a0,sp,512
     3c8:	063d                	addi	a2,a2,15
     3ca:	0000                	unimp
     3cc:	1002                	c.slli	zero,0x20
     3ce:	df05                	beqz	a4,306 <register_fini-0xfdaa>
     3d0:	0001                	nop
     3d2:	0200                	addi	s0,sp,256
     3d4:	0710                	addi	a2,sp,896
     3d6:	0000                	unimp
     3d8:	0000                	unimp
     3da:	0802                	c.slli64	a6
     3dc:	4a05                	li	s4,1
     3de:	0002                	c.slli64	zero
     3e0:	0200                	addi	s0,sp,256
     3e2:	0601                	addi	a2,a2,0
     3e4:	0000010b          	0x10b
     3e8:	69050403          	lb	s0,1680(a0)
     3ec:	746e                	ld	s0,248(sp)
     3ee:	0400                	addi	s0,sp,512
     3f0:	01fc                	addi	a5,sp,204
     3f2:	0000                	unimp
     3f4:	4a02                	lw	s4,0(sp)
     3f6:	1601                	addi	a2,a2,-32
     3f8:	0069                	c.nop	26
     3fa:	0000                	unimp
     3fc:	5705                	li	a4,-31
     3fe:	0000                	unimp
     400:	0200                	addi	s0,sp,256
     402:	0801                	addi	a6,a6,0
     404:	0109                	addi	sp,sp,2
     406:	0000                	unimp
     408:	1604                	addi	s1,sp,800
     40a:	02000003          	lb	zero,32(zero) # 20 <register_fini-0x10090>
     40e:	7d16014b          	0x7d16014b
     412:	0000                	unimp
     414:	0200                	addi	s0,sp,256
     416:	0704                	addi	s1,sp,896
     418:	021d                	addi	tp,tp,7
     41a:	0000                	unimp
     41c:	0802                	c.slli64	a6
     41e:	00021807          	0x21807
     422:	0400                	addi	s0,sp,512
     424:	02fd                	addi	t0,t0,31
     426:	0000                	unimp
     428:	5002                	0x5002
     42a:	1101                	addi	sp,sp,-32
     42c:	0070                	addi	a2,sp,12
     42e:	0000                	unimp
     430:	6406                	ld	s0,64(sp)
     432:	0000                	unimp
     434:	a800                	fsd	fs0,16(s0)
     436:	0000                	unimp
     438:	0700                	addi	s0,sp,896
     43a:	0084                	addi	s1,sp,64
     43c:	0000                	unimp
     43e:	00ff                	0xff
     440:	9805                	andi	s0,s0,-31
     442:	0000                	unimp
     444:	0800                	addi	s0,sp,16
     446:	0204                	addi	s1,sp,256
     448:	0000                	unimp
     44a:	3c04                	fld	fs1,56(s0)
     44c:	a816                	fsd	ft5,16(sp)
     44e:	0000                	unimp
     450:	0900                	addi	s0,sp,144
     452:	00e4                	addi	s1,sp,76
     454:	0000                	unimp
     456:	2d0f4803          	lbu	a6,720(t5)
     45a:	0000                	unimp
     45c:	0a00                	addi	s0,sp,272
     45e:	0308                	addi	a0,sp,384
     460:	03ca                	slli	t2,t2,0x12
     462:	00ff                	0xff
     464:	0000                	unimp
     466:	00020e0b          	0x20e0b
     46a:	0300                	addi	s0,sp,384
     46c:	10d1                	addi	ra,ra,-12
     46e:	00ff                	0xff
     470:	0000                	unimp
     472:	3408                	fld	fa0,40(s0)
     474:	000c                	0xc
     476:	650c                	ld	a1,8(a0)
     478:	7078                	ld	a4,224(s0)
     47a:	0300                	addi	s0,sp,384
     47c:	0ed2                	slli	t4,t4,0x14
     47e:	007d                	c.nop	31
     480:	0000                	unimp
     482:	0b04                	addi	s1,sp,400
     484:	0401                	addi	s0,s0,0
     486:	0007720b          	0x7720b
     48a:	0300                	addi	s0,sp,384
     48c:	007d0ed3          	fadd.s	ft9,fs10,ft7,rne
     490:	0000                	unimp
     492:	0104                	addi	s1,sp,128
     494:	0400                	addi	s0,sp,512
     496:	0200                	addi	s0,sp,256
     498:	0708                	addi	a0,sp,896
     49a:	00000213          	li	tp,0
     49e:	6a0d                	lui	s4,0x3
     4a0:	0002                	c.slli64	zero
     4a2:	0800                	addi	s0,sp,16
     4a4:	2c07c703          	lbu	a4,704(a5)
     4a8:	0001                	nop
     4aa:	0e00                	addi	s0,sp,784
     4ac:	6c66                	ld	s8,88(sp)
     4ae:	0074                	addi	a3,sp,12
     4b0:	b90ac903          	lbu	s2,-1136(s5)
     4b4:	0000                	unimp
     4b6:	0f00                	addi	s0,sp,912
     4b8:	029e                	slli	t0,t0,0x7
     4ba:	0000                	unimp
     4bc:	c505d503          	lhu	a0,-944(a1)
     4c0:	0000                	unimp
     4c2:	0000                	unimp
     4c4:	c410                	sw	a2,8(s0)
     4c6:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     4ca:	00b90123          	sb	a1,2(s2)
     4ce:	0000                	unimp
     4d0:	086c                	addi	a1,sp,28
     4d2:	0001                	nop
     4d4:	0000                	unimp
     4d6:	0000                	unimp
     4d8:	0354                	addi	a3,sp,388
     4da:	0000                	unimp
     4dc:	0000                	unimp
     4de:	0000                	unimp
     4e0:	9c01                	subw	s0,s0,s0
     4e2:	049c                	addi	a5,sp,576
     4e4:	0000                	unimp
     4e6:	6111                	addi	sp,sp,256
     4e8:	0100                	addi	s0,sp,128
     4ea:	00b91223          	sh	a1,4(s2)
     4ee:	0000                	unimp
     4f0:	12fc                	addi	a5,sp,364
     4f2:	0000                	unimp
     4f4:	6211                	lui	tp,0x4
     4f6:	0100                	addi	s0,sp,128
     4f8:	00b91c23          	sh	a1,24(s2)
     4fc:	0000                	unimp
     4fe:	138d                	addi	t2,t2,-29
     500:	0000                	unimp
     502:	ca12                	sw	tp,20(sp)
     504:	0000                	unimp
     506:	0100                	addi	s0,sp,128
     508:	0325                	addi	t1,t1,9
     50a:	0050                	addi	a2,sp,4
     50c:	0000                	unimp
     50e:	142c                	addi	a1,sp,552
     510:	0000                	unimp
     512:	0002bc13          	sltiu	s8,t0,0
     516:	0100                	addi	s0,sp,128
     518:	0325                	addi	t1,t1,9
     51a:	0050                	addi	a2,sp,4
     51c:	0000                	unimp
     51e:	1400                	addi	s0,sp,544
     520:	5f41                	li	t5,-16
     522:	26010063          	beqz	sp,782 <register_fini-0xf92e>
     526:	00049c03          	lh	s8,0(s1)
     52a:	6400                	ld	s0,8(s0)
     52c:	0014                	0x14
     52e:	1400                	addi	s0,sp,544
     530:	5f41                	li	t5,-16
     532:	26010073          	0x26010073
     536:	00049c03          	lh	s8,0(s1)
     53a:	ae00                	fsd	fs0,24(a2)
     53c:	0014                	0x14
     53e:	1400                	addi	s0,sp,544
     540:	5f41                	li	t5,-16
     542:	0065                	c.nop	25
     544:	2601                	sext.w	a2,a2
     546:	00049c03          	lh	s8,0(s1)
     54a:	d600                	sw	s0,40(a2)
     54c:	0014                	0x14
     54e:	1400                	addi	s0,sp,544
     550:	5f41                	li	t5,-16
     552:	0066                	c.slli	zero,0x19
     554:	2601                	sext.w	a2,a2
     556:	0000ff03          	0xff03
     55a:	8f00                	0x8f00
     55c:	0015                	c.nop	5
     55e:	1400                	addi	s0,sp,544
     560:	5f42                	lw	t5,48(sp)
     562:	27010063          	beq	sp,a6,7c2 <register_fini-0xf8ee>
     566:	00049c03          	lh	s8,0(s1)
     56a:	3600                	fld	fs0,40(a2)
     56c:	0016                	c.slli	zero,0x5
     56e:	1400                	addi	s0,sp,544
     570:	5f42                	lw	t5,48(sp)
     572:	27010073          	0x27010073
     576:	00049c03          	lh	s8,0(s1)
     57a:	a600                	fsd	fs0,8(a2)
     57c:	0016                	c.slli	zero,0x5
     57e:	1400                	addi	s0,sp,544
     580:	5f42                	lw	t5,48(sp)
     582:	0065                	c.nop	25
     584:	2701                	sext.w	a4,a4
     586:	00049c03          	lh	s8,0(s1)
     58a:	e600                	sd	s0,8(a2)
     58c:	0016                	c.slli	zero,0x5
     58e:	1400                	addi	s0,sp,544
     590:	5f42                	lw	t5,48(sp)
     592:	0066                	c.slli	zero,0x19
     594:	2701                	sext.w	a4,a4
     596:	0000ff03          	0xff03
     59a:	8600                	0x8600
     59c:	14000017          	auipc	zero,0x14000
     5a0:	5f52                	lw	t5,52(sp)
     5a2:	28010063          	beqz	sp,822 <register_fini-0xf88e>
     5a6:	00049c03          	lh	s8,0(s1)
     5aa:	0f00                	addi	s0,sp,912
     5ac:	0018                	0x18
     5ae:	1400                	addi	s0,sp,544
     5b0:	5f52                	lw	t5,52(sp)
     5b2:	28010073          	0x28010073
     5b6:	00049c03          	lh	s8,0(s1)
     5ba:	5a00                	lw	s0,48(a2)
     5bc:	0018                	0x18
     5be:	1400                	addi	s0,sp,544
     5c0:	5f52                	lw	t5,52(sp)
     5c2:	0065                	c.nop	25
     5c4:	2801                	sext.w	a6,a6
     5c6:	00049c03          	lh	s8,0(s1)
     5ca:	e600                	sd	s0,8(a2)
     5cc:	0018                	0x18
     5ce:	1400                	addi	s0,sp,544
     5d0:	5f52                	lw	t5,52(sp)
     5d2:	0066                	c.slli	zero,0x19
     5d4:	2801                	sext.w	a6,a6
     5d6:	0000ff03          	0xff03
     5da:	1400                	addi	s0,sp,544
     5dc:	001a                	c.slli	zero,0x6
     5de:	1400                	addi	s0,sp,544
     5e0:	0072                	c.slli	zero,0x1c
     5e2:	2901                	sext.w	s2,s2
     5e4:	b90a                	fsd	ft2,176(sp)
     5e6:	0000                	unimp
     5e8:	c000                	sw	s0,0(s0)
     5ea:	001a                	c.slli	zero,0x6
     5ec:	1500                	addi	s0,sp,672
     5ee:	0290                	addi	a2,sp,320
     5f0:	0000                	unimp
     5f2:	0000026b          	0x26b
     5f6:	1716                	slli	a4,a4,0x25
     5f8:	0001                	nop
     5fa:	0100                	addi	s0,sp,128
     5fc:	032c                	addi	a1,sp,392
     5fe:	0106                	slli	sp,sp,0x1
     600:	0000                	unimp
     602:	1500                	addi	s0,sp,672
     604:	02f0                	addi	a2,sp,332
     606:	0000                	unimp
     608:	0285                	addi	t0,t0,1
     60a:	0000                	unimp
     60c:	1e12                	slli	t3,t3,0x24
     60e:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     612:	032c                	addi	a1,sp,392
     614:	049c                	addi	a5,sp,576
     616:	0000                	unimp
     618:	1afd                	addi	s5,s5,-1
     61a:	0000                	unimp
     61c:	1500                	addi	s0,sp,672
     61e:	0320                	addi	s0,sp,392
     620:	0000                	unimp
     622:	0000029b          	sext.w	t0,zero
     626:	1716                	slli	a4,a4,0x25
     628:	0001                	nop
     62a:	0100                	addi	s0,sp,128
     62c:	032d                	addi	t1,t1,11
     62e:	0106                	slli	sp,sp,0x1
     630:	0000                	unimp
     632:	1500                	addi	s0,sp,672
     634:	0360                	addi	s0,sp,396
     636:	0000                	unimp
     638:	02b5                	addi	t0,t0,13
     63a:	0000                	unimp
     63c:	1e12                	slli	t3,t3,0x24
     63e:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     642:	032d                	addi	t1,t1,11
     644:	049c                	addi	a5,sp,576
     646:	0000                	unimp
     648:	1b22                	slli	s6,s6,0x28
     64a:	0000                	unimp
     64c:	1700                	addi	s0,sp,928
     64e:	09c8                	addi	a0,sp,212
     650:	0001                	nop
     652:	0000                	unimp
     654:	0000                	unimp
     656:	00a8                	addi	a0,sp,72
     658:	0000                	unimp
     65a:	0000                	unimp
     65c:	0000                	unimp
     65e:	0435                	addi	s0,s0,13
     660:	0000                	unimp
     662:	c112                	sw	tp,128(sp)
     664:	0002                	c.slli64	zero
     666:	0100                	addi	s0,sp,128
     668:	032e                	slli	t1,t1,0xb
     66a:	00ff                	0xff
     66c:	0000                	unimp
     66e:	00001b47          	fmsub.s	fs6,ft0,ft0,ft0,rtz
     672:	da12                	sw	tp,52(sp)
     674:	0002                	c.slli64	zero
     676:	0100                	addi	s0,sp,128
     678:	032e                	slli	t1,t1,0xb
     67a:	00ff                	0xff
     67c:	0000                	unimp
     67e:	1b90                	addi	a2,sp,496
     680:	0000                	unimp
     682:	9018                	0x9018
     684:	12000003          	lb	zero,288(zero) # 120 <register_fini-0xff90>
     688:	0311                	addi	t1,t1,4
     68a:	0000                	unimp
     68c:	2e01                	sext.w	t3,t3
     68e:	0000ff03          	0xff03
     692:	ce00                	sw	s0,24(a2)
     694:	1200001b          	addiw	zero,zero,288
     698:	03b0                	addi	a2,sp,456
     69a:	0000                	unimp
     69c:	2e01                	sext.w	t3,t3
     69e:	0000ff03          	0xff03
     6a2:	f100                	sd	s0,32(a0)
     6a4:	1200001b          	addiw	zero,zero,288
     6a8:	000003fb          	0x3fb
     6ac:	2e01                	sext.w	t3,t3
     6ae:	0000ff03          	0xff03
     6b2:	5500                	lw	s0,40(a0)
     6b4:	001c                	0x1c
     6b6:	1200                	addi	s0,sp,288
     6b8:	03b5                	addi	t2,t2,13
     6ba:	0000                	unimp
     6bc:	2e01                	sext.w	t3,t3
     6be:	0000ff03          	0xff03
     6c2:	9e00                	0x9e00
     6c4:	001c                	0x1c
     6c6:	1200                	addi	s0,sp,288
     6c8:	02f8                	addi	a4,sp,332
     6ca:	0000                	unimp
     6cc:	2e01                	sext.w	t3,t3
     6ce:	00008b03          	lb	s6,0(ra)
     6d2:	d400                	sw	s0,40(s0)
     6d4:	001c                	0x1c
     6d6:	1200                	addi	s0,sp,288
     6d8:	000003bf 8b032e01 	0x8b032e01000003bf
     6e0:	0000                	unimp
     6e2:	f700                	sd	s0,40(a4)
     6e4:	001c                	0x1c
     6e6:	1200                	addi	s0,sp,288
     6e8:	000002f3          	0x2f3
     6ec:	2e01                	sext.w	t3,t3
     6ee:	00008b03          	lb	s6,0(ra)
     6f2:	1a00                	addi	s0,sp,304
     6f4:	001d                	c.nop	7
     6f6:	1200                	addi	s0,sp,288
     6f8:	03ba                	slli	t2,t2,0xe
     6fa:	0000                	unimp
     6fc:	2e01                	sext.w	t3,t3
     6fe:	00008b03          	lb	s6,0(ra)
     702:	5000                	lw	s0,32(s0)
     704:	001d                	c.nop	7
     706:	1700                	addi	s0,sp,928
     708:	09d8                	addi	a4,sp,212
     70a:	0001                	nop
     70c:	0000                	unimp
     70e:	0000                	unimp
     710:	0018                	0x18
     712:	0000                	unimp
     714:	0000                	unimp
     716:	0000                	unimp
     718:	03a1                	addi	t2,t2,8
     71a:	0000                	unimp
     71c:	0519                	addi	a0,a0,6
     71e:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     722:	032e                	slli	t1,t1,0xb
     724:	00ff                	0xff
     726:	0000                	unimp
     728:	5a01                	li	s4,-32
     72a:	0b19                	addi	s6,s6,6
     72c:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     730:	032e                	slli	t1,t1,0xb
     732:	00ff                	0xff
     734:	0000                	unimp
     736:	5b01                	li	s6,-32
     738:	1700                	addi	s0,sp,928
     73a:	09f0                	addi	a2,sp,220
     73c:	0001                	nop
     73e:	0000                	unimp
     740:	0000                	unimp
     742:	0010                	0x10
     744:	0000                	unimp
     746:	0000                	unimp
     748:	0000                	unimp
     74a:	000003d3          	fadd.s	ft7,ft0,ft0,rne
     74e:	0519                	addi	a0,a0,6
     750:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     754:	032e                	slli	t1,t1,0xb
     756:	00ff                	0xff
     758:	0000                	unimp
     75a:	5a01                	li	s4,-32
     75c:	0b19                	addi	s6,s6,6
     75e:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     762:	032e                	slli	t1,t1,0xb
     764:	00ff                	0xff
     766:	0000                	unimp
     768:	5b01                	li	s6,-32
     76a:	1700                	addi	s0,sp,928
     76c:	0a00                	addi	s0,sp,272
     76e:	0001                	nop
     770:	0000                	unimp
     772:	0000                	unimp
     774:	0010                	0x10
     776:	0000                	unimp
     778:	0000                	unimp
     77a:	0000                	unimp
     77c:	0405                	addi	s0,s0,1
     77e:	0000                	unimp
     780:	0519                	addi	a0,a0,6
     782:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     786:	032e                	slli	t1,t1,0xb
     788:	00ff                	0xff
     78a:	0000                	unimp
     78c:	5a01                	li	s4,-32
     78e:	0b19                	addi	s6,s6,6
     790:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     794:	032e                	slli	t1,t1,0xb
     796:	00ff                	0xff
     798:	0000                	unimp
     79a:	5b01                	li	s6,-32
     79c:	1a00                	addi	s0,sp,304
     79e:	0a10                	addi	a2,sp,272
     7a0:	0001                	nop
     7a2:	0000                	unimp
     7a4:	0000                	unimp
     7a6:	000c                	0xc
     7a8:	0000                	unimp
     7aa:	0000                	unimp
     7ac:	0000                	unimp
     7ae:	0519                	addi	a0,a0,6
     7b0:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     7b4:	032e                	slli	t1,t1,0xb
     7b6:	00ff                	0xff
     7b8:	0000                	unimp
     7ba:	5a01                	li	s4,-32
     7bc:	0b19                	addi	s6,s6,6
     7be:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     7c2:	032e                	slli	t1,t1,0xb
     7c4:	00ff                	0xff
     7c6:	0000                	unimp
     7c8:	5b01                	li	s6,-32
     7ca:	0000                	unimp
     7cc:	1500                	addi	s0,sp,672
     7ce:	03d0                	addi	a2,sp,452
     7d0:	0000                	unimp
     7d2:	047d                	addi	s0,s0,31
     7d4:	0000                	unimp
     7d6:	7e16                	ld	t3,352(sp)
     7d8:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     7dc:	0050032f          	0x50032f
     7e0:	0000                	unimp
     7e2:	0399161b          	0x399161b
     7e6:	0000                	unimp
     7e8:	2f01                	sext.w	t5,t5
     7ea:	00049c03          	lh	s8,0(s1)
     7ee:	1600                	addi	s0,sp,800
     7f0:	00000367          	jalr	t1,zero # 0 <register_fini-0x100b0>
     7f4:	2f01                	sext.w	t5,t5
     7f6:	00049c03          	lh	s8,0(s1)
     7fa:	1600                	addi	s0,sp,800
     7fc:	0350                	addi	a2,sp,388
     7fe:	0000                	unimp
     800:	2f01                	sext.w	t5,t5
     802:	00049c03          	lh	s8,0(s1)
     806:	1600                	addi	s0,sp,800
     808:	0339                	addi	t1,t1,14
     80a:	0000                	unimp
     80c:	2f01                	sext.w	t5,t5
     80e:	0000ff03          	0xff03
     812:	0000                	unimp
     814:	1a00                	addi	s0,sp,304
     816:	0b80                	addi	s0,sp,464
     818:	0001                	nop
     81a:	0000                	unimp
     81c:	0000                	unimp
     81e:	0018                	0x18
     820:	0000                	unimp
     822:	0000                	unimp
     824:	0000                	unimp
     826:	1216                	slli	tp,tp,0x25
     828:	0000                	unimp
     82a:	0100                	addi	s0,sp,128
     82c:	0106032f          	0x106032f
     830:	0000                	unimp
     832:	0000                	unimp
     834:	0802                	c.slli64	a6
     836:	4505                	li	a0,1
     838:	0002                	c.slli64	zero
     83a:	0000                	unimp
     83c:	0394                	addi	a3,sp,448
     83e:	0000                	unimp
     840:	0004                	0x4
     842:	0000030f          	0x30f
     846:	0108                	addi	a0,sp,128
     848:	0141                	addi	sp,sp,16
     84a:	0000                	unimp
     84c:	090c                	addi	a1,sp,144
     84e:	0004                	0x4
     850:	2500                	fld	fs0,8(a0)
     852:	0000                	unimp
     854:	c000                	sw	s0,0(s0)
     856:	0000010b          	0x10b
     85a:	0000                	unimp
     85c:	8800                	0x8800
     85e:	0004                	0x4
     860:	0000                	unimp
     862:	0000                	unimp
     864:	d200                	sw	s0,32(a2)
     866:	0012                	c.slli	zero,0x4
     868:	0200                	addi	s0,sp,256
     86a:	0408                	addi	a0,sp,512
     86c:	063d                	addi	a2,a2,15
     86e:	0000                	unimp
     870:	1002                	c.slli	zero,0x20
     872:	df05                	beqz	a4,7aa <register_fini-0xf906>
     874:	0001                	nop
     876:	0200                	addi	s0,sp,256
     878:	0710                	addi	a2,sp,896
     87a:	0000                	unimp
     87c:	0000                	unimp
     87e:	0802                	c.slli64	a6
     880:	4a05                	li	s4,1
     882:	0002                	c.slli64	zero
     884:	0200                	addi	s0,sp,256
     886:	0601                	addi	a2,a2,0
     888:	0000010b          	0x10b
     88c:	69050403          	lb	s0,1680(a0)
     890:	746e                	ld	s0,248(sp)
     892:	0400                	addi	s0,sp,512
     894:	01fc                	addi	a5,sp,204
     896:	0000                	unimp
     898:	4a02                	lw	s4,0(sp)
     89a:	1601                	addi	a2,a2,-32
     89c:	0069                	c.nop	26
     89e:	0000                	unimp
     8a0:	5705                	li	a4,-31
     8a2:	0000                	unimp
     8a4:	0200                	addi	s0,sp,256
     8a6:	0801                	addi	a6,a6,0
     8a8:	0109                	addi	sp,sp,2
     8aa:	0000                	unimp
     8ac:	0402                	c.slli64	s0
     8ae:	00021d07          	0x21d07
     8b2:	0200                	addi	s0,sp,256
     8b4:	0708                	addi	a0,sp,896
     8b6:	0218                	addi	a4,sp,256
     8b8:	0000                	unimp
     8ba:	6406                	ld	s0,64(sp)
     8bc:	0000                	unimp
     8be:	8e00                	0x8e00
     8c0:	0000                	unimp
     8c2:	0700                	addi	s0,sp,896
     8c4:	00000077          	0x77
     8c8:	00ff                	0xff
     8ca:	7e05                	lui	t3,0xfffe1
     8cc:	0000                	unimp
     8ce:	0800                	addi	s0,sp,16
     8d0:	0204                	addi	s1,sp,256
     8d2:	0000                	unimp
     8d4:	3c04                	fld	fs1,56(s0)
     8d6:	8e16                	mv	t3,t0
     8d8:	0000                	unimp
     8da:	0900                	addi	s0,sp,144
     8dc:	00e4                	addi	s1,sp,76
     8de:	0000                	unimp
     8e0:	2d0f4803          	lbu	a6,720(t5)
     8e4:	0000                	unimp
     8e6:	0a00                	addi	s0,sp,272
     8e8:	0308                	addi	a0,sp,384
     8ea:	03ca                	slli	t2,t2,0x12
     8ec:	00e5                	addi	ra,ra,25
     8ee:	0000                	unimp
     8f0:	00020e0b          	0x20e0b
     8f4:	0300                	addi	s0,sp,384
     8f6:	10d1                	addi	ra,ra,-12
     8f8:	00e5                	addi	ra,ra,25
     8fa:	0000                	unimp
     8fc:	3408                	fld	fa0,40(s0)
     8fe:	000c                	0xc
     900:	650c                	ld	a1,8(a0)
     902:	7078                	ld	a4,224(s0)
     904:	0300                	addi	s0,sp,384
     906:	0ed2                	slli	t4,t4,0x14
     908:	0070                	addi	a2,sp,12
     90a:	0000                	unimp
     90c:	0b04                	addi	s1,sp,400
     90e:	0401                	addi	s0,s0,0
     910:	0007720b          	0x7720b
     914:	0300                	addi	s0,sp,384
     916:	00700ed3          	fadd.s	ft9,ft0,ft7,rne
     91a:	0000                	unimp
     91c:	0104                	addi	s1,sp,128
     91e:	0400                	addi	s0,sp,512
     920:	0200                	addi	s0,sp,256
     922:	0708                	addi	a0,sp,896
     924:	00000213          	li	tp,0
     928:	6a0d                	lui	s4,0x3
     92a:	0002                	c.slli64	zero
     92c:	0800                	addi	s0,sp,16
     92e:	1207c703          	lbu	a4,288(a5)
     932:	0001                	nop
     934:	0e00                	addi	s0,sp,784
     936:	6c66                	ld	s8,88(sp)
     938:	0074                	addi	a3,sp,12
     93a:	9f0ac903          	lbu	s2,-1552(s5)
     93e:	0000                	unimp
     940:	0f00                	addi	s0,sp,912
     942:	029e                	slli	t0,t0,0x7
     944:	0000                	unimp
     946:	ab05d503          	lhu	a0,-1360(a1)
     94a:	0000                	unimp
     94c:	0000                	unimp
     94e:	0010                	0x10
     950:	0004                	0x4
     952:	0100                	addi	s0,sp,128
     954:	009f0123          	sb	s1,2(t5)
     958:	0000                	unimp
     95a:	0bc0                	addi	s0,sp,468
     95c:	0001                	nop
     95e:	0000                	unimp
     960:	0000                	unimp
     962:	0488                	addi	a0,sp,576
     964:	0000                	unimp
     966:	0000                	unimp
     968:	0000                	unimp
     96a:	9c01                	subw	s0,s0,s0
     96c:	0390                	addi	a2,sp,448
     96e:	0000                	unimp
     970:	6111                	addi	sp,sp,256
     972:	0100                	addi	s0,sp,128
     974:	009f1223          	sh	s1,4(t5)
     978:	0000                	unimp
     97a:	00001d73          	csrrw	s10,ustatus,zero
     97e:	6211                	lui	tp,0x4
     980:	0100                	addi	s0,sp,128
     982:	009f1c23          	sh	s1,24(t5)
     986:	0000                	unimp
     988:	1dae                	slli	s11,s11,0x2b
     98a:	0000                	unimp
     98c:	ca12                	sw	tp,20(sp)
     98e:	0000                	unimp
     990:	0100                	addi	s0,sp,128
     992:	0325                	addi	t1,t1,9
     994:	0050                	addi	a2,sp,4
     996:	0000                	unimp
     998:	1de9                	addi	s11,s11,-6
     99a:	0000                	unimp
     99c:	0002bc13          	sltiu	s8,t0,0
     9a0:	0100                	addi	s0,sp,128
     9a2:	0325                	addi	t1,t1,9
     9a4:	0050                	addi	a2,sp,4
     9a6:	0000                	unimp
     9a8:	1400                	addi	s0,sp,544
     9aa:	5f41                	li	t5,-16
     9ac:	26010063          	beqz	sp,c0c <register_fini-0xf4a4>
     9b0:	00039003          	lh	zero,0(t2)
     9b4:	1500                	addi	s0,sp,672
     9b6:	5f41                	li	t5,-16
     9b8:	26010073          	0x26010073
     9bc:	00039003          	lh	zero,0(t2)
     9c0:	7100                	ld	s0,32(a0)
     9c2:	001e                	c.slli	zero,0x7
     9c4:	1500                	addi	s0,sp,672
     9c6:	5f41                	li	t5,-16
     9c8:	0065                	c.nop	25
     9ca:	2601                	sext.w	a2,a2
     9cc:	00039003          	lh	zero,0(t2)
     9d0:	3f00                	fld	fs0,56(a4)
     9d2:	001f 1500 5f41      	0x5f411500001f
     9d8:	0066                	c.slli	zero,0x19
     9da:	2601                	sext.w	a2,a2
     9dc:	0000e503          	lwu	a0,0(ra)
     9e0:	3d00                	fld	fs0,56(a0)
     9e2:	0021                	c.nop	8
     9e4:	1400                	addi	s0,sp,544
     9e6:	5f42                	lw	t5,48(sp)
     9e8:	27010063          	beq	sp,a6,c48 <register_fini-0xf468>
     9ec:	00039003          	lh	zero,0(t2)
     9f0:	1500                	addi	s0,sp,672
     9f2:	5f42                	lw	t5,48(sp)
     9f4:	27010073          	0x27010073
     9f8:	00039003          	lh	zero,0(t2)
     9fc:	2800                	fld	fs0,16(s0)
     9fe:	15000023          	sb	a6,320(zero) # 140 <register_fini-0xff70>
     a02:	5f42                	lw	t5,48(sp)
     a04:	0065                	c.nop	25
     a06:	2701                	sext.w	a4,a4
     a08:	00039003          	lh	zero,0(t2)
     a0c:	0e00                	addi	s0,sp,784
     a0e:	0024                	addi	s1,sp,8
     a10:	1500                	addi	s0,sp,672
     a12:	5f42                	lw	t5,48(sp)
     a14:	0066                	c.slli	zero,0x19
     a16:	2701                	sext.w	a4,a4
     a18:	0000e503          	lwu	a0,0(ra)
     a1c:	1500                	addi	s0,sp,672
     a1e:	0025                	c.nop	9
     a20:	1400                	addi	s0,sp,544
     a22:	5f52                	lw	t5,52(sp)
     a24:	28010063          	beqz	sp,ca4 <register_fini-0xf40c>
     a28:	00039003          	lh	zero,0(t2)
     a2c:	1500                	addi	s0,sp,672
     a2e:	5f52                	lw	t5,52(sp)
     a30:	28010073          	0x28010073
     a34:	00039003          	lh	zero,0(t2)
     a38:	0900                	addi	s0,sp,144
     a3a:	0026                	c.slli	zero,0x9
     a3c:	1500                	addi	s0,sp,672
     a3e:	5f52                	lw	t5,52(sp)
     a40:	0065                	c.nop	25
     a42:	2801                	sext.w	a6,a6
     a44:	00039003          	lh	zero,0(t2)
     a48:	ea00                	sd	s0,16(a2)
     a4a:	0026                	c.slli	zero,0x9
     a4c:	1500                	addi	s0,sp,672
     a4e:	5f52                	lw	t5,52(sp)
     a50:	0066                	c.slli	zero,0x19
     a52:	2801                	sext.w	a6,a6
     a54:	0000e503          	lwu	a0,0(ra)
     a58:	ab00                	fsd	fs0,16(a4)
     a5a:	0028                	addi	a0,sp,8
     a5c:	1500                	addi	s0,sp,672
     a5e:	0072                	c.slli	zero,0x1c
     a60:	2901                	sext.w	s2,s2
     a62:	9f0a                	add	t5,t5,sp
     a64:	0000                	unimp
     a66:	3e00                	fld	fs0,56(a2)
     a68:	1600002b          	0x1600002b
     a6c:	0400                	addi	s0,sp,512
     a6e:	0000                	unimp
     a70:	0245                	addi	tp,tp,17
     a72:	0000                	unimp
     a74:	00011717          	auipc	a4,0x11
     a78:	0100                	addi	s0,sp,128
     a7a:	032c                	addi	a1,sp,392
     a7c:	00ec                	addi	a1,sp,76
     a7e:	0000                	unimp
     a80:	1600                	addi	s0,sp,800
     a82:	0460                	addi	s0,sp,524
     a84:	0000                	unimp
     a86:	0000025b          	0x25b
     a8a:	00011717          	auipc	a4,0x11
     a8e:	0100                	addi	s0,sp,128
     a90:	032d                	addi	t1,t1,11
     a92:	00ec                	addi	a1,sp,76
     a94:	0000                	unimp
     a96:	1600                	addi	s0,sp,800
     a98:	04f0                	addi	a2,sp,588
     a9a:	0000                	unimp
     a9c:	02b5                	addi	t0,t0,13
     a9e:	0000                	unimp
     aa0:	9418                	0x9418
     aa2:	0002                	c.slli64	zero
     aa4:	0100                	addi	s0,sp,128
     aa6:	032e                	slli	t1,t1,0xb
     aa8:	0ca8                	addi	a0,sp,600
     aaa:	0001                	nop
     aac:	0000                	unimp
     aae:	0000                	unimp
     ab0:	9918                	0x9918
     ab2:	0002                	c.slli64	zero
     ab4:	0100                	addi	s0,sp,128
     ab6:	032e                	slli	t1,t1,0xb
     ab8:	0d04                	addi	s1,sp,656
     aba:	0001                	nop
     abc:	0000                	unimp
     abe:	0000                	unimp
     ac0:	2a18                	fld	fa4,16(a2)
     ac2:	0002                	c.slli64	zero
     ac4:	0100                	addi	s0,sp,128
     ac6:	032e                	slli	t1,t1,0xb
     ac8:	0c3c                	addi	a5,sp,536
     aca:	0001                	nop
     acc:	0000                	unimp
     ace:	0000                	unimp
     ad0:	0018                	0x18
     ad2:	0001                	nop
     ad4:	0100                	addi	s0,sp,128
     ad6:	032e                	slli	t1,t1,0xb
     ad8:	0c78                	addi	a4,sp,540
     ada:	0001                	nop
     adc:	0000                	unimp
     ade:	0000                	unimp
     ae0:	5312                	lw	t1,36(sp)
     ae2:	0002                	c.slli64	zero
     ae4:	0100                	addi	s0,sp,128
     ae6:	032e                	slli	t1,t1,0xb
     ae8:	0050                	addi	a2,sp,4
     aea:	0000                	unimp
     aec:	00002b7b          	0x2b7b
     af0:	1600                	addi	s0,sp,800
     af2:	0550                	addi	a2,sp,644
     af4:	0000                	unimp
     af6:	0335                	addi	t1,t1,13
     af8:	0000                	unimp
     afa:	e818                	sd	a4,16(s0)
     afc:	0001                	nop
     afe:	0100                	addi	s0,sp,128
     b00:	032e                	slli	t1,t1,0xb
     b02:	0df0                	addi	a2,sp,732
     b04:	0001                	nop
     b06:	0000                	unimp
     b08:	0000                	unimp
     b0a:	ed18                	sd	a4,24(a0)
     b0c:	0001                	nop
     b0e:	0100                	addi	s0,sp,128
     b10:	032e                	slli	t1,t1,0xb
     b12:	0e68                	addi	a0,sp,796
     b14:	0001                	nop
     b16:	0000                	unimp
     b18:	0000                	unimp
     b1a:	f218                	sd	a4,32(a2)
     b1c:	0001                	nop
     b1e:	0100                	addi	s0,sp,128
     b20:	032e                	slli	t1,t1,0xb
     b22:	0dd4                	addi	a3,sp,724
     b24:	0001                	nop
     b26:	0000                	unimp
     b28:	0000                	unimp
     b2a:	f718                	sd	a4,40(a4)
     b2c:	0001                	nop
     b2e:	0100                	addi	s0,sp,128
     b30:	032e                	slli	t1,t1,0xb
     b32:	0f28                	addi	a0,sp,920
     b34:	0001                	nop
     b36:	0000                	unimp
     b38:	0000                	unimp
     b3a:	7618                	ld	a4,40(a2)
     b3c:	0002                	c.slli64	zero
     b3e:	0100                	addi	s0,sp,128
     b40:	032e                	slli	t1,t1,0xb
     b42:	0c78                	addi	a4,sp,540
     b44:	0001                	nop
     b46:	0000                	unimp
     b48:	0000                	unimp
     b4a:	5312                	lw	t1,36(sp)
     b4c:	0002                	c.slli64	zero
     b4e:	0100                	addi	s0,sp,128
     b50:	032e                	slli	t1,t1,0xb
     b52:	0050                	addi	a2,sp,4
     b54:	0000                	unimp
     b56:	2c8e                	fld	fs9,192(sp)
     b58:	0000                	unimp
     b5a:	b019                	j	360 <register_fini-0xfd50>
     b5c:	0005                	c.nop	1
     b5e:	1200                	addi	s0,sp,288
     b60:	0000022f          	0x22f
     b64:	2e01                	sext.w	t3,t3
     b66:	00005003          	lhu	zero,0(zero) # 0 <register_fini-0x100b0>
     b6a:	8d00                	0x8d00
     b6c:	002d                	c.nop	11
     b6e:	0000                	unimp
     b70:	1600                	addi	s0,sp,800
     b72:	05f0                	addi	a2,sp,716
     b74:	0000                	unimp
     b76:	037d                	addi	t1,t1,31
     b78:	0000                	unimp
     b7a:	0002a317          	auipc	t1,0x2a
     b7e:	0100                	addi	s0,sp,128
     b80:	0050032f          	0x50032f
     b84:	0000                	unimp
     b86:	171a                	slli	a4,a4,0x26
     b88:	000000cf          	fnmadd.s	ft1,ft0,ft0,ft0,rne
     b8c:	2f01                	sext.w	t5,t5
     b8e:	00039003          	lh	zero,0(t2)
     b92:	1700                	addi	s0,sp,928
     b94:	012c                	addi	a1,sp,136
     b96:	0000                	unimp
     b98:	2f01                	sext.w	t5,t5
     b9a:	00039003          	lh	zero,0(t2)
     b9e:	1700                	addi	s0,sp,928
     ba0:	027f                	0x27f
     ba2:	0000                	unimp
     ba4:	2f01                	sext.w	t5,t5
     ba6:	00039003          	lh	zero,0(t2)
     baa:	1700                	addi	s0,sp,928
     bac:	000000eb          	0xeb
     bb0:	2f01                	sext.w	t5,t5
     bb2:	0000e503          	lwu	a0,0(ra)
     bb6:	0000                	unimp
     bb8:	1900                	addi	s0,sp,176
     bba:	0630                	addi	a2,sp,776
     bbc:	0000                	unimp
     bbe:	00001217          	auipc	tp,0x1
     bc2:	0100                	addi	s0,sp,128
     bc4:	00ec032f          	0xec032f
     bc8:	0000                	unimp
     bca:	0000                	unimp
     bcc:	0802                	c.slli64	a6
     bce:	4505                	li	a0,1
     bd0:	0002                	c.slli64	zero
     bd2:	0000                	unimp
     bd4:	00000257          	0x257
     bd8:	0004                	0x4
     bda:	00000493          	li	s1,0
     bde:	0108                	addi	a0,sp,128
     be0:	0141                	addi	sp,sp,16
     be2:	0000                	unimp
     be4:	640c                	ld	a1,8(s0)
     be6:	0004                	0x4
     be8:	2500                	fld	fs0,8(a0)
     bea:	0000                	unimp
     bec:	4800                	lw	s0,16(s0)
     bee:	0110                	addi	a2,sp,128
     bf0:	0000                	unimp
     bf2:	0000                	unimp
     bf4:	8400                	0x8400
     bf6:	0000                	unimp
     bf8:	0000                	unimp
     bfa:	0000                	unimp
     bfc:	9400                	0x9400
     bfe:	001d                	c.nop	7
     c00:	0200                	addi	s0,sp,256
     c02:	0408                	addi	a0,sp,512
     c04:	063d                	addi	a2,a2,15
     c06:	0000                	unimp
     c08:	1002                	c.slli	zero,0x20
     c0a:	df05                	beqz	a4,b42 <register_fini-0xf56e>
     c0c:	0001                	nop
     c0e:	0200                	addi	s0,sp,256
     c10:	0710                	addi	a2,sp,896
     c12:	0000                	unimp
     c14:	0000                	unimp
     c16:	0802                	c.slli64	a6
     c18:	4a05                	li	s4,1
     c1a:	0002                	c.slli64	zero
     c1c:	0200                	addi	s0,sp,256
     c1e:	0601                	addi	a2,a2,0
     c20:	0000010b          	0x10b
     c24:	00031703          	lh	a4,0(t1) # 2ab7a <__BSS_END__+0x1834a>
     c28:	0200                	addi	s0,sp,256
     c2a:	0148                	addi	a0,sp,132
     c2c:	5d0d                	li	s10,-29
     c2e:	0000                	unimp
     c30:	0400                	addi	s0,sp,512
     c32:	0504                	addi	s1,sp,640
     c34:	6e69                	lui	t3,0x1a
     c36:	0074                	addi	a3,sp,12
     c38:	0001fc03          	0x1fc03
     c3c:	0200                	addi	s0,sp,256
     c3e:	014a                	slli	sp,sp,0x12
     c40:	7616                	ld	a2,352(sp)
     c42:	0000                	unimp
     c44:	0500                	addi	s0,sp,640
     c46:	0064                	addi	s1,sp,12
     c48:	0000                	unimp
     c4a:	0102                	c.slli64	sp
     c4c:	0908                	addi	a0,sp,144
     c4e:	0001                	nop
     c50:	0300                	addi	s0,sp,384
     c52:	0316                	slli	t1,t1,0x5
     c54:	0000                	unimp
     c56:	4b02                	lw	s6,0(sp)
     c58:	1601                	addi	a2,a2,-32
     c5a:	008a                	slli	ra,ra,0x2
     c5c:	0000                	unimp
     c5e:	0402                	c.slli64	s0
     c60:	00021d07          	0x21d07
     c64:	0200                	addi	s0,sp,256
     c66:	0708                	addi	a0,sp,896
     c68:	0218                	addi	a4,sp,256
     c6a:	0000                	unimp
     c6c:	7106                	ld	sp,96(sp)
     c6e:	0000                	unimp
     c70:	a800                	fsd	fs0,16(s0)
     c72:	0000                	unimp
     c74:	0700                	addi	s0,sp,896
     c76:	0091                	addi	ra,ra,4
     c78:	0000                	unimp
     c7a:	00ff                	0xff
     c7c:	9805                	andi	s0,s0,-31
     c7e:	0000                	unimp
     c80:	0800                	addi	s0,sp,16
     c82:	0204                	addi	s1,sp,256
     c84:	0000                	unimp
     c86:	3c04                	fld	fs1,56(s0)
     c88:	a816                	fsd	ft5,16(sp)
     c8a:	0000                	unimp
     c8c:	0900                	addi	s0,sp,144
     c8e:	00e4                	addi	s1,sp,76
     c90:	0000                	unimp
     c92:	2d0f4803          	lbu	a6,720(t5)
     c96:	0000                	unimp
     c98:	0a00                	addi	s0,sp,272
     c9a:	0308                	addi	a0,sp,384
     c9c:	03ca                	slli	t2,t2,0x12
     c9e:	00ff                	0xff
     ca0:	0000                	unimp
     ca2:	00020e0b          	0x20e0b
     ca6:	0300                	addi	s0,sp,384
     ca8:	10d1                	addi	ra,ra,-12
     caa:	00ff                	0xff
     cac:	0000                	unimp
     cae:	3408                	fld	fa0,40(s0)
     cb0:	000c                	0xc
     cb2:	650c                	ld	a1,8(a0)
     cb4:	7078                	ld	a4,224(s0)
     cb6:	0300                	addi	s0,sp,384
     cb8:	0ed2                	slli	t4,t4,0x14
     cba:	008a                	slli	ra,ra,0x2
     cbc:	0000                	unimp
     cbe:	0b04                	addi	s1,sp,400
     cc0:	0401                	addi	s0,s0,0
     cc2:	0007720b          	0x7720b
     cc6:	0300                	addi	s0,sp,384
     cc8:	008a0ed3          	fadd.s	ft9,fs4,fs0,rne
     ccc:	0000                	unimp
     cce:	0104                	addi	s1,sp,128
     cd0:	0400                	addi	s0,sp,512
     cd2:	0200                	addi	s0,sp,256
     cd4:	0708                	addi	a0,sp,896
     cd6:	00000213          	li	tp,0
     cda:	6a0d                	lui	s4,0x3
     cdc:	0002                	c.slli64	zero
     cde:	0800                	addi	s0,sp,16
     ce0:	2c07c703          	lbu	a4,704(a5)
     ce4:	0001                	nop
     ce6:	0e00                	addi	s0,sp,784
     ce8:	6c66                	ld	s8,88(sp)
     cea:	0074                	addi	a3,sp,12
     cec:	b90ac903          	lbu	s2,-1136(s5)
     cf0:	0000                	unimp
     cf2:	0f00                	addi	s0,sp,912
     cf4:	029e                	slli	t0,t0,0x7
     cf6:	0000                	unimp
     cf8:	c505d503          	lhu	a0,-944(a1)
     cfc:	0000                	unimp
     cfe:	0000                	unimp
     d00:	9510                	0x9510
     d02:	0004                	0x4
     d04:	0100                	addi	s0,sp,128
     d06:	0124                	addi	s1,sp,136
     d08:	00b9                	addi	ra,ra,14
     d0a:	0000                	unimp
     d0c:	1048                	addi	a0,sp,36
     d0e:	0001                	nop
     d10:	0000                	unimp
     d12:	0000                	unimp
     d14:	0084                	addi	s1,sp,64
     d16:	0000                	unimp
     d18:	0000                	unimp
     d1a:	0000                	unimp
     d1c:	9c01                	subw	s0,s0,s0
     d1e:	00000253          	fadd.s	ft4,ft0,ft0,rne
     d22:	6911                	lui	s2,0x4
     d24:	0100                	addi	s0,sp,128
     d26:	1524                	addi	s1,sp,680
     d28:	0050                	addi	a2,sp,4
     d2a:	0000                	unimp
     d2c:	2dfe                	fld	fs11,472(sp)
     d2e:	0000                	unimp
     d30:	4112                	lw	sp,4(sp)
     d32:	635f 0100 0326      	0x3260100635f
     d38:	00000253          	fadd.s	ft4,ft0,ft0,rne
     d3c:	735f4113          	xori	sp,t5,1845
     d40:	0100                	addi	s0,sp,128
     d42:	0326                	slli	t1,t1,0x9
     d44:	00000253          	fadd.s	ft4,ft0,ft0,rne
     d48:	2e4a                	fld	ft8,144(sp)
     d4a:	0000                	unimp
     d4c:	655f4113          	xori	sp,t5,1621
     d50:	0100                	addi	s0,sp,128
     d52:	0326                	slli	t1,t1,0x9
     d54:	00000253          	fadd.s	ft4,ft0,ft0,rne
     d58:	2e6d                	addiw	t3,t3,27
     d5a:	0000                	unimp
     d5c:	665f4113          	xori	sp,t5,1637
     d60:	0100                	addi	s0,sp,128
     d62:	0326                	slli	t1,t1,0x9
     d64:	00ff                	0xff
     d66:	0000                	unimp
     d68:	2e90                	fld	fa2,24(a3)
     d6a:	0000                	unimp
     d6c:	01006113          	ori	sp,zero,16
     d70:	00b90a27          	0xb90a27
     d74:	0000                	unimp
     d76:	2ec6                	fld	ft9,80(sp)
     d78:	0000                	unimp
     d7a:	7014                	ld	a3,32(s0)
     d7c:	0006                	c.slli	zero,0x1
     d7e:	4000                	lw	s0,0(s0)
     d80:	0002                	c.slli64	zero
     d82:	1500                	addi	s0,sp,672
     d84:	00000437          	lui	s0,0x0
     d88:	2901                	sext.w	s2,s2
     d8a:	105c1603          	lh	a2,261(s8)
     d8e:	0001                	nop
     d90:	0000                	unimp
     d92:	0000                	unimp
     d94:	0034                	addi	a3,sp,8
     d96:	0000                	unimp
     d98:	0000                	unimp
     d9a:	0000                	unimp
     d9c:	00044417          	auipc	s0,0x44
     da0:	0100                	addi	s0,sp,128
     da2:	0329                	addi	t1,t1,10
     da4:	007d                	c.nop	31
     da6:	0000                	unimp
     da8:	00002f03          	lw	t5,0(zero) # 0 <register_fini-0x100b0>
     dac:	6c18                	ld	a4,24(s0)
     dae:	0110                	addi	a2,sp,128
     db0:	0000                	unimp
     db2:	0000                	unimp
     db4:	1800                	addi	s0,sp,48
     db6:	0000                	unimp
     db8:	0000                	unimp
     dba:	0000                	unimp
     dbc:	fe00                	sd	s0,56(a2)
     dbe:	0001                	nop
     dc0:	1700                	addi	s0,sp,928
     dc2:	0454                	addi	a3,sp,516
     dc4:	0000                	unimp
     dc6:	2901                	sext.w	s2,s2
     dc8:	00005d03          	lhu	s10,0(zero) # 0 <register_fini-0x100b0>
     dcc:	2600                	fld	fs0,8(a2)
     dce:	0000002f          	0x2f
     dd2:	1a19                	addi	s4,s4,-26
     dd4:	000002a3          	sb	zero,5(zero) # 5 <register_fini-0x100ab>
     dd8:	2901                	sext.w	s2,s2
     dda:	00005d03          	lhu	s10,0(zero) # 0 <register_fini-0x100b0>
     dde:	1900                	addi	s0,sp,176
     de0:	cf1a                	sw	t1,156(sp)
     de2:	0000                	unimp
     de4:	0100                	addi	s0,sp,128
     de6:	0329                	addi	t1,t1,10
     de8:	00000253          	fadd.s	ft4,ft0,ft0,rne
     dec:	2c1a                	fld	fs8,384(sp)
     dee:	0001                	nop
     df0:	0100                	addi	s0,sp,128
     df2:	0329                	addi	t1,t1,10
     df4:	00000253          	fadd.s	ft4,ft0,ft0,rne
     df8:	7f1a                	ld	t5,416(sp)
     dfa:	0002                	c.slli64	zero
     dfc:	0100                	addi	s0,sp,128
     dfe:	0329                	addi	t1,t1,10
     e00:	00000253          	fadd.s	ft4,ft0,ft0,rne
     e04:	eb1a                	sd	t1,400(sp)
     e06:	0000                	unimp
     e08:	0100                	addi	s0,sp,128
     e0a:	0329                	addi	t1,t1,10
     e0c:	00ff                	0xff
     e0e:	0000                	unimp
     e10:	0000                	unimp
     e12:	0000                	unimp
     e14:	0006b01b          	0x6b01b
     e18:	1a00                	addi	s0,sp,304
     e1a:	0012                	c.slli	zero,0x4
     e1c:	0000                	unimp
     e1e:	2a01                	sext.w	s4,s4
     e20:	00010603          	lb	a2,0(sp)
     e24:	0000                	unimp
     e26:	0200                	addi	s0,sp,256
     e28:	0508                	addi	a0,sp,640
     e2a:	0245                	addi	tp,tp,17
     e2c:	0000                	unimp
     e2e:	b700                	fsd	fs0,40(a4)
     e30:	0002                	c.slli64	zero
     e32:	0400                	addi	s0,sp,512
     e34:	1800                	addi	s0,sp,48
     e36:	0006                	c.slli	zero,0x1
     e38:	0800                	addi	s0,sp,16
     e3a:	4101                	li	sp,0
     e3c:	0001                	nop
     e3e:	0c00                	addi	s0,sp,528
     e40:	04a1                	addi	s1,s1,8
     e42:	0000                	unimp
     e44:	0025                	c.nop	9
     e46:	0000                	unimp
     e48:	10cc                	addi	a1,sp,100
     e4a:	0001                	nop
     e4c:	0000                	unimp
     e4e:	0000                	unimp
     e50:	00a4                	addi	s1,sp,72
     e52:	0000                	unimp
     e54:	0000                	unimp
     e56:	0000                	unimp
     e58:	1fd9                	addi	t6,t6,-10
     e5a:	0000                	unimp
     e5c:	0802                	c.slli64	a6
     e5e:	3d04                	fld	fs1,56(a0)
     e60:	0006                	c.slli	zero,0x1
     e62:	0200                	addi	s0,sp,256
     e64:	0404                	addi	s1,sp,512
     e66:	08c6                	slli	a7,a7,0x11
     e68:	0000                	unimp
     e6a:	1002                	c.slli	zero,0x20
     e6c:	df05                	beqz	a4,da4 <register_fini-0xf30c>
     e6e:	0001                	nop
     e70:	0200                	addi	s0,sp,256
     e72:	0710                	addi	a2,sp,896
     e74:	0000                	unimp
     e76:	0000                	unimp
     e78:	0802                	c.slli64	a6
     e7a:	4a05                	li	s4,1
     e7c:	0002                	c.slli64	zero
     e7e:	0200                	addi	s0,sp,256
     e80:	0601                	addi	a2,a2,0
     e82:	0000010b          	0x10b
     e86:	69050403          	lb	s0,1680(a0)
     e8a:	746e                	ld	s0,248(sp)
     e8c:	0400                	addi	s0,sp,512
     e8e:	01fc                	addi	a5,sp,204
     e90:	0000                	unimp
     e92:	4a02                	lw	s4,0(sp)
     e94:	1601                	addi	a2,a2,-32
     e96:	0070                	addi	a2,sp,12
     e98:	0000                	unimp
     e9a:	5e05                	li	t3,-31
     e9c:	0000                	unimp
     e9e:	0200                	addi	s0,sp,256
     ea0:	0801                	addi	a6,a6,0
     ea2:	0109                	addi	sp,sp,2
     ea4:	0000                	unimp
     ea6:	0402                	c.slli64	s0
     ea8:	00021d07          	0x21d07
     eac:	0200                	addi	s0,sp,256
     eae:	0708                	addi	a0,sp,896
     eb0:	0218                	addi	a4,sp,256
     eb2:	0000                	unimp
     eb4:	6b06                	ld	s6,64(sp)
     eb6:	0000                	unimp
     eb8:	9500                	0x9500
     eba:	0000                	unimp
     ebc:	0700                	addi	s0,sp,896
     ebe:	007e                	c.slli	zero,0x1f
     ec0:	0000                	unimp
     ec2:	00ff                	0xff
     ec4:	8505                	srai	a0,a0,0x1
     ec6:	0000                	unimp
     ec8:	0800                	addi	s0,sp,16
     eca:	0204                	addi	s1,sp,256
     ecc:	0000                	unimp
     ece:	3c05                	addiw	s8,s8,-31
     ed0:	9516                	add	a0,a0,t0
     ed2:	0000                	unimp
     ed4:	0900                	addi	s0,sp,144
     ed6:	04ed                	addi	s1,s1,27
     ed8:	0000                	unimp
     eda:	340f4503          	lbu	a0,832(t5)
     ede:	0000                	unimp
     ee0:	0a00                	addi	s0,sp,272
     ee2:	0304                	addi	s1,sp,384
     ee4:	034a                	slli	t1,t1,0x12
     ee6:	00ec                	addi	a1,sp,76
     ee8:	0000                	unimp
     eea:	00020e0b          	0x20e0b
     eee:	0300                	addi	s0,sp,384
     ef0:	0e51                	addi	t3,t3,20
     ef2:	00000077          	0x77
     ef6:	1704                	addi	s1,sp,928
     ef8:	0009                	c.nop	2
     efa:	650c                	ld	a1,8(a0)
     efc:	7078                	ld	a4,224(s0)
     efe:	0300                	addi	s0,sp,384
     f00:	0e52                	slli	t3,t3,0x14
     f02:	00000077          	0x77
     f06:	0804                	addi	s1,sp,16
     f08:	0001                	nop
     f0a:	0007720b          	0x7720b
     f0e:	0300                	addi	s0,sp,384
     f10:	00770e53          	fadd.s	ft8,fa4,ft7,rne
     f14:	0000                	unimp
     f16:	0104                	addi	s1,sp,128
     f18:	0000                	unimp
     f1a:	0d00                	addi	s0,sp,656
     f1c:	04e1                	addi	s1,s1,24
     f1e:	0000                	unimp
     f20:	0304                	addi	s1,sp,384
     f22:	01120747          	fmsub.s	fa4,ft4,fa7,ft0,rne
     f26:	0000                	unimp
     f28:	660e                	ld	a2,192(sp)
     f2a:	746c                	ld	a1,232(s0)
     f2c:	0300                	addi	s0,sp,384
     f2e:	0a49                	addi	s4,s4,18
     f30:	00a6                	slli	ra,ra,0x9
     f32:	0000                	unimp
     f34:	00029e0f          	0x29e0f
     f38:	0300                	addi	s0,sp,384
     f3a:	0555                	addi	a0,a0,21
     f3c:	00b2                	slli	ra,ra,0xc
     f3e:	0000                	unimp
     f40:	0900                	addi	s0,sp,144
     f42:	00e4                	addi	s1,sp,76
     f44:	0000                	unimp
     f46:	4804                	lw	s1,16(s0)
     f48:	00002d0f          	0x2d0f
     f4c:	0a00                	addi	s0,sp,272
     f4e:	0408                	addi	a0,sp,512
     f50:	03ca                	slli	t2,t2,0x12
     f52:	0158                	addi	a4,sp,132
     f54:	0000                	unimp
     f56:	00020e0b          	0x20e0b
     f5a:	0400                	addi	s0,sp,512
     f5c:	10d1                	addi	ra,ra,-12
     f5e:	0158                	addi	a4,sp,132
     f60:	0000                	unimp
     f62:	3408                	fld	fa0,40(s0)
     f64:	000c                	0xc
     f66:	650c                	ld	a1,8(a0)
     f68:	7078                	ld	a4,224(s0)
     f6a:	0400                	addi	s0,sp,512
     f6c:	0ed2                	slli	t4,t4,0x14
     f6e:	00000077          	0x77
     f72:	0b04                	addi	s1,sp,400
     f74:	0401                	addi	s0,s0,0
     f76:	0007720b          	0x7720b
     f7a:	0400                	addi	s0,sp,512
     f7c:	00770ed3          	fadd.s	ft9,fa4,ft7,rne
     f80:	0000                	unimp
     f82:	0104                	addi	s1,sp,128
     f84:	0400                	addi	s0,sp,512
     f86:	0200                	addi	s0,sp,256
     f88:	0708                	addi	a0,sp,896
     f8a:	00000213          	li	tp,0
     f8e:	6a0d                	lui	s4,0x3
     f90:	0002                	c.slli64	zero
     f92:	0800                	addi	s0,sp,16
     f94:	c704                	sw	s1,8(a4)
     f96:	00018507          	0x18507
     f9a:	0e00                	addi	s0,sp,784
     f9c:	6c66                	ld	s8,88(sp)
     f9e:	0074                	addi	a3,sp,12
     fa0:	c904                	sw	s1,16(a0)
     fa2:	120a                	slli	tp,tp,0x22
     fa4:	0001                	nop
     fa6:	0f00                	addi	s0,sp,912
     fa8:	029e                	slli	t0,t0,0x7
     faa:	0000                	unimp
     fac:	d504                	sw	s1,40(a0)
     fae:	1e05                	addi	t3,t3,-31
     fb0:	0001                	nop
     fb2:	0000                	unimp
     fb4:	f410                	sd	a2,40(s0)
     fb6:	0004                	0x4
     fb8:	0100                	addi	s0,sp,128
     fba:	0125                	addi	sp,sp,9
     fbc:	0112                	slli	sp,sp,0x4
     fbe:	0000                	unimp
     fc0:	10cc                	addi	a1,sp,100
     fc2:	0001                	nop
     fc4:	0000                	unimp
     fc6:	0000                	unimp
     fc8:	00a4                	addi	s1,sp,72
     fca:	0000                	unimp
     fcc:	0000                	unimp
     fce:	0000                	unimp
     fd0:	9c01                	subw	s0,s0,s0
     fd2:	000002b3          	add	t0,zero,zero
     fd6:	6111                	addi	sp,sp,256
     fd8:	0100                	addi	s0,sp,128
     fda:	1725                	addi	a4,a4,-23
     fdc:	00a6                	slli	ra,ra,0x9
     fde:	0000                	unimp
     fe0:	2f49                	addiw	t5,t5,18
     fe2:	0000                	unimp
     fe4:	ca12                	sw	tp,20(sp)
     fe6:	0000                	unimp
     fe8:	0100                	addi	s0,sp,128
     fea:	00570327          	0x570327
     fee:	0000                	unimp
     ff0:	2f84                	fld	fs1,24(a5)
     ff2:	0000                	unimp
     ff4:	0002bc13          	sltiu	s8,t0,0
     ff8:	0100                	addi	s0,sp,128
     ffa:	00570327          	0x570327
     ffe:	0000                	unimp
    1000:	1400                	addi	s0,sp,544
    1002:	5f41                	li	t5,-16
    1004:	28010063          	beqz	sp,1284 <register_fini-0xee2c>
    1008:	0002b303          	ld	t1,0(t0) # 11480 <memset+0xb4>
    100c:	1500                	addi	s0,sp,672
    100e:	5f41                	li	t5,-16
    1010:	28010073          	0x28010073
    1014:	0002b303          	ld	t1,0(t0)
    1018:	bc00                	fsd	fs0,56(s0)
    101a:	1500002f          	0x1500002f
    101e:	5f41                	li	t5,-16
    1020:	0065                	c.nop	25
    1022:	2801                	sext.w	a6,a6
    1024:	0002b303          	ld	t1,0(t0)
    1028:	fc00                	sd	s0,56(s0)
    102a:	1500002f          	0x1500002f
    102e:	5f41                	li	t5,-16
    1030:	0066                	c.slli	zero,0x19
    1032:	2801                	sext.w	a6,a6
    1034:	00015803          	lhu	a6,0(sp)
    1038:	4500                	lw	s0,8(a0)
    103a:	0030                	addi	a2,sp,8
    103c:	1400                	addi	s0,sp,544
    103e:	5f52                	lw	t5,52(sp)
    1040:	29010063          	beq	sp,a6,12c0 <register_fini-0xedf0>
    1044:	0002b303          	ld	t1,0(t0)
    1048:	1500                	addi	s0,sp,672
    104a:	5f52                	lw	t5,52(sp)
    104c:	29010073          	0x29010073
    1050:	0002b303          	ld	t1,0(t0)
    1054:	bc00                	fsd	fs0,56(s0)
    1056:	1500002f          	0x1500002f
    105a:	5f52                	lw	t5,52(sp)
    105c:	0065                	c.nop	25
    105e:	2901                	sext.w	s2,s2
    1060:	0002b303          	ld	t1,0(t0)
    1064:	8e00                	0x8e00
    1066:	0030                	addi	a2,sp,8
    1068:	1500                	addi	s0,sp,672
    106a:	5f52                	lw	t5,52(sp)
    106c:	0066                	c.slli	zero,0x19
    106e:	2901                	sext.w	s2,s2
    1070:	00015803          	lhu	a6,0(sp)
    1074:	da00                	sw	s0,48(a2)
    1076:	0030                	addi	a2,sp,8
    1078:	1500                	addi	s0,sp,672
    107a:	0072                	c.slli	zero,0x1c
    107c:	2a01                	sext.w	s4,s4
    107e:	120a                	slli	tp,tp,0x22
    1080:	0001                	nop
    1082:	1000                	addi	s0,sp,32
    1084:	0031                	c.nop	12
    1086:	1600                	addi	s0,sp,800
    1088:	06e0                	addi	s0,sp,844
    108a:	0000                	unimp
    108c:	026e                	slli	tp,tp,0x1b
    108e:	0000                	unimp
    1090:	00011717          	auipc	a4,0x11
    1094:	0100                	addi	s0,sp,128
    1096:	032d                	addi	t1,t1,11
    1098:	00ec                	addi	a1,sp,76
    109a:	0000                	unimp
    109c:	1800                	addi	s0,sp,48
    109e:	1138                	addi	a4,sp,168
    10a0:	0001                	nop
    10a2:	0000                	unimp
    10a4:	0000                	unimp
    10a6:	001c                	0x1c
    10a8:	0000                	unimp
    10aa:	0000                	unimp
    10ac:	0000                	unimp
    10ae:	0294                	addi	a3,sp,320
    10b0:	0000                	unimp
    10b2:	d412                	sw	tp,40(sp)
    10b4:	0004                	0x4
    10b6:	0100                	addi	s0,sp,128
    10b8:	0331                	addi	t1,t1,12
    10ba:	00000057          	0x57
    10be:	314d                	addiw	sp,sp,-13
    10c0:	0000                	unimp
    10c2:	1900                	addi	s0,sp,176
    10c4:	1104                	addi	s1,sp,160
    10c6:	0001                	nop
    10c8:	0000                	unimp
    10ca:	0000                	unimp
    10cc:	0014                	0x14
    10ce:	0000                	unimp
    10d0:	0000                	unimp
    10d2:	0000                	unimp
    10d4:	00001217          	auipc	tp,0x1
    10d8:	0100                	addi	s0,sp,128
    10da:	015f0333          	add	t1,t5,s5
    10de:	0000                	unimp
    10e0:	0000                	unimp
    10e2:	0802                	c.slli64	a6
    10e4:	4505                	li	a0,1
    10e6:	0002                	c.slli64	zero
    10e8:	0000                	unimp
    10ea:	02d9                	addi	t0,t0,22
    10ec:	0000                	unimp
    10ee:	0004                	0x4
    10f0:	0795                	addi	a5,a5,5
    10f2:	0000                	unimp
    10f4:	0108                	addi	a0,sp,128
    10f6:	0141                	addi	sp,sp,16
    10f8:	0000                	unimp
    10fa:	0f0c                	addi	a1,sp,912
    10fc:	0005                	c.nop	1
    10fe:	2500                	fld	fs0,8(a0)
    1100:	0000                	unimp
    1102:	7000                	ld	s0,32(s0)
    1104:	0111                	addi	sp,sp,4
    1106:	0000                	unimp
    1108:	0000                	unimp
    110a:	3000                	fld	fs0,32(s0)
    110c:	0001                	nop
    110e:	0000                	unimp
    1110:	0000                	unimp
    1112:	5900                	lw	s0,48(a0)
    1114:	02000023          	sb	zero,32(zero) # 20 <register_fini-0x10090>
    1118:	0408                	addi	a0,sp,512
    111a:	063d                	addi	a2,a2,15
    111c:	0000                	unimp
    111e:	1002                	c.slli	zero,0x20
    1120:	df05                	beqz	a4,1058 <register_fini-0xf058>
    1122:	0001                	nop
    1124:	0200                	addi	s0,sp,256
    1126:	0710                	addi	a2,sp,896
    1128:	0000                	unimp
    112a:	0000                	unimp
    112c:	0802                	c.slli64	a6
    112e:	4a05                	li	s4,1
    1130:	0002                	c.slli64	zero
    1132:	0200                	addi	s0,sp,256
    1134:	0601                	addi	a2,a2,0
    1136:	0000010b          	0x10b
    113a:	69050403          	lb	s0,1680(a0)
    113e:	746e                	ld	s0,248(sp)
    1140:	0400                	addi	s0,sp,512
    1142:	01fc                	addi	a5,sp,204
    1144:	0000                	unimp
    1146:	4a02                	lw	s4,0(sp)
    1148:	1601                	addi	a2,a2,-32
    114a:	0069                	c.nop	26
    114c:	0000                	unimp
    114e:	5705                	li	a4,-31
    1150:	0000                	unimp
    1152:	0200                	addi	s0,sp,256
    1154:	0801                	addi	a6,a6,0
    1156:	0109                	addi	sp,sp,2
    1158:	0000                	unimp
    115a:	0402                	c.slli64	s0
    115c:	00021d07          	0x21d07
    1160:	0200                	addi	s0,sp,256
    1162:	0708                	addi	a0,sp,896
    1164:	0218                	addi	a4,sp,256
    1166:	0000                	unimp
    1168:	6406                	ld	s0,64(sp)
    116a:	0000                	unimp
    116c:	8e00                	0x8e00
    116e:	0000                	unimp
    1170:	0700                	addi	s0,sp,896
    1172:	00000077          	0x77
    1176:	00ff                	0xff
    1178:	7e05                	lui	t3,0xfffe1
    117a:	0000                	unimp
    117c:	0800                	addi	s0,sp,16
    117e:	0204                	addi	s1,sp,256
    1180:	0000                	unimp
    1182:	3c05                	addiw	s8,s8,-31
    1184:	8e16                	mv	t3,t0
    1186:	0000                	unimp
    1188:	0900                	addi	s0,sp,144
    118a:	04ed                	addi	s1,s1,27
    118c:	0000                	unimp
    118e:	ab0f4503          	lbu	a0,-1360(t5)
    1192:	0000                	unimp
    1194:	0200                	addi	s0,sp,256
    1196:	0404                	addi	s1,sp,512
    1198:	08c6                	slli	a7,a7,0x11
    119a:	0000                	unimp
    119c:	040a                	slli	s0,s0,0x2
    119e:	ec034a03          	lbu	s4,-320(t1)
    11a2:	0000                	unimp
    11a4:	0b00                	addi	s0,sp,400
    11a6:	020e                	slli	tp,tp,0x3
    11a8:	0000                	unimp
    11aa:	700e5103          	lhu	sp,1792(t3) # fffffffffffe1700 <__BSS_END__+0xfffffffffffceed0>
    11ae:	0000                	unimp
    11b0:	0400                	addi	s0,sp,512
    11b2:	0c000917          	auipc	s2,0xc000
    11b6:	7865                	lui	a6,0xffff9
    11b8:	0070                	addi	a2,sp,12
    11ba:	700e5203          	lhu	tp,1792(t3)
    11be:	0000                	unimp
    11c0:	0400                	addi	s0,sp,512
    11c2:	0108                	addi	a0,sp,128
    11c4:	0b00                	addi	s0,sp,400
    11c6:	0772                	slli	a4,a4,0x1c
    11c8:	0000                	unimp
    11ca:	700e5303          	lhu	t1,1792(t3)
    11ce:	0000                	unimp
    11d0:	0400                	addi	s0,sp,512
    11d2:	0001                	nop
    11d4:	0000                	unimp
    11d6:	e10d                	bnez	a0,11f8 <register_fini-0xeeb8>
    11d8:	0004                	0x4
    11da:	0400                	addi	s0,sp,512
    11dc:	12074703          	lbu	a4,288(a4) # 121b0 <impure_data+0x118>
    11e0:	0001                	nop
    11e2:	0e00                	addi	s0,sp,784
    11e4:	6c66                	ld	s8,88(sp)
    11e6:	0074                	addi	a3,sp,12
    11e8:	9f0a4903          	lbu	s2,-1552(s4) # 29f0 <register_fini-0xd6c0>
    11ec:	0000                	unimp
    11ee:	0f00                	addi	s0,sp,912
    11f0:	029e                	slli	t0,t0,0x7
    11f2:	0000                	unimp
    11f4:	b2055503          	lhu	a0,-1248(a0)
    11f8:	0000                	unimp
    11fa:	0000                	unimp
    11fc:	e409                	bnez	s0,1206 <register_fini-0xeeaa>
    11fe:	0000                	unimp
    1200:	0400                	addi	s0,sp,512
    1202:	0f48                	addi	a0,sp,916
    1204:	002d                	c.nop	11
    1206:	0000                	unimp
    1208:	080a                	slli	a6,a6,0x2
    120a:	ca04                	sw	s1,16(a2)
    120c:	00015803          	lhu	a6,0(sp)
    1210:	0b00                	addi	s0,sp,400
    1212:	020e                	slli	tp,tp,0x3
    1214:	0000                	unimp
    1216:	d104                	sw	s1,32(a0)
    1218:	5810                	lw	a2,48(s0)
    121a:	0001                	nop
    121c:	0800                	addi	s0,sp,16
    121e:	0c34                	addi	a3,sp,536
    1220:	0c00                	addi	s0,sp,528
    1222:	7865                	lui	a6,0xffff9
    1224:	0070                	addi	a2,sp,12
    1226:	d204                	sw	s1,32(a2)
    1228:	700e                	0x700e
    122a:	0000                	unimp
    122c:	0400                	addi	s0,sp,512
    122e:	0b04010b          	0xb04010b
    1232:	0772                	slli	a4,a4,0x1c
    1234:	0000                	unimp
    1236:	d304                	sw	s1,32(a4)
    1238:	700e                	0x700e
    123a:	0000                	unimp
    123c:	0400                	addi	s0,sp,512
    123e:	0001                	nop
    1240:	0004                	0x4
    1242:	0802                	c.slli64	a6
    1244:	00021307          	0x21307
    1248:	0d00                	addi	s0,sp,656
    124a:	026a                	slli	tp,tp,0x1a
    124c:	0000                	unimp
    124e:	0408                	addi	a0,sp,512
    1250:	018507c7          	fmsub.s	fa5,fa0,fs8,ft0,rne
    1254:	0000                	unimp
    1256:	660e                	ld	a2,192(sp)
    1258:	746c                	ld	a1,232(s0)
    125a:	0400                	addi	s0,sp,512
    125c:	0ac9                	addi	s5,s5,18
    125e:	0112                	slli	sp,sp,0x4
    1260:	0000                	unimp
    1262:	00029e0f          	0x29e0f
    1266:	0400                	addi	s0,sp,512
    1268:	05d5                	addi	a1,a1,21
    126a:	011e                	slli	sp,sp,0x7
    126c:	0000                	unimp
    126e:	1000                	addi	s0,sp,32
    1270:	0502                	c.slli64	a0
    1272:	0000                	unimp
    1274:	2401                	sext.w	s0,s0
    1276:	9f01                	subw	a4,a4,s0
    1278:	0000                	unimp
    127a:	7000                	ld	s0,32(s0)
    127c:	0111                	addi	sp,sp,4
    127e:	0000                	unimp
    1280:	0000                	unimp
    1282:	3000                	fld	fs0,32(s0)
    1284:	0001                	nop
    1286:	0000                	unimp
    1288:	0000                	unimp
    128a:	0100                	addi	s0,sp,128
    128c:	d59c                	sw	a5,40(a1)
    128e:	0002                	c.slli64	zero
    1290:	1100                	addi	s0,sp,160
    1292:	0061                	c.nop	24
    1294:	2401                	sext.w	s0,s0
    1296:	1216                	slli	tp,tp,0x25
    1298:	0001                	nop
    129a:	7000                	ld	s0,32(s0)
    129c:	0031                	c.nop	12
    129e:	1200                	addi	s0,sp,288
    12a0:	00ca                	slli	ra,ra,0x12
    12a2:	0000                	unimp
    12a4:	2601                	sext.w	a2,a2
    12a6:	00005003          	lhu	zero,0(zero) # 0 <register_fini-0x100b0>
    12aa:	ab00                	fsd	fs0,16(a4)
    12ac:	0031                	c.nop	12
    12ae:	1300                	addi	s0,sp,416
    12b0:	02bc                	addi	a5,sp,328
    12b2:	0000                	unimp
    12b4:	2601                	sext.w	a2,a2
    12b6:	00005003          	lhu	zero,0(zero) # 0 <register_fini-0x100b0>
    12ba:	0000                	unimp
    12bc:	4114                	lw	a3,0(a0)
    12be:	635f 0100 0327      	0x3270100635f
    12c4:	02d5                	addi	t0,t0,21
    12c6:	0000                	unimp
    12c8:	4115                	li	sp,5
    12ca:	735f 0100 0327      	0x3270100735f
    12d0:	02d5                	addi	t0,t0,21
    12d2:	0000                	unimp
    12d4:	321f 0000 4115      	0x41150000321f
    12da:	655f 0100 0327      	0x3270100655f
    12e0:	02d5                	addi	t0,t0,21
    12e2:	0000                	unimp
    12e4:	3269                	addiw	tp,tp,-6
    12e6:	0000                	unimp
    12e8:	4115                	li	sp,5
    12ea:	665f 0100 0327      	0x3270100665f
    12f0:	0158                	addi	a4,sp,132
    12f2:	0000                	unimp
    12f4:	000032f7          	0x32f7
    12f8:	5214                	lw	a3,32(a2)
    12fa:	635f 0100 0328      	0x3280100635f
    1300:	02d5                	addi	t0,t0,21
    1302:	0000                	unimp
    1304:	5215                	li	tp,-27
    1306:	735f 0100 0328      	0x3280100735f
    130c:	02d5                	addi	t0,t0,21
    130e:	0000                	unimp
    1310:	33c9                	addiw	t2,t2,-14
    1312:	0000                	unimp
    1314:	5215                	li	tp,-27
    1316:	655f 0100 0328      	0x3280100655f
    131c:	02d5                	addi	t0,t0,21
    131e:	0000                	unimp
    1320:	00003413          	sltiu	s0,zero,0
    1324:	5215                	li	tp,-27
    1326:	665f 0100 0328      	0x3280100665f
    132c:	0158                	addi	a4,sp,132
    132e:	0000                	unimp
    1330:	34c0                	fld	fs0,168(s1)
    1332:	0000                	unimp
    1334:	7214                	ld	a3,32(a2)
    1336:	0100                	addi	s0,sp,128
    1338:	0a29                	addi	s4,s4,10
    133a:	009f 0000 2016      	0x20160000009f
    1340:	6a000007          	0x6a000007
    1344:	0002                	c.slli64	zero
    1346:	1700                	addi	s0,sp,928
    1348:	00000117          	auipc	sp,0x0
    134c:	2c01                	sext.w	s8,s8
    134e:	00015f03          	lhu	t5,0(sp) # 1348 <register_fini-0xed68>
    1352:	0000                	unimp
    1354:	6016                	0x6016
    1356:	b2000007          	0xb2000007
    135a:	0002                	c.slli64	zero
    135c:	1700                	addi	s0,sp,928
    135e:	000002a3          	sb	zero,5(zero) # 5 <register_fini-0x100ab>
    1362:	3201                	addiw	tp,tp,-32
    1364:	00005003          	lhu	zero,0(zero) # 0 <register_fini-0x100b0>
    1368:	1800                	addi	s0,sp,48
    136a:	0000cf17          	auipc	t5,0xc
    136e:	0100                	addi	s0,sp,128
    1370:	0332                	slli	t1,t1,0xc
    1372:	02d5                	addi	t0,t0,21
    1374:	0000                	unimp
    1376:	00012c17          	auipc	s8,0x12
    137a:	0100                	addi	s0,sp,128
    137c:	0332                	slli	t1,t1,0xc
    137e:	02d5                	addi	t0,t0,21
    1380:	0000                	unimp
    1382:	00027f17          	auipc	t5,0x27
    1386:	0100                	addi	s0,sp,128
    1388:	0332                	slli	t1,t1,0xc
    138a:	02d5                	addi	t0,t0,21
    138c:	0000                	unimp
    138e:	0000eb17          	auipc	s6,0xe
    1392:	0100                	addi	s0,sp,128
    1394:	0332                	slli	t1,t1,0xc
    1396:	0158                	addi	a4,sp,132
    1398:	0000                	unimp
    139a:	0000                	unimp
    139c:	5c19                	li	s8,-26
    139e:	0112                	slli	sp,sp,0x4
    13a0:	0000                	unimp
    13a2:	0000                	unimp
    13a4:	1800                	addi	s0,sp,48
    13a6:	0000                	unimp
    13a8:	0000                	unimp
    13aa:	0000                	unimp
    13ac:	1200                	addi	s0,sp,288
    13ae:	0012                	c.slli	zero,0x4
    13b0:	0000                	unimp
    13b2:	3201                	addiw	tp,tp,-32
    13b4:	0000ec03          	lwu	s8,0(ra)
    13b8:	a200                	fsd	fs0,0(a2)
    13ba:	0035                	c.nop	13
    13bc:	0000                	unimp
    13be:	0200                	addi	s0,sp,256
    13c0:	0508                	addi	a0,sp,640
    13c2:	0245                	addi	tp,tp,17
    13c4:	0000                	unimp
    13c6:	2a00                	fld	fs0,16(a2)
    13c8:	0000                	unimp
    13ca:	0200                	addi	s0,sp,256
    13cc:	0c00                	addi	s0,sp,528
    13ce:	0009                	c.nop	2
    13d0:	0800                	addi	s0,sp,16
    13d2:	8001                	c.srli64	s0
    13d4:	a0000027          	0xa0000027
    13d8:	0112                	slli	sp,sp,0x4
    13da:	0000                	unimp
    13dc:	0000                	unimp
    13de:	c400                	sw	s0,8(s0)
    13e0:	0112                	slli	sp,sp,0x4
    13e2:	0000                	unimp
    13e4:	0000                	unimp
    13e6:	4100                	lw	s0,0(a0)
    13e8:	0005                	c.nop	1
    13ea:	2500                	fld	fs0,8(a0)
    13ec:	0000                	unimp
    13ee:	7400                	ld	s0,40(s0)
    13f0:	0005                	c.nop	1
    13f2:	0100                	addi	s0,sp,128
    13f4:	f580                	sd	s0,40(a1)
    13f6:	0400000b          	0x400000b
    13fa:	2000                	fld	fs0,0(s0)
    13fc:	0009                	c.nop	2
    13fe:	0800                	addi	s0,sp,16
    1400:	4101                	li	sp,0
    1402:	0001                	nop
    1404:	0c00                	addi	s0,sp,528
    1406:	0930                	addi	a2,sp,152
    1408:	0000                	unimp
    140a:	0025                	c.nop	9
    140c:	0000                	unimp
    140e:	12c4                	addi	s1,sp,356
    1410:	0001                	nop
    1412:	0000                	unimp
    1414:	0000                	unimp
    1416:	003c                	addi	a5,sp,8
    1418:	0000                	unimp
    141a:	0000                	unimp
    141c:	0000                	unimp
    141e:	00002817          	auipc	a6,0x2
    1422:	0802                	c.slli64	a6
    1424:	4a05                	li	s4,1
    1426:	0002                	c.slli64	zero
    1428:	0200                	addi	s0,sp,256
    142a:	0708                	addi	a0,sp,896
    142c:	0218                	addi	a4,sp,256
    142e:	0000                	unimp
    1430:	69050403          	lb	s0,1680(a0)
    1434:	746e                	ld	s0,248(sp)
    1436:	0200                	addi	s0,sp,256
    1438:	0508                	addi	a0,sp,640
    143a:	0245                	addi	tp,tp,17
    143c:	0000                	unimp
    143e:	1002                	c.slli	zero,0x20
    1440:	3804                	fld	fs1,48(s0)
    1442:	0006                	c.slli	zero,0x1
    1444:	0200                	addi	s0,sp,256
    1446:	0601                	addi	a2,a2,0
    1448:	0000010b          	0x10b
    144c:	0102                	c.slli64	sp
    144e:	0908                	addi	a0,sp,144
    1450:	0001                	nop
    1452:	0200                	addi	s0,sp,256
    1454:	0502                	c.slli64	a0
    1456:	0580                	addi	s0,sp,704
    1458:	0000                	unimp
    145a:	0202                	c.slli64	tp
    145c:	0007e207          	0x7e207
    1460:	0200                	addi	s0,sp,256
    1462:	0704                	addi	s1,sp,896
    1464:	021d                	addi	tp,tp,7
    1466:	0000                	unimp
    1468:	3804                	fld	fs1,48(s0)
    146a:	0008                	0x8
    146c:	0200                	addi	s0,sp,256
    146e:	015e                	slli	sp,sp,0x17
    1470:	00006c17          	auipc	s8,0x6
    1474:	0500                	addi	s0,sp,640
    1476:	08f2                	slli	a7,a7,0x1c
    1478:	0000                	unimp
    147a:	2d0e2e03          	lw	t3,720(t3)
    147e:	0000                	unimp
    1480:	0500                	addi	s0,sp,640
    1482:	0a54                	addi	a3,sp,276
    1484:	0000                	unimp
    1486:	2d0e7403          	0x2d0e7403
    148a:	0000                	unimp
    148c:	0500                	addi	s0,sp,640
    148e:	0af6                	slli	s5,s5,0x1d
    1490:	0000                	unimp
    1492:	2d179303          	lh	t1,721(a5)
    1496:	0000                	unimp
    1498:	0600                	addi	s0,sp,768
    149a:	0304                	addi	s1,sp,384
    149c:	03a5                	addi	t2,t2,9
    149e:	00c6                	slli	ra,ra,0x11
    14a0:	0000                	unimp
    14a2:	00081f07          	0x81f07
    14a6:	0300                	addi	s0,sp,384
    14a8:	00730ca7          	0x730ca7
    14ac:	0000                	unimp
    14ae:	0007bc07          	fld	fs8,0(a5)
    14b2:	0300                	addi	s0,sp,384
    14b4:	13a8                	addi	a0,sp,488
    14b6:	00c6                	slli	ra,ra,0x11
    14b8:	0000                	unimp
    14ba:	0800                	addi	s0,sp,16
    14bc:	00000057          	0x57
    14c0:	00d6                	slli	ra,ra,0x15
    14c2:	0000                	unimp
    14c4:	3409                	addiw	s0,s0,-30
    14c6:	0000                	unimp
    14c8:	0300                	addi	s0,sp,384
    14ca:	0a00                	addi	s0,sp,272
    14cc:	0308                	addi	a0,sp,384
    14ce:	09a2                	slli	s3,s3,0x8
    14d0:	00fa                	slli	ra,ra,0x1e
    14d2:	0000                	unimp
    14d4:	000a3e0b          	0xa3e0b
    14d8:	0300                	addi	s0,sp,384
    14da:	07a4                	addi	s1,sp,968
    14dc:	0000003b          	addw	zero,zero,zero
    14e0:	0b00                	addi	s0,sp,400
    14e2:	0a46                	slli	s4,s4,0x11
    14e4:	0000                	unimp
    14e6:	a405a903          	lw	s2,-1472(a1)
    14ea:	0000                	unimp
    14ec:	0400                	addi	s0,sp,512
    14ee:	0500                	addi	s0,sp,640
    14f0:	090d                	addi	s2,s2,3
    14f2:	0000                	unimp
    14f4:	d603aa03          	lw	s4,-672(t2)
    14f8:	0000                	unimp
    14fa:	0c00                	addi	s0,sp,528
    14fc:	0508                	addi	a0,sp,640
    14fe:	0a9f 0000 1904      	0x190400000a9f
    1504:	6c19                	lui	s8,0x6
    1506:	0000                	unimp
    1508:	0500                	addi	s0,sp,640
    150a:	0918                	addi	a4,sp,144
    150c:	0000                	unimp
    150e:	0c05                	addi	s8,s8,1
    1510:	3b0d                	addiw	s6,s6,-29
    1512:	0000                	unimp
    1514:	0500                	addi	s0,sp,640
    1516:	098e                	slli	s3,s3,0x3
    1518:	0000                	unimp
    151a:	2304                	fld	fs1,0(a4)
    151c:	0001141b          	slliw	s0,sp,0x0
    1520:	0d00                	addi	s0,sp,656
    1522:	077f                	0x77f
    1524:	0000                	unimp
    1526:	0420                	addi	s0,sp,520
    1528:	0834                	addi	a3,sp,24
    152a:	0186                	slli	gp,gp,0x1
    152c:	0000                	unimp
    152e:	0009e10b          	0x9e10b
    1532:	0400                	addi	s0,sp,512
    1534:	1336                	slli	t1,t1,0x2d
    1536:	0186                	slli	gp,gp,0x1
    1538:	0000                	unimp
    153a:	0e00                	addi	s0,sp,784
    153c:	6b5f 0400 0737      	0x73704006b5f
    1542:	0000003b          	addw	zero,zero,zero
    1546:	0b08                	addi	a0,sp,400
    1548:	0a29                	addi	s4,s4,10
    154a:	0000                	unimp
    154c:	3704                	fld	fs1,40(a4)
    154e:	00003b0b          	0x3b0b
    1552:	0c00                	addi	s0,sp,528
    1554:	0007710b          	0x7710b
    1558:	0400                	addi	s0,sp,512
    155a:	003b1437          	lui	s0,0x3b1
    155e:	0000                	unimp
    1560:	0b10                	addi	a2,sp,400
    1562:	06e6                	slli	a3,a3,0x19
    1564:	0000                	unimp
    1566:	3704                	fld	fs1,40(a4)
    1568:	00003b1b          	0x3b1b
    156c:	1400                	addi	s0,sp,544
    156e:	5f0e                	lw	t5,224(sp)
    1570:	0078                	addi	a4,sp,12
    1572:	3804                	fld	fs1,48(s0)
    1574:	00018c0b          	0x18c0b
    1578:	1800                	addi	s0,sp,48
    157a:	0f00                	addi	s0,sp,912
    157c:	2c08                	fld	fa0,24(s0)
    157e:	0001                	nop
    1580:	0800                	addi	s0,sp,16
    1582:	0108                	addi	a0,sp,128
    1584:	0000                	unimp
    1586:	019c                	addi	a5,sp,192
    1588:	0000                	unimp
    158a:	3409                	addiw	s0,s0,-30
    158c:	0000                	unimp
    158e:	0000                	unimp
    1590:	0d00                	addi	s0,sp,656
    1592:	079f 0000 0424      	0x4240000079f
    1598:	083c                	addi	a5,sp,24
    159a:	021f 0000 7e0b      	0x7e0b0000021f
    15a0:	0006                	c.slli	zero,0x1
    15a2:	0400                	addi	s0,sp,512
    15a4:	093e                	slli	s2,s2,0xf
    15a6:	0000003b          	addw	zero,zero,zero
    15aa:	0b00                	addi	s0,sp,400
    15ac:	00000b3b          	addw	s6,zero,zero
    15b0:	3f04                	fld	fs1,56(a4)
    15b2:	3b09                	addiw	s6,s6,-30
    15b4:	0000                	unimp
    15b6:	0400                	addi	s0,sp,512
    15b8:	00069a0b          	0x69a0b
    15bc:	0400                	addi	s0,sp,512
    15be:	0940                	addi	s0,sp,148
    15c0:	0000003b          	addw	zero,zero,zero
    15c4:	0b08                	addi	a0,sp,400
    15c6:	00000b77          	0xb77
    15ca:	4104                	lw	s1,0(a0)
    15cc:	3b09                	addiw	s6,s6,-30
    15ce:	0000                	unimp
    15d0:	0c00                	addi	s0,sp,528
    15d2:	0008cc0b          	0x8cc0b
    15d6:	0400                	addi	s0,sp,512
    15d8:	0942                	slli	s2,s2,0x10
    15da:	0000003b          	addw	zero,zero,zero
    15de:	0b10                	addi	a2,sp,400
    15e0:	0880                	addi	s0,sp,80
    15e2:	0000                	unimp
    15e4:	4304                	lw	s1,0(a4)
    15e6:	3b09                	addiw	s6,s6,-30
    15e8:	0000                	unimp
    15ea:	1400                	addi	s0,sp,544
    15ec:	000adf0b          	0xadf0b
    15f0:	0400                	addi	s0,sp,512
    15f2:	0944                	addi	s1,sp,148
    15f4:	0000003b          	addw	zero,zero,zero
    15f8:	0b18                	addi	a4,sp,400
    15fa:	00000997          	auipc	s3,0x0
    15fe:	4504                	lw	s1,8(a0)
    1600:	3b09                	addiw	s6,s6,-30
    1602:	0000                	unimp
    1604:	1c00                	addi	s0,sp,560
    1606:	000b210b          	0xb210b
    160a:	0400                	addi	s0,sp,512
    160c:	0946                	slli	s2,s2,0x11
    160e:	0000003b          	addw	zero,zero,zero
    1612:	0020                	addi	s0,sp,8
    1614:	b910                	fsd	fa2,48(a0)
    1616:	0006                	c.slli	zero,0x1
    1618:	0800                	addi	s0,sp,16
    161a:	0402                	c.slli64	s0
    161c:	0265084f          	fnmadd.d	fa6,fa0,ft6,ft0,rne
    1620:	0000                	unimp
    1622:	0007640b          	0x7640b
    1626:	0400                	addi	s0,sp,512
    1628:	0a50                	addi	a2,sp,276
    162a:	0265                	addi	tp,tp,25
    162c:	0000                	unimp
    162e:	1100                	addi	s0,sp,160
    1630:	096a                	slli	s2,s2,0x1a
    1632:	0000                	unimp
    1634:	5104                	lw	s1,32(a0)
    1636:	6509                	lui	a0,0x2
    1638:	0002                	c.slli64	zero
    163a:	0000                	unimp
    163c:	1101                	addi	sp,sp,-32
    163e:	0a91                	addi	s5,s5,4
    1640:	0000                	unimp
    1642:	5304                	lw	s1,32(a4)
    1644:	080a                	slli	a6,a6,0x2
    1646:	0001                	nop
    1648:	0000                	unimp
    164a:	1102                	slli	sp,sp,0x20
    164c:	06de                	slli	a3,a3,0x17
    164e:	0000                	unimp
    1650:	5604                	lw	s1,40(a2)
    1652:	080a                	slli	a6,a6,0x2
    1654:	0001                	nop
    1656:	0400                	addi	s0,sp,512
    1658:	0002                	c.slli64	zero
    165a:	0608                	addi	a0,sp,768
    165c:	0001                	nop
    165e:	7500                	ld	s0,40(a0)
    1660:	0002                	c.slli64	zero
    1662:	0900                	addi	s0,sp,144
    1664:	0034                	addi	a3,sp,8
    1666:	0000                	unimp
    1668:	001f d510 0008      	0x8d510001f
    166e:	1800                	addi	s0,sp,48
    1670:	08620403          	lb	s0,134(tp) # 215a <register_fini-0xdf56>
    1674:	02b9                	addi	t0,t0,14
    1676:	0000                	unimp
    1678:	0009e10b          	0x9e10b
    167c:	0400                	addi	s0,sp,512
    167e:	02b91263          	bne	s2,a1,16a2 <register_fini-0xea0e>
    1682:	0000                	unimp
    1684:	0b00                	addi	s0,sp,400
    1686:	09f9                	addi	s3,s3,30
    1688:	0000                	unimp
    168a:	6404                	ld	s1,8(s0)
    168c:	3b06                	fld	fs6,96(sp)
    168e:	0000                	unimp
    1690:	0800                	addi	s0,sp,16
    1692:	00076c0b          	0x76c0b
    1696:	0400                	addi	s0,sp,512
    1698:	0966                	slli	s2,s2,0x19
    169a:	000002bf 06b91110 	0x6b91110000002bf
    16a2:	0000                	unimp
    16a4:	6704                	ld	s1,8(a4)
    16a6:	1f1e                	slli	t5,t5,0x27
    16a8:	0002                	c.slli64	zero
    16aa:	1000                	addi	s0,sp,32
    16ac:	0001                	nop
    16ae:	0275080f          	0x275080f
    16b2:	0000                	unimp
    16b4:	cf08                	sw	a0,24(a4)
    16b6:	0002                	c.slli64	zero
    16b8:	cf00                	sw	s0,24(a4)
    16ba:	0002                	c.slli64	zero
    16bc:	0900                	addi	s0,sp,144
    16be:	0034                	addi	a3,sp,8
    16c0:	0000                	unimp
    16c2:	001f 080f 02d5      	0x2d5080f001f
    16c8:	0000                	unimp
    16ca:	0d12                	slli	s10,s10,0x4
    16cc:	09a1                	addi	s3,s3,8
    16ce:	0000                	unimp
    16d0:	0410                	addi	a2,sp,512
    16d2:	087a                	slli	a6,a6,0x1e
    16d4:	02fe                	slli	t0,t0,0x1f
    16d6:	0000                	unimp
    16d8:	0006940b          	0x6940b
    16dc:	0400                	addi	s0,sp,512
    16de:	02fe117b          	0x2fe117b
    16e2:	0000                	unimp
    16e4:	0b00                	addi	s0,sp,400
    16e6:	059c                	addi	a5,sp,704
    16e8:	0000                	unimp
    16ea:	7c04                	ld	s1,56(s0)
    16ec:	3b06                	fld	fs6,96(sp)
    16ee:	0000                	unimp
    16f0:	0800                	addi	s0,sp,16
    16f2:	0f00                	addi	s0,sp,912
    16f4:	5708                	lw	a0,40(a4)
    16f6:	0000                	unimp
    16f8:	0d00                	addi	s0,sp,656
    16fa:	09ca                	slli	s3,s3,0x12
    16fc:	0000                	unimp
    16fe:	04b0                	addi	a2,sp,584
    1700:	08ba                	slli	a7,a7,0xe
    1702:	00000447          	fmsub.s	fs0,ft0,ft0,ft0,rne
    1706:	5f0e                	lw	t5,224(sp)
    1708:	0070                	addi	a2,sp,12
    170a:	bb04                	fsd	fs1,48(a4)
    170c:	fe12                	sd	tp,312(sp)
    170e:	0002                	c.slli64	zero
    1710:	0000                	unimp
    1712:	5f0e                	lw	t5,224(sp)
    1714:	0072                	c.slli	zero,0x1c
    1716:	bc04                	fsd	fs1,56(s0)
    1718:	00003b07          	fld	fs6,0(zero) # 0 <register_fini-0x100b0>
    171c:	0800                	addi	s0,sp,16
    171e:	5f0e                	lw	t5,224(sp)
    1720:	bd040077          	0xbd040077
    1724:	00003b07          	fld	fs6,0(zero) # 0 <register_fini-0x100b0>
    1728:	0c00                	addi	s0,sp,528
    172a:	0006d70b          	0x6d70b
    172e:	0400                	addi	s0,sp,512
    1730:	09be                	slli	s3,s3,0xf
    1732:	005e                	c.slli	zero,0x17
    1734:	0000                	unimp
    1736:	0b10                	addi	a2,sp,400
    1738:	000007cb          	fnmsub.s	fa5,ft0,ft0,ft0,rne
    173c:	bf04                	fsd	fs1,56(a4)
    173e:	5e09                	li	t3,-30
    1740:	0000                	unimp
    1742:	1200                	addi	s0,sp,288
    1744:	5f0e                	lw	t5,224(sp)
    1746:	6662                	ld	a2,24(sp)
    1748:	0400                	addi	s0,sp,512
    174a:	11c0                	addi	s0,sp,228
    174c:	02d6                	slli	t0,t0,0x15
    174e:	0000                	unimp
    1750:	0b18                	addi	a4,sp,400
    1752:	00000627          	0x627
    1756:	c104                	sw	s1,0(a0)
    1758:	00003b07          	fld	fs6,0(zero) # 0 <register_fini-0x100b0>
    175c:	2800                	fld	fs0,16(s0)
    175e:	0006c70b          	0x6c70b
    1762:	0400                	addi	s0,sp,512
    1764:	0ac8                	addi	a0,sp,340
    1766:	0106                	slli	sp,sp,0x1
    1768:	0000                	unimp
    176a:	0b30                	addi	a2,sp,408
    176c:	092a                	slli	s2,s2,0xa
    176e:	0000                	unimp
    1770:	ca04                	sw	s1,16(a2)
    1772:	cb1d                	beqz	a4,17a8 <register_fini-0xe908>
    1774:	0005                	c.nop	1
    1776:	3800                	fld	fs0,48(s0)
    1778:	0008790b          	0x8790b
    177c:	0400                	addi	s0,sp,512
    177e:	1dcc                	addi	a1,sp,756
    1780:	05fa                	slli	a1,a1,0x1e
    1782:	0000                	unimp
    1784:	0b40                	addi	s0,sp,404
    1786:	0a4e                	slli	s4,s4,0x13
    1788:	0000                	unimp
    178a:	cf04                	sw	s1,24(a4)
    178c:	1e0d                	addi	t3,t3,-29
    178e:	0006                	c.slli	zero,0x1
    1790:	4800                	lw	s0,16(s0)
    1792:	0006870b          	0x6870b
    1796:	0400                	addi	s0,sp,512
    1798:	09d0                	addi	a2,sp,212
    179a:	0638                	addi	a4,sp,776
    179c:	0000                	unimp
    179e:	0e50                	addi	a2,sp,788
    17a0:	755f 0062 d304      	0xd3040062755f
    17a6:	d611                	beqz	a2,16b2 <register_fini-0xe9fe>
    17a8:	0002                	c.slli64	zero
    17aa:	5800                	lw	s0,48(s0)
    17ac:	5f0e                	lw	t5,224(sp)
    17ae:	7075                	c.lui	zero,0xffffd
    17b0:	0400                	addi	s0,sp,512
    17b2:	12d4                	addi	a3,sp,356
    17b4:	02fe                	slli	t0,t0,0x1f
    17b6:	0000                	unimp
    17b8:	0e68                	addi	a0,sp,796
    17ba:	755f 0072 d504      	0xd5040072755f
    17c0:	00003b07          	fld	fs6,0(zero) # 0 <register_fini-0x100b0>
    17c4:	7000                	ld	s0,32(s0)
    17c6:	00068e0b          	0x68e0b
    17ca:	0400                	addi	s0,sp,512
    17cc:	11d8                	addi	a4,sp,228
    17ce:	063e                	slli	a2,a2,0xf
    17d0:	0000                	unimp
    17d2:	0b74                	addi	a3,sp,412
    17d4:	00000b13          	li	s6,0
    17d8:	d904                	sw	s1,48(a0)
    17da:	4e11                	li	t3,4
    17dc:	0006                	c.slli	zero,0x1
    17de:	7700                	ld	s0,40(a4)
    17e0:	5f0e                	lw	t5,224(sp)
    17e2:	626c                	ld	a1,192(a2)
    17e4:	0400                	addi	s0,sp,512
    17e6:	11dc                	addi	a5,sp,228
    17e8:	02d6                	slli	t0,t0,0x15
    17ea:	0000                	unimp
    17ec:	0b78                	addi	a4,sp,412
    17ee:	0a65                	addi	s4,s4,25
    17f0:	0000                	unimp
    17f2:	df04                	sw	s1,56(a4)
    17f4:	00003b07          	fld	fs6,0(zero) # 0 <register_fini-0x100b0>
    17f8:	8800                	0x8800
    17fa:	0008a80b          	0x8a80b
    17fe:	0400                	addi	s0,sp,512
    1800:	0ae0                	addi	s0,sp,348
    1802:	0080                	addi	s0,sp,64
    1804:	0000                	unimp
    1806:	0b90                	addi	a2,sp,464
    1808:	000005db          	0x5db
    180c:	e304                	sd	s1,0(a4)
    180e:	6512                	ld	a0,256(sp)
    1810:	0004                	0x4
    1812:	9800                	0x9800
    1814:	00083f0b          	0x83f0b
    1818:	0400                	addi	s0,sp,512
    181a:	01200ce7          	jalr	s9,18(zero) # 0 <register_fini-0x100b0>
    181e:	0000                	unimp
    1820:	0ba0                	addi	s0,sp,472
    1822:	000007b3          	add	a5,zero,zero
    1826:	e904                	sd	s1,16(a0)
    1828:	fa0e                	sd	gp,304(sp)
    182a:	0000                	unimp
    182c:	a400                	fsd	fs0,8(s0)
    182e:	0009a80b          	0x9a80b
    1832:	0400                	addi	s0,sp,512
    1834:	09ea                	slli	s3,s3,0x1a
    1836:	0000003b          	addw	zero,zero,zero
    183a:	00ac                	addi	a1,sp,72
    183c:	00009813          	slli	a6,ra,0x0
    1840:	6500                	ld	s0,8(a0)
    1842:	0004                	0x4
    1844:	1400                	addi	s0,sp,544
    1846:	0465                	addi	s0,s0,25
    1848:	0000                	unimp
    184a:	0614                	addi	a3,sp,768
    184c:	0001                	nop
    184e:	1400                	addi	s0,sp,544
    1850:	05b9                	addi	a1,a1,14
    1852:	0000                	unimp
    1854:	3b14                	fld	fa3,48(a4)
    1856:	0000                	unimp
    1858:	0000                	unimp
    185a:	0470080f          	0x470080f
    185e:	0000                	unimp
    1860:	6515                	lui	a0,0x5
    1862:	0004                	0x4
    1864:	1600                	addi	s0,sp,800
    1866:	0a31                	addi	s4,s4,12
    1868:	0000                	unimp
    186a:	0748                	addi	a0,sp,900
    186c:	6504                	ld	s1,8(a0)
    186e:	0802                	c.slli64	a6
    1870:	05b9                	addi	a1,a1,14
    1872:	0000                	unimp
    1874:	00098717          	auipc	a4,0x98
    1878:	0400                	addi	s0,sp,512
    187a:	3b070267          	jalr	tp,944(a4) # 99c24 <__BSS_END__+0x873f4>
    187e:	0000                	unimp
    1880:	0000                	unimp
    1882:	000aef17          	auipc	t5,0xae
    1886:	0400                	addi	s0,sp,512
    1888:	026c                	addi	a1,sp,268
    188a:	0006aa0b          	0x6aa0b
    188e:	0800                	addi	s0,sp,16
    1890:	000ad717          	auipc	a4,0xad
    1894:	0400                	addi	s0,sp,512
    1896:	026c                	addi	a1,sp,268
    1898:	aa14                	fsd	fa3,16(a2)
    189a:	0006                	c.slli	zero,0x1
    189c:	1000                	addi	s0,sp,32
    189e:	00077717          	auipc	a4,0x77
    18a2:	0400                	addi	s0,sp,512
    18a4:	026c                	addi	a1,sp,268
    18a6:	aa1e                	fsd	ft7,272(sp)
    18a8:	0006                	c.slli	zero,0x1
    18aa:	1800                	addi	s0,sp,48
    18ac:	0009f417          	auipc	s0,0x9f
    18b0:	0400                	addi	s0,sp,512
    18b2:	026e                	slli	tp,tp,0x1b
    18b4:	3b08                	fld	fa0,48(a4)
    18b6:	0000                	unimp
    18b8:	2000                	fld	fs0,0(s0)
    18ba:	0005aa17          	auipc	s4,0x5a
    18be:	0400                	addi	s0,sp,512
    18c0:	b308026f          	jal	tp,fffffffffff81bf0 <__BSS_END__+0xfffffffffff6f3c0>
    18c4:	0008                	0x8
    18c6:	2400                	fld	fs0,8(s0)
    18c8:	000a1017          	auipc	zero,0xa1
    18cc:	0400                	addi	s0,sp,512
    18ce:	0272                	slli	tp,tp,0x1c
    18d0:	00003b07          	fld	fs6,0(zero) # 0 <register_fini-0x100b0>
    18d4:	4000                	lw	s0,0(s0)
    18d6:	0009fe17          	auipc	t3,0x9f
    18da:	0400                	addi	s0,sp,512
    18dc:	c8160273          	0xc8160273
    18e0:	0008                	0x8
    18e2:	4800                	lw	s0,16(s0)
    18e4:	0008e717          	auipc	a4,0x8e
    18e8:	0400                	addi	s0,sp,512
    18ea:	0275                	addi	tp,tp,29
    18ec:	00003b07          	fld	fs6,0(zero) # 0 <register_fini-0x100b0>
    18f0:	5000                	lw	s0,32(s0)
    18f2:	000a0617          	auipc	a2,0xa0
    18f6:	0400                	addi	s0,sp,512
    18f8:	d90a0277          	0xd90a0277
    18fc:	0008                	0x8
    18fe:	5800                	lw	s0,48(s0)
    1900:	00081717          	auipc	a4,0x81
    1904:	0400                	addi	s0,sp,512
    1906:	027a                	slli	tp,tp,0x1e
    1908:	00018613          	mv	a2,gp
    190c:	6000                	ld	s0,0(s0)
    190e:	0006f217          	auipc	tp,0x6f
    1912:	0400                	addi	s0,sp,512
    1914:	3b07027b          	0x3b07027b
    1918:	0000                	unimp
    191a:	6800                	ld	s0,16(s0)
    191c:	000b7217          	auipc	tp,0xb7
    1920:	0400                	addi	s0,sp,512
    1922:	027c                	addi	a5,sp,268
    1924:	00018613          	mv	a2,gp
    1928:	7000                	ld	s0,32(s0)
    192a:	0008f917          	auipc	s2,0x8f
    192e:	0400                	addi	s0,sp,512
    1930:	027d                	addi	tp,tp,31
    1932:	df14                	sw	a3,56(a4)
    1934:	0008                	0x8
    1936:	7800                	ld	s0,48(s0)
    1938:	0007c317          	auipc	t1,0x7c
    193c:	0400                	addi	s0,sp,512
    193e:	0280                	addi	s0,sp,320
    1940:	00003b07          	fld	fs6,0(zero) # 0 <register_fini-0x100b0>
    1944:	8000                	0x8000
    1946:	00073017          	auipc	zero,0x73
    194a:	0400                	addi	s0,sp,512
    194c:	0281                	addi	t0,t0,0
    194e:	b909                	j	1560 <register_fini-0xeb50>
    1950:	0005                	c.nop	1
    1952:	8800                	0x8800
    1954:	00098017          	auipc	zero,0x98
    1958:	0400                	addi	s0,sp,512
    195a:	02a4                	addi	s1,sp,328
    195c:	00088d07          	0x88d07
    1960:	9000                	0x9000
    1962:	d518                	sw	a4,40(a0)
    1964:	0008                	0x8
    1966:	0400                	addi	s0,sp,512
    1968:	02a8                	addi	a0,sp,328
    196a:	0002b913          	sltiu	s2,t0,0
    196e:	f800                	sd	s0,48(s0)
    1970:	1801                	addi	a6,a6,-32
    1972:	07f5                	addi	a5,a5,29
    1974:	0000                	unimp
    1976:	a904                	fsd	fs1,16(a0)
    1978:	1202                	slli	tp,tp,0x20
    197a:	0275                	addi	tp,tp,29
    197c:	0000                	unimp
    197e:	0200                	addi	s0,sp,256
    1980:	0918                	addi	a4,sp,144
    1982:	0400000b          	0x400000b
    1986:	02ad                	addi	t0,t0,11
    1988:	f00c                	sd	a1,32(s0)
    198a:	0008                	0x8
    198c:	1800                	addi	s0,sp,48
    198e:	1805                	addi	a6,a6,-31
    1990:	000006cf          	fnmadd.s	fa3,ft0,ft0,ft0,rne
    1994:	b204                	fsd	fs1,32(a2)
    1996:	1002                	c.slli	zero,0x20
    1998:	0000066b          	0x66b
    199c:	0520                	addi	s0,sp,648
    199e:	b418                	fsd	fa4,40(s0)
    19a0:	0006                	c.slli	zero,0x1
    19a2:	0400                	addi	s0,sp,512
    19a4:	02b4                	addi	a3,sp,328
    19a6:	fc0a                	sd	sp,56(sp)
    19a8:	0008                	0x8
    19aa:	3800                	fld	fs0,48(s0)
    19ac:	0005                	c.nop	1
    19ae:	05bf080f          	0x5bf080f
    19b2:	0000                	unimp
    19b4:	0102                	c.slli64	sp
    19b6:	1208                	addi	a0,sp,288
    19b8:	0001                	nop
    19ba:	1500                	addi	s0,sp,672
    19bc:	000005bf 0447080f 	0x447080f000005bf
    19c4:	0000                	unimp
    19c6:	00009813          	slli	a6,ra,0x0
    19ca:	ef00                	sd	s0,24(a4)
    19cc:	0005                	c.nop	1
    19ce:	1400                	addi	s0,sp,544
    19d0:	0465                	addi	s0,s0,25
    19d2:	0000                	unimp
    19d4:	0614                	addi	a3,sp,768
    19d6:	0001                	nop
    19d8:	1400                	addi	s0,sp,544
    19da:	000005ef          	jal	a1,19da <register_fini-0xe6d6>
    19de:	3b14                	fld	fa3,48(a4)
    19e0:	0000                	unimp
    19e2:	0000                	unimp
    19e4:	05c6080f          	0x5c6080f
    19e8:	0000                	unimp
    19ea:	ef15                	bnez	a4,1a26 <register_fini-0xe68a>
    19ec:	0005                	c.nop	1
    19ee:	0f00                	addi	s0,sp,912
    19f0:	d108                	sw	a0,32(a0)
    19f2:	0005                	c.nop	1
    19f4:	1300                	addi	s0,sp,416
    19f6:	008c                	addi	a1,sp,64
    19f8:	0000                	unimp
    19fa:	061e                	slli	a2,a2,0x7
    19fc:	0000                	unimp
    19fe:	6514                	ld	a3,8(a0)
    1a00:	0004                	0x4
    1a02:	1400                	addi	s0,sp,544
    1a04:	0106                	slli	sp,sp,0x1
    1a06:	0000                	unimp
    1a08:	8c14                	0x8c14
    1a0a:	0000                	unimp
    1a0c:	1400                	addi	s0,sp,544
    1a0e:	0000003b          	addw	zero,zero,zero
    1a12:	0f00                	addi	s0,sp,912
    1a14:	0008                	0x8
    1a16:	0006                	c.slli	zero,0x1
    1a18:	1300                	addi	s0,sp,416
    1a1a:	0000003b          	addw	zero,zero,zero
    1a1e:	0638                	addi	a4,sp,776
    1a20:	0000                	unimp
    1a22:	6514                	ld	a3,8(a0)
    1a24:	0004                	0x4
    1a26:	1400                	addi	s0,sp,544
    1a28:	0106                	slli	sp,sp,0x1
    1a2a:	0000                	unimp
    1a2c:	0f00                	addi	s0,sp,912
    1a2e:	2408                	fld	fa0,8(s0)
    1a30:	0006                	c.slli	zero,0x1
    1a32:	0800                	addi	s0,sp,16
    1a34:	00000057          	0x57
    1a38:	064e                	slli	a2,a2,0x13
    1a3a:	0000                	unimp
    1a3c:	3409                	addiw	s0,s0,-30
    1a3e:	0000                	unimp
    1a40:	0200                	addi	s0,sp,256
    1a42:	0800                	addi	s0,sp,16
    1a44:	00000057          	0x57
    1a48:	065e                	slli	a2,a2,0x17
    1a4a:	0000                	unimp
    1a4c:	3409                	addiw	s0,s0,-30
    1a4e:	0000                	unimp
    1a50:	0000                	unimp
    1a52:	0400                	addi	s0,sp,512
    1a54:	000006eb          	0x6eb
    1a58:	2404                	fld	fs1,8(s0)
    1a5a:	1a01                	addi	s4,s4,-32
    1a5c:	0304                	addi	s1,sp,384
    1a5e:	0000                	unimp
    1a60:	e919                	bnez	a0,1a76 <register_fini-0xe63a>
    1a62:	000a                	c.slli	zero,0x2
    1a64:	1800                	addi	s0,sp,48
    1a66:	2804                	fld	fs1,16(s0)
    1a68:	0801                	addi	a6,a6,0
    1a6a:	06a4                	addi	s1,sp,840
    1a6c:	0000                	unimp
    1a6e:	0009e117          	auipc	sp,0x9e
    1a72:	0400                	addi	s0,sp,512
    1a74:	012a                	slli	sp,sp,0xa
    1a76:	a411                	j	1c7a <register_fini-0xe436>
    1a78:	0006                	c.slli	zero,0x1
    1a7a:	0000                	unimp
    1a7c:	0007db17          	auipc	s6,0x7d
    1a80:	0400                	addi	s0,sp,512
    1a82:	3b07012b          	0x3b07012b
    1a86:	0000                	unimp
    1a88:	0800                	addi	s0,sp,16
    1a8a:	0009b017          	auipc	zero,0x9b
    1a8e:	0400                	addi	s0,sp,512
    1a90:	012c                	addi	a1,sp,136
    1a92:	0006aa0b          	0x6aa0b
    1a96:	1000                	addi	s0,sp,32
    1a98:	0f00                	addi	s0,sp,912
    1a9a:	6b08                	ld	a0,16(a4)
    1a9c:	0006                	c.slli	zero,0x1
    1a9e:	0f00                	addi	s0,sp,912
    1aa0:	5e08                	lw	a0,56(a2)
    1aa2:	0006                	c.slli	zero,0x1
    1aa4:	1900                	addi	s0,sp,176
    1aa6:	05a2                	slli	a1,a1,0x8
    1aa8:	0000                	unimp
    1aaa:	040e                	slli	s0,s0,0x3
    1aac:	0144                	addi	s1,sp,132
    1aae:	e908                	sd	a0,16(a0)
    1ab0:	0006                	c.slli	zero,0x1
    1ab2:	1700                	addi	s0,sp,928
    1ab4:	0a38                	addi	a4,sp,280
    1ab6:	0000                	unimp
    1ab8:	4504                	lw	s1,8(a0)
    1aba:	1201                	addi	tp,tp,-32
    1abc:	06e9                	addi	a3,a3,26
    1abe:	0000                	unimp
    1ac0:	1700                	addi	s0,sp,928
    1ac2:	0000085b          	0x85b
    1ac6:	4604                	lw	s1,8(a2)
    1ac8:	1201                	addi	tp,tp,-32
    1aca:	06e9                	addi	a3,a3,26
    1acc:	0000                	unimp
    1ace:	1706                	slli	a4,a4,0x21
    1ad0:	0a9a                	slli	s5,s5,0x6
    1ad2:	0000                	unimp
    1ad4:	4704                	lw	s1,8(a4)
    1ad6:	1201                	addi	tp,tp,-32
    1ad8:	0065                	c.nop	25
    1ada:	0000                	unimp
    1adc:	000c                	0xc
    1ade:	6508                	ld	a0,8(a0)
    1ae0:	0000                	unimp
    1ae2:	f900                	sd	s0,48(a0)
    1ae4:	0006                	c.slli	zero,0x1
    1ae6:	0900                	addi	s0,sp,144
    1ae8:	0034                	addi	a3,sp,8
    1aea:	0000                	unimp
    1aec:	0002                	c.slli64	zero
    1aee:	d81a                	sw	t1,48(sp)
    1af0:	8504                	0x8504
    1af2:	0702                	c.slli64	a4
    1af4:	080e                	slli	a6,a6,0x3
    1af6:	0000                	unimp
    1af8:	00088a17          	auipc	s4,0x88
    1afc:	0400                	addi	s0,sp,512
    1afe:	6c180287          	0x6c180287
    1b02:	0000                	unimp
    1b04:	0000                	unimp
    1b06:	000a7d17          	auipc	s10,0xa7
    1b0a:	0400                	addi	s0,sp,512
    1b0c:	0288                	addi	a0,sp,320
    1b0e:	b912                	fsd	ft4,176(sp)
    1b10:	0005                	c.nop	1
    1b12:	0800                	addi	s0,sp,16
    1b14:	00080a17          	auipc	s4,0x80
    1b18:	0400                	addi	s0,sp,512
    1b1a:	0289                	addi	t0,t0,2
    1b1c:	0e10                	addi	a2,sp,784
    1b1e:	0008                	0x8
    1b20:	1000                	addi	s0,sp,32
    1b22:	000b2c17          	auipc	s8,0xb2
    1b26:	0400                	addi	s0,sp,512
    1b28:	028a                	slli	t0,t0,0x2
    1b2a:	00019c17          	auipc	s8,0x19
    1b2e:	2c00                	fld	fs0,24(s0)
    1b30:	00078717          	auipc	a4,0x78
    1b34:	0400                	addi	s0,sp,512
    1b36:	3b0f028b          	0x3b0f028b
    1b3a:	0000                	unimp
    1b3c:	5000                	lw	s0,32(s0)
    1b3e:	0009dc17          	auipc	s8,0x9d
    1b42:	0400                	addi	s0,sp,512
    1b44:	028c                	addi	a1,sp,320
    1b46:	1e2c                	addi	a1,sp,824
    1b48:	0008                	0x8
    1b4a:	5800                	lw	s0,48(s0)
    1b4c:	000b4417          	auipc	s0,0xb4
    1b50:	0400                	addi	s0,sp,512
    1b52:	028d                	addi	t0,t0,3
    1b54:	b01a                	fsd	ft6,32(sp)
    1b56:	0006                	c.slli	zero,0x1
    1b58:	6000                	ld	s0,0(s0)
    1b5a:	0009e717          	auipc	a4,0x9e
    1b5e:	0400                	addi	s0,sp,512
    1b60:	028e                	slli	t0,t0,0x3
    1b62:	fa16                	sd	t0,304(sp)
    1b64:	0000                	unimp
    1b66:	7000                	ld	s0,32(s0)
    1b68:	000b6417          	auipc	s0,0xb6
    1b6c:	0400                	addi	s0,sp,512
    1b6e:	fa16028f          	0xfa16028f
    1b72:	0000                	unimp
    1b74:	7800                	ld	s0,48(s0)
    1b76:	00067017          	auipc	zero,0x67
    1b7a:	0400                	addi	s0,sp,512
    1b7c:	0290                	addi	a2,sp,320
    1b7e:	fa16                	sd	t0,304(sp)
    1b80:	0000                	unimp
    1b82:	8000                	0x8000
    1b84:	000aff17          	auipc	t5,0xaf
    1b88:	0400                	addi	s0,sp,512
    1b8a:	0291                	addi	t0,t0,4
    1b8c:	2510                	fld	fa2,8(a0)
    1b8e:	0008                	0x8
    1b90:	8800                	0x8800
    1b92:	0007fe17          	auipc	t3,0x7f
    1b96:	0400                	addi	s0,sp,512
    1b98:	0292                	slli	t0,t0,0x4
    1b9a:	3510                	fld	fa2,40(a0)
    1b9c:	0008                	0x8
    1b9e:	9000                	0x9000
    1ba0:	0005ce17          	auipc	t3,0x5c
    1ba4:	0400                	addi	s0,sp,512
    1ba6:	3b0f0293          	addi	t0,t5,944 # b0f34 <__BSS_END__+0x9e704>
    1baa:	0000                	unimp
    1bac:	a800                	fsd	fs0,16(s0)
    1bae:	00074917          	auipc	s2,0x74
    1bb2:	0400                	addi	s0,sp,512
    1bb4:	0294                	addi	a3,sp,320
    1bb6:	fa16                	sd	t0,304(sp)
    1bb8:	0000                	unimp
    1bba:	ac00                	fsd	fs0,24(s0)
    1bbc:	00065917          	auipc	s2,0x65
    1bc0:	0400                	addi	s0,sp,512
    1bc2:	0295                	addi	t0,t0,5
    1bc4:	fa16                	sd	t0,304(sp)
    1bc6:	0000                	unimp
    1bc8:	b400                	fsd	fs0,40(s0)
    1bca:	00073817          	auipc	a6,0x73
    1bce:	0400                	addi	s0,sp,512
    1bd0:	0296                	slli	t0,t0,0x5
    1bd2:	fa16                	sd	t0,304(sp)
    1bd4:	0000                	unimp
    1bd6:	bc00                	fsd	fs0,56(s0)
    1bd8:	0005e117          	auipc	sp,0x5e
    1bdc:	0400                	addi	s0,sp,512
    1bde:	fa160297          	auipc	t0,0xfa160
    1be2:	0000                	unimp
    1be4:	c400                	sw	s0,8(s0)
    1be6:	00060d17          	auipc	s10,0x60
    1bea:	0400                	addi	s0,sp,512
    1bec:	0298                	addi	a4,sp,320
    1bee:	fa16                	sd	t0,304(sp)
    1bf0:	0000                	unimp
    1bf2:	cc00                	sw	s0,24(s0)
    1bf4:	00098517          	auipc	a0,0x98
    1bf8:	0400                	addi	s0,sp,512
    1bfa:	0299                	addi	t0,t0,6
    1bfc:	3b08                	fld	fa0,48(a4)
    1bfe:	0000                	unimp
    1c00:	d400                	sw	s0,40(s0)
    1c02:	0800                	addi	s0,sp,16
    1c04:	000005bf 0000081e 	0x81e000005bf
    1c0c:	3409                	addiw	s0,s0,-30
    1c0e:	0000                	unimp
    1c10:	1900                	addi	s0,sp,176
    1c12:	0200                	addi	s0,sp,256
    1c14:	0708                	addi	a0,sp,896
    1c16:	00000213          	li	tp,0
    1c1a:	bf08                	fsd	fa0,56(a4)
    1c1c:	0005                	c.nop	1
    1c1e:	3500                	fld	fs0,40(a0)
    1c20:	0008                	0x8
    1c22:	0900                	addi	s0,sp,144
    1c24:	0034                	addi	a3,sp,8
    1c26:	0000                	unimp
    1c28:	bf080007          	0xbf080007
    1c2c:	0005                	c.nop	1
    1c2e:	4500                	lw	s0,8(a0)
    1c30:	0008                	0x8
    1c32:	0900                	addi	s0,sp,144
    1c34:	0034                	addi	a3,sp,8
    1c36:	0000                	unimp
    1c38:	681b0017          	auipc	zero,0x681b0
    1c3c:	0401                	addi	s0,s0,0
    1c3e:	029e                	slli	t0,t0,0x7
    1c40:	00086d07          	0x86d07
    1c44:	1700                	addi	s0,sp,928
    1c46:	000008b7          	lui	a7,0x0
    1c4a:	a104                	fsd	fs1,0(a0)
    1c4c:	1b02                	slli	s6,s6,0x20
    1c4e:	086d                	addi	a6,a6,27
    1c50:	0000                	unimp
    1c52:	1700                	addi	s0,sp,928
    1c54:	0796                	slli	a5,a5,0x5
    1c56:	0000                	unimp
    1c58:	a204                	fsd	fs1,0(a2)
    1c5a:	1802                	slli	a6,a6,0x20
    1c5c:	087d                	addi	a6,a6,31
    1c5e:	0000                	unimp
    1c60:	00f0                	addi	a2,sp,76
    1c62:	fe08                	sd	a0,56(a2)
    1c64:	0002                	c.slli64	zero
    1c66:	7d00                	ld	s0,56(a0)
    1c68:	0008                	0x8
    1c6a:	0900                	addi	s0,sp,144
    1c6c:	0034                	addi	a3,sp,8
    1c6e:	0000                	unimp
    1c70:	001d                	c.nop	7
    1c72:	6c08                	ld	a0,24(s0)
    1c74:	0000                	unimp
    1c76:	8d00                	0x8d00
    1c78:	0008                	0x8
    1c7a:	0900                	addi	s0,sp,144
    1c7c:	0034                	addi	a3,sp,8
    1c7e:	0000                	unimp
    1c80:	001d                	c.nop	7
    1c82:	681c                	ld	a5,16(s0)
    1c84:	0401                	addi	s0,s0,0
    1c86:	b3030283          	lb	t0,-1232(t1) # 7d468 <__BSS_END__+0x6ac38>
    1c8a:	0008                	0x8
    1c8c:	1d00                	addi	s0,sp,688
    1c8e:	0a31                	addi	s4,s4,12
    1c90:	0000                	unimp
    1c92:	9a04                	0x9a04
    1c94:	0b02                	c.slli64	s6
    1c96:	06f9                	addi	a3,a3,30
    1c98:	0000                	unimp
    1c9a:	191d                	addi	s2,s2,-25
    1c9c:	0400000b          	0x400000b
    1ca0:	450b02a3          	sb	a6,1093(s6) # 7eec1 <__BSS_END__+0x6c691>
    1ca4:	0008                	0x8
    1ca6:	0000                	unimp
    1ca8:	bf08                	fsd	fa0,56(a4)
    1caa:	0005                	c.nop	1
    1cac:	c300                	sw	s0,0(a4)
    1cae:	0008                	0x8
    1cb0:	0900                	addi	s0,sp,144
    1cb2:	0034                	addi	a3,sp,8
    1cb4:	0000                	unimp
    1cb6:	0018                	0x18
    1cb8:	4e1e                	lw	t3,196(sp)
    1cba:	0006                	c.slli	zero,0x1
    1cbc:	0f00                	addi	s0,sp,912
    1cbe:	c308                	sw	a0,0(a4)
    1cc0:	0008                	0x8
    1cc2:	1f00                	addi	s0,sp,944
    1cc4:	08d9                	addi	a7,a7,22
    1cc6:	0000                	unimp
    1cc8:	6514                	ld	a3,8(a0)
    1cca:	0004                	0x4
    1ccc:	0000                	unimp
    1cce:	08ce080f          	0x8ce080f
    1cd2:	0000                	unimp
    1cd4:	0186080f          	0x186080f
    1cd8:	0000                	unimp
    1cda:	f01f 0008 1400      	0x14000008f01f
    1ce0:	0000003b          	addw	zero,zero,zero
    1ce4:	0f00                	addi	s0,sp,912
    1ce6:	f608                	sd	a0,40(a2)
    1ce8:	0008                	0x8
    1cea:	0f00                	addi	s0,sp,912
    1cec:	e508                	sd	a0,8(a0)
    1cee:	0008                	0x8
    1cf0:	0800                	addi	s0,sp,16
    1cf2:	065e                	slli	a2,a2,0x17
    1cf4:	0000                	unimp
    1cf6:	090c                	addi	a1,sp,144
    1cf8:	0000                	unimp
    1cfa:	3409                	addiw	s0,s0,-30
    1cfc:	0000                	unimp
    1cfe:	0200                	addi	s0,sp,256
    1d00:	2000                	fld	fs0,0(s0)
    1d02:	00000ac3          	fmadd.s	fs5,ft0,ft0,ft0,rne
    1d06:	3304                	fld	fs1,32(a4)
    1d08:	04651703          	lh	a4,70(a0) # 99c3a <__BSS_END__+0x8740a>
    1d0c:	0000                	unimp
    1d0e:	bc20                	fsd	fs0,120(s0)
    1d10:	000a                	c.slli	zero,0x2
    1d12:	0400                	addi	s0,sp,512
    1d14:	0334                	addi	a3,sp,392
    1d16:	6b1d                	lui	s6,0x7
    1d18:	0004                	0x4
    1d1a:	0800                	addi	s0,sp,16
    1d1c:	05f5                	addi	a1,a1,29
    1d1e:	0000                	unimp
    1d20:	0931                	addi	s2,s2,12
    1d22:	0000                	unimp
    1d24:	0021                	c.nop	8
    1d26:	2615                	addiw	a2,a2,5
    1d28:	0009                	c.nop	2
    1d2a:	2200                	fld	fs0,0(a2)
    1d2c:	00000723          	sb	zero,14(zero) # e <register_fini-0x100a2>
    1d30:	1406                	slli	s0,s0,0x21
    1d32:	3124                	fld	fs1,96(a0)
    1d34:	0009                	c.nop	2
    1d36:	2200                	fld	fs0,0(a2)
    1d38:	09d2                	slli	s3,s3,0x14
    1d3a:	0000                	unimp
    1d3c:	1506                	slli	a0,a0,0x21
    1d3e:	3b15                	addiw	s6,s6,-27
    1d40:	0000                	unimp
    1d42:	0f00                	addi	s0,sp,912
    1d44:	5408                	lw	a0,40(s0)
    1d46:	0009                	c.nop	2
    1d48:	1300                	addi	s0,sp,416
    1d4a:	0000003b          	addw	zero,zero,zero
    1d4e:	0968                	addi	a0,sp,156
    1d50:	0000                	unimp
    1d52:	6814                	ld	a3,16(s0)
    1d54:	0009                	c.nop	2
    1d56:	1400                	addi	s0,sp,544
    1d58:	0968                	addi	a0,sp,156
    1d5a:	0000                	unimp
    1d5c:	0f00                	addi	s0,sp,912
    1d5e:	6e08                	ld	a0,24(a2)
    1d60:	0009                	c.nop	2
    1d62:	2300                	fld	fs0,0(a4)
    1d64:	dd22                	sw	s0,184(sp)
    1d66:	0008                	0x8
    1d68:	0700                	addi	s0,sp,896
    1d6a:	05b90e67          	jalr	t3,91(s2) # 66c17 <__BSS_END__+0x543e7>
    1d6e:	0000                	unimp
    1d70:	3022                	fld	ft0,40(sp)
    1d72:	0008                	0x8
    1d74:	0800                	addi	s0,sp,16
    1d76:	0f10                	addi	a2,sp,912
    1d78:	00000987          	0x987
    1d7c:	05b9080f          	0x5b9080f
    1d80:	0000                	unimp
    1d82:	e022                	sd	s0,0(sp)
    1d84:	0008                	0x8
    1d86:	0800                	addi	s0,sp,16
    1d88:	0efc                	addi	a5,sp,860
    1d8a:	05b9                	addi	a1,a1,14
    1d8c:	0000                	unimp
    1d8e:	b022                	fsd	fs0,32(sp)
    1d90:	0008                	0x8
    1d92:	0800                	addi	s0,sp,16
    1d94:	0cfd                	addi	s9,s9,31
    1d96:	0000003b          	addw	zero,zero,zero
    1d9a:	7622                	ld	a2,40(sp)
    1d9c:	000a                	c.slli	zero,0x2
    1d9e:	0800                	addi	s0,sp,16
    1da0:	14fd                	addi	s1,s1,-1
    1da2:	0000003b          	addw	zero,zero,zero
    1da6:	5322                	lw	t1,40(sp)
    1da8:	0800000b          	0x800000b
    1dac:	1cfd                	addi	s9,s9,-1
    1dae:	0000003b          	addw	zero,zero,zero
    1db2:	7022                	0x7022
    1db4:	0008                	0x8
    1db6:	0800                	addi	s0,sp,16
    1db8:	0cff                	0xcff
    1dba:	0000003b          	addw	zero,zero,zero
    1dbe:	0322                	slli	t1,t1,0x8
    1dc0:	0009                	c.nop	2
    1dc2:	0900                	addi	s0,sp,144
    1dc4:	169a                	slli	a3,a3,0x26
    1dc6:	002d                	c.nop	11
    1dc8:	0000                	unimp
    1dca:	b522                	fsd	fs0,168(sp)
    1dcc:	0005                	c.nop	1
    1dce:	0900                	addi	s0,sp,144
    1dd0:	003b159b          	slliw	a1,s6,0x3
    1dd4:	0000                	unimp
    1dd6:	b908                	fsd	fa0,48(a0)
    1dd8:	0005                	c.nop	1
    1dda:	f100                	sd	s0,32(a0)
    1ddc:	0009                	c.nop	2
    1dde:	0900                	addi	s0,sp,144
    1de0:	0034                	addi	a3,sp,8
    1de2:	0000                	unimp
    1de4:	0001                	nop
    1de6:	6822                	ld	a6,8(sp)
    1de8:	0006                	c.slli	zero,0x1
    1dea:	0900                	addi	s0,sp,144
    1dec:	179e                	slli	a5,a5,0x27
    1dee:	09e1                	addi	s3,s3,24
    1df0:	0000                	unimp
    1df2:	d105                	beqz	a0,1d12 <register_fini-0xe39e>
    1df4:	0a000007          	0xa000007
    1df8:	162a                	slli	a2,a2,0x2a
    1dfa:	006c                	addi	a1,sp,12
    1dfc:	0000                	unimp
    1dfe:	c005                	beqz	s0,1e1e <register_fini-0xe292>
    1e00:	0009                	c.nop	2
    1e02:	0a00                	addi	s0,sp,272
    1e04:	0a15152f          	0xa15152f
    1e08:	0000                	unimp
    1e0a:	0a1b080f          	0xa1b080f
    1e0e:	0000                	unimp
    1e10:	0009fd13          	andi	s10,s3,0
    1e14:	2a00                	fld	fs0,16(a2)
    1e16:	000a                	c.slli	zero,0x2
    1e18:	1400                	addi	s0,sp,544
    1e1a:	0968                	addi	a0,sp,156
    1e1c:	0000                	unimp
    1e1e:	0500                	addi	s0,sp,640
    1e20:	0b81                	addi	s7,s7,0
    1e22:	0000                	unimp
    1e24:	360a                	fld	fa2,160(sp)
    1e26:	00094e0f          	0x94e0f
    1e2a:	2200                	fld	fs0,0(a2)
    1e2c:	058a                	slli	a1,a1,0x2
    1e2e:	0000                	unimp
    1e30:	bb0a                	fsd	ft2,432(sp)
    1e32:	0912                	slli	s2,s2,0x4
    1e34:	000a                	c.slli	zero,0x2
    1e36:	2200                	fld	fs0,0(a2)
    1e38:	00000aa7          	0xaa7
    1e3c:	be0a                	fsd	ft2,312(sp)
    1e3e:	2a10                	fld	fa2,16(a2)
    1e40:	000a                	c.slli	zero,0x2
    1e42:	2400                	fld	fs0,8(s0)
    1e44:	07a4                	addi	s1,sp,968
    1e46:	0000                	unimp
    1e48:	006c0407          	0x6c0407
    1e4c:	0000                	unimp
    1e4e:	8b06180b          	0x8b06180b
    1e52:	000a                	c.slli	zero,0x2
    1e54:	2500                	fld	fs0,8(a0)
    1e56:	0960                	addi	s0,sp,156
    1e58:	0000                	unimp
    1e5a:	2500                	fld	fs0,8(a0)
    1e5c:	0850                	addi	a2,sp,20
    1e5e:	0000                	unimp
    1e60:	2501                	sext.w	a0,a0
    1e62:	0825                	addi	a6,a6,9
    1e64:	0000                	unimp
    1e66:	2502                	fld	fa0,0(sp)
    1e68:	0845                	addi	a6,a6,17
    1e6a:	0000                	unimp
    1e6c:	09572503          	lw	a0,149(a4) # 9fbef <__BSS_END__+0x8d3bf>
    1e70:	0000                	unimp
    1e72:	2504                	fld	fs1,8(a0)
    1e74:	0b5a                	slli	s6,s6,0x16
    1e76:	0000                	unimp
    1e78:	2505                	addiw	a0,a0,1
    1e7a:	0b49                	addi	s6,s6,18
    1e7c:	0000                	unimp
    1e7e:	0006                	c.slli	zero,0x1
    1e80:	4422                	lw	s0,8(sp)
    1e82:	0006                	c.slli	zero,0x1
    1e84:	0b00                	addi	s0,sp,400
    1e86:	1c21                	addi	s8,s8,-24
    1e88:	0a4e                	slli	s4,s4,0x13
    1e8a:	0000                	unimp
    1e8c:	9724                	0x9724
    1e8e:	0008                	0x8
    1e90:	0700                	addi	s0,sp,896
    1e92:	6c04                	ld	s1,24(s0)
    1e94:	0000                	unimp
    1e96:	0b00                	addi	s0,sp,400
    1e98:	0abc0623          	sb	a1,172(s8) # 9ebea <__BSS_END__+0x8c3ba>
    1e9c:	0000                	unimp
    1e9e:	b625                	j	19c6 <register_fini-0xe6ea>
    1ea0:	0009                	c.nop	2
    1ea2:	0000                	unimp
    1ea4:	7625                	lui	a2,0xfffe9
    1ea6:	0009                	c.nop	2
    1ea8:	0100                	addi	s0,sp,128
    1eaa:	8a25                	andi	a2,a2,9
    1eac:	000a                	c.slli	zero,0x2
    1eae:	0200                	addi	s0,sp,256
    1eb0:	2200                	fld	fs0,0(a2)
    1eb2:	00000757          	0x757
    1eb6:	971e280b          	0x971e280b
    1eba:	000a                	c.slli	zero,0x2
    1ebc:	2400                	fld	fs0,8(s0)
    1ebe:	05f0                	addi	a2,sp,716
    1ec0:	0000                	unimp
    1ec2:	006c0407          	0x6c0407
    1ec6:	0000                	unimp
    1ec8:	e7062b0b          	0xe7062b0b
    1ecc:	000a                	c.slli	zero,0x2
    1ece:	2500                	fld	fs0,8(a0)
    1ed0:	0a6e                	slli	s4,s4,0x1b
    1ed2:	0000                	unimp
    1ed4:	2500                	fld	fs0,8(a0)
    1ed6:	0a5c                	addi	a5,sp,276
    1ed8:	0000                	unimp
    1eda:	0001                	nop
    1edc:	0b22                	slli	s6,s6,0x8
    1ede:	0b000007          	0xb000007
    1ee2:	0ac82a2f          	amoswap.w.rl	s4,a2,(a6)
    1ee6:	0000                	unimp
    1ee8:	6122                	ld	sp,8(sp)
    1eea:	0008                	0x8
    1eec:	0c00                	addi	s0,sp,528
    1eee:	1a29                	addi	s4,s4,-22
    1ef0:	0931                	addi	s2,s2,12
    1ef2:	0000                	unimp
    1ef4:	a422                	fsd	fs0,8(sp)
    1ef6:	0006                	c.slli	zero,0x1
    1ef8:	0c00                	addi	s0,sp,528
    1efa:	1a38                	addi	a4,sp,312
    1efc:	0931                	addi	s2,s2,12
    1efe:	0000                	unimp
    1f00:	fc05                	bnez	s0,1e38 <register_fini-0xe278>
    1f02:	0001                	nop
    1f04:	0d00                	addi	s0,sp,656
    1f06:	0057167b          	0x57167b
    1f0a:	0000                	unimp
    1f0c:	0b15                	addi	s6,s6,5
    1f0e:	0500000b          	0x500000b
    1f12:	0ad0                	addi	a2,sp,340
    1f14:	0000                	unimp
    1f16:	840d                	srai	s0,s0,0x3
    1f18:	00002d0f          	0x2d0f
    1f1c:	0500                	addi	s0,sp,640
    1f1e:	00000acf          	fnmadd.s	fs5,ft0,ft0,ft0,rne
    1f22:	850d                	srai	a0,a0,0x3
    1f24:	3416                	fld	fs0,352(sp)
    1f26:	0000                	unimp
    1f28:	0200                	addi	s0,sp,256
    1f2a:	0510                	addi	a2,sp,640
    1f2c:	01df 0000 1002      	0x1002000001df
    1f32:	00000007          	0x7
    1f36:	0200                	addi	s0,sp,256
    1f38:	0404                	addi	s1,sp,512
    1f3a:	08c6                	slli	a7,a7,0x11
    1f3c:	0000                	unimp
    1f3e:	0802                	c.slli64	a6
    1f40:	0008be03          	ld	t3,0(a7) # 0 <register_fini-0x100b0>
    1f44:	0200                	addi	s0,sp,256
    1f46:	0408                	addi	a0,sp,512
    1f48:	063d                	addi	a2,a2,15
    1f4a:	0000                	unimp
    1f4c:	1002                	c.slli	zero,0x20
    1f4e:	0005bf03          	ld	t5,0(a1)
    1f52:	0200                	addi	s0,sp,256
    1f54:	0320                	addi	s0,sp,392
    1f56:	0630                	addi	a2,sp,776
    1f58:	0000                	unimp
    1f5a:	1708                	addi	a0,sp,928
    1f5c:	7500000b          	0x7500000b
    1f60:	0900000b          	0x900000b
    1f64:	0034                	addi	a3,sp,8
    1f66:	0000                	unimp
    1f68:	00ff                	0xff
    1f6a:	6515                	lui	a0,0x5
    1f6c:	2000000b          	0x2000000b
    1f70:	06fc                	addi	a5,sp,844
    1f72:	0000                	unimp
    1f74:	fc0d                	bnez	s0,1eae <register_fini-0xe202>
    1f76:	1601                	addi	a2,a2,-32
    1f78:	0b75                	addi	s6,s6,29
    1f7a:	0000                	unimp
    1f7c:	0420                	addi	s0,sp,520
    1f7e:	0002                	c.slli64	zero
    1f80:	0d00                	addi	s0,sp,656
    1f82:	0202                	c.slli64	tp
    1f84:	7516                	ld	a0,352(sp)
    1f86:	2600000b          	0x2600000b
    1f8a:	061e                	slli	a2,a2,0x7
    1f8c:	0000                	unimp
    1f8e:	c201                	beqz	a2,1f8e <register_fini-0xe122>
    1f90:	0102                	c.slli64	sp
    1f92:	0000003b          	addw	zero,zero,zero
    1f96:	12c4                	addi	s1,sp,356
    1f98:	0001                	nop
    1f9a:	0000                	unimp
    1f9c:	0000                	unimp
    1f9e:	003c                	addi	a5,sp,8
    1fa0:	0000                	unimp
    1fa2:	0000                	unimp
    1fa4:	0000                	unimp
    1fa6:	9c01                	subw	s0,s0,s0
    1fa8:	01007827          	0x1007827
    1fac:	02c2                	slli	t0,t0,0x10
    1fae:	2812                	fld	fa6,256(sp)
    1fb0:	c500000b          	0xc500000b
    1fb4:	0035                	c.nop	13
    1fb6:	2800                	fld	fs0,16(s0)
    1fb8:	6572                	ld	a0,280(sp)
    1fba:	0074                	addi	a3,sp,12
    1fbc:	c401                	beqz	s0,1fc4 <register_fini-0xe0ec>
    1fbe:	0902                	c.slli64	s2
    1fc0:	0b1c                	addi	a5,sp,400
    1fc2:	0000                	unimp
    1fc4:	a029                	j	1fce <register_fini-0xe0e2>
    1fc6:	2a000007          	0x2a000007
    1fca:	00000ab7          	lui	s5,0x0
    1fce:	c601                	beqz	a2,1fd6 <register_fini-0xe0da>
    1fd0:	0302                	c.slli64	t1
    1fd2:	0b28                	addi	a0,sp,408
    1fd4:	0000                	unimp
    1fd6:	35fe                	fld	fa1,504(sp)
    1fd8:	0000                	unimp
    1fda:	615f5f2b          	0x615f5f2b
    1fde:	0100                	addi	s0,sp,128
    1fe0:	02c6                	slli	t0,t0,0x11
    1fe2:	000b2803          	lw	a6,0(s6) # 7000 <register_fini-0x90b0>
    1fe6:	3700                	fld	fs0,40(a4)
    1fe8:	0036                	c.slli	zero,0xd
    1fea:	0000                	unimp
    1fec:	0000                	unimp
    1fee:	0b7c                	addi	a5,sp,412
    1ff0:	0000                	unimp
    1ff2:	0004                	0x4
    1ff4:	0b71                	addi	s6,s6,28
    1ff6:	0000                	unimp
    1ff8:	0108                	addi	a0,sp,128
    1ffa:	0141                	addi	sp,sp,16
    1ffc:	0000                	unimp
    1ffe:	300c                	fld	fa1,32(s0)
    2000:	0009                	c.nop	2
    2002:	2500                	fld	fs0,8(a0)
    2004:	0000                	unimp
    2006:	c800                	sw	s0,16(s0)
    2008:	002a                	c.slli	zero,0xa
    200a:	0200                	addi	s0,sp,256
    200c:	0508                	addi	a0,sp,640
    200e:	024a                	slli	tp,tp,0x12
    2010:	0000                	unimp
    2012:	0802                	c.slli64	a6
    2014:	00021807          	0x21807
    2018:	0300                	addi	s0,sp,384
    201a:	0504                	addi	s1,sp,640
    201c:	6e69                	lui	t3,0x1a
    201e:	0074                	addi	a3,sp,12
    2020:	0802                	c.slli64	a6
    2022:	4505                	li	a0,1
    2024:	0002                	c.slli64	zero
    2026:	0200                	addi	s0,sp,256
    2028:	0410                	addi	a2,sp,512
    202a:	0638                	addi	a4,sp,776
    202c:	0000                	unimp
    202e:	0102                	c.slli64	sp
    2030:	0b06                	slli	s6,s6,0x1
    2032:	0001                	nop
    2034:	0200                	addi	s0,sp,256
    2036:	0801                	addi	a6,a6,0
    2038:	0109                	addi	sp,sp,2
    203a:	0000                	unimp
    203c:	0202                	c.slli64	tp
    203e:	8005                	srli	s0,s0,0x1
    2040:	0005                	c.nop	1
    2042:	0200                	addi	s0,sp,256
    2044:	0702                	c.slli64	a4
    2046:	07e2                	slli	a5,a5,0x18
    2048:	0000                	unimp
    204a:	0402                	c.slli64	s0
    204c:	00021d07          	0x21d07
    2050:	0400                	addi	s0,sp,512
    2052:	0838                	addi	a4,sp,24
    2054:	0000                	unimp
    2056:	5e01                	li	t3,-32
    2058:	1701                	addi	a4,a4,-32
    205a:	005c                	addi	a5,sp,4
    205c:	0000                	unimp
    205e:	f205                	bnez	a2,1f7e <register_fini-0xe132>
    2060:	0008                	0x8
    2062:	0200                	addi	s0,sp,256
    2064:	0e2e                	slli	t3,t3,0xb
    2066:	001d                	c.nop	7
    2068:	0000                	unimp
    206a:	5405                	li	s0,-31
    206c:	000a                	c.slli	zero,0x2
    206e:	0200                	addi	s0,sp,256
    2070:	0e74                	addi	a3,sp,796
    2072:	001d                	c.nop	7
    2074:	0000                	unimp
    2076:	f605                	bnez	a2,1f9e <register_fini-0xe112>
    2078:	000a                	c.slli	zero,0x2
    207a:	0200                	addi	s0,sp,256
    207c:	001d1793          	slli	a5,s10,0x1
    2080:	0000                	unimp
    2082:	0406                	slli	s0,s0,0x1
    2084:	a502                	fsd	ft0,136(sp)
    2086:	0000b603          	ld	a2,0(ra)
    208a:	0700                	addi	s0,sp,896
    208c:	081f 0000 a702      	0xa7020000081f
    2092:	630c                	ld	a1,0(a4)
    2094:	0000                	unimp
    2096:	0700                	addi	s0,sp,896
    2098:	07bc                	addi	a5,sp,968
    209a:	0000                	unimp
    209c:	a802                	fsd	ft0,16(sp)
    209e:	0000b613          	sltiu	a2,ra,0
    20a2:	0000                	unimp
    20a4:	4708                	lw	a0,8(a4)
    20a6:	0000                	unimp
    20a8:	c600                	sw	s0,8(a2)
    20aa:	0000                	unimp
    20ac:	0900                	addi	s0,sp,144
    20ae:	0024                	addi	s1,sp,8
    20b0:	0000                	unimp
    20b2:	080a0003          	lb	zero,128(s4) # 81b94 <__BSS_END__+0x6f364>
    20b6:	a202                	fsd	ft0,256(sp)
    20b8:	ea09                	bnez	a2,20ca <register_fini-0xdfe6>
    20ba:	0000                	unimp
    20bc:	0b00                	addi	s0,sp,400
    20be:	0a3e                	slli	s4,s4,0xf
    20c0:	0000                	unimp
    20c2:	a402                	fsd	ft0,8(sp)
    20c4:	00002b07          	flw	fs6,0(zero) # 0 <register_fini-0x100b0>
    20c8:	0000                	unimp
    20ca:	000a460b          	0xa460b
    20ce:	0200                	addi	s0,sp,256
    20d0:	05a9                	addi	a1,a1,10
    20d2:	0094                	addi	a3,sp,64
    20d4:	0000                	unimp
    20d6:	0004                	0x4
    20d8:	0d05                	addi	s10,s10,1
    20da:	0009                	c.nop	2
    20dc:	0200                	addi	s0,sp,256
    20de:	03aa                	slli	t2,t2,0xa
    20e0:	00c6                	slli	ra,ra,0x11
    20e2:	0000                	unimp
    20e4:	080c                	addi	a1,sp,16
    20e6:	9f05                	subw	a4,a4,s1
    20e8:	000a                	c.slli	zero,0x2
    20ea:	0300                	addi	s0,sp,384
    20ec:	1919                	addi	s2,s2,-26
    20ee:	005c                	addi	a5,sp,4
    20f0:	0000                	unimp
    20f2:	1805                	addi	a6,a6,-31
    20f4:	0009                	c.nop	2
    20f6:	0400                	addi	s0,sp,512
    20f8:	0d0c                	addi	a1,sp,656
    20fa:	0000002b          	0x2b
    20fe:	8e05                	sub	a2,a2,s1
    2100:	0009                	c.nop	2
    2102:	0300                	addi	s0,sp,384
    2104:	01041b23          	sh	a6,22(s0) # b7b7e <__BSS_END__+0xa534e>
    2108:	0000                	unimp
    210a:	7f0d                	lui	t5,0xfffe3
    210c:	20000007          	0x20000007
    2110:	76083403          	ld	s0,1888(a6) # 7532a <__BSS_END__+0x62afa>
    2114:	0001                	nop
    2116:	0b00                	addi	s0,sp,400
    2118:	09e1                	addi	s3,s3,24
    211a:	0000                	unimp
    211c:	76133603          	ld	a2,1889(t1)
    2120:	0001                	nop
    2122:	0000                	unimp
    2124:	5f0e                	lw	t5,224(sp)
    2126:	3703006b          	0x3703006b
    212a:	00002b07          	flw	fs6,0(zero) # 0 <register_fini-0x100b0>
    212e:	0800                	addi	s0,sp,16
    2130:	000a290b          	0xa290b
    2134:	0300                	addi	s0,sp,384
    2136:	002b0b37          	lui	s6,0x2b0
    213a:	0000                	unimp
    213c:	0b0c                	addi	a1,sp,400
    213e:	0771                	addi	a4,a4,28
    2140:	0000                	unimp
    2142:	2b143703          	ld	a4,689(s0)
    2146:	0000                	unimp
    2148:	1000                	addi	s0,sp,32
    214a:	0006e60b          	0x6e60b
    214e:	0300                	addi	s0,sp,384
    2150:	002b1b37          	lui	s6,0x2b1
    2154:	0000                	unimp
    2156:	0e14                	addi	a3,sp,784
    2158:	785f 0300 0b38      	0xb380300785f
    215e:	017c                	addi	a5,sp,140
    2160:	0000                	unimp
    2162:	0018                	0x18
    2164:	011c080f          	0x11c080f
    2168:	0000                	unimp
    216a:	f808                	sd	a0,48(s0)
    216c:	0000                	unimp
    216e:	8c00                	0x8c00
    2170:	0001                	nop
    2172:	0900                	addi	s0,sp,144
    2174:	0024                	addi	s1,sp,8
    2176:	0000                	unimp
    2178:	0000                	unimp
    217a:	9f0d                	subw	a4,a4,a1
    217c:	24000007          	0x24000007
    2180:	0f083c03          	ld	s8,240(a6)
    2184:	0002                	c.slli64	zero
    2186:	0b00                	addi	s0,sp,400
    2188:	067e                	slli	a2,a2,0x1f
    218a:	0000                	unimp
    218c:	2b093e03          	ld	t3,688(s2)
    2190:	0000                	unimp
    2192:	0000                	unimp
    2194:	000b3b0b          	0xb3b0b
    2198:	0300                	addi	s0,sp,384
    219a:	002b093f 0b040000 	0xb040000002b093f
    21a2:	069a                	slli	a3,a3,0x6
    21a4:	0000                	unimp
    21a6:	2b094003          	lbu	zero,688(s2)
    21aa:	0000                	unimp
    21ac:	0800                	addi	s0,sp,16
    21ae:	000b770b          	0xb770b
    21b2:	0300                	addi	s0,sp,384
    21b4:	0941                	addi	s2,s2,16
    21b6:	0000002b          	0x2b
    21ba:	0b0c                	addi	a1,sp,400
    21bc:	08cc                	addi	a1,sp,84
    21be:	0000                	unimp
    21c0:	2b094203          	lbu	tp,688(s2)
    21c4:	0000                	unimp
    21c6:	1000                	addi	s0,sp,32
    21c8:	0008800b          	0x8800b
    21cc:	0300                	addi	s0,sp,384
    21ce:	002b0943          	fmadd.s	fs2,fs6,ft2,ft0,rne
    21d2:	0000                	unimp
    21d4:	0b14                	addi	a3,sp,400
    21d6:	0adf 0000 4403      	0x440300000adf
    21dc:	2b09                	addiw	s6,s6,2
    21de:	0000                	unimp
    21e0:	1800                	addi	s0,sp,48
    21e2:	0009970b          	0x9970b
    21e6:	0300                	addi	s0,sp,384
    21e8:	0945                	addi	s2,s2,17
    21ea:	0000002b          	0x2b
    21ee:	0b1c                	addi	a5,sp,400
    21f0:	0b21                	addi	s6,s6,8
    21f2:	0000                	unimp
    21f4:	2b094603          	lbu	a2,688(s2)
    21f8:	0000                	unimp
    21fa:	2000                	fld	fs0,0(s0)
    21fc:	1000                	addi	s0,sp,32
    21fe:	06b9                	addi	a3,a3,14
    2200:	0000                	unimp
    2202:	0208                	addi	a0,sp,256
    2204:	55084f03          	lbu	t5,1360(a6)
    2208:	0002                	c.slli64	zero
    220a:	0b00                	addi	s0,sp,400
    220c:	0764                	addi	s1,sp,908
    220e:	0000                	unimp
    2210:	550a5003          	lhu	zero,1360(s4)
    2214:	0002                	c.slli64	zero
    2216:	0000                	unimp
    2218:	6a11                	lui	s4,0x4
    221a:	0009                	c.nop	2
    221c:	0300                	addi	s0,sp,384
    221e:	0951                	addi	s2,s2,20
    2220:	0255                	addi	tp,tp,21
    2222:	0000                	unimp
    2224:	0100                	addi	s0,sp,128
    2226:	9111                	srli	a0,a0,0x24
    2228:	000a                	c.slli	zero,0x2
    222a:	0300                	addi	s0,sp,384
    222c:	00f80a53          	fadd.s	fs4,fa6,fa5,rne
    2230:	0000                	unimp
    2232:	0200                	addi	s0,sp,256
    2234:	de11                	beqz	a2,2150 <register_fini-0xdf60>
    2236:	0006                	c.slli	zero,0x1
    2238:	0300                	addi	s0,sp,384
    223a:	0a56                	slli	s4,s4,0x15
    223c:	00f8                	addi	a4,sp,76
    223e:	0000                	unimp
    2240:	0204                	addi	s1,sp,256
    2242:	0800                	addi	s0,sp,16
    2244:	00f6                	slli	ra,ra,0x1d
    2246:	0000                	unimp
    2248:	0265                	addi	tp,tp,25
    224a:	0000                	unimp
    224c:	2409                	addiw	s0,s0,2
    224e:	0000                	unimp
    2250:	1f00                	addi	s0,sp,944
    2252:	1000                	addi	s0,sp,32
    2254:	08d5                	addi	a7,a7,21
    2256:	0000                	unimp
    2258:	0318                	addi	a4,sp,384
    225a:	a9086203          	lwu	tp,-1392(a6)
    225e:	0002                	c.slli64	zero
    2260:	0b00                	addi	s0,sp,400
    2262:	09e1                	addi	s3,s3,24
    2264:	0000                	unimp
    2266:	a9126303          	lwu	t1,-1391(tp) # b83ad <__BSS_END__+0xa5b7d>
    226a:	0002                	c.slli64	zero
    226c:	0000                	unimp
    226e:	0009f90b          	0x9f90b
    2272:	0300                	addi	s0,sp,384
    2274:	0664                	addi	s1,sp,780
    2276:	0000002b          	0x2b
    227a:	0b08                	addi	a0,sp,400
    227c:	076c                	addi	a1,sp,908
    227e:	0000                	unimp
    2280:	af096603          	lwu	a2,-1296(s2)
    2284:	0002                	c.slli64	zero
    2286:	1000                	addi	s0,sp,32
    2288:	b911                	j	1e9c <register_fini-0xe214>
    228a:	0006                	c.slli	zero,0x1
    228c:	0300                	addi	s0,sp,384
    228e:	020f1e67          	0x20f1e67
    2292:	0000                	unimp
    2294:	0110                	addi	a2,sp,128
    2296:	0f00                	addi	s0,sp,912
    2298:	6508                	ld	a0,8(a0)
    229a:	0002                	c.slli64	zero
    229c:	0800                	addi	s0,sp,16
    229e:	000002bf 000002bf 	0x2bf000002bf
    22a6:	2409                	addiw	s0,s0,2
    22a8:	0000                	unimp
    22aa:	1f00                	addi	s0,sp,944
    22ac:	0f00                	addi	s0,sp,912
    22ae:	c508                	sw	a0,8(a0)
    22b0:	0002                	c.slli64	zero
    22b2:	1200                	addi	s0,sp,288
    22b4:	a10d                	j	26d6 <register_fini-0xd9da>
    22b6:	0009                	c.nop	2
    22b8:	1000                	addi	s0,sp,32
    22ba:	ee087a03          	0xee087a03
    22be:	0002                	c.slli64	zero
    22c0:	0b00                	addi	s0,sp,400
    22c2:	0694                	addi	a3,sp,832
    22c4:	0000                	unimp
    22c6:	ee117b03          	0xee117b03
    22ca:	0002                	c.slli64	zero
    22cc:	0000                	unimp
    22ce:	00059c0b          	0x59c0b
    22d2:	0300                	addi	s0,sp,384
    22d4:	067c                	addi	a5,sp,780
    22d6:	0000002b          	0x2b
    22da:	0008                	0x8
    22dc:	0047080f          	0x47080f
    22e0:	0000                	unimp
    22e2:	ca0d                	beqz	a2,2314 <register_fini-0xdd9c>
    22e4:	0009                	c.nop	2
    22e6:	b000                	fsd	fs0,32(s0)
    22e8:	3708ba03          	ld	s4,880(a7)
    22ec:	0004                	0x4
    22ee:	0e00                	addi	s0,sp,784
    22f0:	705f 0300 12bb      	0x12bb0300705f
    22f6:	02ee                	slli	t0,t0,0x1b
    22f8:	0000                	unimp
    22fa:	0e00                	addi	s0,sp,784
    22fc:	725f 0300 07bc      	0x7bc0300725f
    2302:	0000002b          	0x2b
    2306:	0e08                	addi	a0,sp,784
    2308:	775f 0300 07bd      	0x7bd0300775f
    230e:	0000002b          	0x2b
    2312:	0b0c                	addi	a1,sp,400
    2314:	000006d7          	0x6d7
    2318:	4e09be03          	ld	t3,1248(s3) # 1ada <register_fini-0xe5d6>
    231c:	0000                	unimp
    231e:	1000                	addi	s0,sp,32
    2320:	0007cb0b          	0x7cb0b
    2324:	0300                	addi	s0,sp,384
    2326:	004e09bf 0e120000 	0xe120000004e09bf
    232e:	625f 0066 c003      	0xc0030066625f
    2334:	c611                	beqz	a2,2340 <register_fini-0xdd70>
    2336:	0002                	c.slli64	zero
    2338:	1800                	addi	s0,sp,48
    233a:	0006270b          	0x6270b
    233e:	0300                	addi	s0,sp,384
    2340:	07c1                	addi	a5,a5,16
    2342:	0000002b          	0x2b
    2346:	0b28                	addi	a0,sp,408
    2348:	000006c7          	fmsub.s	fa3,ft0,ft0,ft0,rne
    234c:	f60ac803          	lbu	a6,-160(s5) # ffffffffffffff60 <__BSS_END__+0xfffffffffffed730>
    2350:	0000                	unimp
    2352:	3000                	fld	fs0,32(s0)
    2354:	00092a0b          	0x92a0b
    2358:	0300                	addi	s0,sp,384
    235a:	1dca                	slli	s11,s11,0x32
    235c:	000005bb          	addw	a1,zero,zero
    2360:	0b38                	addi	a4,sp,408
    2362:	0879                	addi	a6,a6,30
    2364:	0000                	unimp
    2366:	ea1dcc03          	lbu	s8,-351(s11)
    236a:	0005                	c.nop	1
    236c:	4000                	lw	s0,0(s0)
    236e:	000a4e0b          	0xa4e0b
    2372:	0300                	addi	s0,sp,384
    2374:	060e0dcf          	fnmadd.q	fs11,ft8,ft0,ft0,rne
    2378:	0000                	unimp
    237a:	0b48                	addi	a0,sp,404
    237c:	00000687          	0x687
    2380:	2809d003          	lhu	zero,640(s3)
    2384:	0006                	c.slli	zero,0x1
    2386:	5000                	lw	s0,32(s0)
    2388:	5f0e                	lw	t5,224(sp)
    238a:	6275                	lui	tp,0x1d
    238c:	0300                	addi	s0,sp,384
    238e:	02c611d3          	fadd.d	ft3,fa2,fa2,rtz
    2392:	0000                	unimp
    2394:	0e58                	addi	a4,sp,788
    2396:	755f 0070 d403      	0xd4030070755f
    239c:	ee12                	sd	tp,280(sp)
    239e:	0002                	c.slli64	zero
    23a0:	6800                	ld	s0,16(s0)
    23a2:	5f0e                	lw	t5,224(sp)
    23a4:	7275                	lui	tp,0xffffd
    23a6:	0300                	addi	s0,sp,384
    23a8:	07d5                	addi	a5,a5,21
    23aa:	0000002b          	0x2b
    23ae:	0b70                	addi	a2,sp,412
    23b0:	068e                	slli	a3,a3,0x3
    23b2:	0000                	unimp
    23b4:	2e11d803          	lhu	a6,737(gp) # 12b01 <__BSS_END__+0x2d1>
    23b8:	0006                	c.slli	zero,0x1
    23ba:	7400                	ld	s0,40(s0)
    23bc:	000b130b          	0xb130b
    23c0:	0300                	addi	s0,sp,384
    23c2:	11d9                	addi	gp,gp,-10
    23c4:	063e                	slli	a2,a2,0xf
    23c6:	0000                	unimp
    23c8:	6c5f0e77          	0x6c5f0e77
    23cc:	0062                	c.slli	zero,0x18
    23ce:	c611dc03          	lhu	s8,-927(gp) # 12481 <impure_data+0x3e9>
    23d2:	0002                	c.slli64	zero
    23d4:	7800                	ld	s0,48(s0)
    23d6:	000a650b          	0xa650b
    23da:	0300                	addi	s0,sp,384
    23dc:	07df 002b 0000      	0x2b07df
    23e2:	0b88                	addi	a0,sp,464
    23e4:	08a8                	addi	a0,sp,88
    23e6:	0000                	unimp
    23e8:	700ae003          	lwu	zero,1792(s5)
    23ec:	0000                	unimp
    23ee:	9000                	0x9000
    23f0:	0005db0b          	0x5db0b
    23f4:	0300                	addi	s0,sp,384
    23f6:	045512e3          	bne	a0,t0,2c3a <register_fini-0xd476>
    23fa:	0000                	unimp
    23fc:	0b98                	addi	a4,sp,464
    23fe:	0000083f 100ce703 	0x100ce7030000083f
    2406:	0001                	nop
    2408:	a000                	fsd	fs0,0(s0)
    240a:	0007b30b          	0x7b30b
    240e:	0300                	addi	s0,sp,384
    2410:	0ee9                	addi	t4,t4,26
    2412:	00ea                	slli	ra,ra,0x1a
    2414:	0000                	unimp
    2416:	0ba4                	addi	s1,sp,472
    2418:	09a8                	addi	a0,sp,216
    241a:	0000                	unimp
    241c:	2b09ea03          	lwu	s4,688(s3)
    2420:	0000                	unimp
    2422:	ac00                	fsd	fs0,24(s0)
    2424:	1300                	addi	s0,sp,416
    2426:	0088                	addi	a0,sp,64
    2428:	0000                	unimp
    242a:	0455                	addi	s0,s0,21
    242c:	0000                	unimp
    242e:	5514                	lw	a3,40(a0)
    2430:	0004                	0x4
    2432:	1400                	addi	s0,sp,544
    2434:	00f6                	slli	ra,ra,0x1d
    2436:	0000                	unimp
    2438:	a914                	fsd	fa3,16(a0)
    243a:	0005                	c.nop	1
    243c:	1400                	addi	s0,sp,544
    243e:	0000002b          	0x2b
    2442:	0f00                	addi	s0,sp,912
    2444:	6008                	ld	a0,0(s0)
    2446:	0004                	0x4
    2448:	1500                	addi	s0,sp,672
    244a:	0455                	addi	s0,s0,21
    244c:	0000                	unimp
    244e:	3116                	fld	ft2,352(sp)
    2450:	000a                	c.slli	zero,0x2
    2452:	4800                	lw	s0,16(s0)
    2454:	02650307          	0x2650307
    2458:	a908                	fsd	fa0,16(a0)
    245a:	0005                	c.nop	1
    245c:	1700                	addi	s0,sp,928
    245e:	00000987          	0x987
    2462:	07026703          	lwu	a4,112(tp) # ffffffffffffd070 <__BSS_END__+0xfffffffffffea840>
    2466:	0000002b          	0x2b
    246a:	1700                	addi	s0,sp,928
    246c:	00000aef          	jal	s5,246c <register_fini-0xdc44>
    2470:	0b026c03          	lwu	s8,176(tp) # b0 <register_fini-0x10000>
    2474:	069a                	slli	a3,a3,0x6
    2476:	0000                	unimp
    2478:	1708                	addi	a0,sp,928
    247a:	00000ad7          	0xad7
    247e:	14026c03          	lwu	s8,320(tp) # 140 <register_fini-0xff70>
    2482:	069a                	slli	a3,a3,0x6
    2484:	0000                	unimp
    2486:	1710                	addi	a2,sp,928
    2488:	00000777          	0x777
    248c:	1e026c03          	lwu	s8,480(tp) # 1e0 <register_fini-0xfed0>
    2490:	069a                	slli	a3,a3,0x6
    2492:	0000                	unimp
    2494:	1718                	addi	a4,sp,928
    2496:	09f4                	addi	a3,sp,220
    2498:	0000                	unimp
    249a:	08026e03          	lwu	t3,128(tp) # 80 <register_fini-0x10030>
    249e:	0000002b          	0x2b
    24a2:	1720                	addi	s0,sp,936
    24a4:	05aa                	slli	a1,a1,0xa
    24a6:	0000                	unimp
    24a8:	08026f03          	lwu	t5,128(tp) # 80 <register_fini-0x10030>
    24ac:	000008a3          	sb	zero,17(zero) # 11 <register_fini-0x1009f>
    24b0:	1724                	addi	s1,sp,936
    24b2:	0a10                	addi	a2,sp,272
    24b4:	0000                	unimp
    24b6:	07027203          	0x7027203
    24ba:	0000002b          	0x2b
    24be:	1740                	addi	s0,sp,932
    24c0:	09fe                	slli	s3,s3,0x1f
    24c2:	0000                	unimp
    24c4:	16027303          	0x16027303
    24c8:	08b8                	addi	a4,sp,88
    24ca:	0000                	unimp
    24cc:	1748                	addi	a0,sp,932
    24ce:	000008e7          	jalr	a7,zero # 0 <register_fini-0x100b0>
    24d2:	07027503          	0x7027503
    24d6:	0000002b          	0x2b
    24da:	1750                	addi	a2,sp,932
    24dc:	0a06                	slli	s4,s4,0x1
    24de:	0000                	unimp
    24e0:	0a027703          	0xa027703
    24e4:	08c9                	addi	a7,a7,18
    24e6:	0000                	unimp
    24e8:	1758                	addi	a4,sp,932
    24ea:	00000817          	auipc	a6,0x0
    24ee:	13027a03          	0x13027a03
    24f2:	0176                	slli	sp,sp,0x1d
    24f4:	0000                	unimp
    24f6:	1760                	addi	s0,sp,940
    24f8:	06f2                	slli	a3,a3,0x1c
    24fa:	0000                	unimp
    24fc:	07027b03          	0x7027b03
    2500:	0000002b          	0x2b
    2504:	1768                	addi	a0,sp,940
    2506:	0b72                	slli	s6,s6,0x1c
    2508:	0000                	unimp
    250a:	13027c03          	0x13027c03
    250e:	0176                	slli	sp,sp,0x1d
    2510:	0000                	unimp
    2512:	1770                	addi	a2,sp,940
    2514:	08f9                	addi	a7,a7,30
    2516:	0000                	unimp
    2518:	14027d03          	0x14027d03
    251c:	000008cf          	fnmadd.s	fa7,ft0,ft0,ft0,rne
    2520:	1778                	addi	a4,sp,940
    2522:	000007c3          	fmadd.s	fa5,ft0,ft0,ft0,rne
    2526:	07028003          	lb	zero,112(t0) # fffffffffa161c4e <__BSS_END__+0xfffffffffa14f41e>
    252a:	0000002b          	0x2b
    252e:	1780                	addi	s0,sp,992
    2530:	0730                	addi	a2,sp,904
    2532:	0000                	unimp
    2534:	09028103          	lb	sp,144(t0)
    2538:	05a9                	addi	a1,a1,10
    253a:	0000                	unimp
    253c:	1788                	addi	a0,sp,992
    253e:	0980                	addi	s0,sp,208
    2540:	0000                	unimp
    2542:	0702a403          	lw	s0,112(t0)
    2546:	087d                	addi	a6,a6,31
    2548:	0000                	unimp
    254a:	1890                	addi	a2,sp,112
    254c:	08d5                	addi	a7,a7,21
    254e:	0000                	unimp
    2550:	1302a803          	lw	a6,304(t0)
    2554:	02a9                	addi	t0,t0,10
    2556:	0000                	unimp
    2558:	01f8                	addi	a4,sp,204
    255a:	f518                	sd	a4,40(a0)
    255c:	03000007          	0x3000007
    2560:	02a9                	addi	t0,t0,10
    2562:	6512                	ld	a0,256(sp)
    2564:	0002                	c.slli64	zero
    2566:	0000                	unimp
    2568:	1802                	slli	a6,a6,0x20
    256a:	0b09                	addi	s6,s6,2
    256c:	0000                	unimp
    256e:	0c02ad03          	lw	s10,192(t0)
    2572:	08e0                	addi	s0,sp,92
    2574:	0000                	unimp
    2576:	0518                	addi	a4,sp,640
    2578:	cf18                	sw	a4,24(a4)
    257a:	0006                	c.slli	zero,0x1
    257c:	0300                	addi	s0,sp,384
    257e:	02b2                	slli	t0,t0,0xc
    2580:	5b10                	lw	a2,48(a4)
    2582:	0006                	c.slli	zero,0x1
    2584:	2000                	fld	fs0,0(s0)
    2586:	1805                	addi	a6,a6,-31
    2588:	06b4                	addi	a3,sp,840
    258a:	0000                	unimp
    258c:	0a02b403          	ld	s0,160(t0)
    2590:	08ec                	addi	a1,sp,92
    2592:	0000                	unimp
    2594:	0538                	addi	a4,sp,648
    2596:	0f00                	addi	s0,sp,912
    2598:	af08                	fsd	fa0,24(a4)
    259a:	0005                	c.nop	1
    259c:	0200                	addi	s0,sp,256
    259e:	0801                	addi	a6,a6,0
    25a0:	0112                	slli	sp,sp,0x4
    25a2:	0000                	unimp
    25a4:	af15                	j	2cd8 <register_fini-0xd3d8>
    25a6:	0005                	c.nop	1
    25a8:	0f00                	addi	s0,sp,912
    25aa:	3708                	fld	fa0,40(a4)
    25ac:	0004                	0x4
    25ae:	1300                	addi	s0,sp,416
    25b0:	0088                	addi	a0,sp,64
    25b2:	0000                	unimp
    25b4:	05df 0000 5514      	0x5514000005df
    25ba:	0004                	0x4
    25bc:	1400                	addi	s0,sp,544
    25be:	00f6                	slli	ra,ra,0x1d
    25c0:	0000                	unimp
    25c2:	df14                	sw	a3,56(a4)
    25c4:	0005                	c.nop	1
    25c6:	1400                	addi	s0,sp,544
    25c8:	0000002b          	0x2b
    25cc:	0f00                	addi	s0,sp,912
    25ce:	b608                	fsd	fa0,40(a2)
    25d0:	0005                	c.nop	1
    25d2:	1500                	addi	s0,sp,672
    25d4:	05df 0000 080f      	0x80f000005df
    25da:	05c1                	addi	a1,a1,16
    25dc:	0000                	unimp
    25de:	00007c13          	andi	s8,zero,0
    25e2:	0e00                	addi	s0,sp,784
    25e4:	0006                	c.slli	zero,0x1
    25e6:	1400                	addi	s0,sp,544
    25e8:	0455                	addi	s0,s0,21
    25ea:	0000                	unimp
    25ec:	f614                	sd	a3,40(a2)
    25ee:	0000                	unimp
    25f0:	1400                	addi	s0,sp,544
    25f2:	007c                	addi	a5,sp,12
    25f4:	0000                	unimp
    25f6:	2b14                	fld	fa3,16(a4)
    25f8:	0000                	unimp
    25fa:	0000                	unimp
    25fc:	05f0080f          	0x5f0080f
    2600:	0000                	unimp
    2602:	00002b13          	slti	s6,zero,0
    2606:	2800                	fld	fs0,16(s0)
    2608:	0006                	c.slli	zero,0x1
    260a:	1400                	addi	s0,sp,544
    260c:	0455                	addi	s0,s0,21
    260e:	0000                	unimp
    2610:	f614                	sd	a3,40(a2)
    2612:	0000                	unimp
    2614:	0000                	unimp
    2616:	0614080f          	0x614080f
    261a:	0000                	unimp
    261c:	4708                	lw	a0,8(a4)
    261e:	0000                	unimp
    2620:	3e00                	fld	fs0,56(a2)
    2622:	0006                	c.slli	zero,0x1
    2624:	0900                	addi	s0,sp,144
    2626:	0024                	addi	s1,sp,8
    2628:	0000                	unimp
    262a:	0002                	c.slli64	zero
    262c:	4708                	lw	a0,8(a4)
    262e:	0000                	unimp
    2630:	4e00                	lw	s0,24(a2)
    2632:	0006                	c.slli	zero,0x1
    2634:	0900                	addi	s0,sp,144
    2636:	0024                	addi	s1,sp,8
    2638:	0000                	unimp
    263a:	0000                	unimp
    263c:	eb04                	sd	s1,16(a4)
    263e:	0006                	c.slli	zero,0x1
    2640:	0300                	addi	s0,sp,384
    2642:	0124                	addi	s1,sp,136
    2644:	f41a                	sd	t1,40(sp)
    2646:	0002                	c.slli64	zero
    2648:	1900                	addi	s0,sp,176
    264a:	0ae9                	addi	s5,s5,26
    264c:	0000                	unimp
    264e:	0318                	addi	a4,sp,384
    2650:	0128                	addi	a0,sp,136
    2652:	9408                	0x9408
    2654:	0006                	c.slli	zero,0x1
    2656:	1700                	addi	s0,sp,928
    2658:	09e1                	addi	s3,s3,24
    265a:	0000                	unimp
    265c:	11012a03          	lw	s4,272(sp) # 5fce8 <__BSS_END__+0x4d4b8>
    2660:	0694                	addi	a3,sp,832
    2662:	0000                	unimp
    2664:	1700                	addi	s0,sp,928
    2666:	000007db          	0x7db
    266a:	07012b03          	lw	s6,112(sp)
    266e:	0000002b          	0x2b
    2672:	1708                	addi	a0,sp,928
    2674:	09b0                	addi	a2,sp,216
    2676:	0000                	unimp
    2678:	0b012c03          	lw	s8,176(sp)
    267c:	069a                	slli	a3,a3,0x6
    267e:	0000                	unimp
    2680:	0010                	0x10
    2682:	065b080f          	0x65b080f
    2686:	0000                	unimp
    2688:	064e080f          	0x64e080f
    268c:	0000                	unimp
    268e:	a219                	j	2794 <register_fini-0xd91c>
    2690:	0005                	c.nop	1
    2692:	0e00                	addi	s0,sp,784
    2694:	08014403          	lbu	s0,128(sp)
    2698:	06d9                	addi	a3,a3,22
    269a:	0000                	unimp
    269c:	000a3817          	auipc	a6,0xa3
    26a0:	0300                	addi	s0,sp,384
    26a2:	0145                	addi	sp,sp,17
    26a4:	d912                	sw	tp,176(sp)
    26a6:	0006                	c.slli	zero,0x1
    26a8:	0000                	unimp
    26aa:	00085b17          	auipc	s6,0x85
    26ae:	0300                	addi	s0,sp,384
    26b0:	0146                	slli	sp,sp,0x11
    26b2:	d912                	sw	tp,176(sp)
    26b4:	0006                	c.slli	zero,0x1
    26b6:	0600                	addi	s0,sp,768
    26b8:	000a9a17          	auipc	s4,0xa9
    26bc:	0300                	addi	s0,sp,384
    26be:	55120147          	0x55120147
    26c2:	0000                	unimp
    26c4:	0c00                	addi	s0,sp,528
    26c6:	0800                	addi	s0,sp,16
    26c8:	0055                	c.nop	21
    26ca:	0000                	unimp
    26cc:	06e9                	addi	a3,a3,26
    26ce:	0000                	unimp
    26d0:	2409                	addiw	s0,s0,2
    26d2:	0000                	unimp
    26d4:	0200                	addi	s0,sp,256
    26d6:	1a00                	addi	s0,sp,304
    26d8:	03d8                	addi	a4,sp,452
    26da:	0285                	addi	t0,t0,1
    26dc:	0007fe07          	0x7fe07
    26e0:	1700                	addi	s0,sp,928
    26e2:	088a                	slli	a7,a7,0x2
    26e4:	0000                	unimp
    26e6:	18028703          	lb	a4,384(t0)
    26ea:	005c                	addi	a5,sp,4
    26ec:	0000                	unimp
    26ee:	1700                	addi	s0,sp,928
    26f0:	0a7d                	addi	s4,s4,31
    26f2:	0000                	unimp
    26f4:	12028803          	lb	a6,288(t0)
    26f8:	05a9                	addi	a1,a1,10
    26fa:	0000                	unimp
    26fc:	1708                	addi	a0,sp,928
    26fe:	080a                	slli	a6,a6,0x2
    2700:	0000                	unimp
    2702:	10028903          	lb	s2,256(t0)
    2706:	07fe                	slli	a5,a5,0x1f
    2708:	0000                	unimp
    270a:	1710                	addi	a2,sp,928
    270c:	0b2c                	addi	a1,sp,408
    270e:	0000                	unimp
    2710:	17028a03          	lb	s4,368(t0)
    2714:	018c                	addi	a1,sp,192
    2716:	0000                	unimp
    2718:	172c                	addi	a1,sp,936
    271a:	00000787          	0x787
    271e:	0f028b03          	lb	s6,240(t0)
    2722:	0000002b          	0x2b
    2726:	1750                	addi	a2,sp,932
    2728:	09dc                	addi	a5,sp,212
    272a:	0000                	unimp
    272c:	2c028c03          	lb	s8,704(t0)
    2730:	080e                	slli	a6,a6,0x3
    2732:	0000                	unimp
    2734:	1758                	addi	a4,sp,932
    2736:	0b44                	addi	s1,sp,404
    2738:	0000                	unimp
    273a:	1a028d03          	lb	s10,416(t0)
    273e:	06a0                	addi	s0,sp,840
    2740:	0000                	unimp
    2742:	1760                	addi	s0,sp,940
    2744:	000009e7          	jalr	s3,zero # 0 <register_fini-0x100b0>
    2748:	16028e03          	lb	t3,352(t0)
    274c:	00ea                	slli	ra,ra,0x1a
    274e:	0000                	unimp
    2750:	1770                	addi	a2,sp,940
    2752:	0b64                	addi	s1,sp,412
    2754:	0000                	unimp
    2756:	16028f03          	lb	t5,352(t0)
    275a:	00ea                	slli	ra,ra,0x1a
    275c:	0000                	unimp
    275e:	1778                	addi	a4,sp,940
    2760:	0670                	addi	a2,sp,780
    2762:	0000                	unimp
    2764:	16029003          	lh	zero,352(t0)
    2768:	00ea                	slli	ra,ra,0x1a
    276a:	0000                	unimp
    276c:	1780                	addi	s0,sp,992
    276e:	0aff                	0xaff
    2770:	0000                	unimp
    2772:	10029103          	lh	sp,256(t0)
    2776:	0815                	addi	a6,a6,5
    2778:	0000                	unimp
    277a:	1788                	addi	a0,sp,992
    277c:	07fe                	slli	a5,a5,0x1f
    277e:	0000                	unimp
    2780:	10029203          	lh	tp,256(t0)
    2784:	0825                	addi	a6,a6,9
    2786:	0000                	unimp
    2788:	1790                	addi	a2,sp,992
    278a:	05ce                	slli	a1,a1,0x13
    278c:	0000                	unimp
    278e:	0f029303          	lh	t1,240(t0)
    2792:	0000002b          	0x2b
    2796:	17a8                	addi	a0,sp,1000
    2798:	0749                	addi	a4,a4,18
    279a:	0000                	unimp
    279c:	16029403          	lh	s0,352(t0)
    27a0:	00ea                	slli	ra,ra,0x1a
    27a2:	0000                	unimp
    27a4:	17ac                	addi	a1,sp,1000
    27a6:	0659                	addi	a2,a2,22
    27a8:	0000                	unimp
    27aa:	16029503          	lh	a0,352(t0)
    27ae:	00ea                	slli	ra,ra,0x1a
    27b0:	0000                	unimp
    27b2:	17b4                	addi	a3,sp,1000
    27b4:	0738                	addi	a4,sp,904
    27b6:	0000                	unimp
    27b8:	16029603          	lh	a2,352(t0)
    27bc:	00ea                	slli	ra,ra,0x1a
    27be:	0000                	unimp
    27c0:	17bc                	addi	a5,sp,1000
    27c2:	05e1                	addi	a1,a1,24
    27c4:	0000                	unimp
    27c6:	16029703          	lh	a4,352(t0)
    27ca:	00ea                	slli	ra,ra,0x1a
    27cc:	0000                	unimp
    27ce:	17c4                	addi	s1,sp,996
    27d0:	060d                	addi	a2,a2,3
    27d2:	0000                	unimp
    27d4:	16029803          	lh	a6,352(t0)
    27d8:	00ea                	slli	ra,ra,0x1a
    27da:	0000                	unimp
    27dc:	17cc                	addi	a1,sp,996
    27de:	0985                	addi	s3,s3,1
    27e0:	0000                	unimp
    27e2:	08029903          	lh	s2,128(t0)
    27e6:	0000002b          	0x2b
    27ea:	00d4                	addi	a3,sp,68
    27ec:	af08                	fsd	fa0,24(a4)
    27ee:	0005                	c.nop	1
    27f0:	0e00                	addi	s0,sp,784
    27f2:	0008                	0x8
    27f4:	0900                	addi	s0,sp,144
    27f6:	0024                	addi	s1,sp,8
    27f8:	0000                	unimp
    27fa:	0019                	c.nop	6
    27fc:	0802                	c.slli64	a6
    27fe:	00021307          	0x21307
    2802:	0800                	addi	s0,sp,16
    2804:	000005af          	0x5af
    2808:	0825                	addi	a6,a6,9
    280a:	0000                	unimp
    280c:	2409                	addiw	s0,s0,2
    280e:	0000                	unimp
    2810:	0700                	addi	s0,sp,896
    2812:	0800                	addi	s0,sp,16
    2814:	000005af          	0x5af
    2818:	0835                	addi	a6,a6,13
    281a:	0000                	unimp
    281c:	2409                	addiw	s0,s0,2
    281e:	0000                	unimp
    2820:	1700                	addi	s0,sp,928
    2822:	1b00                	addi	s0,sp,432
    2824:	0168                	addi	a0,sp,140
    2826:	07029e03          	lh	t3,112(t0)
    282a:	085d                	addi	a6,a6,23
    282c:	0000                	unimp
    282e:	0008b717          	auipc	a4,0x8b
    2832:	0300                	addi	s0,sp,384
    2834:	02a1                	addi	t0,t0,8
    2836:	00085d1b          	srliw	s10,a6,0x0
    283a:	0000                	unimp
    283c:	00079617          	auipc	a2,0x79
    2840:	0300                	addi	s0,sp,384
    2842:	02a2                	slli	t0,t0,0x8
    2844:	6d18                	ld	a4,24(a0)
    2846:	0008                	0x8
    2848:	f000                	sd	s0,32(s0)
    284a:	0800                	addi	s0,sp,16
    284c:	02ee                	slli	t0,t0,0x1b
    284e:	0000                	unimp
    2850:	086d                	addi	a6,a6,27
    2852:	0000                	unimp
    2854:	2409                	addiw	s0,s0,2
    2856:	0000                	unimp
    2858:	1d00                	addi	s0,sp,688
    285a:	0800                	addi	s0,sp,16
    285c:	005c                	addi	a5,sp,4
    285e:	0000                	unimp
    2860:	087d                	addi	a6,a6,31
    2862:	0000                	unimp
    2864:	2409                	addiw	s0,s0,2
    2866:	0000                	unimp
    2868:	1d00                	addi	s0,sp,688
    286a:	1c00                	addi	s0,sp,560
    286c:	0168                	addi	a0,sp,140
    286e:	03028303          	lb	t1,48(t0)
    2872:	000008a3          	sb	zero,17(zero) # 11 <register_fini-0x1009f>
    2876:	311d                	addiw	sp,sp,-25
    2878:	000a                	c.slli	zero,0x2
    287a:	0300                	addi	s0,sp,384
    287c:	029a                	slli	t0,t0,0x6
    287e:	0006e90b          	0x6e90b
    2882:	1d00                	addi	s0,sp,688
    2884:	0b19                	addi	s6,s6,6
    2886:	0000                	unimp
    2888:	0b02a303          	lw	t1,176(t0)
    288c:	0835                	addi	a6,a6,13
    288e:	0000                	unimp
    2890:	0800                	addi	s0,sp,16
    2892:	000005af          	0x5af
    2896:	000008b3          	add	a7,zero,zero
    289a:	2409                	addiw	s0,s0,2
    289c:	0000                	unimp
    289e:	1800                	addi	s0,sp,48
    28a0:	1e00                	addi	s0,sp,816
    28a2:	064e                	slli	a2,a2,0x13
    28a4:	0000                	unimp
    28a6:	08b3080f          	0x8b3080f
    28aa:	0000                	unimp
    28ac:	c91f 0008 1400      	0x14000008c91f
    28b2:	0455                	addi	s0,s0,21
    28b4:	0000                	unimp
    28b6:	0f00                	addi	s0,sp,912
    28b8:	be08                	fsd	fa0,56(a2)
    28ba:	0008                	0x8
    28bc:	0f00                	addi	s0,sp,912
    28be:	7608                	ld	a0,40(a2)
    28c0:	0001                	nop
    28c2:	1f00                	addi	s0,sp,944
    28c4:	08e0                	addi	s0,sp,92
    28c6:	0000                	unimp
    28c8:	2b14                	fld	fa3,16(a4)
    28ca:	0000                	unimp
    28cc:	0000                	unimp
    28ce:	08e6080f          	0x8e6080f
    28d2:	0000                	unimp
    28d4:	08d5080f          	0x8d5080f
    28d8:	0000                	unimp
    28da:	4e08                	lw	a0,24(a2)
    28dc:	0006                	c.slli	zero,0x1
    28de:	fc00                	sd	s0,56(s0)
    28e0:	0008                	0x8
    28e2:	0900                	addi	s0,sp,144
    28e4:	0024                	addi	s1,sp,8
    28e6:	0000                	unimp
    28e8:	0002                	c.slli64	zero
    28ea:	c320                	sw	s0,64(a4)
    28ec:	000a                	c.slli	zero,0x2
    28ee:	0300                	addi	s0,sp,384
    28f0:	55170333          	0x55170333
    28f4:	0004                	0x4
    28f6:	2000                	fld	fs0,0(s0)
    28f8:	0abc                	addi	a5,sp,344
    28fa:	0000                	unimp
    28fc:	1d033403          	ld	s0,464(t1)
    2900:	0000045b          	0x45b
    2904:	e508                	sd	a0,8(a0)
    2906:	0005                	c.nop	1
    2908:	2100                	fld	fs0,0(a0)
    290a:	0009                	c.nop	2
    290c:	2100                	fld	fs0,0(a0)
    290e:	1500                	addi	s0,sp,672
    2910:	0916                	slli	s2,s2,0x5
    2912:	0000                	unimp
    2914:	2322                	fld	ft6,8(sp)
    2916:	05000007          	0x5000007
    291a:	2414                	fld	fa3,8(s0)
    291c:	0921                	addi	s2,s2,8
    291e:	0000                	unimp
    2920:	d222                	sw	s0,36(sp)
    2922:	0009                	c.nop	2
    2924:	0500                	addi	s0,sp,640
    2926:	1515                	addi	a0,a0,-27
    2928:	0000002b          	0x2b
    292c:	0944080f          	0x944080f
    2930:	0000                	unimp
    2932:	00002b13          	slti	s6,zero,0
    2936:	5800                	lw	s0,48(s0)
    2938:	0009                	c.nop	2
    293a:	1400                	addi	s0,sp,544
    293c:	0958                	addi	a4,sp,148
    293e:	0000                	unimp
    2940:	5814                	lw	a3,48(s0)
    2942:	0009                	c.nop	2
    2944:	0000                	unimp
    2946:	095e080f          	0x95e080f
    294a:	0000                	unimp
    294c:	08dd2223          	sw	a3,132(s10) # 61c6a <__BSS_END__+0x4f43a>
    2950:	0000                	unimp
    2952:	6706                	ld	a4,64(sp)
    2954:	a90e                	fsd	ft3,144(sp)
    2956:	0005                	c.nop	1
    2958:	2200                	fld	fs0,0(a2)
    295a:	0830                	addi	a2,sp,24
    295c:	0000                	unimp
    295e:	770f1007          	0x770f1007
    2962:	0009                	c.nop	2
    2964:	0f00                	addi	s0,sp,912
    2966:	a908                	fsd	fa0,16(a0)
    2968:	0005                	c.nop	1
    296a:	2200                	fld	fs0,0(a2)
    296c:	08e0                	addi	s0,sp,92
    296e:	0000                	unimp
    2970:	a90efc07          	0xa90efc07
    2974:	0005                	c.nop	1
    2976:	2200                	fld	fs0,0(a2)
    2978:	08b0                	addi	a2,sp,88
    297a:	0000                	unimp
    297c:	2b0cfd07          	0x2b0cfd07
    2980:	0000                	unimp
    2982:	2200                	fld	fs0,0(a2)
    2984:	0a76                	slli	s4,s4,0x1d
    2986:	0000                	unimp
    2988:	2b14fd07          	0x2b14fd07
    298c:	0000                	unimp
    298e:	2200                	fld	fs0,0(a2)
    2990:	00000b53          	fadd.s	fs6,ft0,ft0,rne
    2994:	2b1cfd07          	0x2b1cfd07
    2998:	0000                	unimp
    299a:	2200                	fld	fs0,0(a2)
    299c:	0870                	addi	a2,sp,28
    299e:	0000                	unimp
    29a0:	2b0cff07          	0x2b0cff07
    29a4:	0000                	unimp
    29a6:	2200                	fld	fs0,0(a2)
    29a8:	00000903          	lb	s2,0(zero) # 0 <register_fini-0x100b0>
    29ac:	9a08                	0x9a08
    29ae:	1d16                	slli	s10,s10,0x25
    29b0:	0000                	unimp
    29b2:	2200                	fld	fs0,0(a2)
    29b4:	05b5                	addi	a1,a1,13
    29b6:	0000                	unimp
    29b8:	9b08                	0x9b08
    29ba:	2b15                	addiw	s6,s6,5
    29bc:	0000                	unimp
    29be:	0800                	addi	s0,sp,16
    29c0:	05a9                	addi	a1,a1,10
    29c2:	0000                	unimp
    29c4:	09e1                	addi	s3,s3,24
    29c6:	0000                	unimp
    29c8:	2409                	addiw	s0,s0,2
    29ca:	0000                	unimp
    29cc:	0100                	addi	s0,sp,128
    29ce:	2200                	fld	fs0,0(a2)
    29d0:	0668                	addi	a0,sp,780
    29d2:	0000                	unimp
    29d4:	9e08                	0x9e08
    29d6:	0009d117          	auipc	sp,0x9d
    29da:	0500                	addi	s0,sp,640
    29dc:	07d1                	addi	a5,a5,20
    29de:	0000                	unimp
    29e0:	2a09                	addiw	s4,s4,2
    29e2:	5c16                	lw	s8,100(sp)
    29e4:	0000                	unimp
    29e6:	0500                	addi	s0,sp,640
    29e8:	09c0                	addi	s0,sp,212
    29ea:	0000                	unimp
    29ec:	2f09                	addiw	t5,t5,2
    29ee:	0515                	addi	a0,a0,5
    29f0:	000a                	c.slli	zero,0x2
    29f2:	0f00                	addi	s0,sp,912
    29f4:	0b08                	addi	a0,sp,400
    29f6:	000a                	c.slli	zero,0x2
    29f8:	1300                	addi	s0,sp,416
    29fa:	09ed                	addi	s3,s3,27
    29fc:	0000                	unimp
    29fe:	0a1a                	slli	s4,s4,0x6
    2a00:	0000                	unimp
    2a02:	5814                	lw	a3,48(s0)
    2a04:	0009                	c.nop	2
    2a06:	0000                	unimp
    2a08:	8105                	srli	a0,a0,0x1
    2a0a:	0900000b          	0x900000b
    2a0e:	0f36                	slli	t5,t5,0xd
    2a10:	093e                	slli	s2,s2,0xf
    2a12:	0000                	unimp
    2a14:	8a22                	mv	s4,s0
    2a16:	0005                	c.nop	1
    2a18:	0900                	addi	s0,sp,144
    2a1a:	09f912bb          	0x9f912bb
    2a1e:	0000                	unimp
    2a20:	a722                	fsd	fs0,392(sp)
    2a22:	000a                	c.slli	zero,0x2
    2a24:	0900                	addi	s0,sp,144
    2a26:	10be                	slli	ra,ra,0x2f
    2a28:	0a1a                	slli	s4,s4,0x6
    2a2a:	0000                	unimp
    2a2c:	a424                	fsd	fs1,72(s0)
    2a2e:	07000007          	0x7000007
    2a32:	5c04                	lw	s1,56(s0)
    2a34:	0000                	unimp
    2a36:	0a00                	addi	s0,sp,272
    2a38:	0618                	addi	a4,sp,768
    2a3a:	00000a7b          	0xa7b
    2a3e:	6025                	c.lui	zero,0x9
    2a40:	0009                	c.nop	2
    2a42:	0000                	unimp
    2a44:	5025                	c.li	zero,-23
    2a46:	0008                	0x8
    2a48:	0100                	addi	s0,sp,128
    2a4a:	2525                	addiw	a0,a0,9
    2a4c:	0008                	0x8
    2a4e:	0200                	addi	s0,sp,256
    2a50:	4525                	li	a0,9
    2a52:	0008                	0x8
    2a54:	0300                	addi	s0,sp,384
    2a56:	5725                	li	a4,-23
    2a58:	0009                	c.nop	2
    2a5a:	0400                	addi	s0,sp,512
    2a5c:	5a25                	li	s4,-23
    2a5e:	0500000b          	0x500000b
    2a62:	4925                	li	s2,9
    2a64:	0600000b          	0x600000b
    2a68:	2200                	fld	fs0,0(a2)
    2a6a:	0644                	addi	s1,sp,772
    2a6c:	0000                	unimp
    2a6e:	210a                	fld	ft2,128(sp)
    2a70:	3e1c                	fld	fa5,56(a2)
    2a72:	000a                	c.slli	zero,0x2
    2a74:	2400                	fld	fs0,8(s0)
    2a76:	00000897          	auipc	a7,0x0
    2a7a:	005c0407          	0x5c0407
    2a7e:	0000                	unimp
    2a80:	230a                	fld	ft6,128(sp)
    2a82:	ac06                	fsd	ft1,24(sp)
    2a84:	000a                	c.slli	zero,0x2
    2a86:	2500                	fld	fs0,8(a0)
    2a88:	09b6                	slli	s3,s3,0xd
    2a8a:	0000                	unimp
    2a8c:	2500                	fld	fs0,8(a0)
    2a8e:	0976                	slli	s2,s2,0x1d
    2a90:	0000                	unimp
    2a92:	2501                	sext.w	a0,a0
    2a94:	0a8a                	slli	s5,s5,0x2
    2a96:	0000                	unimp
    2a98:	0002                	c.slli64	zero
    2a9a:	5722                	lw	a4,40(sp)
    2a9c:	0a000007          	0xa000007
    2aa0:	1e28                	addi	a0,sp,824
    2aa2:	00000a87          	0xa87
    2aa6:	f024                	sd	s1,96(s0)
    2aa8:	0005                	c.nop	1
    2aaa:	0700                	addi	s0,sp,896
    2aac:	5c04                	lw	s1,56(s0)
    2aae:	0000                	unimp
    2ab0:	0a00                	addi	s0,sp,272
    2ab2:	0ad7062b          	0xad7062b
    2ab6:	0000                	unimp
    2ab8:	6e25                	lui	t3,0x9
    2aba:	000a                	c.slli	zero,0x2
    2abc:	0000                	unimp
    2abe:	5c25                	li	s8,-23
    2ac0:	000a                	c.slli	zero,0x2
    2ac2:	0100                	addi	s0,sp,128
    2ac4:	2200                	fld	fs0,0(a2)
    2ac6:	0000070b          	0x70b
    2aca:	2f0a                	fld	ft10,128(sp)
    2acc:	b82a                	fsd	fa0,48(sp)
    2ace:	000a                	c.slli	zero,0x2
    2ad0:	2200                	fld	fs0,0(a2)
    2ad2:	0861                	addi	a6,a6,24
    2ad4:	0000                	unimp
    2ad6:	211a290b          	0x211a290b
    2ada:	0009                	c.nop	2
    2adc:	2200                	fld	fs0,0(a2)
    2ade:	06a4                	addi	s1,sp,840
    2ae0:	0000                	unimp
    2ae2:	211a380b          	0x211a380b
    2ae6:	0009                	c.nop	2
    2ae8:	0500                	addi	s0,sp,640
    2aea:	01fc                	addi	a5,sp,204
    2aec:	0000                	unimp
    2aee:	7b0c                	ld	a1,48(a4)
    2af0:	4716                	lw	a4,68(sp)
    2af2:	0000                	unimp
    2af4:	1500                	addi	s0,sp,672
    2af6:	00000afb          	0xafb
    2afa:	1002                	c.slli	zero,0x20
    2afc:	df05                	beqz	a4,2a34 <register_fini-0xd67c>
    2afe:	0001                	nop
    2b00:	0200                	addi	s0,sp,256
    2b02:	0710                	addi	a2,sp,896
    2b04:	0000                	unimp
    2b06:	0000                	unimp
    2b08:	0402                	c.slli64	s0
    2b0a:	c604                	sw	s1,8(a2)
    2b0c:	0008                	0x8
    2b0e:	0200                	addi	s0,sp,256
    2b10:	0308                	addi	a0,sp,384
    2b12:	08be                	slli	a7,a7,0xf
    2b14:	0000                	unimp
    2b16:	0802                	c.slli64	a6
    2b18:	3d04                	fld	fs1,56(a0)
    2b1a:	0006                	c.slli	zero,0x1
    2b1c:	0200                	addi	s0,sp,256
    2b1e:	0310                	addi	a2,sp,384
    2b20:	000005bf 30032002 	0x30032002000005bf
    2b28:	0006                	c.slli	zero,0x1
    2b2a:	0800                	addi	s0,sp,16
    2b2c:	00000b07          	0xb07
    2b30:	0b4d                	addi	s6,s6,19
    2b32:	0000                	unimp
    2b34:	2409                	addiw	s0,s0,2
    2b36:	0000                	unimp
    2b38:	ff00                	sd	s0,56(a4)
    2b3a:	1500                	addi	s0,sp,672
    2b3c:	0b3d                	addi	s6,s6,15
    2b3e:	0000                	unimp
    2b40:	fc20                	sd	s0,120(s0)
    2b42:	0006                	c.slli	zero,0x1
    2b44:	0c00                	addi	s0,sp,528
    2b46:	01fc                	addi	a5,sp,204
    2b48:	4d16                	lw	s10,68(sp)
    2b4a:	2000000b          	0x2000000b
    2b4e:	0204                	addi	s1,sp,256
    2b50:	0000                	unimp
    2b52:	020c                	addi	a1,sp,256
    2b54:	1602                	slli	a2,a2,0x20
    2b56:	0b4d                	addi	s6,s6,19
    2b58:	0000                	unimp
    2b5a:	5f26                	lw	t5,104(sp)
    2b5c:	0d00000b          	0xd00000b
    2b60:	02b2                	slli	t0,t0,0xc
    2b62:	8003090f          	0x8003090f
    2b66:	00000117          	auipc	sp,0x0
    2b6a:	0000                	unimp
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	1101                	addi	sp,sp,-32
   2:	2501                	sext.w	a0,a0
   4:	130e                	slli	t1,t1,0x23
   6:	1b0e030b          	0x1b0e030b
   a:	110e                	slli	sp,sp,0x23
   c:	1201                	addi	tp,tp,-32
   e:	00171007          	0x171007
  12:	0200                	addi	s0,sp,256
  14:	0024                	addi	s1,sp,8
  16:	0b3e0b0b          	0xb3e0b0b
  1a:	00000e03          	lb	t3,0(zero) # 0 <register_fini-0x100b0>
  1e:	0b002403          	lw	s0,176(zero) # b0 <register_fini-0x10000>
  22:	030b3e0b          	0x30b3e0b
  26:	0008                	0x8
  28:	0400                	addi	s0,sp,512
  2a:	0016                	c.slli	zero,0x5
  2c:	0b3a0e03          	lb	t3,179(s4) # ab76b <__BSS_END__+0x98f3b>
  30:	0b39053b          	0xb39053b
  34:	1349                	addi	t1,t1,-14
  36:	0000                	unimp
  38:	2605                	addiw	a2,a2,1
  3a:	4900                	lw	s0,16(a0)
  3c:	06000013          	li	zero,96
  40:	0101                	addi	sp,sp,0
  42:	1349                	addi	t1,t1,-14
  44:	1301                	addi	t1,t1,-32
  46:	0000                	unimp
  48:	49002107          	flw	ft2,1168(zero) # 490 <register_fini-0xfc20>
  4c:	000b2f13          	slti	t5,s6,0
  50:	0800                	addi	s0,sp,16
  52:	0034                	addi	a3,sp,8
  54:	0b3a0e03          	lb	t3,179(s4)
  58:	0b390b3b          	0xb390b3b
  5c:	1349                	addi	t1,t1,-14
  5e:	193c193f 16090000 	0x16090000193c193f
  66:	0300                	addi	s0,sp,384
  68:	3a0e                	fld	fs4,224(sp)
  6a:	390b3b0b          	0x390b3b0b
  6e:	0013490b          	0x13490b
  72:	0a00                	addi	s0,sp,272
  74:	0b0b0113          	addi	sp,s6,176 # 8775a <__BSS_END__+0x74f2a>
  78:	0b3a                	slli	s6,s6,0xe
  7a:	0b390b3b          	0xb390b3b
  7e:	1301                	addi	t1,t1,-32
  80:	0000                	unimp
  82:	03000d0b          	0x3000d0b
  86:	3a0e                	fld	fs4,224(sp)
  88:	390b3b0b          	0x390b3b0b
  8c:	0b13490b          	0xb13490b
  90:	0c0b0d0b          	0xc0b0d0b
  94:	000b380b          	0xb380b
  98:	0c00                	addi	s0,sp,528
  9a:	000d                	c.nop	3
  9c:	0b3a0803          	lb	a6,179(s4)
  a0:	0b390b3b          	0xb390b3b
  a4:	1349                	addi	t1,t1,-14
  a6:	0b0d0b0b          	0xb0d0b0b
  aa:	0b0c                	addi	a1,sp,400
  ac:	0b38                	addi	a4,sp,408
  ae:	0000                	unimp
  b0:	170d                	addi	a4,a4,-29
  b2:	0301                	addi	t1,t1,0
  b4:	0b0e                	slli	s6,s6,0x3
  b6:	3b0b3a0b          	0x3b0b3a0b
  ba:	010b390b          	0x10b390b
  be:	0e000013          	li	zero,224
  c2:	000d                	c.nop	3
  c4:	0b3a0803          	lb	a6,179(s4)
  c8:	0b390b3b          	0xb390b3b
  cc:	1349                	addi	t1,t1,-14
  ce:	0000                	unimp
  d0:	03000d0f          	0x3000d0f
  d4:	3a0e                	fld	fs4,224(sp)
  d6:	390b3b0b          	0x390b3b0b
  da:	0013490b          	0x13490b
  de:	1000                	addi	s0,sp,32
  e0:	012e                	slli	sp,sp,0xb
  e2:	0e03193f 0b3b0b3a 	0xb3b0b3a0e03193f
  ea:	0b39                	addi	s6,s6,14
  ec:	13491927          	0x13491927
  f0:	0111                	addi	sp,sp,4
  f2:	0712                	slli	a4,a4,0x4
  f4:	1840                	addi	s0,sp,52
  f6:	4296                	lw	t0,68(sp)
  f8:	0119                	addi	sp,sp,6
  fa:	11000013          	li	zero,272
  fe:	0005                	c.nop	1
 100:	0b3a0803          	lb	a6,179(s4)
 104:	0b390b3b          	0xb390b3b
 108:	1349                	addi	t1,t1,-14
 10a:	1702                	slli	a4,a4,0x20
 10c:	0000                	unimp
 10e:	3412                	fld	fs0,288(sp)
 110:	0300                	addi	s0,sp,384
 112:	3a0e                	fld	fs4,224(sp)
 114:	390b3b0b          	0x390b3b0b
 118:	0213490b          	0x213490b
 11c:	13000017          	auipc	zero,0x13000
 120:	0034                	addi	a3,sp,8
 122:	0b3a0e03          	lb	t3,179(s4)
 126:	0b390b3b          	0xb390b3b
 12a:	1349                	addi	t1,t1,-14
 12c:	0b1c                	addi	a5,sp,400
 12e:	0000                	unimp
 130:	3414                	fld	fa3,40(s0)
 132:	0300                	addi	s0,sp,384
 134:	3a08                	fld	fa0,48(a2)
 136:	390b3b0b          	0x390b3b0b
 13a:	0013490b          	0x13490b
 13e:	1500                	addi	s0,sp,672
 140:	0034                	addi	a3,sp,8
 142:	0b3a0803          	lb	a6,179(s4)
 146:	0b390b3b          	0xb390b3b
 14a:	1349                	addi	t1,t1,-14
 14c:	1702                	slli	a4,a4,0x20
 14e:	0000                	unimp
 150:	0b16                	slli	s6,s6,0x5
 152:	5501                	li	a0,-32
 154:	00130117          	auipc	sp,0x130
 158:	1700                	addi	s0,sp,928
 15a:	0034                	addi	a3,sp,8
 15c:	0b3a0e03          	lb	t3,179(s4)
 160:	0b390b3b          	0xb390b3b
 164:	1349                	addi	t1,t1,-14
 166:	0000                	unimp
 168:	0a18                	addi	a4,sp,272
 16a:	0300                	addi	s0,sp,384
 16c:	3a0e                	fld	fs4,224(sp)
 16e:	390b3b0b          	0x390b3b0b
 172:	0001110b          	0x1110b
 176:	1900                	addi	s0,sp,176
 178:	1755010b          	0x1755010b
 17c:	0000                	unimp
 17e:	0b1a                	slli	s6,s6,0x6
 180:	0001                	nop
 182:	0000                	unimp
 184:	1101                	addi	sp,sp,-32
 186:	2501                	sext.w	a0,a0
 188:	130e                	slli	t1,t1,0x23
 18a:	1b0e030b          	0x1b0e030b
 18e:	110e                	slli	sp,sp,0x23
 190:	1201                	addi	tp,tp,-32
 192:	00171007          	0x171007
 196:	0200                	addi	s0,sp,256
 198:	0024                	addi	s1,sp,8
 19a:	0b3e0b0b          	0xb3e0b0b
 19e:	00000e03          	lb	t3,0(zero) # 0 <register_fini-0x100b0>
 1a2:	0b002403          	lw	s0,176(zero) # b0 <register_fini-0x10000>
 1a6:	030b3e0b          	0x30b3e0b
 1aa:	0008                	0x8
 1ac:	0400                	addi	s0,sp,512
 1ae:	0016                	c.slli	zero,0x5
 1b0:	0b3a0e03          	lb	t3,179(s4)
 1b4:	0b39053b          	0xb39053b
 1b8:	1349                	addi	t1,t1,-14
 1ba:	0000                	unimp
 1bc:	2605                	addiw	a2,a2,1
 1be:	4900                	lw	s0,16(a0)
 1c0:	06000013          	li	zero,96
 1c4:	0101                	addi	sp,sp,0
 1c6:	1349                	addi	t1,t1,-14
 1c8:	1301                	addi	t1,t1,-32
 1ca:	0000                	unimp
 1cc:	49002107          	flw	ft2,1168(zero) # 490 <register_fini-0xfc20>
 1d0:	000b2f13          	slti	t5,s6,0
 1d4:	0800                	addi	s0,sp,16
 1d6:	0034                	addi	a3,sp,8
 1d8:	0b3a0e03          	lb	t3,179(s4)
 1dc:	0b390b3b          	0xb390b3b
 1e0:	1349                	addi	t1,t1,-14
 1e2:	193c193f 16090000 	0x16090000193c193f
 1ea:	0300                	addi	s0,sp,384
 1ec:	3a0e                	fld	fs4,224(sp)
 1ee:	390b3b0b          	0x390b3b0b
 1f2:	0013490b          	0x13490b
 1f6:	0a00                	addi	s0,sp,272
 1f8:	0b0b0113          	addi	sp,s6,176
 1fc:	0b3a                	slli	s6,s6,0xe
 1fe:	0b390b3b          	0xb390b3b
 202:	1301                	addi	t1,t1,-32
 204:	0000                	unimp
 206:	03000d0b          	0x3000d0b
 20a:	3a0e                	fld	fs4,224(sp)
 20c:	390b3b0b          	0x390b3b0b
 210:	0b13490b          	0xb13490b
 214:	0c0b0d0b          	0xc0b0d0b
 218:	000b380b          	0xb380b
 21c:	0c00                	addi	s0,sp,528
 21e:	000d                	c.nop	3
 220:	0b3a0803          	lb	a6,179(s4)
 224:	0b390b3b          	0xb390b3b
 228:	1349                	addi	t1,t1,-14
 22a:	0b0d0b0b          	0xb0d0b0b
 22e:	0b0c                	addi	a1,sp,400
 230:	0b38                	addi	a4,sp,408
 232:	0000                	unimp
 234:	170d                	addi	a4,a4,-29
 236:	0301                	addi	t1,t1,0
 238:	0b0e                	slli	s6,s6,0x3
 23a:	3b0b3a0b          	0x3b0b3a0b
 23e:	010b390b          	0x10b390b
 242:	0e000013          	li	zero,224
 246:	000d                	c.nop	3
 248:	0b3a0803          	lb	a6,179(s4)
 24c:	0b390b3b          	0xb390b3b
 250:	1349                	addi	t1,t1,-14
 252:	0000                	unimp
 254:	03000d0f          	0x3000d0f
 258:	3a0e                	fld	fs4,224(sp)
 25a:	390b3b0b          	0x390b3b0b
 25e:	0013490b          	0x13490b
 262:	1000                	addi	s0,sp,32
 264:	012e                	slli	sp,sp,0xb
 266:	0e03193f 0b3b0b3a 	0xb3b0b3a0e03193f
 26e:	0b39                	addi	s6,s6,14
 270:	13491927          	0x13491927
 274:	0111                	addi	sp,sp,4
 276:	0712                	slli	a4,a4,0x4
 278:	1840                	addi	s0,sp,52
 27a:	4296                	lw	t0,68(sp)
 27c:	0119                	addi	sp,sp,6
 27e:	11000013          	li	zero,272
 282:	0005                	c.nop	1
 284:	0b3a0803          	lb	a6,179(s4)
 288:	0b390b3b          	0xb390b3b
 28c:	1349                	addi	t1,t1,-14
 28e:	1702                	slli	a4,a4,0x20
 290:	0000                	unimp
 292:	3412                	fld	fs0,288(sp)
 294:	0300                	addi	s0,sp,384
 296:	3a0e                	fld	fs4,224(sp)
 298:	390b3b0b          	0x390b3b0b
 29c:	0213490b          	0x213490b
 2a0:	13000017          	auipc	zero,0x13000
 2a4:	0034                	addi	a3,sp,8
 2a6:	0b3a0e03          	lb	t3,179(s4)
 2aa:	0b390b3b          	0xb390b3b
 2ae:	1349                	addi	t1,t1,-14
 2b0:	0b1c                	addi	a5,sp,400
 2b2:	0000                	unimp
 2b4:	3414                	fld	fa3,40(s0)
 2b6:	0300                	addi	s0,sp,384
 2b8:	3a08                	fld	fa0,48(a2)
 2ba:	390b3b0b          	0x390b3b0b
 2be:	0213490b          	0x213490b
 2c2:	15000017          	auipc	zero,0x15000
 2c6:	1755010b          	0x1755010b
 2ca:	1301                	addi	t1,t1,-32
 2cc:	0000                	unimp
 2ce:	3416                	fld	fs0,352(sp)
 2d0:	0300                	addi	s0,sp,384
 2d2:	3a0e                	fld	fs4,224(sp)
 2d4:	390b3b0b          	0x390b3b0b
 2d8:	0013490b          	0x13490b
 2dc:	1700                	addi	s0,sp,928
 2de:	0111010b          	0x111010b
 2e2:	0712                	slli	a4,a4,0x4
 2e4:	1301                	addi	t1,t1,-32
 2e6:	0000                	unimp
 2e8:	0b18                	addi	a4,sp,400
 2ea:	5501                	li	a0,-32
 2ec:	19000017          	auipc	zero,0x19000
 2f0:	0034                	addi	a3,sp,8
 2f2:	0b3a0e03          	lb	t3,179(s4)
 2f6:	0b390b3b          	0xb390b3b
 2fa:	1349                	addi	t1,t1,-14
 2fc:	1802                	slli	a6,a6,0x20
 2fe:	0000                	unimp
 300:	0b1a                	slli	s6,s6,0x6
 302:	1101                	addi	sp,sp,-32
 304:	1201                	addi	tp,tp,-32
 306:	1b000007          	0x1b000007
 30a:	0000010b          	0x10b
 30e:	0100                	addi	s0,sp,128
 310:	0111                	addi	sp,sp,4
 312:	0e25                	addi	t3,t3,9
 314:	0e030b13          	addi	s6,t1,224
 318:	01110e1b          	addiw	t3,sp,17
 31c:	0712                	slli	a4,a4,0x4
 31e:	1710                	addi	a2,sp,928
 320:	0000                	unimp
 322:	2402                	fld	fs0,0(sp)
 324:	0b00                	addi	s0,sp,400
 326:	030b3e0b          	0x30b3e0b
 32a:	000e                	c.slli	zero,0x3
 32c:	0300                	addi	s0,sp,384
 32e:	0024                	addi	s1,sp,8
 330:	0b3e0b0b          	0xb3e0b0b
 334:	00000803          	lb	a6,0(zero) # 0 <register_fini-0x100b0>
 338:	1604                	addi	s1,sp,800
 33a:	0300                	addi	s0,sp,384
 33c:	3a0e                	fld	fs4,224(sp)
 33e:	39053b0b          	0x39053b0b
 342:	0013490b          	0x13490b
 346:	0500                	addi	s0,sp,640
 348:	0026                	c.slli	zero,0x9
 34a:	1349                	addi	t1,t1,-14
 34c:	0000                	unimp
 34e:	0106                	slli	sp,sp,0x1
 350:	4901                	li	s2,0
 352:	00130113          	addi	sp,t1,1
 356:	0700                	addi	s0,sp,896
 358:	0021                	c.nop	8
 35a:	1349                	addi	t1,t1,-14
 35c:	00000b2f          	0xb2f
 360:	3408                	fld	fa0,40(s0)
 362:	0300                	addi	s0,sp,384
 364:	3a0e                	fld	fs4,224(sp)
 366:	390b3b0b          	0x390b3b0b
 36a:	3f13490b          	0x3f13490b
 36e:	3c19                	addiw	s8,s8,-26
 370:	0019                	c.nop	6
 372:	0900                	addi	s0,sp,144
 374:	0016                	c.slli	zero,0x5
 376:	0b3a0e03          	lb	t3,179(s4)
 37a:	0b390b3b          	0xb390b3b
 37e:	1349                	addi	t1,t1,-14
 380:	0000                	unimp
 382:	130a                	slli	t1,t1,0x22
 384:	0b01                	addi	s6,s6,0
 386:	3b0b3a0b          	0x3b0b3a0b
 38a:	010b390b          	0x10b390b
 38e:	0b000013          	li	zero,176
 392:	000d                	c.nop	3
 394:	0b3a0e03          	lb	t3,179(s4)
 398:	0b390b3b          	0xb390b3b
 39c:	1349                	addi	t1,t1,-14
 39e:	0b0d0b0b          	0xb0d0b0b
 3a2:	0b0c                	addi	a1,sp,400
 3a4:	0b38                	addi	a4,sp,408
 3a6:	0000                	unimp
 3a8:	0d0c                	addi	a1,sp,656
 3aa:	0300                	addi	s0,sp,384
 3ac:	3a08                	fld	fa0,48(a2)
 3ae:	390b3b0b          	0x390b3b0b
 3b2:	0b13490b          	0xb13490b
 3b6:	0c0b0d0b          	0xc0b0d0b
 3ba:	000b380b          	0xb380b
 3be:	0d00                	addi	s0,sp,656
 3c0:	0e030117          	auipc	sp,0xe030
 3c4:	0b3a0b0b          	0xb3a0b0b
 3c8:	0b390b3b          	0xb390b3b
 3cc:	1301                	addi	t1,t1,-32
 3ce:	0000                	unimp
 3d0:	0d0e                	slli	s10,s10,0x3
 3d2:	0300                	addi	s0,sp,384
 3d4:	3a08                	fld	fa0,48(a2)
 3d6:	390b3b0b          	0x390b3b0b
 3da:	0013490b          	0x13490b
 3de:	0f00                	addi	s0,sp,912
 3e0:	000d                	c.nop	3
 3e2:	0b3a0e03          	lb	t3,179(s4)
 3e6:	0b390b3b          	0xb390b3b
 3ea:	1349                	addi	t1,t1,-14
 3ec:	0000                	unimp
 3ee:	2e10                	fld	fa2,24(a2)
 3f0:	3f01                	addiw	t5,t5,-32
 3f2:	0319                	addi	t1,t1,6
 3f4:	3a0e                	fld	fs4,224(sp)
 3f6:	390b3b0b          	0x390b3b0b
 3fa:	4919270b          	0x4919270b
 3fe:	12011113          	0x12011113
 402:	96184007          	flq	ft0,-1695(a6) # a4ffd <__BSS_END__+0x927cd>
 406:	1942                	slli	s2,s2,0x30
 408:	1301                	addi	t1,t1,-32
 40a:	0000                	unimp
 40c:	0511                	addi	a0,a0,4
 40e:	0300                	addi	s0,sp,384
 410:	3a08                	fld	fa0,48(a2)
 412:	390b3b0b          	0x390b3b0b
 416:	0213490b          	0x213490b
 41a:	12000017          	auipc	zero,0x12000
 41e:	0034                	addi	a3,sp,8
 420:	0b3a0e03          	lb	t3,179(s4)
 424:	0b390b3b          	0xb390b3b
 428:	1349                	addi	t1,t1,-14
 42a:	1702                	slli	a4,a4,0x20
 42c:	0000                	unimp
 42e:	03003413          	sltiu	s0,zero,48
 432:	3a0e                	fld	fs4,224(sp)
 434:	390b3b0b          	0x390b3b0b
 438:	1c13490b          	0x1c13490b
 43c:	1400000b          	0x1400000b
 440:	0034                	addi	a3,sp,8
 442:	0b3a0803          	lb	a6,179(s4)
 446:	0b390b3b          	0xb390b3b
 44a:	1349                	addi	t1,t1,-14
 44c:	0000                	unimp
 44e:	3415                	addiw	s0,s0,-27
 450:	0300                	addi	s0,sp,384
 452:	3a08                	fld	fa0,48(a2)
 454:	390b3b0b          	0x390b3b0b
 458:	0213490b          	0x213490b
 45c:	16000017          	auipc	zero,0x16000
 460:	1755010b          	0x1755010b
 464:	1301                	addi	t1,t1,-32
 466:	0000                	unimp
 468:	03003417          	auipc	s0,0x3003
 46c:	3a0e                	fld	fs4,224(sp)
 46e:	390b3b0b          	0x390b3b0b
 472:	0013490b          	0x13490b
 476:	1800                	addi	s0,sp,48
 478:	000a                	c.slli	zero,0x2
 47a:	0b3a0e03          	lb	t3,179(s4)
 47e:	0b390b3b          	0xb390b3b
 482:	0111                	addi	sp,sp,4
 484:	0000                	unimp
 486:	0b19                	addi	s6,s6,6
 488:	5501                	li	a0,-32
 48a:	1a000017          	auipc	zero,0x1a000
 48e:	0000010b          	0x10b
 492:	0100                	addi	s0,sp,128
 494:	0111                	addi	sp,sp,4
 496:	0e25                	addi	t3,t3,9
 498:	0e030b13          	addi	s6,t1,224
 49c:	01110e1b          	addiw	t3,sp,17
 4a0:	0712                	slli	a4,a4,0x4
 4a2:	1710                	addi	a2,sp,928
 4a4:	0000                	unimp
 4a6:	2402                	fld	fs0,0(sp)
 4a8:	0b00                	addi	s0,sp,400
 4aa:	030b3e0b          	0x30b3e0b
 4ae:	000e                	c.slli	zero,0x3
 4b0:	0300                	addi	s0,sp,384
 4b2:	0016                	c.slli	zero,0x5
 4b4:	0b3a0e03          	lb	t3,179(s4)
 4b8:	0b39053b          	0xb39053b
 4bc:	1349                	addi	t1,t1,-14
 4be:	0000                	unimp
 4c0:	2404                	fld	fs1,8(s0)
 4c2:	0b00                	addi	s0,sp,400
 4c4:	030b3e0b          	0x30b3e0b
 4c8:	0008                	0x8
 4ca:	0500                	addi	s0,sp,640
 4cc:	0026                	c.slli	zero,0x9
 4ce:	1349                	addi	t1,t1,-14
 4d0:	0000                	unimp
 4d2:	0106                	slli	sp,sp,0x1
 4d4:	4901                	li	s2,0
 4d6:	00130113          	addi	sp,t1,1
 4da:	0700                	addi	s0,sp,896
 4dc:	0021                	c.nop	8
 4de:	1349                	addi	t1,t1,-14
 4e0:	00000b2f          	0xb2f
 4e4:	3408                	fld	fa0,40(s0)
 4e6:	0300                	addi	s0,sp,384
 4e8:	3a0e                	fld	fs4,224(sp)
 4ea:	390b3b0b          	0x390b3b0b
 4ee:	3f13490b          	0x3f13490b
 4f2:	3c19                	addiw	s8,s8,-26
 4f4:	0019                	c.nop	6
 4f6:	0900                	addi	s0,sp,144
 4f8:	0016                	c.slli	zero,0x5
 4fa:	0b3a0e03          	lb	t3,179(s4)
 4fe:	0b390b3b          	0xb390b3b
 502:	1349                	addi	t1,t1,-14
 504:	0000                	unimp
 506:	130a                	slli	t1,t1,0x22
 508:	0b01                	addi	s6,s6,0
 50a:	3b0b3a0b          	0x3b0b3a0b
 50e:	010b390b          	0x10b390b
 512:	0b000013          	li	zero,176
 516:	000d                	c.nop	3
 518:	0b3a0e03          	lb	t3,179(s4)
 51c:	0b390b3b          	0xb390b3b
 520:	1349                	addi	t1,t1,-14
 522:	0b0d0b0b          	0xb0d0b0b
 526:	0b0c                	addi	a1,sp,400
 528:	0b38                	addi	a4,sp,408
 52a:	0000                	unimp
 52c:	0d0c                	addi	a1,sp,656
 52e:	0300                	addi	s0,sp,384
 530:	3a08                	fld	fa0,48(a2)
 532:	390b3b0b          	0x390b3b0b
 536:	0b13490b          	0xb13490b
 53a:	0c0b0d0b          	0xc0b0d0b
 53e:	000b380b          	0xb380b
 542:	0d00                	addi	s0,sp,656
 544:	0e030117          	auipc	sp,0xe030
 548:	0b3a0b0b          	0xb3a0b0b
 54c:	0b390b3b          	0xb390b3b
 550:	1301                	addi	t1,t1,-32
 552:	0000                	unimp
 554:	0d0e                	slli	s10,s10,0x3
 556:	0300                	addi	s0,sp,384
 558:	3a08                	fld	fa0,48(a2)
 55a:	390b3b0b          	0x390b3b0b
 55e:	0013490b          	0x13490b
 562:	0f00                	addi	s0,sp,912
 564:	000d                	c.nop	3
 566:	0b3a0e03          	lb	t3,179(s4)
 56a:	0b390b3b          	0xb390b3b
 56e:	1349                	addi	t1,t1,-14
 570:	0000                	unimp
 572:	2e10                	fld	fa2,24(a2)
 574:	3f01                	addiw	t5,t5,-32
 576:	0319                	addi	t1,t1,6
 578:	3a0e                	fld	fs4,224(sp)
 57a:	390b3b0b          	0x390b3b0b
 57e:	4919270b          	0x4919270b
 582:	12011113          	0x12011113
 586:	96184007          	flq	ft0,-1695(a6)
 58a:	1942                	slli	s2,s2,0x30
 58c:	1301                	addi	t1,t1,-32
 58e:	0000                	unimp
 590:	0511                	addi	a0,a0,4
 592:	0300                	addi	s0,sp,384
 594:	3a08                	fld	fa0,48(a2)
 596:	390b3b0b          	0x390b3b0b
 59a:	0213490b          	0x213490b
 59e:	12000017          	auipc	zero,0x12000
 5a2:	0034                	addi	a3,sp,8
 5a4:	0b3a0803          	lb	a6,179(s4)
 5a8:	0b390b3b          	0xb390b3b
 5ac:	1349                	addi	t1,t1,-14
 5ae:	0000                	unimp
 5b0:	03003413          	sltiu	s0,zero,48
 5b4:	3a08                	fld	fa0,48(a2)
 5b6:	390b3b0b          	0x390b3b0b
 5ba:	0213490b          	0x213490b
 5be:	14000017          	auipc	zero,0x14000
 5c2:	1755010b          	0x1755010b
 5c6:	1301                	addi	t1,t1,-32
 5c8:	0000                	unimp
 5ca:	0a15                	addi	s4,s4,5
 5cc:	0300                	addi	s0,sp,384
 5ce:	3a0e                	fld	fs4,224(sp)
 5d0:	390b3b0b          	0x390b3b0b
 5d4:	1600000b          	0x1600000b
 5d8:	0111010b          	0x111010b
 5dc:	0712                	slli	a4,a4,0x4
 5de:	0000                	unimp
 5e0:	03003417          	auipc	s0,0x3003
 5e4:	3a0e                	fld	fs4,224(sp)
 5e6:	390b3b0b          	0x390b3b0b
 5ea:	0213490b          	0x213490b
 5ee:	18000017          	auipc	zero,0x18000
 5f2:	0111010b          	0x111010b
 5f6:	0712                	slli	a4,a4,0x4
 5f8:	1301                	addi	t1,t1,-32
 5fa:	0000                	unimp
 5fc:	0b19                	addi	s6,s6,6
 5fe:	0001                	nop
 600:	1a00                	addi	s0,sp,304
 602:	0034                	addi	a3,sp,8
 604:	0b3a0e03          	lb	t3,179(s4)
 608:	0b390b3b          	0xb390b3b
 60c:	1349                	addi	t1,t1,-14
 60e:	0000                	unimp
 610:	55010b1b          	addiw	s6,sp,1360
 614:	00000017          	auipc	zero,0x0
 618:	1101                	addi	sp,sp,-32
 61a:	2501                	sext.w	a0,a0
 61c:	130e                	slli	t1,t1,0x23
 61e:	1b0e030b          	0x1b0e030b
 622:	110e                	slli	sp,sp,0x23
 624:	1201                	addi	tp,tp,-32
 626:	00171007          	0x171007
 62a:	0200                	addi	s0,sp,256
 62c:	0024                	addi	s1,sp,8
 62e:	0b3e0b0b          	0xb3e0b0b
 632:	00000e03          	lb	t3,0(zero) # 0 <register_fini-0x100b0>
 636:	0b002403          	lw	s0,176(zero) # b0 <register_fini-0x10000>
 63a:	030b3e0b          	0x30b3e0b
 63e:	0008                	0x8
 640:	0400                	addi	s0,sp,512
 642:	0016                	c.slli	zero,0x5
 644:	0b3a0e03          	lb	t3,179(s4)
 648:	0b39053b          	0xb39053b
 64c:	1349                	addi	t1,t1,-14
 64e:	0000                	unimp
 650:	2605                	addiw	a2,a2,1
 652:	4900                	lw	s0,16(a0)
 654:	06000013          	li	zero,96
 658:	0101                	addi	sp,sp,0
 65a:	1349                	addi	t1,t1,-14
 65c:	1301                	addi	t1,t1,-32
 65e:	0000                	unimp
 660:	49002107          	flw	ft2,1168(zero) # 490 <register_fini-0xfc20>
 664:	000b2f13          	slti	t5,s6,0
 668:	0800                	addi	s0,sp,16
 66a:	0034                	addi	a3,sp,8
 66c:	0b3a0e03          	lb	t3,179(s4)
 670:	0b390b3b          	0xb390b3b
 674:	1349                	addi	t1,t1,-14
 676:	193c193f 16090000 	0x16090000193c193f
 67e:	0300                	addi	s0,sp,384
 680:	3a0e                	fld	fs4,224(sp)
 682:	390b3b0b          	0x390b3b0b
 686:	0013490b          	0x13490b
 68a:	0a00                	addi	s0,sp,272
 68c:	0b0b0113          	addi	sp,s6,176
 690:	0b3a                	slli	s6,s6,0xe
 692:	0b390b3b          	0xb390b3b
 696:	1301                	addi	t1,t1,-32
 698:	0000                	unimp
 69a:	03000d0b          	0x3000d0b
 69e:	3a0e                	fld	fs4,224(sp)
 6a0:	390b3b0b          	0x390b3b0b
 6a4:	0b13490b          	0xb13490b
 6a8:	0c0b0d0b          	0xc0b0d0b
 6ac:	000b380b          	0xb380b
 6b0:	0c00                	addi	s0,sp,528
 6b2:	000d                	c.nop	3
 6b4:	0b3a0803          	lb	a6,179(s4)
 6b8:	0b390b3b          	0xb390b3b
 6bc:	1349                	addi	t1,t1,-14
 6be:	0b0d0b0b          	0xb0d0b0b
 6c2:	0b0c                	addi	a1,sp,400
 6c4:	0b38                	addi	a4,sp,408
 6c6:	0000                	unimp
 6c8:	170d                	addi	a4,a4,-29
 6ca:	0301                	addi	t1,t1,0
 6cc:	0b0e                	slli	s6,s6,0x3
 6ce:	3b0b3a0b          	0x3b0b3a0b
 6d2:	010b390b          	0x10b390b
 6d6:	0e000013          	li	zero,224
 6da:	000d                	c.nop	3
 6dc:	0b3a0803          	lb	a6,179(s4)
 6e0:	0b390b3b          	0xb390b3b
 6e4:	1349                	addi	t1,t1,-14
 6e6:	0000                	unimp
 6e8:	03000d0f          	0x3000d0f
 6ec:	3a0e                	fld	fs4,224(sp)
 6ee:	390b3b0b          	0x390b3b0b
 6f2:	0013490b          	0x13490b
 6f6:	1000                	addi	s0,sp,32
 6f8:	012e                	slli	sp,sp,0xb
 6fa:	0e03193f 0b3b0b3a 	0xb3b0b3a0e03193f
 702:	0b39                	addi	s6,s6,14
 704:	13491927          	0x13491927
 708:	0111                	addi	sp,sp,4
 70a:	0712                	slli	a4,a4,0x4
 70c:	1840                	addi	s0,sp,52
 70e:	4296                	lw	t0,68(sp)
 710:	0119                	addi	sp,sp,6
 712:	11000013          	li	zero,272
 716:	0005                	c.nop	1
 718:	0b3a0803          	lb	a6,179(s4)
 71c:	0b390b3b          	0xb390b3b
 720:	1349                	addi	t1,t1,-14
 722:	1702                	slli	a4,a4,0x20
 724:	0000                	unimp
 726:	3412                	fld	fs0,288(sp)
 728:	0300                	addi	s0,sp,384
 72a:	3a0e                	fld	fs4,224(sp)
 72c:	390b3b0b          	0x390b3b0b
 730:	0213490b          	0x213490b
 734:	13000017          	auipc	zero,0x13000
 738:	0034                	addi	a3,sp,8
 73a:	0b3a0e03          	lb	t3,179(s4)
 73e:	0b390b3b          	0xb390b3b
 742:	1349                	addi	t1,t1,-14
 744:	0b1c                	addi	a5,sp,400
 746:	0000                	unimp
 748:	3414                	fld	fa3,40(s0)
 74a:	0300                	addi	s0,sp,384
 74c:	3a08                	fld	fa0,48(a2)
 74e:	390b3b0b          	0x390b3b0b
 752:	0013490b          	0x13490b
 756:	1500                	addi	s0,sp,672
 758:	0034                	addi	a3,sp,8
 75a:	0b3a0803          	lb	a6,179(s4)
 75e:	0b390b3b          	0xb390b3b
 762:	1349                	addi	t1,t1,-14
 764:	1702                	slli	a4,a4,0x20
 766:	0000                	unimp
 768:	0b16                	slli	s6,s6,0x5
 76a:	5501                	li	a0,-32
 76c:	00130117          	auipc	sp,0x130
 770:	1700                	addi	s0,sp,928
 772:	0034                	addi	a3,sp,8
 774:	0b3a0e03          	lb	t3,179(s4)
 778:	0b390b3b          	0xb390b3b
 77c:	1349                	addi	t1,t1,-14
 77e:	0000                	unimp
 780:	0b18                	addi	a4,sp,400
 782:	1101                	addi	sp,sp,-32
 784:	1201                	addi	tp,tp,-32
 786:	00130107          	0x130107
 78a:	1900                	addi	s0,sp,176
 78c:	0111010b          	0x111010b
 790:	0712                	slli	a4,a4,0x4
 792:	0000                	unimp
 794:	0100                	addi	s0,sp,128
 796:	0111                	addi	sp,sp,4
 798:	0e25                	addi	t3,t3,9
 79a:	0e030b13          	addi	s6,t1,224
 79e:	01110e1b          	addiw	t3,sp,17
 7a2:	0712                	slli	a4,a4,0x4
 7a4:	1710                	addi	a2,sp,928
 7a6:	0000                	unimp
 7a8:	2402                	fld	fs0,0(sp)
 7aa:	0b00                	addi	s0,sp,400
 7ac:	030b3e0b          	0x30b3e0b
 7b0:	000e                	c.slli	zero,0x3
 7b2:	0300                	addi	s0,sp,384
 7b4:	0024                	addi	s1,sp,8
 7b6:	0b3e0b0b          	0xb3e0b0b
 7ba:	00000803          	lb	a6,0(zero) # 0 <register_fini-0x100b0>
 7be:	1604                	addi	s1,sp,800
 7c0:	0300                	addi	s0,sp,384
 7c2:	3a0e                	fld	fs4,224(sp)
 7c4:	39053b0b          	0x39053b0b
 7c8:	0013490b          	0x13490b
 7cc:	0500                	addi	s0,sp,640
 7ce:	0026                	c.slli	zero,0x9
 7d0:	1349                	addi	t1,t1,-14
 7d2:	0000                	unimp
 7d4:	0106                	slli	sp,sp,0x1
 7d6:	4901                	li	s2,0
 7d8:	00130113          	addi	sp,t1,1
 7dc:	0700                	addi	s0,sp,896
 7de:	0021                	c.nop	8
 7e0:	1349                	addi	t1,t1,-14
 7e2:	00000b2f          	0xb2f
 7e6:	3408                	fld	fa0,40(s0)
 7e8:	0300                	addi	s0,sp,384
 7ea:	3a0e                	fld	fs4,224(sp)
 7ec:	390b3b0b          	0x390b3b0b
 7f0:	3f13490b          	0x3f13490b
 7f4:	3c19                	addiw	s8,s8,-26
 7f6:	0019                	c.nop	6
 7f8:	0900                	addi	s0,sp,144
 7fa:	0016                	c.slli	zero,0x5
 7fc:	0b3a0e03          	lb	t3,179(s4)
 800:	0b390b3b          	0xb390b3b
 804:	1349                	addi	t1,t1,-14
 806:	0000                	unimp
 808:	130a                	slli	t1,t1,0x22
 80a:	0b01                	addi	s6,s6,0
 80c:	3b0b3a0b          	0x3b0b3a0b
 810:	010b390b          	0x10b390b
 814:	0b000013          	li	zero,176
 818:	000d                	c.nop	3
 81a:	0b3a0e03          	lb	t3,179(s4)
 81e:	0b390b3b          	0xb390b3b
 822:	1349                	addi	t1,t1,-14
 824:	0b0d0b0b          	0xb0d0b0b
 828:	0b0c                	addi	a1,sp,400
 82a:	0b38                	addi	a4,sp,408
 82c:	0000                	unimp
 82e:	0d0c                	addi	a1,sp,656
 830:	0300                	addi	s0,sp,384
 832:	3a08                	fld	fa0,48(a2)
 834:	390b3b0b          	0x390b3b0b
 838:	0b13490b          	0xb13490b
 83c:	0c0b0d0b          	0xc0b0d0b
 840:	000b380b          	0xb380b
 844:	0d00                	addi	s0,sp,656
 846:	0e030117          	auipc	sp,0xe030
 84a:	0b3a0b0b          	0xb3a0b0b
 84e:	0b390b3b          	0xb390b3b
 852:	1301                	addi	t1,t1,-32
 854:	0000                	unimp
 856:	0d0e                	slli	s10,s10,0x3
 858:	0300                	addi	s0,sp,384
 85a:	3a08                	fld	fa0,48(a2)
 85c:	390b3b0b          	0x390b3b0b
 860:	0013490b          	0x13490b
 864:	0f00                	addi	s0,sp,912
 866:	000d                	c.nop	3
 868:	0b3a0e03          	lb	t3,179(s4)
 86c:	0b390b3b          	0xb390b3b
 870:	1349                	addi	t1,t1,-14
 872:	0000                	unimp
 874:	2e10                	fld	fa2,24(a2)
 876:	3f01                	addiw	t5,t5,-32
 878:	0319                	addi	t1,t1,6
 87a:	3a0e                	fld	fs4,224(sp)
 87c:	390b3b0b          	0x390b3b0b
 880:	4919270b          	0x4919270b
 884:	12011113          	0x12011113
 888:	97184007          	flq	ft0,-1679(a6)
 88c:	1942                	slli	s2,s2,0x30
 88e:	1301                	addi	t1,t1,-32
 890:	0000                	unimp
 892:	0511                	addi	a0,a0,4
 894:	0300                	addi	s0,sp,384
 896:	3a08                	fld	fa0,48(a2)
 898:	390b3b0b          	0x390b3b0b
 89c:	0213490b          	0x213490b
 8a0:	12000017          	auipc	zero,0x12000
 8a4:	0034                	addi	a3,sp,8
 8a6:	0b3a0e03          	lb	t3,179(s4)
 8aa:	0b390b3b          	0xb390b3b
 8ae:	1349                	addi	t1,t1,-14
 8b0:	1702                	slli	a4,a4,0x20
 8b2:	0000                	unimp
 8b4:	03003413          	sltiu	s0,zero,48
 8b8:	3a0e                	fld	fs4,224(sp)
 8ba:	390b3b0b          	0x390b3b0b
 8be:	1c13490b          	0x1c13490b
 8c2:	1400000b          	0x1400000b
 8c6:	0034                	addi	a3,sp,8
 8c8:	0b3a0803          	lb	a6,179(s4)
 8cc:	0b390b3b          	0xb390b3b
 8d0:	1349                	addi	t1,t1,-14
 8d2:	0000                	unimp
 8d4:	3415                	addiw	s0,s0,-27
 8d6:	0300                	addi	s0,sp,384
 8d8:	3a08                	fld	fa0,48(a2)
 8da:	390b3b0b          	0x390b3b0b
 8de:	0213490b          	0x213490b
 8e2:	16000017          	auipc	zero,0x16000
 8e6:	1755010b          	0x1755010b
 8ea:	1301                	addi	t1,t1,-32
 8ec:	0000                	unimp
 8ee:	03003417          	auipc	s0,0x3003
 8f2:	3a0e                	fld	fs4,224(sp)
 8f4:	390b3b0b          	0x390b3b0b
 8f8:	0013490b          	0x13490b
 8fc:	1800                	addi	s0,sp,48
 8fe:	0000010b          	0x10b
 902:	0b19                	addi	s6,s6,6
 904:	1101                	addi	sp,sp,-32
 906:	1201                	addi	tp,tp,-32
 908:	00000007          	0x7
 90c:	1101                	addi	sp,sp,-32
 90e:	1000                	addi	s0,sp,32
 910:	1106                	slli	sp,sp,0x21
 912:	1201                	addi	tp,tp,-32
 914:	0301                	addi	t1,t1,0
 916:	1b0e                	slli	s6,s6,0x23
 918:	250e                	fld	fa0,192(sp)
 91a:	130e                	slli	t1,t1,0x23
 91c:	0005                	c.nop	1
 91e:	0000                	unimp
 920:	1101                	addi	sp,sp,-32
 922:	2501                	sext.w	a0,a0
 924:	130e                	slli	t1,t1,0x23
 926:	1b0e030b          	0x1b0e030b
 92a:	110e                	slli	sp,sp,0x23
 92c:	1201                	addi	tp,tp,-32
 92e:	00171007          	0x171007
 932:	0200                	addi	s0,sp,256
 934:	0024                	addi	s1,sp,8
 936:	0b3e0b0b          	0xb3e0b0b
 93a:	00000e03          	lb	t3,0(zero) # 0 <register_fini-0x100b0>
 93e:	0b002403          	lw	s0,176(zero) # b0 <register_fini-0x10000>
 942:	030b3e0b          	0x30b3e0b
 946:	0008                	0x8
 948:	0400                	addi	s0,sp,512
 94a:	0016                	c.slli	zero,0x5
 94c:	0b3a0e03          	lb	t3,179(s4)
 950:	0b39053b          	0xb39053b
 954:	1349                	addi	t1,t1,-14
 956:	0000                	unimp
 958:	1605                	addi	a2,a2,-31
 95a:	0300                	addi	s0,sp,384
 95c:	3a0e                	fld	fs4,224(sp)
 95e:	390b3b0b          	0x390b3b0b
 962:	0013490b          	0x13490b
 966:	0600                	addi	s0,sp,768
 968:	0b0b0117          	auipc	sp,0xb0b0
 96c:	0b3a                	slli	s6,s6,0xe
 96e:	0b390b3b          	0xb390b3b
 972:	1301                	addi	t1,t1,-32
 974:	0000                	unimp
 976:	03000d07          	0x3000d07
 97a:	3a0e                	fld	fs4,224(sp)
 97c:	390b3b0b          	0x390b3b0b
 980:	0013490b          	0x13490b
 984:	0800                	addi	s0,sp,16
 986:	0101                	addi	sp,sp,0
 988:	1349                	addi	t1,t1,-14
 98a:	1301                	addi	t1,t1,-32
 98c:	0000                	unimp
 98e:	2109                	addiw	sp,sp,2
 990:	4900                	lw	s0,16(a0)
 992:	000b2f13          	slti	t5,s6,0
 996:	0a00                	addi	s0,sp,272
 998:	0b0b0113          	addi	sp,s6,176
 99c:	0b3a                	slli	s6,s6,0xe
 99e:	0b390b3b          	0xb390b3b
 9a2:	1301                	addi	t1,t1,-32
 9a4:	0000                	unimp
 9a6:	03000d0b          	0x3000d0b
 9aa:	3a0e                	fld	fs4,224(sp)
 9ac:	390b3b0b          	0x390b3b0b
 9b0:	3813490b          	0x3813490b
 9b4:	0c00000b          	0xc00000b
 9b8:	0b0b000f          	0xb0b000f
 9bc:	0000                	unimp
 9be:	130d                	addi	t1,t1,-29
 9c0:	0301                	addi	t1,t1,0
 9c2:	0b0e                	slli	s6,s6,0x3
 9c4:	3b0b3a0b          	0x3b0b3a0b
 9c8:	010b390b          	0x10b390b
 9cc:	0e000013          	li	zero,224
 9d0:	000d                	c.nop	3
 9d2:	0b3a0803          	lb	a6,179(s4)
 9d6:	0b390b3b          	0xb390b3b
 9da:	1349                	addi	t1,t1,-14
 9dc:	0b38                	addi	a4,sp,408
 9de:	0000                	unimp
 9e0:	0b000f0f          	0xb000f0f
 9e4:	0013490b          	0x13490b
 9e8:	1000                	addi	s0,sp,32
 9ea:	0e030113          	addi	sp,t1,224
 9ee:	0b3a050b          	0xb3a050b
 9f2:	0b390b3b          	0xb390b3b
 9f6:	1301                	addi	t1,t1,-32
 9f8:	0000                	unimp
 9fa:	0d11                	addi	s10,s10,4
 9fc:	0300                	addi	s0,sp,384
 9fe:	3a0e                	fld	fs4,224(sp)
 a00:	390b3b0b          	0x390b3b0b
 a04:	3813490b          	0x3813490b
 a08:	0005                	c.nop	1
 a0a:	1200                	addi	s0,sp,288
 a0c:	0015                	c.nop	5
 a0e:	00001927          	0x1927
 a12:	27011513          	0x27011513
 a16:	4919                	li	s2,6
 a18:	00130113          	addi	sp,t1,1
 a1c:	1400                	addi	s0,sp,544
 a1e:	0005                	c.nop	1
 a20:	1349                	addi	t1,t1,-14
 a22:	0000                	unimp
 a24:	2615                	addiw	a2,a2,5
 a26:	4900                	lw	s0,16(a0)
 a28:	16000013          	li	zero,352
 a2c:	0e030113          	addi	sp,t1,224
 a30:	0b3a050b          	0xb3a050b
 a34:	0b39053b          	0xb39053b
 a38:	1301                	addi	t1,t1,-32
 a3a:	0000                	unimp
 a3c:	03000d17          	auipc	s10,0x3000
 a40:	3a0e                	fld	fs4,224(sp)
 a42:	39053b0b          	0x39053b0b
 a46:	3813490b          	0x3813490b
 a4a:	1800000b          	0x1800000b
 a4e:	000d                	c.nop	3
 a50:	0b3a0e03          	lb	t3,179(s4)
 a54:	0b39053b          	0xb39053b
 a58:	1349                	addi	t1,t1,-14
 a5a:	0538                	addi	a4,sp,648
 a5c:	0000                	unimp
 a5e:	1319                	addi	t1,t1,-26
 a60:	0301                	addi	t1,t1,0
 a62:	0b0e                	slli	s6,s6,0x3
 a64:	3b0b3a0b          	0x3b0b3a0b
 a68:	3905                	addiw	s2,s2,-31
 a6a:	0013010b          	0x13010b
 a6e:	1a00                	addi	s0,sp,304
 a70:	0b0b0113          	addi	sp,s6,176
 a74:	0b3a                	slli	s6,s6,0xe
 a76:	0b39053b          	0xb39053b
 a7a:	1301                	addi	t1,t1,-32
 a7c:	0000                	unimp
 a7e:	0b01131b          	0xb01131b
 a82:	3a05                	addiw	s4,s4,-31
 a84:	39053b0b          	0x39053b0b
 a88:	0013010b          	0x13010b
 a8c:	1c00                	addi	s0,sp,560
 a8e:	050b0117          	auipc	sp,0x50b0
 a92:	0b3a                	slli	s6,s6,0xe
 a94:	0b39053b          	0xb39053b
 a98:	1301                	addi	t1,t1,-32
 a9a:	0000                	unimp
 a9c:	0d1d                	addi	s10,s10,7
 a9e:	0300                	addi	s0,sp,384
 aa0:	3a0e                	fld	fs4,224(sp)
 aa2:	39053b0b          	0x39053b0b
 aa6:	0013490b          	0x13490b
 aaa:	1e00                	addi	s0,sp,816
 aac:	0e030013          	addi	zero,t1,224
 ab0:	193c                	addi	a5,sp,184
 ab2:	0000                	unimp
 ab4:	151f 2701 0119      	0x1192701151f
 aba:	20000013          	li	zero,512
 abe:	0034                	addi	a3,sp,8
 ac0:	0b3a0e03          	lb	t3,179(s4)
 ac4:	0b39053b          	0xb39053b
 ac8:	1349                	addi	t1,t1,-14
 aca:	193c193f 21210000 	0x21210000193c193f
 ad2:	0000                	unimp
 ad4:	2200                	fld	fs0,0(a2)
 ad6:	0034                	addi	a3,sp,8
 ad8:	0b3a0e03          	lb	t3,179(s4)
 adc:	0b390b3b          	0xb390b3b
 ae0:	1349                	addi	t1,t1,-14
 ae2:	193c193f 26230000 	0x26230000193c193f
 aea:	0000                	unimp
 aec:	2400                	fld	fs0,8(s0)
 aee:	0104                	addi	s1,sp,128
 af0:	0b3e0e03          	lb	t3,179(t3) # 90b3 <register_fini-0x6ffd>
 af4:	13490b0b          	0x13490b0b
 af8:	0b3a                	slli	s6,s6,0xe
 afa:	0b390b3b          	0xb390b3b
 afe:	1301                	addi	t1,t1,-32
 b00:	0000                	unimp
 b02:	2825                	addiw	a6,a6,9
 b04:	0300                	addi	s0,sp,384
 b06:	1c0e                	slli	s8,s8,0x23
 b08:	2600000b          	0x2600000b
 b0c:	012e                	slli	sp,sp,0xb
 b0e:	0e03193f 053b0b3a 	0x53b0b3a0e03193f
 b16:	0b39                	addi	s6,s6,14
 b18:	13491927          	0x13491927
 b1c:	0111                	addi	sp,sp,4
 b1e:	0712                	slli	a4,a4,0x4
 b20:	1840                	addi	s0,sp,52
 b22:	00194297          	auipc	t0,0x194
 b26:	2700                	fld	fs0,8(a4)
 b28:	0005                	c.nop	1
 b2a:	0b3a0803          	lb	a6,179(s4)
 b2e:	0b39053b          	0xb39053b
 b32:	1349                	addi	t1,t1,-14
 b34:	1702                	slli	a4,a4,0x20
 b36:	0000                	unimp
 b38:	3428                	fld	fa0,104(s0)
 b3a:	0300                	addi	s0,sp,384
 b3c:	3a08                	fld	fa0,48(a2)
 b3e:	39053b0b          	0x39053b0b
 b42:	0013490b          	0x13490b
 b46:	2900                	fld	fs0,16(a0)
 b48:	1755010b          	0x1755010b
 b4c:	0000                	unimp
 b4e:	342a                	fld	fs0,168(sp)
 b50:	0300                	addi	s0,sp,384
 b52:	3a0e                	fld	fs4,224(sp)
 b54:	39053b0b          	0x39053b0b
 b58:	0213490b          	0x213490b
 b5c:	2b000017          	auipc	zero,0x2b000
 b60:	0034                	addi	a3,sp,8
 b62:	0b3a0803          	lb	a6,179(s4)
 b66:	0b39053b          	0xb39053b
 b6a:	1349                	addi	t1,t1,-14
 b6c:	1702                	slli	a4,a4,0x20
 b6e:	0000                	unimp
 b70:	0100                	addi	s0,sp,128
 b72:	0111                	addi	sp,sp,4
 b74:	0e25                	addi	t3,t3,9
 b76:	0e030b13          	addi	s6,t1,224
 b7a:	17100e1b          	addiw	t3,zero,369
 b7e:	0000                	unimp
 b80:	2402                	fld	fs0,0(sp)
 b82:	0b00                	addi	s0,sp,400
 b84:	030b3e0b          	0x30b3e0b
 b88:	000e                	c.slli	zero,0x3
 b8a:	0300                	addi	s0,sp,384
 b8c:	0024                	addi	s1,sp,8
 b8e:	0b3e0b0b          	0xb3e0b0b
 b92:	00000803          	lb	a6,0(zero) # 0 <register_fini-0x100b0>
 b96:	1604                	addi	s1,sp,800
 b98:	0300                	addi	s0,sp,384
 b9a:	3a0e                	fld	fs4,224(sp)
 b9c:	39053b0b          	0x39053b0b
 ba0:	0013490b          	0x13490b
 ba4:	0500                	addi	s0,sp,640
 ba6:	0016                	c.slli	zero,0x5
 ba8:	0b3a0e03          	lb	t3,179(s4)
 bac:	0b390b3b          	0xb390b3b
 bb0:	1349                	addi	t1,t1,-14
 bb2:	0000                	unimp
 bb4:	1706                	slli	a4,a4,0x21
 bb6:	0b01                	addi	s6,s6,0
 bb8:	3b0b3a0b          	0x3b0b3a0b
 bbc:	010b390b          	0x10b390b
 bc0:	07000013          	li	zero,112
 bc4:	000d                	c.nop	3
 bc6:	0b3a0e03          	lb	t3,179(s4)
 bca:	0b390b3b          	0xb390b3b
 bce:	1349                	addi	t1,t1,-14
 bd0:	0000                	unimp
 bd2:	0108                	addi	a0,sp,128
 bd4:	4901                	li	s2,0
 bd6:	00130113          	addi	sp,t1,1
 bda:	0900                	addi	s0,sp,144
 bdc:	0021                	c.nop	8
 bde:	1349                	addi	t1,t1,-14
 be0:	00000b2f          	0xb2f
 be4:	130a                	slli	t1,t1,0x22
 be6:	0b01                	addi	s6,s6,0
 be8:	3b0b3a0b          	0x3b0b3a0b
 bec:	010b390b          	0x10b390b
 bf0:	0b000013          	li	zero,176
 bf4:	000d                	c.nop	3
 bf6:	0b3a0e03          	lb	t3,179(s4)
 bfa:	0b390b3b          	0xb390b3b
 bfe:	1349                	addi	t1,t1,-14
 c00:	0b38                	addi	a4,sp,408
 c02:	0000                	unimp
 c04:	0f0c                	addi	a1,sp,912
 c06:	0b00                	addi	s0,sp,400
 c08:	0d00000b          	0xd00000b
 c0c:	0e030113          	addi	sp,t1,224
 c10:	0b3a0b0b          	0xb3a0b0b
 c14:	0b390b3b          	0xb390b3b
 c18:	1301                	addi	t1,t1,-32
 c1a:	0000                	unimp
 c1c:	0d0e                	slli	s10,s10,0x3
 c1e:	0300                	addi	s0,sp,384
 c20:	3a08                	fld	fa0,48(a2)
 c22:	390b3b0b          	0x390b3b0b
 c26:	3813490b          	0x3813490b
 c2a:	0f00000b          	0xf00000b
 c2e:	0b0b000f          	0xb0b000f
 c32:	1349                	addi	t1,t1,-14
 c34:	0000                	unimp
 c36:	1310                	addi	a2,sp,416
 c38:	0301                	addi	t1,t1,0
 c3a:	0b0e                	slli	s6,s6,0x3
 c3c:	3a05                	addiw	s4,s4,-31
 c3e:	390b3b0b          	0x390b3b0b
 c42:	0013010b          	0x13010b
 c46:	1100                	addi	s0,sp,160
 c48:	000d                	c.nop	3
 c4a:	0b3a0e03          	lb	t3,179(s4)
 c4e:	0b390b3b          	0xb390b3b
 c52:	1349                	addi	t1,t1,-14
 c54:	0538                	addi	a4,sp,648
 c56:	0000                	unimp
 c58:	1512                	slli	a0,a0,0x24
 c5a:	2700                	fld	fs0,8(a4)
 c5c:	0019                	c.nop	6
 c5e:	1300                	addi	s0,sp,416
 c60:	0115                	addi	sp,sp,5
 c62:	13491927          	0x13491927
 c66:	1301                	addi	t1,t1,-32
 c68:	0000                	unimp
 c6a:	0514                	addi	a3,sp,640
 c6c:	4900                	lw	s0,16(a0)
 c6e:	15000013          	li	zero,336
 c72:	0026                	c.slli	zero,0x9
 c74:	1349                	addi	t1,t1,-14
 c76:	0000                	unimp
 c78:	1316                	slli	t1,t1,0x25
 c7a:	0301                	addi	t1,t1,0
 c7c:	0b0e                	slli	s6,s6,0x3
 c7e:	3a05                	addiw	s4,s4,-31
 c80:	39053b0b          	0x39053b0b
 c84:	0013010b          	0x13010b
 c88:	1700                	addi	s0,sp,928
 c8a:	000d                	c.nop	3
 c8c:	0b3a0e03          	lb	t3,179(s4)
 c90:	0b39053b          	0xb39053b
 c94:	1349                	addi	t1,t1,-14
 c96:	0b38                	addi	a4,sp,408
 c98:	0000                	unimp
 c9a:	0d18                	addi	a4,sp,656
 c9c:	0300                	addi	s0,sp,384
 c9e:	3a0e                	fld	fs4,224(sp)
 ca0:	39053b0b          	0x39053b0b
 ca4:	3813490b          	0x3813490b
 ca8:	0005                	c.nop	1
 caa:	1900                	addi	s0,sp,176
 cac:	0e030113          	addi	sp,t1,224
 cb0:	0b3a0b0b          	0xb3a0b0b
 cb4:	0b39053b          	0xb39053b
 cb8:	1301                	addi	t1,t1,-32
 cba:	0000                	unimp
 cbc:	131a                	slli	t1,t1,0x26
 cbe:	0b01                	addi	s6,s6,0
 cc0:	3b0b3a0b          	0x3b0b3a0b
 cc4:	3905                	addiw	s2,s2,-31
 cc6:	0013010b          	0x13010b
 cca:	1b00                	addi	s0,sp,432
 ccc:	050b0113          	addi	sp,s6,80
 cd0:	0b3a                	slli	s6,s6,0xe
 cd2:	0b39053b          	0xb39053b
 cd6:	1301                	addi	t1,t1,-32
 cd8:	0000                	unimp
 cda:	171c                	addi	a5,sp,928
 cdc:	0b01                	addi	s6,s6,0
 cde:	3a05                	addiw	s4,s4,-31
 ce0:	39053b0b          	0x39053b0b
 ce4:	0013010b          	0x13010b
 ce8:	1d00                	addi	s0,sp,688
 cea:	000d                	c.nop	3
 cec:	0b3a0e03          	lb	t3,179(s4)
 cf0:	0b39053b          	0xb39053b
 cf4:	1349                	addi	t1,t1,-14
 cf6:	0000                	unimp
 cf8:	131e                	slli	t1,t1,0x27
 cfa:	0300                	addi	s0,sp,384
 cfc:	3c0e                	fld	fs8,224(sp)
 cfe:	0019                	c.nop	6
 d00:	1f00                	addi	s0,sp,944
 d02:	0115                	addi	sp,sp,5
 d04:	13011927          	0x13011927
 d08:	0000                	unimp
 d0a:	3420                	fld	fs0,104(s0)
 d0c:	0300                	addi	s0,sp,384
 d0e:	3a0e                	fld	fs4,224(sp)
 d10:	39053b0b          	0x39053b0b
 d14:	3f13490b          	0x3f13490b
 d18:	3c19                	addiw	s8,s8,-26
 d1a:	0019                	c.nop	6
 d1c:	2100                	fld	fs0,0(a0)
 d1e:	0021                	c.nop	8
 d20:	0000                	unimp
 d22:	3422                	fld	fs0,40(sp)
 d24:	0300                	addi	s0,sp,384
 d26:	3a0e                	fld	fs4,224(sp)
 d28:	390b3b0b          	0x390b3b0b
 d2c:	3f13490b          	0x3f13490b
 d30:	3c19                	addiw	s8,s8,-26
 d32:	0019                	c.nop	6
 d34:	2300                	fld	fs0,0(a4)
 d36:	0026                	c.slli	zero,0x9
 d38:	0000                	unimp
 d3a:	0424                	addi	s1,sp,520
 d3c:	0301                	addi	t1,t1,0
 d3e:	3e0e                	fld	ft8,224(sp)
 d40:	490b0b0b          	0x490b0b0b
 d44:	3b0b3a13          	sltiu	s4,s6,944
 d48:	010b390b          	0x10b390b
 d4c:	25000013          	li	zero,592
 d50:	0028                	addi	a0,sp,8
 d52:	0b1c0e03          	lb	t3,177(s8)
 d56:	0000                	unimp
 d58:	3426                	fld	fs0,104(sp)
 d5a:	4700                	lw	s0,8(a4)
 d5c:	3b0b3a13          	sltiu	s4,s6,944
 d60:	3905                	addiw	s2,s2,-31
 d62:	0018020b          	0x18020b
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
       0:	0a76                	slli	s4,s4,0x1d
       2:	0000                	unimp
       4:	00930003          	lb	zero,9(t1)
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
      38:	74666f73          	csrrsi	t5,0x746,12
      3c:	662d                	lui	a2,0xb
      3e:	0070                	addi	a2,sp,12
      40:	2e2e                	fld	ft8,200(sp)
      42:	2f2e2e2f          	0x2f2e2e2f
      46:	2e2e                	fld	ft8,200(sp)
      48:	2f2e2e2f          	0x2f2e2e2f
      4c:	6972                	ld	s2,280(sp)
      4e:	2d766373          	csrrsi	t1,0x2d7,12
      52:	2f636367          	0x2f636367
      56:	696c                	ld	a1,208(a0)
      58:	6762                	ld	a4,24(sp)
      5a:	2e2f6363          	bltu	t5,sp,340 <register_fini-0xfd70>
      5e:	2f2e                	fld	ft10,200(sp)
      60:	6e69                	lui	t3,0x1a
      62:	64756c63          	bltu	a0,t2,6ba <register_fini-0xf9f6>
      66:	0065                	c.nop	25
      68:	6100                	ld	s0,0(a0)
      6a:	6464                	ld	s1,200(s0)
      6c:	6664                	ld	s1,200(a2)
      6e:	00632e33          	slt	t3,t1,t1
      72:	0001                	nop
      74:	7300                	ld	s0,32(a4)
      76:	2d74666f          	jal	a2,46b4c <__BSS_END__+0x3431c>
      7a:	7066                	0x7066
      7c:	682e                	ld	a6,200(sp)
      7e:	0100                	addi	s0,sp,128
      80:	0000                	unimp
      82:	6f64                	ld	s1,216(a4)
      84:	6275                	lui	tp,0x1d
      86:	656c                	ld	a1,200(a0)
      88:	682e                	ld	a6,200(sp)
      8a:	0100                	addi	s0,sp,128
      8c:	0000                	unimp
      8e:	6f6c                	ld	a1,216(a4)
      90:	676e                	ld	a4,216(sp)
      92:	6f6c                	ld	a1,216(a4)
      94:	676e                	ld	a4,216(sp)
      96:	682e                	ld	a6,200(sp)
      98:	0200                	addi	s0,sp,256
      9a:	0000                	unimp
      9c:	0500                	addi	s0,sp,640
      9e:	0001                	nop
      a0:	0209                	addi	tp,tp,2
      a2:	0404                	addi	s1,sp,512
      a4:	0001                	nop
      a6:	0000                	unimp
      a8:	0000                	unimp
      aa:	05012303          	lw	t1,80(sp) # 50b0ade <__BSS_END__+0x509e2ae>
      ae:	09010303          	lb	t1,144(sp)
      b2:	0000                	unimp
      b4:	0301                	addi	t1,t1,0
      b6:	0900                	addi	s0,sp,144
      b8:	0000                	unimp
      ba:	0501                	addi	a0,a0,0
      bc:	030d                	addi	t1,t1,3
      be:	0900                	addi	s0,sp,144
      c0:	0000                	unimp
      c2:	0501                	addi	a0,a0,0
      c4:	09010303          	lb	t1,144(sp)
      c8:	0000                	unimp
      ca:	0301                	addi	t1,t1,0
      cc:	0900                	addi	s0,sp,144
      ce:	0000                	unimp
      d0:	0301                	addi	t1,t1,0
      d2:	0900                	addi	s0,sp,144
      d4:	0000                	unimp
      d6:	0301                	addi	t1,t1,0
      d8:	0900                	addi	s0,sp,144
      da:	0000                	unimp
      dc:	0301                	addi	t1,t1,0
      de:	0901                	addi	s2,s2,0
      e0:	0000                	unimp
      e2:	0301                	addi	t1,t1,0
      e4:	0900                	addi	s0,sp,144
      e6:	0000                	unimp
      e8:	0301                	addi	t1,t1,0
      ea:	0900                	addi	s0,sp,144
      ec:	0000                	unimp
      ee:	0301                	addi	t1,t1,0
      f0:	0900                	addi	s0,sp,144
      f2:	0000                	unimp
      f4:	0301                	addi	t1,t1,0
      f6:	0901                	addi	s2,s2,0
      f8:	0000                	unimp
      fa:	0301                	addi	t1,t1,0
      fc:	0900                	addi	s0,sp,144
      fe:	0000                	unimp
     100:	0301                	addi	t1,t1,0
     102:	0900                	addi	s0,sp,144
     104:	0000                	unimp
     106:	0301                	addi	t1,t1,0
     108:	0900                	addi	s0,sp,144
     10a:	0000                	unimp
     10c:	0301                	addi	t1,t1,0
     10e:	0901                	addi	s2,s2,0
     110:	0000                	unimp
     112:	0301                	addi	t1,t1,0
     114:	0902                	c.slli64	s2
     116:	0000                	unimp
     118:	0301                	addi	t1,t1,0
     11a:	0901                	addi	s2,s2,0
     11c:	0000                	unimp
     11e:	0301                	addi	t1,t1,0
     120:	0900                	addi	s0,sp,144
     122:	0000                	unimp
     124:	0301                	addi	t1,t1,0
     126:	0900                	addi	s0,sp,144
     128:	0000                	unimp
     12a:	0301                	addi	t1,t1,0
     12c:	0900                	addi	s0,sp,144
     12e:	0000                	unimp
     130:	0301                	addi	t1,t1,0
     132:	0900                	addi	s0,sp,144
     134:	0000                	unimp
     136:	0501                	addi	a0,a0,0
     138:	0601                	addi	a2,a2,0
     13a:	00097803          	0x97803
     13e:	0100                	addi	s0,sp,128
     140:	0305                	addi	t1,t1,1
     142:	04090803          	lb	a6,64(s2)
     146:	0100                	addi	s0,sp,128
     148:	08090103          	lb	sp,128(s2)
     14c:	0100                	addi	s0,sp,128
     14e:	0105                	addi	sp,sp,1
     150:	04097703          	0x4097703
     154:	0100                	addi	s0,sp,128
     156:	0305                	addi	t1,t1,1
     158:	04090803          	lb	a6,64(s2)
     15c:	0100                	addi	s0,sp,128
     15e:	0306                	slli	t1,t1,0x1
     160:	0900                	addi	s0,sp,144
     162:	0008                	0x8
     164:	0501                	addi	a0,a0,0
     166:	0601                	addi	a2,a2,0
     168:	00097803          	0x97803
     16c:	0100                	addi	s0,sp,128
     16e:	0305                	addi	t1,t1,1
     170:	04090903          	lb	s2,64(s2)
     174:	0100                	addi	s0,sp,128
     176:	04097f03          	0x4097f03
     17a:	0100                	addi	s0,sp,128
     17c:	0306                	slli	t1,t1,0x1
     17e:	0900                	addi	s0,sp,144
     180:	0004                	0x4
     182:	0601                	addi	a2,a2,0
     184:	00090103          	lb	sp,0(s2)
     188:	0100                	addi	s0,sp,128
     18a:	0105                	addi	sp,sp,1
     18c:	04097703          	0x4097703
     190:	0100                	addi	s0,sp,128
     192:	0305                	addi	t1,t1,1
     194:	08090803          	lb	a6,128(s2)
     198:	0100                	addi	s0,sp,128
     19a:	0306                	slli	t1,t1,0x1
     19c:	0900                	addi	s0,sp,144
     19e:	0004                	0x4
     1a0:	0301                	addi	t1,t1,0
     1a2:	0900                	addi	s0,sp,144
     1a4:	0000                	unimp
     1a6:	0301                	addi	t1,t1,0
     1a8:	0900                	addi	s0,sp,144
     1aa:	0000                	unimp
     1ac:	0301                	addi	t1,t1,0
     1ae:	0900                	addi	s0,sp,144
     1b0:	0000                	unimp
     1b2:	0601                	addi	a2,a2,0
     1b4:	00090103          	lb	sp,0(s2)
     1b8:	0100                	addi	s0,sp,128
     1ba:	04097f03          	0x4097f03
     1be:	0100                	addi	s0,sp,128
     1c0:	0306                	slli	t1,t1,0x1
     1c2:	0900                	addi	s0,sp,144
     1c4:	0004                	0x4
     1c6:	0301                	addi	t1,t1,0
     1c8:	0900                	addi	s0,sp,144
     1ca:	0000                	unimp
     1cc:	0301                	addi	t1,t1,0
     1ce:	0901                	addi	s2,s2,0
     1d0:	0000                	unimp
     1d2:	0301                	addi	t1,t1,0
     1d4:	0900                	addi	s0,sp,144
     1d6:	0000                	unimp
     1d8:	0301                	addi	t1,t1,0
     1da:	0900                	addi	s0,sp,144
     1dc:	0000                	unimp
     1de:	0301                	addi	t1,t1,0
     1e0:	0900                	addi	s0,sp,144
     1e2:	0000                	unimp
     1e4:	0301                	addi	t1,t1,0
     1e6:	0900                	addi	s0,sp,144
     1e8:	0000                	unimp
     1ea:	0301                	addi	t1,t1,0
     1ec:	0900                	addi	s0,sp,144
     1ee:	0000                	unimp
     1f0:	0301                	addi	t1,t1,0
     1f2:	0900                	addi	s0,sp,144
     1f4:	0000                	unimp
     1f6:	0301                	addi	t1,t1,0
     1f8:	0900                	addi	s0,sp,144
     1fa:	0000                	unimp
     1fc:	0301                	addi	t1,t1,0
     1fe:	0900                	addi	s0,sp,144
     200:	0000                	unimp
     202:	0301                	addi	t1,t1,0
     204:	0900                	addi	s0,sp,144
     206:	0000                	unimp
     208:	0301                	addi	t1,t1,0
     20a:	0900                	addi	s0,sp,144
     20c:	0000                	unimp
     20e:	0301                	addi	t1,t1,0
     210:	0900                	addi	s0,sp,144
     212:	0004                	0x4
     214:	0301                	addi	t1,t1,0
     216:	0900                	addi	s0,sp,144
     218:	0000                	unimp
     21a:	0301                	addi	t1,t1,0
     21c:	0901                	addi	s2,s2,0
     21e:	0000                	unimp
     220:	0301                	addi	t1,t1,0
     222:	0900                	addi	s0,sp,144
     224:	0000                	unimp
     226:	0301                	addi	t1,t1,0
     228:	0900                	addi	s0,sp,144
     22a:	0000                	unimp
     22c:	0301                	addi	t1,t1,0
     22e:	0900                	addi	s0,sp,144
     230:	0000                	unimp
     232:	0301                	addi	t1,t1,0
     234:	0900                	addi	s0,sp,144
     236:	0000                	unimp
     238:	0301                	addi	t1,t1,0
     23a:	0900                	addi	s0,sp,144
     23c:	0000                	unimp
     23e:	0301                	addi	t1,t1,0
     240:	0900                	addi	s0,sp,144
     242:	0000                	unimp
     244:	0301                	addi	t1,t1,0
     246:	0900                	addi	s0,sp,144
     248:	0000                	unimp
     24a:	0001                	nop
     24c:	0402                	c.slli64	s0
     24e:	09000307          	0x9000307
     252:	0008                	0x8
     254:	0001                	nop
     256:	0402                	c.slli64	s0
     258:	09000307          	0x9000307
     25c:	0000                	unimp
     25e:	0001                	nop
     260:	0402                	c.slli64	s0
     262:	09000307          	0x9000307
     266:	0004                	0x4
     268:	0001                	nop
     26a:	0402                	c.slli64	s0
     26c:	0309                	addi	t1,t1,2
     26e:	0900                	addi	s0,sp,144
     270:	0004                	0x4
     272:	0001                	nop
     274:	0402                	c.slli64	s0
     276:	0309                	addi	t1,t1,2
     278:	0900                	addi	s0,sp,144
     27a:	0000                	unimp
     27c:	0001                	nop
     27e:	0402                	c.slli64	s0
     280:	0900030b          	0x900030b
     284:	0004                	0x4
     286:	0001                	nop
     288:	0402                	c.slli64	s0
     28a:	030e                	slli	t1,t1,0x3
     28c:	0900                	addi	s0,sp,144
     28e:	0004                	0x4
     290:	0001                	nop
     292:	0402                	c.slli64	s0
     294:	030e                	slli	t1,t1,0x3
     296:	0900                	addi	s0,sp,144
     298:	0000                	unimp
     29a:	0001                	nop
     29c:	0402                	c.slli64	s0
     29e:	030e                	slli	t1,t1,0x3
     2a0:	0900                	addi	s0,sp,144
     2a2:	0004                	0x4
     2a4:	0001                	nop
     2a6:	0402                	c.slli64	s0
     2a8:	09000317          	auipc	t1,0x9000
     2ac:	0004                	0x4
     2ae:	0001                	nop
     2b0:	0402                	c.slli64	s0
     2b2:	09000317          	auipc	t1,0x9000
     2b6:	0004                	0x4
     2b8:	0001                	nop
     2ba:	0402                	c.slli64	s0
     2bc:	0370                	addi	a2,sp,396
     2be:	0900                	addi	s0,sp,144
     2c0:	0000                	unimp
     2c2:	0001                	nop
     2c4:	01ab0403          	lb	s0,26(s6)
     2c8:	08090003          	lb	zero,128(s2)
     2cc:	0100                	addi	s0,sp,128
     2ce:	0300                	addi	s0,sp,384
     2d0:	ab04                	fsd	fs1,16(a4)
     2d2:	0301                	addi	t1,t1,0
     2d4:	0900                	addi	s0,sp,144
     2d6:	0000                	unimp
     2d8:	0001                	nop
     2da:	01ab0403          	lb	s0,26(s6)
     2de:	04090003          	lb	zero,64(s2)
     2e2:	0100                	addi	s0,sp,128
     2e4:	0300                	addi	s0,sp,384
     2e6:	ab04                	fsd	fs1,16(a4)
     2e8:	0301                	addi	t1,t1,0
     2ea:	0900                	addi	s0,sp,144
     2ec:	0000                	unimp
     2ee:	0601                	addi	a2,a2,0
     2f0:	08090003          	lb	zero,128(s2)
     2f4:	0100                	addi	s0,sp,128
     2f6:	0200                	addi	s0,sp,256
     2f8:	1804                	addi	s1,sp,48
     2fa:	0306                	slli	t1,t1,0x1
     2fc:	0900                	addi	s0,sp,144
     2fe:	0020                	addi	s0,sp,8
     300:	0001                	nop
     302:	02f80403          	lb	s0,47(a6)
     306:	08090003          	lb	zero,128(s2)
     30a:	0100                	addi	s0,sp,128
     30c:	0300                	addi	s0,sp,384
     30e:	f804                	sd	s1,48(s0)
     310:	0302                	c.slli64	t1
     312:	0900                	addi	s0,sp,144
     314:	0000                	unimp
     316:	0001                	nop
     318:	02f80403          	lb	s0,47(a6)
     31c:	00090103          	lb	sp,0(s2)
     320:	0100                	addi	s0,sp,128
     322:	0300                	addi	s0,sp,384
     324:	f804                	sd	s1,48(s0)
     326:	0302                	c.slli64	t1
     328:	0900                	addi	s0,sp,144
     32a:	0000                	unimp
     32c:	0001                	nop
     32e:	02f80403          	lb	s0,47(a6)
     332:	00090003          	lb	zero,0(s2)
     336:	0100                	addi	s0,sp,128
     338:	0300                	addi	s0,sp,384
     33a:	f804                	sd	s1,48(s0)
     33c:	0302                	c.slli64	t1
     33e:	0900                	addi	s0,sp,144
     340:	0000                	unimp
     342:	0001                	nop
     344:	02f80403          	lb	s0,47(a6)
     348:	00090003          	lb	zero,0(s2)
     34c:	0100                	addi	s0,sp,128
     34e:	0200                	addi	s0,sp,256
     350:	2504                	fld	fs1,8(a0)
     352:	08090003          	lb	zero,128(s2)
     356:	0100                	addi	s0,sp,128
     358:	0200                	addi	s0,sp,256
     35a:	2504                	fld	fs1,8(a0)
     35c:	00090003          	lb	zero,0(s2)
     360:	0100                	addi	s0,sp,128
     362:	0200                	addi	s0,sp,256
     364:	2504                	fld	fs1,8(a0)
     366:	00090003          	lb	zero,0(s2)
     36a:	0100                	addi	s0,sp,128
     36c:	0200                	addi	s0,sp,256
     36e:	2504                	fld	fs1,8(a0)
     370:	00090003          	lb	zero,0(s2)
     374:	0100                	addi	s0,sp,128
     376:	0200                	addi	s0,sp,256
     378:	2c04                	fld	fs1,24(s0)
     37a:	0c090003          	lb	zero,192(s2)
     37e:	0100                	addi	s0,sp,128
     380:	0200                	addi	s0,sp,256
     382:	0c04                	addi	s1,sp,528
     384:	08097f03          	0x8097f03
     388:	0100                	addi	s0,sp,128
     38a:	0200                	addi	s0,sp,256
     38c:	2604                	fld	fs1,8(a2)
     38e:	08090003          	lb	zero,128(s2)
     392:	0100                	addi	s0,sp,128
     394:	0200                	addi	s0,sp,256
     396:	2f04                	fld	fs1,24(a4)
     398:	0c090003          	lb	zero,192(s2)
     39c:	0100                	addi	s0,sp,128
     39e:	0200                	addi	s0,sp,256
     3a0:	3004                	fld	fs1,32(s0)
     3a2:	0c090003          	lb	zero,192(s2)
     3a6:	0100                	addi	s0,sp,128
     3a8:	0200                	addi	s0,sp,256
     3aa:	3b04                	fld	fs1,48(a4)
     3ac:	18090003          	lb	zero,384(s2)
     3b0:	0100                	addi	s0,sp,128
     3b2:	0200                	addi	s0,sp,256
     3b4:	0a04                	addi	s1,sp,272
     3b6:	08090003          	lb	zero,128(s2)
     3ba:	0100                	addi	s0,sp,128
     3bc:	0200                	addi	s0,sp,256
     3be:	3d04                	fld	fs1,56(a0)
     3c0:	04090003          	lb	zero,64(s2)
     3c4:	0100                	addi	s0,sp,128
     3c6:	0200                	addi	s0,sp,256
     3c8:	3d04                	fld	fs1,56(a0)
     3ca:	00090003          	lb	zero,0(s2)
     3ce:	0100                	addi	s0,sp,128
     3d0:	0200                	addi	s0,sp,256
     3d2:	3d04                	fld	fs1,56(a0)
     3d4:	00090003          	lb	zero,0(s2)
     3d8:	0100                	addi	s0,sp,128
     3da:	0200                	addi	s0,sp,256
     3dc:	3f04                	fld	fs1,56(a4)
     3de:	04090003          	lb	zero,64(s2)
     3e2:	0100                	addi	s0,sp,128
     3e4:	0200                	addi	s0,sp,256
     3e6:	4204                	lw	s1,0(a2)
     3e8:	04090003          	lb	zero,64(s2)
     3ec:	0100                	addi	s0,sp,128
     3ee:	0200                	addi	s0,sp,256
     3f0:	4204                	lw	s1,0(a2)
     3f2:	00090003          	lb	zero,0(s2)
     3f6:	0100                	addi	s0,sp,128
     3f8:	0200                	addi	s0,sp,256
     3fa:	4204                	lw	s1,0(a2)
     3fc:	00090003          	lb	zero,0(s2)
     400:	0100                	addi	s0,sp,128
     402:	0200                	addi	s0,sp,256
     404:	4b04                	lw	s1,16(a4)
     406:	04090003          	lb	zero,64(s2)
     40a:	0100                	addi	s0,sp,128
     40c:	0200                	addi	s0,sp,256
     40e:	4b04                	lw	s1,16(a4)
     410:	04090003          	lb	zero,64(s2)
     414:	0100                	addi	s0,sp,128
     416:	0200                	addi	s0,sp,256
     418:	6f04                	ld	s1,24(a4)
     41a:	0306                	slli	t1,t1,0x1
     41c:	097f                	0x97f
     41e:	0000                	unimp
     420:	0001                	nop
     422:	0402                	c.slli64	s0
     424:	064c                	addi	a1,sp,772
     426:	08090103          	lb	sp,128(s2)
     42a:	0100                	addi	s0,sp,128
     42c:	0200                	addi	s0,sp,256
     42e:	6304                	ld	s1,0(a4)
     430:	10090003          	lb	zero,256(s2)
     434:	0100                	addi	s0,sp,128
     436:	0200                	addi	s0,sp,256
     438:	6404                	ld	s1,8(s0)
     43a:	0c090003          	lb	zero,192(s2)
     43e:	0100                	addi	s0,sp,128
     440:	0200                	addi	s0,sp,256
     442:	6f04                	ld	s1,24(a4)
     444:	18090003          	lb	zero,384(s2)
     448:	0100                	addi	s0,sp,128
     44a:	0200                	addi	s0,sp,256
     44c:	4004                	lw	s1,0(s0)
     44e:	08090003          	lb	zero,128(s2)
     452:	0100                	addi	s0,sp,128
     454:	0200                	addi	s0,sp,256
     456:	5a04                	lw	s1,48(a2)
     458:	0306                	slli	t1,t1,0x1
     45a:	0900                	addi	s0,sp,144
     45c:	0008                	0x8
     45e:	0001                	nop
     460:	0402                	c.slli64	s0
     462:	065a                	slli	a2,a2,0x16
     464:	0c090003          	lb	zero,192(s2)
     468:	0100                	addi	s0,sp,128
     46a:	0200                	addi	s0,sp,256
     46c:	3e04                	fld	fs1,56(a2)
     46e:	08090003          	lb	zero,128(s2)
     472:	0100                	addi	s0,sp,128
     474:	0200                	addi	s0,sp,256
     476:	7104                	ld	s1,32(a0)
     478:	0c090003          	lb	zero,192(s2)
     47c:	0100                	addi	s0,sp,128
     47e:	0200                	addi	s0,sp,256
     480:	7304                	ld	s1,32(a4)
     482:	04090003          	lb	zero,64(s2)
     486:	0100                	addi	s0,sp,128
     488:	0200                	addi	s0,sp,256
     48a:	7304                	ld	s1,32(a4)
     48c:	00090003          	lb	zero,0(s2)
     490:	0100                	addi	s0,sp,128
     492:	0200                	addi	s0,sp,256
     494:	7604                	ld	s1,40(a2)
     496:	04090003          	lb	zero,64(s2)
     49a:	0100                	addi	s0,sp,128
     49c:	0200                	addi	s0,sp,256
     49e:	7c04                	ld	s1,56(s0)
     4a0:	04090003          	lb	zero,64(s2)
     4a4:	0100                	addi	s0,sp,128
     4a6:	0200                	addi	s0,sp,256
     4a8:	7c04                	ld	s1,56(s0)
     4aa:	00090003          	lb	zero,0(s2)
     4ae:	0100                	addi	s0,sp,128
     4b0:	0200                	addi	s0,sp,256
     4b2:	7c04                	ld	s1,56(s0)
     4b4:	04090003          	lb	zero,64(s2)
     4b8:	0100                	addi	s0,sp,128
     4ba:	0200                	addi	s0,sp,256
     4bc:	7e04                	ld	s1,56(a2)
     4be:	08090003          	lb	zero,128(s2)
     4c2:	0100                	addi	s0,sp,128
     4c4:	0200                	addi	s0,sp,256
     4c6:	7e04                	ld	s1,56(a2)
     4c8:	0c090003          	lb	zero,192(s2)
     4cc:	0100                	addi	s0,sp,128
     4ce:	0300                	addi	s0,sp,384
     4d0:	8f04                	0x8f04
     4d2:	0301                	addi	t1,t1,0
     4d4:	0900                	addi	s0,sp,144
     4d6:	0008                	0x8
     4d8:	0001                	nop
     4da:	018f0403          	lb	s0,24(t5) # fffffffffffe3018 <__BSS_END__+0xfffffffffffd07e8>
     4de:	00090003          	lb	zero,0(s2)
     4e2:	0100                	addi	s0,sp,128
     4e4:	0300                	addi	s0,sp,384
     4e6:	8f04                	0x8f04
     4e8:	0301                	addi	t1,t1,0
     4ea:	0900                	addi	s0,sp,144
     4ec:	0000                	unimp
     4ee:	0001                	nop
     4f0:	018f0403          	lb	s0,24(t5)
     4f4:	00090003          	lb	zero,0(s2)
     4f8:	0100                	addi	s0,sp,128
     4fa:	0300                	addi	s0,sp,384
     4fc:	8f04                	0x8f04
     4fe:	0301                	addi	t1,t1,0
     500:	0900                	addi	s0,sp,144
     502:	0000                	unimp
     504:	0001                	nop
     506:	018f0403          	lb	s0,24(t5)
     50a:	00090003          	lb	zero,0(s2)
     50e:	0100                	addi	s0,sp,128
     510:	0300                	addi	s0,sp,384
     512:	8f04                	0x8f04
     514:	0301                	addi	t1,t1,0
     516:	0900                	addi	s0,sp,144
     518:	0000                	unimp
     51a:	0001                	nop
     51c:	018f0403          	lb	s0,24(t5)
     520:	00090003          	lb	zero,0(s2)
     524:	0100                	addi	s0,sp,128
     526:	0300                	addi	s0,sp,384
     528:	c904                	sw	s1,16(a0)
     52a:	0302                	c.slli64	t1
     52c:	0900                	addi	s0,sp,144
     52e:	0004                	0x4
     530:	0601                	addi	a2,a2,0
     532:	04090003          	lb	zero,64(s2)
     536:	0100                	addi	s0,sp,128
     538:	0200                	addi	s0,sp,256
     53a:	7204                	ld	s1,32(a2)
     53c:	0306                	slli	t1,t1,0x1
     53e:	0900                	addi	s0,sp,144
     540:	0014                	0x14
     542:	0001                	nop
     544:	0402                	c.slli64	s0
     546:	0372                	slli	t1,t1,0x1c
     548:	0900                	addi	s0,sp,144
     54a:	0000                	unimp
     54c:	0001                	nop
     54e:	0402                	c.slli64	s0
     550:	0372                	slli	t1,t1,0x1c
     552:	0900                	addi	s0,sp,144
     554:	0000                	unimp
     556:	0001                	nop
     558:	0402                	c.slli64	s0
     55a:	0372                	slli	t1,t1,0x1c
     55c:	0900                	addi	s0,sp,144
     55e:	0000                	unimp
     560:	0601                	addi	a2,a2,0
     562:	08090003          	lb	zero,128(s2)
     566:	0100                	addi	s0,sp,128
     568:	0200                	addi	s0,sp,256
     56a:	0804                	addi	s1,sp,16
     56c:	0306                	slli	t1,t1,0x1
     56e:	0900                	addi	s0,sp,144
     570:	0010                	0x10
     572:	0001                	nop
     574:	0402                	c.slli64	s0
     576:	0308                	addi	a0,sp,384
     578:	0900                	addi	s0,sp,144
     57a:	0004                	0x4
     57c:	0001                	nop
     57e:	01bd0403          	lb	s0,27(s10) # 3000a57 <__BSS_END__+0x2fee227>
     582:	04090003          	lb	zero,64(s2)
     586:	0100                	addi	s0,sp,128
     588:	0300                	addi	s0,sp,384
     58a:	bd04                	fsd	fs1,56(a0)
     58c:	0301                	addi	t1,t1,0
     58e:	0900                	addi	s0,sp,144
     590:	0000                	unimp
     592:	0001                	nop
     594:	01bd0403          	lb	s0,27(s10)
     598:	00090003          	lb	zero,0(s2)
     59c:	0100                	addi	s0,sp,128
     59e:	0300                	addi	s0,sp,384
     5a0:	bf04                	fsd	fs1,56(a4)
     5a2:	0301                	addi	t1,t1,0
     5a4:	0900                	addi	s0,sp,144
     5a6:	0004                	0x4
     5a8:	0001                	nop
     5aa:	01c20403          	lb	s0,28(tp) # 1d01c <__BSS_END__+0xa7ec>
     5ae:	04090003          	lb	zero,64(s2)
     5b2:	0100                	addi	s0,sp,128
     5b4:	0300                	addi	s0,sp,384
     5b6:	c204                	sw	s1,0(a2)
     5b8:	0301                	addi	t1,t1,0
     5ba:	0900                	addi	s0,sp,144
     5bc:	0000                	unimp
     5be:	0001                	nop
     5c0:	01c20403          	lb	s0,28(tp) # 1c <register_fini-0x10094>
     5c4:	04090003          	lb	zero,64(s2)
     5c8:	0100                	addi	s0,sp,128
     5ca:	0300                	addi	s0,sp,384
     5cc:	cb04                	sw	s1,16(a4)
     5ce:	0301                	addi	t1,t1,0
     5d0:	0900                	addi	s0,sp,144
     5d2:	0004                	0x4
     5d4:	0001                	nop
     5d6:	01cb0403          	lb	s0,28(s6)
     5da:	04090003          	lb	zero,64(s2)
     5de:	0100                	addi	s0,sp,128
     5e0:	0300                	addi	s0,sp,384
     5e2:	a404                	fsd	fs1,8(s0)
     5e4:	0302                	c.slli64	t1
     5e6:	0900                	addi	s0,sp,144
     5e8:	0000                	unimp
     5ea:	0001                	nop
     5ec:	02df0403          	lb	s0,45(t5)
     5f0:	08090003          	lb	zero,128(s2)
     5f4:	0100                	addi	s0,sp,128
     5f6:	0300                	addi	s0,sp,384
     5f8:	df04                	sw	s1,56(a4)
     5fa:	0302                	c.slli64	t1
     5fc:	0900                	addi	s0,sp,144
     5fe:	0000                	unimp
     600:	0001                	nop
     602:	01cc0403          	lb	s0,28(s8)
     606:	0c090003          	lb	zero,192(s2)
     60a:	0100                	addi	s0,sp,128
     60c:	0300                	addi	s0,sp,384
     60e:	e304                	sd	s1,0(a4)
     610:	0301                	addi	t1,t1,0
     612:	0900                	addi	s0,sp,144
     614:	0008                	0x8
     616:	0001                	nop
     618:	01e40403          	lb	s0,30(s0) # 300390c <__BSS_END__+0x2ff10dc>
     61c:	0c090003          	lb	zero,192(s2)
     620:	0100                	addi	s0,sp,128
     622:	0300                	addi	s0,sp,384
     624:	ef04                	sd	s1,24(a4)
     626:	0301                	addi	t1,t1,0
     628:	0900                	addi	s0,sp,144
     62a:	0018                	0x18
     62c:	0001                	nop
     62e:	01c00403          	lb	s0,28(zero) # 1c <register_fini-0x10094>
     632:	08090003          	lb	zero,128(s2)
     636:	0100                	addi	s0,sp,128
     638:	0300                	addi	s0,sp,384
     63a:	da04                	sw	s1,48(a2)
     63c:	0301                	addi	t1,t1,0
     63e:	0900                	addi	s0,sp,144
     640:	0008                	0x8
     642:	0001                	nop
     644:	01be0403          	lb	s0,27(t3) # 1a01b <__BSS_END__+0x77eb>
     648:	10090003          	lb	zero,256(s2)
     64c:	0100                	addi	s0,sp,128
     64e:	0300                	addi	s0,sp,384
     650:	f104                	sd	s1,32(a0)
     652:	0301                	addi	t1,t1,0
     654:	0900                	addi	s0,sp,144
     656:	0004                	0x4
     658:	0001                	nop
     65a:	01f10403          	lb	s0,31(sp)
     65e:	00090003          	lb	zero,0(s2)
     662:	0100                	addi	s0,sp,128
     664:	0300                	addi	s0,sp,384
     666:	f104                	sd	s1,32(a0)
     668:	0301                	addi	t1,t1,0
     66a:	0900                	addi	s0,sp,144
     66c:	0000                	unimp
     66e:	0001                	nop
     670:	01f10403          	lb	s0,31(sp)
     674:	00090003          	lb	zero,0(s2)
     678:	0100                	addi	s0,sp,128
     67a:	0300                	addi	s0,sp,384
     67c:	f304                	sd	s1,32(a4)
     67e:	0301                	addi	t1,t1,0
     680:	0900                	addi	s0,sp,144
     682:	0004                	0x4
     684:	0001                	nop
     686:	01f60403          	lb	s0,31(a2) # b01f <register_fini-0x5091>
     68a:	04090003          	lb	zero,64(s2)
     68e:	0100                	addi	s0,sp,128
     690:	0300                	addi	s0,sp,384
     692:	f604                	sd	s1,40(a2)
     694:	0301                	addi	t1,t1,0
     696:	0900                	addi	s0,sp,144
     698:	0000                	unimp
     69a:	0001                	nop
     69c:	01f60403          	lb	s0,31(a2)
     6a0:	00090003          	lb	zero,0(s2)
     6a4:	0100                	addi	s0,sp,128
     6a6:	0300                	addi	s0,sp,384
     6a8:	ff04                	sd	s1,56(a4)
     6aa:	0301                	addi	t1,t1,0
     6ac:	0900                	addi	s0,sp,144
     6ae:	0004                	0x4
     6b0:	0001                	nop
     6b2:	01ff0403          	lb	s0,31(t5)
     6b6:	04090003          	lb	zero,64(s2)
     6ba:	0100                	addi	s0,sp,128
     6bc:	0300                	addi	s0,sp,384
     6be:	a304                	fsd	fs1,0(a4)
     6c0:	0602                	c.slli64	a2
     6c2:	00097f03          	0x97f03
     6c6:	0100                	addi	s0,sp,128
     6c8:	0300                	addi	s0,sp,384
     6ca:	8004                	0x8004
     6cc:	0602                	c.slli64	a2
     6ce:	0c090103          	lb	sp,192(s2)
     6d2:	0100                	addi	s0,sp,128
     6d4:	0300                	addi	s0,sp,384
     6d6:	9704                	0x9704
     6d8:	0302                	c.slli64	t1
     6da:	0900                	addi	s0,sp,144
     6dc:	0010                	0x10
     6de:	0001                	nop
     6e0:	02980403          	lb	s0,41(a6)
     6e4:	0c090003          	lb	zero,192(s2)
     6e8:	0100                	addi	s0,sp,128
     6ea:	0300                	addi	s0,sp,384
     6ec:	a304                	fsd	fs1,0(a4)
     6ee:	0302                	c.slli64	t1
     6f0:	0900                	addi	s0,sp,144
     6f2:	0018                	0x18
     6f4:	0001                	nop
     6f6:	01f40403          	lb	s0,31(s0)
     6fa:	08090003          	lb	zero,128(s2)
     6fe:	0100                	addi	s0,sp,128
     700:	0300                	addi	s0,sp,384
     702:	8e04                	0x8e04
     704:	0602                	c.slli64	a2
     706:	08090003          	lb	zero,128(s2)
     70a:	0100                	addi	s0,sp,128
     70c:	0300                	addi	s0,sp,384
     70e:	8e04                	0x8e04
     710:	0602                	c.slli64	a2
     712:	0c090003          	lb	zero,192(s2)
     716:	0100                	addi	s0,sp,128
     718:	0300                	addi	s0,sp,384
     71a:	f204                	sd	s1,32(a2)
     71c:	0301                	addi	t1,t1,0
     71e:	0900                	addi	s0,sp,144
     720:	0008                	0x8
     722:	0001                	nop
     724:	02a50403          	lb	s0,42(a0) # 502a <register_fini-0xb086>
     728:	0c090003          	lb	zero,192(s2)
     72c:	0100                	addi	s0,sp,128
     72e:	0300                	addi	s0,sp,384
     730:	a704                	fsd	fs1,8(a4)
     732:	0302                	c.slli64	t1
     734:	0900                	addi	s0,sp,144
     736:	0004                	0x4
     738:	0001                	nop
     73a:	02a70403          	lb	s0,42(a4) # 8d858 <__BSS_END__+0x7b028>
     73e:	00090003          	lb	zero,0(s2)
     742:	0100                	addi	s0,sp,128
     744:	0300                	addi	s0,sp,384
     746:	a904                	fsd	fs1,16(a0)
     748:	0302                	c.slli64	t1
     74a:	0900                	addi	s0,sp,144
     74c:	0004                	0x4
     74e:	0001                	nop
     750:	02a90403          	lb	s0,42(s2)
     754:	00090003          	lb	zero,0(s2)
     758:	0100                	addi	s0,sp,128
     75a:	0306                	slli	t1,t1,0x1
     75c:	0900                	addi	s0,sp,144
     75e:	0008                	0x8
     760:	0001                	nop
     762:	02aa0403          	lb	s0,42(s4)
     766:	0306                	slli	t1,t1,0x1
     768:	0900                	addi	s0,sp,144
     76a:	000c                	0xc
     76c:	0001                	nop
     76e:	02b10403          	lb	s0,43(sp)
     772:	04090003          	lb	zero,64(s2)
     776:	0100                	addi	s0,sp,128
     778:	0300                	addi	s0,sp,384
     77a:	b104                	fsd	fs1,32(a0)
     77c:	0302                	c.slli64	t1
     77e:	0900                	addi	s0,sp,144
     780:	0000                	unimp
     782:	0001                	nop
     784:	02b10403          	lb	s0,43(sp)
     788:	04090003          	lb	zero,64(s2)
     78c:	0100                	addi	s0,sp,128
     78e:	0300                	addi	s0,sp,384
     790:	b104                	fsd	fs1,32(a0)
     792:	0302                	c.slli64	t1
     794:	0900                	addi	s0,sp,144
     796:	0000                	unimp
     798:	0001                	nop
     79a:	02b40403          	lb	s0,43(s0)
     79e:	0c090003          	lb	zero,192(s2)
     7a2:	0100                	addi	s0,sp,128
     7a4:	0300                	addi	s0,sp,384
     7a6:	c704                	sw	s1,8(a4)
     7a8:	0302                	c.slli64	t1
     7aa:	0900                	addi	s0,sp,144
     7ac:	000c                	0xc
     7ae:	0001                	nop
     7b0:	02c70403          	lb	s0,44(a4)
     7b4:	00090003          	lb	zero,0(s2)
     7b8:	0100                	addi	s0,sp,128
     7ba:	0300                	addi	s0,sp,384
     7bc:	c704                	sw	s1,8(a4)
     7be:	0302                	c.slli64	t1
     7c0:	0900                	addi	s0,sp,144
     7c2:	0000                	unimp
     7c4:	0001                	nop
     7c6:	02c70403          	lb	s0,44(a4)
     7ca:	00090003          	lb	zero,0(s2)
     7ce:	0100                	addi	s0,sp,128
     7d0:	0300                	addi	s0,sp,384
     7d2:	c704                	sw	s1,8(a4)
     7d4:	0302                	c.slli64	t1
     7d6:	0900                	addi	s0,sp,144
     7d8:	0000                	unimp
     7da:	0001                	nop
     7dc:	02c70403          	lb	s0,44(a4)
     7e0:	00090003          	lb	zero,0(s2)
     7e4:	0100                	addi	s0,sp,128
     7e6:	0300                	addi	s0,sp,384
     7e8:	c704                	sw	s1,8(a4)
     7ea:	0302                	c.slli64	t1
     7ec:	0900                	addi	s0,sp,144
     7ee:	0000                	unimp
     7f0:	0001                	nop
     7f2:	02c70403          	lb	s0,44(a4)
     7f6:	00090003          	lb	zero,0(s2)
     7fa:	0100                	addi	s0,sp,128
     7fc:	0300                	addi	s0,sp,384
     7fe:	c804                	sw	s1,16(s0)
     800:	0302                	c.slli64	t1
     802:	0900                	addi	s0,sp,144
     804:	0004                	0x4
     806:	0601                	addi	a2,a2,0
     808:	04090003          	lb	zero,64(s2)
     80c:	0100                	addi	s0,sp,128
     80e:	0300                	addi	s0,sp,384
     810:	a604                	fsd	fs1,8(a2)
     812:	0602                	c.slli64	a2
     814:	10090003          	lb	zero,256(s2)
     818:	0100                	addi	s0,sp,128
     81a:	0300                	addi	s0,sp,384
     81c:	a604                	fsd	fs1,8(a2)
     81e:	0302                	c.slli64	t1
     820:	0900                	addi	s0,sp,144
     822:	0000                	unimp
     824:	0001                	nop
     826:	02a60403          	lb	s0,42(a2)
     82a:	04090003          	lb	zero,64(s2)
     82e:	0100                	addi	s0,sp,128
     830:	0300                	addi	s0,sp,384
     832:	a604                	fsd	fs1,8(a2)
     834:	0302                	c.slli64	t1
     836:	0900                	addi	s0,sp,144
     838:	0000                	unimp
     83a:	0001                	nop
     83c:	02d80403          	lb	s0,45(a6)
     840:	08090003          	lb	zero,128(s2)
     844:	0100                	addi	s0,sp,128
     846:	0300                	addi	s0,sp,384
     848:	d804                	sw	s1,48(s0)
     84a:	0302                	c.slli64	t1
     84c:	0900                	addi	s0,sp,144
     84e:	0004                	0x4
     850:	0001                	nop
     852:	02e50403          	lb	s0,46(a0)
     856:	04090003          	lb	zero,64(s2)
     85a:	0100                	addi	s0,sp,128
     85c:	0300                	addi	s0,sp,384
     85e:	e504                	sd	s1,8(a0)
     860:	0302                	c.slli64	t1
     862:	0900                	addi	s0,sp,144
     864:	0000                	unimp
     866:	0001                	nop
     868:	02e50403          	lb	s0,46(a0)
     86c:	00090003          	lb	zero,0(s2)
     870:	0100                	addi	s0,sp,128
     872:	0300                	addi	s0,sp,384
     874:	e504                	sd	s1,8(a0)
     876:	0302                	c.slli64	t1
     878:	0900                	addi	s0,sp,144
     87a:	0000                	unimp
     87c:	0001                	nop
     87e:	02e50403          	lb	s0,46(a0)
     882:	00090003          	lb	zero,0(s2)
     886:	0100                	addi	s0,sp,128
     888:	0300                	addi	s0,sp,384
     88a:	e504                	sd	s1,8(a0)
     88c:	0302                	c.slli64	t1
     88e:	0900                	addi	s0,sp,144
     890:	0008                	0x8
     892:	0001                	nop
     894:	02e50403          	lb	s0,46(a0)
     898:	00090003          	lb	zero,0(s2)
     89c:	0100                	addi	s0,sp,128
     89e:	0300                	addi	s0,sp,384
     8a0:	e504                	sd	s1,8(a0)
     8a2:	0302                	c.slli64	t1
     8a4:	0900                	addi	s0,sp,144
     8a6:	0004                	0x4
     8a8:	0001                	nop
     8aa:	02e50403          	lb	s0,46(a0)
     8ae:	00090003          	lb	zero,0(s2)
     8b2:	0100                	addi	s0,sp,128
     8b4:	0300                	addi	s0,sp,384
     8b6:	e504                	sd	s1,8(a0)
     8b8:	0302                	c.slli64	t1
     8ba:	0900                	addi	s0,sp,144
     8bc:	0000                	unimp
     8be:	0001                	nop
     8c0:	02e50403          	lb	s0,46(a0)
     8c4:	04090003          	lb	zero,64(s2)
     8c8:	0100                	addi	s0,sp,128
     8ca:	0300                	addi	s0,sp,384
     8cc:	e504                	sd	s1,8(a0)
     8ce:	0302                	c.slli64	t1
     8d0:	0900                	addi	s0,sp,144
     8d2:	0000                	unimp
     8d4:	0001                	nop
     8d6:	02ef0403          	lb	s0,46(t5)
     8da:	04090003          	lb	zero,64(s2)
     8de:	0100                	addi	s0,sp,128
     8e0:	0300                	addi	s0,sp,384
     8e2:	ef04                	sd	s1,24(a4)
     8e4:	0302                	c.slli64	t1
     8e6:	0900                	addi	s0,sp,144
     8e8:	0008                	0x8
     8ea:	0001                	nop
     8ec:	02ef0403          	lb	s0,46(t5)
     8f0:	18090003          	lb	zero,384(s2)
     8f4:	0100                	addi	s0,sp,128
     8f6:	0300                	addi	s0,sp,384
     8f8:	d904                	sw	s1,48(a0)
     8fa:	0302                	c.slli64	t1
     8fc:	0900                	addi	s0,sp,144
     8fe:	0008                	0x8
     900:	0601                	addi	a2,a2,0
     902:	04090003          	lb	zero,64(s2)
     906:	0100                	addi	s0,sp,128
     908:	0300                	addi	s0,sp,384
     90a:	f004                	sd	s1,32(s0)
     90c:	0602                	c.slli64	a2
     90e:	0c090003          	lb	zero,192(s2)
     912:	0100                	addi	s0,sp,128
     914:	0300                	addi	s0,sp,384
     916:	f004                	sd	s1,32(s0)
     918:	0302                	c.slli64	t1
     91a:	0900                	addi	s0,sp,144
     91c:	0004                	0x4
     91e:	0601                	addi	a2,a2,0
     920:	14097f03          	0x14097f03
     924:	0100                	addi	s0,sp,128
     926:	0200                	addi	s0,sp,256
     928:	2f04                	fld	fs1,24(a4)
     92a:	0306                	slli	t1,t1,0x1
     92c:	0902                	c.slli64	s2
     92e:	0024                	addi	s1,sp,8
     930:	0001                	nop
     932:	0402                	c.slli64	s0
     934:	0900032f          	0x900032f
     938:	0000                	unimp
     93a:	0001                	nop
     93c:	0402                	c.slli64	s0
     93e:	0900032f          	0x900032f
     942:	0000                	unimp
     944:	0001                	nop
     946:	0402                	c.slli64	s0
     948:	0900033f 00010008 	0x100080900033f
     950:	0402                	c.slli64	s0
     952:	0900033f 00010000 	0x100000900033f
     95a:	0402                	c.slli64	s0
     95c:	0900033f 06010004 	0x60100040900033f
     964:	08090003          	lb	zero,128(s2)
     968:	0100                	addi	s0,sp,128
     96a:	0200                	addi	s0,sp,256
     96c:	4f04                	lw	s1,24(a4)
     96e:	0306                	slli	t1,t1,0x1
     970:	0900                	addi	s0,sp,144
     972:	0010                	0x10
     974:	0001                	nop
     976:	0402                	c.slli64	s0
     978:	0900034f          	fnmadd.s	ft6,ft0,fa6,ft1,rne
     97c:	0000                	unimp
     97e:	0001                	nop
     980:	0402                	c.slli64	s0
     982:	0900034f          	fnmadd.s	ft6,ft0,fa6,ft1,rne
     986:	0008                	0x8
     988:	0001                	nop
     98a:	0402                	c.slli64	s0
     98c:	0650                	addi	a2,sp,772
     98e:	04090003          	lb	zero,64(s2)
     992:	0100                	addi	s0,sp,128
     994:	04090003          	lb	zero,64(s2)
     998:	0100                	addi	s0,sp,128
     99a:	0200                	addi	s0,sp,256
     99c:	5a04                	lw	s1,48(a2)
     99e:	0306                	slli	t1,t1,0x1
     9a0:	0900                	addi	s0,sp,144
     9a2:	000c                	0xc
     9a4:	0001                	nop
     9a6:	0402                	c.slli64	s0
     9a8:	035a                	slli	t1,t1,0x16
     9aa:	0900                	addi	s0,sp,144
     9ac:	0000                	unimp
     9ae:	0001                	nop
     9b0:	0402                	c.slli64	s0
     9b2:	035a                	slli	t1,t1,0x16
     9b4:	0900                	addi	s0,sp,144
     9b6:	0000                	unimp
     9b8:	0001                	nop
     9ba:	0402                	c.slli64	s0
     9bc:	035a                	slli	t1,t1,0x16
     9be:	0900                	addi	s0,sp,144
     9c0:	0000                	unimp
     9c2:	0001                	nop
     9c4:	0402                	c.slli64	s0
     9c6:	035a                	slli	t1,t1,0x16
     9c8:	0900                	addi	s0,sp,144
     9ca:	0000                	unimp
     9cc:	0001                	nop
     9ce:	0402                	c.slli64	s0
     9d0:	035a                	slli	t1,t1,0x16
     9d2:	0900                	addi	s0,sp,144
     9d4:	0000                	unimp
     9d6:	0001                	nop
     9d8:	0402                	c.slli64	s0
     9da:	035a                	slli	t1,t1,0x16
     9dc:	0900                	addi	s0,sp,144
     9de:	0000                	unimp
     9e0:	0501                	addi	a0,a0,0
     9e2:	0001                	nop
     9e4:	0402                	c.slli64	s0
     9e6:	065a                	slli	a2,a2,0x16
     9e8:	10090403          	lb	s0,256(s2)
     9ec:	0100                	addi	s0,sp,128
     9ee:	0305                	addi	t1,t1,1
     9f0:	0200                	addi	s0,sp,256
     9f2:	5a04                	lw	s1,48(a2)
     9f4:	04097c03          	0x4097c03
     9f8:	0100                	addi	s0,sp,128
     9fa:	0105                	addi	sp,sp,1
     9fc:	0200                	addi	s0,sp,256
     9fe:	5a04                	lw	s1,48(a2)
     a00:	04090403          	lb	s0,64(s2)
     a04:	0100                	addi	s0,sp,128
     a06:	0305                	addi	t1,t1,1
     a08:	0200                	addi	s0,sp,256
     a0a:	5a04                	lw	s1,48(a2)
     a0c:	04097c03          	0x4097c03
     a10:	0100                	addi	s0,sp,128
     a12:	0200                	addi	s0,sp,256
     a14:	5a04                	lw	s1,48(a2)
     a16:	0306                	slli	t1,t1,0x1
     a18:	0900                	addi	s0,sp,144
     a1a:	0004                	0x4
     a1c:	0001                	nop
     a1e:	0402                	c.slli64	s0
     a20:	035a                	slli	t1,t1,0x16
     a22:	0900                	addi	s0,sp,144
     a24:	0000                	unimp
     a26:	0001                	nop
     a28:	0402                	c.slli64	s0
     a2a:	035a                	slli	t1,t1,0x16
     a2c:	0900                	addi	s0,sp,144
     a2e:	0000                	unimp
     a30:	0001                	nop
     a32:	0402                	c.slli64	s0
     a34:	035a                	slli	t1,t1,0x16
     a36:	0901                	addi	s2,s2,0
     a38:	0000                	unimp
     a3a:	0001                	nop
     a3c:	0402                	c.slli64	s0
     a3e:	035a                	slli	t1,t1,0x16
     a40:	0900                	addi	s0,sp,144
     a42:	0000                	unimp
     a44:	0001                	nop
     a46:	0402                	c.slli64	s0
     a48:	035a                	slli	t1,t1,0x16
     a4a:	0900                	addi	s0,sp,144
     a4c:	0000                	unimp
     a4e:	0001                	nop
     a50:	0402                	c.slli64	s0
     a52:	035a                	slli	t1,t1,0x16
     a54:	0902                	c.slli64	s2
     a56:	0000                	unimp
     a58:	0501                	addi	a0,a0,0
     a5a:	0001                	nop
     a5c:	0402                	c.slli64	s0
     a5e:	065a                	slli	a2,a2,0x16
     a60:	00090103          	lb	sp,0(s2)
     a64:	0100                	addi	s0,sp,128
     a66:	0305                	addi	t1,t1,1
     a68:	14097a03          	0x14097a03
     a6c:	0100                	addi	s0,sp,128
     a6e:	14090103          	lb	sp,320(s2)
     a72:	0100                	addi	s0,sp,128
     a74:	1009                	c.nop	-30
     a76:	0000                	unimp
     a78:	0101                	addi	sp,sp,0
     a7a:	0854                	addi	a3,sp,20
     a7c:	0000                	unimp
     a7e:	00930003          	lb	zero,9(t1) # 90002bb <__BSS_END__+0x8feda8b>
     a82:	0000                	unimp
     a84:	0101                	addi	sp,sp,0
     a86:	000d0efb          	0xd0efb
     a8a:	0101                	addi	sp,sp,0
     a8c:	0101                	addi	sp,sp,0
     a8e:	0000                	unimp
     a90:	0100                	addi	s0,sp,128
     a92:	0000                	unimp
     a94:	2e01                	sext.w	t3,t3
     a96:	2f2e                	fld	ft10,200(sp)
     a98:	2e2e                	fld	ft8,200(sp)
     a9a:	2f2e2e2f          	0x2f2e2e2f
     a9e:	2e2e                	fld	ft8,200(sp)
     aa0:	7369722f          	0x7369722f
     aa4:	672d7663          	bgeu	s10,s2,1110 <register_fini-0xefa0>
     aa8:	6c2f6363          	bltu	t5,sp,116e <register_fini-0xef42>
     aac:	6269                	lui	tp,0x1a
     aae:	2f636367          	0x2f636367
     ab2:	74666f73          	csrrsi	t5,0x746,12
     ab6:	662d                	lui	a2,0xb
     ab8:	0070                	addi	a2,sp,12
     aba:	2e2e                	fld	ft8,200(sp)
     abc:	2f2e2e2f          	0x2f2e2e2f
     ac0:	2e2e                	fld	ft8,200(sp)
     ac2:	2f2e2e2f          	0x2f2e2e2f
     ac6:	6972                	ld	s2,280(sp)
     ac8:	2d766373          	csrrsi	t1,0x2d7,12
     acc:	2f636367          	0x2f636367
     ad0:	696c                	ld	a1,208(a0)
     ad2:	6762                	ld	a4,24(sp)
     ad4:	2e2f6363          	bltu	t5,sp,dba <register_fini-0xf2f6>
     ad8:	2f2e                	fld	ft10,200(sp)
     ada:	6e69                	lui	t3,0x1a
     adc:	64756c63          	bltu	a0,t2,1134 <register_fini-0xef7c>
     ae0:	0065                	c.nop	25
     ae2:	6d00                	ld	s0,24(a0)
     ae4:	6c75                	lui	s8,0x1d
     ae6:	6664                	ld	s1,200(a2)
     ae8:	00632e33          	slt	t3,t1,t1
     aec:	0001                	nop
     aee:	7300                	ld	s0,32(a4)
     af0:	2d74666f          	jal	a2,475c6 <__BSS_END__+0x34d96>
     af4:	7066                	0x7066
     af6:	682e                	ld	a6,200(sp)
     af8:	0100                	addi	s0,sp,128
     afa:	0000                	unimp
     afc:	6f64                	ld	s1,216(a4)
     afe:	6275                	lui	tp,0x1d
     b00:	656c                	ld	a1,200(a0)
     b02:	682e                	ld	a6,200(sp)
     b04:	0100                	addi	s0,sp,128
     b06:	0000                	unimp
     b08:	6f6c                	ld	a1,216(a4)
     b0a:	676e                	ld	a4,216(sp)
     b0c:	6f6c                	ld	a1,216(a4)
     b0e:	676e                	ld	a4,216(sp)
     b10:	682e                	ld	a6,200(sp)
     b12:	0200                	addi	s0,sp,256
     b14:	0000                	unimp
     b16:	0500                	addi	s0,sp,640
     b18:	0001                	nop
     b1a:	0209                	addi	tp,tp,2
     b1c:	086c                	addi	a1,sp,28
     b1e:	0001                	nop
     b20:	0000                	unimp
     b22:	0000                	unimp
     b24:	05012303          	lw	t1,80(sp)
     b28:	09010303          	lb	t1,144(sp)
     b2c:	0000                	unimp
     b2e:	0301                	addi	t1,t1,0
     b30:	0900                	addi	s0,sp,144
     b32:	0000                	unimp
     b34:	0501                	addi	a0,a0,0
     b36:	030d                	addi	t1,t1,3
     b38:	0900                	addi	s0,sp,144
     b3a:	0000                	unimp
     b3c:	0501                	addi	a0,a0,0
     b3e:	09010303          	lb	t1,144(sp)
     b42:	0000                	unimp
     b44:	0301                	addi	t1,t1,0
     b46:	0900                	addi	s0,sp,144
     b48:	0000                	unimp
     b4a:	0301                	addi	t1,t1,0
     b4c:	0900                	addi	s0,sp,144
     b4e:	0000                	unimp
     b50:	0301                	addi	t1,t1,0
     b52:	0900                	addi	s0,sp,144
     b54:	0000                	unimp
     b56:	0301                	addi	t1,t1,0
     b58:	0901                	addi	s2,s2,0
     b5a:	0000                	unimp
     b5c:	0301                	addi	t1,t1,0
     b5e:	0900                	addi	s0,sp,144
     b60:	0000                	unimp
     b62:	0301                	addi	t1,t1,0
     b64:	0900                	addi	s0,sp,144
     b66:	0000                	unimp
     b68:	0301                	addi	t1,t1,0
     b6a:	0900                	addi	s0,sp,144
     b6c:	0000                	unimp
     b6e:	0301                	addi	t1,t1,0
     b70:	0901                	addi	s2,s2,0
     b72:	0000                	unimp
     b74:	0301                	addi	t1,t1,0
     b76:	0900                	addi	s0,sp,144
     b78:	0000                	unimp
     b7a:	0301                	addi	t1,t1,0
     b7c:	0900                	addi	s0,sp,144
     b7e:	0000                	unimp
     b80:	0301                	addi	t1,t1,0
     b82:	0900                	addi	s0,sp,144
     b84:	0000                	unimp
     b86:	0301                	addi	t1,t1,0
     b88:	0901                	addi	s2,s2,0
     b8a:	0000                	unimp
     b8c:	0301                	addi	t1,t1,0
     b8e:	0902                	c.slli64	s2
     b90:	0000                	unimp
     b92:	0301                	addi	t1,t1,0
     b94:	0901                	addi	s2,s2,0
     b96:	0000                	unimp
     b98:	0301                	addi	t1,t1,0
     b9a:	0900                	addi	s0,sp,144
     b9c:	0000                	unimp
     b9e:	0301                	addi	t1,t1,0
     ba0:	0900                	addi	s0,sp,144
     ba2:	0000                	unimp
     ba4:	0301                	addi	t1,t1,0
     ba6:	0900                	addi	s0,sp,144
     ba8:	0000                	unimp
     baa:	0301                	addi	t1,t1,0
     bac:	0900                	addi	s0,sp,144
     bae:	0000                	unimp
     bb0:	0501                	addi	a0,a0,0
     bb2:	0601                	addi	a2,a2,0
     bb4:	00097803          	0x97803
     bb8:	0100                	addi	s0,sp,128
     bba:	0305                	addi	t1,t1,1
     bbc:	04090803          	lb	a6,64(s2)
     bc0:	0100                	addi	s0,sp,128
     bc2:	0105                	addi	sp,sp,1
     bc4:	04097803          	0x4097803
     bc8:	0100                	addi	s0,sp,128
     bca:	0305                	addi	t1,t1,1
     bcc:	0c090803          	lb	a6,192(s2)
     bd0:	0100                	addi	s0,sp,128
     bd2:	0105                	addi	sp,sp,1
     bd4:	04097803          	0x4097803
     bd8:	0100                	addi	s0,sp,128
     bda:	0305                	addi	t1,t1,1
     bdc:	10090803          	lb	a6,256(s2)
     be0:	0100                	addi	s0,sp,128
     be2:	0105                	addi	sp,sp,1
     be4:	04097803          	0x4097803
     be8:	0100                	addi	s0,sp,128
     bea:	0305                	addi	t1,t1,1
     bec:	04090803          	lb	a6,64(s2)
     bf0:	0100                	addi	s0,sp,128
     bf2:	0306                	slli	t1,t1,0x1
     bf4:	0900                	addi	s0,sp,144
     bf6:	0004                	0x4
     bf8:	0301                	addi	t1,t1,0
     bfa:	0900                	addi	s0,sp,144
     bfc:	0000                	unimp
     bfe:	0301                	addi	t1,t1,0
     c00:	0900                	addi	s0,sp,144
     c02:	0004                	0x4
     c04:	0301                	addi	t1,t1,0
     c06:	0900                	addi	s0,sp,144
     c08:	0000                	unimp
     c0a:	0301                	addi	t1,t1,0
     c0c:	0900                	addi	s0,sp,144
     c0e:	0000                	unimp
     c10:	0001                	nop
     c12:	0402                	c.slli64	s0
     c14:	0301                	addi	t1,t1,0
     c16:	0900                	addi	s0,sp,144
     c18:	0010                	0x10
     c1a:	0001                	nop
     c1c:	0402                	c.slli64	s0
     c1e:	0301                	addi	t1,t1,0
     c20:	0900                	addi	s0,sp,144
     c22:	0000                	unimp
     c24:	0001                	nop
     c26:	0402                	c.slli64	s0
     c28:	0301                	addi	t1,t1,0
     c2a:	0900                	addi	s0,sp,144
     c2c:	0000                	unimp
     c2e:	0001                	nop
     c30:	0402                	c.slli64	s0
     c32:	0301                	addi	t1,t1,0
     c34:	0900                	addi	s0,sp,144
     c36:	0000                	unimp
     c38:	0001                	nop
     c3a:	0402                	c.slli64	s0
     c3c:	0301                	addi	t1,t1,0
     c3e:	0900                	addi	s0,sp,144
     c40:	0010                	0x10
     c42:	0001                	nop
     c44:	0402                	c.slli64	s0
     c46:	0301                	addi	t1,t1,0
     c48:	0900                	addi	s0,sp,144
     c4a:	0000                	unimp
     c4c:	0001                	nop
     c4e:	0402                	c.slli64	s0
     c50:	0301                	addi	t1,t1,0
     c52:	0900                	addi	s0,sp,144
     c54:	0004                	0x4
     c56:	0001                	nop
     c58:	0402                	c.slli64	s0
     c5a:	0301                	addi	t1,t1,0
     c5c:	0900                	addi	s0,sp,144
     c5e:	0000                	unimp
     c60:	0001                	nop
     c62:	0402                	c.slli64	s0
     c64:	0312                	slli	t1,t1,0x4
     c66:	0900                	addi	s0,sp,144
     c68:	0000                	unimp
     c6a:	0001                	nop
     c6c:	0402                	c.slli64	s0
     c6e:	0312                	slli	t1,t1,0x4
     c70:	0900                	addi	s0,sp,144
     c72:	0000                	unimp
     c74:	0001                	nop
     c76:	0402                	c.slli64	s0
     c78:	0308                	addi	a0,sp,384
     c7a:	0900                	addi	s0,sp,144
     c7c:	0004                	0x4
     c7e:	0001                	nop
     c80:	0402                	c.slli64	s0
     c82:	0308                	addi	a0,sp,384
     c84:	0900                	addi	s0,sp,144
     c86:	0000                	unimp
     c88:	0001                	nop
     c8a:	0402                	c.slli64	s0
     c8c:	0308                	addi	a0,sp,384
     c8e:	0901                	addi	s2,s2,0
     c90:	0000                	unimp
     c92:	0001                	nop
     c94:	0402                	c.slli64	s0
     c96:	0308                	addi	a0,sp,384
     c98:	0900                	addi	s0,sp,144
     c9a:	0000                	unimp
     c9c:	0001                	nop
     c9e:	0402                	c.slli64	s0
     ca0:	0308                	addi	a0,sp,384
     ca2:	0900                	addi	s0,sp,144
     ca4:	0000                	unimp
     ca6:	0001                	nop
     ca8:	0402                	c.slli64	s0
     caa:	0308                	addi	a0,sp,384
     cac:	0900                	addi	s0,sp,144
     cae:	0000                	unimp
     cb0:	0001                	nop
     cb2:	0402                	c.slli64	s0
     cb4:	0308                	addi	a0,sp,384
     cb6:	0900                	addi	s0,sp,144
     cb8:	0000                	unimp
     cba:	0001                	nop
     cbc:	0402                	c.slli64	s0
     cbe:	0308                	addi	a0,sp,384
     cc0:	0900                	addi	s0,sp,144
     cc2:	0010                	0x10
     cc4:	0001                	nop
     cc6:	0402                	c.slli64	s0
     cc8:	0308                	addi	a0,sp,384
     cca:	0900                	addi	s0,sp,144
     ccc:	0004                	0x4
     cce:	0001                	nop
     cd0:	0402                	c.slli64	s0
     cd2:	0308                	addi	a0,sp,384
     cd4:	0900                	addi	s0,sp,144
     cd6:	0004                	0x4
     cd8:	0001                	nop
     cda:	0402                	c.slli64	s0
     cdc:	0308                	addi	a0,sp,384
     cde:	0900                	addi	s0,sp,144
     ce0:	0000                	unimp
     ce2:	0001                	nop
     ce4:	0402                	c.slli64	s0
     ce6:	0308                	addi	a0,sp,384
     ce8:	0900                	addi	s0,sp,144
     cea:	0000                	unimp
     cec:	0601                	addi	a2,a2,0
     cee:	04090003          	lb	zero,64(s2)
     cf2:	0100                	addi	s0,sp,128
     cf4:	0200                	addi	s0,sp,256
     cf6:	0104                	addi	s1,sp,128
     cf8:	0306                	slli	t1,t1,0x1
     cfa:	0900                	addi	s0,sp,144
     cfc:	0008                	0x8
     cfe:	0001                	nop
     d00:	0402                	c.slli64	s0
     d02:	0301                	addi	t1,t1,0
     d04:	0900                	addi	s0,sp,144
     d06:	0000                	unimp
     d08:	0001                	nop
     d0a:	0402                	c.slli64	s0
     d0c:	0301                	addi	t1,t1,0
     d0e:	0900                	addi	s0,sp,144
     d10:	0000                	unimp
     d12:	0001                	nop
     d14:	0402                	c.slli64	s0
     d16:	0301                	addi	t1,t1,0
     d18:	0900                	addi	s0,sp,144
     d1a:	0000                	unimp
     d1c:	0001                	nop
     d1e:	0402                	c.slli64	s0
     d20:	0301                	addi	t1,t1,0
     d22:	0900                	addi	s0,sp,144
     d24:	0010                	0x10
     d26:	0001                	nop
     d28:	0402                	c.slli64	s0
     d2a:	0301                	addi	t1,t1,0
     d2c:	0900                	addi	s0,sp,144
     d2e:	0000                	unimp
     d30:	0001                	nop
     d32:	0402                	c.slli64	s0
     d34:	0301                	addi	t1,t1,0
     d36:	0900                	addi	s0,sp,144
     d38:	0004                	0x4
     d3a:	0001                	nop
     d3c:	0402                	c.slli64	s0
     d3e:	0301                	addi	t1,t1,0
     d40:	0900                	addi	s0,sp,144
     d42:	0000                	unimp
     d44:	0001                	nop
     d46:	0402                	c.slli64	s0
     d48:	0312                	slli	t1,t1,0x4
     d4a:	0900                	addi	s0,sp,144
     d4c:	0000                	unimp
     d4e:	0001                	nop
     d50:	0402                	c.slli64	s0
     d52:	0312                	slli	t1,t1,0x4
     d54:	0900                	addi	s0,sp,144
     d56:	0000                	unimp
     d58:	0001                	nop
     d5a:	0402                	c.slli64	s0
     d5c:	0308                	addi	a0,sp,384
     d5e:	0900                	addi	s0,sp,144
     d60:	0004                	0x4
     d62:	0001                	nop
     d64:	0402                	c.slli64	s0
     d66:	0308                	addi	a0,sp,384
     d68:	0900                	addi	s0,sp,144
     d6a:	0000                	unimp
     d6c:	0001                	nop
     d6e:	0402                	c.slli64	s0
     d70:	0308                	addi	a0,sp,384
     d72:	0901                	addi	s2,s2,0
     d74:	0000                	unimp
     d76:	0001                	nop
     d78:	0402                	c.slli64	s0
     d7a:	0308                	addi	a0,sp,384
     d7c:	0900                	addi	s0,sp,144
     d7e:	0000                	unimp
     d80:	0001                	nop
     d82:	0402                	c.slli64	s0
     d84:	0308                	addi	a0,sp,384
     d86:	0900                	addi	s0,sp,144
     d88:	0018                	0x18
     d8a:	0001                	nop
     d8c:	0402                	c.slli64	s0
     d8e:	0308                	addi	a0,sp,384
     d90:	0900                	addi	s0,sp,144
     d92:	0004                	0x4
     d94:	0001                	nop
     d96:	0402                	c.slli64	s0
     d98:	0302                	c.slli64	t1
     d9a:	097e                	slli	s2,s2,0x1f
     d9c:	001c                	0x1c
     d9e:	0001                	nop
     da0:	0402                	c.slli64	s0
     da2:	0312                	slli	t1,t1,0x4
     da4:	0900                	addi	s0,sp,144
     da6:	0004                	0x4
     da8:	0001                	nop
     daa:	0402                	c.slli64	s0
     dac:	0312                	slli	t1,t1,0x4
     dae:	0900                	addi	s0,sp,144
     db0:	0000                	unimp
     db2:	0001                	nop
     db4:	0402                	c.slli64	s0
     db6:	0312                	slli	t1,t1,0x4
     db8:	0900                	addi	s0,sp,144
     dba:	0000                	unimp
     dbc:	0001                	nop
     dbe:	0402                	c.slli64	s0
     dc0:	0312                	slli	t1,t1,0x4
     dc2:	0900                	addi	s0,sp,144
     dc4:	0000                	unimp
     dc6:	0001                	nop
     dc8:	0402                	c.slli64	s0
     dca:	0312                	slli	t1,t1,0x4
     dcc:	0900                	addi	s0,sp,144
     dce:	0000                	unimp
     dd0:	0001                	nop
     dd2:	0402                	c.slli64	s0
     dd4:	0312                	slli	t1,t1,0x4
     dd6:	0900                	addi	s0,sp,144
     dd8:	0000                	unimp
     dda:	0001                	nop
     ddc:	0402                	c.slli64	s0
     dde:	0312                	slli	t1,t1,0x4
     de0:	0900                	addi	s0,sp,144
     de2:	0000                	unimp
     de4:	0001                	nop
     de6:	0402                	c.slli64	s0
     de8:	0312                	slli	t1,t1,0x4
     dea:	0900                	addi	s0,sp,144
     dec:	000c                	0xc
     dee:	0001                	nop
     df0:	0402                	c.slli64	s0
     df2:	0312                	slli	t1,t1,0x4
     df4:	0900                	addi	s0,sp,144
     df6:	0000                	unimp
     df8:	0001                	nop
     dfa:	0402                	c.slli64	s0
     dfc:	0312                	slli	t1,t1,0x4
     dfe:	0900                	addi	s0,sp,144
     e00:	0000                	unimp
     e02:	0001                	nop
     e04:	0402                	c.slli64	s0
     e06:	0312                	slli	t1,t1,0x4
     e08:	0900                	addi	s0,sp,144
     e0a:	0000                	unimp
     e0c:	0001                	nop
     e0e:	0402                	c.slli64	s0
     e10:	0312                	slli	t1,t1,0x4
     e12:	0900                	addi	s0,sp,144
     e14:	0000                	unimp
     e16:	0001                	nop
     e18:	0402                	c.slli64	s0
     e1a:	0312                	slli	t1,t1,0x4
     e1c:	0900                	addi	s0,sp,144
     e1e:	000c                	0xc
     e20:	0001                	nop
     e22:	0402                	c.slli64	s0
     e24:	0312                	slli	t1,t1,0x4
     e26:	0900                	addi	s0,sp,144
     e28:	0000                	unimp
     e2a:	0001                	nop
     e2c:	0402                	c.slli64	s0
     e2e:	09000303          	lb	t1,144(zero) # 90 <register_fini-0x10020>
     e32:	0008                	0x8
     e34:	0601                	addi	a2,a2,0
     e36:	0c090003          	lb	zero,192(s2)
     e3a:	0100                	addi	s0,sp,128
     e3c:	0200                	addi	s0,sp,256
     e3e:	0204                	addi	s1,sp,256
     e40:	0306                	slli	t1,t1,0x1
     e42:	0901                	addi	s2,s2,0
     e44:	0014                	0x14
     e46:	0001                	nop
     e48:	0402                	c.slli64	s0
     e4a:	0312                	slli	t1,t1,0x4
     e4c:	0900                	addi	s0,sp,144
     e4e:	0004                	0x4
     e50:	0001                	nop
     e52:	0402                	c.slli64	s0
     e54:	0312                	slli	t1,t1,0x4
     e56:	0900                	addi	s0,sp,144
     e58:	0000                	unimp
     e5a:	0001                	nop
     e5c:	0402                	c.slli64	s0
     e5e:	0312                	slli	t1,t1,0x4
     e60:	0900                	addi	s0,sp,144
     e62:	0000                	unimp
     e64:	0001                	nop
     e66:	0402                	c.slli64	s0
     e68:	0312                	slli	t1,t1,0x4
     e6a:	0900                	addi	s0,sp,144
     e6c:	0000                	unimp
     e6e:	0001                	nop
     e70:	0402                	c.slli64	s0
     e72:	0312                	slli	t1,t1,0x4
     e74:	0900                	addi	s0,sp,144
     e76:	0000                	unimp
     e78:	0001                	nop
     e7a:	0402                	c.slli64	s0
     e7c:	0312                	slli	t1,t1,0x4
     e7e:	0900                	addi	s0,sp,144
     e80:	0000                	unimp
     e82:	0001                	nop
     e84:	0402                	c.slli64	s0
     e86:	0312                	slli	t1,t1,0x4
     e88:	0900                	addi	s0,sp,144
     e8a:	0000                	unimp
     e8c:	0001                	nop
     e8e:	0402                	c.slli64	s0
     e90:	0312                	slli	t1,t1,0x4
     e92:	0900                	addi	s0,sp,144
     e94:	000c                	0xc
     e96:	0001                	nop
     e98:	0402                	c.slli64	s0
     e9a:	0312                	slli	t1,t1,0x4
     e9c:	0900                	addi	s0,sp,144
     e9e:	0000                	unimp
     ea0:	0001                	nop
     ea2:	0402                	c.slli64	s0
     ea4:	0312                	slli	t1,t1,0x4
     ea6:	0900                	addi	s0,sp,144
     ea8:	0000                	unimp
     eaa:	0001                	nop
     eac:	0402                	c.slli64	s0
     eae:	0312                	slli	t1,t1,0x4
     eb0:	0900                	addi	s0,sp,144
     eb2:	0000                	unimp
     eb4:	0001                	nop
     eb6:	0402                	c.slli64	s0
     eb8:	0312                	slli	t1,t1,0x4
     eba:	0900                	addi	s0,sp,144
     ebc:	0000                	unimp
     ebe:	0001                	nop
     ec0:	0402                	c.slli64	s0
     ec2:	0312                	slli	t1,t1,0x4
     ec4:	0900                	addi	s0,sp,144
     ec6:	000c                	0xc
     ec8:	0001                	nop
     eca:	0402                	c.slli64	s0
     ecc:	0312                	slli	t1,t1,0x4
     ece:	0900                	addi	s0,sp,144
     ed0:	0000                	unimp
     ed2:	0001                	nop
     ed4:	0402                	c.slli64	s0
     ed6:	09000303          	lb	t1,144(zero) # 90 <register_fini-0x10020>
     eda:	0008                	0x8
     edc:	0601                	addi	a2,a2,0
     ede:	0c090003          	lb	zero,192(s2)
     ee2:	0100                	addi	s0,sp,128
     ee4:	0200                	addi	s0,sp,256
     ee6:	0204                	addi	s1,sp,256
     ee8:	0306                	slli	t1,t1,0x1
     eea:	0901                	addi	s2,s2,0
     eec:	0014                	0x14
     eee:	0001                	nop
     ef0:	0402                	c.slli64	s0
     ef2:	0302                	c.slli64	t1
     ef4:	0900                	addi	s0,sp,144
     ef6:	0000                	unimp
     ef8:	0001                	nop
     efa:	0402                	c.slli64	s0
     efc:	0302                	c.slli64	t1
     efe:	0900                	addi	s0,sp,144
     f00:	0000                	unimp
     f02:	0001                	nop
     f04:	0402                	c.slli64	s0
     f06:	0302                	c.slli64	t1
     f08:	0900                	addi	s0,sp,144
     f0a:	0000                	unimp
     f0c:	0001                	nop
     f0e:	0402                	c.slli64	s0
     f10:	0302                	c.slli64	t1
     f12:	0900                	addi	s0,sp,144
     f14:	0000                	unimp
     f16:	0001                	nop
     f18:	0402                	c.slli64	s0
     f1a:	0302                	c.slli64	t1
     f1c:	0900                	addi	s0,sp,144
     f1e:	0000                	unimp
     f20:	0001                	nop
     f22:	0402                	c.slli64	s0
     f24:	0302                	c.slli64	t1
     f26:	0900                	addi	s0,sp,144
     f28:	0000                	unimp
     f2a:	0001                	nop
     f2c:	0402                	c.slli64	s0
     f2e:	0302                	c.slli64	t1
     f30:	0900                	addi	s0,sp,144
     f32:	0000                	unimp
     f34:	0001                	nop
     f36:	0402                	c.slli64	s0
     f38:	0302                	c.slli64	t1
     f3a:	0900                	addi	s0,sp,144
     f3c:	0000                	unimp
     f3e:	0001                	nop
     f40:	0402                	c.slli64	s0
     f42:	0302                	c.slli64	t1
     f44:	0900                	addi	s0,sp,144
     f46:	000c                	0xc
     f48:	0001                	nop
     f4a:	0402                	c.slli64	s0
     f4c:	0302                	c.slli64	t1
     f4e:	0900                	addi	s0,sp,144
     f50:	0000                	unimp
     f52:	0001                	nop
     f54:	0402                	c.slli64	s0
     f56:	0302                	c.slli64	t1
     f58:	0900                	addi	s0,sp,144
     f5a:	0004                	0x4
     f5c:	0001                	nop
     f5e:	0402                	c.slli64	s0
     f60:	0302                	c.slli64	t1
     f62:	0900                	addi	s0,sp,144
     f64:	0000                	unimp
     f66:	0001                	nop
     f68:	0402                	c.slli64	s0
     f6a:	0302                	c.slli64	t1
     f6c:	0900                	addi	s0,sp,144
     f6e:	000c                	0xc
     f70:	0001                	nop
     f72:	0402                	c.slli64	s0
     f74:	0302                	c.slli64	t1
     f76:	0900                	addi	s0,sp,144
     f78:	0004                	0x4
     f7a:	0001                	nop
     f7c:	0402                	c.slli64	s0
     f7e:	0302                	c.slli64	t1
     f80:	0900                	addi	s0,sp,144
     f82:	0004                	0x4
     f84:	0001                	nop
     f86:	0402                	c.slli64	s0
     f88:	0302                	c.slli64	t1
     f8a:	0900                	addi	s0,sp,144
     f8c:	0004                	0x4
     f8e:	0001                	nop
     f90:	0402                	c.slli64	s0
     f92:	0302                	c.slli64	t1
     f94:	0900                	addi	s0,sp,144
     f96:	0000                	unimp
     f98:	0001                	nop
     f9a:	0402                	c.slli64	s0
     f9c:	0302                	c.slli64	t1
     f9e:	0900                	addi	s0,sp,144
     fa0:	0008                	0x8
     fa2:	0001                	nop
     fa4:	0402                	c.slli64	s0
     fa6:	0302                	c.slli64	t1
     fa8:	0900                	addi	s0,sp,144
     faa:	0000                	unimp
     fac:	0001                	nop
     fae:	0402                	c.slli64	s0
     fb0:	0302                	c.slli64	t1
     fb2:	0900                	addi	s0,sp,144
     fb4:	0004                	0x4
     fb6:	0001                	nop
     fb8:	0402                	c.slli64	s0
     fba:	0302                	c.slli64	t1
     fbc:	0900                	addi	s0,sp,144
     fbe:	0004                	0x4
     fc0:	0001                	nop
     fc2:	0402                	c.slli64	s0
     fc4:	0302                	c.slli64	t1
     fc6:	0900                	addi	s0,sp,144
     fc8:	0000                	unimp
     fca:	0001                	nop
     fcc:	0402                	c.slli64	s0
     fce:	0302                	c.slli64	t1
     fd0:	0900                	addi	s0,sp,144
     fd2:	0008                	0x8
     fd4:	0001                	nop
     fd6:	0402                	c.slli64	s0
     fd8:	0302                	c.slli64	t1
     fda:	0900                	addi	s0,sp,144
     fdc:	0000                	unimp
     fde:	0001                	nop
     fe0:	0402                	c.slli64	s0
     fe2:	0302                	c.slli64	t1
     fe4:	0900                	addi	s0,sp,144
     fe6:	0004                	0x4
     fe8:	0001                	nop
     fea:	0402                	c.slli64	s0
     fec:	0302                	c.slli64	t1
     fee:	0900                	addi	s0,sp,144
     ff0:	0004                	0x4
     ff2:	0001                	nop
     ff4:	0402                	c.slli64	s0
     ff6:	0302                	c.slli64	t1
     ff8:	0900                	addi	s0,sp,144
     ffa:	0000                	unimp
     ffc:	0001                	nop
     ffe:	0402                	c.slli64	s0
    1000:	0302                	c.slli64	t1
    1002:	0900                	addi	s0,sp,144
    1004:	0008                	0x8
    1006:	0001                	nop
    1008:	0402                	c.slli64	s0
    100a:	0302                	c.slli64	t1
    100c:	0900                	addi	s0,sp,144
    100e:	0000                	unimp
    1010:	0001                	nop
    1012:	0402                	c.slli64	s0
    1014:	0302                	c.slli64	t1
    1016:	0900                	addi	s0,sp,144
    1018:	0004                	0x4
    101a:	0001                	nop
    101c:	0402                	c.slli64	s0
    101e:	0302                	c.slli64	t1
    1020:	0900                	addi	s0,sp,144
    1022:	0000                	unimp
    1024:	0001                	nop
    1026:	0402                	c.slli64	s0
    1028:	0302                	c.slli64	t1
    102a:	0900                	addi	s0,sp,144
    102c:	0000                	unimp
    102e:	0001                	nop
    1030:	0402                	c.slli64	s0
    1032:	0302                	c.slli64	t1
    1034:	0900                	addi	s0,sp,144
    1036:	000c                	0xc
    1038:	0001                	nop
    103a:	0402                	c.slli64	s0
    103c:	0309                	addi	t1,t1,2
    103e:	0900                	addi	s0,sp,144
    1040:	0004                	0x4
    1042:	0001                	nop
    1044:	0402                	c.slli64	s0
    1046:	0900030b          	0x900030b
    104a:	000c                	0xc
    104c:	0001                	nop
    104e:	0402                	c.slli64	s0
    1050:	0900030b          	0x900030b
    1054:	0000                	unimp
    1056:	0001                	nop
    1058:	0402                	c.slli64	s0
    105a:	0900030b          	0x900030b
    105e:	0018                	0x18
    1060:	0001                	nop
    1062:	0402                	c.slli64	s0
    1064:	0900030b          	0x900030b
    1068:	0000                	unimp
    106a:	0001                	nop
    106c:	0402                	c.slli64	s0
    106e:	0900030b          	0x900030b
    1072:	0000                	unimp
    1074:	0001                	nop
    1076:	0402                	c.slli64	s0
    1078:	0900030b          	0x900030b
    107c:	0000                	unimp
    107e:	0001                	nop
    1080:	0402                	c.slli64	s0
    1082:	0900030b          	0x900030b
    1086:	0020                	addi	s0,sp,8
    1088:	0001                	nop
    108a:	0402                	c.slli64	s0
    108c:	0900030b          	0x900030b
    1090:	0000                	unimp
    1092:	0001                	nop
    1094:	0402                	c.slli64	s0
    1096:	0900030b          	0x900030b
    109a:	0000                	unimp
    109c:	0001                	nop
    109e:	0402                	c.slli64	s0
    10a0:	0900030b          	0x900030b
    10a4:	0000                	unimp
    10a6:	0001                	nop
    10a8:	0402                	c.slli64	s0
    10aa:	030c                	addi	a1,sp,384
    10ac:	0900                	addi	s0,sp,144
    10ae:	0008                	0x8
    10b0:	0001                	nop
    10b2:	0402                	c.slli64	s0
    10b4:	0302                	c.slli64	t1
    10b6:	0901                	addi	s2,s2,0
    10b8:	000c                	0xc
    10ba:	0001                	nop
    10bc:	0402                	c.slli64	s0
    10be:	0302                	c.slli64	t1
    10c0:	0900                	addi	s0,sp,144
    10c2:	0004                	0x4
    10c4:	0001                	nop
    10c6:	0402                	c.slli64	s0
    10c8:	0306                	slli	t1,t1,0x1
    10ca:	0900                	addi	s0,sp,144
    10cc:	0004                	0x4
    10ce:	0001                	nop
    10d0:	0402                	c.slli64	s0
    10d2:	0306                	slli	t1,t1,0x1
    10d4:	0900                	addi	s0,sp,144
    10d6:	0000                	unimp
    10d8:	0001                	nop
    10da:	0402                	c.slli64	s0
    10dc:	0308                	addi	a0,sp,384
    10de:	0900                	addi	s0,sp,144
    10e0:	0008                	0x8
    10e2:	0001                	nop
    10e4:	0402                	c.slli64	s0
    10e6:	0308                	addi	a0,sp,384
    10e8:	0900                	addi	s0,sp,144
    10ea:	0000                	unimp
    10ec:	0001                	nop
    10ee:	0402                	c.slli64	s0
    10f0:	0308                	addi	a0,sp,384
    10f2:	0900                	addi	s0,sp,144
    10f4:	0000                	unimp
    10f6:	0001                	nop
    10f8:	0402                	c.slli64	s0
    10fa:	0308                	addi	a0,sp,384
    10fc:	0900                	addi	s0,sp,144
    10fe:	0000                	unimp
    1100:	0001                	nop
    1102:	0402                	c.slli64	s0
    1104:	030a                	slli	t1,t1,0x2
    1106:	0900                	addi	s0,sp,144
    1108:	000c                	0xc
    110a:	0001                	nop
    110c:	0402                	c.slli64	s0
    110e:	0309                	addi	t1,t1,2
    1110:	0900                	addi	s0,sp,144
    1112:	0004                	0x4
    1114:	0001                	nop
    1116:	0402                	c.slli64	s0
    1118:	0309                	addi	t1,t1,2
    111a:	0900                	addi	s0,sp,144
    111c:	0000                	unimp
    111e:	0001                	nop
    1120:	0402                	c.slli64	s0
    1122:	0318                	addi	a4,sp,384
    1124:	0900                	addi	s0,sp,144
    1126:	0008                	0x8
    1128:	0001                	nop
    112a:	0402                	c.slli64	s0
    112c:	0318                	addi	a4,sp,384
    112e:	0900                	addi	s0,sp,144
    1130:	0010                	0x10
    1132:	0001                	nop
    1134:	0402                	c.slli64	s0
    1136:	031a                	slli	t1,t1,0x6
    1138:	0900                	addi	s0,sp,144
    113a:	0004                	0x4
    113c:	0001                	nop
    113e:	0402                	c.slli64	s0
    1140:	031a                	slli	t1,t1,0x6
    1142:	0900                	addi	s0,sp,144
    1144:	0000                	unimp
    1146:	0001                	nop
    1148:	0402                	c.slli64	s0
    114a:	7d030607          	0x7d030607
    114e:	1809                	addi	a6,a6,-30
    1150:	0100                	addi	s0,sp,128
    1152:	0200                	addi	s0,sp,256
    1154:	0704                	addi	s1,sp,896
    1156:	0306                	slli	t1,t1,0x1
    1158:	0902                	c.slli64	s2
    115a:	0004                	0x4
    115c:	0001                	nop
    115e:	0402                	c.slli64	s0
    1160:	0315                	addi	t1,t1,5
    1162:	0900                	addi	s0,sp,144
    1164:	0008                	0x8
    1166:	0001                	nop
    1168:	0402                	c.slli64	s0
    116a:	0315                	addi	t1,t1,5
    116c:	0901                	addi	s2,s2,0
    116e:	0000                	unimp
    1170:	0001                	nop
    1172:	0402                	c.slli64	s0
    1174:	0315                	addi	t1,t1,5
    1176:	0900                	addi	s0,sp,144
    1178:	0000                	unimp
    117a:	0001                	nop
    117c:	0402                	c.slli64	s0
    117e:	0315                	addi	t1,t1,5
    1180:	0900                	addi	s0,sp,144
    1182:	0000                	unimp
    1184:	0601                	addi	a2,a2,0
    1186:	08090003          	lb	zero,128(s2)
    118a:	0100                	addi	s0,sp,128
    118c:	0200                	addi	s0,sp,256
    118e:	0404                	addi	s1,sp,512
    1190:	1c097e03          	0x1c097e03
    1194:	0100                	addi	s0,sp,128
    1196:	0200                	addi	s0,sp,256
    1198:	0404                	addi	s1,sp,512
    119a:	0306                	slli	t1,t1,0x1
    119c:	0901                	addi	s2,s2,0
    119e:	0004                	0x4
    11a0:	0601                	addi	a2,a2,0
    11a2:	04090003          	lb	zero,64(s2)
    11a6:	0100                	addi	s0,sp,128
    11a8:	0200                	addi	s0,sp,256
    11aa:	3b04                	fld	fs1,48(a4)
    11ac:	0306                	slli	t1,t1,0x1
    11ae:	0901                	addi	s2,s2,0
    11b0:	0008                	0x8
    11b2:	0001                	nop
    11b4:	0402                	c.slli64	s0
    11b6:	0900033b          	0x900033b
    11ba:	0000                	unimp
    11bc:	0001                	nop
    11be:	0402                	c.slli64	s0
    11c0:	0900033b          	0x900033b
    11c4:	0000                	unimp
    11c6:	0001                	nop
    11c8:	0402                	c.slli64	s0
    11ca:	0900033b          	0x900033b
    11ce:	0008                	0x8
    11d0:	0001                	nop
    11d2:	0402                	c.slli64	s0
    11d4:	033c                	addi	a5,sp,392
    11d6:	0900                	addi	s0,sp,144
    11d8:	0008                	0x8
    11da:	0001                	nop
    11dc:	0402                	c.slli64	s0
    11de:	033c                	addi	a5,sp,392
    11e0:	0900                	addi	s0,sp,144
    11e2:	0018                	0x18
    11e4:	0001                	nop
    11e6:	0402                	c.slli64	s0
    11e8:	033c                	addi	a5,sp,392
    11ea:	0900                	addi	s0,sp,144
    11ec:	0000                	unimp
    11ee:	0001                	nop
    11f0:	0402                	c.slli64	s0
    11f2:	0344                	addi	s1,sp,388
    11f4:	0900                	addi	s0,sp,144
    11f6:	0008                	0x8
    11f8:	0001                	nop
    11fa:	0402                	c.slli64	s0
    11fc:	0344                	addi	s1,sp,388
    11fe:	0900                	addi	s0,sp,144
    1200:	0000                	unimp
    1202:	0001                	nop
    1204:	0402                	c.slli64	s0
    1206:	0344                	addi	s1,sp,388
    1208:	0900                	addi	s0,sp,144
    120a:	0000                	unimp
    120c:	0001                	nop
    120e:	0402                	c.slli64	s0
    1210:	0344                	addi	s1,sp,388
    1212:	0900                	addi	s0,sp,144
    1214:	0000                	unimp
    1216:	0001                	nop
    1218:	0402                	c.slli64	s0
    121a:	0346                	slli	t1,t1,0x11
    121c:	0900                	addi	s0,sp,144
    121e:	000c                	0xc
    1220:	0001                	nop
    1222:	0402                	c.slli64	s0
    1224:	0345                	addi	t1,t1,17
    1226:	0900                	addi	s0,sp,144
    1228:	0004                	0x4
    122a:	0001                	nop
    122c:	0402                	c.slli64	s0
    122e:	0345                	addi	t1,t1,17
    1230:	0900                	addi	s0,sp,144
    1232:	0000                	unimp
    1234:	0601                	addi	a2,a2,0
    1236:	0c090003          	lb	zero,192(s2)
    123a:	0100                	addi	s0,sp,128
    123c:	0200                	addi	s0,sp,256
    123e:	6f04                	ld	s1,24(a4)
    1240:	0306                	slli	t1,t1,0x1
    1242:	0900                	addi	s0,sp,144
    1244:	001c                	0x1c
    1246:	0001                	nop
    1248:	0402                	c.slli64	s0
    124a:	0900036f          	jal	t1,12da <register_fini-0xedd6>
    124e:	0000                	unimp
    1250:	0001                	nop
    1252:	0402                	c.slli64	s0
    1254:	0900036f          	jal	t1,12e4 <register_fini-0xedcc>
    1258:	0000                	unimp
    125a:	0001                	nop
    125c:	0402                	c.slli64	s0
    125e:	0900036f          	jal	t1,12ee <register_fini-0xedc2>
    1262:	0000                	unimp
    1264:	0001                	nop
    1266:	0402                	c.slli64	s0
    1268:	0900036f          	jal	t1,12f8 <register_fini-0xedb8>
    126c:	0000                	unimp
    126e:	0001                	nop
    1270:	0402                	c.slli64	s0
    1272:	0900036f          	jal	t1,1302 <register_fini-0xedae>
    1276:	0000                	unimp
    1278:	0001                	nop
    127a:	0402                	c.slli64	s0
    127c:	0900036f          	jal	t1,130c <register_fini-0xeda4>
    1280:	0018                	0x18
    1282:	0001                	nop
    1284:	0402                	c.slli64	s0
    1286:	0900036f          	jal	t1,1316 <register_fini-0xed9a>
    128a:	0000                	unimp
    128c:	0001                	nop
    128e:	0402                	c.slli64	s0
    1290:	0900036f          	jal	t1,1320 <register_fini-0xed90>
    1294:	0000                	unimp
    1296:	0001                	nop
    1298:	0402                	c.slli64	s0
    129a:	0901036f          	jal	t1,1132a <exit+0x2a>
    129e:	0000                	unimp
    12a0:	0001                	nop
    12a2:	0402                	c.slli64	s0
    12a4:	0900036f          	jal	t1,1334 <register_fini-0xed7c>
    12a8:	0000                	unimp
    12aa:	0001                	nop
    12ac:	0402                	c.slli64	s0
    12ae:	0900036f          	jal	t1,133e <register_fini-0xed72>
    12b2:	0000                	unimp
    12b4:	0001                	nop
    12b6:	0402                	c.slli64	s0
    12b8:	0902036f          	jal	t1,21348 <__BSS_END__+0xeb18>
    12bc:	0000                	unimp
    12be:	0501                	addi	a0,a0,0
    12c0:	0001                	nop
    12c2:	0402                	c.slli64	s0
    12c4:	0103066f          	jal	a2,312d4 <__BSS_END__+0x1eaa4>
    12c8:	0009                	c.nop	2
    12ca:	0100                	addi	s0,sp,128
    12cc:	2809                	addiw	a6,a6,2
    12ce:	0000                	unimp
    12d0:	0101                	addi	sp,sp,0
    12d2:	0abe                	slli	s5,s5,0xf
    12d4:	0000                	unimp
    12d6:	00930003          	lb	zero,9(t1)
    12da:	0000                	unimp
    12dc:	0101                	addi	sp,sp,0
    12de:	000d0efb          	0xd0efb
    12e2:	0101                	addi	sp,sp,0
    12e4:	0101                	addi	sp,sp,0
    12e6:	0000                	unimp
    12e8:	0100                	addi	s0,sp,128
    12ea:	0000                	unimp
    12ec:	2e01                	sext.w	t3,t3
    12ee:	2f2e                	fld	ft10,200(sp)
    12f0:	2e2e                	fld	ft8,200(sp)
    12f2:	2f2e2e2f          	0x2f2e2e2f
    12f6:	2e2e                	fld	ft8,200(sp)
    12f8:	7369722f          	0x7369722f
    12fc:	672d7663          	bgeu	s10,s2,1968 <register_fini-0xe748>
    1300:	6c2f6363          	bltu	t5,sp,19c6 <register_fini-0xe6ea>
    1304:	6269                	lui	tp,0x1a
    1306:	2f636367          	0x2f636367
    130a:	74666f73          	csrrsi	t5,0x746,12
    130e:	662d                	lui	a2,0xb
    1310:	0070                	addi	a2,sp,12
    1312:	2e2e                	fld	ft8,200(sp)
    1314:	2f2e2e2f          	0x2f2e2e2f
    1318:	2e2e                	fld	ft8,200(sp)
    131a:	2f2e2e2f          	0x2f2e2e2f
    131e:	6972                	ld	s2,280(sp)
    1320:	2d766373          	csrrsi	t1,0x2d7,12
    1324:	2f636367          	0x2f636367
    1328:	696c                	ld	a1,208(a0)
    132a:	6762                	ld	a4,24(sp)
    132c:	2e2f6363          	bltu	t5,sp,1612 <register_fini-0xea9e>
    1330:	2f2e                	fld	ft10,200(sp)
    1332:	6e69                	lui	t3,0x1a
    1334:	64756c63          	bltu	a0,t2,198c <register_fini-0xe724>
    1338:	0065                	c.nop	25
    133a:	7300                	ld	s0,32(a4)
    133c:	6275                	lui	tp,0x1d
    133e:	6664                	ld	s1,200(a2)
    1340:	00632e33          	slt	t3,t1,t1
    1344:	0001                	nop
    1346:	7300                	ld	s0,32(a4)
    1348:	2d74666f          	jal	a2,47e1e <__BSS_END__+0x355ee>
    134c:	7066                	0x7066
    134e:	682e                	ld	a6,200(sp)
    1350:	0100                	addi	s0,sp,128
    1352:	0000                	unimp
    1354:	6f64                	ld	s1,216(a4)
    1356:	6275                	lui	tp,0x1d
    1358:	656c                	ld	a1,200(a0)
    135a:	682e                	ld	a6,200(sp)
    135c:	0100                	addi	s0,sp,128
    135e:	0000                	unimp
    1360:	6f6c                	ld	a1,216(a4)
    1362:	676e                	ld	a4,216(sp)
    1364:	6f6c                	ld	a1,216(a4)
    1366:	676e                	ld	a4,216(sp)
    1368:	682e                	ld	a6,200(sp)
    136a:	0200                	addi	s0,sp,256
    136c:	0000                	unimp
    136e:	0500                	addi	s0,sp,640
    1370:	0001                	nop
    1372:	0209                	addi	tp,tp,2
    1374:	0bc0                	addi	s0,sp,468
    1376:	0001                	nop
    1378:	0000                	unimp
    137a:	0000                	unimp
    137c:	05012303          	lw	t1,80(sp)
    1380:	09010303          	lb	t1,144(sp)
    1384:	0000                	unimp
    1386:	0301                	addi	t1,t1,0
    1388:	0900                	addi	s0,sp,144
    138a:	0000                	unimp
    138c:	0501                	addi	a0,a0,0
    138e:	030d                	addi	t1,t1,3
    1390:	0900                	addi	s0,sp,144
    1392:	0000                	unimp
    1394:	0501                	addi	a0,a0,0
    1396:	09010303          	lb	t1,144(sp)
    139a:	0000                	unimp
    139c:	0301                	addi	t1,t1,0
    139e:	0900                	addi	s0,sp,144
    13a0:	0000                	unimp
    13a2:	0301                	addi	t1,t1,0
    13a4:	0900                	addi	s0,sp,144
    13a6:	0000                	unimp
    13a8:	0301                	addi	t1,t1,0
    13aa:	0900                	addi	s0,sp,144
    13ac:	0000                	unimp
    13ae:	0301                	addi	t1,t1,0
    13b0:	0901                	addi	s2,s2,0
    13b2:	0000                	unimp
    13b4:	0301                	addi	t1,t1,0
    13b6:	0900                	addi	s0,sp,144
    13b8:	0000                	unimp
    13ba:	0301                	addi	t1,t1,0
    13bc:	0900                	addi	s0,sp,144
    13be:	0000                	unimp
    13c0:	0301                	addi	t1,t1,0
    13c2:	0900                	addi	s0,sp,144
    13c4:	0000                	unimp
    13c6:	0301                	addi	t1,t1,0
    13c8:	0901                	addi	s2,s2,0
    13ca:	0000                	unimp
    13cc:	0301                	addi	t1,t1,0
    13ce:	0900                	addi	s0,sp,144
    13d0:	0000                	unimp
    13d2:	0301                	addi	t1,t1,0
    13d4:	0900                	addi	s0,sp,144
    13d6:	0000                	unimp
    13d8:	0301                	addi	t1,t1,0
    13da:	0900                	addi	s0,sp,144
    13dc:	0000                	unimp
    13de:	0301                	addi	t1,t1,0
    13e0:	0901                	addi	s2,s2,0
    13e2:	0000                	unimp
    13e4:	0301                	addi	t1,t1,0
    13e6:	0902                	c.slli64	s2
    13e8:	0000                	unimp
    13ea:	0301                	addi	t1,t1,0
    13ec:	0901                	addi	s2,s2,0
    13ee:	0000                	unimp
    13f0:	0301                	addi	t1,t1,0
    13f2:	0900                	addi	s0,sp,144
    13f4:	0000                	unimp
    13f6:	0301                	addi	t1,t1,0
    13f8:	0900                	addi	s0,sp,144
    13fa:	0000                	unimp
    13fc:	0301                	addi	t1,t1,0
    13fe:	0900                	addi	s0,sp,144
    1400:	0000                	unimp
    1402:	0301                	addi	t1,t1,0
    1404:	0900                	addi	s0,sp,144
    1406:	0000                	unimp
    1408:	0501                	addi	a0,a0,0
    140a:	0601                	addi	a2,a2,0
    140c:	04097803          	0x4097803
    1410:	0100                	addi	s0,sp,128
    1412:	0305                	addi	t1,t1,1
    1414:	04090803          	lb	a6,64(s2)
    1418:	0100                	addi	s0,sp,128
    141a:	04090103          	lb	sp,64(s2)
    141e:	0100                	addi	s0,sp,128
    1420:	04097f03          	0x4097f03
    1424:	0100                	addi	s0,sp,128
    1426:	0306                	slli	t1,t1,0x1
    1428:	0900                	addi	s0,sp,144
    142a:	0008                	0x8
    142c:	0501                	addi	a0,a0,0
    142e:	0601                	addi	a2,a2,0
    1430:	00097803          	0x97803
    1434:	0100                	addi	s0,sp,128
    1436:	0305                	addi	t1,t1,1
    1438:	04090903          	lb	s2,64(s2)
    143c:	0100                	addi	s0,sp,128
    143e:	0105                	addi	sp,sp,1
    1440:	04097703          	0x4097703
    1444:	0100                	addi	s0,sp,128
    1446:	0305                	addi	t1,t1,1
    1448:	04090803          	lb	a6,64(s2)
    144c:	0100                	addi	s0,sp,128
    144e:	0105                	addi	sp,sp,1
    1450:	04097803          	0x4097803
    1454:	0100                	addi	s0,sp,128
    1456:	0305                	addi	t1,t1,1
    1458:	08090903          	lb	s2,128(s2)
    145c:	0100                	addi	s0,sp,128
    145e:	04090103          	lb	sp,64(s2)
    1462:	0100                	addi	s0,sp,128
    1464:	04097e03          	0x4097e03
    1468:	0100                	addi	s0,sp,128
    146a:	0306                	slli	t1,t1,0x1
    146c:	0900                	addi	s0,sp,144
    146e:	0004                	0x4
    1470:	0301                	addi	t1,t1,0
    1472:	0900                	addi	s0,sp,144
    1474:	0004                	0x4
    1476:	0301                	addi	t1,t1,0
    1478:	0900                	addi	s0,sp,144
    147a:	0000                	unimp
    147c:	0301                	addi	t1,t1,0
    147e:	0900                	addi	s0,sp,144
    1480:	0000                	unimp
    1482:	0301                	addi	t1,t1,0
    1484:	0900                	addi	s0,sp,144
    1486:	0000                	unimp
    1488:	0301                	addi	t1,t1,0
    148a:	0900                	addi	s0,sp,144
    148c:	0004                	0x4
    148e:	0301                	addi	t1,t1,0
    1490:	0900                	addi	s0,sp,144
    1492:	0000                	unimp
    1494:	0301                	addi	t1,t1,0
    1496:	0901                	addi	s2,s2,0
    1498:	0000                	unimp
    149a:	0301                	addi	t1,t1,0
    149c:	0900                	addi	s0,sp,144
    149e:	0000                	unimp
    14a0:	0301                	addi	t1,t1,0
    14a2:	0900                	addi	s0,sp,144
    14a4:	0000                	unimp
    14a6:	0301                	addi	t1,t1,0
    14a8:	0900                	addi	s0,sp,144
    14aa:	0000                	unimp
    14ac:	0301                	addi	t1,t1,0
    14ae:	0900                	addi	s0,sp,144
    14b0:	0000                	unimp
    14b2:	0301                	addi	t1,t1,0
    14b4:	0900                	addi	s0,sp,144
    14b6:	0000                	unimp
    14b8:	0301                	addi	t1,t1,0
    14ba:	0900                	addi	s0,sp,144
    14bc:	0000                	unimp
    14be:	0301                	addi	t1,t1,0
    14c0:	0900                	addi	s0,sp,144
    14c2:	0004                	0x4
    14c4:	0301                	addi	t1,t1,0
    14c6:	0900                	addi	s0,sp,144
    14c8:	0000                	unimp
    14ca:	0301                	addi	t1,t1,0
    14cc:	0900                	addi	s0,sp,144
    14ce:	0000                	unimp
    14d0:	0301                	addi	t1,t1,0
    14d2:	0900                	addi	s0,sp,144
    14d4:	0000                	unimp
    14d6:	0301                	addi	t1,t1,0
    14d8:	0900                	addi	s0,sp,144
    14da:	0004                	0x4
    14dc:	0301                	addi	t1,t1,0
    14de:	0900                	addi	s0,sp,144
    14e0:	0000                	unimp
    14e2:	0301                	addi	t1,t1,0
    14e4:	0901                	addi	s2,s2,0
    14e6:	0000                	unimp
    14e8:	0301                	addi	t1,t1,0
    14ea:	0900                	addi	s0,sp,144
    14ec:	0000                	unimp
    14ee:	0001                	nop
    14f0:	0402                	c.slli64	s0
    14f2:	0602                	c.slli64	a2
    14f4:	04090003          	lb	zero,64(s2)
    14f8:	0100                	addi	s0,sp,128
    14fa:	0200                	addi	s0,sp,256
    14fc:	0304                	addi	s1,sp,384
    14fe:	0306                	slli	t1,t1,0x1
    1500:	0900                	addi	s0,sp,144
    1502:	0004                	0x4
    1504:	0001                	nop
    1506:	0402                	c.slli64	s0
    1508:	0900030b          	0x900030b
    150c:	0004                	0x4
    150e:	0001                	nop
    1510:	0402                	c.slli64	s0
    1512:	0900030b          	0x900030b
    1516:	0000                	unimp
    1518:	0001                	nop
    151a:	0402                	c.slli64	s0
    151c:	0900030b          	0x900030b
    1520:	0000                	unimp
    1522:	0001                	nop
    1524:	0402                	c.slli64	s0
    1526:	0900030b          	0x900030b
    152a:	0000                	unimp
    152c:	0001                	nop
    152e:	0402                	c.slli64	s0
    1530:	0900030b          	0x900030b
    1534:	0000                	unimp
    1536:	0001                	nop
    1538:	0402                	c.slli64	s0
    153a:	0900030b          	0x900030b
    153e:	0000                	unimp
    1540:	0001                	nop
    1542:	0402                	c.slli64	s0
    1544:	0900030b          	0x900030b
    1548:	0000                	unimp
    154a:	0001                	nop
    154c:	0402                	c.slli64	s0
    154e:	0900030b          	0x900030b
    1552:	0000                	unimp
    1554:	0001                	nop
    1556:	0402                	c.slli64	s0
    1558:	030c                	addi	a1,sp,384
    155a:	0900                	addi	s0,sp,144
    155c:	000c                	0xc
    155e:	0001                	nop
    1560:	0402                	c.slli64	s0
    1562:	030c                	addi	a1,sp,384
    1564:	0900                	addi	s0,sp,144
    1566:	0000                	unimp
    1568:	0001                	nop
    156a:	0402                	c.slli64	s0
    156c:	030c                	addi	a1,sp,384
    156e:	0900                	addi	s0,sp,144
    1570:	0000                	unimp
    1572:	0001                	nop
    1574:	0402                	c.slli64	s0
    1576:	030e                	slli	t1,t1,0x3
    1578:	0900                	addi	s0,sp,144
    157a:	0004                	0x4
    157c:	0001                	nop
    157e:	0402                	c.slli64	s0
    1580:	030e                	slli	t1,t1,0x3
    1582:	0900                	addi	s0,sp,144
    1584:	0000                	unimp
    1586:	0001                	nop
    1588:	0402                	c.slli64	s0
    158a:	0310                	addi	a2,sp,384
    158c:	0900                	addi	s0,sp,144
    158e:	0004                	0x4
    1590:	0001                	nop
    1592:	0402                	c.slli64	s0
    1594:	09000313          	li	t1,144
    1598:	0004                	0x4
    159a:	0001                	nop
    159c:	0402                	c.slli64	s0
    159e:	09000313          	li	t1,144
    15a2:	0000                	unimp
    15a4:	0001                	nop
    15a6:	0402                	c.slli64	s0
    15a8:	09000313          	li	t1,144
    15ac:	0004                	0x4
    15ae:	0001                	nop
    15b0:	0402                	c.slli64	s0
    15b2:	031c                	addi	a5,sp,384
    15b4:	0900                	addi	s0,sp,144
    15b6:	0004                	0x4
    15b8:	0001                	nop
    15ba:	0402                	c.slli64	s0
    15bc:	031c                	addi	a5,sp,384
    15be:	0900                	addi	s0,sp,144
    15c0:	0004                	0x4
    15c2:	0001                	nop
    15c4:	0402                	c.slli64	s0
    15c6:	0375                	addi	t1,t1,29
    15c8:	0900                	addi	s0,sp,144
    15ca:	0000                	unimp
    15cc:	0001                	nop
    15ce:	01b00403          	lb	s0,27(zero) # 1b <register_fini-0x10095>
    15d2:	08090003          	lb	zero,128(s2)
    15d6:	0100                	addi	s0,sp,128
    15d8:	0300                	addi	s0,sp,384
    15da:	b004                	fsd	fs1,32(s0)
    15dc:	0301                	addi	t1,t1,0
    15de:	0900                	addi	s0,sp,144
    15e0:	0000                	unimp
    15e2:	0001                	nop
    15e4:	01b00403          	lb	s0,27(zero) # 1b <register_fini-0x10095>
    15e8:	04090003          	lb	zero,64(s2)
    15ec:	0100                	addi	s0,sp,128
    15ee:	0300                	addi	s0,sp,384
    15f0:	b004                	fsd	fs1,32(s0)
    15f2:	0301                	addi	t1,t1,0
    15f4:	0900                	addi	s0,sp,144
    15f6:	0000                	unimp
    15f8:	0601                	addi	a2,a2,0
    15fa:	08090003          	lb	zero,128(s2)
    15fe:	0100                	addi	s0,sp,128
    1600:	0200                	addi	s0,sp,256
    1602:	1d04                	addi	s1,sp,688
    1604:	0306                	slli	t1,t1,0x1
    1606:	0900                	addi	s0,sp,144
    1608:	0020                	addi	s0,sp,8
    160a:	0001                	nop
    160c:	02fd0403          	lb	s0,47(s10)
    1610:	08090003          	lb	zero,128(s2)
    1614:	0100                	addi	s0,sp,128
    1616:	0300                	addi	s0,sp,384
    1618:	fd04                	sd	s1,56(a0)
    161a:	0302                	c.slli64	t1
    161c:	0900                	addi	s0,sp,144
    161e:	0000                	unimp
    1620:	0001                	nop
    1622:	02fd0403          	lb	s0,47(s10)
    1626:	00090003          	lb	zero,0(s2)
    162a:	0100                	addi	s0,sp,128
    162c:	0300                	addi	s0,sp,384
    162e:	fd04                	sd	s1,56(a0)
    1630:	0302                	c.slli64	t1
    1632:	0901                	addi	s2,s2,0
    1634:	0000                	unimp
    1636:	0001                	nop
    1638:	02fd0403          	lb	s0,47(s10)
    163c:	00090003          	lb	zero,0(s2)
    1640:	0100                	addi	s0,sp,128
    1642:	0300                	addi	s0,sp,384
    1644:	fd04                	sd	s1,56(a0)
    1646:	0302                	c.slli64	t1
    1648:	0900                	addi	s0,sp,144
    164a:	0000                	unimp
    164c:	0001                	nop
    164e:	02fd0403          	lb	s0,47(s10)
    1652:	00090003          	lb	zero,0(s2)
    1656:	0100                	addi	s0,sp,128
    1658:	0300                	addi	s0,sp,384
    165a:	fd04                	sd	s1,56(a0)
    165c:	0302                	c.slli64	t1
    165e:	0900                	addi	s0,sp,144
    1660:	0000                	unimp
    1662:	0001                	nop
    1664:	0402                	c.slli64	s0
    1666:	0325                	addi	t1,t1,9
    1668:	0900                	addi	s0,sp,144
    166a:	0008                	0x8
    166c:	0001                	nop
    166e:	0402                	c.slli64	s0
    1670:	0325                	addi	t1,t1,9
    1672:	0900                	addi	s0,sp,144
    1674:	0000                	unimp
    1676:	0001                	nop
    1678:	0402                	c.slli64	s0
    167a:	0325                	addi	t1,t1,9
    167c:	0900                	addi	s0,sp,144
    167e:	0000                	unimp
    1680:	0001                	nop
    1682:	0402                	c.slli64	s0
    1684:	0325                	addi	t1,t1,9
    1686:	0900                	addi	s0,sp,144
    1688:	0000                	unimp
    168a:	0001                	nop
    168c:	0402                	c.slli64	s0
    168e:	032c                	addi	a1,sp,392
    1690:	0900                	addi	s0,sp,144
    1692:	000c                	0xc
    1694:	0001                	nop
    1696:	0402                	c.slli64	s0
    1698:	0311                	addi	t1,t1,4
    169a:	097f                	0x97f
    169c:	0008                	0x8
    169e:	0001                	nop
    16a0:	0402                	c.slli64	s0
    16a2:	0900032b          	0x900032b
    16a6:	0008                	0x8
    16a8:	0001                	nop
    16aa:	0402                	c.slli64	s0
    16ac:	0334                	addi	a3,sp,392
    16ae:	0900                	addi	s0,sp,144
    16b0:	000c                	0xc
    16b2:	0001                	nop
    16b4:	0402                	c.slli64	s0
    16b6:	0335                	addi	t1,t1,13
    16b8:	0900                	addi	s0,sp,144
    16ba:	000c                	0xc
    16bc:	0001                	nop
    16be:	0402                	c.slli64	s0
    16c0:	0340                	addi	s0,sp,388
    16c2:	0900                	addi	s0,sp,144
    16c4:	0018                	0x18
    16c6:	0001                	nop
    16c8:	0402                	c.slli64	s0
    16ca:	0900030f          	0x900030f
    16ce:	0008                	0x8
    16d0:	0001                	nop
    16d2:	0402                	c.slli64	s0
    16d4:	0342                	slli	t1,t1,0x10
    16d6:	0900                	addi	s0,sp,144
    16d8:	0004                	0x4
    16da:	0001                	nop
    16dc:	0402                	c.slli64	s0
    16de:	0342                	slli	t1,t1,0x10
    16e0:	0900                	addi	s0,sp,144
    16e2:	0000                	unimp
    16e4:	0001                	nop
    16e6:	0402                	c.slli64	s0
    16e8:	0342                	slli	t1,t1,0x10
    16ea:	0900                	addi	s0,sp,144
    16ec:	0000                	unimp
    16ee:	0001                	nop
    16f0:	0402                	c.slli64	s0
    16f2:	0344                	addi	s1,sp,388
    16f4:	0900                	addi	s0,sp,144
    16f6:	0004                	0x4
    16f8:	0001                	nop
    16fa:	0402                	c.slli64	s0
    16fc:	09000347          	fmsub.s	ft6,ft0,fa6,ft1,rne
    1700:	0004                	0x4
    1702:	0001                	nop
    1704:	0402                	c.slli64	s0
    1706:	09000347          	fmsub.s	ft6,ft0,fa6,ft1,rne
    170a:	0000                	unimp
    170c:	0001                	nop
    170e:	0402                	c.slli64	s0
    1710:	09000347          	fmsub.s	ft6,ft0,fa6,ft1,rne
    1714:	0000                	unimp
    1716:	0001                	nop
    1718:	0402                	c.slli64	s0
    171a:	0350                	addi	a2,sp,388
    171c:	0900                	addi	s0,sp,144
    171e:	0008                	0x8
    1720:	0001                	nop
    1722:	0402                	c.slli64	s0
    1724:	0350                	addi	a2,sp,388
    1726:	0900                	addi	s0,sp,144
    1728:	0004                	0x4
    172a:	0001                	nop
    172c:	0402                	c.slli64	s0
    172e:	0674                	addi	a3,sp,780
    1730:	00097f03          	0x97f03
    1734:	0100                	addi	s0,sp,128
    1736:	0200                	addi	s0,sp,256
    1738:	5104                	lw	s1,32(a0)
    173a:	0306                	slli	t1,t1,0x1
    173c:	0901                	addi	s2,s2,0
    173e:	0008                	0x8
    1740:	0001                	nop
    1742:	0402                	c.slli64	s0
    1744:	0368                	addi	a0,sp,396
    1746:	0900                	addi	s0,sp,144
    1748:	0010                	0x10
    174a:	0001                	nop
    174c:	0402                	c.slli64	s0
    174e:	0369                	addi	t1,t1,26
    1750:	0900                	addi	s0,sp,144
    1752:	000c                	0xc
    1754:	0001                	nop
    1756:	0402                	c.slli64	s0
    1758:	0374                	addi	a3,sp,396
    175a:	0900                	addi	s0,sp,144
    175c:	0018                	0x18
    175e:	0001                	nop
    1760:	0402                	c.slli64	s0
    1762:	0345                	addi	t1,t1,17
    1764:	0900                	addi	s0,sp,144
    1766:	0008                	0x8
    1768:	0001                	nop
    176a:	0402                	c.slli64	s0
    176c:	065f 0003 0809      	0x8090003065f
    1772:	0100                	addi	s0,sp,128
    1774:	0200                	addi	s0,sp,256
    1776:	5f04                	lw	s1,56(a4)
    1778:	0306                	slli	t1,t1,0x1
    177a:	0900                	addi	s0,sp,144
    177c:	000c                	0xc
    177e:	0001                	nop
    1780:	0402                	c.slli64	s0
    1782:	09000343          	fmadd.s	ft6,ft0,fa6,ft1,rne
    1786:	0008                	0x8
    1788:	0001                	nop
    178a:	0402                	c.slli64	s0
    178c:	0376                	slli	t1,t1,0x1d
    178e:	0900                	addi	s0,sp,144
    1790:	000c                	0xc
    1792:	0001                	nop
    1794:	0402                	c.slli64	s0
    1796:	0378                	addi	a4,sp,396
    1798:	0900                	addi	s0,sp,144
    179a:	0004                	0x4
    179c:	0001                	nop
    179e:	0402                	c.slli64	s0
    17a0:	0378                	addi	a4,sp,396
    17a2:	0900                	addi	s0,sp,144
    17a4:	0000                	unimp
    17a6:	0001                	nop
    17a8:	0402                	c.slli64	s0
    17aa:	0900037b          	0x900037b
    17ae:	0004                	0x4
    17b0:	0001                	nop
    17b2:	01810403          	lb	s0,24(sp)
    17b6:	04090003          	lb	zero,64(s2)
    17ba:	0100                	addi	s0,sp,128
    17bc:	0300                	addi	s0,sp,384
    17be:	8104                	0x8104
    17c0:	0301                	addi	t1,t1,0
    17c2:	0900                	addi	s0,sp,144
    17c4:	0000                	unimp
    17c6:	0001                	nop
    17c8:	01810403          	lb	s0,24(sp)
    17cc:	04090003          	lb	zero,64(s2)
    17d0:	0100                	addi	s0,sp,128
    17d2:	0300                	addi	s0,sp,384
    17d4:	8304                	0x8304
    17d6:	0301                	addi	t1,t1,0
    17d8:	0900                	addi	s0,sp,144
    17da:	0008                	0x8
    17dc:	0001                	nop
    17de:	01830403          	lb	s0,24(t1)
    17e2:	10090003          	lb	zero,256(s2)
    17e6:	0100                	addi	s0,sp,128
    17e8:	0300                	addi	s0,sp,384
    17ea:	9404                	0x9404
    17ec:	0301                	addi	t1,t1,0
    17ee:	0900                	addi	s0,sp,144
    17f0:	0008                	0x8
    17f2:	0001                	nop
    17f4:	01940403          	lb	s0,25(s0)
    17f8:	00090003          	lb	zero,0(s2)
    17fc:	0100                	addi	s0,sp,128
    17fe:	0300                	addi	s0,sp,384
    1800:	9404                	0x9404
    1802:	0301                	addi	t1,t1,0
    1804:	0900                	addi	s0,sp,144
    1806:	0000                	unimp
    1808:	0001                	nop
    180a:	01940403          	lb	s0,25(s0)
    180e:	00090003          	lb	zero,0(s2)
    1812:	0100                	addi	s0,sp,128
    1814:	0300                	addi	s0,sp,384
    1816:	9404                	0x9404
    1818:	0301                	addi	t1,t1,0
    181a:	0900                	addi	s0,sp,144
    181c:	0000                	unimp
    181e:	0001                	nop
    1820:	01940403          	lb	s0,25(s0)
    1824:	00090003          	lb	zero,0(s2)
    1828:	0100                	addi	s0,sp,128
    182a:	0300                	addi	s0,sp,384
    182c:	9404                	0x9404
    182e:	0301                	addi	t1,t1,0
    1830:	0900                	addi	s0,sp,144
    1832:	0000                	unimp
    1834:	0001                	nop
    1836:	01940403          	lb	s0,25(s0)
    183a:	00090003          	lb	zero,0(s2)
    183e:	0100                	addi	s0,sp,128
    1840:	0300                	addi	s0,sp,384
    1842:	ce04                	sw	s1,24(a2)
    1844:	0302                	c.slli64	t1
    1846:	0900                	addi	s0,sp,144
    1848:	0004                	0x4
    184a:	0601                	addi	a2,a2,0
    184c:	04090003          	lb	zero,64(s2)
    1850:	0100                	addi	s0,sp,128
    1852:	0200                	addi	s0,sp,256
    1854:	7704                	ld	s1,40(a4)
    1856:	0306                	slli	t1,t1,0x1
    1858:	0900                	addi	s0,sp,144
    185a:	0014                	0x14
    185c:	0001                	nop
    185e:	0402                	c.slli64	s0
    1860:	09000377          	0x9000377
    1864:	0000                	unimp
    1866:	0001                	nop
    1868:	0402                	c.slli64	s0
    186a:	09000377          	0x9000377
    186e:	0000                	unimp
    1870:	0001                	nop
    1872:	0402                	c.slli64	s0
    1874:	09000377          	0x9000377
    1878:	0000                	unimp
    187a:	0601                	addi	a2,a2,0
    187c:	08090003          	lb	zero,128(s2)
    1880:	0100                	addi	s0,sp,128
    1882:	0200                	addi	s0,sp,256
    1884:	0d04                	addi	s1,sp,656
    1886:	0306                	slli	t1,t1,0x1
    1888:	0900                	addi	s0,sp,144
    188a:	0010                	0x10
    188c:	0001                	nop
    188e:	0402                	c.slli64	s0
    1890:	030d                	addi	t1,t1,3
    1892:	0900                	addi	s0,sp,144
    1894:	0000                	unimp
    1896:	0001                	nop
    1898:	01c20403          	lb	s0,28(tp) # 1d01c <__BSS_END__+0xa7ec>
    189c:	04090003          	lb	zero,64(s2)
    18a0:	0100                	addi	s0,sp,128
    18a2:	0300                	addi	s0,sp,384
    18a4:	c204                	sw	s1,0(a2)
    18a6:	0301                	addi	t1,t1,0
    18a8:	0900                	addi	s0,sp,144
    18aa:	0000                	unimp
    18ac:	0001                	nop
    18ae:	01c20403          	lb	s0,28(tp) # 1c <register_fini-0x10094>
    18b2:	00090003          	lb	zero,0(s2)
    18b6:	0100                	addi	s0,sp,128
    18b8:	0300                	addi	s0,sp,384
    18ba:	c404                	sw	s1,8(s0)
    18bc:	0301                	addi	t1,t1,0
    18be:	0900                	addi	s0,sp,144
    18c0:	0004                	0x4
    18c2:	0001                	nop
    18c4:	01c70403          	lb	s0,28(a4)
    18c8:	04090003          	lb	zero,64(s2)
    18cc:	0100                	addi	s0,sp,128
    18ce:	0300                	addi	s0,sp,384
    18d0:	c704                	sw	s1,8(a4)
    18d2:	0301                	addi	t1,t1,0
    18d4:	0900                	addi	s0,sp,144
    18d6:	0000                	unimp
    18d8:	0001                	nop
    18da:	01c70403          	lb	s0,28(a4)
    18de:	04090003          	lb	zero,64(s2)
    18e2:	0100                	addi	s0,sp,128
    18e4:	0300                	addi	s0,sp,384
    18e6:	d004                	sw	s1,32(s0)
    18e8:	0301                	addi	t1,t1,0
    18ea:	0900                	addi	s0,sp,144
    18ec:	0004                	0x4
    18ee:	0001                	nop
    18f0:	01d00403          	lb	s0,29(zero) # 1d <register_fini-0x10093>
    18f4:	04090003          	lb	zero,64(s2)
    18f8:	0100                	addi	s0,sp,128
    18fa:	0300                	addi	s0,sp,384
    18fc:	a904                	fsd	fs1,16(a0)
    18fe:	0302                	c.slli64	t1
    1900:	0900                	addi	s0,sp,144
    1902:	0000                	unimp
    1904:	0001                	nop
    1906:	02e40403          	lb	s0,46(s0)
    190a:	08090003          	lb	zero,128(s2)
    190e:	0100                	addi	s0,sp,128
    1910:	0300                	addi	s0,sp,384
    1912:	e404                	sd	s1,8(s0)
    1914:	0302                	c.slli64	t1
    1916:	0900                	addi	s0,sp,144
    1918:	0000                	unimp
    191a:	0001                	nop
    191c:	01d10403          	lb	s0,29(sp)
    1920:	0c090003          	lb	zero,192(s2)
    1924:	0100                	addi	s0,sp,128
    1926:	0300                	addi	s0,sp,384
    1928:	e804                	sd	s1,16(s0)
    192a:	0301                	addi	t1,t1,0
    192c:	0900                	addi	s0,sp,144
    192e:	0008                	0x8
    1930:	0001                	nop
    1932:	01e90403          	lb	s0,30(s2)
    1936:	0c090003          	lb	zero,192(s2)
    193a:	0100                	addi	s0,sp,128
    193c:	0300                	addi	s0,sp,384
    193e:	f404                	sd	s1,40(s0)
    1940:	0301                	addi	t1,t1,0
    1942:	0900                	addi	s0,sp,144
    1944:	0018                	0x18
    1946:	0001                	nop
    1948:	01c50403          	lb	s0,28(a0)
    194c:	08090003          	lb	zero,128(s2)
    1950:	0100                	addi	s0,sp,128
    1952:	0300                	addi	s0,sp,384
    1954:	df04                	sw	s1,56(a4)
    1956:	0301                	addi	t1,t1,0
    1958:	0900                	addi	s0,sp,144
    195a:	0008                	0x8
    195c:	0001                	nop
    195e:	01c30403          	lb	s0,28(t1)
    1962:	10090003          	lb	zero,256(s2)
    1966:	0100                	addi	s0,sp,128
    1968:	0300                	addi	s0,sp,384
    196a:	f604                	sd	s1,40(a2)
    196c:	0301                	addi	t1,t1,0
    196e:	0900                	addi	s0,sp,144
    1970:	0004                	0x4
    1972:	0001                	nop
    1974:	01f60403          	lb	s0,31(a2) # b01f <register_fini-0x5091>
    1978:	00090003          	lb	zero,0(s2)
    197c:	0100                	addi	s0,sp,128
    197e:	0300                	addi	s0,sp,384
    1980:	f604                	sd	s1,40(a2)
    1982:	0301                	addi	t1,t1,0
    1984:	0900                	addi	s0,sp,144
    1986:	0000                	unimp
    1988:	0001                	nop
    198a:	01f60403          	lb	s0,31(a2)
    198e:	00090003          	lb	zero,0(s2)
    1992:	0100                	addi	s0,sp,128
    1994:	0300                	addi	s0,sp,384
    1996:	f804                	sd	s1,48(s0)
    1998:	0301                	addi	t1,t1,0
    199a:	0900                	addi	s0,sp,144
    199c:	0004                	0x4
    199e:	0001                	nop
    19a0:	01fb0403          	lb	s0,31(s6)
    19a4:	04090003          	lb	zero,64(s2)
    19a8:	0100                	addi	s0,sp,128
    19aa:	0300                	addi	s0,sp,384
    19ac:	fb04                	sd	s1,48(a4)
    19ae:	0301                	addi	t1,t1,0
    19b0:	0900                	addi	s0,sp,144
    19b2:	0000                	unimp
    19b4:	0001                	nop
    19b6:	01fb0403          	lb	s0,31(s6)
    19ba:	00090003          	lb	zero,0(s2)
    19be:	0100                	addi	s0,sp,128
    19c0:	0300                	addi	s0,sp,384
    19c2:	8404                	0x8404
    19c4:	0302                	c.slli64	t1
    19c6:	0900                	addi	s0,sp,144
    19c8:	0008                	0x8
    19ca:	0001                	nop
    19cc:	02840403          	lb	s0,40(s0)
    19d0:	04090003          	lb	zero,64(s2)
    19d4:	0100                	addi	s0,sp,128
    19d6:	0300                	addi	s0,sp,384
    19d8:	a804                	fsd	fs1,16(s0)
    19da:	0602                	c.slli64	a2
    19dc:	00097f03          	0x97f03
    19e0:	0100                	addi	s0,sp,128
    19e2:	0300                	addi	s0,sp,384
    19e4:	8504                	0x8504
    19e6:	0602                	c.slli64	a2
    19e8:	0c090103          	lb	sp,192(s2)
    19ec:	0100                	addi	s0,sp,128
    19ee:	0300                	addi	s0,sp,384
    19f0:	9c04                	0x9c04
    19f2:	0302                	c.slli64	t1
    19f4:	0900                	addi	s0,sp,144
    19f6:	0010                	0x10
    19f8:	0001                	nop
    19fa:	029d0403          	lb	s0,41(s10)
    19fe:	0c090003          	lb	zero,192(s2)
    1a02:	0100                	addi	s0,sp,128
    1a04:	0300                	addi	s0,sp,384
    1a06:	a804                	fsd	fs1,16(s0)
    1a08:	0302                	c.slli64	t1
    1a0a:	0900                	addi	s0,sp,144
    1a0c:	0018                	0x18
    1a0e:	0001                	nop
    1a10:	01f90403          	lb	s0,31(s2)
    1a14:	08090003          	lb	zero,128(s2)
    1a18:	0100                	addi	s0,sp,128
    1a1a:	0300                	addi	s0,sp,384
    1a1c:	9304                	0x9304
    1a1e:	0602                	c.slli64	a2
    1a20:	08090003          	lb	zero,128(s2)
    1a24:	0100                	addi	s0,sp,128
    1a26:	0300                	addi	s0,sp,384
    1a28:	9304                	0x9304
    1a2a:	0602                	c.slli64	a2
    1a2c:	0c090003          	lb	zero,192(s2)
    1a30:	0100                	addi	s0,sp,128
    1a32:	0300                	addi	s0,sp,384
    1a34:	f704                	sd	s1,40(a4)
    1a36:	0301                	addi	t1,t1,0
    1a38:	0900                	addi	s0,sp,144
    1a3a:	0008                	0x8
    1a3c:	0001                	nop
    1a3e:	02aa0403          	lb	s0,42(s4)
    1a42:	0c090003          	lb	zero,192(s2)
    1a46:	0100                	addi	s0,sp,128
    1a48:	0300                	addi	s0,sp,384
    1a4a:	ac04                	fsd	fs1,24(s0)
    1a4c:	0302                	c.slli64	t1
    1a4e:	0900                	addi	s0,sp,144
    1a50:	0004                	0x4
    1a52:	0001                	nop
    1a54:	02ac0403          	lb	s0,42(s8) # 1d02a <__BSS_END__+0xa7fa>
    1a58:	00090003          	lb	zero,0(s2)
    1a5c:	0100                	addi	s0,sp,128
    1a5e:	0300                	addi	s0,sp,384
    1a60:	ae04                	fsd	fs1,24(a2)
    1a62:	0302                	c.slli64	t1
    1a64:	0900                	addi	s0,sp,144
    1a66:	0004                	0x4
    1a68:	0001                	nop
    1a6a:	02ae0403          	lb	s0,42(t3) # 1a02a <__BSS_END__+0x77fa>
    1a6e:	00090003          	lb	zero,0(s2)
    1a72:	0100                	addi	s0,sp,128
    1a74:	0306                	slli	t1,t1,0x1
    1a76:	0900                	addi	s0,sp,144
    1a78:	0008                	0x8
    1a7a:	0001                	nop
    1a7c:	02af0403          	lb	s0,42(t5)
    1a80:	0306                	slli	t1,t1,0x1
    1a82:	0900                	addi	s0,sp,144
    1a84:	000c                	0xc
    1a86:	0001                	nop
    1a88:	02b60403          	lb	s0,43(a2)
    1a8c:	04090003          	lb	zero,64(s2)
    1a90:	0100                	addi	s0,sp,128
    1a92:	0300                	addi	s0,sp,384
    1a94:	b604                	fsd	fs1,40(a2)
    1a96:	0302                	c.slli64	t1
    1a98:	0900                	addi	s0,sp,144
    1a9a:	0000                	unimp
    1a9c:	0001                	nop
    1a9e:	02b60403          	lb	s0,43(a2)
    1aa2:	04090003          	lb	zero,64(s2)
    1aa6:	0100                	addi	s0,sp,128
    1aa8:	0300                	addi	s0,sp,384
    1aaa:	b604                	fsd	fs1,40(a2)
    1aac:	0302                	c.slli64	t1
    1aae:	0900                	addi	s0,sp,144
    1ab0:	0000                	unimp
    1ab2:	0001                	nop
    1ab4:	02b90403          	lb	s0,43(s2)
    1ab8:	0c090003          	lb	zero,192(s2)
    1abc:	0100                	addi	s0,sp,128
    1abe:	0300                	addi	s0,sp,384
    1ac0:	cc04                	sw	s1,24(s0)
    1ac2:	0302                	c.slli64	t1
    1ac4:	0900                	addi	s0,sp,144
    1ac6:	0010                	0x10
    1ac8:	0001                	nop
    1aca:	02cc0403          	lb	s0,44(s8)
    1ace:	00090003          	lb	zero,0(s2)
    1ad2:	0100                	addi	s0,sp,128
    1ad4:	0300                	addi	s0,sp,384
    1ad6:	cc04                	sw	s1,24(s0)
    1ad8:	0302                	c.slli64	t1
    1ada:	0900                	addi	s0,sp,144
    1adc:	0000                	unimp
    1ade:	0001                	nop
    1ae0:	02cc0403          	lb	s0,44(s8)
    1ae4:	00090003          	lb	zero,0(s2)
    1ae8:	0100                	addi	s0,sp,128
    1aea:	0300                	addi	s0,sp,384
    1aec:	cc04                	sw	s1,24(s0)
    1aee:	0302                	c.slli64	t1
    1af0:	0900                	addi	s0,sp,144
    1af2:	0000                	unimp
    1af4:	0001                	nop
    1af6:	02cc0403          	lb	s0,44(s8)
    1afa:	00090003          	lb	zero,0(s2)
    1afe:	0100                	addi	s0,sp,128
    1b00:	0300                	addi	s0,sp,384
    1b02:	cc04                	sw	s1,24(s0)
    1b04:	0302                	c.slli64	t1
    1b06:	0900                	addi	s0,sp,144
    1b08:	0000                	unimp
    1b0a:	0001                	nop
    1b0c:	02cc0403          	lb	s0,44(s8)
    1b10:	00090003          	lb	zero,0(s2)
    1b14:	0100                	addi	s0,sp,128
    1b16:	0300                	addi	s0,sp,384
    1b18:	cd04                	sw	s1,24(a0)
    1b1a:	0302                	c.slli64	t1
    1b1c:	0900                	addi	s0,sp,144
    1b1e:	0004                	0x4
    1b20:	0601                	addi	a2,a2,0
    1b22:	04090003          	lb	zero,64(s2)
    1b26:	0100                	addi	s0,sp,128
    1b28:	0300                	addi	s0,sp,384
    1b2a:	ab04                	fsd	fs1,16(a4)
    1b2c:	0602                	c.slli64	a2
    1b2e:	10090003          	lb	zero,256(s2)
    1b32:	0100                	addi	s0,sp,128
    1b34:	0300                	addi	s0,sp,384
    1b36:	ab04                	fsd	fs1,16(a4)
    1b38:	0302                	c.slli64	t1
    1b3a:	0900                	addi	s0,sp,144
    1b3c:	0000                	unimp
    1b3e:	0001                	nop
    1b40:	02ab0403          	lb	s0,42(s6)
    1b44:	04090003          	lb	zero,64(s2)
    1b48:	0100                	addi	s0,sp,128
    1b4a:	0300                	addi	s0,sp,384
    1b4c:	ab04                	fsd	fs1,16(a4)
    1b4e:	0302                	c.slli64	t1
    1b50:	0900                	addi	s0,sp,144
    1b52:	0000                	unimp
    1b54:	0001                	nop
    1b56:	02dd0403          	lb	s0,45(s10)
    1b5a:	08090003          	lb	zero,128(s2)
    1b5e:	0100                	addi	s0,sp,128
    1b60:	0300                	addi	s0,sp,384
    1b62:	dd04                	sw	s1,56(a0)
    1b64:	0302                	c.slli64	t1
    1b66:	0900                	addi	s0,sp,144
    1b68:	0004                	0x4
    1b6a:	0001                	nop
    1b6c:	02ea0403          	lb	s0,46(s4)
    1b70:	04090003          	lb	zero,64(s2)
    1b74:	0100                	addi	s0,sp,128
    1b76:	0300                	addi	s0,sp,384
    1b78:	ea04                	sd	s1,16(a2)
    1b7a:	0302                	c.slli64	t1
    1b7c:	0900                	addi	s0,sp,144
    1b7e:	0000                	unimp
    1b80:	0001                	nop
    1b82:	02ea0403          	lb	s0,46(s4)
    1b86:	00090003          	lb	zero,0(s2)
    1b8a:	0100                	addi	s0,sp,128
    1b8c:	0300                	addi	s0,sp,384
    1b8e:	ea04                	sd	s1,16(a2)
    1b90:	0302                	c.slli64	t1
    1b92:	0900                	addi	s0,sp,144
    1b94:	0000                	unimp
    1b96:	0001                	nop
    1b98:	02ea0403          	lb	s0,46(s4)
    1b9c:	00090003          	lb	zero,0(s2)
    1ba0:	0100                	addi	s0,sp,128
    1ba2:	0300                	addi	s0,sp,384
    1ba4:	ea04                	sd	s1,16(a2)
    1ba6:	0302                	c.slli64	t1
    1ba8:	0900                	addi	s0,sp,144
    1baa:	0008                	0x8
    1bac:	0001                	nop
    1bae:	02ea0403          	lb	s0,46(s4)
    1bb2:	00090003          	lb	zero,0(s2)
    1bb6:	0100                	addi	s0,sp,128
    1bb8:	0300                	addi	s0,sp,384
    1bba:	ea04                	sd	s1,16(a2)
    1bbc:	0302                	c.slli64	t1
    1bbe:	0900                	addi	s0,sp,144
    1bc0:	0004                	0x4
    1bc2:	0001                	nop
    1bc4:	02ea0403          	lb	s0,46(s4)
    1bc8:	00090003          	lb	zero,0(s2)
    1bcc:	0100                	addi	s0,sp,128
    1bce:	0300                	addi	s0,sp,384
    1bd0:	ea04                	sd	s1,16(a2)
    1bd2:	0302                	c.slli64	t1
    1bd4:	0900                	addi	s0,sp,144
    1bd6:	0000                	unimp
    1bd8:	0001                	nop
    1bda:	02ea0403          	lb	s0,46(s4)
    1bde:	04090003          	lb	zero,64(s2)
    1be2:	0100                	addi	s0,sp,128
    1be4:	0300                	addi	s0,sp,384
    1be6:	ea04                	sd	s1,16(a2)
    1be8:	0302                	c.slli64	t1
    1bea:	0900                	addi	s0,sp,144
    1bec:	0000                	unimp
    1bee:	0001                	nop
    1bf0:	02f40403          	lb	s0,47(s0)
    1bf4:	04090003          	lb	zero,64(s2)
    1bf8:	0100                	addi	s0,sp,128
    1bfa:	0300                	addi	s0,sp,384
    1bfc:	f404                	sd	s1,40(s0)
    1bfe:	0302                	c.slli64	t1
    1c00:	0900                	addi	s0,sp,144
    1c02:	0008                	0x8
    1c04:	0001                	nop
    1c06:	02f40403          	lb	s0,47(s0)
    1c0a:	18090003          	lb	zero,384(s2)
    1c0e:	0100                	addi	s0,sp,128
    1c10:	0300                	addi	s0,sp,384
    1c12:	de04                	sw	s1,56(a2)
    1c14:	0302                	c.slli64	t1
    1c16:	0900                	addi	s0,sp,144
    1c18:	0008                	0x8
    1c1a:	0601                	addi	a2,a2,0
    1c1c:	04090003          	lb	zero,64(s2)
    1c20:	0100                	addi	s0,sp,128
    1c22:	0300                	addi	s0,sp,384
    1c24:	f504                	sd	s1,40(a0)
    1c26:	0602                	c.slli64	a2
    1c28:	10090003          	lb	zero,256(s2)
    1c2c:	0100                	addi	s0,sp,128
    1c2e:	0300                	addi	s0,sp,384
    1c30:	f504                	sd	s1,40(a0)
    1c32:	0302                	c.slli64	t1
    1c34:	0900                	addi	s0,sp,144
    1c36:	0004                	0x4
    1c38:	0601                	addi	a2,a2,0
    1c3a:	14097f03          	0x14097f03
    1c3e:	0100                	addi	s0,sp,128
    1c40:	0200                	addi	s0,sp,256
    1c42:	2f04                	fld	fs1,24(a4)
    1c44:	0306                	slli	t1,t1,0x1
    1c46:	0902                	c.slli64	s2
    1c48:	0024                	addi	s1,sp,8
    1c4a:	0001                	nop
    1c4c:	0402                	c.slli64	s0
    1c4e:	0900032f          	0x900032f
    1c52:	0000                	unimp
    1c54:	0001                	nop
    1c56:	0402                	c.slli64	s0
    1c58:	0900032f          	0x900032f
    1c5c:	0000                	unimp
    1c5e:	0001                	nop
    1c60:	0402                	c.slli64	s0
    1c62:	0900033f 00010008 	0x100080900033f
    1c6a:	0402                	c.slli64	s0
    1c6c:	0900033f 00010000 	0x100000900033f
    1c74:	0402                	c.slli64	s0
    1c76:	0900033f 06010004 	0x60100040900033f
    1c7e:	08090003          	lb	zero,128(s2)
    1c82:	0100                	addi	s0,sp,128
    1c84:	0200                	addi	s0,sp,256
    1c86:	4f04                	lw	s1,24(a4)
    1c88:	0306                	slli	t1,t1,0x1
    1c8a:	0900                	addi	s0,sp,144
    1c8c:	0010                	0x10
    1c8e:	0001                	nop
    1c90:	0402                	c.slli64	s0
    1c92:	0900034f          	fnmadd.s	ft6,ft0,fa6,ft1,rne
    1c96:	0000                	unimp
    1c98:	0001                	nop
    1c9a:	0402                	c.slli64	s0
    1c9c:	0900034f          	fnmadd.s	ft6,ft0,fa6,ft1,rne
    1ca0:	0008                	0x8
    1ca2:	0001                	nop
    1ca4:	0402                	c.slli64	s0
    1ca6:	0650                	addi	a2,sp,772
    1ca8:	04090003          	lb	zero,64(s2)
    1cac:	0100                	addi	s0,sp,128
    1cae:	04090003          	lb	zero,64(s2)
    1cb2:	0100                	addi	s0,sp,128
    1cb4:	0200                	addi	s0,sp,256
    1cb6:	5a04                	lw	s1,48(a2)
    1cb8:	0306                	slli	t1,t1,0x1
    1cba:	0900                	addi	s0,sp,144
    1cbc:	000c                	0xc
    1cbe:	0001                	nop
    1cc0:	0402                	c.slli64	s0
    1cc2:	035a                	slli	t1,t1,0x16
    1cc4:	0900                	addi	s0,sp,144
    1cc6:	0000                	unimp
    1cc8:	0001                	nop
    1cca:	0402                	c.slli64	s0
    1ccc:	035a                	slli	t1,t1,0x16
    1cce:	0900                	addi	s0,sp,144
    1cd0:	0000                	unimp
    1cd2:	0001                	nop
    1cd4:	0402                	c.slli64	s0
    1cd6:	035a                	slli	t1,t1,0x16
    1cd8:	0900                	addi	s0,sp,144
    1cda:	0000                	unimp
    1cdc:	0001                	nop
    1cde:	0402                	c.slli64	s0
    1ce0:	035a                	slli	t1,t1,0x16
    1ce2:	0900                	addi	s0,sp,144
    1ce4:	0000                	unimp
    1ce6:	0001                	nop
    1ce8:	0402                	c.slli64	s0
    1cea:	035a                	slli	t1,t1,0x16
    1cec:	0900                	addi	s0,sp,144
    1cee:	0000                	unimp
    1cf0:	0001                	nop
    1cf2:	0402                	c.slli64	s0
    1cf4:	035a                	slli	t1,t1,0x16
    1cf6:	0900                	addi	s0,sp,144
    1cf8:	0000                	unimp
    1cfa:	0501                	addi	a0,a0,0
    1cfc:	0001                	nop
    1cfe:	0402                	c.slli64	s0
    1d00:	065a                	slli	a2,a2,0x16
    1d02:	10090403          	lb	s0,256(s2)
    1d06:	0100                	addi	s0,sp,128
    1d08:	0305                	addi	t1,t1,1
    1d0a:	0200                	addi	s0,sp,256
    1d0c:	5a04                	lw	s1,48(a2)
    1d0e:	04097c03          	0x4097c03
    1d12:	0100                	addi	s0,sp,128
    1d14:	0105                	addi	sp,sp,1
    1d16:	0200                	addi	s0,sp,256
    1d18:	5a04                	lw	s1,48(a2)
    1d1a:	04090403          	lb	s0,64(s2)
    1d1e:	0100                	addi	s0,sp,128
    1d20:	0305                	addi	t1,t1,1
    1d22:	0200                	addi	s0,sp,256
    1d24:	5a04                	lw	s1,48(a2)
    1d26:	04097c03          	0x4097c03
    1d2a:	0100                	addi	s0,sp,128
    1d2c:	0200                	addi	s0,sp,256
    1d2e:	5a04                	lw	s1,48(a2)
    1d30:	0306                	slli	t1,t1,0x1
    1d32:	0900                	addi	s0,sp,144
    1d34:	0004                	0x4
    1d36:	0001                	nop
    1d38:	0402                	c.slli64	s0
    1d3a:	035a                	slli	t1,t1,0x16
    1d3c:	0900                	addi	s0,sp,144
    1d3e:	0000                	unimp
    1d40:	0001                	nop
    1d42:	0402                	c.slli64	s0
    1d44:	035a                	slli	t1,t1,0x16
    1d46:	0900                	addi	s0,sp,144
    1d48:	0000                	unimp
    1d4a:	0001                	nop
    1d4c:	0402                	c.slli64	s0
    1d4e:	035a                	slli	t1,t1,0x16
    1d50:	0901                	addi	s2,s2,0
    1d52:	0000                	unimp
    1d54:	0001                	nop
    1d56:	0402                	c.slli64	s0
    1d58:	035a                	slli	t1,t1,0x16
    1d5a:	0900                	addi	s0,sp,144
    1d5c:	0000                	unimp
    1d5e:	0001                	nop
    1d60:	0402                	c.slli64	s0
    1d62:	035a                	slli	t1,t1,0x16
    1d64:	0900                	addi	s0,sp,144
    1d66:	0000                	unimp
    1d68:	0001                	nop
    1d6a:	0402                	c.slli64	s0
    1d6c:	035a                	slli	t1,t1,0x16
    1d6e:	0902                	c.slli64	s2
    1d70:	0000                	unimp
    1d72:	0501                	addi	a0,a0,0
    1d74:	0001                	nop
    1d76:	0402                	c.slli64	s0
    1d78:	065a                	slli	a2,a2,0x16
    1d7a:	00090103          	lb	sp,0(s2)
    1d7e:	0100                	addi	s0,sp,128
    1d80:	0305                	addi	t1,t1,1
    1d82:	14097a03          	0x14097a03
    1d86:	0100                	addi	s0,sp,128
    1d88:	10090103          	lb	sp,256(s2)
    1d8c:	0100                	addi	s0,sp,128
    1d8e:	1009                	c.nop	-30
    1d90:	0000                	unimp
    1d92:	0101                	addi	sp,sp,0
    1d94:	0241                	addi	tp,tp,16
    1d96:	0000                	unimp
    1d98:	00960003          	lb	zero,9(a2)
    1d9c:	0000                	unimp
    1d9e:	0101                	addi	sp,sp,0
    1da0:	000d0efb          	0xd0efb
    1da4:	0101                	addi	sp,sp,0
    1da6:	0101                	addi	sp,sp,0
    1da8:	0000                	unimp
    1daa:	0100                	addi	s0,sp,128
    1dac:	0000                	unimp
    1dae:	2e01                	sext.w	t3,t3
    1db0:	2f2e                	fld	ft10,200(sp)
    1db2:	2e2e                	fld	ft8,200(sp)
    1db4:	2f2e2e2f          	0x2f2e2e2f
    1db8:	2e2e                	fld	ft8,200(sp)
    1dba:	7369722f          	0x7369722f
    1dbe:	672d7663          	bgeu	s10,s2,242a <register_fini-0xdc86>
    1dc2:	6c2f6363          	bltu	t5,sp,2488 <register_fini-0xdc28>
    1dc6:	6269                	lui	tp,0x1a
    1dc8:	2f636367          	0x2f636367
    1dcc:	74666f73          	csrrsi	t5,0x746,12
    1dd0:	662d                	lui	a2,0xb
    1dd2:	0070                	addi	a2,sp,12
    1dd4:	2e2e                	fld	ft8,200(sp)
    1dd6:	2f2e2e2f          	0x2f2e2e2f
    1dda:	2e2e                	fld	ft8,200(sp)
    1ddc:	2f2e2e2f          	0x2f2e2e2f
    1de0:	6972                	ld	s2,280(sp)
    1de2:	2d766373          	csrrsi	t1,0x2d7,12
    1de6:	2f636367          	0x2f636367
    1dea:	696c                	ld	a1,208(a0)
    1dec:	6762                	ld	a4,24(sp)
    1dee:	2e2f6363          	bltu	t5,sp,20d4 <register_fini-0xdfdc>
    1df2:	2f2e                	fld	ft10,200(sp)
    1df4:	6e69                	lui	t3,0x1a
    1df6:	64756c63          	bltu	a0,t2,244e <register_fini-0xdc62>
    1dfa:	0065                	c.nop	25
    1dfc:	6600                	ld	s0,8(a2)
    1dfe:	6f6c                	ld	a1,216(a4)
    1e00:	7461                	lui	s0,0xffff8
    1e02:	66646973          	csrrsi	s2,0x666,8
    1e06:	632e                	ld	t1,200(sp)
    1e08:	0100                	addi	s0,sp,128
    1e0a:	0000                	unimp
    1e0c:	74666f73          	csrrsi	t5,0x746,12
    1e10:	662d                	lui	a2,0xb
    1e12:	2e70                	fld	fa2,216(a2)
    1e14:	0068                	addi	a0,sp,12
    1e16:	0001                	nop
    1e18:	6400                	ld	s0,8(s0)
    1e1a:	6c62756f          	jal	a0,294e0 <__BSS_END__+0x16cb0>
    1e1e:	2e65                	addiw	t3,t3,25
    1e20:	0068                	addi	a0,sp,12
    1e22:	0001                	nop
    1e24:	6c00                	ld	s0,24(s0)
    1e26:	6c676e6f          	jal	t3,784ec <__BSS_END__+0x65cbc>
    1e2a:	2e676e6f          	jal	t3,78110 <__BSS_END__+0x658e0>
    1e2e:	0068                	addi	a0,sp,12
    1e30:	0002                	c.slli64	zero
    1e32:	0000                	unimp
    1e34:	0105                	addi	sp,sp,1
    1e36:	0900                	addi	s0,sp,144
    1e38:	4802                	lw	a6,0(sp)
    1e3a:	0110                	addi	a2,sp,128
    1e3c:	0000                	unimp
    1e3e:	0000                	unimp
    1e40:	0300                	addi	s0,sp,384
    1e42:	0124                	addi	s1,sp,136
    1e44:	0305                	addi	t1,t1,1
    1e46:	00090103          	lb	sp,0(s2)
    1e4a:	0100                	addi	s0,sp,128
    1e4c:	00090003          	lb	zero,0(s2)
    1e50:	0100                	addi	s0,sp,128
    1e52:	00090003          	lb	zero,0(s2)
    1e56:	0100                	addi	s0,sp,128
    1e58:	00090003          	lb	zero,0(s2)
    1e5c:	0100                	addi	s0,sp,128
    1e5e:	00090103          	lb	sp,0(s2)
    1e62:	0100                	addi	s0,sp,128
    1e64:	00090203          	lb	tp,0(s2)
    1e68:	0100                	addi	s0,sp,128
    1e6a:	00090003          	lb	zero,0(s2)
    1e6e:	0100                	addi	s0,sp,128
    1e70:	0105                	addi	sp,sp,1
    1e72:	0306                	slli	t1,t1,0x1
    1e74:	097c                	addi	a5,sp,156
    1e76:	0000                	unimp
    1e78:	0501                	addi	a0,a0,0
    1e7a:	09040303          	lb	t1,144(s0) # ffffffffffff8090 <__BSS_END__+0xfffffffffffe5860>
    1e7e:	0010                	0x10
    1e80:	0001                	nop
    1e82:	0402                	c.slli64	s0
    1e84:	0601                	addi	a2,a2,0
    1e86:	04090003          	lb	zero,64(s2)
    1e8a:	0100                	addi	s0,sp,128
    1e8c:	0200                	addi	s0,sp,256
    1e8e:	0104                	addi	s1,sp,128
    1e90:	04090003          	lb	zero,64(s2)
    1e94:	0100                	addi	s0,sp,128
    1e96:	0200                	addi	s0,sp,256
    1e98:	0304                	addi	s1,sp,384
    1e9a:	08090003          	lb	zero,128(s2)
    1e9e:	0100                	addi	s0,sp,128
    1ea0:	0200                	addi	s0,sp,256
    1ea2:	0904                	addi	s1,sp,144
    1ea4:	04090003          	lb	zero,64(s2)
    1ea8:	0100                	addi	s0,sp,128
    1eaa:	0200                	addi	s0,sp,256
    1eac:	0904                	addi	s1,sp,144
    1eae:	00090003          	lb	zero,0(s2)
    1eb2:	0100                	addi	s0,sp,128
    1eb4:	0200                	addi	s0,sp,256
    1eb6:	0904                	addi	s1,sp,144
    1eb8:	00090003          	lb	zero,0(s2)
    1ebc:	0100                	addi	s0,sp,128
    1ebe:	0200                	addi	s0,sp,256
    1ec0:	0904                	addi	s1,sp,144
    1ec2:	00090003          	lb	zero,0(s2)
    1ec6:	0100                	addi	s0,sp,128
    1ec8:	0200                	addi	s0,sp,256
    1eca:	0904                	addi	s1,sp,144
    1ecc:	00090003          	lb	zero,0(s2)
    1ed0:	0100                	addi	s0,sp,128
    1ed2:	0200                	addi	s0,sp,256
    1ed4:	0904                	addi	s1,sp,144
    1ed6:	00090003          	lb	zero,0(s2)
    1eda:	0100                	addi	s0,sp,128
    1edc:	0200                	addi	s0,sp,256
    1ede:	0904                	addi	s1,sp,144
    1ee0:	00090003          	lb	zero,0(s2)
    1ee4:	0100                	addi	s0,sp,128
    1ee6:	0200                	addi	s0,sp,256
    1ee8:	0904                	addi	s1,sp,144
    1eea:	00090003          	lb	zero,0(s2)
    1eee:	0100                	addi	s0,sp,128
    1ef0:	0200                	addi	s0,sp,256
    1ef2:	0904                	addi	s1,sp,144
    1ef4:	10090003          	lb	zero,256(s2)
    1ef8:	0100                	addi	s0,sp,128
    1efa:	0200                	addi	s0,sp,256
    1efc:	0904                	addi	s1,sp,144
    1efe:	00090003          	lb	zero,0(s2)
    1f02:	0100                	addi	s0,sp,128
    1f04:	0200                	addi	s0,sp,256
    1f06:	0904                	addi	s1,sp,144
    1f08:	08090003          	lb	zero,128(s2)
    1f0c:	0100                	addi	s0,sp,128
    1f0e:	0200                	addi	s0,sp,256
    1f10:	0904                	addi	s1,sp,144
    1f12:	00090003          	lb	zero,0(s2)
    1f16:	0100                	addi	s0,sp,128
    1f18:	0200                	addi	s0,sp,256
    1f1a:	0904                	addi	s1,sp,144
    1f1c:	00090003          	lb	zero,0(s2)
    1f20:	0100                	addi	s0,sp,128
    1f22:	0200                	addi	s0,sp,256
    1f24:	0904                	addi	s1,sp,144
    1f26:	00090003          	lb	zero,0(s2)
    1f2a:	0100                	addi	s0,sp,128
    1f2c:	0200                	addi	s0,sp,256
    1f2e:	0904                	addi	s1,sp,144
    1f30:	00090003          	lb	zero,0(s2)
    1f34:	0100                	addi	s0,sp,128
    1f36:	0200                	addi	s0,sp,256
    1f38:	0904                	addi	s1,sp,144
    1f3a:	00090003          	lb	zero,0(s2)
    1f3e:	0100                	addi	s0,sp,128
    1f40:	0200                	addi	s0,sp,256
    1f42:	0904                	addi	s1,sp,144
    1f44:	00090003          	lb	zero,0(s2)
    1f48:	0100                	addi	s0,sp,128
    1f4a:	0200                	addi	s0,sp,256
    1f4c:	7904                	ld	s1,48(a0)
    1f4e:	0c090003          	lb	zero,192(s2)
    1f52:	0100                	addi	s0,sp,128
    1f54:	0200                	addi	s0,sp,256
    1f56:	7904                	ld	s1,48(a0)
    1f58:	00090103          	lb	sp,0(s2)
    1f5c:	0100                	addi	s0,sp,128
    1f5e:	0200                	addi	s0,sp,256
    1f60:	7904                	ld	s1,48(a0)
    1f62:	00090003          	lb	zero,0(s2)
    1f66:	0100                	addi	s0,sp,128
    1f68:	0200                	addi	s0,sp,256
    1f6a:	7904                	ld	s1,48(a0)
    1f6c:	00090003          	lb	zero,0(s2)
    1f70:	0100                	addi	s0,sp,128
    1f72:	0200                	addi	s0,sp,256
    1f74:	7904                	ld	s1,48(a0)
    1f76:	00090003          	lb	zero,0(s2)
    1f7a:	0100                	addi	s0,sp,128
    1f7c:	0200                	addi	s0,sp,256
    1f7e:	7904                	ld	s1,48(a0)
    1f80:	00090003          	lb	zero,0(s2)
    1f84:	0100                	addi	s0,sp,128
    1f86:	0105                	addi	sp,sp,1
    1f88:	0200                	addi	s0,sp,256
    1f8a:	7904                	ld	s1,48(a0)
    1f8c:	0306                	slli	t1,t1,0x1
    1f8e:	00000903          	lb	s2,0(zero) # 0 <register_fini-0x100b0>
    1f92:	0501                	addi	a0,a0,0
    1f94:	04020003          	lb	zero,64(tp) # 1a040 <__BSS_END__+0x7810>
    1f98:	0379                	addi	t1,t1,30
    1f9a:	097d                	addi	s2,s2,31
    1f9c:	0008                	0x8
    1f9e:	0001                	nop
    1fa0:	0402                	c.slli64	s0
    1fa2:	0679                	addi	a2,a2,30
    1fa4:	14090003          	lb	zero,320(s2)
    1fa8:	0100                	addi	s0,sp,128
    1faa:	0200                	addi	s0,sp,256
    1fac:	7904                	ld	s1,48(a0)
    1fae:	00090003          	lb	zero,0(s2)
    1fb2:	0100                	addi	s0,sp,128
    1fb4:	0200                	addi	s0,sp,256
    1fb6:	7904                	ld	s1,48(a0)
    1fb8:	00090203          	lb	tp,0(s2)
    1fbc:	0100                	addi	s0,sp,128
    1fbe:	0105                	addi	sp,sp,1
    1fc0:	0200                	addi	s0,sp,256
    1fc2:	7904                	ld	s1,48(a0)
    1fc4:	0306                	slli	t1,t1,0x1
    1fc6:	0901                	addi	s2,s2,0
    1fc8:	0000                	unimp
    1fca:	0501                	addi	a0,a0,0
    1fcc:	097c0303          	lb	t1,151(s8)
    1fd0:	0010                	0x10
    1fd2:	0901                	addi	s2,s2,0
    1fd4:	0010                	0x10
    1fd6:	0100                	addi	s0,sp,128
    1fd8:	7c01                	lui	s8,0xfffe0
    1fda:	03000003          	lb	zero,48(zero) # 30 <register_fini-0x10080>
    1fde:	a400                	fsd	fs0,8(s0)
    1fe0:	0000                	unimp
    1fe2:	0100                	addi	s0,sp,128
    1fe4:	fb01                	bnez	a4,1ef4 <register_fini-0xe1bc>
    1fe6:	0d0e                	slli	s10,s10,0x3
    1fe8:	0100                	addi	s0,sp,128
    1fea:	0101                	addi	sp,sp,0
    1fec:	0001                	nop
    1fee:	0000                	unimp
    1ff0:	0001                	nop
    1ff2:	0100                	addi	s0,sp,128
    1ff4:	2e2e                	fld	ft8,200(sp)
    1ff6:	2f2e2e2f          	0x2f2e2e2f
    1ffa:	2e2e                	fld	ft8,200(sp)
    1ffc:	2f2e2e2f          	0x2f2e2e2f
    2000:	6972                	ld	s2,280(sp)
    2002:	2d766373          	csrrsi	t1,0x2d7,12
    2006:	2f636367          	0x2f636367
    200a:	696c                	ld	a1,208(a0)
    200c:	6762                	ld	a4,24(sp)
    200e:	732f6363          	bltu	t5,s2,2734 <register_fini-0xd97c>
    2012:	2d74666f          	jal	a2,48ae8 <__BSS_END__+0x362b8>
    2016:	7066                	0x7066
    2018:	2e00                	fld	fs0,24(a2)
    201a:	2f2e                	fld	ft10,200(sp)
    201c:	2e2e                	fld	ft8,200(sp)
    201e:	2f2e2e2f          	0x2f2e2e2f
    2022:	2e2e                	fld	ft8,200(sp)
    2024:	7369722f          	0x7369722f
    2028:	672d7663          	bgeu	s10,s2,2694 <register_fini-0xda1c>
    202c:	6c2f6363          	bltu	t5,sp,26f2 <register_fini-0xd9be>
    2030:	6269                	lui	tp,0x1a
    2032:	2f636367          	0x2f636367
    2036:	2e2e                	fld	ft8,200(sp)
    2038:	636e692f          	0x636e692f
    203c:	756c                	ld	a1,232(a0)
    203e:	6564                	ld	s1,200(a0)
    2040:	0000                	unimp
    2042:	7865                	lui	a6,0xffff9
    2044:	6574                	ld	a3,200(a0)
    2046:	646e                	ld	s0,216(sp)
    2048:	66646673          	csrrsi	a2,0x666,8
    204c:	2e32                	fld	ft8,264(sp)
    204e:	00010063          	beqz	sp,204e <register_fini-0xe062>
    2052:	7300                	ld	s0,32(a4)
    2054:	2d74666f          	jal	a2,48b2a <__BSS_END__+0x362fa>
    2058:	7066                	0x7066
    205a:	682e                	ld	a6,200(sp)
    205c:	0100                	addi	s0,sp,128
    205e:	0000                	unimp
    2060:	676e6973          	csrrsi	s2,0x676,28
    2064:	656c                	ld	a1,200(a0)
    2066:	682e                	ld	a6,200(sp)
    2068:	0100                	addi	s0,sp,128
    206a:	0000                	unimp
    206c:	6f64                	ld	s1,216(a4)
    206e:	6275                	lui	tp,0x1d
    2070:	656c                	ld	a1,200(a0)
    2072:	682e                	ld	a6,200(sp)
    2074:	0100                	addi	s0,sp,128
    2076:	0000                	unimp
    2078:	6f6c                	ld	a1,216(a4)
    207a:	676e                	ld	a4,216(sp)
    207c:	6f6c                	ld	a1,216(a4)
    207e:	676e                	ld	a4,216(sp)
    2080:	682e                	ld	a6,200(sp)
    2082:	0200                	addi	s0,sp,256
    2084:	0000                	unimp
    2086:	0500                	addi	s0,sp,640
    2088:	0001                	nop
    208a:	0209                	addi	tp,tp,2
    208c:	10cc                	addi	a1,sp,100
    208e:	0001                	nop
    2090:	0000                	unimp
    2092:	0000                	unimp
    2094:	05012503          	lw	a0,80(sp)
    2098:	09010303          	lb	t1,144(sp)
    209c:	0000                	unimp
    209e:	0301                	addi	t1,t1,0
    20a0:	0900                	addi	s0,sp,144
    20a2:	0000                	unimp
    20a4:	0501                	addi	a0,a0,0
    20a6:	030d                	addi	t1,t1,3
    20a8:	0900                	addi	s0,sp,144
    20aa:	0000                	unimp
    20ac:	0501                	addi	a0,a0,0
    20ae:	09010303          	lb	t1,144(sp)
    20b2:	0000                	unimp
    20b4:	0301                	addi	t1,t1,0
    20b6:	0900                	addi	s0,sp,144
    20b8:	0000                	unimp
    20ba:	0301                	addi	t1,t1,0
    20bc:	0900                	addi	s0,sp,144
    20be:	0000                	unimp
    20c0:	0301                	addi	t1,t1,0
    20c2:	0900                	addi	s0,sp,144
    20c4:	0000                	unimp
    20c6:	0301                	addi	t1,t1,0
    20c8:	0901                	addi	s2,s2,0
    20ca:	0000                	unimp
    20cc:	0301                	addi	t1,t1,0
    20ce:	0900                	addi	s0,sp,144
    20d0:	0000                	unimp
    20d2:	0301                	addi	t1,t1,0
    20d4:	0900                	addi	s0,sp,144
    20d6:	0000                	unimp
    20d8:	0301                	addi	t1,t1,0
    20da:	0900                	addi	s0,sp,144
    20dc:	0000                	unimp
    20de:	0301                	addi	t1,t1,0
    20e0:	0901                	addi	s2,s2,0
    20e2:	0000                	unimp
    20e4:	0301                	addi	t1,t1,0
    20e6:	0902                	c.slli64	s2
    20e8:	0000                	unimp
    20ea:	0301                	addi	t1,t1,0
    20ec:	0901                	addi	s2,s2,0
    20ee:	0000                	unimp
    20f0:	0301                	addi	t1,t1,0
    20f2:	0900                	addi	s0,sp,144
    20f4:	0000                	unimp
    20f6:	0301                	addi	t1,t1,0
    20f8:	0900                	addi	s0,sp,144
    20fa:	0000                	unimp
    20fc:	0301                	addi	t1,t1,0
    20fe:	0900                	addi	s0,sp,144
    2100:	0000                	unimp
    2102:	0501                	addi	a0,a0,0
    2104:	0601                	addi	a2,a2,0
    2106:	04097903          	0x4097903
    210a:	0100                	addi	s0,sp,128
    210c:	0305                	addi	t1,t1,1
    210e:	10090703          	lb	a4,256(s2)
    2112:	0100                	addi	s0,sp,128
    2114:	08090403          	lb	s0,128(s2)
    2118:	0100                	addi	s0,sp,128
    211a:	0105                	addi	sp,sp,1
    211c:	04097503          	0x4097503
    2120:	0100                	addi	s0,sp,128
    2122:	0305                	addi	t1,t1,1
    2124:	04090b03          	lb	s6,64(s2)
    2128:	0100                	addi	s0,sp,128
    212a:	04097c03          	0x4097c03
    212e:	0100                	addi	s0,sp,128
    2130:	0306                	slli	t1,t1,0x1
    2132:	0900                	addi	s0,sp,144
    2134:	0004                	0x4
    2136:	0301                	addi	t1,t1,0
    2138:	0900                	addi	s0,sp,144
    213a:	0000                	unimp
    213c:	0301                	addi	t1,t1,0
    213e:	0900                	addi	s0,sp,144
    2140:	0000                	unimp
    2142:	0301                	addi	t1,t1,0
    2144:	0904                	addi	s1,sp,144
    2146:	0000                	unimp
    2148:	0301                	addi	t1,t1,0
    214a:	0900                	addi	s0,sp,144
    214c:	0000                	unimp
    214e:	0301                	addi	t1,t1,0
    2150:	0900                	addi	s0,sp,144
    2152:	0000                	unimp
    2154:	0301                	addi	t1,t1,0
    2156:	0900                	addi	s0,sp,144
    2158:	0000                	unimp
    215a:	0301                	addi	t1,t1,0
    215c:	0900                	addi	s0,sp,144
    215e:	0000                	unimp
    2160:	0301                	addi	t1,t1,0
    2162:	0900                	addi	s0,sp,144
    2164:	0000                	unimp
    2166:	0301                	addi	t1,t1,0
    2168:	0900                	addi	s0,sp,144
    216a:	0000                	unimp
    216c:	0001                	nop
    216e:	0402                	c.slli64	s0
    2170:	0301                	addi	t1,t1,0
    2172:	0900                	addi	s0,sp,144
    2174:	0004                	0x4
    2176:	0001                	nop
    2178:	0402                	c.slli64	s0
    217a:	0301                	addi	t1,t1,0
    217c:	0900                	addi	s0,sp,144
    217e:	0004                	0x4
    2180:	0001                	nop
    2182:	0402                	c.slli64	s0
    2184:	0301                	addi	t1,t1,0
    2186:	0900                	addi	s0,sp,144
    2188:	0000                	unimp
    218a:	0001                	nop
    218c:	0402                	c.slli64	s0
    218e:	0301                	addi	t1,t1,0
    2190:	0900                	addi	s0,sp,144
    2192:	0000                	unimp
    2194:	0001                	nop
    2196:	0402                	c.slli64	s0
    2198:	0330                	addi	a2,sp,392
    219a:	0900                	addi	s0,sp,144
    219c:	0004                	0x4
    219e:	0001                	nop
    21a0:	0402                	c.slli64	s0
    21a2:	0330                	addi	a2,sp,392
    21a4:	0900                	addi	s0,sp,144
    21a6:	0000                	unimp
    21a8:	0001                	nop
    21aa:	0402                	c.slli64	s0
    21ac:	0330                	addi	a2,sp,392
    21ae:	0902                	c.slli64	s2
    21b0:	0000                	unimp
    21b2:	0001                	nop
    21b4:	0402                	c.slli64	s0
    21b6:	0330                	addi	a2,sp,392
    21b8:	0900                	addi	s0,sp,144
    21ba:	0000                	unimp
    21bc:	0001                	nop
    21be:	0402                	c.slli64	s0
    21c0:	0330                	addi	a2,sp,392
    21c2:	0900                	addi	s0,sp,144
    21c4:	0000                	unimp
    21c6:	0001                	nop
    21c8:	0402                	c.slli64	s0
    21ca:	0330                	addi	a2,sp,392
    21cc:	0900                	addi	s0,sp,144
    21ce:	0000                	unimp
    21d0:	0001                	nop
    21d2:	0402                	c.slli64	s0
    21d4:	0330                	addi	a2,sp,392
    21d6:	0900                	addi	s0,sp,144
    21d8:	0000                	unimp
    21da:	0001                	nop
    21dc:	0402                	c.slli64	s0
    21de:	0330                	addi	a2,sp,392
    21e0:	0900                	addi	s0,sp,144
    21e2:	0014                	0x14
    21e4:	0001                	nop
    21e6:	0402                	c.slli64	s0
    21e8:	0330                	addi	a2,sp,392
    21ea:	0900                	addi	s0,sp,144
    21ec:	0000                	unimp
    21ee:	0001                	nop
    21f0:	0402                	c.slli64	s0
    21f2:	0330                	addi	a2,sp,392
    21f4:	0901                	addi	s2,s2,0
    21f6:	0000                	unimp
    21f8:	0001                	nop
    21fa:	0402                	c.slli64	s0
    21fc:	0330                	addi	a2,sp,392
    21fe:	0900                	addi	s0,sp,144
    2200:	0000                	unimp
    2202:	0001                	nop
    2204:	0402                	c.slli64	s0
    2206:	0330                	addi	a2,sp,392
    2208:	0900                	addi	s0,sp,144
    220a:	0000                	unimp
    220c:	0001                	nop
    220e:	0402                	c.slli64	s0
    2210:	0330                	addi	a2,sp,392
    2212:	0902                	c.slli64	s2
    2214:	0000                	unimp
    2216:	0501                	addi	a0,a0,0
    2218:	0001                	nop
    221a:	0402                	c.slli64	s0
    221c:	0630                	addi	a2,sp,776
    221e:	00090103          	lb	sp,0(s2)
    2222:	0100                	addi	s0,sp,128
    2224:	0305                	addi	t1,t1,1
    2226:	0200                	addi	s0,sp,256
    2228:	0204                	addi	s1,sp,256
    222a:	0306                	slli	t1,t1,0x1
    222c:	097a                	slli	s2,s2,0x1e
    222e:	0018                	0x18
    2230:	0001                	nop
    2232:	0402                	c.slli64	s0
    2234:	0900030b          	0x900030b
    2238:	0004                	0x4
    223a:	0001                	nop
    223c:	0402                	c.slli64	s0
    223e:	0900030b          	0x900030b
    2242:	0000                	unimp
    2244:	0001                	nop
    2246:	0402                	c.slli64	s0
    2248:	0900030b          	0x900030b
    224c:	0000                	unimp
    224e:	0001                	nop
    2250:	0402                	c.slli64	s0
    2252:	0900030b          	0x900030b
    2256:	0000                	unimp
    2258:	0001                	nop
    225a:	0402                	c.slli64	s0
    225c:	0900030f          	0x900030f
    2260:	0004                	0x4
    2262:	0001                	nop
    2264:	0402                	c.slli64	s0
    2266:	0900030f          	0x900030f
    226a:	0000                	unimp
    226c:	0001                	nop
    226e:	0402                	c.slli64	s0
    2270:	0900030f          	0x900030f
    2274:	0000                	unimp
    2276:	0001                	nop
    2278:	0402                	c.slli64	s0
    227a:	0900030f          	0x900030f
    227e:	0000                	unimp
    2280:	0001                	nop
    2282:	0402                	c.slli64	s0
    2284:	0900030f          	0x900030f
    2288:	0000                	unimp
    228a:	0001                	nop
    228c:	0402                	c.slli64	s0
    228e:	0900030f          	0x900030f
    2292:	0000                	unimp
    2294:	0001                	nop
    2296:	0402                	c.slli64	s0
    2298:	0900030f          	0x900030f
    229c:	0000                	unimp
    229e:	0001                	nop
    22a0:	0402                	c.slli64	s0
    22a2:	0900030f          	0x900030f
    22a6:	0000                	unimp
    22a8:	0001                	nop
    22aa:	0402                	c.slli64	s0
    22ac:	0900030f          	0x900030f
    22b0:	0008                	0x8
    22b2:	0001                	nop
    22b4:	0402                	c.slli64	s0
    22b6:	0900030f          	0x900030f
    22ba:	0000                	unimp
    22bc:	0001                	nop
    22be:	0402                	c.slli64	s0
    22c0:	0900030f          	0x900030f
    22c4:	0000                	unimp
    22c6:	0001                	nop
    22c8:	0402                	c.slli64	s0
    22ca:	0900030f          	0x900030f
    22ce:	0000                	unimp
    22d0:	0001                	nop
    22d2:	0402                	c.slli64	s0
    22d4:	0900030f          	0x900030f
    22d8:	0008                	0x8
    22da:	0001                	nop
    22dc:	0402                	c.slli64	s0
    22de:	0900030f          	0x900030f
    22e2:	0000                	unimp
    22e4:	0001                	nop
    22e6:	0402                	c.slli64	s0
    22e8:	0308                	addi	a0,sp,384
    22ea:	0900                	addi	s0,sp,144
    22ec:	000c                	0xc
    22ee:	0001                	nop
    22f0:	0402                	c.slli64	s0
    22f2:	0308                	addi	a0,sp,384
    22f4:	0900                	addi	s0,sp,144
    22f6:	0000                	unimp
    22f8:	0001                	nop
    22fa:	0402                	c.slli64	s0
    22fc:	0322                	slli	t1,t1,0x8
    22fe:	0900                	addi	s0,sp,144
    2300:	0008                	0x8
    2302:	0001                	nop
    2304:	0402                	c.slli64	s0
    2306:	0322                	slli	t1,t1,0x8
    2308:	0900                	addi	s0,sp,144
    230a:	0000                	unimp
    230c:	0001                	nop
    230e:	0402                	c.slli64	s0
    2310:	0322                	slli	t1,t1,0x8
    2312:	0900                	addi	s0,sp,144
    2314:	0000                	unimp
    2316:	0001                	nop
    2318:	0402                	c.slli64	s0
    231a:	0322                	slli	t1,t1,0x8
    231c:	0900                	addi	s0,sp,144
    231e:	0000                	unimp
    2320:	0001                	nop
    2322:	0402                	c.slli64	s0
    2324:	0322                	slli	t1,t1,0x8
    2326:	0900                	addi	s0,sp,144
    2328:	0008                	0x8
    232a:	0001                	nop
    232c:	0402                	c.slli64	s0
    232e:	0322                	slli	t1,t1,0x8
    2330:	0900                	addi	s0,sp,144
    2332:	0000                	unimp
    2334:	0001                	nop
    2336:	0402                	c.slli64	s0
    2338:	0322                	slli	t1,t1,0x8
    233a:	0900                	addi	s0,sp,144
    233c:	0000                	unimp
    233e:	0001                	nop
    2340:	0402                	c.slli64	s0
    2342:	0322                	slli	t1,t1,0x8
    2344:	0900                	addi	s0,sp,144
    2346:	0000                	unimp
    2348:	0001                	nop
    234a:	0402                	c.slli64	s0
    234c:	0322                	slli	t1,t1,0x8
    234e:	0900                	addi	s0,sp,144
    2350:	0000                	unimp
    2352:	0901                	addi	s2,s2,0
    2354:	000c                	0xc
    2356:	0100                	addi	s0,sp,128
    2358:	2301                	sext.w	t1,t1
    235a:	0004                	0x4
    235c:	0300                	addi	s0,sp,384
    235e:	a300                	fsd	fs0,0(a4)
    2360:	0000                	unimp
    2362:	0100                	addi	s0,sp,128
    2364:	fb01                	bnez	a4,2274 <register_fini-0xde3c>
    2366:	0d0e                	slli	s10,s10,0x3
    2368:	0100                	addi	s0,sp,128
    236a:	0101                	addi	sp,sp,0
    236c:	0001                	nop
    236e:	0000                	unimp
    2370:	0001                	nop
    2372:	0100                	addi	s0,sp,128
    2374:	2e2e                	fld	ft8,200(sp)
    2376:	2f2e2e2f          	0x2f2e2e2f
    237a:	2e2e                	fld	ft8,200(sp)
    237c:	2f2e2e2f          	0x2f2e2e2f
    2380:	6972                	ld	s2,280(sp)
    2382:	2d766373          	csrrsi	t1,0x2d7,12
    2386:	2f636367          	0x2f636367
    238a:	696c                	ld	a1,208(a0)
    238c:	6762                	ld	a4,24(sp)
    238e:	732f6363          	bltu	t5,s2,2ab4 <register_fini-0xd5fc>
    2392:	2d74666f          	jal	a2,48e68 <__BSS_END__+0x36638>
    2396:	7066                	0x7066
    2398:	2e00                	fld	fs0,24(a2)
    239a:	2f2e                	fld	ft10,200(sp)
    239c:	2e2e                	fld	ft8,200(sp)
    239e:	2f2e2e2f          	0x2f2e2e2f
    23a2:	2e2e                	fld	ft8,200(sp)
    23a4:	7369722f          	0x7369722f
    23a8:	672d7663          	bgeu	s10,s2,2a14 <register_fini-0xd69c>
    23ac:	6c2f6363          	bltu	t5,sp,2a72 <register_fini-0xd63e>
    23b0:	6269                	lui	tp,0x1a
    23b2:	2f636367          	0x2f636367
    23b6:	2e2e                	fld	ft8,200(sp)
    23b8:	636e692f          	0x636e692f
    23bc:	756c                	ld	a1,232(a0)
    23be:	6564                	ld	s1,200(a0)
    23c0:	0000                	unimp
    23c2:	7274                	ld	a3,224(a2)
    23c4:	6e75                	lui	t3,0x1d
    23c6:	73666463          	bltu	a2,s6,2aee <register_fini-0xd5c2>
    23ca:	3266                	fld	ft4,120(sp)
    23cc:	632e                	ld	t1,200(sp)
    23ce:	0100                	addi	s0,sp,128
    23d0:	0000                	unimp
    23d2:	74666f73          	csrrsi	t5,0x746,12
    23d6:	662d                	lui	a2,0xb
    23d8:	2e70                	fld	fa2,216(a2)
    23da:	0068                	addi	a0,sp,12
    23dc:	0001                	nop
    23de:	7300                	ld	s0,32(a4)
    23e0:	6e69                	lui	t3,0x1a
    23e2:	2e656c67          	0x2e656c67
    23e6:	0068                	addi	a0,sp,12
    23e8:	0001                	nop
    23ea:	6400                	ld	s0,8(s0)
    23ec:	6c62756f          	jal	a0,29ab2 <__BSS_END__+0x17282>
    23f0:	2e65                	addiw	t3,t3,25
    23f2:	0068                	addi	a0,sp,12
    23f4:	0001                	nop
    23f6:	6c00                	ld	s0,24(s0)
    23f8:	6c676e6f          	jal	t3,78abe <__BSS_END__+0x6628e>
    23fc:	2e676e6f          	jal	t3,786e2 <__BSS_END__+0x65eb2>
    2400:	0068                	addi	a0,sp,12
    2402:	0002                	c.slli64	zero
    2404:	0000                	unimp
    2406:	0105                	addi	sp,sp,1
    2408:	0900                	addi	s0,sp,144
    240a:	7002                	0x7002
    240c:	0111                	addi	sp,sp,4
    240e:	0000                	unimp
    2410:	0000                	unimp
    2412:	0300                	addi	s0,sp,384
    2414:	0124                	addi	s1,sp,136
    2416:	0305                	addi	t1,t1,1
    2418:	00090103          	lb	sp,0(s2)
    241c:	0100                	addi	s0,sp,128
    241e:	00090003          	lb	zero,0(s2)
    2422:	0100                	addi	s0,sp,128
    2424:	0d05                	addi	s10,s10,1
    2426:	00090003          	lb	zero,0(s2)
    242a:	0100                	addi	s0,sp,128
    242c:	0305                	addi	t1,t1,1
    242e:	00090103          	lb	sp,0(s2)
    2432:	0100                	addi	s0,sp,128
    2434:	00090003          	lb	zero,0(s2)
    2438:	0100                	addi	s0,sp,128
    243a:	00090003          	lb	zero,0(s2)
    243e:	0100                	addi	s0,sp,128
    2440:	00090003          	lb	zero,0(s2)
    2444:	0100                	addi	s0,sp,128
    2446:	00090103          	lb	sp,0(s2)
    244a:	0100                	addi	s0,sp,128
    244c:	00090003          	lb	zero,0(s2)
    2450:	0100                	addi	s0,sp,128
    2452:	00090003          	lb	zero,0(s2)
    2456:	0100                	addi	s0,sp,128
    2458:	00090003          	lb	zero,0(s2)
    245c:	0100                	addi	s0,sp,128
    245e:	00090103          	lb	sp,0(s2)
    2462:	0100                	addi	s0,sp,128
    2464:	00090203          	lb	tp,0(s2)
    2468:	0100                	addi	s0,sp,128
    246a:	00090103          	lb	sp,0(s2)
    246e:	0100                	addi	s0,sp,128
    2470:	00090003          	lb	zero,0(s2)
    2474:	0100                	addi	s0,sp,128
    2476:	00090003          	lb	zero,0(s2)
    247a:	0100                	addi	s0,sp,128
    247c:	00090003          	lb	zero,0(s2)
    2480:	0100                	addi	s0,sp,128
    2482:	00090003          	lb	zero,0(s2)
    2486:	0100                	addi	s0,sp,128
    2488:	0306                	slli	t1,t1,0x1
    248a:	0904                	addi	s1,sp,144
    248c:	0008                	0x8
    248e:	0301                	addi	t1,t1,0
    2490:	097c                	addi	a5,sp,156
    2492:	0004                	0x4
    2494:	0301                	addi	t1,t1,0
    2496:	0904                	addi	s1,sp,144
    2498:	0004                	0x4
    249a:	0301                	addi	t1,t1,0
    249c:	097c                	addi	a5,sp,156
    249e:	0004                	0x4
    24a0:	0601                	addi	a2,a2,0
    24a2:	04090003          	lb	zero,64(s2)
    24a6:	0100                	addi	s0,sp,128
    24a8:	00090003          	lb	zero,0(s2)
    24ac:	0100                	addi	s0,sp,128
    24ae:	04090003          	lb	zero,64(s2)
    24b2:	0100                	addi	s0,sp,128
    24b4:	00090003          	lb	zero,0(s2)
    24b8:	0100                	addi	s0,sp,128
    24ba:	00090003          	lb	zero,0(s2)
    24be:	0100                	addi	s0,sp,128
    24c0:	00090003          	lb	zero,0(s2)
    24c4:	0100                	addi	s0,sp,128
    24c6:	04090003          	lb	zero,64(s2)
    24ca:	0100                	addi	s0,sp,128
    24cc:	00090003          	lb	zero,0(s2)
    24d0:	0100                	addi	s0,sp,128
    24d2:	00090403          	lb	s0,0(s2)
    24d6:	0100                	addi	s0,sp,128
    24d8:	00090003          	lb	zero,0(s2)
    24dc:	0100                	addi	s0,sp,128
    24de:	00090003          	lb	zero,0(s2)
    24e2:	0100                	addi	s0,sp,128
    24e4:	00090003          	lb	zero,0(s2)
    24e8:	0100                	addi	s0,sp,128
    24ea:	00090003          	lb	zero,0(s2)
    24ee:	0100                	addi	s0,sp,128
    24f0:	0200                	addi	s0,sp,256
    24f2:	0104                	addi	s1,sp,128
    24f4:	04090003          	lb	zero,64(s2)
    24f8:	0100                	addi	s0,sp,128
    24fa:	0200                	addi	s0,sp,256
    24fc:	0104                	addi	s1,sp,128
    24fe:	04090003          	lb	zero,64(s2)
    2502:	0100                	addi	s0,sp,128
    2504:	0200                	addi	s0,sp,256
    2506:	0404                	addi	s1,sp,512
    2508:	08090003          	lb	zero,128(s2)
    250c:	0100                	addi	s0,sp,128
    250e:	0200                	addi	s0,sp,256
    2510:	1104                	addi	s1,sp,160
    2512:	04090003          	lb	zero,64(s2)
    2516:	0100                	addi	s0,sp,128
    2518:	0200                	addi	s0,sp,256
    251a:	1404                	addi	s1,sp,544
    251c:	08090003          	lb	zero,128(s2)
    2520:	0100                	addi	s0,sp,128
    2522:	0200                	addi	s0,sp,256
    2524:	1404                	addi	s1,sp,544
    2526:	0c090003          	lb	zero,192(s2)
    252a:	0100                	addi	s0,sp,128
    252c:	0200                	addi	s0,sp,256
    252e:	3a04                	fld	fs1,48(a2)
    2530:	20090003          	lb	zero,512(s2)
    2534:	0100                	addi	s0,sp,128
    2536:	0200                	addi	s0,sp,256
    2538:	3a04                	fld	fs1,48(a2)
    253a:	00090003          	lb	zero,0(s2)
    253e:	0100                	addi	s0,sp,128
    2540:	0200                	addi	s0,sp,256
    2542:	3a04                	fld	fs1,48(a2)
    2544:	00090203          	lb	tp,0(s2)
    2548:	0100                	addi	s0,sp,128
    254a:	0200                	addi	s0,sp,256
    254c:	3a04                	fld	fs1,48(a2)
    254e:	00090003          	lb	zero,0(s2)
    2552:	0100                	addi	s0,sp,128
    2554:	0200                	addi	s0,sp,256
    2556:	3a04                	fld	fs1,48(a2)
    2558:	00090003          	lb	zero,0(s2)
    255c:	0100                	addi	s0,sp,128
    255e:	0200                	addi	s0,sp,256
    2560:	3a04                	fld	fs1,48(a2)
    2562:	00090003          	lb	zero,0(s2)
    2566:	0100                	addi	s0,sp,128
    2568:	0200                	addi	s0,sp,256
    256a:	3a04                	fld	fs1,48(a2)
    256c:	00090003          	lb	zero,0(s2)
    2570:	0100                	addi	s0,sp,128
    2572:	0200                	addi	s0,sp,256
    2574:	1204                	addi	s1,sp,288
    2576:	0c097e03          	0xc097e03
    257a:	0100                	addi	s0,sp,128
    257c:	0200                	addi	s0,sp,256
    257e:	3104                	fld	fs1,32(a0)
    2580:	0306                	slli	t1,t1,0x1
    2582:	0900                	addi	s0,sp,144
    2584:	000c                	0xc
    2586:	0001                	nop
    2588:	0402                	c.slli64	s0
    258a:	0602                	c.slli64	a2
    258c:	08090003          	lb	zero,128(s2)
    2590:	0100                	addi	s0,sp,128
    2592:	0200                	addi	s0,sp,256
    2594:	2304                	fld	fs1,0(a4)
    2596:	04090003          	lb	zero,64(s2)
    259a:	0100                	addi	s0,sp,128
    259c:	0200                	addi	s0,sp,256
    259e:	2304                	fld	fs1,0(a4)
    25a0:	00090003          	lb	zero,0(s2)
    25a4:	0100                	addi	s0,sp,128
    25a6:	0200                	addi	s0,sp,256
    25a8:	2304                	fld	fs1,0(a4)
    25aa:	00090003          	lb	zero,0(s2)
    25ae:	0100                	addi	s0,sp,128
    25b0:	0200                	addi	s0,sp,256
    25b2:	2304                	fld	fs1,0(a4)
    25b4:	00090003          	lb	zero,0(s2)
    25b8:	0100                	addi	s0,sp,128
    25ba:	0200                	addi	s0,sp,256
    25bc:	2304                	fld	fs1,0(a4)
    25be:	00090003          	lb	zero,0(s2)
    25c2:	0100                	addi	s0,sp,128
    25c4:	0200                	addi	s0,sp,256
    25c6:	2004                	fld	fs1,0(s0)
    25c8:	08090003          	lb	zero,128(s2)
    25cc:	0100                	addi	s0,sp,128
    25ce:	0200                	addi	s0,sp,256
    25d0:	2004                	fld	fs1,0(s0)
    25d2:	00090003          	lb	zero,0(s2)
    25d6:	0100                	addi	s0,sp,128
    25d8:	0200                	addi	s0,sp,256
    25da:	3104                	fld	fs1,32(a0)
    25dc:	08090003          	lb	zero,128(s2)
    25e0:	0100                	addi	s0,sp,128
    25e2:	0200                	addi	s0,sp,256
    25e4:	3104                	fld	fs1,32(a0)
    25e6:	00090003          	lb	zero,0(s2)
    25ea:	0100                	addi	s0,sp,128
    25ec:	0200                	addi	s0,sp,256
    25ee:	3104                	fld	fs1,32(a0)
    25f0:	00090003          	lb	zero,0(s2)
    25f4:	0100                	addi	s0,sp,128
    25f6:	0200                	addi	s0,sp,256
    25f8:	3104                	fld	fs1,32(a0)
    25fa:	00090003          	lb	zero,0(s2)
    25fe:	0100                	addi	s0,sp,128
    2600:	0200                	addi	s0,sp,256
    2602:	3104                	fld	fs1,32(a0)
    2604:	00090003          	lb	zero,0(s2)
    2608:	0100                	addi	s0,sp,128
    260a:	0200                	addi	s0,sp,256
    260c:	3104                	fld	fs1,32(a0)
    260e:	00090003          	lb	zero,0(s2)
    2612:	0100                	addi	s0,sp,128
    2614:	0200                	addi	s0,sp,256
    2616:	3104                	fld	fs1,32(a0)
    2618:	08090003          	lb	zero,128(s2)
    261c:	0100                	addi	s0,sp,128
    261e:	0200                	addi	s0,sp,256
    2620:	3104                	fld	fs1,32(a0)
    2622:	00090003          	lb	zero,0(s2)
    2626:	0100                	addi	s0,sp,128
    2628:	0200                	addi	s0,sp,256
    262a:	3104                	fld	fs1,32(a0)
    262c:	00090003          	lb	zero,0(s2)
    2630:	0100                	addi	s0,sp,128
    2632:	0200                	addi	s0,sp,256
    2634:	2f04                	fld	fs1,24(a4)
    2636:	10090203          	lb	tp,256(s2)
    263a:	0100                	addi	s0,sp,128
    263c:	0200                	addi	s0,sp,256
    263e:	2f04                	fld	fs1,24(a4)
    2640:	00090003          	lb	zero,0(s2)
    2644:	0100                	addi	s0,sp,128
    2646:	0200                	addi	s0,sp,256
    2648:	2f04                	fld	fs1,24(a4)
    264a:	00090003          	lb	zero,0(s2)
    264e:	0100                	addi	s0,sp,128
    2650:	0200                	addi	s0,sp,256
    2652:	3f04                	fld	fs1,56(a4)
    2654:	08090003          	lb	zero,128(s2)
    2658:	0100                	addi	s0,sp,128
    265a:	0200                	addi	s0,sp,256
    265c:	3f04                	fld	fs1,56(a4)
    265e:	00090003          	lb	zero,0(s2)
    2662:	0100                	addi	s0,sp,128
    2664:	0200                	addi	s0,sp,256
    2666:	3f04                	fld	fs1,56(a4)
    2668:	04090003          	lb	zero,64(s2)
    266c:	0100                	addi	s0,sp,128
    266e:	0306                	slli	t1,t1,0x1
    2670:	0900                	addi	s0,sp,144
    2672:	0008                	0x8
    2674:	0001                	nop
    2676:	0402                	c.slli64	s0
    2678:	0003064f          	fnmadd.s	fa2,ft6,ft0,ft0,rne
    267c:	0c09                	addi	s8,s8,2
    267e:	0100                	addi	s0,sp,128
    2680:	0200                	addi	s0,sp,256
    2682:	4f04                	lw	s1,24(a4)
    2684:	00090003          	lb	zero,0(s2)
    2688:	0100                	addi	s0,sp,128
    268a:	0200                	addi	s0,sp,256
    268c:	4f04                	lw	s1,24(a4)
    268e:	08090003          	lb	zero,128(s2)
    2692:	0100                	addi	s0,sp,128
    2694:	0200                	addi	s0,sp,256
    2696:	5004                	lw	s1,32(s0)
    2698:	0306                	slli	t1,t1,0x1
    269a:	0900                	addi	s0,sp,144
    269c:	0004                	0x4
    269e:	0301                	addi	t1,t1,0
    26a0:	0900                	addi	s0,sp,144
    26a2:	0004                	0x4
    26a4:	0001                	nop
    26a6:	0402                	c.slli64	s0
    26a8:	065a                	slli	a2,a2,0x16
    26aa:	08090003          	lb	zero,128(s2)
    26ae:	0100                	addi	s0,sp,128
    26b0:	0200                	addi	s0,sp,256
    26b2:	5a04                	lw	s1,48(a2)
    26b4:	00090003          	lb	zero,0(s2)
    26b8:	0100                	addi	s0,sp,128
    26ba:	0200                	addi	s0,sp,256
    26bc:	5a04                	lw	s1,48(a2)
    26be:	00090003          	lb	zero,0(s2)
    26c2:	0100                	addi	s0,sp,128
    26c4:	0200                	addi	s0,sp,256
    26c6:	5a04                	lw	s1,48(a2)
    26c8:	00090003          	lb	zero,0(s2)
    26cc:	0100                	addi	s0,sp,128
    26ce:	0200                	addi	s0,sp,256
    26d0:	5a04                	lw	s1,48(a2)
    26d2:	00090003          	lb	zero,0(s2)
    26d6:	0100                	addi	s0,sp,128
    26d8:	0200                	addi	s0,sp,256
    26da:	5a04                	lw	s1,48(a2)
    26dc:	00090003          	lb	zero,0(s2)
    26e0:	0100                	addi	s0,sp,128
    26e2:	0200                	addi	s0,sp,256
    26e4:	5a04                	lw	s1,48(a2)
    26e6:	00090003          	lb	zero,0(s2)
    26ea:	0100                	addi	s0,sp,128
    26ec:	0200                	addi	s0,sp,256
    26ee:	5a04                	lw	s1,48(a2)
    26f0:	18090003          	lb	zero,384(s2)
    26f4:	0100                	addi	s0,sp,128
    26f6:	0200                	addi	s0,sp,256
    26f8:	5a04                	lw	s1,48(a2)
    26fa:	00090003          	lb	zero,0(s2)
    26fe:	0100                	addi	s0,sp,128
    2700:	0200                	addi	s0,sp,256
    2702:	5a04                	lw	s1,48(a2)
    2704:	00090003          	lb	zero,0(s2)
    2708:	0100                	addi	s0,sp,128
    270a:	0200                	addi	s0,sp,256
    270c:	5a04                	lw	s1,48(a2)
    270e:	00090103          	lb	sp,0(s2)
    2712:	0100                	addi	s0,sp,128
    2714:	0200                	addi	s0,sp,256
    2716:	5a04                	lw	s1,48(a2)
    2718:	00090003          	lb	zero,0(s2)
    271c:	0100                	addi	s0,sp,128
    271e:	0200                	addi	s0,sp,256
    2720:	5a04                	lw	s1,48(a2)
    2722:	00090003          	lb	zero,0(s2)
    2726:	0100                	addi	s0,sp,128
    2728:	0200                	addi	s0,sp,256
    272a:	5a04                	lw	s1,48(a2)
    272c:	00090203          	lb	tp,0(s2)
    2730:	0100                	addi	s0,sp,128
    2732:	0105                	addi	sp,sp,1
    2734:	0200                	addi	s0,sp,256
    2736:	5a04                	lw	s1,48(a2)
    2738:	0306                	slli	t1,t1,0x1
    273a:	0901                	addi	s2,s2,0
    273c:	0000                	unimp
    273e:	0501                	addi	a0,a0,0
    2740:	097a0303          	lb	t1,151(s4)
    2744:	0008                	0x8
    2746:	0001                	nop
    2748:	0402                	c.slli64	s0
    274a:	0625                	addi	a2,a2,9
    274c:	08090203          	lb	tp,128(s2)
    2750:	0100                	addi	s0,sp,128
    2752:	0200                	addi	s0,sp,256
    2754:	2504                	fld	fs1,8(a0)
    2756:	00090003          	lb	zero,0(s2)
    275a:	0100                	addi	s0,sp,128
    275c:	0200                	addi	s0,sp,256
    275e:	2504                	fld	fs1,8(a0)
    2760:	00090003          	lb	zero,0(s2)
    2764:	0100                	addi	s0,sp,128
    2766:	0200                	addi	s0,sp,256
    2768:	2504                	fld	fs1,8(a0)
    276a:	00090003          	lb	zero,0(s2)
    276e:	0100                	addi	s0,sp,128
    2770:	0200                	addi	s0,sp,256
    2772:	2c04                	fld	fs1,24(s0)
    2774:	0c090003          	lb	zero,192(s2)
    2778:	0100                	addi	s0,sp,128
    277a:	1009                	c.nop	-30
    277c:	0000                	unimp
    277e:	0101                	addi	sp,sp,0
    2780:	00000093          	li	ra,0
    2784:	00490003          	lb	zero,4(s2)
    2788:	0000                	unimp
    278a:	0101                	addi	sp,sp,0
    278c:	000d0efb          	0xd0efb
    2790:	0101                	addi	sp,sp,0
    2792:	0101                	addi	sp,sp,0
    2794:	0000                	unimp
    2796:	0100                	addi	s0,sp,128
    2798:	0000                	unimp
    279a:	2e01                	sext.w	t3,t3
    279c:	2f2e                	fld	ft10,200(sp)
    279e:	2e2e                	fld	ft8,200(sp)
    27a0:	2f2e2e2f          	0x2f2e2e2f
    27a4:	2e2e                	fld	ft8,200(sp)
    27a6:	7369722f          	0x7369722f
    27aa:	672d7663          	bgeu	s10,s2,2e16 <register_fini-0xd29a>
    27ae:	6c2f6363          	bltu	t5,sp,2e74 <register_fini-0xd23c>
    27b2:	6269                	lui	tp,0x1a
    27b4:	2f636367          	0x2f636367
    27b8:	666e6f63          	bltu	t3,t1,2e36 <register_fini-0xd27a>
    27bc:	6769                	lui	a4,0x1a
    27be:	7369722f          	0x7369722f
    27c2:	00007663          	bgeu	zero,zero,27ce <register_fini-0xd8e2>
    27c6:	756d                	lui	a0,0xffffb
    27c8:	646c                	ld	a1,200(s0)
    27ca:	3369                	addiw	t1,t1,-6
    27cc:	532e                	lw	t1,232(sp)
    27ce:	0100                	addi	s0,sp,128
    27d0:	0000                	unimp
    27d2:	0000                	unimp
    27d4:	0209                	addi	tp,tp,2
    27d6:	12a0                	addi	s0,sp,360
    27d8:	0001                	nop
    27da:	0000                	unimp
    27dc:	0000                	unimp
    27de:	03012403          	lw	s0,48(sp)
    27e2:	0901                	addi	s2,s2,0
    27e4:	0004                	0x4
    27e6:	0301                	addi	t1,t1,0
    27e8:	0902                	c.slli64	s2
    27ea:	0004                	0x4
    27ec:	0301                	addi	t1,t1,0
    27ee:	0901                	addi	s2,s2,0
    27f0:	0004                	0x4
    27f2:	0301                	addi	t1,t1,0
    27f4:	0901                	addi	s2,s2,0
    27f6:	0004                	0x4
    27f8:	0301                	addi	t1,t1,0
    27fa:	0902                	c.slli64	s2
    27fc:	0004                	0x4
    27fe:	0301                	addi	t1,t1,0
    2800:	0901                	addi	s2,s2,0
    2802:	0004                	0x4
    2804:	0301                	addi	t1,t1,0
    2806:	0901                	addi	s2,s2,0
    2808:	0004                	0x4
    280a:	0301                	addi	t1,t1,0
    280c:	0901                	addi	s2,s2,0
    280e:	0004                	0x4
    2810:	0901                	addi	s2,s2,0
    2812:	0004                	0x4
    2814:	0100                	addi	s0,sp,128
    2816:	ad01                	j	2e26 <register_fini-0xd28a>
    2818:	0002                	c.slli64	zero
    281a:	0300                	addi	s0,sp,384
    281c:	1100                	addi	s0,sp,160
    281e:	0002                	c.slli64	zero
    2820:	0100                	addi	s0,sp,128
    2822:	fb01                	bnez	a4,2732 <register_fini-0xd97e>
    2824:	0d0e                	slli	s10,s10,0x3
    2826:	0100                	addi	s0,sp,128
    2828:	0101                	addi	sp,sp,0
    282a:	0001                	nop
    282c:	0000                	unimp
    282e:	0001                	nop
    2830:	0100                	addi	s0,sp,128
    2832:	2e2e                	fld	ft8,200(sp)
    2834:	2f2e2e2f          	0x2f2e2e2f
    2838:	2e2e                	fld	ft8,200(sp)
    283a:	2f2e2e2f          	0x2f2e2e2f
    283e:	6972                	ld	s2,280(sp)
    2840:	2d766373          	csrrsi	t1,0x2d7,12
    2844:	2f636367          	0x2f636367
    2848:	696c                	ld	a1,208(a0)
    284a:	6762                	ld	a4,24(sp)
    284c:	2f006363          	bltu	zero,a6,2b32 <register_fini-0xd57e>
    2850:	6f68                	ld	a0,216(a4)
    2852:	656d                	lui	a0,0x1b
    2854:	6961722f          	0x6961722f
    2858:	736e                	ld	t1,248(sp)
    285a:	6168                	ld	a0,192(a0)
    285c:	6f732f77          	0x6f732f77
    2860:	7275                	lui	tp,0xffffd
    2862:	632d6563          	bltu	s10,s2,2e8c <register_fini-0xd224>
    2866:	2f65646f          	jal	s0,58b5c <__BSS_END__+0x4632c>
    286a:	6972                	ld	s2,280(sp)
    286c:	2d766373          	csrrsi	t1,0x2d7,12
    2870:	2d756e67          	0x2d756e67
    2874:	6f74                	ld	a3,216(a4)
    2876:	68636c6f          	jal	s8,38efc <__BSS_END__+0x266cc>
    287a:	6961                	lui	s2,0x18
    287c:	2f6e                	fld	ft10,216(sp)
    287e:	7672                	ld	a2,312(sp)
    2880:	3436                	fld	fs0,360(sp)
    2882:	2d69                	addiw	s10,s10,26
    2884:	7562                	ld	a0,56(sp)
    2886:	6c69                	lui	s8,0x1a
    2888:	2f64                	fld	fs1,216(a4)
    288a:	7562                	ld	a0,56(sp)
    288c:	6c69                	lui	s8,0x1a
    288e:	2d64                	fld	fs1,216(a0)
    2890:	2d636367          	0x2d636367
    2894:	656e                	ld	a0,216(sp)
    2896:	62696c77          	0x62696c77
    289a:	732d                	lui	t1,0xfffeb
    289c:	6174                	ld	a3,192(a0)
    289e:	2f326567          	0x2f326567
    28a2:	2f636367          	0x2f636367
    28a6:	6e69                	lui	t3,0x1a
    28a8:	64756c63          	bltu	a0,t2,2f00 <register_fini-0xd1b0>
    28ac:	0065                	c.nop	25
    28ae:	6d6f682f          	0x6d6f682f
    28b2:	2f65                	addiw	t5,t5,25
    28b4:	6172                	ld	sp,280(sp)
    28b6:	6e69                	lui	t3,0x1a
    28b8:	77616873          	csrrsi	a6,0x776,2
    28bc:	7369722f          	0x7369722f
    28c0:	722f7663          	bgeu	t5,sp,2fec <register_fini-0xd0c4>
    28c4:	7369                	lui	t1,0xffffa
    28c6:	34367663          	bgeu	a2,gp,2c12 <register_fini-0xd49e>
    28ca:	2f69                	addiw	t5,t5,26
    28cc:	6972                	ld	s2,280(sp)
    28ce:	36766373          	csrrsi	t1,0x367,12
    28d2:	2d34                	fld	fa3,88(a0)
    28d4:	6e75                	lui	t3,0x1d
    28d6:	776f6e6b          	0x776f6e6b
    28da:	2d6e                	fld	fs10,216(sp)
    28dc:	6c65                	lui	s8,0x19
    28de:	2f66                	fld	ft10,88(sp)
    28e0:	6e69                	lui	t3,0x1a
    28e2:	64756c63          	bltu	a0,t2,2f3a <register_fini-0xd176>
    28e6:	2f65                	addiw	t5,t5,25
    28e8:	00737973          	csrrci	s2,0x7,6
    28ec:	6d6f682f          	0x6d6f682f
    28f0:	2f65                	addiw	t5,t5,25
    28f2:	6172                	ld	sp,280(sp)
    28f4:	6e69                	lui	t3,0x1a
    28f6:	77616873          	csrrsi	a6,0x776,2
    28fa:	7369722f          	0x7369722f
    28fe:	722f7663          	bgeu	t5,sp,302a <register_fini-0xd086>
    2902:	7369                	lui	t1,0xffffa
    2904:	34367663          	bgeu	a2,gp,2c50 <register_fini-0xd460>
    2908:	2f69                	addiw	t5,t5,26
    290a:	6972                	ld	s2,280(sp)
    290c:	36766373          	csrrsi	t1,0x367,12
    2910:	2d34                	fld	fa3,88(a0)
    2912:	6e75                	lui	t3,0x1d
    2914:	776f6e6b          	0x776f6e6b
    2918:	2d6e                	fld	fs10,216(sp)
    291a:	6c65                	lui	s8,0x19
    291c:	2f66                	fld	ft10,88(sp)
    291e:	6e69                	lui	t3,0x1a
    2920:	64756c63          	bltu	a0,t2,2f78 <register_fini-0xd138>
    2924:	0065                	c.nop	25
    2926:	2e2e                	fld	ft8,200(sp)
    2928:	2f2e2e2f          	0x2f2e2e2f
    292c:	2e2e                	fld	ft8,200(sp)
    292e:	2f2e2e2f          	0x2f2e2e2f
    2932:	6972                	ld	s2,280(sp)
    2934:	2d766373          	csrrsi	t1,0x2d7,12
    2938:	2f636367          	0x2f636367
    293c:	696c                	ld	a1,208(a0)
    293e:	6762                	ld	a4,24(sp)
    2940:	2e2f6363          	bltu	t5,sp,2c26 <register_fini-0xd48a>
    2944:	2f2e                	fld	ft10,200(sp)
    2946:	6e69                	lui	t3,0x1a
    2948:	64756c63          	bltu	a0,t2,2fa0 <register_fini-0xd110>
    294c:	0065                	c.nop	25
    294e:	2e2e                	fld	ft8,200(sp)
    2950:	2f2e2e2f          	0x2f2e2e2f
    2954:	2e2e                	fld	ft8,200(sp)
    2956:	2f2e2e2f          	0x2f2e2e2f
    295a:	6972                	ld	s2,280(sp)
    295c:	2d766373          	csrrsi	t1,0x2d7,12
    2960:	2f636367          	0x2f636367
    2964:	696c                	ld	a1,208(a0)
    2966:	6762                	ld	a4,24(sp)
    2968:	2e2f6363          	bltu	t5,sp,2c4e <register_fini-0xd462>
    296c:	2f2e                	fld	ft10,200(sp)
    296e:	2f636367          	0x2f636367
    2972:	666e6f63          	bltu	t3,t1,2ff0 <register_fini-0xd0c0>
    2976:	6769                	lui	a4,0x1a
    2978:	7369722f          	0x7369722f
    297c:	2e007663          	bgeu	zero,zero,2c68 <register_fini-0xd448>
    2980:	2f2e                	fld	ft10,200(sp)
    2982:	2e2e                	fld	ft8,200(sp)
    2984:	672f2e2f          	amoand.w.aqrl	t3,s2,(t5)
    2988:	00006363          	bltu	zero,zero,298e <register_fini-0xd722>
    298c:	696c                	ld	a1,208(a0)
    298e:	6762                	ld	a4,24(sp)
    2990:	2e326363          	bltu	tp,gp,2c76 <register_fini-0xd43a>
    2994:	00010063          	beqz	sp,2994 <register_fini-0xd71c>
    2998:	7300                	ld	s0,32(a4)
    299a:	6474                	ld	a3,200(s0)
    299c:	6564                	ld	s1,200(a0)
    299e:	2e66                	fld	ft8,88(sp)
    29a0:	0068                	addi	a0,sp,12
    29a2:	0002                	c.slli64	zero
    29a4:	5f00                	lw	s0,56(a4)
    29a6:	7974                	ld	a3,240(a0)
    29a8:	6570                	ld	a2,200(a0)
    29aa:	00682e73          	csrrs	t3,0x6,a6
    29ae:	72000003          	lb	zero,1824(zero) # 720 <register_fini-0xf990>
    29b2:	6565                	lui	a0,0x19
    29b4:	746e                	ld	s0,248(sp)
    29b6:	682e                	ld	a6,200(sp)
    29b8:	0300                	addi	s0,sp,384
    29ba:	0000                	unimp
    29bc:	6f6c                	ld	a1,216(a4)
    29be:	682e6b63          	bltu	t3,sp,3054 <register_fini-0xd05c>
    29c2:	0300                	addi	s0,sp,384
    29c4:	0000                	unimp
    29c6:	7265                	lui	tp,0xffff9
    29c8:	6e72                	ld	t3,280(sp)
    29ca:	00682e6f          	jal	t3,849d0 <__BSS_END__+0x721a0>
    29ce:	73000003          	lb	zero,1840(zero) # 730 <register_fini-0xf980>
    29d2:	6474                	ld	a3,200(s0)
    29d4:	696c                	ld	a1,208(a0)
    29d6:	2e62                	fld	ft8,24(sp)
    29d8:	0068                	addi	a0,sp,12
    29da:	0004                	0x4
    29dc:	7500                	ld	s0,40(a0)
    29de:	696e                	ld	s2,216(sp)
    29e0:	2e647473          	csrrci	s0,0x2e6,8
    29e4:	0068                	addi	a0,sp,12
    29e6:	74000003          	lb	zero,1856(zero) # 740 <register_fini-0xf970>
    29ea:	6d69                	lui	s10,0x1a
    29ec:	2e65                	addiw	t3,t3,25
    29ee:	0068                	addi	a0,sp,12
    29f0:	0004                	0x4
    29f2:	6800                	ld	s0,16(s0)
    29f4:	7361                	lui	t1,0xffff8
    29f6:	7468                	ld	a0,232(s0)
    29f8:	6261                	lui	tp,0x18
    29fa:	682e                	ld	a6,200(sp)
    29fc:	0500                	addi	s0,sp,640
    29fe:	0000                	unimp
    2a00:	6972                	ld	s2,280(sp)
    2a02:	2d766373          	csrrsi	t1,0x2d7,12
    2a06:	7374706f          	j	4a93c <__BSS_END__+0x3810c>
    2a0a:	682e                	ld	a6,200(sp)
    2a0c:	0600                	addi	s0,sp,768
    2a0e:	0000                	unimp
    2a10:	6e69                	lui	t3,0x1a
    2a12:	632d6e73          	csrrsi	t3,0x632,26
    2a16:	74736e6f          	jal	t3,3995c <__BSS_END__+0x2712c>
    2a1a:	6e61                	lui	t3,0x18
    2a1c:	7374                	ld	a3,224(a4)
    2a1e:	682e                	ld	a6,200(sp)
    2a20:	0700                	addi	s0,sp,896
    2a22:	0000                	unimp
    2a24:	696c                	ld	a1,208(a0)
    2a26:	6762                	ld	a4,24(sp)
    2a28:	2e326363          	bltu	tp,gp,2d0e <register_fini-0xd3a2>
    2a2c:	0068                	addi	a0,sp,12
    2a2e:	0001                	nop
    2a30:	0000                	unimp
    2a32:	0105                	addi	sp,sp,1
    2a34:	0900                	addi	s0,sp,144
    2a36:	c402                	sw	zero,8(sp)
    2a38:	0112                	slli	sp,sp,0x4
    2a3a:	0000                	unimp
    2a3c:	0000                	unimp
    2a3e:	0300                	addi	s0,sp,384
    2a40:	05c2                	slli	a1,a1,0x10
    2a42:	0501                	addi	a0,a0,0
    2a44:	09010303          	lb	t1,144(sp)
    2a48:	0000                	unimp
    2a4a:	0301                	addi	t1,t1,0
    2a4c:	0902                	c.slli64	s2
    2a4e:	0000                	unimp
    2a50:	0301                	addi	t1,t1,0
    2a52:	0900                	addi	s0,sp,144
    2a54:	0000                	unimp
    2a56:	0301                	addi	t1,t1,0
    2a58:	0900                	addi	s0,sp,144
    2a5a:	0000                	unimp
    2a5c:	0301                	addi	t1,t1,0
    2a5e:	0900                	addi	s0,sp,144
    2a60:	0000                	unimp
    2a62:	0301                	addi	t1,t1,0
    2a64:	0900                	addi	s0,sp,144
    2a66:	0000                	unimp
    2a68:	0301                	addi	t1,t1,0
    2a6a:	0900                	addi	s0,sp,144
    2a6c:	0000                	unimp
    2a6e:	0001                	nop
    2a70:	0402                	c.slli64	s0
    2a72:	0314                	addi	a3,sp,384
    2a74:	0900                	addi	s0,sp,144
    2a76:	0004                	0x4
    2a78:	0001                	nop
    2a7a:	0402                	c.slli64	s0
    2a7c:	0312                	slli	t1,t1,0x4
    2a7e:	0900                	addi	s0,sp,144
    2a80:	000c                	0xc
    2a82:	0001                	nop
    2a84:	0402                	c.slli64	s0
    2a86:	0312                	slli	t1,t1,0x4
    2a88:	0900                	addi	s0,sp,144
    2a8a:	0004                	0x4
    2a8c:	0001                	nop
    2a8e:	0402                	c.slli64	s0
    2a90:	0315                	addi	t1,t1,5
    2a92:	0900                	addi	s0,sp,144
    2a94:	0004                	0x4
    2a96:	0001                	nop
    2a98:	0402                	c.slli64	s0
    2a9a:	0315                	addi	t1,t1,5
    2a9c:	0900                	addi	s0,sp,144
    2a9e:	0000                	unimp
    2aa0:	0001                	nop
    2aa2:	0402                	c.slli64	s0
    2aa4:	0315                	addi	t1,t1,5
    2aa6:	0902                	c.slli64	s2
    2aa8:	0000                	unimp
    2aaa:	0001                	nop
    2aac:	0402                	c.slli64	s0
    2aae:	0615                	addi	a2,a2,5
    2ab0:	00097e03          	0x97e03
    2ab4:	0100                	addi	s0,sp,128
    2ab6:	0105                	addi	sp,sp,1
    2ab8:	0200                	addi	s0,sp,256
    2aba:	1504                	addi	s1,sp,672
    2abc:	1c090303          	lb	t1,448(s2) # 181c0 <__BSS_END__+0x5990>
    2ac0:	0100                	addi	s0,sp,128
    2ac2:	0809                	addi	a6,a6,2
    2ac4:	0000                	unimp
    2ac6:	0101                	addi	sp,sp,0
    2ac8:	00000217          	auipc	tp,0x0
    2acc:	02110003          	lb	zero,33(sp)
    2ad0:	0000                	unimp
    2ad2:	0101                	addi	sp,sp,0
    2ad4:	000d0efb          	0xd0efb
    2ad8:	0101                	addi	sp,sp,0
    2ada:	0101                	addi	sp,sp,0
    2adc:	0000                	unimp
    2ade:	0100                	addi	s0,sp,128
    2ae0:	0000                	unimp
    2ae2:	2f01                	sext.w	t5,t5
    2ae4:	6f68                	ld	a0,216(a4)
    2ae6:	656d                	lui	a0,0x1b
    2ae8:	6961722f          	0x6961722f
    2aec:	736e                	ld	t1,248(sp)
    2aee:	6168                	ld	a0,192(a0)
    2af0:	6f732f77          	0x6f732f77
    2af4:	7275                	lui	tp,0xffffd
    2af6:	632d6563          	bltu	s10,s2,3120 <register_fini-0xcf90>
    2afa:	2f65646f          	jal	s0,58df0 <__BSS_END__+0x465c0>
    2afe:	6972                	ld	s2,280(sp)
    2b00:	2d766373          	csrrsi	t1,0x2d7,12
    2b04:	2d756e67          	0x2d756e67
    2b08:	6f74                	ld	a3,216(a4)
    2b0a:	68636c6f          	jal	s8,39190 <__BSS_END__+0x26960>
    2b0e:	6961                	lui	s2,0x18
    2b10:	2f6e                	fld	ft10,216(sp)
    2b12:	7672                	ld	a2,312(sp)
    2b14:	3436                	fld	fs0,360(sp)
    2b16:	2d69                	addiw	s10,s10,26
    2b18:	7562                	ld	a0,56(sp)
    2b1a:	6c69                	lui	s8,0x1a
    2b1c:	2f64                	fld	fs1,216(a4)
    2b1e:	7562                	ld	a0,56(sp)
    2b20:	6c69                	lui	s8,0x1a
    2b22:	2d64                	fld	fs1,216(a0)
    2b24:	2d636367          	0x2d636367
    2b28:	656e                	ld	a0,216(sp)
    2b2a:	62696c77          	0x62696c77
    2b2e:	732d                	lui	t1,0xfffeb
    2b30:	6174                	ld	a3,192(a0)
    2b32:	2f326567          	0x2f326567
    2b36:	2f636367          	0x2f636367
    2b3a:	6e69                	lui	t3,0x1a
    2b3c:	64756c63          	bltu	a0,t2,3194 <register_fini-0xcf1c>
    2b40:	0065                	c.nop	25
    2b42:	6d6f682f          	0x6d6f682f
    2b46:	2f65                	addiw	t5,t5,25
    2b48:	6172                	ld	sp,280(sp)
    2b4a:	6e69                	lui	t3,0x1a
    2b4c:	77616873          	csrrsi	a6,0x776,2
    2b50:	7369722f          	0x7369722f
    2b54:	722f7663          	bgeu	t5,sp,3280 <register_fini-0xce30>
    2b58:	7369                	lui	t1,0xffffa
    2b5a:	34367663          	bgeu	a2,gp,2ea6 <register_fini-0xd20a>
    2b5e:	2f69                	addiw	t5,t5,26
    2b60:	6972                	ld	s2,280(sp)
    2b62:	36766373          	csrrsi	t1,0x367,12
    2b66:	2d34                	fld	fa3,88(a0)
    2b68:	6e75                	lui	t3,0x1d
    2b6a:	776f6e6b          	0x776f6e6b
    2b6e:	2d6e                	fld	fs10,216(sp)
    2b70:	6c65                	lui	s8,0x19
    2b72:	2f66                	fld	ft10,88(sp)
    2b74:	6e69                	lui	t3,0x1a
    2b76:	64756c63          	bltu	a0,t2,31ce <register_fini-0xcee2>
    2b7a:	2f65                	addiw	t5,t5,25
    2b7c:	00737973          	csrrci	s2,0x7,6
    2b80:	6d6f682f          	0x6d6f682f
    2b84:	2f65                	addiw	t5,t5,25
    2b86:	6172                	ld	sp,280(sp)
    2b88:	6e69                	lui	t3,0x1a
    2b8a:	77616873          	csrrsi	a6,0x776,2
    2b8e:	7369722f          	0x7369722f
    2b92:	722f7663          	bgeu	t5,sp,32be <register_fini-0xcdf2>
    2b96:	7369                	lui	t1,0xffffa
    2b98:	34367663          	bgeu	a2,gp,2ee4 <register_fini-0xd1cc>
    2b9c:	2f69                	addiw	t5,t5,26
    2b9e:	6972                	ld	s2,280(sp)
    2ba0:	36766373          	csrrsi	t1,0x367,12
    2ba4:	2d34                	fld	fa3,88(a0)
    2ba6:	6e75                	lui	t3,0x1d
    2ba8:	776f6e6b          	0x776f6e6b
    2bac:	2d6e                	fld	fs10,216(sp)
    2bae:	6c65                	lui	s8,0x19
    2bb0:	2f66                	fld	ft10,88(sp)
    2bb2:	6e69                	lui	t3,0x1a
    2bb4:	64756c63          	bltu	a0,t2,320c <register_fini-0xcea4>
    2bb8:	0065                	c.nop	25
    2bba:	2e2e                	fld	ft8,200(sp)
    2bbc:	2f2e2e2f          	0x2f2e2e2f
    2bc0:	2e2e                	fld	ft8,200(sp)
    2bc2:	2f2e2e2f          	0x2f2e2e2f
    2bc6:	6972                	ld	s2,280(sp)
    2bc8:	2d766373          	csrrsi	t1,0x2d7,12
    2bcc:	2f636367          	0x2f636367
    2bd0:	696c                	ld	a1,208(a0)
    2bd2:	6762                	ld	a4,24(sp)
    2bd4:	2e2f6363          	bltu	t5,sp,2eba <register_fini-0xd1f6>
    2bd8:	2f2e                	fld	ft10,200(sp)
    2bda:	6e69                	lui	t3,0x1a
    2bdc:	64756c63          	bltu	a0,t2,3234 <register_fini-0xce7c>
    2be0:	0065                	c.nop	25
    2be2:	2e2e                	fld	ft8,200(sp)
    2be4:	2f2e2e2f          	0x2f2e2e2f
    2be8:	2e2e                	fld	ft8,200(sp)
    2bea:	2f2e2e2f          	0x2f2e2e2f
    2bee:	6972                	ld	s2,280(sp)
    2bf0:	2d766373          	csrrsi	t1,0x2d7,12
    2bf4:	2f636367          	0x2f636367
    2bf8:	696c                	ld	a1,208(a0)
    2bfa:	6762                	ld	a4,24(sp)
    2bfc:	2e2f6363          	bltu	t5,sp,2ee2 <register_fini-0xd1ce>
    2c00:	2f2e                	fld	ft10,200(sp)
    2c02:	2f636367          	0x2f636367
    2c06:	666e6f63          	bltu	t3,t1,3284 <register_fini-0xce2c>
    2c0a:	6769                	lui	a4,0x1a
    2c0c:	7369722f          	0x7369722f
    2c10:	2e007663          	bgeu	zero,zero,2efc <register_fini-0xd1b4>
    2c14:	2f2e                	fld	ft10,200(sp)
    2c16:	2e2e                	fld	ft8,200(sp)
    2c18:	672f2e2f          	amoand.w.aqrl	t3,s2,(t5)
    2c1c:	2e006363          	bltu	zero,zero,2f02 <register_fini-0xd1ae>
    2c20:	2f2e                	fld	ft10,200(sp)
    2c22:	2e2e                	fld	ft8,200(sp)
    2c24:	2f2e2e2f          	0x2f2e2e2f
    2c28:	2e2e                	fld	ft8,200(sp)
    2c2a:	7369722f          	0x7369722f
    2c2e:	672d7663          	bgeu	s10,s2,329a <register_fini-0xce16>
    2c32:	6c2f6363          	bltu	t5,sp,32f8 <register_fini-0xcdb8>
    2c36:	6269                	lui	tp,0x1a
    2c38:	00636367          	0x636367
    2c3c:	7300                	ld	s0,32(a4)
    2c3e:	6474                	ld	a3,200(s0)
    2c40:	6564                	ld	s1,200(a0)
    2c42:	2e66                	fld	ft8,88(sp)
    2c44:	0068                	addi	a0,sp,12
    2c46:	0001                	nop
    2c48:	5f00                	lw	s0,56(a4)
    2c4a:	7974                	ld	a3,240(a0)
    2c4c:	6570                	ld	a2,200(a0)
    2c4e:	00682e73          	csrrs	t3,0x6,a6
    2c52:	0002                	c.slli64	zero
    2c54:	7200                	ld	s0,32(a2)
    2c56:	6565                	lui	a0,0x19
    2c58:	746e                	ld	s0,248(sp)
    2c5a:	682e                	ld	a6,200(sp)
    2c5c:	0200                	addi	s0,sp,256
    2c5e:	0000                	unimp
    2c60:	6f6c                	ld	a1,216(a4)
    2c62:	682e6b63          	bltu	t3,sp,32f8 <register_fini-0xcdb8>
    2c66:	0200                	addi	s0,sp,256
    2c68:	0000                	unimp
    2c6a:	7265                	lui	tp,0xffff9
    2c6c:	6e72                	ld	t3,280(sp)
    2c6e:	00682e6f          	jal	t3,84c74 <__BSS_END__+0x72444>
    2c72:	0002                	c.slli64	zero
    2c74:	7300                	ld	s0,32(a4)
    2c76:	6474                	ld	a3,200(s0)
    2c78:	696c                	ld	a1,208(a0)
    2c7a:	2e62                	fld	ft8,24(sp)
    2c7c:	0068                	addi	a0,sp,12
    2c7e:	75000003          	lb	zero,1872(zero) # 750 <register_fini-0xf960>
    2c82:	696e                	ld	s2,216(sp)
    2c84:	2e647473          	csrrci	s0,0x2e6,8
    2c88:	0068                	addi	a0,sp,12
    2c8a:	0002                	c.slli64	zero
    2c8c:	7400                	ld	s0,40(s0)
    2c8e:	6d69                	lui	s10,0x1a
    2c90:	2e65                	addiw	t3,t3,25
    2c92:	0068                	addi	a0,sp,12
    2c94:	68000003          	lb	zero,1664(zero) # 680 <register_fini-0xfa30>
    2c98:	7361                	lui	t1,0xffff8
    2c9a:	7468                	ld	a0,232(s0)
    2c9c:	6261                	lui	tp,0x18
    2c9e:	682e                	ld	a6,200(sp)
    2ca0:	0400                	addi	s0,sp,512
    2ca2:	0000                	unimp
    2ca4:	6972                	ld	s2,280(sp)
    2ca6:	2d766373          	csrrsi	t1,0x2d7,12
    2caa:	7374706f          	j	4abe0 <__BSS_END__+0x383b0>
    2cae:	682e                	ld	a6,200(sp)
    2cb0:	0500                	addi	s0,sp,640
    2cb2:	0000                	unimp
    2cb4:	6e69                	lui	t3,0x1a
    2cb6:	632d6e73          	csrrsi	t3,0x632,26
    2cba:	74736e6f          	jal	t3,39c00 <__BSS_END__+0x273d0>
    2cbe:	6e61                	lui	t3,0x18
    2cc0:	7374                	ld	a3,224(a4)
    2cc2:	682e                	ld	a6,200(sp)
    2cc4:	0600                	addi	s0,sp,768
    2cc6:	0000                	unimp
    2cc8:	696c                	ld	a1,208(a0)
    2cca:	6762                	ld	a4,24(sp)
    2ccc:	2e326363          	bltu	tp,gp,2fb2 <register_fini-0xd0fe>
    2cd0:	0068                	addi	a0,sp,12
    2cd2:	6c000007          	0x6c000007
    2cd6:	6269                	lui	tp,0x1a
    2cd8:	32636367          	0x32636367
    2cdc:	632e                	ld	t1,200(sp)
    2cde:	0700                	addi	s0,sp,896
    2ce0:	0000                	unimp
	...

Disassembly of section .debug_frame:

0000000000000000 <.debug_frame>:
   0:	000c                	0xc
   2:	0000                	unimp
   4:	ffff                	0xffff
   6:	ffff                	0xffff
   8:	7c010003          	lb	zero,1984(sp)
   c:	0d01                	addi	s10,s10,0
   e:	0002                	c.slli64	zero
  10:	0034                	addi	a3,sp,8
  12:	0000                	unimp
  14:	0000                	unimp
  16:	0000                	unimp
  18:	0404                	addi	s1,sp,512
  1a:	0001                	nop
  1c:	0000                	unimp
  1e:	0000                	unimp
  20:	0468                	addi	a0,sp,524
  22:	0000                	unimp
  24:	0000                	unimp
  26:	0000                	unimp
  28:	0e44                	addi	s1,sp,788
  2a:	5020                	lw	s0,96(s0)
  2c:	0488                	addi	a0,sp,576
  2e:	8960                	0x8960
  30:	8106                	mv	sp,ra
  32:	9202                	jalr	tp
  34:	0308                	addi	a0,sp,384
  36:	03f0                	addi	a2,sp,460
  38:	c10a                	sw	sp,128(sp)
  3a:	c848                	sw	a0,20(s0)
  3c:	d248                	sw	a0,36(a2)
  3e:	c944                	sw	s1,20(a0)
  40:	0e48                	addi	a0,sp,788
  42:	4400                	lw	s0,8(s0)
  44:	0000000b          	0xb
  48:	000c                	0xc
  4a:	0000                	unimp
  4c:	ffff                	0xffff
  4e:	ffff                	0xffff
  50:	7c010003          	lb	zero,1984(sp)
  54:	0d01                	addi	s10,s10,0
  56:	0002                	c.slli64	zero
  58:	003c                	addi	a5,sp,8
  5a:	0000                	unimp
  5c:	0048                	addi	a0,sp,4
  5e:	0000                	unimp
  60:	086c                	addi	a1,sp,28
  62:	0001                	nop
  64:	0000                	unimp
  66:	0000                	unimp
  68:	0354                	addi	a3,sp,388
  6a:	0000                	unimp
  6c:	0000                	unimp
  6e:	0000                	unimp
  70:	0e44                	addi	s1,sp,788
  72:	5040                	lw	s0,36(s0)
  74:	0689                	addi	a3,a3,2
  76:	0892                	slli	a7,a7,0x4
  78:	0c94                	addi	a3,sp,592
  7a:	8154                	0x8154
  7c:	8802                	jr	a6
  7e:	9304                	0x9304
  80:	950a                	add	a0,a0,sp
  82:	030e                	slli	t1,t1,0x3
  84:	0308                	addi	a0,sp,384
  86:	48c1                	li	a7,16
  88:	44c8                	lw	a0,12(s1)
  8a:	44c9                	li	s1,18
  8c:	44d2                	lw	s1,20(sp)
  8e:	44d444d3          	0x44d444d3
  92:	44d5                	li	s1,21
  94:	000e                	c.slli	zero,0x3
  96:	0000                	unimp
  98:	000c                	0xc
  9a:	0000                	unimp
  9c:	ffff                	0xffff
  9e:	ffff                	0xffff
  a0:	7c010003          	lb	zero,1984(sp)
  a4:	0d01                	addi	s10,s10,0
  a6:	0002                	c.slli64	zero
  a8:	0034                	addi	a3,sp,8
  aa:	0000                	unimp
  ac:	0098                	addi	a4,sp,64
  ae:	0000                	unimp
  b0:	0bc0                	addi	s0,sp,468
  b2:	0001                	nop
  b4:	0000                	unimp
  b6:	0000                	unimp
  b8:	0488                	addi	a0,sp,576
  ba:	0000                	unimp
  bc:	0000                	unimp
  be:	0000                	unimp
  c0:	0e48                	addi	a0,sp,788
  c2:	6820                	ld	s0,80(s0)
  c4:	0488                	addi	a0,sp,576
  c6:	0689                	addi	a3,a3,2
  c8:	0281                	addi	t0,t0,0
  ca:	0892                	slli	a7,a7,0x4
  cc:	0a041803          	lh	a6,160(s0)
  d0:	48c1                	li	a7,16
  d2:	48c8                	lw	a0,20(s1)
  d4:	44d2                	lw	s1,20(sp)
  d6:	48c9                	li	a7,18
  d8:	000e                	c.slli	zero,0x3
  da:	0b44                	addi	s1,sp,404
  dc:	0000                	unimp
  de:	0000                	unimp
  e0:	000c                	0xc
  e2:	0000                	unimp
  e4:	ffff                	0xffff
  e6:	ffff                	0xffff
  e8:	7c010003          	lb	zero,1984(sp)
  ec:	0d01                	addi	s10,s10,0
  ee:	0002                	c.slli64	zero
  f0:	002c                	addi	a1,sp,8
  f2:	0000                	unimp
  f4:	00e0                	addi	s0,sp,76
  f6:	0000                	unimp
  f8:	1048                	addi	a0,sp,36
  fa:	0001                	nop
  fc:	0000                	unimp
  fe:	0000                	unimp
 100:	0084                	addi	s1,sp,64
 102:	0000                	unimp
 104:	0000                	unimp
 106:	0000                	unimp
 108:	0e44                	addi	s1,sp,788
 10a:	4c20                	lw	s0,88(s0)
 10c:	0281                	addi	t0,t0,0
 10e:	0488                	addi	a0,sp,576
 110:	0689                	addi	a3,a3,2
 112:	3c02                	fld	fs8,32(sp)
 114:	c10a                	sw	sp,128(sp)
 116:	c844                	sw	s1,20(s0)
 118:	c958                	sw	a4,20(a0)
 11a:	0e48                	addi	a0,sp,788
 11c:	4400                	lw	s0,8(s0)
 11e:	000c000b          	0xc000b
 122:	0000                	unimp
 124:	ffff                	0xffff
 126:	ffff                	0xffff
 128:	7c010003          	lb	zero,1984(sp)
 12c:	0d01                	addi	s10,s10,0
 12e:	0002                	c.slli64	zero
 130:	002c                	addi	a1,sp,8
 132:	0000                	unimp
 134:	0120                	addi	s0,sp,136
 136:	0000                	unimp
 138:	10cc                	addi	a1,sp,100
 13a:	0001                	nop
 13c:	0000                	unimp
 13e:	0000                	unimp
 140:	00a4                	addi	s1,sp,72
 142:	0000                	unimp
 144:	0000                	unimp
 146:	0000                	unimp
 148:	0e48                	addi	a0,sp,788
 14a:	4c20                	lw	s0,88(s0)
 14c:	0488                	addi	a0,sp,576
 14e:	0689                	addi	a3,a3,2
 150:	8150                	0x8150
 152:	6c02                	ld	s8,0(sp)
 154:	c10a                	sw	sp,128(sp)
 156:	c848                	sw	a0,20(s0)
 158:	c944                	sw	s1,20(a0)
 15a:	0e44                	addi	s1,sp,788
 15c:	4400                	lw	s0,8(s0)
 15e:	000c000b          	0xc000b
 162:	0000                	unimp
 164:	ffff                	0xffff
 166:	ffff                	0xffff
 168:	7c010003          	lb	zero,1984(sp)
 16c:	0d01                	addi	s10,s10,0
 16e:	0002                	c.slli64	zero
 170:	0014                	0x14
 172:	0000                	unimp
 174:	0160                	addi	s0,sp,140
 176:	0000                	unimp
 178:	1170                	addi	a2,sp,172
 17a:	0001                	nop
 17c:	0000                	unimp
 17e:	0000                	unimp
 180:	0130                	addi	a2,sp,136
 182:	0000                	unimp
 184:	0000                	unimp
 186:	0000                	unimp
 188:	000c                	0xc
 18a:	0000                	unimp
 18c:	ffff                	0xffff
 18e:	ffff                	0xffff
 190:	7c010003          	lb	zero,1984(sp)
 194:	0d01                	addi	s10,s10,0
 196:	0002                	c.slli64	zero
 198:	0014                	0x14
 19a:	0000                	unimp
 19c:	0188                	addi	a0,sp,192
 19e:	0000                	unimp
 1a0:	12c4                	addi	s1,sp,356
 1a2:	0001                	nop
 1a4:	0000                	unimp
 1a6:	0000                	unimp
 1a8:	003c                	addi	a5,sp,8
 1aa:	0000                	unimp
 1ac:	0000                	unimp
	...

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	5f5f 6e69 3174      	0x31746e695f5f
   6:	3832                	fld	fa6,296(sp)
   8:	7520                	ld	s0,104(a0)
   a:	736e                	ld	t1,248(sp)
   c:	6769                	lui	a4,0x1a
   e:	656e                	ld	a0,216(sp)
  10:	0064                	addi	s1,sp,12
  12:	465f 5f50 4150      	0x41505f50465f
  18:	525f4b43          	fmadd.d	fs6,ft10,ft5,fa0,rmm
  1c:	5741                	li	a4,-16
  1e:	315f 665f 6f6c      	0x6f6c665f315f
  24:	2f00                	fld	fs0,24(a4)
  26:	6f68                	ld	a0,216(a4)
  28:	656d                	lui	a0,0x1b
  2a:	6961722f          	0x6961722f
  2e:	736e                	ld	t1,248(sp)
  30:	6168                	ld	a0,192(a0)
  32:	6f732f77          	0x6f732f77
  36:	7275                	lui	tp,0xffffd
  38:	632d6563          	bltu	s10,s2,662 <register_fini-0xfa4e>
  3c:	2f65646f          	jal	s0,56332 <__BSS_END__+0x43b02>
  40:	6972                	ld	s2,280(sp)
  42:	2d766373          	csrrsi	t1,0x2d7,12
  46:	2d756e67          	0x2d756e67
  4a:	6f74                	ld	a3,216(a4)
  4c:	68636c6f          	jal	s8,366d2 <__BSS_END__+0x23ea2>
  50:	6961                	lui	s2,0x18
  52:	2f6e                	fld	ft10,216(sp)
  54:	7672                	ld	a2,312(sp)
  56:	3436                	fld	fs0,360(sp)
  58:	2d69                	addiw	s10,s10,26
  5a:	7562                	ld	a0,56(sp)
  5c:	6c69                	lui	s8,0x1a
  5e:	2f64                	fld	fs1,216(a4)
  60:	7562                	ld	a0,56(sp)
  62:	6c69                	lui	s8,0x1a
  64:	2d64                	fld	fs1,216(a0)
  66:	2d636367          	0x2d636367
  6a:	656e                	ld	a0,216(sp)
  6c:	62696c77          	0x62696c77
  70:	732d                	lui	t1,0xfffeb
  72:	6174                	ld	a3,192(a0)
  74:	2f326567          	0x2f326567
  78:	6972                	ld	s2,280(sp)
  7a:	36766373          	csrrsi	t1,0x367,12
  7e:	2d34                	fld	fa3,88(a0)
  80:	6e75                	lui	t3,0x1d
  82:	776f6e6b          	0x776f6e6b
  86:	2d6e                	fld	fs10,216(sp)
  88:	6c65                	lui	s8,0x19
  8a:	2f66                	fld	ft10,88(sp)
  8c:	696c                	ld	a1,208(a0)
  8e:	6762                	ld	a4,24(sp)
  90:	5f006363          	bltu	zero,a6,676 <register_fini-0xfa3a>
  94:	615f 6464 6664      	0x66646464615f
  9a:	2e2e0033          	0x2e2e0033
  9e:	2f2e2e2f          	0x2f2e2e2f
  a2:	2e2e                	fld	ft8,200(sp)
  a4:	2f2e2e2f          	0x2f2e2e2f
  a8:	6972                	ld	s2,280(sp)
  aa:	2d766373          	csrrsi	t1,0x2d7,12
  ae:	2f636367          	0x2f636367
  b2:	696c                	ld	a1,208(a0)
  b4:	6762                	ld	a4,24(sp)
  b6:	732f6363          	bltu	t5,s2,7dc <register_fini-0xf8d4>
  ba:	2d74666f          	jal	a2,46b90 <__BSS_END__+0x34360>
  be:	7066                	0x7066
  c0:	6464612f          	0x6464612f
  c4:	6664                	ld	s1,200(a2)
  c6:	00632e33          	slt	t3,t1,t1
  ca:	665f 7865 5f00      	0x5f007865665f
  d0:	5046                	0x5046
  d2:	505f 4341 5f4b      	0x5f4b4341505f
  d8:	494d4553          	0x494d4553
  dc:	4152                	lw	sp,20(sp)
  de:	5f545f57          	0x5f545f57
  e2:	46440063          	beq	s0,tp,542 <register_fini-0xfb6e>
  e6:	7974                	ld	a3,240(a0)
  e8:	6570                	ld	a2,200(a0)
  ea:	5f00                	lw	s0,56(a4)
  ec:	5046                	0x5046
  ee:	505f 4341 5f4b      	0x5f4b4341505f
  f4:	494d4553          	0x494d4553
  f8:	4152                	lw	sp,20(sp)
  fa:	5f545f57          	0x5f545f57
  fe:	0066                	c.slli	zero,0x19
 100:	6461                	lui	s0,0x18
 102:	5f64                	lw	s1,124(a4)
 104:	6f64                	ld	s1,216(a4)
 106:	656e                	ld	a0,216(sp)
 108:	7500                	ld	s0,40(a0)
 10a:	736e                	ld	t1,248(sp)
 10c:	6769                	lui	a4,0x1a
 10e:	656e                	ld	a0,216(sp)
 110:	2064                	fld	fs1,192(s0)
 112:	72616863          	bltu	sp,t1,842 <register_fini-0xf86e>
 116:	5f00                	lw	s0,56(a4)
 118:	5046                	0x5046
 11a:	555f 504e 4341      	0x4341504e555f
 120:	41525f4b          	fnmsub.s	ft10,ft4,fs5,fs0,unknown
 124:	5f315f57          	0x5f315f57
 128:	6c66                	ld	s8,88(sp)
 12a:	465f006f          	j	f0d8e <__BSS_END__+0xde55e>
 12e:	5f50                	lw	a2,60(a4)
 130:	4150                	lw	a2,4(a0)
 132:	535f4b43          	fmadd.d	fs6,ft10,fs5,fa0,rmm
 136:	4d45                	li	s10,17
 138:	5249                	li	tp,-14
 13a:	5741                	li	a4,-16
 13c:	545f 735f 4700      	0x4700735f545f
 142:	554e                	lw	a0,240(sp)
 144:	4320                	lw	s0,64(a4)
 146:	3731                	addiw	a4,a4,-20
 148:	3920                	fld	fs0,112(a0)
 14a:	322e                	fld	ft4,232(sp)
 14c:	302e                	fld	ft0,232(sp)
 14e:	2d20                	fld	fs0,88(a0)
 150:	636d                	lui	t1,0x1b
 152:	6f6d                	lui	t5,0x1b
 154:	6564                	ld	s1,200(a0)
 156:	3d6c                	fld	fa1,248(a0)
 158:	656d                	lui	a0,0x1b
 15a:	6c64                	ld	s1,216(s0)
 15c:	2d20776f          	jal	a4,742e <register_fini-0x8c82>
 160:	636d                	lui	t1,0x1b
 162:	6f6d                	lui	t5,0x1b
 164:	6564                	ld	s1,200(a0)
 166:	3d6c                	fld	fa1,248(a0)
 168:	656d                	lui	a0,0x1b
 16a:	6c64                	ld	s1,216(s0)
 16c:	2d20776f          	jal	a4,743e <register_fini-0x8c72>
 170:	746d                	lui	s0,0xffffb
 172:	6e75                	lui	t3,0x1d
 174:	3d65                	addiw	s10,s10,-7
 176:	6f72                	ld	t5,280(sp)
 178:	74656b63          	bltu	a0,t1,8ce <register_fini-0xf7e2>
 17c:	2d20                	fld	fs0,88(a0)
 17e:	616d                	addi	sp,sp,240
 180:	6372                	ld	t1,280(sp)
 182:	3d68                	fld	fa0,248(a0)
 184:	7672                	ld	a2,312(sp)
 186:	3436                	fld	fs0,360(sp)
 188:	2069                	0x2069
 18a:	6d2d                	lui	s10,0xb
 18c:	6261                	lui	tp,0x18
 18e:	3d69                	addiw	s10,s10,-6
 190:	706c                	ld	a1,224(s0)
 192:	3436                	fld	fs0,360(sp)
 194:	2d20                	fld	fs0,88(a0)
 196:	4f2d2067          	0x4f2d2067
 19a:	4f2d2073          	csrs	0x4f2,s10
 19e:	2032                	fld	ft0,264(sp)
 1a0:	4f2d                	li	t5,11
 1a2:	662d2073          	csrs	0x662,s10
 1a6:	7562                	ld	a0,56(sp)
 1a8:	6c69                	lui	s8,0x1a
 1aa:	6964                	ld	s1,208(a0)
 1ac:	676e                	ld	a4,216(sp)
 1ae:	6c2d                	lui	s8,0xb
 1b0:	6269                	lui	tp,0x1a
 1b2:	20636367          	0x20636367
 1b6:	662d                	lui	a2,0xb
 1b8:	6f6e                	ld	t5,216(sp)
 1ba:	732d                	lui	t1,0xfffeb
 1bc:	6174                	ld	a3,192(a0)
 1be:	702d6b63          	bltu	s10,sp,8d4 <register_fini-0xf7dc>
 1c2:	6f72                	ld	t5,280(sp)
 1c4:	6574                	ld	a3,200(a0)
 1c6:	726f7463          	bgeu	t5,t1,8ee <register_fini-0xf7c2>
 1ca:	2d20                	fld	fs0,88(a0)
 1cc:	7666                	ld	a2,120(sp)
 1ce:	7369                	lui	t1,0xffffa
 1d0:	6269                	lui	tp,0x1a
 1d2:	6c69                	lui	s8,0x1a
 1d4:	7469                	lui	s0,0xffffa
 1d6:	3d79                	addiw	s10,s10,-2
 1d8:	6968                	ld	a0,208(a0)
 1da:	6464                	ld	s1,200(s0)
 1dc:	6e65                	lui	t3,0x19
 1de:	5f00                	lw	s0,56(a4)
 1e0:	695f 746e 3231      	0x3231746e695f
 1e6:	0038                	addi	a4,sp,8
 1e8:	31627573          	csrrci	a0,0x316,4
 1ec:	7300                	ld	s0,32(a4)
 1ee:	6275                	lui	tp,0x1d
 1f0:	0032                	c.slli	zero,0xc
 1f2:	33627573          	csrrci	a0,mhpmevent22,4
 1f6:	6e00                	ld	s0,24(a2)
 1f8:	006d726f          	jal	tp,d71fe <__BSS_END__+0xc49ce>
 1fc:	5155                	li	sp,-11
 1fe:	7449                	lui	s0,0xffff2
 200:	7079                	c.lui	zero,0xffffe
 202:	0065                	c.nop	25
 204:	5f5f 6c63 5f7a      	0x5f7a6c635f5f
 20a:	6174                	ld	a3,192(a0)
 20c:	0062                	c.slli	zero,0x18
 20e:	7266                	ld	tp,120(sp)
 210:	6361                	lui	t1,0x18
 212:	6c00                	ld	s0,24(s0)
 214:	20676e6f          	jal	t3,7641a <__BSS_END__+0x63bea>
 218:	6f6c                	ld	a1,216(a4)
 21a:	676e                	ld	a4,216(sp)
 21c:	7520                	ld	s0,104(a0)
 21e:	736e                	ld	t1,248(sp)
 220:	6769                	lui	a4,0x1a
 222:	656e                	ld	a0,216(sp)
 224:	2064                	fld	fs1,192(s0)
 226:	6e69                	lui	t3,0x1a
 228:	0074                	addi	a3,sp,12
 22a:	6461                	lui	s0,0x18
 22c:	3364                	fld	fs1,224(a4)
 22e:	5f00                	lw	s0,56(a4)
 230:	5046                	0x5046
 232:	415f 4444 495f      	0x495f4444415f
 238:	544e                	lw	s0,240(sp)
 23a:	5245                	li	tp,-15
 23c:	414e                	lw	sp,208(sp)
 23e:	5f4c                	lw	a1,60(a4)
 240:	6964                	ld	s1,208(a0)
 242:	6666                	ld	a2,88(sp)
 244:	6c00                	ld	s0,24(s0)
 246:	20676e6f          	jal	t3,7644c <__BSS_END__+0x63c1c>
 24a:	6f6c                	ld	a1,216(a4)
 24c:	676e                	ld	a4,216(sp)
 24e:	6920                	ld	s0,80(a0)
 250:	746e                	ld	s0,248(sp)
 252:	5f00                	lw	s0,56(a4)
 254:	5046                	0x5046
 256:	415f 4444 495f      	0x495f4444415f
 25c:	544e                	lw	s0,240(sp)
 25e:	5245                	li	tp,-15
 260:	414e                	lw	sp,208(sp)
 262:	5f4c                	lw	a1,60(a4)
 264:	6465                	lui	s0,0x19
 266:	6669                	lui	a2,0x1a
 268:	0066                	c.slli	zero,0x19
 26a:	465f 5f50 4e55      	0x4e555f50465f
 270:	4f49                	li	t5,18
 272:	5f4e                	lw	t5,240(sp)
 274:	0044                	addi	s1,sp,4
 276:	5f627573          	csrrci	a0,0x5f6,4
 27a:	6f64                	ld	s1,216(a4)
 27c:	656e                	ld	a0,216(sp)
 27e:	5f00                	lw	s0,56(a4)
 280:	5046                	0x5046
 282:	505f 4341 5f4b      	0x5f4b4341505f
 288:	494d4553          	0x494d4553
 28c:	4152                	lw	sp,20(sp)
 28e:	5f545f57          	0x5f545f57
 292:	0065                	c.nop	25
 294:	6461                	lui	s0,0x18
 296:	3164                	fld	fs1,224(a0)
 298:	6100                	ld	s0,0(a0)
 29a:	6464                	ld	s1,200(s0)
 29c:	0032                	c.slli	zero,0xc
 29e:	6962                	ld	s2,24(sp)
 2a0:	7374                	ld	a3,224(a4)
 2a2:	5f00                	lw	s0,56(a4)
 2a4:	5046                	0x5046
 2a6:	505f 4341 5f4b      	0x5f4b4341505f
 2ac:	494d4553          	0x494d4553
 2b0:	4152                	lw	sp,20(sp)
 2b2:	73695f57          	0x73695f57
 2b6:	745f 6e69 0079      	0x796e69745f
 2bc:	665f 6d72 5f00      	0x5f006d72665f
 2c2:	5046                	0x5046
 2c4:	4d5f 4c55 4d5f      	0x4d5f4c554d5f
 2ca:	4145                	li	sp,17
 2cc:	5f54                	lw	a3,60(a4)
 2ce:	5f31                	li	t5,-20
 2d0:	65646977          	0x65646977
 2d4:	5a5f 665f 0030      	0x30665f5a5f
 2da:	465f 5f50 554d      	0x554d5f50465f
 2e0:	5f4c                	lw	a1,60(a4)
 2e2:	454d                	li	a0,19
 2e4:	5441                	li	s0,-16
 2e6:	315f 775f 6469      	0x6469775f315f
 2ec:	5f65                	li	t5,-7
 2ee:	5f5a                	lw	t5,180(sp)
 2f0:	3166                	fld	ft2,120(sp)
 2f2:	5f00                	lw	s0,56(a4)
 2f4:	755f 0068 5f5f      	0x5f5f0068755f
 2fa:	6c75                	lui	s8,0x1d
 2fc:	5500                	lw	s0,40(a0)
 2fe:	5748                	lw	a0,44(a4)
 300:	7974                	ld	a3,240(a0)
 302:	6570                	ld	a2,200(a0)
 304:	5f00                	lw	s0,56(a4)
 306:	6f5f 3070 5f00      	0x5f0030706f5f
 30c:	6f5f 3170 5f00      	0x5f0031706f5f
 312:	785f 0030 5355      	0x53550030785f
 318:	7449                	lui	s0,0xffff2
 31a:	7079                	c.lui	zero,0xffffe
 31c:	0065                	c.nop	25
 31e:	465f 5f50 4e55      	0x4e555f50465f
 324:	4150                	lw	a2,4(a0)
 326:	435f4b43          	fmadd.d	fs6,ft10,fs5,fs0,rmm
 32a:	4e41                	li	t3,16
 32c:	43494e4f          	fnmadd.d	ft8,fs2,fs4,fs0,rmm
 330:	4c41                	li	s8,16
 332:	735f 6968 7466      	0x74666968735f
 338:	5f00                	lw	s0,56(a4)
 33a:	5046                	0x5046
 33c:	505f 4341 5f4b      	0x5f4b4341505f
 342:	4f4e4143          	fmadd.q	ft2,ft8,fs4,fs1,rmm
 346:	494e                	lw	s2,208(sp)
 348:	5f4c4143          	fmadd.q	ft2,fs8,fs4,fa1,rmm
 34c:	5f54                	lw	a3,60(a4)
 34e:	0066                	c.slli	zero,0x19
 350:	465f 5f50 4150      	0x41505f50465f
 356:	435f4b43          	fmadd.d	fs6,ft10,fs5,fs0,rmm
 35a:	4e41                	li	t3,16
 35c:	43494e4f          	fnmadd.d	ft8,fs2,fs4,fs0,rmm
 360:	4c41                	li	s8,16
 362:	545f 655f 5f00      	0x5f00655f545f
 368:	5046                	0x5046
 36a:	505f 4341 5f4b      	0x5f4b4341505f
 370:	4f4e4143          	fmadd.q	ft2,ft8,fs4,fs1,rmm
 374:	494e                	lw	s2,208(sp)
 376:	5f4c4143          	fmadd.q	ft2,fs8,fs4,fa1,rmm
 37a:	5f54                	lw	a3,60(a4)
 37c:	465f0073          	0x465f0073
 380:	5f50                	lw	a2,60(a4)
 382:	4150                	lw	a2,4(a0)
 384:	435f4b43          	fmadd.d	fs6,ft10,fs5,fs0,rmm
 388:	4e41                	li	t3,16
 38a:	43494e4f          	fnmadd.d	ft8,fs2,fs4,fs0,rmm
 38e:	4c41                	li	s8,16
 390:	695f 5f73 6974      	0x69745f73695f
 396:	796e                	ld	s2,248(sp)
 398:	5f00                	lw	s0,56(a4)
 39a:	5046                	0x5046
 39c:	505f 4341 5f4b      	0x5f4b4341505f
 3a2:	4f4e4143          	fmadd.q	ft2,ft8,fs4,fs1,rmm
 3a6:	494e                	lw	s2,208(sp)
 3a8:	5f4c4143          	fmadd.q	ft2,fs8,fs4,fa1,rmm
 3ac:	5f54                	lw	a3,60(a4)
 3ae:	5f5f0063          	beq	t5,s5,98e <register_fini-0xf722>
 3b2:	3178                	fld	fa4,224(a0)
 3b4:	5f00                	lw	s0,56(a4)
 3b6:	785f 0033 5f5f      	0x5f5f0033785f
 3bc:	6876                	ld	a6,344(sp)
 3be:	5f00                	lw	s0,56(a4)
 3c0:	765f 006c 5f5f      	0x5f5f006c765f
 3c6:	756d                	lui	a0,0xffffb
 3c8:	646c                	ld	a1,200(s0)
 3ca:	3366                	fld	ft6,120(sp)
 3cc:	2e00                	fld	fs0,24(a2)
 3ce:	2f2e                	fld	ft10,200(sp)
 3d0:	2e2e                	fld	ft8,200(sp)
 3d2:	2f2e2e2f          	0x2f2e2e2f
 3d6:	2e2e                	fld	ft8,200(sp)
 3d8:	7369722f          	0x7369722f
 3dc:	672d7663          	bgeu	s10,s2,a48 <register_fini-0xf668>
 3e0:	6c2f6363          	bltu	t5,sp,aa6 <register_fini-0xf60a>
 3e4:	6269                	lui	tp,0x1a
 3e6:	2f636367          	0x2f636367
 3ea:	74666f73          	csrrsi	t5,0x746,12
 3ee:	662d                	lui	a2,0xb
 3f0:	2f70                	fld	fa2,216(a4)
 3f2:	756d                	lui	a0,0xffffb
 3f4:	646c                	ld	a1,200(s0)
 3f6:	3366                	fld	ft6,120(sp)
 3f8:	632e                	ld	t1,200(sp)
 3fa:	5f00                	lw	s0,56(a4)
 3fc:	785f 0032 5f5f      	0x5f5f0032785f
 402:	64627573          	csrrci	a0,0x646,4
 406:	3366                	fld	ft6,120(sp)
 408:	2e00                	fld	fs0,24(a2)
 40a:	2f2e                	fld	ft10,200(sp)
 40c:	2e2e                	fld	ft8,200(sp)
 40e:	2f2e2e2f          	0x2f2e2e2f
 412:	2e2e                	fld	ft8,200(sp)
 414:	7369722f          	0x7369722f
 418:	672d7663          	bgeu	s10,s2,a84 <register_fini-0xf62c>
 41c:	6c2f6363          	bltu	t5,sp,ae2 <register_fini-0xf5ce>
 420:	6269                	lui	tp,0x1a
 422:	2f636367          	0x2f636367
 426:	74666f73          	csrrsi	t5,0x746,12
 42a:	662d                	lui	a2,0xb
 42c:	2f70                	fld	fa2,216(a4)
 42e:	64627573          	csrrci	a0,0x646,4
 432:	3366                	fld	ft6,120(sp)
 434:	632e                	ld	t1,200(sp)
 436:	7000                	ld	s0,32(s0)
 438:	6361                	lui	t1,0x18
 43a:	65735f6b          	0x65735f6b
 43e:	696d                	lui	s2,0x1b
 440:	6172                	ld	sp,280(sp)
 442:	465f0077          	0x465f0077
 446:	5f50                	lw	a2,60(a4)
 448:	5246                	lw	tp,112(sp)
 44a:	495f4d4f          	fnmadd.s	fs10,ft10,fs5,fs1,rmm
 44e:	544e                	lw	s0,240(sp)
 450:	755f 0072 465f      	0x465f0072755f
 456:	5f50                	lw	a2,60(a4)
 458:	5246                	lw	tp,112(sp)
 45a:	495f4d4f          	fnmadd.s	fs10,ft10,fs5,fs1,rmm
 45e:	544e                	lw	s0,240(sp)
 460:	6c5f 007a 2e2e      	0x2e2e007a6c5f
 466:	2f2e2e2f          	0x2f2e2e2f
 46a:	2e2e                	fld	ft8,200(sp)
 46c:	2f2e2e2f          	0x2f2e2e2f
 470:	6972                	ld	s2,280(sp)
 472:	2d766373          	csrrsi	t1,0x2d7,12
 476:	2f636367          	0x2f636367
 47a:	696c                	ld	a1,208(a0)
 47c:	6762                	ld	a4,24(sp)
 47e:	732f6363          	bltu	t5,s2,ba4 <register_fini-0xf50c>
 482:	2d74666f          	jal	a2,46f58 <__BSS_END__+0x34728>
 486:	7066                	0x7066
 488:	6f6c662f          	0x6f6c662f
 48c:	7461                	lui	s0,0xffff8
 48e:	66646973          	csrrsi	s2,0x666,8
 492:	632e                	ld	t1,200(sp)
 494:	5f00                	lw	s0,56(a4)
 496:	665f 6f6c 7461      	0x74616f6c665f
 49c:	66646973          	csrrsi	s2,0x666,8
 4a0:	2e00                	fld	fs0,24(a2)
 4a2:	2f2e                	fld	ft10,200(sp)
 4a4:	2e2e                	fld	ft8,200(sp)
 4a6:	2f2e2e2f          	0x2f2e2e2f
 4aa:	2e2e                	fld	ft8,200(sp)
 4ac:	7369722f          	0x7369722f
 4b0:	672d7663          	bgeu	s10,s2,b1c <register_fini-0xf594>
 4b4:	6c2f6363          	bltu	t5,sp,b7a <register_fini-0xf536>
 4b8:	6269                	lui	tp,0x1a
 4ba:	2f636367          	0x2f636367
 4be:	74666f73          	csrrsi	t5,0x746,12
 4c2:	662d                	lui	a2,0xb
 4c4:	2f70                	fld	fa2,216(a4)
 4c6:	7865                	lui	a6,0xffff9
 4c8:	6574                	ld	a3,200(a0)
 4ca:	646e                	ld	s0,216(sp)
 4cc:	66646673          	csrrsi	a2,0x666,8
 4d0:	2e32                	fld	ft8,264(sp)
 4d2:	50460063          	beq	a2,tp,9d2 <register_fini-0xf6de>
 4d6:	455f 5458 4e45      	0x4e455458455f
 4dc:	5f44                	lw	s1,60(a4)
 4de:	7a6c                	ld	a1,240(a2)
 4e0:	5f00                	lw	s0,56(a4)
 4e2:	5046                	0x5046
 4e4:	555f 494e 4e4f      	0x4e4f494e555f
 4ea:	535f 5300 7446      	0x74465300535f
 4f0:	7079                	c.lui	zero,0xffffe
 4f2:	0065                	c.nop	25
 4f4:	5f5f 7865 6574      	0x657478655f5f
 4fa:	646e                	ld	s0,216(sp)
 4fc:	66646673          	csrrsi	a2,0x666,8
 500:	0032                	c.slli	zero,0xc
 502:	5f5f 7274 6e75      	0x6e7572745f5f
 508:	73666463          	bltu	a2,s6,c30 <register_fini-0xf480>
 50c:	3266                	fld	ft4,120(sp)
 50e:	2e00                	fld	fs0,24(a2)
 510:	2f2e                	fld	ft10,200(sp)
 512:	2e2e                	fld	ft8,200(sp)
 514:	2f2e2e2f          	0x2f2e2e2f
 518:	2e2e                	fld	ft8,200(sp)
 51a:	7369722f          	0x7369722f
 51e:	672d7663          	bgeu	s10,s2,b8a <register_fini-0xf526>
 522:	6c2f6363          	bltu	t5,sp,be8 <register_fini-0xf4c8>
 526:	6269                	lui	tp,0x1a
 528:	2f636367          	0x2f636367
 52c:	74666f73          	csrrsi	t5,0x746,12
 530:	662d                	lui	a2,0xb
 532:	2f70                	fld	fa2,216(a4)
 534:	7274                	ld	a3,224(a2)
 536:	6e75                	lui	t3,0x1d
 538:	73666463          	bltu	a2,s6,c60 <register_fini-0xf450>
 53c:	3266                	fld	ft4,120(sp)
 53e:	632e                	ld	t1,200(sp)
 540:	2e00                	fld	fs0,24(a2)
 542:	2f2e                	fld	ft10,200(sp)
 544:	2e2e                	fld	ft8,200(sp)
 546:	2f2e2e2f          	0x2f2e2e2f
 54a:	2e2e                	fld	ft8,200(sp)
 54c:	7369722f          	0x7369722f
 550:	672d7663          	bgeu	s10,s2,bbc <register_fini-0xf4f4>
 554:	6c2f6363          	bltu	t5,sp,c1a <register_fini-0xf496>
 558:	6269                	lui	tp,0x1a
 55a:	2f636367          	0x2f636367
 55e:	666e6f63          	bltu	t3,t1,bdc <register_fini-0xf4d4>
 562:	6769                	lui	a4,0x1a
 564:	7369722f          	0x7369722f
 568:	6d2f7663          	bgeu	t5,s2,c34 <register_fini-0xf47c>
 56c:	6c75                	lui	s8,0x1d
 56e:	6964                	ld	s1,208(a0)
 570:	00532e33          	slt	t3,t1,t0
 574:	20554e47          	fmsub.s	ft8,fa0,ft5,ft4,rmm
 578:	5341                	li	t1,-16
 57a:	3220                	fld	fs0,96(a2)
 57c:	332e                	fld	ft6,232(sp)
 57e:	0034                	addi	a3,sp,8
 580:	726f6873          	csrrsi	a6,0x726,30
 584:	2074                	fld	fa3,192(s0)
 586:	6e69                	lui	t3,0x1a
 588:	0074                	addi	a3,sp,12
 58a:	7468                	ld	a0,232(s0)
 58c:	6261                	lui	tp,0x18
 58e:	685f 7361 5f68      	0x5f687361685f
 594:	6f70                	ld	a2,216(a4)
 596:	6e69                	lui	t3,0x1a
 598:	6574                	ld	a3,200(a0)
 59a:	0072                	c.slli	zero,0x1c
 59c:	735f 7a69 0065      	0x657a69735f
 5a2:	725f 6e61 3464      	0x34646e61725f
 5a8:	0038                	addi	a4,sp,8
 5aa:	655f 656d 6772      	0x6772656d655f
 5b0:	6e65                	lui	t3,0x19
 5b2:	5f007963          	bgeu	zero,a6,ba4 <register_fini-0xf50c>
 5b6:	6164                	ld	s1,192(a0)
 5b8:	6c79                	lui	s8,0x1e
 5ba:	6769                	lui	a4,0x1a
 5bc:	7468                	ld	a0,232(s0)
 5be:	6300                	ld	s0,0(a4)
 5c0:	6c706d6f          	jal	s10,7486 <register_fini-0x8c2a>
 5c4:	7865                	lui	a6,0xffff9
 5c6:	6420                	ld	s0,72(s0)
 5c8:	6c62756f          	jal	a0,27c8e <__BSS_END__+0x1545e>
 5cc:	0065                	c.nop	25
 5ce:	675f 7465 6164      	0x61647465675f
 5d4:	6574                	ld	a3,200(a0)
 5d6:	655f 7272 5f00      	0x5f007272655f
 5dc:	6164                	ld	s1,192(a0)
 5de:	6174                	ld	a3,192(a0)
 5e0:	5f00                	lw	s0,56(a4)
 5e2:	74726377          	0x74726377
 5e6:	5f626d6f          	jal	s10,26bdc <__BSS_END__+0x143ac>
 5ea:	74617473          	csrrci	s0,0x746,2
 5ee:	0065                	c.nop	25
 5f0:	6972                	ld	s2,280(sp)
 5f2:	5f766373          	csrrsi	t1,0x5f7,12
 5f6:	696d                	lui	s2,0x1b
 5f8:	616f7263          	bgeu	t5,s6,bfc <register_fini-0xf4b4>
 5fc:	6372                	ld	t1,280(sp)
 5fe:	6968                	ld	a0,208(a0)
 600:	6574                	ld	a3,200(a0)
 602:	72757463          	bgeu	a0,t2,d2a <register_fini-0xf386>
 606:	5f65                	li	t5,-7
 608:	7974                	ld	a3,240(a0)
 60a:	6570                	ld	a2,200(a0)
 60c:	5f00                	lw	s0,56(a4)
 60e:	72736377          	0x72736377
 612:	6f74                	ld	a3,216(a4)
 614:	626d                	lui	tp,0x1b
 616:	74735f73          	csrrwi	t5,0x747,6
 61a:	7461                	lui	s0,0xffff8
 61c:	0065                	c.nop	25
 61e:	5f5f 6c63 647a      	0x647a6c635f5f
 624:	3269                	addiw	tp,tp,-6
 626:	5f00                	lw	s0,56(a4)
 628:	626c                	ld	a1,192(a2)
 62a:	7366                	ld	t1,120(sp)
 62c:	7a69                	lui	s4,0xffffa
 62e:	0065                	c.nop	25
 630:	706d6f63          	bltu	s10,t1,d4e <register_fini-0xf362>
 634:	656c                	ld	a1,200(a0)
 636:	2078                	fld	fa4,192(s0)
 638:	6f6c                	ld	a1,216(a4)
 63a:	676e                	ld	a4,216(sp)
 63c:	6420                	ld	s0,72(s0)
 63e:	6c62756f          	jal	a0,27d04 <__BSS_END__+0x154d4>
 642:	0065                	c.nop	25
 644:	6972                	ld	s2,280(sp)
 646:	5f766373          	csrrsi	t1,0x5f7,12
 64a:	6261                	lui	tp,0x18
 64c:	0069                	c.nop	26
 64e:	5f5f 6f6c 6163      	0x61636f6c5f5f
 654:	656c                	ld	a1,200(a0)
 656:	745f 5f00 626d      	0x626d5f00745f
 65c:	7472                	ld	s0,312(sp)
 65e:	5f63776f          	jal	a4,37c54 <__BSS_END__+0x25424>
 662:	74617473          	csrrci	s0,0x746,2
 666:	0065                	c.nop	25
 668:	745f 6e7a 6d61      	0x6d616e7a745f
 66e:	0065                	c.nop	25
 670:	775f 7463 6d6f      	0x6d6f7463775f
 676:	5f62                	lw	t5,56(sp)
 678:	74617473          	csrrci	s0,0x746,2
 67c:	0065                	c.nop	25
 67e:	5f5f 6d74 735f      	0x735f6d745f5f
 684:	6365                	lui	t1,0x19
 686:	5f00                	lw	s0,56(a4)
 688:	736f6c63          	bltu	t5,s6,dc0 <register_fini-0xf2f0>
 68c:	0065                	c.nop	25
 68e:	755f 7562 0066      	0x667562755f
 694:	625f 7361 0065      	0x657361625f
 69a:	5f5f 6d74 685f      	0x685f6d745f5f
 6a0:	0072756f          	jal	a0,27ea6 <__BSS_END__+0x15676>
 6a4:	6e75                	lui	t3,0x1d
 6a6:	63657073          	csrci	0x636,10
 6aa:	5f76                	lw	t5,124(sp)
 6ac:	69727473          	csrrci	s0,0x697,4
 6b0:	676e                	ld	a4,216(sp)
 6b2:	5f5f0073          	0x5f5f0073
 6b6:	5f006673          	csrrsi	a2,0x5f0,0
 6ba:	655f6e6f          	jal	t3,f750e <__BSS_END__+0xe4cde>
 6be:	6978                	ld	a4,208(a0)
 6c0:	5f74                	lw	a3,124(a4)
 6c2:	7261                	lui	tp,0xffff8
 6c4:	5f007367          	0x5f007367
 6c8:	6b6f6f63          	bltu	t5,s6,d86 <register_fini-0xf32a>
 6cc:	6569                	lui	a0,0x1a
 6ce:	5f00                	lw	s0,56(a4)
 6d0:	735f 6c67 6575      	0x65756c67735f
 6d6:	5f00                	lw	s0,56(a4)
 6d8:	6c66                	ld	s8,88(sp)
 6da:	6761                	lui	a4,0x18
 6dc:	695f0073          	0x695f0073
 6e0:	78635f73          	csrrwi	t5,0x786,6
 6e4:	0061                	c.nop	24
 6e6:	775f 7364 5f00      	0x5f007364775f
 6ec:	465f 4c49 0045      	0x454c49465f
 6f2:	725f 7365 6c75      	0x6c757365725f
 6f8:	5f74                	lw	a3,124(a4)
 6fa:	5f5f006b          	0x5f5f006b
 6fe:	6f70                	ld	a2,216(a4)
 700:	6370                	ld	a2,192(a4)
 702:	746e756f          	jal	a0,e7e48 <__BSS_END__+0xd5618>
 706:	745f 6261 7200      	0x72006261745f
 70c:	7369                	lui	t1,0xffffa
 70e:	6d5f7663          	bgeu	t5,s5,dda <register_fini-0xf2d6>
 712:	6369                	lui	t1,0x1a
 714:	6f72                	ld	t5,280(sp)
 716:	7261                	lui	tp,0xffff8
 718:	74696863          	bltu	s2,t1,e68 <register_fini-0xf248>
 71c:	6365                	lui	t1,0x19
 71e:	7574                	ld	a3,232(a0)
 720:	6572                	ld	a0,280(sp)
 722:	5f00                	lw	s0,56(a4)
 724:	5f737973          	csrrci	s2,0x5f7,6
 728:	7265                	lui	tp,0xffff9
 72a:	6c72                	ld	s8,280(sp)
 72c:	7369                	lui	t1,0xffffa
 72e:	0074                	addi	a3,sp,12
 730:	635f 7476 7562      	0x75627476635f
 736:	0066                	c.slli	zero,0x19
 738:	6d5f 7362 7472      	0x747273626d5f
 73e:	7363776f          	jal	a4,37e74 <__BSS_END__+0x25644>
 742:	735f 6174 6574      	0x65746174735f
 748:	5f00                	lw	s0,56(a4)
 74a:	626d                	lui	tp,0x1b
 74c:	6c72                	ld	s8,280(sp)
 74e:	6e65                	lui	t3,0x19
 750:	735f 6174 6574      	0x65746174735f
 756:	7200                	ld	s0,32(a2)
 758:	7369                	lui	t1,0xffffa
 75a:	635f7663          	bgeu	t5,s5,d86 <register_fini-0xf32a>
 75e:	6f6d                	lui	t5,0x1b
 760:	6564                	ld	s1,200(a0)
 762:	006c                	addi	a1,sp,12
 764:	665f 616e 6772      	0x6772616e665f
 76a:	665f0073          	0x665f0073
 76e:	736e                	ld	t1,248(sp)
 770:	5f00                	lw	s0,56(a4)
 772:	6e676973          	csrrsi	s2,0x6e6,14
 776:	5f00                	lw	s0,56(a4)
 778:	65647473          	csrrci	s0,0x656,8
 77c:	7272                	ld	tp,312(sp)
 77e:	5f00                	lw	s0,56(a4)
 780:	6942                	ld	s2,16(sp)
 782:	746e6967          	0x746e6967
 786:	5f00                	lw	s0,56(a4)
 788:	6d6d6167          	0x6d6d6167
 78c:	5f61                	li	t5,-8
 78e:	6e676973          	csrrsi	s2,0x6e6,14
 792:	006d6167          	0x6d6167
 796:	6e5f 616d 6c6c      	0x6c6c616d6e5f
 79c:	5f00636f          	jal	t1,6d8c <register_fini-0x9324>
 7a0:	745f 006d 6972      	0x6972006d745f
 7a6:	5f766373          	csrrsi	t1,0x5f7,12
 7aa:	6261                	lui	tp,0x18
 7ac:	5f69                	li	t5,-6
 7ae:	7974                	ld	a3,240(a0)
 7b0:	6570                	ld	a2,200(a0)
 7b2:	5f00                	lw	s0,56(a4)
 7b4:	626d                	lui	tp,0x1b
 7b6:	74617473          	csrrci	s0,0x746,2
 7ba:	0065                	c.nop	25
 7bc:	5f5f 6377 6268      	0x626863775f5f
 7c2:	5f00                	lw	s0,56(a4)
 7c4:	6c747663          	bgeu	s0,t2,e90 <register_fini-0xf220>
 7c8:	6e65                	lui	t3,0x19
 7ca:	5f00                	lw	s0,56(a4)
 7cc:	6966                	ld	s2,88(sp)
 7ce:	656c                	ld	a1,200(a0)
 7d0:	6800                	ld	s0,16(s0)
 7d2:	7361                	lui	t1,0xffff8
 7d4:	7668                	ld	a0,232(a2)
 7d6:	6c61                	lui	s8,0x18
 7d8:	745f 5f00 696e      	0x696e5f00745f
 7de:	0073626f          	jal	tp,36fe4 <__BSS_END__+0x247b4>
 7e2:	726f6873          	csrrsi	a6,0x726,30
 7e6:	2074                	fld	fa3,192(s0)
 7e8:	6e75                	lui	t3,0x1d
 7ea:	6e676973          	csrrsi	s2,0x6e6,14
 7ee:	6465                	lui	s0,0x19
 7f0:	6920                	ld	s0,80(a0)
 7f2:	746e                	ld	s0,248(sp)
 7f4:	5f00                	lw	s0,56(a4)
 7f6:	7461                	lui	s0,0xffff8
 7f8:	7865                	lui	a6,0xffff9
 7fa:	7469                	lui	s0,0xffffa
 7fc:	0030                	addi	a2,sp,8
 7fe:	735f 6769 616e      	0x616e6769735f
 804:	5f6c                	lw	a1,124(a4)
 806:	7562                	ld	a0,56(sp)
 808:	0066                	c.slli	zero,0x19
 80a:	615f 6373 6974      	0x69746373615f
 810:	656d                	lui	a0,0x1b
 812:	625f 6675 5f00      	0x5f006675625f
 818:	6572                	ld	a0,280(sp)
 81a:	746c7573          	csrrci	a0,0x746,24
 81e:	5f00                	lw	s0,56(a4)
 820:	775f 6863 4100      	0x41006863775f
 826:	4942                	lw	s2,16(sp)
 828:	495f 504c 3233      	0x3233504c495f
 82e:	0046                	c.slli	zero,0x11
 830:	6e65                	lui	t3,0x19
 832:	6976                	ld	s2,344(sp)
 834:	6f72                	ld	t5,280(sp)
 836:	006e                	c.slli	zero,0x1b
 838:	746e6977          	0x746e6977
 83c:	745f 5f00 6f6c      	0x6f6c5f00745f
 842:	41006b63          	bltu	zero,a6,c58 <register_fini-0xf458>
 846:	4942                	lw	s2,16(sp)
 848:	495f 504c 3233      	0x3233504c495f
 84e:	0044                	addi	s1,sp,4
 850:	4241                	li	tp,16
 852:	5f49                	li	t5,-14
 854:	4c49                	li	s8,18
 856:	3350                	fld	fa2,160(a4)
 858:	4532                	lw	a0,12(sp)
 85a:	5f00                	lw	s0,56(a4)
 85c:	756d                	lui	a0,0xffffb
 85e:	746c                	ld	a1,232(s0)
 860:	7500                	ld	s0,40(a0)
 862:	736e                	ld	t1,248(sp)
 864:	6570                	ld	a2,200(a0)
 866:	74735f63          	bge	t1,t2,fc4 <register_fini-0xf0ec>
 86a:	6972                	ld	s2,280(sp)
 86c:	676e                	ld	a4,216(sp)
 86e:	706f0073          	0x706f0073
 872:	7274                	ld	a3,224(a2)
 874:	7365                	lui	t1,0xffff9
 876:	7465                	lui	s0,0xffff9
 878:	5f00                	lw	s0,56(a4)
 87a:	74697277          	0x74697277
 87e:	0065                	c.nop	25
 880:	5f5f 6d74 795f      	0x795f6d745f5f
 886:	6165                	addi	sp,sp,112
 888:	0072                	c.slli	zero,0x1c
 88a:	755f 756e 6573      	0x6573756e755f
 890:	5f64                	lw	s1,124(a4)
 892:	6172                	ld	sp,280(sp)
 894:	646e                	ld	s0,216(sp)
 896:	7200                	ld	s0,32(a2)
 898:	7369                	lui	t1,0xffffa
 89a:	635f7663          	bgeu	t5,s5,ec6 <register_fini-0xf1ea>
 89e:	5f65646f          	jal	s0,56e94 <__BSS_END__+0x44664>
 8a2:	6f6d                	lui	t5,0x1b
 8a4:	6564                	ld	s1,200(a0)
 8a6:	006c                	addi	a1,sp,12
 8a8:	6f5f 6666 6573      	0x657366666f5f
 8ae:	0074                	addi	a3,sp,12
 8b0:	6974706f          	j	48746 <__BSS_END__+0x35f16>
 8b4:	646e                	ld	s0,216(sp)
 8b6:	5f00                	lw	s0,56(a4)
 8b8:	656e                	ld	a0,216(sp)
 8ba:	7478                	ld	a4,232(s0)
 8bc:	0066                	c.slli	zero,0x19
 8be:	706d6f63          	bltu	s10,t1,fdc <register_fini-0xf0d4>
 8c2:	656c                	ld	a1,200(a0)
 8c4:	2078                	fld	fa4,192(s0)
 8c6:	6c66                	ld	s8,88(sp)
 8c8:	0074616f          	jal	sp,470ce <__BSS_END__+0x3489e>
 8cc:	5f5f 6d74 6d5f      	0x6d5f6d745f5f
 8d2:	5f006e6f          	jal	t3,6ec2 <register_fini-0x91ee>
 8d6:	7461                	lui	s0,0xffff8
 8d8:	7865                	lui	a6,0xffff9
 8da:	7469                	lui	s0,0xffffa
 8dc:	7300                	ld	s0,32(a4)
 8de:	6275                	lui	tp,0x1d
 8e0:	6174706f          	j	486f6 <__BSS_END__+0x35ec6>
 8e4:	6772                	ld	a4,280(sp)
 8e6:	5f00                	lw	s0,56(a4)
 8e8:	735f 6964 6964      	0x69646964735f
 8ee:	696e                	ld	s2,216(sp)
 8f0:	0074                	addi	a3,sp,12
 8f2:	6f5f 6666 745f      	0x745f66666f5f
 8f8:	5f00                	lw	s0,56(a4)
 8fa:	7266                	ld	tp,120(sp)
 8fc:	6565                	lui	a0,0x19
 8fe:	696c                	ld	a1,208(a0)
 900:	5f007473          	csrrci	s0,0x5f0,0
 904:	6974                	ld	a3,208(a0)
 906:	656d                	lui	a0,0x1b
 908:	6f7a                	ld	t5,408(sp)
 90a:	656e                	ld	a0,216(sp)
 90c:	5f00                	lw	s0,56(a4)
 90e:	626d                	lui	tp,0x1b
 910:	74617473          	csrrci	s0,0x746,2
 914:	5f65                	li	t5,-7
 916:	0074                	addi	a3,sp,12
 918:	4c5f 434f 5f4b      	0x5f4b434f4c5f
 91e:	4552                	lw	a0,20(sp)
 920:	53525543          	fmadd.d	fa0,ft4,fs5,fa0,unknown
 924:	5649                	li	a2,-14
 926:	5f45                	li	t5,-15
 928:	0054                	addi	a3,sp,4
 92a:	725f 6165 0064      	0x646165725f
 930:	2e2e                	fld	ft8,200(sp)
 932:	2f2e2e2f          	0x2f2e2e2f
 936:	2e2e                	fld	ft8,200(sp)
 938:	2f2e2e2f          	0x2f2e2e2f
 93c:	6972                	ld	s2,280(sp)
 93e:	2d766373          	csrrsi	t1,0x2d7,12
 942:	2f636367          	0x2f636367
 946:	696c                	ld	a1,208(a0)
 948:	6762                	ld	a4,24(sp)
 94a:	6c2f6363          	bltu	t5,sp,1010 <register_fini-0xf0a0>
 94e:	6269                	lui	tp,0x1a
 950:	32636367          	0x32636367
 954:	632e                	ld	t1,200(sp)
 956:	4100                	lw	s0,0(a0)
 958:	4942                	lw	s2,16(sp)
 95a:	4c5f 3650 0034      	0x3436504c5f
 960:	4241                	li	tp,16
 962:	5f49                	li	t5,-14
 964:	4c49                	li	s8,18
 966:	3350                	fld	fa2,160(a4)
 968:	0032                	c.slli	zero,0xc
 96a:	645f 6f73 685f      	0x685f6f73645f
 970:	6e61                	lui	t3,0x18
 972:	6c64                	ld	s1,216(s0)
 974:	0065                	c.nop	25
 976:	4d5f4d43          	0x4d5f4d43
 97a:	4445                	li	s0,17
 97c:	4e41                	li	t3,16
 97e:	0059                	c.nop	22
 980:	6e5f 7765 5f00      	0x5f0077656e5f
 986:	5f68                	lw	a0,124(a4)
 988:	7265                	lui	tp,0xffff9
 98a:	6e72                	ld	t3,280(sp)
 98c:	665f006f          	j	f17f0 <__BSS_END__+0xdefc0>
 990:	6f6c                	ld	a1,216(a4)
 992:	745f6b63          	bltu	t5,t0,10e8 <register_fini-0xefc8>
 996:	5f00                	lw	s0,56(a4)
 998:	745f 5f6d 6479      	0x64795f6d745f
 99e:	7961                	lui	s2,0xffff8
 9a0:	5f00                	lw	s0,56(a4)
 9a2:	735f 7562 0066      	0x667562735f
 9a8:	665f 616c 7367      	0x7367616c665f
 9ae:	0032                	c.slli	zero,0xc
 9b0:	695f 626f 0073      	0x73626f695f
 9b6:	4d5f4d43          	0x4d5f4d43
 9ba:	4445                	li	s0,17
 9bc:	4f4c                	lw	a1,28(a4)
 9be:	74680057          	0x74680057
 9c2:	6261                	lui	tp,0x18
 9c4:	685f 7361 0068      	0x687361685f
 9ca:	5f5f 4673 4c49      	0x4c4946735f5f
 9d0:	0045                	c.nop	17
 9d2:	735f 7379 6e5f      	0x6e5f7379735f
 9d8:	7265                	lui	tp,0xffff9
 9da:	0072                	c.slli	zero,0x1c
 9dc:	725f 6e61 5f64      	0x5f646e61725f
 9e2:	656e                	ld	a0,216(sp)
 9e4:	7478                	ld	a4,232(s0)
 9e6:	5f00                	lw	s0,56(a4)
 9e8:	626d                	lui	tp,0x1b
 9ea:	656c                	ld	a1,200(a0)
 9ec:	5f6e                	lw	t5,248(sp)
 9ee:	74617473          	csrrci	s0,0x746,2
 9f2:	0065                	c.nop	25
 9f4:	695f 636e 5f00      	0x5f00636e695f
 9fa:	6e69                	lui	t3,0x1a
 9fc:	0064                	addi	s1,sp,12
 9fe:	6c5f 636f 6c61      	0x6c61636f6c5f
 a04:	0065                	c.nop	25
 a06:	5f5f 6c63 6165      	0x61656c635f5f
 a0c:	756e                	ld	a0,248(sp)
 a0e:	0070                	addi	a2,sp,12
 a10:	755f 736e 6570      	0x6570736e755f
 a16:	69666963          	bltu	a2,s6,10a8 <register_fini-0xf008>
 a1a:	6465                	lui	s0,0x19
 a1c:	6c5f 636f 6c61      	0x6c61636f6c5f
 a22:	5f65                	li	t5,-7
 a24:	6e69                	lui	t3,0x1a
 a26:	6f66                	ld	t5,88(sp)
 a28:	5f00                	lw	s0,56(a4)
 a2a:	616d                	addi	sp,sp,240
 a2c:	7778                	ld	a4,232(a4)
 a2e:	7364                	ld	s1,224(a4)
 a30:	5f00                	lw	s0,56(a4)
 a32:	6572                	ld	a0,280(sp)
 a34:	6e65                	lui	t3,0x19
 a36:	0074                	addi	a3,sp,12
 a38:	735f 6565 0064      	0x646565735f
 a3e:	5f5f 6f63 6e75      	0x6e756f635f5f
 a44:	0074                	addi	a3,sp,12
 a46:	5f5f 6176 756c      	0x756c61765f5f
 a4c:	0065                	c.nop	25
 a4e:	735f 6565 006b      	0x6b6565735f
 a54:	665f 6f70 5f73      	0x5f736f70665f
 a5a:	0074                	addi	a3,sp,12
 a5c:	69666973          	csrrsi	s2,0x696,12
 a60:	6576                	ld	a0,344(sp)
 a62:	375f 5f00 6c62      	0x6c625f00375f
 a68:	7a69736b          	0x7a69736b
 a6c:	0065                	c.nop	25
 a6e:	656e6567          	0x656e6567
 a72:	6972                	ld	s2,280(sp)
 a74:	706f0063          	beq	t5,t1,1174 <register_fini-0xef3c>
 a78:	6574                	ld	a3,200(a0)
 a7a:	7272                	ld	tp,312(sp)
 a7c:	5f00                	lw	s0,56(a4)
 a7e:	74727473          	csrrci	s0,0x747,4
 a82:	6c5f6b6f          	jal	s6,f7946 <__BSS_END__+0xe5116>
 a86:	7361                	lui	t1,0xffff8
 a88:	0074                	addi	a3,sp,12
 a8a:	505f4d43          	fmadd.s	fs10,ft10,ft5,fa0,rmm
 a8e:	4349                	li	t1,18
 a90:	5f00                	lw	s0,56(a4)
 a92:	6e66                	ld	t3,88(sp)
 a94:	7974                	ld	a3,240(a0)
 a96:	6570                	ld	a2,200(a0)
 a98:	615f0073          	0x615f0073
 a9c:	6464                	ld	s1,200(s0)
 a9e:	5f00                	lw	s0,56(a4)
 aa0:	555f 6f4c 676e      	0x676e6f4c555f
 aa6:	6800                	ld	s0,16(s0)
 aa8:	6174                	ld	a3,192(a0)
 aaa:	5f62                	lw	t5,56(sp)
 aac:	7165                	addi	sp,sp,-400
 aae:	705f 696f 746e      	0x746e696f705f
 ab4:	7265                	lui	tp,0xffff9
 ab6:	5f00                	lw	s0,56(a4)
 ab8:	785f 0072 675f      	0x675f0072785f
 abe:	6f6c                	ld	a1,216(a4)
 ac0:	6162                	ld	sp,24(sp)
 ac2:	5f6c                	lw	a1,124(a4)
 ac4:	6d69                	lui	s10,0x1a
 ac6:	7570                	ld	a2,232(a0)
 ac8:	6572                	ld	a0,280(sp)
 aca:	705f 7274 5500      	0x55007274705f
 ad0:	4944                	lw	s1,20(a0)
 ad2:	7974                	ld	a3,240(a0)
 ad4:	6570                	ld	a2,200(a0)
 ad6:	5f00                	lw	s0,56(a4)
 ad8:	6f647473          	csrrci	s0,0x6f6,8
 adc:	7475                	lui	s0,0xffffd
 ade:	5f00                	lw	s0,56(a4)
 ae0:	745f 5f6d 6477      	0x64775f6d745f
 ae6:	7961                	lui	s2,0xffff8
 ae8:	5f00                	lw	s0,56(a4)
 aea:	65756c67          	0x65756c67
 aee:	5f00                	lw	s0,56(a4)
 af0:	69647473          	csrrci	s0,0x696,8
 af4:	006e                	c.slli	zero,0x1b
 af6:	735f 6973 657a      	0x657a6973735f
 afc:	745f 5f00 366c      	0x366c5f00745f
 b02:	6134                	ld	a3,64(a0)
 b04:	625f 6675 5f00      	0x5f006675625f
 b0a:	5f676973          	csrrsi	s2,0x5f6,14
 b0e:	7566                	ld	a0,120(sp)
 b10:	636e                	ld	t1,216(sp)
 b12:	5f00                	lw	s0,56(a4)
 b14:	626e                	ld	tp,216(sp)
 b16:	6675                	lui	a2,0x1d
 b18:	5f00                	lw	s0,56(a4)
 b1a:	6e75                	lui	t3,0x1d
 b1c:	7375                	lui	t1,0xffffd
 b1e:	6465                	lui	s0,0x19
 b20:	5f00                	lw	s0,56(a4)
 b22:	745f 5f6d 7369      	0x73695f6d745f
 b28:	7364                	ld	s1,224(a4)
 b2a:	0074                	addi	a3,sp,12
 b2c:	6c5f 636f 6c61      	0x6c61636f6c5f
 b32:	6974                	ld	a3,208(a0)
 b34:	656d                	lui	a0,0x1b
 b36:	625f 6675 5f00      	0x5f006675625f
 b3c:	745f 5f6d 696d      	0x696d5f6d745f
 b42:	006e                	c.slli	zero,0x1b
 b44:	725f 3834 4100      	0x41003834725f
 b4a:	4942                	lw	s2,16(sp)
 b4c:	4c5f 3650 4434      	0x443436504c5f
 b52:	6f00                	ld	s0,24(a4)
 b54:	7470                	ld	a2,232(s0)
 b56:	0074706f          	j	4835c <__BSS_END__+0x35b2c>
 b5a:	4241                	li	tp,16
 b5c:	5f49                	li	t5,-14
 b5e:	504c                	lw	a1,36(s0)
 b60:	3436                	fld	fs0,360(sp)
 b62:	0046                	c.slli	zero,0x11
 b64:	6d5f 7462 776f      	0x776f74626d5f
 b6a:	74735f63          	bge	t1,t2,12c8 <register_fini-0xede8>
 b6e:	7461                	lui	s0,0xffff8
 b70:	0065                	c.nop	25
 b72:	705f 7335 5f00      	0x5f007335705f
 b78:	745f 5f6d 646d      	0x646d5f6d745f
 b7e:	7961                	lui	s2,0xffff8
 b80:	6800                	ld	s0,16(s0)
 b82:	6174                	ld	a3,192(a0)
 b84:	5f62                	lw	t5,56(sp)
 b86:	7165                	addi	sp,sp,-400
	...

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
	...
       8:	0068                	addi	a0,sp,12
       a:	0000                	unimp
       c:	0000                	unimp
       e:	0000                	unimp
      10:	0001                	nop
      12:	685a                	ld	a6,400(sp)
      14:	0000                	unimp
      16:	0000                	unimp
      18:	0000                	unimp
      1a:	9c00                	0x9c00
      1c:	0000                	unimp
      1e:	0000                	unimp
      20:	0000                	unimp
      22:	0600                	addi	s0,sp,768
      24:	f300                	sd	s0,32(a4)
      26:	2d0af503          	0x2d0af503
      2a:	9c9f 0000 0000      	0x9c9f
      30:	0000                	unimp
      32:	a400                	fsd	fs0,8(s0)
      34:	0000                	unimp
      36:	0000                	unimp
      38:	0000                	unimp
      3a:	0100                	addi	s0,sp,128
      3c:	5a00                	lw	s0,48(a2)
      3e:	00a4                	addi	s1,sp,72
      40:	0000                	unimp
      42:	0000                	unimp
      44:	0000                	unimp
      46:	00c0                	addi	s0,sp,68
      48:	0000                	unimp
      4a:	0000                	unimp
      4c:	0000                	unimp
      4e:	0006                	c.slli	zero,0x1
      50:	0af503f3          	0xaf503f3
      54:	9f2d                	addw	a4,a4,a1
      56:	00c0                	addi	s0,sp,68
      58:	0000                	unimp
      5a:	0000                	unimp
      5c:	0000                	unimp
      5e:	0114                	addi	a3,sp,128
      60:	0000                	unimp
      62:	0000                	unimp
      64:	0000                	unimp
      66:	0001                	nop
      68:	145a                	slli	s0,s0,0x36
      6a:	0001                	nop
      6c:	0000                	unimp
      6e:	0000                	unimp
      70:	1c00                	addi	s0,sp,560
      72:	0001                	nop
      74:	0000                	unimp
      76:	0000                	unimp
      78:	0600                	addi	s0,sp,768
      7a:	f300                	sd	s0,32(a4)
      7c:	2d0af503          	0x2d0af503
      80:	1c9f 0001 0000      	0x11c9f
      86:	0000                	unimp
      88:	3000                	fld	fs0,32(s0)
      8a:	0001                	nop
      8c:	0000                	unimp
      8e:	0000                	unimp
      90:	0100                	addi	s0,sp,128
      92:	5a00                	lw	s0,48(a2)
      94:	0130                	addi	a2,sp,136
      96:	0000                	unimp
      98:	0000                	unimp
      9a:	0000                	unimp
      9c:	0158                	addi	a4,sp,132
      9e:	0000                	unimp
      a0:	0000                	unimp
      a2:	0000                	unimp
      a4:	0006                	c.slli	zero,0x1
      a6:	0af503f3          	0xaf503f3
      aa:	9f2d                	addw	a4,a4,a1
      ac:	0158                	addi	a4,sp,132
      ae:	0000                	unimp
      b0:	0000                	unimp
      b2:	0000                	unimp
      b4:	01b0                	addi	a2,sp,200
      b6:	0000                	unimp
      b8:	0000                	unimp
      ba:	0000                	unimp
      bc:	0001                	nop
      be:	b05a                	fsd	fs6,32(sp)
      c0:	0001                	nop
      c2:	0000                	unimp
      c4:	0000                	unimp
      c6:	c800                	sw	s0,16(s0)
      c8:	0001                	nop
      ca:	0000                	unimp
      cc:	0000                	unimp
      ce:	0600                	addi	s0,sp,768
      d0:	f300                	sd	s0,32(a4)
      d2:	2d0af503          	0x2d0af503
      d6:	c89f 0001 0000      	0x1c89f
      dc:	0000                	unimp
      de:	e400                	sd	s0,8(s0)
      e0:	0001                	nop
      e2:	0000                	unimp
      e4:	0000                	unimp
      e6:	0100                	addi	s0,sp,128
      e8:	5a00                	lw	s0,48(a2)
      ea:	01e4                	addi	s1,sp,204
      ec:	0000                	unimp
      ee:	0000                	unimp
      f0:	0000                	unimp
      f2:	03ac                	addi	a1,sp,456
      f4:	0000                	unimp
      f6:	0000                	unimp
      f8:	0000                	unimp
      fa:	0006                	c.slli	zero,0x1
      fc:	0af503f3          	0xaf503f3
     100:	9f2d                	addw	a4,a4,a1
     102:	03ac                	addi	a1,sp,456
     104:	0000                	unimp
     106:	0000                	unimp
     108:	0000                	unimp
     10a:	03cc                	addi	a1,sp,452
     10c:	0000                	unimp
     10e:	0000                	unimp
     110:	0000                	unimp
     112:	0001                	nop
     114:	cc5a                	sw	s6,24(sp)
     116:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     11a:	0000                	unimp
     11c:	6800                	ld	s0,16(s0)
     11e:	0004                	0x4
     120:	0000                	unimp
     122:	0000                	unimp
     124:	0600                	addi	s0,sp,768
     126:	f300                	sd	s0,32(a4)
     128:	2d0af503          	0x2d0af503
     12c:	009f 0000 0000      	0x9f
	...
     142:	0000                	unimp
     144:	3c00                	fld	fs0,56(s0)
     146:	0000                	unimp
     148:	0000                	unimp
     14a:	0000                	unimp
     14c:	0100                	addi	s0,sp,128
     14e:	5b00                	lw	s0,48(a4)
     150:	003c                	addi	a5,sp,8
     152:	0000                	unimp
     154:	0000                	unimp
     156:	0000                	unimp
     158:	0468                	addi	a0,sp,524
     15a:	0000                	unimp
     15c:	0000                	unimp
     15e:	0000                	unimp
     160:	0006                	c.slli	zero,0x1
     162:	0bf503f3          	0xbf503f3
     166:	9f2d                	addw	a4,a4,a1
	...
     180:	00a4                	addi	s1,sp,72
     182:	0000                	unimp
     184:	0000                	unimp
     186:	0000                	unimp
     188:	0002                	c.slli64	zero
     18a:	9f30                	0x9f30
     18c:	00c0                	addi	s0,sp,68
     18e:	0000                	unimp
     190:	0000                	unimp
     192:	0000                	unimp
     194:	01ac                	addi	a1,sp,200
     196:	0000                	unimp
     198:	0000                	unimp
     19a:	0000                	unimp
     19c:	0002                	c.slli64	zero
     19e:	9f30                	0x9f30
     1a0:	01c8                	addi	a0,sp,196
     1a2:	0000                	unimp
     1a4:	0000                	unimp
     1a6:	0000                	unimp
     1a8:	031c                	addi	a5,sp,384
     1aa:	0000                	unimp
     1ac:	0000                	unimp
     1ae:	0000                	unimp
     1b0:	0002                	c.slli64	zero
     1b2:	9f30                	0x9f30
     1b4:	0334                	addi	a3,sp,392
     1b6:	0000                	unimp
     1b8:	0000                	unimp
     1ba:	0000                	unimp
     1bc:	03c0                	addi	s0,sp,452
     1be:	0000                	unimp
     1c0:	0000                	unimp
     1c2:	0000                	unimp
     1c4:	0002                	c.slli64	zero
     1c6:	9f30                	0x9f30
     1c8:	03c8                	addi	a0,sp,452
     1ca:	0000                	unimp
     1cc:	0000                	unimp
     1ce:	0000                	unimp
     1d0:	03d0                	addi	a2,sp,452
     1d2:	0000                	unimp
     1d4:	0000                	unimp
     1d6:	0000                	unimp
     1d8:	0002                	c.slli64	zero
     1da:	9f30                	0x9f30
     1dc:	0444                	addi	s1,sp,516
     1de:	0000                	unimp
     1e0:	0000                	unimp
     1e2:	0000                	unimp
     1e4:	0460                	addi	s0,sp,524
     1e6:	0000                	unimp
     1e8:	0000                	unimp
     1ea:	0000                	unimp
     1ec:	0002                	c.slli64	zero
     1ee:	9f30                	0x9f30
	...
     200:	0038                	addi	a4,sp,8
     202:	0000                	unimp
     204:	0000                	unimp
     206:	0000                	unimp
     208:	00a4                	addi	s1,sp,72
     20a:	0000                	unimp
     20c:	0000                	unimp
     20e:	0000                	unimp
     210:	0001                	nop
     212:	c059                	beqz	s0,298 <register_fini-0xfe18>
     214:	0000                	unimp
     216:	0000                	unimp
     218:	0000                	unimp
     21a:	bc00                	fsd	fs0,56(s0)
     21c:	0001                	nop
     21e:	0000                	unimp
     220:	0000                	unimp
     222:	0100                	addi	s0,sp,128
     224:	5900                	lw	s0,48(a0)
     226:	01c8                	addi	a0,sp,196
     228:	0000                	unimp
     22a:	0000                	unimp
     22c:	0000                	unimp
     22e:	01fc                	addi	a5,sp,204
     230:	0000                	unimp
     232:	0000                	unimp
     234:	0000                	unimp
     236:	0001                	nop
     238:	1059                	c.nop	-10
     23a:	0002                	c.slli64	zero
     23c:	0000                	unimp
     23e:	0000                	unimp
     240:	7800                	ld	s0,48(s0)
     242:	0002                	c.slli64	zero
     244:	0000                	unimp
     246:	0000                	unimp
     248:	0100                	addi	s0,sp,128
     24a:	5900                	lw	s0,48(a0)
     24c:	027c                	addi	a5,sp,268
     24e:	0000                	unimp
     250:	0000                	unimp
     252:	0000                	unimp
     254:	02f8                	addi	a4,sp,332
     256:	0000                	unimp
     258:	0000                	unimp
     25a:	0000                	unimp
     25c:	0001                	nop
     25e:	fc59                	bnez	s0,1fc <register_fini-0xfeb4>
     260:	0002                	c.slli64	zero
     262:	0000                	unimp
     264:	0000                	unimp
     266:	2c00                	fld	fs0,24(s0)
     268:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     26c:	0000                	unimp
     26e:	0100                	addi	s0,sp,128
     270:	5900                	lw	s0,48(a0)
     272:	0334                	addi	a3,sp,392
     274:	0000                	unimp
     276:	0000                	unimp
     278:	0000                	unimp
     27a:	0348                	addi	a0,sp,388
     27c:	0000                	unimp
     27e:	0000                	unimp
     280:	0000                	unimp
     282:	0001                	nop
     284:	8459                	srai	s0,s0,0x16
     286:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     28a:	0000                	unimp
     28c:	9400                	0x9400
     28e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     292:	0000                	unimp
     294:	0100                	addi	s0,sp,128
     296:	5900                	lw	s0,48(a0)
     298:	03ac                	addi	a1,sp,456
     29a:	0000                	unimp
     29c:	0000                	unimp
     29e:	0000                	unimp
     2a0:	03d0                	addi	a2,sp,452
     2a2:	0000                	unimp
     2a4:	0000                	unimp
     2a6:	0000                	unimp
     2a8:	0001                	nop
     2aa:	4459                	li	s0,22
     2ac:	0004                	0x4
     2ae:	0000                	unimp
     2b0:	0000                	unimp
     2b2:	5000                	lw	s0,32(s0)
     2b4:	0004                	0x4
     2b6:	0000                	unimp
     2b8:	0000                	unimp
     2ba:	0100                	addi	s0,sp,128
     2bc:	5900                	lw	s0,48(a0)
     2be:	0454                	addi	a3,sp,516
     2c0:	0000                	unimp
     2c2:	0000                	unimp
     2c4:	0000                	unimp
     2c6:	0460                	addi	s0,sp,524
     2c8:	0000                	unimp
     2ca:	0000                	unimp
     2cc:	0000                	unimp
     2ce:	0001                	nop
     2d0:	0059                	c.nop	22
	...
     2de:	0000                	unimp
     2e0:	2800                	fld	fs0,16(s0)
     2e2:	0000                	unimp
     2e4:	0000                	unimp
     2e6:	0000                	unimp
     2e8:	6800                	ld	s0,16(s0)
     2ea:	0000                	unimp
     2ec:	0000                	unimp
     2ee:	0000                	unimp
     2f0:	0100                	addi	s0,sp,128
     2f2:	5800                	lw	s0,48(s0)
     2f4:	009c                	addi	a5,sp,64
     2f6:	0000                	unimp
     2f8:	0000                	unimp
     2fa:	0000                	unimp
     2fc:	00a4                	addi	s1,sp,72
     2fe:	0000                	unimp
     300:	0000                	unimp
     302:	0000                	unimp
     304:	0001                	nop
     306:	c058                	sw	a4,4(s0)
     308:	0000                	unimp
     30a:	0000                	unimp
     30c:	0000                	unimp
     30e:	1800                	addi	s0,sp,48
     310:	0001                	nop
     312:	0000                	unimp
     314:	0000                	unimp
     316:	0100                	addi	s0,sp,128
     318:	5800                	lw	s0,48(s0)
     31a:	011c                	addi	a5,sp,128
     31c:	0000                	unimp
     31e:	0000                	unimp
     320:	0000                	unimp
     322:	01a8                	addi	a0,sp,200
     324:	0000                	unimp
     326:	0000                	unimp
     328:	0000                	unimp
     32a:	0001                	nop
     32c:	a858                	fsd	fa4,144(s0)
     32e:	0001                	nop
     330:	0000                	unimp
     332:	0000                	unimp
     334:	ac00                	fsd	fs0,24(s0)
     336:	0001                	nop
     338:	0000                	unimp
     33a:	0000                	unimp
     33c:	0300                	addi	s0,sp,384
     33e:	7d00                	ld	s0,56(a0)
     340:	9f7f                	0x9f7f
     342:	01ac                	addi	a1,sp,200
     344:	0000                	unimp
     346:	0000                	unimp
     348:	0000                	unimp
     34a:	01c4                	addi	s1,sp,196
     34c:	0000                	unimp
     34e:	0000                	unimp
     350:	0000                	unimp
     352:	0001                	nop
     354:	c858                	sw	a4,20(s0)
     356:	0001                	nop
     358:	0000                	unimp
     35a:	0000                	unimp
     35c:	dc00                	sw	s0,56(s0)
     35e:	0001                	nop
     360:	0000                	unimp
     362:	0000                	unimp
     364:	0100                	addi	s0,sp,128
     366:	5800                	lw	s0,48(s0)
     368:	01dc                	addi	a5,sp,196
     36a:	0000                	unimp
     36c:	0000                	unimp
     36e:	0000                	unimp
     370:	01e0                	addi	s0,sp,204
     372:	0000                	unimp
     374:	0000                	unimp
     376:	0000                	unimp
     378:	7f7d0003          	lb	zero,2039(s10) # 1a7f7 <__BSS_END__+0x7fc7>
     37c:	e09f 0001 0000      	0x1e09f
     382:	0000                	unimp
     384:	fc00                	sd	s0,56(s0)
     386:	0001                	nop
     388:	0000                	unimp
     38a:	0000                	unimp
     38c:	0100                	addi	s0,sp,128
     38e:	5800                	lw	s0,48(s0)
     390:	0210                	addi	a2,sp,256
     392:	0000                	unimp
     394:	0000                	unimp
     396:	0000                	unimp
     398:	0274                	addi	a3,sp,268
     39a:	0000                	unimp
     39c:	0000                	unimp
     39e:	0000                	unimp
     3a0:	0001                	nop
     3a2:	7c58                	ld	a4,184(s0)
     3a4:	0002                	c.slli64	zero
     3a6:	0000                	unimp
     3a8:	0000                	unimp
     3aa:	f400                	sd	s0,40(s0)
     3ac:	0002                	c.slli64	zero
     3ae:	0000                	unimp
     3b0:	0000                	unimp
     3b2:	0100                	addi	s0,sp,128
     3b4:	5800                	lw	s0,48(s0)
     3b6:	02fc                	addi	a5,sp,332
     3b8:	0000                	unimp
     3ba:	0000                	unimp
     3bc:	0000                	unimp
     3be:	0330                	addi	a2,sp,392
     3c0:	0000                	unimp
     3c2:	0000                	unimp
     3c4:	0000                	unimp
     3c6:	0001                	nop
     3c8:	3458                	fld	fa4,168(s0)
     3ca:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     3ce:	0000                	unimp
     3d0:	4800                	lw	s0,16(s0)
     3d2:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     3d6:	0000                	unimp
     3d8:	0100                	addi	s0,sp,128
     3da:	5800                	lw	s0,48(s0)
     3dc:	0384                	addi	s1,sp,448
     3de:	0000                	unimp
     3e0:	0000                	unimp
     3e2:	0000                	unimp
     3e4:	0390                	addi	a2,sp,448
     3e6:	0000                	unimp
     3e8:	0000                	unimp
     3ea:	0000                	unimp
     3ec:	0001                	nop
     3ee:	ac58                	fsd	fa4,152(s0)
     3f0:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     3f4:	0000                	unimp
     3f6:	b400                	fsd	fs0,40(s0)
     3f8:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     3fc:	0000                	unimp
     3fe:	0100                	addi	s0,sp,128
     400:	5800                	lw	s0,48(s0)
     402:	03b4                	addi	a3,sp,456
     404:	0000                	unimp
     406:	0000                	unimp
     408:	0000                	unimp
     40a:	03b8                	addi	a4,sp,456
     40c:	0000                	unimp
     40e:	0000                	unimp
     410:	0000                	unimp
     412:	000a                	c.slli	zero,0x2
     414:	007a                	c.slli	zero,0x1e
     416:	3408                	fld	fa0,40(s0)
     418:	0a25                	addi	s4,s4,9
     41a:	07ff                	0x7ff
     41c:	9f1a                	add	t5,t5,t1
     41e:	03b8                	addi	a4,sp,456
     420:	0000                	unimp
     422:	0000                	unimp
     424:	0000                	unimp
     426:	03cc                	addi	a1,sp,452
     428:	0000                	unimp
     42a:	0000                	unimp
     42c:	0000                	unimp
     42e:	0001                	nop
     430:	4458                	lw	a4,12(s0)
     432:	0004                	0x4
     434:	0000                	unimp
     436:	0000                	unimp
     438:	4c00                	lw	s0,24(s0)
     43a:	0004                	0x4
     43c:	0000                	unimp
     43e:	0000                	unimp
     440:	0100                	addi	s0,sp,128
     442:	5800                	lw	s0,48(s0)
     444:	0454                	addi	a3,sp,516
     446:	0000                	unimp
     448:	0000                	unimp
     44a:	0000                	unimp
     44c:	045c                	addi	a5,sp,516
     44e:	0000                	unimp
     450:	0000                	unimp
     452:	0000                	unimp
     454:	0001                	nop
     456:	0058                	addi	a4,sp,4
	...
     464:	0000                	unimp
     466:	1c00                	addi	s0,sp,560
     468:	0000                	unimp
     46a:	0000                	unimp
     46c:	0000                	unimp
     46e:	6800                	ld	s0,16(s0)
     470:	0000                	unimp
     472:	0000                	unimp
     474:	0000                	unimp
     476:	0100                	addi	s0,sp,128
     478:	5f00                	lw	s0,56(a4)
     47a:	009c                	addi	a5,sp,64
     47c:	0000                	unimp
     47e:	0000                	unimp
     480:	0000                	unimp
     482:	00a4                	addi	s1,sp,72
     484:	0000                	unimp
     486:	0000                	unimp
     488:	0000                	unimp
     48a:	0001                	nop
     48c:	c05f 0000 0000      	0xc05f
     492:	0000                	unimp
     494:	fc00                	sd	s0,56(s0)
     496:	0000                	unimp
     498:	0000                	unimp
     49a:	0000                	unimp
     49c:	0100                	addi	s0,sp,128
     49e:	5f00                	lw	s0,56(a4)
     4a0:	00fc                	addi	a5,sp,76
     4a2:	0000                	unimp
     4a4:	0000                	unimp
     4a6:	0000                	unimp
     4a8:	0100                	addi	s0,sp,128
     4aa:	0000                	unimp
     4ac:	0000                	unimp
     4ae:	0000                	unimp
     4b0:	000a                	c.slli	zero,0x2
     4b2:	0080                	addi	s0,sp,64
     4b4:	253c                	fld	fa5,72(a0)
     4b6:	007a                	c.slli	zero,0x1e
     4b8:	331a                	fld	ft6,416(sp)
     4ba:	9f24                	0x9f24
     4bc:	0100                	addi	s0,sp,128
     4be:	0000                	unimp
     4c0:	0000                	unimp
     4c2:	0000                	unimp
     4c4:	0114                	addi	a3,sp,128
     4c6:	0000                	unimp
     4c8:	0000                	unimp
     4ca:	0000                	unimp
     4cc:	0001                	nop
     4ce:	1c5f 0001 0000      	0x11c5f
     4d4:	0000                	unimp
     4d6:	4800                	lw	s0,16(s0)
     4d8:	0001                	nop
     4da:	0000                	unimp
     4dc:	0000                	unimp
     4de:	0100                	addi	s0,sp,128
     4e0:	5f00                	lw	s0,56(a4)
     4e2:	0150                	addi	a2,sp,132
     4e4:	0000                	unimp
     4e6:	0000                	unimp
     4e8:	0000                	unimp
     4ea:	0158                	addi	a4,sp,132
     4ec:	0000                	unimp
     4ee:	0000                	unimp
     4f0:	0000                	unimp
     4f2:	0001                	nop
     4f4:	0001585b          	0x1585b
     4f8:	0000                	unimp
     4fa:	0000                	unimp
     4fc:	9000                	0x9000
     4fe:	0001                	nop
     500:	0000                	unimp
     502:	0000                	unimp
     504:	0100                	addi	s0,sp,128
     506:	5f00                	lw	s0,56(a4)
     508:	0190                	addi	a2,sp,192
     50a:	0000                	unimp
     50c:	0000                	unimp
     50e:	0000                	unimp
     510:	019c                	addi	a5,sp,192
     512:	0000                	unimp
     514:	0000                	unimp
     516:	0000                	unimp
     518:	000a                	c.slli	zero,0x2
     51a:	0080                	addi	s0,sp,64
     51c:	253c                	fld	fa5,72(a0)
     51e:	007a                	c.slli	zero,0x1e
     520:	331a                	fld	ft6,416(sp)
     522:	9f24                	0x9f24
     524:	019c                	addi	a5,sp,192
     526:	0000                	unimp
     528:	0000                	unimp
     52a:	0000                	unimp
     52c:	01ac                	addi	a1,sp,200
     52e:	0000                	unimp
     530:	0000                	unimp
     532:	0000                	unimp
     534:	007a000f          	0x7a000f
     538:	ff10                	sd	a2,56(a4)
     53a:	ffff                	0xffff
     53c:	ffff                	0xffff
     53e:	ffff                	0xffff
     540:	24331a07          	0x24331a07
     544:	ac9f 0001 0000      	0x1ac9f
     54a:	0000                	unimp
     54c:	b800                	fsd	fs0,48(s0)
     54e:	0001                	nop
     550:	0000                	unimp
     552:	0000                	unimp
     554:	0100                	addi	s0,sp,128
     556:	5f00                	lw	s0,56(a4)
     558:	01c8                	addi	a0,sp,196
     55a:	0000                	unimp
     55c:	0000                	unimp
     55e:	0000                	unimp
     560:	01d4                	addi	a3,sp,196
     562:	0000                	unimp
     564:	0000                	unimp
     566:	0000                	unimp
     568:	0001                	nop
     56a:	d45f 0001 0000      	0x1d45f
     570:	0000                	unimp
     572:	e000                	sd	s0,0(s0)
     574:	0001                	nop
     576:	0000                	unimp
     578:	0000                	unimp
     57a:	0a00                	addi	s0,sp,272
     57c:	8000                	0x8000
     57e:	3c00                	fld	fs0,56(s0)
     580:	7a25                	lui	s4,0xfffe9
     582:	1a00                	addi	s0,sp,304
     584:	e09f2433          	0xe09f2433
     588:	0001                	nop
     58a:	0000                	unimp
     58c:	0000                	unimp
     58e:	fc00                	sd	s0,56(s0)
     590:	0001                	nop
     592:	0000                	unimp
     594:	0000                	unimp
     596:	0100                	addi	s0,sp,128
     598:	5f00                	lw	s0,56(a4)
     59a:	0210                	addi	a2,sp,256
     59c:	0000                	unimp
     59e:	0000                	unimp
     5a0:	0000                	unimp
     5a2:	0240                	addi	s0,sp,260
     5a4:	0000                	unimp
     5a6:	0000                	unimp
     5a8:	0000                	unimp
     5aa:	0001                	nop
     5ac:	445f 0002 0000      	0x2445f
     5b2:	0000                	unimp
     5b4:	7000                	ld	s0,32(s0)
     5b6:	0002                	c.slli64	zero
     5b8:	0000                	unimp
     5ba:	0000                	unimp
     5bc:	0100                	addi	s0,sp,128
     5be:	5f00                	lw	s0,56(a4)
     5c0:	027c                	addi	a5,sp,268
     5c2:	0000                	unimp
     5c4:	0000                	unimp
     5c6:	0000                	unimp
     5c8:	02a8                	addi	a0,sp,328
     5ca:	0000                	unimp
     5cc:	0000                	unimp
     5ce:	0000                	unimp
     5d0:	0001                	nop
     5d2:	b05f 0002 0000      	0x2b05f
     5d8:	0000                	unimp
     5da:	b800                	fsd	fs0,48(s0)
     5dc:	0002                	c.slli64	zero
     5de:	0000                	unimp
     5e0:	0000                	unimp
     5e2:	0100                	addi	s0,sp,128
     5e4:	5a00                	lw	s0,48(a2)
     5e6:	02b8                	addi	a4,sp,328
     5e8:	0000                	unimp
     5ea:	0000                	unimp
     5ec:	0000                	unimp
     5ee:	02ec                	addi	a1,sp,332
     5f0:	0000                	unimp
     5f2:	0000                	unimp
     5f4:	0000                	unimp
     5f6:	0001                	nop
     5f8:	fc5f 0002 0000      	0x2fc5f
     5fe:	0000                	unimp
     600:	0c00                	addi	s0,sp,528
     602:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     606:	0000                	unimp
     608:	0100                	addi	s0,sp,128
     60a:	5f00                	lw	s0,56(a4)
     60c:	031c                	addi	a5,sp,384
     60e:	0000                	unimp
     610:	0000                	unimp
     612:	0000                	unimp
     614:	0328                	addi	a0,sp,392
     616:	0000                	unimp
     618:	0000                	unimp
     61a:	0000                	unimp
     61c:	0001                	nop
     61e:	345f 0003 0000      	0x3345f
     624:	0000                	unimp
     626:	4800                	lw	s0,16(s0)
     628:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     62c:	0000                	unimp
     62e:	0100                	addi	s0,sp,128
     630:	5f00                	lw	s0,56(a4)
     632:	0384                	addi	s1,sp,448
     634:	0000                	unimp
     636:	0000                	unimp
     638:	0000                	unimp
     63a:	038c                	addi	a1,sp,448
     63c:	0000                	unimp
     63e:	0000                	unimp
     640:	0000                	unimp
     642:	0001                	nop
     644:	ac5f 0003 0000      	0x3ac5f
     64a:	0000                	unimp
     64c:	b000                	fsd	fs0,32(s0)
     64e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     652:	0000                	unimp
     654:	0100                	addi	s0,sp,128
     656:	5f00                	lw	s0,56(a4)
     658:	03b0                	addi	a2,sp,456
     65a:	0000                	unimp
     65c:	0000                	unimp
     65e:	0000                	unimp
     660:	03b8                	addi	a4,sp,456
     662:	0000                	unimp
     664:	0000                	unimp
     666:	0000                	unimp
     668:	000a                	c.slli	zero,0x2
     66a:	0080                	addi	s0,sp,64
     66c:	253c                	fld	fa5,72(a0)
     66e:	007a                	c.slli	zero,0x1e
     670:	331a                	fld	ft6,416(sp)
     672:	9f24                	0x9f24
     674:	03b8                	addi	a4,sp,456
     676:	0000                	unimp
     678:	0000                	unimp
     67a:	0000                	unimp
     67c:	03bc                	addi	a5,sp,456
     67e:	0000                	unimp
     680:	0000                	unimp
     682:	0000                	unimp
     684:	0001                	nop
     686:	bc5f 0003 0000      	0x3bc5f
     68c:	0000                	unimp
     68e:	c000                	sw	s0,0(s0)
     690:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     694:	0000                	unimp
     696:	0a00                	addi	s0,sp,272
     698:	8000                	0x8000
     69a:	3c00                	fld	fs0,56(s0)
     69c:	7a25                	lui	s4,0xfffe9
     69e:	1a00                	addi	s0,sp,304
     6a0:	c09f2433          	0xc09f2433
     6a4:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     6a8:	0000                	unimp
     6aa:	c400                	sw	s0,8(s0)
     6ac:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     6b0:	0000                	unimp
     6b2:	0100                	addi	s0,sp,128
     6b4:	5f00                	lw	s0,56(a4)
     6b6:	03c4                	addi	s1,sp,452
     6b8:	0000                	unimp
     6ba:	0000                	unimp
     6bc:	0000                	unimp
     6be:	03c8                	addi	a0,sp,452
     6c0:	0000                	unimp
     6c2:	0000                	unimp
     6c4:	0000                	unimp
     6c6:	000a                	c.slli	zero,0x2
     6c8:	0080                	addi	s0,sp,64
     6ca:	253c                	fld	fa5,72(a0)
     6cc:	007a                	c.slli	zero,0x1e
     6ce:	331a                	fld	ft6,416(sp)
     6d0:	9f24                	0x9f24
     6d2:	03c8                	addi	a0,sp,452
     6d4:	0000                	unimp
     6d6:	0000                	unimp
     6d8:	0000                	unimp
     6da:	03cc                	addi	a1,sp,452
     6dc:	0000                	unimp
     6de:	0000                	unimp
     6e0:	0000                	unimp
     6e2:	0001                	nop
     6e4:	445f 0004 0000      	0x4445f
     6ea:	0000                	unimp
     6ec:	4800                	lw	s0,16(s0)
     6ee:	0004                	0x4
     6f0:	0000                	unimp
     6f2:	0000                	unimp
     6f4:	0100                	addi	s0,sp,128
     6f6:	5f00                	lw	s0,56(a4)
     6f8:	0454                	addi	a3,sp,516
     6fa:	0000                	unimp
     6fc:	0000                	unimp
     6fe:	0000                	unimp
     700:	0458                	addi	a4,sp,516
     702:	0000                	unimp
     704:	0000                	unimp
     706:	0000                	unimp
     708:	0001                	nop
     70a:	005f 0000 0000      	0x5f
	...
     718:	0000                	unimp
     71a:	4000                	lw	s0,0(s0)
     71c:	0000                	unimp
     71e:	0000                	unimp
     720:	0000                	unimp
     722:	5000                	lw	s0,32(s0)
     724:	0000                	unimp
     726:	0000                	unimp
     728:	0000                	unimp
     72a:	0100                	addi	s0,sp,128
     72c:	5b00                	lw	s0,48(a4)
     72e:	01e0                	addi	s0,sp,204
     730:	0000                	unimp
     732:	0000                	unimp
     734:	0000                	unimp
     736:	032c                	addi	a1,sp,392
     738:	0000                	unimp
     73a:	0000                	unimp
     73c:	0000                	unimp
     73e:	0001                	nop
     740:	0003345b          	0x3345b
     744:	0000                	unimp
     746:	0000                	unimp
     748:	4f00                	lw	s0,24(a4)
     74a:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     74e:	0000                	unimp
     750:	0100                	addi	s0,sp,128
     752:	5b00                	lw	s0,48(a4)
     754:	0384                	addi	s1,sp,448
     756:	0000                	unimp
     758:	0000                	unimp
     75a:	0000                	unimp
     75c:	0394                	addi	a3,sp,448
     75e:	0000                	unimp
     760:	0000                	unimp
     762:	0000                	unimp
     764:	0001                	nop
     766:	0004445b          	0x4445b
     76a:	0000                	unimp
     76c:	0000                	unimp
     76e:	6000                	ld	s0,0(s0)
     770:	0004                	0x4
     772:	0000                	unimp
     774:	0000                	unimp
     776:	0100                	addi	s0,sp,128
     778:	5b00                	lw	s0,48(a4)
	...
     78a:	0040                	addi	s0,sp,4
     78c:	0000                	unimp
     78e:	0000                	unimp
     790:	0000                	unimp
     792:	0068                	addi	a0,sp,12
     794:	0000                	unimp
     796:	0000                	unimp
     798:	0000                	unimp
     79a:	0001                	nop
     79c:	9c5c                	0x9c5c
     79e:	0000                	unimp
     7a0:	0000                	unimp
     7a2:	0000                	unimp
     7a4:	a400                	fsd	fs0,8(s0)
     7a6:	0000                	unimp
     7a8:	0000                	unimp
     7aa:	0000                	unimp
     7ac:	0100                	addi	s0,sp,128
     7ae:	5c00                	lw	s0,56(s0)
     7b0:	00c0                	addi	s0,sp,68
     7b2:	0000                	unimp
     7b4:	0000                	unimp
     7b6:	0000                	unimp
     7b8:	00d8                	addi	a4,sp,68
     7ba:	0000                	unimp
     7bc:	0000                	unimp
     7be:	0000                	unimp
     7c0:	0001                	nop
     7c2:	005c                	addi	a5,sp,4
     7c4:	0001                	nop
     7c6:	0000                	unimp
     7c8:	0000                	unimp
     7ca:	7c00                	ld	s0,56(s0)
     7cc:	0001                	nop
     7ce:	0000                	unimp
     7d0:	0000                	unimp
     7d2:	0100                	addi	s0,sp,128
     7d4:	5c00                	lw	s0,56(s0)
     7d6:	01e0                	addi	s0,sp,204
     7d8:	0000                	unimp
     7da:	0000                	unimp
     7dc:	0000                	unimp
     7de:	01fc                	addi	a5,sp,204
     7e0:	0000                	unimp
     7e2:	0000                	unimp
     7e4:	0000                	unimp
     7e6:	0001                	nop
     7e8:	105c                	addi	a5,sp,36
     7ea:	0002                	c.slli64	zero
     7ec:	0000                	unimp
     7ee:	0000                	unimp
     7f0:	1c00                	addi	s0,sp,560
     7f2:	0002                	c.slli64	zero
     7f4:	0000                	unimp
     7f6:	0000                	unimp
     7f8:	0100                	addi	s0,sp,128
     7fa:	5c00                	lw	s0,56(s0)
     7fc:	0244                	addi	s1,sp,260
     7fe:	0000                	unimp
     800:	0000                	unimp
     802:	0000                	unimp
     804:	02f0                	addi	a2,sp,332
     806:	0000                	unimp
     808:	0000                	unimp
     80a:	0000                	unimp
     80c:	0001                	nop
     80e:	fc5c                	sd	a5,184(s0)
     810:	0002                	c.slli64	zero
     812:	0000                	unimp
     814:	0000                	unimp
     816:	0800                	addi	s0,sp,16
     818:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     81c:	0000                	unimp
     81e:	0100                	addi	s0,sp,128
     820:	5c00                	lw	s0,56(s0)
     822:	031c                	addi	a5,sp,384
     824:	0000                	unimp
     826:	0000                	unimp
     828:	0000                	unimp
     82a:	032c                	addi	a1,sp,392
     82c:	0000                	unimp
     82e:	0000                	unimp
     830:	0000                	unimp
     832:	0001                	nop
     834:	345c                	fld	fa5,168(s0)
     836:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     83a:	0000                	unimp
     83c:	4800                	lw	s0,16(s0)
     83e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     842:	0000                	unimp
     844:	0100                	addi	s0,sp,128
     846:	5c00                	lw	s0,56(s0)
     848:	0384                	addi	s1,sp,448
     84a:	0000                	unimp
     84c:	0000                	unimp
     84e:	0000                	unimp
     850:	0394                	addi	a3,sp,448
     852:	0000                	unimp
     854:	0000                	unimp
     856:	0000                	unimp
     858:	0001                	nop
     85a:	ac5c                	fsd	fa5,152(s0)
     85c:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     860:	0000                	unimp
     862:	b800                	fsd	fs0,48(s0)
     864:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     868:	0000                	unimp
     86a:	0100                	addi	s0,sp,128
     86c:	5c00                	lw	s0,56(s0)
     86e:	0444                	addi	s1,sp,516
     870:	0000                	unimp
     872:	0000                	unimp
     874:	0000                	unimp
     876:	044c                	addi	a1,sp,516
     878:	0000                	unimp
     87a:	0000                	unimp
     87c:	0000                	unimp
     87e:	0001                	nop
     880:	545c                	lw	a5,44(s0)
     882:	0004                	0x4
     884:	0000                	unimp
     886:	0000                	unimp
     888:	6000                	ld	s0,0(s0)
     88a:	0004                	0x4
     88c:	0000                	unimp
     88e:	0000                	unimp
     890:	0100                	addi	s0,sp,128
     892:	5c00                	lw	s0,56(s0)
	...
     8a4:	0040                	addi	s0,sp,4
     8a6:	0000                	unimp
     8a8:	0000                	unimp
     8aa:	0000                	unimp
     8ac:	0068                	addi	a0,sp,12
     8ae:	0000                	unimp
     8b0:	0000                	unimp
     8b2:	0000                	unimp
     8b4:	0001                	nop
     8b6:	9c5e                	add	s8,s8,s7
     8b8:	0000                	unimp
     8ba:	0000                	unimp
     8bc:	0000                	unimp
     8be:	a400                	fsd	fs0,8(s0)
     8c0:	0000                	unimp
     8c2:	0000                	unimp
     8c4:	0000                	unimp
     8c6:	0100                	addi	s0,sp,128
     8c8:	5e00                	lw	s0,56(a2)
     8ca:	00c0                	addi	s0,sp,68
     8cc:	0000                	unimp
     8ce:	0000                	unimp
     8d0:	0000                	unimp
     8d2:	00f0                	addi	a2,sp,76
     8d4:	0000                	unimp
     8d6:	0000                	unimp
     8d8:	0000                	unimp
     8da:	0001                	nop
     8dc:	f85e                	sd	s7,48(sp)
	...
     8e6:	0001                	nop
     8e8:	0000                	unimp
     8ea:	0000                	unimp
     8ec:	0100                	addi	s0,sp,128
     8ee:	5d00                	lw	s0,56(a0)
     8f0:	0100                	addi	s0,sp,128
     8f2:	0000                	unimp
     8f4:	0000                	unimp
     8f6:	0000                	unimp
     8f8:	0194                	addi	a3,sp,192
     8fa:	0000                	unimp
     8fc:	0000                	unimp
     8fe:	0000                	unimp
     900:	0001                	nop
     902:	ac5e                	fsd	fs7,24(sp)
     904:	0001                	nop
     906:	0000                	unimp
     908:	0000                	unimp
     90a:	fc00                	sd	s0,56(s0)
     90c:	0001                	nop
     90e:	0000                	unimp
     910:	0000                	unimp
     912:	0100                	addi	s0,sp,128
     914:	5e00                	lw	s0,56(a2)
     916:	0210                	addi	a2,sp,256
     918:	0000                	unimp
     91a:	0000                	unimp
     91c:	0000                	unimp
     91e:	0234                	addi	a3,sp,264
     920:	0000                	unimp
     922:	0000                	unimp
     924:	0000                	unimp
     926:	0001                	nop
     928:	3c5e                	fld	fs8,496(sp)
     92a:	0002                	c.slli64	zero
     92c:	0000                	unimp
     92e:	0000                	unimp
     930:	4400                	lw	s0,8(s0)
     932:	0002                	c.slli64	zero
     934:	0000                	unimp
     936:	0000                	unimp
     938:	0100                	addi	s0,sp,128
     93a:	5d00                	lw	s0,56(a0)
     93c:	0244                	addi	s1,sp,260
     93e:	0000                	unimp
     940:	0000                	unimp
     942:	0000                	unimp
     944:	0348                	addi	a0,sp,388
     946:	0000                	unimp
     948:	0000                	unimp
     94a:	0000                	unimp
     94c:	0001                	nop
     94e:	845e                	mv	s0,s7
     950:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     954:	0000                	unimp
     956:	9400                	0x9400
     958:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     95c:	0000                	unimp
     95e:	0100                	addi	s0,sp,128
     960:	5e00                	lw	s0,56(a2)
     962:	03ac                	addi	a1,sp,456
     964:	0000                	unimp
     966:	0000                	unimp
     968:	0000                	unimp
     96a:	03cc                	addi	a1,sp,452
     96c:	0000                	unimp
     96e:	0000                	unimp
     970:	0000                	unimp
     972:	0001                	nop
     974:	445e                	lw	s0,212(sp)
     976:	0004                	0x4
     978:	0000                	unimp
     97a:	0000                	unimp
     97c:	6000                	ld	s0,0(s0)
     97e:	0004                	0x4
     980:	0000                	unimp
     982:	0000                	unimp
     984:	0100                	addi	s0,sp,128
     986:	5e00                	lw	s0,56(a2)
	...
     998:	004c                	addi	a1,sp,4
     99a:	0000                	unimp
     99c:	0000                	unimp
     99e:	0000                	unimp
     9a0:	01b0                	addi	a2,sp,200
     9a2:	0000                	unimp
     9a4:	0000                	unimp
     9a6:	0000                	unimp
     9a8:	0001                	nop
     9aa:	c859                	beqz	s0,a40 <register_fini-0xf670>
     9ac:	0001                	nop
     9ae:	0000                	unimp
     9b0:	0000                	unimp
     9b2:	e000                	sd	s0,0(s0)
     9b4:	0001                	nop
     9b6:	0000                	unimp
     9b8:	0000                	unimp
     9ba:	0100                	addi	s0,sp,128
     9bc:	5900                	lw	s0,48(a0)
     9be:	01e8                	addi	a0,sp,204
     9c0:	0000                	unimp
     9c2:	0000                	unimp
     9c4:	0000                	unimp
     9c6:	025c                	addi	a5,sp,260
     9c8:	0000                	unimp
     9ca:	0000                	unimp
     9cc:	0000                	unimp
     9ce:	0001                	nop
     9d0:	6059                	c.lui	zero,0x16
     9d2:	0002                	c.slli64	zero
     9d4:	0000                	unimp
     9d6:	0000                	unimp
     9d8:	d400                	sw	s0,40(s0)
     9da:	0002                	c.slli64	zero
     9dc:	0000                	unimp
     9de:	0000                	unimp
     9e0:	0100                	addi	s0,sp,128
     9e2:	5b00                	lw	s0,48(a4)
     9e4:	0304                	addi	s1,sp,384
     9e6:	0000                	unimp
     9e8:	0000                	unimp
     9ea:	0000                	unimp
     9ec:	031c                	addi	a5,sp,384
     9ee:	0000                	unimp
     9f0:	0000                	unimp
     9f2:	0000                	unimp
     9f4:	0001                	nop
     9f6:	3859                	addiw	a6,a6,-10
     9f8:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     9fc:	0000                	unimp
     9fe:	4400                	lw	s0,8(s0)
     a00:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     a04:	0000                	unimp
     a06:	0100                	addi	s0,sp,128
     a08:	5900                	lw	s0,48(a0)
     a0a:	0344                	addi	s1,sp,388
     a0c:	0000                	unimp
     a0e:	0000                	unimp
     a10:	0000                	unimp
     a12:	0348                	addi	a0,sp,388
     a14:	0000                	unimp
     a16:	0000                	unimp
     a18:	0000                	unimp
     a1a:	0001                	nop
     a1c:	0003485b          	0x3485b
     a20:	0000                	unimp
     a22:	0000                	unimp
     a24:	d000                	sw	s0,32(s0)
     a26:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     a2a:	0000                	unimp
     a2c:	0100                	addi	s0,sp,128
     a2e:	5900                	lw	s0,48(a0)
     a30:	0410                	addi	a2,sp,512
     a32:	0000                	unimp
     a34:	0000                	unimp
     a36:	0000                	unimp
     a38:	0438                	addi	a4,sp,520
     a3a:	0000                	unimp
     a3c:	0000                	unimp
     a3e:	0000                	unimp
     a40:	0001                	nop
     a42:	4459                	li	s0,22
     a44:	0004                	0x4
     a46:	0000                	unimp
     a48:	0000                	unimp
     a4a:	4c00                	lw	s0,24(s0)
     a4c:	0004                	0x4
     a4e:	0000                	unimp
     a50:	0000                	unimp
     a52:	0100                	addi	s0,sp,128
     a54:	5b00                	lw	s0,48(a4)
     a56:	0454                	addi	a3,sp,516
     a58:	0000                	unimp
     a5a:	0000                	unimp
     a5c:	0000                	unimp
     a5e:	0460                	addi	s0,sp,524
     a60:	0000                	unimp
     a62:	0000                	unimp
     a64:	0000                	unimp
     a66:	0001                	nop
     a68:	0000005b          	0x5b
	...
     a78:	5400                	lw	s0,40(s0)
	...
     a82:	0001                	nop
     a84:	0000                	unimp
     a86:	0000                	unimp
     a88:	0100                	addi	s0,sp,128
     a8a:	5800                	lw	s0,48(s0)
     a8c:	0104                	addi	s1,sp,128
     a8e:	0000                	unimp
     a90:	0000                	unimp
     a92:	0000                	unimp
     a94:	0174                	addi	a3,sp,140
     a96:	0000                	unimp
     a98:	0000                	unimp
     a9a:	0000                	unimp
     a9c:	0001                	nop
     a9e:	845c                	0x845c
     aa0:	0001                	nop
     aa2:	0000                	unimp
     aa4:	0000                	unimp
     aa6:	a400                	fsd	fs0,8(s0)
     aa8:	0001                	nop
     aaa:	0000                	unimp
     aac:	0000                	unimp
     aae:	0200                	addi	s0,sp,256
     ab0:	3000                	fld	fs0,32(s0)
     ab2:	a49f 0001 0000      	0x1a49f
     ab8:	0000                	unimp
     aba:	ac00                	fsd	fs0,24(s0)
     abc:	0001                	nop
     abe:	0000                	unimp
     ac0:	0000                	unimp
     ac2:	0200                	addi	s0,sp,256
     ac4:	3100                	fld	fs0,32(a0)
     ac6:	ac9f 0001 0000      	0x1ac9f
     acc:	0000                	unimp
     ace:	c800                	sw	s0,16(s0)
     ad0:	0001                	nop
     ad2:	0000                	unimp
     ad4:	0000                	unimp
     ad6:	0400                	addi	s0,sp,512
     ad8:	0a00                	addi	s0,sp,272
     ada:	07ff                	0x7ff
     adc:	c89f 0001 0000      	0x1c89f
     ae2:	0000                	unimp
     ae4:	e000                	sd	s0,0(s0)
     ae6:	0001                	nop
     ae8:	0000                	unimp
     aea:	0000                	unimp
     aec:	0100                	addi	s0,sp,128
     aee:	5d00                	lw	s0,56(a0)
     af0:	01e8                	addi	a0,sp,204
     af2:	0000                	unimp
     af4:	0000                	unimp
     af6:	0000                	unimp
     af8:	025c                	addi	a5,sp,260
     afa:	0000                	unimp
     afc:	0000                	unimp
     afe:	0000                	unimp
     b00:	0001                	nop
     b02:	6058                	ld	a4,128(s0)
     b04:	0002                	c.slli64	zero
     b06:	0000                	unimp
     b08:	0000                	unimp
     b0a:	d400                	sw	s0,40(s0)
     b0c:	0002                	c.slli64	zero
     b0e:	0000                	unimp
     b10:	0000                	unimp
     b12:	0100                	addi	s0,sp,128
     b14:	5c00                	lw	s0,56(s0)
     b16:	02e4                	addi	s1,sp,332
     b18:	0000                	unimp
     b1a:	0000                	unimp
     b1c:	0000                	unimp
     b1e:	02f4                	addi	a3,sp,332
     b20:	0000                	unimp
     b22:	0000                	unimp
     b24:	0000                	unimp
     b26:	0002                	c.slli64	zero
     b28:	9f30                	0x9f30
     b2a:	02fc                	addi	a5,sp,332
     b2c:	0000                	unimp
     b2e:	0000                	unimp
     b30:	0000                	unimp
     b32:	031c                	addi	a5,sp,384
     b34:	0000                	unimp
     b36:	0000                	unimp
     b38:	0000                	unimp
     b3a:	0002                	c.slli64	zero
     b3c:	9f30                	0x9f30
     b3e:	031c                	addi	a5,sp,384
     b40:	0000                	unimp
     b42:	0000                	unimp
     b44:	0000                	unimp
     b46:	032c                	addi	a1,sp,392
     b48:	0000                	unimp
     b4a:	0000                	unimp
     b4c:	0000                	unimp
     b4e:	0004                	0x4
     b50:	ff0a                	sd	sp,440(sp)
     b52:	03349f07          	0x3349f07
     b56:	0000                	unimp
     b58:	0000                	unimp
     b5a:	0000                	unimp
     b5c:	0368                	addi	a0,sp,396
     b5e:	0000                	unimp
     b60:	0000                	unimp
     b62:	0000                	unimp
     b64:	0001                	nop
     b66:	7c58                	ld	a4,184(s0)
     b68:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     b6c:	0000                	unimp
     b6e:	8400                	0x8400
     b70:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     b74:	0000                	unimp
     b76:	0200                	addi	s0,sp,256
     b78:	3000                	fld	fs0,32(s0)
     b7a:	849f 0003 0000      	0x3849f
     b80:	0000                	unimp
     b82:	9000                	0x9000
     b84:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     b88:	0000                	unimp
     b8a:	0100                	addi	s0,sp,128
     b8c:	5800                	lw	s0,48(s0)
     b8e:	0394                	addi	a3,sp,448
     b90:	0000                	unimp
     b92:	0000                	unimp
     b94:	0000                	unimp
     b96:	03ac                	addi	a1,sp,456
     b98:	0000                	unimp
     b9a:	0000                	unimp
     b9c:	0000                	unimp
     b9e:	0001                	nop
     ba0:	ac58                	fsd	fa4,152(s0)
     ba2:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     ba6:	0000                	unimp
     ba8:	b800                	fsd	fs0,48(s0)
     baa:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     bae:	0000                	unimp
     bb0:	0100                	addi	s0,sp,128
     bb2:	5c00                	lw	s0,56(s0)
     bb4:	03b8                	addi	a4,sp,456
     bb6:	0000                	unimp
     bb8:	0000                	unimp
     bba:	0000                	unimp
     bbc:	03c0                	addi	s0,sp,452
     bbe:	0000                	unimp
     bc0:	0000                	unimp
     bc2:	0000                	unimp
     bc4:	0002                	c.slli64	zero
     bc6:	9f30                	0x9f30
     bc8:	03c8                	addi	a0,sp,452
     bca:	0000                	unimp
     bcc:	0000                	unimp
     bce:	0000                	unimp
     bd0:	03cc                	addi	a1,sp,452
     bd2:	0000                	unimp
     bd4:	0000                	unimp
     bd6:	0000                	unimp
     bd8:	0001                	nop
     bda:	dc5d                	beqz	s0,b98 <register_fini-0xf518>
     bdc:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     be0:	0000                	unimp
     be2:	0000                	unimp
     be4:	0004                	0x4
     be6:	0000                	unimp
     be8:	0000                	unimp
     bea:	0100                	addi	s0,sp,128
     bec:	5800                	lw	s0,48(s0)
     bee:	0400                	addi	s0,sp,512
     bf0:	0000                	unimp
     bf2:	0000                	unimp
     bf4:	0000                	unimp
     bf6:	0410                	addi	a2,sp,512
     bf8:	0000                	unimp
     bfa:	0000                	unimp
     bfc:	0000                	unimp
     bfe:	0004                	0x4
     c00:	ff0a                	sd	sp,440(sp)
     c02:	04449f07          	0x4449f07
     c06:	0000                	unimp
     c08:	0000                	unimp
     c0a:	0000                	unimp
     c0c:	044c                	addi	a1,sp,516
     c0e:	0000                	unimp
     c10:	0000                	unimp
     c12:	0000                	unimp
     c14:	0001                	nop
     c16:	545c                	lw	a5,44(s0)
     c18:	0004                	0x4
     c1a:	0000                	unimp
     c1c:	0000                	unimp
     c1e:	6000                	ld	s0,0(s0)
     c20:	0004                	0x4
     c22:	0000                	unimp
     c24:	0000                	unimp
     c26:	0100                	addi	s0,sp,128
     c28:	5c00                	lw	s0,56(s0)
     c2a:	0460                	addi	s0,sp,524
     c2c:	0000                	unimp
     c2e:	0000                	unimp
     c30:	0000                	unimp
     c32:	0468                	addi	a0,sp,524
     c34:	0000                	unimp
     c36:	0000                	unimp
     c38:	0000                	unimp
     c3a:	0001                	nop
     c3c:	0058                	addi	a4,sp,4
	...
     c4a:	0000                	unimp
     c4c:	6800                	ld	s0,16(s0)
     c4e:	0000                	unimp
     c50:	0000                	unimp
     c52:	0000                	unimp
     c54:	7000                	ld	s0,32(s0)
     c56:	0000                	unimp
     c58:	0000                	unimp
     c5a:	0000                	unimp
     c5c:	0100                	addi	s0,sp,128
     c5e:	5f00                	lw	s0,56(a4)
     c60:	0070                	addi	a2,sp,12
     c62:	0000                	unimp
     c64:	0000                	unimp
     c66:	0000                	unimp
     c68:	0074                	addi	a3,sp,12
     c6a:	0000                	unimp
     c6c:	0000                	unimp
     c6e:	0000                	unimp
     c70:	000e                	c.slli	zero,0x3
     c72:	007f                	0x7f
     c74:	ff11                	bnez	a4,b90 <register_fini-0xf520>
     c76:	ffff                	0xffff
     c78:	ffff                	0xffff
     c7a:	ffff                	0xffff
     c7c:	9f1a7fbf 00000074 	0x749f1a7fbf
     c84:	0000                	unimp
     c86:	0000                	unimp
     c88:	0088                	addi	a0,sp,64
     c8a:	0000                	unimp
     c8c:	0000                	unimp
     c8e:	0000                	unimp
     c90:	0015                	c.nop	5
     c92:	007f                	0x7f
     c94:	2531                	addiw	a0,a0,12
     c96:	ff10                	sd	a2,56(a4)
     c98:	ffff                	0xffff
     c9a:	ffff                	0xffff
     c9c:	ffff                	0xffff
     c9e:	7fdf 7f1a 3100      	0x31007f1a7fdf
     ca4:	211a                	fld	ft2,384(sp)
     ca6:	889f 0000 0000      	0x889f
     cac:	0000                	unimp
     cae:	9000                	0x9000
     cb0:	0000                	unimp
     cb2:	0000                	unimp
     cb4:	0000                	unimp
     cb6:	1300                	addi	s0,sp,416
     cb8:	7f00                	ld	s0,56(a4)
     cba:	3100                	fld	fs0,32(a0)
     cbc:	1025                	c.nop	-23
     cbe:	ffff                	0xffff
     cc0:	ffff                	0xffff
     cc2:	ffff                	0xffff
     cc4:	dfff                	0xdfff
     cc6:	1a7f                	0x1a7f
     cc8:	007d                	c.nop	31
     cca:	9f21                	addw	a4,a4,s0
     ccc:	0090                	addi	a2,sp,64
     cce:	0000                	unimp
     cd0:	0000                	unimp
     cd2:	0000                	unimp
     cd4:	0094                	addi	a3,sp,64
     cd6:	0000                	unimp
     cd8:	0000                	unimp
     cda:	0000                	unimp
     cdc:	0011                	c.nop	4
     cde:	007f                	0x7f
     ce0:	ff10                	sd	a2,56(a4)
     ce2:	ffff                	0xffff
     ce4:	ffff                	0xffff
     ce6:	ffff                	0xffff
     ce8:	7fdf 7d1a 2100      	0x21007d1a7fdf
     cee:	a49f 0000 0000      	0xa49f
     cf4:	0000                	unimp
     cf6:	c000                	sw	s0,0(s0)
     cf8:	0000                	unimp
     cfa:	0000                	unimp
     cfc:	0000                	unimp
     cfe:	0100                	addi	s0,sp,128
     d00:	5f00                	lw	s0,56(a4)
     d02:	00fc                	addi	a5,sp,76
     d04:	0000                	unimp
     d06:	0000                	unimp
     d08:	0000                	unimp
     d0a:	0100                	addi	s0,sp,128
     d0c:	0000                	unimp
     d0e:	0000                	unimp
     d10:	0000                	unimp
     d12:	0001                	nop
     d14:	145f 0001 0000      	0x1145f
     d1a:	0000                	unimp
     d1c:	1c00                	addi	s0,sp,560
     d1e:	0001                	nop
     d20:	0000                	unimp
     d22:	0000                	unimp
     d24:	0100                	addi	s0,sp,128
     d26:	5f00                	lw	s0,56(a4)
     d28:	0190                	addi	a2,sp,192
     d2a:	0000                	unimp
     d2c:	0000                	unimp
     d2e:	0000                	unimp
     d30:	01ac                	addi	a1,sp,200
     d32:	0000                	unimp
     d34:	0000                	unimp
     d36:	0000                	unimp
     d38:	0001                	nop
     d3a:	c85f 0001 0000      	0x1c85f
     d40:	0000                	unimp
     d42:	d400                	sw	s0,40(s0)
     d44:	0001                	nop
     d46:	0000                	unimp
     d48:	0000                	unimp
     d4a:	0800                	addi	s0,sp,16
     d4c:	7f00                	ld	s0,56(a4)
     d4e:	7e00                	ld	s0,56(a2)
     d50:	2200                	fld	fs0,0(a2)
     d52:	2531                	addiw	a0,a0,12
     d54:	d49f 0001 0000      	0x1d49f
     d5a:	0000                	unimp
     d5c:	d800                	sw	s0,48(s0)
     d5e:	0001                	nop
     d60:	0000                	unimp
     d62:	0000                	unimp
     d64:	0500                	addi	s0,sp,640
     d66:	7f00                	ld	s0,56(a4)
     d68:	3100                	fld	fs0,32(a0)
     d6a:	9f25                	addw	a4,a4,s1
     d6c:	01d8                	addi	a4,sp,196
     d6e:	0000                	unimp
     d70:	0000                	unimp
     d72:	0000                	unimp
     d74:	01e0                	addi	s0,sp,204
     d76:	0000                	unimp
     d78:	0000                	unimp
     d7a:	0000                	unimp
     d7c:	0080000f          	fence	unknown,i
     d80:	253c                	fld	fa5,72(a0)
     d82:	007a                	c.slli	zero,0x1e
     d84:	331a                	fld	ft6,416(sp)
     d86:	7e24                	ld	s1,120(a2)
     d88:	2200                	fld	fs0,0(a2)
     d8a:	2531                	addiw	a0,a0,12
     d8c:	fc9f 0001 0000      	0x1fc9f
     d92:	0000                	unimp
     d94:	0800                	addi	s0,sp,16
     d96:	0002                	c.slli64	zero
     d98:	0000                	unimp
     d9a:	0000                	unimp
     d9c:	0100                	addi	s0,sp,128
     d9e:	5f00                	lw	s0,56(a4)
     da0:	020c                	addi	a1,sp,256
     da2:	0000                	unimp
     da4:	0000                	unimp
     da6:	0000                	unimp
     da8:	0210                	addi	a2,sp,256
     daa:	0000                	unimp
     dac:	0000                	unimp
     dae:	0000                	unimp
     db0:	0001                	nop
     db2:	4062                	0x4062
     db4:	0002                	c.slli64	zero
     db6:	0000                	unimp
     db8:	0000                	unimp
     dba:	4400                	lw	s0,8(s0)
     dbc:	0002                	c.slli64	zero
     dbe:	0000                	unimp
     dc0:	0000                	unimp
     dc2:	0100                	addi	s0,sp,128
     dc4:	5f00                	lw	s0,56(a4)
     dc6:	0270                	addi	a2,sp,268
     dc8:	0000                	unimp
     dca:	0000                	unimp
     dcc:	0000                	unimp
     dce:	027c                	addi	a5,sp,268
     dd0:	0000                	unimp
     dd2:	0000                	unimp
     dd4:	0000                	unimp
     dd6:	0001                	nop
     dd8:	e85f 0002 0000      	0x2e85f
     dde:	0000                	unimp
     de0:	f000                	sd	s0,32(s0)
     de2:	0002                	c.slli64	zero
     de4:	0000                	unimp
     de6:	0000                	unimp
     de8:	0100                	addi	s0,sp,128
     dea:	5e00                	lw	s0,56(a2)
     dec:	0304                	addi	s1,sp,384
     dee:	0000                	unimp
     df0:	0000                	unimp
     df2:	0000                	unimp
     df4:	031c                	addi	a5,sp,384
     df6:	0000                	unimp
     df8:	0000                	unimp
     dfa:	0000                	unimp
     dfc:	0001                	nop
     dfe:	385d                	addiw	a6,a6,-9
     e00:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     e04:	0000                	unimp
     e06:	7400                	ld	s0,40(s0)
     e08:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     e0c:	0000                	unimp
     e0e:	0100                	addi	s0,sp,128
     e10:	6200                	ld	s0,0(a2)
     e12:	037c                	addi	a5,sp,396
     e14:	0000                	unimp
     e16:	0000                	unimp
     e18:	0000                	unimp
     e1a:	0384                	addi	s1,sp,448
     e1c:	0000                	unimp
     e1e:	0000                	unimp
     e20:	0000                	unimp
     e22:	0001                	nop
     e24:	845f 0003 0000      	0x3845f
     e2a:	0000                	unimp
     e2c:	a800                	fsd	fs0,16(s0)
     e2e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     e32:	0000                	unimp
     e34:	0100                	addi	s0,sp,128
     e36:	6200                	ld	s0,0(a2)
     e38:	03a8                	addi	a0,sp,456
     e3a:	0000                	unimp
     e3c:	0000                	unimp
     e3e:	0000                	unimp
     e40:	03ac                	addi	a1,sp,456
     e42:	0000                	unimp
     e44:	0000                	unimp
     e46:	0000                	unimp
     e48:	0001                	nop
     e4a:	c85f 0003 0000      	0x3c85f
     e50:	0000                	unimp
     e52:	cc00                	sw	s0,24(s0)
     e54:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     e58:	0000                	unimp
     e5a:	0800                	addi	s0,sp,16
     e5c:	7f00                	ld	s0,56(a4)
     e5e:	7e00                	ld	s0,56(a2)
     e60:	2200                	fld	fs0,0(a2)
     e62:	2531                	addiw	a0,a0,12
     e64:	d09f 0003 0000      	0x3d09f
     e6a:	0000                	unimp
     e6c:	d800                	sw	s0,48(s0)
     e6e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     e72:	0000                	unimp
     e74:	0100                	addi	s0,sp,128
     e76:	5f00                	lw	s0,56(a4)
     e78:	03d8                	addi	a4,sp,452
     e7a:	0000                	unimp
     e7c:	0000                	unimp
     e7e:	0000                	unimp
     e80:	03f4                	addi	a3,sp,460
     e82:	0000                	unimp
     e84:	0000                	unimp
     e86:	0000                	unimp
     e88:	000e                	c.slli	zero,0x3
     e8a:	007f                	0x7f
     e8c:	ff11                	bnez	a4,da8 <register_fini-0xf308>
     e8e:	ffff                	0xffff
     e90:	ffff                	0xffff
     e92:	ffff                	0xffff
     e94:	9f1a7fbf 000003f4 	0x3f49f1a7fbf
     e9c:	0000                	unimp
     e9e:	0000                	unimp
     ea0:	0408                	addi	a0,sp,512
     ea2:	0000                	unimp
     ea4:	0000                	unimp
     ea6:	0000                	unimp
     ea8:	0001                	nop
     eaa:	105f 0004 0000      	0x4105f
     eb0:	0000                	unimp
     eb2:	1800                	addi	s0,sp,48
     eb4:	0004                	0x4
     eb6:	0000                	unimp
     eb8:	0000                	unimp
     eba:	0100                	addi	s0,sp,128
     ebc:	5f00                	lw	s0,56(a4)
     ebe:	0460                	addi	s0,sp,524
     ec0:	0000                	unimp
     ec2:	0000                	unimp
     ec4:	0000                	unimp
     ec6:	0464                	addi	s1,sp,524
     ec8:	0000                	unimp
     eca:	0000                	unimp
     ecc:	0000                	unimp
     ece:	000e                	c.slli	zero,0x3
     ed0:	007f                	0x7f
     ed2:	ff11                	bnez	a4,dee <register_fini-0xf2c2>
     ed4:	ffff                	0xffff
     ed6:	ffff                	0xffff
     ed8:	ffff                	0xffff
     eda:	9f1a7fbf 00000000 	0x9f1a7fbf
	...
     eee:	0430                	addi	a2,sp,520
     ef0:	0000                	unimp
     ef2:	0000                	unimp
     ef4:	0000                	unimp
     ef6:	043c                	addi	a5,sp,520
     ef8:	0000                	unimp
     efa:	0000                	unimp
     efc:	0000                	unimp
     efe:	0008                	0x8
     f00:	007f                	0x7f
     f02:	007a                	c.slli	zero,0x1e
     f04:	f921                	bnez	a0,e54 <register_fini-0xf25c>
     f06:	9f2d                	addw	a4,a4,a1
     f08:	043c                	addi	a5,sp,520
     f0a:	0000                	unimp
     f0c:	0000                	unimp
     f0e:	0000                	unimp
     f10:	0444                	addi	s1,sp,516
     f12:	0000                	unimp
     f14:	0000                	unimp
     f16:	0000                	unimp
     f18:	0001                	nop
     f1a:	005a                	c.slli	zero,0x16
	...
     f28:	0000                	unimp
     f2a:	5000                	lw	s0,32(s0)
     f2c:	0000                	unimp
     f2e:	0000                	unimp
     f30:	0000                	unimp
     f32:	6000                	ld	s0,0(s0)
     f34:	0000                	unimp
     f36:	0000                	unimp
     f38:	0000                	unimp
     f3a:	0100                	addi	s0,sp,128
     f3c:	5d00                	lw	s0,56(a0)
     f3e:	0060                	addi	s0,sp,12
     f40:	0000                	unimp
     f42:	0000                	unimp
     f44:	0000                	unimp
     f46:	0068                	addi	a0,sp,12
     f48:	0000                	unimp
     f4a:	0000                	unimp
     f4c:	0000                	unimp
     f4e:	7f7d0003          	lb	zero,2039(s10)
     f52:	9c9f 0000 0000      	0x9c9f
     f58:	0000                	unimp
     f5a:	a000                	fsd	fs0,0(s0)
     f5c:	0000                	unimp
     f5e:	0000                	unimp
     f60:	0000                	unimp
     f62:	0300                	addi	s0,sp,384
     f64:	7d00                	ld	s0,56(a0)
     f66:	9f7f                	0x9f7f
     f68:	00a0                	addi	s0,sp,72
     f6a:	0000                	unimp
     f6c:	0000                	unimp
     f6e:	0000                	unimp
     f70:	00a4                	addi	s1,sp,72
     f72:	0000                	unimp
     f74:	0000                	unimp
     f76:	0000                	unimp
     f78:	007c0007          	0x7c0007
     f7c:	7820                	ld	s0,112(s0)
     f7e:	2200                	fld	fs0,0(a2)
     f80:	c09f 0000 0000      	0xc09f
     f86:	0000                	unimp
     f88:	c400                	sw	s0,8(s0)
     f8a:	0000                	unimp
     f8c:	0000                	unimp
     f8e:	0000                	unimp
     f90:	0100                	addi	s0,sp,128
     f92:	5d00                	lw	s0,56(a0)
     f94:	00c4                	addi	s1,sp,68
     f96:	0000                	unimp
     f98:	0000                	unimp
     f9a:	0000                	unimp
     f9c:	00ec                	addi	a1,sp,76
     f9e:	0000                	unimp
     fa0:	0000                	unimp
     fa2:	0000                	unimp
     fa4:	0001                	nop
     fa6:	0001005b          	0x1005b
     faa:	0000                	unimp
     fac:	0000                	unimp
     fae:	0400                	addi	s0,sp,512
     fb0:	0001                	nop
     fb2:	0000                	unimp
     fb4:	0000                	unimp
     fb6:	0100                	addi	s0,sp,128
     fb8:	5d00                	lw	s0,56(a0)
     fba:	0104                	addi	s1,sp,128
     fbc:	0000                	unimp
     fbe:	0000                	unimp
     fc0:	0000                	unimp
     fc2:	010c                	addi	a1,sp,128
     fc4:	0000                	unimp
     fc6:	0000                	unimp
     fc8:	0000                	unimp
     fca:	0004                	0x4
     fcc:	007d                	c.nop	31
     fce:	9f1f 010c 0000      	0x10c9f1f
     fd4:	0000                	unimp
     fd6:	0000                	unimp
     fd8:	0114                	addi	a3,sp,128
     fda:	0000                	unimp
     fdc:	0000                	unimp
     fde:	0000                	unimp
     fe0:	0004                	0x4
     fe2:	007d                	c.nop	31
     fe4:	9f20                	0x9f20
     fe6:	011c                	addi	a5,sp,128
     fe8:	0000                	unimp
     fea:	0000                	unimp
     fec:	0000                	unimp
     fee:	0128                	addi	a0,sp,136
     ff0:	0000                	unimp
     ff2:	0000                	unimp
     ff4:	0000                	unimp
     ff6:	0004                	0x4
     ff8:	007d                	c.nop	31
     ffa:	9f20                	0x9f20
     ffc:	0128                	addi	a0,sp,136
     ffe:	0000                	unimp
    1000:	0000                	unimp
    1002:	0000                	unimp
    1004:	012c                	addi	a1,sp,136
    1006:	0000                	unimp
    1008:	0000                	unimp
    100a:	0000                	unimp
    100c:	00780007          	0x780007
    1010:	007c                	addi	a5,sp,12
    1012:	201c                	fld	fa5,0(s0)
    1014:	2c9f 0001 0000      	0x12c9f
    101a:	0000                	unimp
    101c:	4400                	lw	s0,8(s0)
    101e:	0001                	nop
    1020:	0000                	unimp
    1022:	0000                	unimp
    1024:	0100                	addi	s0,sp,128
    1026:	5d00                	lw	s0,56(a0)
    1028:	0158                	addi	a4,sp,132
    102a:	0000                	unimp
    102c:	0000                	unimp
    102e:	0000                	unimp
    1030:	016c                	addi	a1,sp,140
    1032:	0000                	unimp
    1034:	0000                	unimp
    1036:	0000                	unimp
    1038:	0004                	0x4
    103a:	007d                	c.nop	31
    103c:	9f1f 016c 0000      	0x16c9f1f
    1042:	0000                	unimp
    1044:	0000                	unimp
    1046:	0174                	addi	a3,sp,140
    1048:	0000                	unimp
    104a:	0000                	unimp
    104c:	0000                	unimp
    104e:	0006                	c.slli	zero,0x1
    1050:	007c                	addi	a5,sp,12
    1052:	0078                	addi	a4,sp,12
    1054:	9f1c                	0x9f1c
    1056:	0174                	addi	a3,sp,140
    1058:	0000                	unimp
    105a:	0000                	unimp
    105c:	0000                	unimp
    105e:	0178                	addi	a4,sp,140
    1060:	0000                	unimp
    1062:	0000                	unimp
    1064:	0000                	unimp
    1066:	0001                	nop
    1068:	785d                	lui	a6,0xffff7
    106a:	0001                	nop
    106c:	0000                	unimp
    106e:	0000                	unimp
    1070:	b000                	fsd	fs0,32(s0)
    1072:	0001                	nop
    1074:	0000                	unimp
    1076:	0000                	unimp
    1078:	0100                	addi	s0,sp,128
    107a:	5b00                	lw	s0,48(a4)
    107c:	01c8                	addi	a0,sp,196
    107e:	0000                	unimp
    1080:	0000                	unimp
    1082:	0000                	unimp
    1084:	01e0                	addi	s0,sp,204
    1086:	0000                	unimp
    1088:	0000                	unimp
    108a:	0000                	unimp
    108c:	0001                	nop
    108e:	0003ac5b          	0x3ac5b
    1092:	0000                	unimp
    1094:	0000                	unimp
    1096:	b800                	fsd	fs0,48(s0)
    1098:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    109c:	0000                	unimp
    109e:	0400                	addi	s0,sp,512
    10a0:	7d00                	ld	s0,56(a0)
    10a2:	1f00                	addi	s0,sp,944
    10a4:	b89f 0003 0000      	0x3b89f
    10aa:	0000                	unimp
    10ac:	c000                	sw	s0,0(s0)
    10ae:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    10b2:	0000                	unimp
    10b4:	0100                	addi	s0,sp,128
    10b6:	5b00                	lw	s0,48(a4)
    10b8:	03c8                	addi	a0,sp,452
    10ba:	0000                	unimp
    10bc:	0000                	unimp
    10be:	0000                	unimp
    10c0:	03cc                	addi	a1,sp,452
    10c2:	0000                	unimp
    10c4:	0000                	unimp
    10c6:	0000                	unimp
    10c8:	0001                	nop
    10ca:	0000005b          	0x5b
	...
    10da:	e400                	sd	s0,8(s0)
    10dc:	0001                	nop
    10de:	0000                	unimp
    10e0:	0000                	unimp
    10e2:	f400                	sd	s0,40(s0)
    10e4:	0001                	nop
    10e6:	0000                	unimp
    10e8:	0000                	unimp
    10ea:	0100                	addi	s0,sp,128
    10ec:	5d00                	lw	s0,56(a0)
    10ee:	01f4                	addi	a3,sp,204
    10f0:	0000                	unimp
    10f2:	0000                	unimp
    10f4:	0000                	unimp
    10f6:	01fc                	addi	a5,sp,204
    10f8:	0000                	unimp
    10fa:	0000                	unimp
    10fc:	0000                	unimp
    10fe:	7f7d0003          	lb	zero,2039(s10)
    1102:	109f 0002 0000      	0x2109f
    1108:	0000                	unimp
    110a:	1400                	addi	s0,sp,544
    110c:	0002                	c.slli64	zero
    110e:	0000                	unimp
    1110:	0000                	unimp
    1112:	0300                	addi	s0,sp,384
    1114:	7d00                	ld	s0,56(a0)
    1116:	9f7f                	0x9f7f
    1118:	0214                	addi	a3,sp,256
    111a:	0000                	unimp
    111c:	0000                	unimp
    111e:	0000                	unimp
    1120:	0218                	addi	a4,sp,256
    1122:	0000                	unimp
    1124:	0000                	unimp
    1126:	0000                	unimp
    1128:	007c0007          	0x7c0007
    112c:	7820                	ld	s0,112(s0)
    112e:	2200                	fld	fs0,0(a2)
    1130:	189f 0002 0000      	0x2189f
    1136:	0000                	unimp
    1138:	3000                	fld	fs0,32(s0)
    113a:	0002                	c.slli64	zero
    113c:	0000                	unimp
    113e:	0000                	unimp
    1140:	0100                	addi	s0,sp,128
    1142:	5a00                	lw	s0,48(a2)
    1144:	0244                	addi	s1,sp,260
    1146:	0000                	unimp
    1148:	0000                	unimp
    114a:	0000                	unimp
    114c:	0248                	addi	a0,sp,260
    114e:	0000                	unimp
    1150:	0000                	unimp
    1152:	0000                	unimp
    1154:	0001                	nop
    1156:	485d                	li	a6,23
    1158:	0002                	c.slli64	zero
    115a:	0000                	unimp
    115c:	0000                	unimp
    115e:	5c00                	lw	s0,56(s0)
    1160:	0002                	c.slli64	zero
    1162:	0000                	unimp
    1164:	0000                	unimp
    1166:	0100                	addi	s0,sp,128
    1168:	5a00                	lw	s0,48(a2)
    116a:	025c                	addi	a5,sp,260
    116c:	0000                	unimp
    116e:	0000                	unimp
    1170:	0000                	unimp
    1172:	0260                	addi	s0,sp,268
    1174:	0000                	unimp
    1176:	0000                	unimp
    1178:	0000                	unimp
    117a:	0001                	nop
    117c:	605d                	c.lui	zero,0x17
    117e:	0002                	c.slli64	zero
    1180:	0000                	unimp
    1182:	0000                	unimp
    1184:	6800                	ld	s0,16(s0)
    1186:	0002                	c.slli64	zero
    1188:	0000                	unimp
    118a:	0000                	unimp
    118c:	0400                	addi	s0,sp,512
    118e:	7d00                	ld	s0,56(a0)
    1190:	1f00                	addi	s0,sp,944
    1192:	689f 0002 0000      	0x2689f
    1198:	0000                	unimp
    119a:	7000                	ld	s0,32(s0)
    119c:	0002                	c.slli64	zero
    119e:	0000                	unimp
    11a0:	0000                	unimp
    11a2:	0400                	addi	s0,sp,512
    11a4:	7d00                	ld	s0,56(a0)
    11a6:	2000                	fld	fs0,0(s0)
    11a8:	7c9f 0002 0000      	0x27c9f
    11ae:	0000                	unimp
    11b0:	8800                	0x8800
    11b2:	0002                	c.slli64	zero
    11b4:	0000                	unimp
    11b6:	0000                	unimp
    11b8:	0400                	addi	s0,sp,512
    11ba:	7d00                	ld	s0,56(a0)
    11bc:	2000                	fld	fs0,0(s0)
    11be:	889f 0002 0000      	0x2889f
    11c4:	0000                	unimp
    11c6:	8c00                	0x8c00
    11c8:	0002                	c.slli64	zero
    11ca:	0000                	unimp
    11cc:	0000                	unimp
    11ce:	0700                	addi	s0,sp,896
    11d0:	7800                	ld	s0,48(s0)
    11d2:	7c00                	ld	s0,56(s0)
    11d4:	1c00                	addi	s0,sp,560
    11d6:	9f20                	0x9f20
    11d8:	028c                	addi	a1,sp,320
    11da:	0000                	unimp
    11dc:	0000                	unimp
    11de:	0000                	unimp
    11e0:	02a4                	addi	s1,sp,328
    11e2:	0000                	unimp
    11e4:	0000                	unimp
    11e6:	0000                	unimp
    11e8:	0001                	nop
    11ea:	b85d                	j	aa0 <register_fini-0xf610>
    11ec:	0002                	c.slli64	zero
    11ee:	0000                	unimp
    11f0:	0000                	unimp
    11f2:	cc00                	sw	s0,24(s0)
    11f4:	0002                	c.slli64	zero
    11f6:	0000                	unimp
    11f8:	0000                	unimp
    11fa:	0400                	addi	s0,sp,512
    11fc:	7d00                	ld	s0,56(a0)
    11fe:	1f00                	addi	s0,sp,944
    1200:	cc9f 0002 0000      	0x2cc9f
    1206:	0000                	unimp
    1208:	d400                	sw	s0,40(s0)
    120a:	0002                	c.slli64	zero
    120c:	0000                	unimp
    120e:	0000                	unimp
    1210:	0600                	addi	s0,sp,768
    1212:	7c00                	ld	s0,56(s0)
    1214:	7800                	ld	s0,48(s0)
    1216:	1c00                	addi	s0,sp,560
    1218:	d49f 0002 0000      	0x2d49f
    121e:	0000                	unimp
    1220:	d800                	sw	s0,48(s0)
    1222:	0002                	c.slli64	zero
    1224:	0000                	unimp
    1226:	0000                	unimp
    1228:	0100                	addi	s0,sp,128
    122a:	5d00                	lw	s0,56(a0)
    122c:	02d8                	addi	a4,sp,324
    122e:	0000                	unimp
    1230:	0000                	unimp
    1232:	0000                	unimp
    1234:	032c                	addi	a1,sp,392
    1236:	0000                	unimp
    1238:	0000                	unimp
    123a:	0000                	unimp
    123c:	0001                	nop
    123e:	345a                	fld	fs0,432(sp)
    1240:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1244:	0000                	unimp
    1246:	4800                	lw	s0,16(s0)
    1248:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    124c:	0000                	unimp
    124e:	0100                	addi	s0,sp,128
    1250:	5a00                	lw	s0,48(a2)
    1252:	0384                	addi	s1,sp,448
    1254:	0000                	unimp
    1256:	0000                	unimp
    1258:	0000                	unimp
    125a:	0394                	addi	a3,sp,448
    125c:	0000                	unimp
    125e:	0000                	unimp
    1260:	0000                	unimp
    1262:	0001                	nop
    1264:	445a                	lw	s0,148(sp)
    1266:	0004                	0x4
    1268:	0000                	unimp
    126a:	0000                	unimp
    126c:	4c00                	lw	s0,24(s0)
    126e:	0004                	0x4
    1270:	0000                	unimp
    1272:	0000                	unimp
    1274:	0400                	addi	s0,sp,512
    1276:	7d00                	ld	s0,56(a0)
    1278:	1f00                	addi	s0,sp,944
    127a:	009f 0000 0000      	0x9f
	...
    1288:	0000                	unimp
    128a:	5000                	lw	s0,32(s0)
    128c:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1290:	0000                	unimp
    1292:	5400                	lw	s0,40(s0)
    1294:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1298:	0000                	unimp
    129a:	0100                	addi	s0,sp,128
    129c:	5a00                	lw	s0,48(a2)
    129e:	0354                	addi	a3,sp,388
    12a0:	0000                	unimp
    12a2:	0000                	unimp
    12a4:	0000                	unimp
    12a6:	0364                	addi	s1,sp,396
    12a8:	0000                	unimp
    12aa:	0000                	unimp
    12ac:	0000                	unimp
    12ae:	0001                	nop
    12b0:	645f 0003 0000      	0x3645f
    12b6:	0000                	unimp
    12b8:	7000                	ld	s0,32(s0)
    12ba:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    12be:	0000                	unimp
    12c0:	0100                	addi	s0,sp,128
    12c2:	5a00                	lw	s0,48(a2)
    12c4:	0394                	addi	a3,sp,448
    12c6:	0000                	unimp
    12c8:	0000                	unimp
    12ca:	0000                	unimp
    12cc:	039c                	addi	a5,sp,448
    12ce:	0000                	unimp
    12d0:	0000                	unimp
    12d2:	0000                	unimp
    12d4:	0001                	nop
    12d6:	9c5f 0003 0000      	0x39c5f
    12dc:	0000                	unimp
    12de:	ac00                	fsd	fs0,24(s0)
    12e0:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    12e4:	0000                	unimp
    12e6:	0300                	addi	s0,sp,384
    12e8:	7a00                	ld	s0,48(a2)
    12ea:	9f78                	0x9f78
	...
    1304:	005c                	addi	a5,sp,4
    1306:	0000                	unimp
    1308:	0000                	unimp
    130a:	0000                	unimp
    130c:	0001                	nop
    130e:	5c5a                	lw	s8,180(sp)
    1310:	0000                	unimp
    1312:	0000                	unimp
    1314:	0000                	unimp
    1316:	d400                	sw	s0,40(s0)
    1318:	0000                	unimp
    131a:	0000                	unimp
    131c:	0000                	unimp
    131e:	0600                	addi	s0,sp,768
    1320:	f300                	sd	s0,32(a4)
    1322:	2d0af503          	0x2d0af503
    1326:	d49f 0000 0000      	0xd49f
    132c:	0000                	unimp
    132e:	dc00                	sw	s0,56(s0)
    1330:	0000                	unimp
    1332:	0000                	unimp
    1334:	0000                	unimp
    1336:	0100                	addi	s0,sp,128
    1338:	5a00                	lw	s0,48(a2)
    133a:	00dc                	addi	a5,sp,68
    133c:	0000                	unimp
    133e:	0000                	unimp
    1340:	0000                	unimp
    1342:	00f8                	addi	a4,sp,76
    1344:	0000                	unimp
    1346:	0000                	unimp
    1348:	0000                	unimp
    134a:	0006                	c.slli	zero,0x1
    134c:	0af503f3          	0xaf503f3
    1350:	9f2d                	addw	a4,a4,a1
    1352:	00f8                	addi	a4,sp,76
    1354:	0000                	unimp
    1356:	0000                	unimp
    1358:	0000                	unimp
    135a:	0118                	addi	a4,sp,128
    135c:	0000                	unimp
    135e:	0000                	unimp
    1360:	0000                	unimp
    1362:	0001                	nop
    1364:	185a                	slli	a6,a6,0x36
    1366:	0001                	nop
    1368:	0000                	unimp
    136a:	0000                	unimp
    136c:	5400                	lw	s0,40(s0)
    136e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1372:	0000                	unimp
    1374:	0600                	addi	s0,sp,768
    1376:	f300                	sd	s0,32(a4)
    1378:	2d0af503          	0x2d0af503
    137c:	009f 0000 0000      	0x9f
	...
    1392:	0000                	unimp
    1394:	5c00                	lw	s0,56(s0)
    1396:	0000                	unimp
    1398:	0000                	unimp
    139a:	0000                	unimp
    139c:	0100                	addi	s0,sp,128
    139e:	5b00                	lw	s0,48(a4)
    13a0:	005c                	addi	a5,sp,4
    13a2:	0000                	unimp
    13a4:	0000                	unimp
    13a6:	0000                	unimp
    13a8:	0078                	addi	a4,sp,12
    13aa:	0000                	unimp
    13ac:	0000                	unimp
    13ae:	0000                	unimp
    13b0:	0001                	nop
    13b2:	7864                	ld	s1,240(s0)
    13b4:	0000                	unimp
    13b6:	0000                	unimp
    13b8:	0000                	unimp
    13ba:	d400                	sw	s0,40(s0)
    13bc:	0000                	unimp
    13be:	0000                	unimp
    13c0:	0000                	unimp
    13c2:	0600                	addi	s0,sp,768
    13c4:	f300                	sd	s0,32(a4)
    13c6:	2d0bf503          	0x2d0bf503
    13ca:	d49f 0000 0000      	0xd49f
    13d0:	0000                	unimp
    13d2:	df00                	sw	s0,56(a4)
    13d4:	0000                	unimp
    13d6:	0000                	unimp
    13d8:	0000                	unimp
    13da:	0100                	addi	s0,sp,128
    13dc:	5b00                	lw	s0,48(a4)
    13de:	00df 0000 0000      	0xdf
    13e4:	0000                	unimp
    13e6:	00f8                	addi	a4,sp,76
    13e8:	0000                	unimp
    13ea:	0000                	unimp
    13ec:	0000                	unimp
    13ee:	0001                	nop
    13f0:	f864                	sd	s1,240(s0)
    13f2:	0000                	unimp
    13f4:	0000                	unimp
    13f6:	0000                	unimp
    13f8:	1800                	addi	s0,sp,48
    13fa:	0001                	nop
    13fc:	0000                	unimp
    13fe:	0000                	unimp
    1400:	0100                	addi	s0,sp,128
    1402:	5b00                	lw	s0,48(a4)
    1404:	0118                	addi	a4,sp,128
    1406:	0000                	unimp
    1408:	0000                	unimp
    140a:	0000                	unimp
    140c:	0354                	addi	a3,sp,388
    140e:	0000                	unimp
    1410:	0000                	unimp
    1412:	0000                	unimp
    1414:	0006                	c.slli	zero,0x1
    1416:	0bf503f3          	0xbf503f3
    141a:	9f2d                	addw	a4,a4,a1
	...
    1434:	0060                	addi	s0,sp,12
    1436:	0000                	unimp
    1438:	0000                	unimp
    143a:	0000                	unimp
    143c:	0002                	c.slli64	zero
    143e:	9f30                	0x9f30
    1440:	00d4                	addi	a3,sp,68
    1442:	0000                	unimp
    1444:	0000                	unimp
    1446:	0000                	unimp
    1448:	0118                	addi	a4,sp,128
    144a:	0000                	unimp
    144c:	0000                	unimp
    144e:	0000                	unimp
    1450:	0002                	c.slli64	zero
    1452:	9f30                	0x9f30
	...
    1464:	005c                	addi	a5,sp,4
    1466:	0000                	unimp
    1468:	0000                	unimp
    146a:	0000                	unimp
    146c:	0060                	addi	s0,sp,12
    146e:	0000                	unimp
    1470:	0000                	unimp
    1472:	0000                	unimp
    1474:	0002                	c.slli64	zero
    1476:	9f30                	0x9f30
    1478:	0060                	addi	s0,sp,12
    147a:	0000                	unimp
    147c:	0000                	unimp
    147e:	0000                	unimp
    1480:	00d4                	addi	a3,sp,68
    1482:	0000                	unimp
    1484:	0000                	unimp
    1486:	0000                	unimp
    1488:	0001                	nop
    148a:	1865                	addi	a6,a6,-7
    148c:	0001                	nop
    148e:	0000                	unimp
    1490:	0000                	unimp
    1492:	4c00                	lw	s0,24(s0)
    1494:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1498:	0000                	unimp
    149a:	0100                	addi	s0,sp,128
    149c:	6500                	ld	s0,8(a0)
	...
    14ae:	0038                	addi	a4,sp,8
    14b0:	0000                	unimp
    14b2:	0000                	unimp
    14b4:	0000                	unimp
    14b6:	0340                	addi	s0,sp,388
    14b8:	0000                	unimp
    14ba:	0000                	unimp
    14bc:	0000                	unimp
    14be:	0006                	c.slli	zero,0x1
    14c0:	0082                	c.slli64	ra
    14c2:	ff08                	sd	a0,56(a4)
    14c4:	9f1a                	add	t5,t5,t1
	...
    14d6:	0034                	addi	a3,sp,8
    14d8:	0000                	unimp
    14da:	0000                	unimp
    14dc:	0000                	unimp
    14de:	0044                	addi	s1,sp,4
    14e0:	0000                	unimp
    14e2:	0000                	unimp
    14e4:	0000                	unimp
    14e6:	007f0007          	0x7f0007
    14ea:	ff0a                	sd	sp,440(sp)
    14ec:	449f1a07          	0x449f1a07
    14f0:	0000                	unimp
    14f2:	0000                	unimp
    14f4:	0000                	unimp
    14f6:	5c00                	lw	s0,56(s0)
    14f8:	0000                	unimp
    14fa:	0000                	unimp
    14fc:	0000                	unimp
    14fe:	0a00                	addi	s0,sp,272
    1500:	7a00                	ld	s0,48(a2)
    1502:	0800                	addi	s0,sp,16
    1504:	2534                	fld	fa3,72(a0)
    1506:	ff0a                	sd	sp,440(sp)
    1508:	5c9f1a07          	0x5c9f1a07
    150c:	0000                	unimp
    150e:	0000                	unimp
    1510:	0000                	unimp
    1512:	a000                	fsd	fs0,0(s0)
    1514:	0000                	unimp
    1516:	0000                	unimp
    1518:	0000                	unimp
    151a:	0100                	addi	s0,sp,128
    151c:	6300                	ld	s0,0(a4)
    151e:	00d4                	addi	a3,sp,68
    1520:	0000                	unimp
    1522:	0000                	unimp
    1524:	0000                	unimp
    1526:	00df 0000 0000      	0xdf
    152c:	0000                	unimp
    152e:	007f0007          	0x7f0007
    1532:	ff0a                	sd	sp,440(sp)
    1534:	f89f1a07          	0xf89f1a07
    1538:	0000                	unimp
    153a:	0000                	unimp
    153c:	0000                	unimp
    153e:	0c00                	addi	s0,sp,528
    1540:	0001                	nop
    1542:	0000                	unimp
    1544:	0000                	unimp
    1546:	0a00                	addi	s0,sp,272
    1548:	7a00                	ld	s0,48(a2)
    154a:	0800                	addi	s0,sp,16
    154c:	2534                	fld	fa3,72(a0)
    154e:	ff0a                	sd	sp,440(sp)
    1550:	0c9f1a07          	0xc9f1a07
    1554:	0001                	nop
    1556:	0000                	unimp
    1558:	0000                	unimp
    155a:	1800                	addi	s0,sp,48
    155c:	0001                	nop
    155e:	0000                	unimp
    1560:	0000                	unimp
    1562:	0700                	addi	s0,sp,896
    1564:	7f00                	ld	s0,56(a4)
    1566:	0a00                	addi	s0,sp,272
    1568:	07ff                	0x7ff
    156a:	9f1a                	add	t5,t5,t1
    156c:	0118                	addi	a4,sp,128
    156e:	0000                	unimp
    1570:	0000                	unimp
    1572:	0000                	unimp
    1574:	015c                	addi	a5,sp,132
    1576:	0000                	unimp
    1578:	0000                	unimp
    157a:	0000                	unimp
    157c:	0001                	nop
    157e:	00000063          	beqz	zero,157e <register_fini-0xeb32>
	...
    158e:	3400                	fld	fs0,40(s0)
    1590:	0000                	unimp
    1592:	0000                	unimp
    1594:	0000                	unimp
    1596:	4800                	lw	s0,16(s0)
    1598:	0000                	unimp
    159a:	0000                	unimp
    159c:	0000                	unimp
    159e:	0100                	addi	s0,sp,128
    15a0:	5900                	lw	s0,48(a0)
    15a2:	0048                	addi	a0,sp,4
    15a4:	0000                	unimp
    15a6:	0000                	unimp
    15a8:	0000                	unimp
    15aa:	0050                	addi	a2,sp,4
    15ac:	0000                	unimp
    15ae:	0000                	unimp
    15b0:	0000                	unimp
    15b2:	0008                	0x8
    15b4:	0079                	c.nop	30
    15b6:	0840                	addi	s0,sp,20
    15b8:	2430                	fld	fa2,72(s0)
    15ba:	9f21                	addw	a4,a4,s0
    15bc:	0050                	addi	a2,sp,4
    15be:	0000                	unimp
    15c0:	0000                	unimp
    15c2:	0000                	unimp
    15c4:	0058                	addi	a4,sp,4
    15c6:	0000                	unimp
    15c8:	0000                	unimp
    15ca:	0000                	unimp
    15cc:	000c                	0xc
    15ce:	007a                	c.slli	zero,0x1e
    15d0:	243c                	fld	fa5,72(s0)
    15d2:	253c                	fld	fa5,72(a0)
    15d4:	0840                	addi	s0,sp,20
    15d6:	2430                	fld	fa2,72(s0)
    15d8:	9f21                	addw	a4,a4,s0
    15da:	0058                	addi	a4,sp,4
    15dc:	0000                	unimp
    15de:	0000                	unimp
    15e0:	0000                	unimp
    15e2:	0170                	addi	a2,sp,140
    15e4:	0000                	unimp
    15e6:	0000                	unimp
    15e8:	0000                	unimp
    15ea:	0001                	nop
    15ec:	6c59                	lui	s8,0x16
    15ee:	0002                	c.slli64	zero
    15f0:	0000                	unimp
    15f2:	0000                	unimp
    15f4:	9000                	0x9000
    15f6:	0002                	c.slli64	zero
    15f8:	0000                	unimp
    15fa:	0000                	unimp
    15fc:	0100                	addi	s0,sp,128
    15fe:	5900                	lw	s0,48(a0)
    1600:	029c                	addi	a5,sp,320
    1602:	0000                	unimp
    1604:	0000                	unimp
    1606:	0000                	unimp
    1608:	02a4                	addi	s1,sp,328
    160a:	0000                	unimp
    160c:	0000                	unimp
    160e:	0000                	unimp
    1610:	0001                	nop
    1612:	0459                	addi	s0,s0,22
    1614:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1618:	0000                	unimp
    161a:	1400                	addi	s0,sp,544
    161c:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1620:	0000                	unimp
    1622:	0100                	addi	s0,sp,128
    1624:	5900                	lw	s0,48(a0)
	...
    1636:	0098                	addi	a4,sp,64
    1638:	0000                	unimp
    163a:	0000                	unimp
    163c:	0000                	unimp
    163e:	009c                	addi	a5,sp,64
    1640:	0000                	unimp
    1642:	0000                	unimp
    1644:	0000                	unimp
    1646:	0002                	c.slli64	zero
    1648:	9f30                	0x9f30
    164a:	009c                	addi	a5,sp,64
    164c:	0000                	unimp
    164e:	0000                	unimp
    1650:	0000                	unimp
    1652:	00d4                	addi	a3,sp,68
    1654:	0000                	unimp
    1656:	0000                	unimp
    1658:	0000                	unimp
    165a:	0001                	nop
    165c:	5c5f 0001 0000      	0x15c5f
    1662:	0000                	unimp
    1664:	6000                	ld	s0,0(s0)
    1666:	0001                	nop
    1668:	0000                	unimp
    166a:	0000                	unimp
    166c:	0100                	addi	s0,sp,128
    166e:	5f00                	lw	s0,56(a4)
    1670:	026c                	addi	a1,sp,268
    1672:	0000                	unimp
    1674:	0000                	unimp
    1676:	0000                	unimp
    1678:	0278                	addi	a4,sp,268
    167a:	0000                	unimp
    167c:	0000                	unimp
    167e:	0000                	unimp
    1680:	0001                	nop
    1682:	9c5f 0002 0000      	0x29c5f
    1688:	0000                	unimp
    168a:	a400                	fsd	fs0,8(s0)
    168c:	0002                	c.slli64	zero
    168e:	0000                	unimp
    1690:	0000                	unimp
    1692:	0100                	addi	s0,sp,128
    1694:	5f00                	lw	s0,56(a4)
	...
    16a6:	0078                	addi	a4,sp,12
    16a8:	0000                	unimp
    16aa:	0000                	unimp
    16ac:	0000                	unimp
    16ae:	00d4                	addi	a3,sp,68
    16b0:	0000                	unimp
    16b2:	0000                	unimp
    16b4:	0000                	unimp
    16b6:	0006                	c.slli	zero,0x1
    16b8:	0084                	addi	s1,sp,64
    16ba:	ff08                	sd	a0,56(a4)
    16bc:	9f1a                	add	t5,t5,t1
    16be:	0118                	addi	a4,sp,128
    16c0:	0000                	unimp
    16c2:	0000                	unimp
    16c4:	0000                	unimp
    16c6:	0348                	addi	a0,sp,388
    16c8:	0000                	unimp
    16ca:	0000                	unimp
    16cc:	0000                	unimp
    16ce:	0006                	c.slli	zero,0x1
    16d0:	0084                	addi	s1,sp,64
    16d2:	ff08                	sd	a0,56(a4)
    16d4:	9f1a                	add	t5,t5,t1
	...
    16e6:	0074                	addi	a3,sp,12
    16e8:	0000                	unimp
    16ea:	0000                	unimp
    16ec:	0000                	unimp
    16ee:	0098                	addi	a4,sp,64
    16f0:	0000                	unimp
    16f2:	0000                	unimp
    16f4:	0000                	unimp
    16f6:	007e0007          	0x7e0007
    16fa:	ff0a                	sd	sp,440(sp)
    16fc:	1aff                	0x1aff
    16fe:	989f 0000 0000      	0x989f
    1704:	0000                	unimp
    1706:	a400                	fsd	fs0,8(s0)
    1708:	0000                	unimp
    170a:	0000                	unimp
    170c:	0000                	unimp
    170e:	0100                	addi	s0,sp,128
    1710:	5e00                	lw	s0,56(a2)
    1712:	0118                	addi	a4,sp,128
    1714:	0000                	unimp
    1716:	0000                	unimp
    1718:	0000                	unimp
    171a:	00000123          	sb	zero,2(zero) # 2 <register_fini-0x100ae>
    171e:	0000                	unimp
    1720:	0000                	unimp
    1722:	007e0007          	0x7e0007
    1726:	ff0a                	sd	sp,440(sp)
    1728:	1aff                	0x1aff
    172a:	3c9f 0001 0000      	0x13c9f
    1730:	0000                	unimp
    1732:	4000                	lw	s0,0(s0)
    1734:	0001                	nop
    1736:	0000                	unimp
    1738:	0000                	unimp
    173a:	0700                	addi	s0,sp,896
    173c:	7e00                	ld	s0,56(a2)
    173e:	0a00                	addi	s0,sp,272
    1740:	ffff                	0xffff
    1742:	9f1a                	add	t5,t5,t1
    1744:	0150                	addi	a2,sp,132
    1746:	0000                	unimp
    1748:	0000                	unimp
    174a:	0000                	unimp
    174c:	0154                	addi	a3,sp,132
    174e:	0000                	unimp
    1750:	0000                	unimp
    1752:	0000                	unimp
    1754:	007e0007          	0x7e0007
    1758:	ff0a                	sd	sp,440(sp)
    175a:	1aff                	0x1aff
    175c:	549f 0001 0000      	0x1549f
    1762:	0000                	unimp
    1764:	5800                	lw	s0,48(s0)
    1766:	0001                	nop
    1768:	0000                	unimp
    176a:	0000                	unimp
    176c:	0700                	addi	s0,sp,896
    176e:	7f00                	ld	s0,56(a4)
    1770:	0a00                	addi	s0,sp,272
    1772:	07ff                	0x7ff
    1774:	9f1a                	add	t5,t5,t1
	...
    1786:	0070                	addi	a2,sp,12
    1788:	0000                	unimp
    178a:	0000                	unimp
    178c:	0000                	unimp
    178e:	0084                	addi	s1,sp,64
    1790:	0000                	unimp
    1792:	0000                	unimp
    1794:	0000                	unimp
    1796:	0001                	nop
    1798:	8458                	0x8458
    179a:	0000                	unimp
    179c:	0000                	unimp
    179e:	0000                	unimp
    17a0:	8c00                	0x8c00
    17a2:	0000                	unimp
    17a4:	0000                	unimp
    17a6:	0000                	unimp
    17a8:	0800                	addi	s0,sp,16
    17aa:	7800                	ld	s0,48(s0)
    17ac:	4000                	lw	s0,0(s0)
    17ae:	3008                	fld	fa0,32(s0)
    17b0:	2124                	fld	fs1,64(a0)
    17b2:	949f 0000 0000      	0x949f
    17b8:	0000                	unimp
    17ba:	d400                	sw	s0,40(s0)
    17bc:	0000                	unimp
    17be:	0000                	unimp
    17c0:	0000                	unimp
    17c2:	0100                	addi	s0,sp,128
    17c4:	5800                	lw	s0,48(s0)
    17c6:	0118                	addi	a4,sp,128
    17c8:	0000                	unimp
    17ca:	0000                	unimp
    17cc:	0000                	unimp
    17ce:	0174                	addi	a3,sp,140
    17d0:	0000                	unimp
    17d2:	0000                	unimp
    17d4:	0000                	unimp
    17d6:	0001                	nop
    17d8:	6c58                	ld	a4,152(s0)
    17da:	0002                	c.slli64	zero
    17dc:	0000                	unimp
    17de:	0000                	unimp
    17e0:	7400                	ld	s0,40(s0)
    17e2:	0002                	c.slli64	zero
    17e4:	0000                	unimp
    17e6:	0000                	unimp
    17e8:	0100                	addi	s0,sp,128
    17ea:	5800                	lw	s0,48(s0)
    17ec:	029c                	addi	a5,sp,320
    17ee:	0000                	unimp
    17f0:	0000                	unimp
    17f2:	0000                	unimp
    17f4:	02a4                	addi	s1,sp,328
    17f6:	0000                	unimp
    17f8:	0000                	unimp
    17fa:	0000                	unimp
    17fc:	0001                	nop
    17fe:	0058                	addi	a4,sp,4
	...
    180c:	0000                	unimp
    180e:	5c00                	lw	s0,56(s0)
    1810:	0001                	nop
    1812:	0000                	unimp
    1814:	0000                	unimp
    1816:	1800                	addi	s0,sp,48
    1818:	0002                	c.slli64	zero
    181a:	0000                	unimp
    181c:	0000                	unimp
    181e:	0200                	addi	s0,sp,256
    1820:	3000                	fld	fs0,32(s0)
    1822:	789f 0002 0000      	0x2789f
    1828:	0000                	unimp
    182a:	9000                	0x9000
    182c:	0002                	c.slli64	zero
    182e:	0000                	unimp
    1830:	0000                	unimp
    1832:	0100                	addi	s0,sp,128
    1834:	5f00                	lw	s0,56(a4)
    1836:	02a4                	addi	s1,sp,328
    1838:	0000                	unimp
    183a:	0000                	unimp
    183c:	0000                	unimp
    183e:	02ac                	addi	a1,sp,328
    1840:	0000                	unimp
    1842:	0000                	unimp
    1844:	0000                	unimp
    1846:	0002                	c.slli64	zero
    1848:	9f30                	0x9f30
	...
    185a:	00b4                	addi	a3,sp,72
    185c:	0000                	unimp
    185e:	0000                	unimp
    1860:	0000                	unimp
    1862:	00d4                	addi	a3,sp,68
    1864:	0000                	unimp
    1866:	0000                	unimp
    1868:	0000                	unimp
    186a:	0001                	nop
    186c:	5c60                	lw	s0,124(s0)
    186e:	0001                	nop
    1870:	0000                	unimp
    1872:	0000                	unimp
    1874:	7000                	ld	s0,32(s0)
    1876:	0002                	c.slli64	zero
    1878:	0000                	unimp
    187a:	0000                	unimp
    187c:	0100                	addi	s0,sp,128
    187e:	6000                	ld	s0,0(s0)
    1880:	0270                	addi	a2,sp,268
    1882:	0000                	unimp
    1884:	0000                	unimp
    1886:	0000                	unimp
    1888:	0278                	addi	a4,sp,268
    188a:	0000                	unimp
    188c:	0000                	unimp
    188e:	0000                	unimp
    1890:	0006                	c.slli	zero,0x1
    1892:	0082                	c.slli64	ra
    1894:	ff08                	sd	a0,56(a4)
    1896:	9f1a                	add	t5,t5,t1
    1898:	0278                	addi	a4,sp,268
    189a:	0000                	unimp
    189c:	0000                	unimp
    189e:	0000                	unimp
    18a0:	02a0                	addi	s0,sp,328
    18a2:	0000                	unimp
    18a4:	0000                	unimp
    18a6:	0000                	unimp
    18a8:	0001                	nop
    18aa:	a060                	fsd	fs0,192(s0)
    18ac:	0002                	c.slli64	zero
    18ae:	0000                	unimp
    18b0:	0000                	unimp
    18b2:	a400                	fsd	fs0,8(s0)
    18b4:	0002                	c.slli64	zero
    18b6:	0000                	unimp
    18b8:	0000                	unimp
    18ba:	0600                	addi	s0,sp,768
    18bc:	8400                	0x8400
    18be:	0800                	addi	s0,sp,16
    18c0:	1aff                	0x1aff
    18c2:	a49f 0002 0000      	0x2a49f
    18c8:	0000                	unimp
    18ca:	5400                	lw	s0,40(s0)
    18cc:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    18d0:	0000                	unimp
    18d2:	0100                	addi	s0,sp,128
    18d4:	6000                	ld	s0,0(s0)
	...
    18e6:	00b8                	addi	a4,sp,72
    18e8:	0000                	unimp
    18ea:	0000                	unimp
    18ec:	0000                	unimp
    18ee:	00d4                	addi	a3,sp,68
    18f0:	0000                	unimp
    18f2:	0000                	unimp
    18f4:	0000                	unimp
    18f6:	0001                	nop
    18f8:	5c61                	li	s8,-8
    18fa:	0001                	nop
    18fc:	0000                	unimp
    18fe:	0000                	unimp
    1900:	1c00                	addi	s0,sp,560
    1902:	0002                	c.slli64	zero
    1904:	0000                	unimp
    1906:	0000                	unimp
    1908:	0100                	addi	s0,sp,128
    190a:	6100                	ld	s0,0(a0)
    190c:	021c                	addi	a5,sp,256
    190e:	0000                	unimp
    1910:	0000                	unimp
    1912:	0000                	unimp
    1914:	0244                	addi	s1,sp,260
    1916:	0000                	unimp
    1918:	0000                	unimp
    191a:	0000                	unimp
    191c:	0001                	nop
    191e:	445f 0002 0000      	0x2445f
    1924:	0000                	unimp
    1926:	5400                	lw	s0,40(s0)
    1928:	0002                	c.slli64	zero
    192a:	0000                	unimp
    192c:	0000                	unimp
    192e:	0400                	addi	s0,sp,512
    1930:	8100                	0x8100
    1932:	07ff                	0x7ff
    1934:	549f 0002 0000      	0x2549f
    193a:	0000                	unimp
    193c:	6000                	ld	s0,0(s0)
    193e:	0002                	c.slli64	zero
    1940:	0000                	unimp
    1942:	0000                	unimp
    1944:	0100                	addi	s0,sp,128
    1946:	5f00                	lw	s0,56(a4)
    1948:	026c                	addi	a1,sp,268
    194a:	0000                	unimp
    194c:	0000                	unimp
    194e:	0000                	unimp
    1950:	0290                	addi	a2,sp,320
    1952:	0000                	unimp
    1954:	0000                	unimp
    1956:	0000                	unimp
    1958:	0001                	nop
    195a:	9c61                	0x9c61
    195c:	0002                	c.slli64	zero
    195e:	0000                	unimp
    1960:	0000                	unimp
    1962:	a800                	fsd	fs0,16(s0)
    1964:	0002                	c.slli64	zero
    1966:	0000                	unimp
    1968:	0000                	unimp
    196a:	0100                	addi	s0,sp,128
    196c:	6100                	ld	s0,0(a0)
    196e:	02a8                	addi	a0,sp,328
    1970:	0000                	unimp
    1972:	0000                	unimp
    1974:	0000                	unimp
    1976:	02ac                	addi	a1,sp,328
    1978:	0000                	unimp
    197a:	0000                	unimp
    197c:	0000                	unimp
    197e:	01830003          	lb	zero,24(t1) # ffffffffffffd018 <__BSS_END__+0xfffffffffffea7e8>
    1982:	ac9f 0002 0000      	0x2ac9f
    1988:	0000                	unimp
    198a:	b400                	fsd	fs0,40(s0)
    198c:	0002                	c.slli64	zero
    198e:	0000                	unimp
    1990:	0000                	unimp
    1992:	0100                	addi	s0,sp,128
    1994:	5f00                	lw	s0,56(a4)
    1996:	02b4                	addi	a3,sp,328
    1998:	0000                	unimp
    199a:	0000                	unimp
    199c:	0000                	unimp
    199e:	02c8                	addi	a0,sp,324
    19a0:	0000                	unimp
    19a2:	0000                	unimp
    19a4:	0000                	unimp
    19a6:	0001                	nop
    19a8:	c85a                	sw	s6,16(sp)
    19aa:	0002                	c.slli64	zero
    19ac:	0000                	unimp
    19ae:	0000                	unimp
    19b0:	0000                	unimp
    19b2:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    19b6:	0000                	unimp
    19b8:	0700                	addi	s0,sp,896
    19ba:	0b00                	addi	s0,sp,400
    19bc:	fc02                	sd	zero,56(sp)
    19be:	0081                	addi	ra,ra,0
    19c0:	9f1c                	0x9f1c
    19c2:	0300                	addi	s0,sp,384
    19c4:	0000                	unimp
    19c6:	0000                	unimp
    19c8:	0000                	unimp
    19ca:	0304                	addi	s1,sp,384
    19cc:	0000                	unimp
    19ce:	0000                	unimp
    19d0:	0000                	unimp
    19d2:	000a                	c.slli	zero,0x2
    19d4:	007f                	0x7f
    19d6:	0081                	addi	ra,ra,0
    19d8:	0a1c                	addi	a5,sp,272
    19da:	03ff                	0x3ff
    19dc:	9f1c                	0x9f1c
    19de:	0304                	addi	s1,sp,384
    19e0:	0000                	unimp
    19e2:	0000                	unimp
    19e4:	0000                	unimp
    19e6:	0314                	addi	a3,sp,384
    19e8:	0000                	unimp
    19ea:	0000                	unimp
    19ec:	0000                	unimp
    19ee:	0001                	nop
    19f0:	1461                	addi	s0,s0,-8
    19f2:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    19f6:	0000                	unimp
    19f8:	1800                	addi	s0,sp,48
    19fa:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    19fe:	0000                	unimp
    1a00:	0100                	addi	s0,sp,128
    1a02:	5f00                	lw	s0,56(a4)
	...
    1a14:	0204                	addi	s1,sp,256
    1a16:	0000                	unimp
    1a18:	0000                	unimp
    1a1a:	0000                	unimp
    1a1c:	0214                	addi	a3,sp,256
    1a1e:	0000                	unimp
    1a20:	0000                	unimp
    1a22:	0000                	unimp
    1a24:	0001                	nop
    1a26:	1858                	addi	a4,sp,52
    1a28:	0002                	c.slli64	zero
    1a2a:	0000                	unimp
    1a2c:	0000                	unimp
    1a2e:	5400                	lw	s0,40(s0)
    1a30:	0002                	c.slli64	zero
    1a32:	0000                	unimp
    1a34:	0000                	unimp
    1a36:	0100                	addi	s0,sp,128
    1a38:	5800                	lw	s0,48(s0)
    1a3a:	0254                	addi	a3,sp,260
    1a3c:	0000                	unimp
    1a3e:	0000                	unimp
    1a40:	0000                	unimp
    1a42:	025c                	addi	a5,sp,260
    1a44:	0000                	unimp
    1a46:	0000                	unimp
    1a48:	0000                	unimp
    1a4a:	0005                	c.nop	1
    1a4c:	0078                	addi	a4,sp,12
    1a4e:	5c9f2533          	0x5c9f2533
    1a52:	0002                	c.slli64	zero
    1a54:	0000                	unimp
    1a56:	0000                	unimp
    1a58:	6400                	ld	s0,8(s0)
    1a5a:	0002                	c.slli64	zero
    1a5c:	0000                	unimp
    1a5e:	0000                	unimp
    1a60:	0100                	addi	s0,sp,128
    1a62:	5800                	lw	s0,48(s0)
    1a64:	0278                	addi	a4,sp,268
    1a66:	0000                	unimp
    1a68:	0000                	unimp
    1a6a:	0000                	unimp
    1a6c:	0294                	addi	a3,sp,320
    1a6e:	0000                	unimp
    1a70:	0000                	unimp
    1a72:	0000                	unimp
    1a74:	0001                	nop
    1a76:	a458                	fsd	fa4,136(s0)
    1a78:	0002                	c.slli64	zero
    1a7a:	0000                	unimp
    1a7c:	0000                	unimp
    1a7e:	cc00                	sw	s0,24(s0)
    1a80:	0002                	c.slli64	zero
    1a82:	0000                	unimp
    1a84:	0000                	unimp
    1a86:	0100                	addi	s0,sp,128
    1a88:	5800                	lw	s0,48(s0)
    1a8a:	02d4                	addi	a3,sp,324
    1a8c:	0000                	unimp
    1a8e:	0000                	unimp
    1a90:	0000                	unimp
    1a92:	02f4                	addi	a3,sp,332
    1a94:	0000                	unimp
    1a96:	0000                	unimp
    1a98:	0000                	unimp
    1a9a:	0001                	nop
    1a9c:	1458                	addi	a4,sp,548
    1a9e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1aa2:	0000                	unimp
    1aa4:	1c00                	addi	s0,sp,560
    1aa6:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1aaa:	0000                	unimp
    1aac:	0100                	addi	s0,sp,128
    1aae:	5800                	lw	s0,48(s0)
	...
    1ac0:	032c                	addi	a1,sp,392
    1ac2:	0000                	unimp
    1ac4:	0000                	unimp
    1ac6:	0000                	unimp
    1ac8:	0334                	addi	a3,sp,392
    1aca:	0000                	unimp
    1acc:	0000                	unimp
    1ace:	0000                	unimp
    1ad0:	0008                	0x8
    1ad2:	0078                	addi	a4,sp,12
    1ad4:	007a                	c.slli	zero,0x1e
    1ad6:	f921                	bnez	a0,1a26 <register_fini-0xe68a>
    1ad8:	9f2d                	addw	a4,a4,a1
    1ada:	0334                	addi	a3,sp,392
    1adc:	0000                	unimp
    1ade:	0000                	unimp
    1ae0:	0000                	unimp
    1ae2:	0354                	addi	a3,sp,388
    1ae4:	0000                	unimp
    1ae6:	0000                	unimp
    1ae8:	0000                	unimp
    1aea:	0001                	nop
    1aec:	005a                	c.slli	zero,0x16
	...
    1afa:	0000                	unimp
    1afc:	e400                	sd	s0,8(s0)
    1afe:	0000                	unimp
    1b00:	0000                	unimp
    1b02:	0000                	unimp
    1b04:	f800                	sd	s0,48(s0)
    1b06:	0000                	unimp
    1b08:	0000                	unimp
    1b0a:	0000                	unimp
    1b0c:	0300                	addi	s0,sp,384
    1b0e:	7e00                	ld	s0,56(a2)
    1b10:	9f75                	0x9f75
	...
    1b22:	0128                	addi	a0,sp,136
    1b24:	0000                	unimp
    1b26:	0000                	unimp
    1b28:	0000                	unimp
    1b2a:	013c                	addi	a5,sp,136
    1b2c:	0000                	unimp
    1b2e:	0000                	unimp
    1b30:	0000                	unimp
    1b32:	757f0003          	lb	zero,1879(t5) # 1b757 <__BSS_END__+0x8f27>
    1b36:	009f 0000 0000      	0x9f
	...
    1b44:	0000                	unimp
    1b46:	e400                	sd	s0,8(s0)
    1b48:	0001                	nop
    1b4a:	0000                	unimp
    1b4c:	0000                	unimp
    1b4e:	f400                	sd	s0,40(s0)
    1b50:	0001                	nop
    1b52:	0000                	unimp
    1b54:	0000                	unimp
    1b56:	0100                	addi	s0,sp,128
    1b58:	5e00                	lw	s0,56(a2)
    1b5a:	0204                	addi	s1,sp,256
    1b5c:	0000                	unimp
    1b5e:	0000                	unimp
    1b60:	0000                	unimp
    1b62:	0214                	addi	a3,sp,256
    1b64:	0000                	unimp
    1b66:	0000                	unimp
    1b68:	0000                	unimp
    1b6a:	0001                	nop
    1b6c:	a458                	fsd	fa4,136(s0)
    1b6e:	0002                	c.slli64	zero
    1b70:	0000                	unimp
    1b72:	0000                	unimp
    1b74:	ac00                	fsd	fs0,24(s0)
    1b76:	0002                	c.slli64	zero
    1b78:	0000                	unimp
    1b7a:	0000                	unimp
    1b7c:	0100                	addi	s0,sp,128
    1b7e:	5800                	lw	s0,48(s0)
	...
    1b90:	01cc                	addi	a1,sp,196
    1b92:	0000                	unimp
    1b94:	0000                	unimp
    1b96:	0000                	unimp
    1b98:	01ec                	addi	a1,sp,204
    1b9a:	0000                	unimp
    1b9c:	0000                	unimp
    1b9e:	0000                	unimp
    1ba0:	0009                	c.nop	2
    1ba2:	007f                	0x7f
    1ba4:	2008                	fld	fa0,0(s0)
    1ba6:	7a25                	lui	s4,0xfffe9
    1ba8:	2200                	fld	fs0,0(a2)
    1baa:	f89f 0001 0000      	0x1f89f
    1bb0:	0000                	unimp
    1bb2:	0000                	unimp
    1bb4:	0002                	c.slli64	zero
    1bb6:	0000                	unimp
    1bb8:	0000                	unimp
    1bba:	0100                	addi	s0,sp,128
    1bbc:	5f00                	lw	s0,56(a4)
	...
    1bce:	0184                	addi	s1,sp,192
    1bd0:	0000                	unimp
    1bd2:	0000                	unimp
    1bd4:	0000                	unimp
    1bd6:	01dc                	addi	a5,sp,196
    1bd8:	0000                	unimp
    1bda:	0000                	unimp
    1bdc:	0000                	unimp
    1bde:	0001                	nop
    1be0:	0056                	c.slli	zero,0x15
	...
    1bee:	0000                	unimp
    1bf0:	9400                	0x9400
    1bf2:	0001                	nop
    1bf4:	0000                	unimp
    1bf6:	0000                	unimp
    1bf8:	9c00                	0x9c00
    1bfa:	0001                	nop
    1bfc:	0000                	unimp
    1bfe:	0000                	unimp
    1c00:	0100                	addi	s0,sp,128
    1c02:	5a00                	lw	s0,48(a2)
    1c04:	019c                	addi	a5,sp,192
    1c06:	0000                	unimp
    1c08:	0000                	unimp
    1c0a:	0000                	unimp
    1c0c:	01b0                	addi	a2,sp,200
    1c0e:	0000                	unimp
    1c10:	0000                	unimp
    1c12:	0000                	unimp
    1c14:	0001                	nop
    1c16:	b05f 0001 0000      	0x1b05f
    1c1c:	0000                	unimp
    1c1e:	b800                	fsd	fs0,48(s0)
    1c20:	0001                	nop
    1c22:	0000                	unimp
    1c24:	0000                	unimp
    1c26:	0900                	addi	s0,sp,144
    1c28:	7600                	ld	s0,40(a2)
    1c2a:	0800                	addi	s0,sp,16
    1c2c:	2520                	fld	fs0,72(a0)
    1c2e:	007f                	0x7f
    1c30:	9f22                	add	t5,t5,s0
    1c32:	01bc                	addi	a5,sp,200
    1c34:	0000                	unimp
    1c36:	0000                	unimp
    1c38:	0000                	unimp
    1c3a:	01ec                	addi	a1,sp,204
    1c3c:	0000                	unimp
    1c3e:	0000                	unimp
    1c40:	0000                	unimp
    1c42:	0001                	nop
    1c44:	005f 0000 0000      	0x5f
	...
    1c52:	0000                	unimp
    1c54:	a400                	fsd	fs0,8(s0)
    1c56:	0001                	nop
    1c58:	0000                	unimp
    1c5a:	0000                	unimp
    1c5c:	ac00                	fsd	fs0,24(s0)
    1c5e:	0001                	nop
    1c60:	0000                	unimp
    1c62:	0000                	unimp
    1c64:	0100                	addi	s0,sp,128
    1c66:	5a00                	lw	s0,48(a2)
    1c68:	01ac                	addi	a1,sp,200
    1c6a:	0000                	unimp
    1c6c:	0000                	unimp
    1c6e:	0000                	unimp
    1c70:	0218                	addi	a4,sp,256
    1c72:	0000                	unimp
    1c74:	0000                	unimp
    1c76:	0000                	unimp
    1c78:	0001                	nop
    1c7a:	a46c                	fsd	fa1,200(s0)
    1c7c:	0002                	c.slli64	zero
    1c7e:	0000                	unimp
    1c80:	0000                	unimp
    1c82:	ac00                	fsd	fs0,24(s0)
    1c84:	0002                	c.slli64	zero
    1c86:	0000                	unimp
    1c88:	0000                	unimp
    1c8a:	0100                	addi	s0,sp,128
    1c8c:	6c00                	ld	s0,24(s0)
	...
    1c9e:	01b0                	addi	a2,sp,200
    1ca0:	0000                	unimp
    1ca2:	0000                	unimp
    1ca4:	0000                	unimp
    1ca6:	0218                	addi	a4,sp,256
    1ca8:	0000                	unimp
    1caa:	0000                	unimp
    1cac:	0000                	unimp
    1cae:	0001                	nop
    1cb0:	a45a                	fsd	fs6,8(sp)
    1cb2:	0002                	c.slli64	zero
    1cb4:	0000                	unimp
    1cb6:	0000                	unimp
    1cb8:	ac00                	fsd	fs0,24(s0)
    1cba:	0002                	c.slli64	zero
    1cbc:	0000                	unimp
    1cbe:	0000                	unimp
    1cc0:	0100                	addi	s0,sp,128
    1cc2:	5a00                	lw	s0,48(a2)
	...
    1cd4:	015c                	addi	a5,sp,132
    1cd6:	0000                	unimp
    1cd8:	0000                	unimp
    1cda:	0000                	unimp
    1cdc:	0170                	addi	a2,sp,140
    1cde:	0000                	unimp
    1ce0:	0000                	unimp
    1ce2:	0000                	unimp
    1ce4:	0001                	nop
    1ce6:	0059                	c.nop	22
	...
    1cf4:	0000                	unimp
    1cf6:	6800                	ld	s0,16(s0)
    1cf8:	0001                	nop
    1cfa:	0000                	unimp
    1cfc:	0000                	unimp
    1cfe:	7400                	ld	s0,40(s0)
    1d00:	0001                	nop
    1d02:	0000                	unimp
    1d04:	0000                	unimp
    1d06:	0100                	addi	s0,sp,128
    1d08:	5800                	lw	s0,48(s0)
	...
    1d1a:	0168                	addi	a0,sp,140
    1d1c:	0000                	unimp
    1d1e:	0000                	unimp
    1d20:	0000                	unimp
    1d22:	0218                	addi	a4,sp,256
    1d24:	0000                	unimp
    1d26:	0000                	unimp
    1d28:	0000                	unimp
    1d2a:	0001                	nop
    1d2c:	a46d                	j	1fd6 <register_fini-0xe0da>
    1d2e:	0002                	c.slli64	zero
    1d30:	0000                	unimp
    1d32:	0000                	unimp
    1d34:	ac00                	fsd	fs0,24(s0)
    1d36:	0002                	c.slli64	zero
    1d38:	0000                	unimp
    1d3a:	0000                	unimp
    1d3c:	0100                	addi	s0,sp,128
    1d3e:	6d00                	ld	s0,24(a0)
	...
    1d50:	016c                	addi	a1,sp,140
    1d52:	0000                	unimp
    1d54:	0000                	unimp
    1d56:	0000                	unimp
    1d58:	01b4                	addi	a3,sp,200
    1d5a:	0000                	unimp
    1d5c:	0000                	unimp
    1d5e:	0000                	unimp
    1d60:	0001                	nop
    1d62:	005e                	c.slli	zero,0x17
	...
    1d78:	0000                	unimp
    1d7a:	6000                	ld	s0,0(s0)
    1d7c:	0000                	unimp
    1d7e:	0000                	unimp
    1d80:	0000                	unimp
    1d82:	0100                	addi	s0,sp,128
    1d84:	5a00                	lw	s0,48(a2)
    1d86:	0060                	addi	s0,sp,12
    1d88:	0000                	unimp
    1d8a:	0000                	unimp
    1d8c:	0000                	unimp
    1d8e:	0488                	addi	a0,sp,576
    1d90:	0000                	unimp
    1d92:	0000                	unimp
    1d94:	0000                	unimp
    1d96:	0006                	c.slli	zero,0x1
    1d98:	0af503f3          	0xaf503f3
    1d9c:	9f2d                	addw	a4,a4,a1
	...
    1db6:	0048                	addi	a0,sp,4
    1db8:	0000                	unimp
    1dba:	0000                	unimp
    1dbc:	0000                	unimp
    1dbe:	0001                	nop
    1dc0:	0000485b          	0x485b
    1dc4:	0000                	unimp
    1dc6:	0000                	unimp
    1dc8:	8800                	0x8800
    1dca:	0004                	0x4
    1dcc:	0000                	unimp
    1dce:	0000                	unimp
    1dd0:	0600                	addi	s0,sp,768
    1dd2:	f300                	sd	s0,32(a4)
    1dd4:	2d0bf503          	0x2d0bf503
    1dd8:	009f 0000 0000      	0x9f
	...
    1dee:	0000                	unimp
    1df0:	b800                	fsd	fs0,48(s0)
    1df2:	0000                	unimp
    1df4:	0000                	unimp
    1df6:	0000                	unimp
    1df8:	0200                	addi	s0,sp,256
    1dfa:	3000                	fld	fs0,32(s0)
    1dfc:	d49f 0000 0000      	0xd49f
    1e02:	0000                	unimp
    1e04:	c800                	sw	s0,16(s0)
    1e06:	0001                	nop
    1e08:	0000                	unimp
    1e0a:	0000                	unimp
    1e0c:	0200                	addi	s0,sp,256
    1e0e:	3000                	fld	fs0,32(s0)
    1e10:	e49f 0001 0000      	0x1e49f
    1e16:	0000                	unimp
    1e18:	3c00                	fld	fs0,56(s0)
    1e1a:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1e1e:	0000                	unimp
    1e20:	0200                	addi	s0,sp,256
    1e22:	3000                	fld	fs0,32(s0)
    1e24:	549f 0003 0000      	0x3549f
    1e2a:	0000                	unimp
    1e2c:	e400                	sd	s0,8(s0)
    1e2e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1e32:	0000                	unimp
    1e34:	0200                	addi	s0,sp,256
    1e36:	3000                	fld	fs0,32(s0)
    1e38:	ec9f 0003 0000      	0x3ec9f
    1e3e:	0000                	unimp
    1e40:	f400                	sd	s0,40(s0)
    1e42:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1e46:	0000                	unimp
    1e48:	0200                	addi	s0,sp,256
    1e4a:	3000                	fld	fs0,32(s0)
    1e4c:	689f 0004 0000      	0x4689f
    1e52:	0000                	unimp
    1e54:	8000                	0x8000
    1e56:	0004                	0x4
    1e58:	0000                	unimp
    1e5a:	0000                	unimp
    1e5c:	0200                	addi	s0,sp,256
    1e5e:	3000                	fld	fs0,32(s0)
    1e60:	009f 0000 0000      	0x9f
	...
    1e6e:	0000                	unimp
    1e70:	4000                	lw	s0,0(s0)
    1e72:	0000                	unimp
    1e74:	0000                	unimp
    1e76:	0000                	unimp
    1e78:	b800                	fsd	fs0,48(s0)
    1e7a:	0000                	unimp
    1e7c:	0000                	unimp
    1e7e:	0000                	unimp
    1e80:	0100                	addi	s0,sp,128
    1e82:	5900                	lw	s0,48(a0)
    1e84:	00d4                	addi	a3,sp,68
    1e86:	0000                	unimp
    1e88:	0000                	unimp
    1e8a:	0000                	unimp
    1e8c:	01d8                	addi	a4,sp,196
    1e8e:	0000                	unimp
    1e90:	0000                	unimp
    1e92:	0000                	unimp
    1e94:	0001                	nop
    1e96:	e459                	bnez	s0,1f24 <register_fini-0xe18c>
    1e98:	0001                	nop
    1e9a:	0000                	unimp
    1e9c:	0000                	unimp
    1e9e:	1400                	addi	s0,sp,544
    1ea0:	0002                	c.slli64	zero
    1ea2:	0000                	unimp
    1ea4:	0000                	unimp
    1ea6:	0100                	addi	s0,sp,128
    1ea8:	5900                	lw	s0,48(a0)
    1eaa:	0228                	addi	a0,sp,264
    1eac:	0000                	unimp
    1eae:	0000                	unimp
    1eb0:	0000                	unimp
    1eb2:	0294                	addi	a3,sp,320
    1eb4:	0000                	unimp
    1eb6:	0000                	unimp
    1eb8:	0000                	unimp
    1eba:	0001                	nop
    1ebc:	9859                	andi	s0,s0,-10
    1ebe:	0002                	c.slli64	zero
    1ec0:	0000                	unimp
    1ec2:	0000                	unimp
    1ec4:	0800                	addi	s0,sp,16
    1ec6:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1eca:	0000                	unimp
    1ecc:	0100                	addi	s0,sp,128
    1ece:	5900                	lw	s0,48(a0)
    1ed0:	0318                	addi	a4,sp,384
    1ed2:	0000                	unimp
    1ed4:	0000                	unimp
    1ed6:	0000                	unimp
    1ed8:	034c                	addi	a1,sp,388
    1eda:	0000                	unimp
    1edc:	0000                	unimp
    1ede:	0000                	unimp
    1ee0:	0001                	nop
    1ee2:	5459                	li	s0,-10
    1ee4:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1ee8:	0000                	unimp
    1eea:	6800                	ld	s0,16(s0)
    1eec:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1ef0:	0000                	unimp
    1ef2:	0100                	addi	s0,sp,128
    1ef4:	5900                	lw	s0,48(a0)
    1ef6:	03a4                	addi	s1,sp,456
    1ef8:	0000                	unimp
    1efa:	0000                	unimp
    1efc:	0000                	unimp
    1efe:	03b4                	addi	a3,sp,456
    1f00:	0000                	unimp
    1f02:	0000                	unimp
    1f04:	0000                	unimp
    1f06:	0001                	nop
    1f08:	d059                	beqz	s0,1e8e <register_fini-0xe222>
    1f0a:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1f0e:	0000                	unimp
    1f10:	f400                	sd	s0,40(s0)
    1f12:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1f16:	0000                	unimp
    1f18:	0100                	addi	s0,sp,128
    1f1a:	5900                	lw	s0,48(a0)
    1f1c:	0468                	addi	a0,sp,524
    1f1e:	0000                	unimp
    1f20:	0000                	unimp
    1f22:	0000                	unimp
    1f24:	0480                	addi	s0,sp,576
    1f26:	0000                	unimp
    1f28:	0000                	unimp
    1f2a:	0000                	unimp
    1f2c:	0001                	nop
    1f2e:	0059                	c.nop	22
	...
    1f3c:	0000                	unimp
    1f3e:	3c00                	fld	fs0,56(s0)
    1f40:	0000                	unimp
    1f42:	0000                	unimp
    1f44:	0000                	unimp
    1f46:	7c00                	ld	s0,56(s0)
    1f48:	0000                	unimp
    1f4a:	0000                	unimp
    1f4c:	0000                	unimp
    1f4e:	0100                	addi	s0,sp,128
    1f50:	5800                	lw	s0,48(s0)
    1f52:	007c                	addi	a5,sp,12
    1f54:	0000                	unimp
    1f56:	0000                	unimp
    1f58:	0000                	unimp
    1f5a:	00b0                	addi	a2,sp,72
    1f5c:	0000                	unimp
    1f5e:	0000                	unimp
    1f60:	0000                	unimp
    1f62:	0001                	nop
    1f64:	b060                	fsd	fs0,224(s0)
    1f66:	0000                	unimp
    1f68:	0000                	unimp
    1f6a:	0000                	unimp
    1f6c:	b800                	fsd	fs0,48(s0)
    1f6e:	0000                	unimp
    1f70:	0000                	unimp
    1f72:	0000                	unimp
    1f74:	0100                	addi	s0,sp,128
    1f76:	5800                	lw	s0,48(s0)
    1f78:	00d4                	addi	a3,sp,68
    1f7a:	0000                	unimp
    1f7c:	0000                	unimp
    1f7e:	0000                	unimp
    1f80:	0130                	addi	a2,sp,136
    1f82:	0000                	unimp
    1f84:	0000                	unimp
    1f86:	0000                	unimp
    1f88:	0001                	nop
    1f8a:	3058                	fld	fa4,160(s0)
    1f8c:	0001                	nop
    1f8e:	0000                	unimp
    1f90:	0000                	unimp
    1f92:	3400                	fld	fs0,40(s0)
    1f94:	0001                	nop
    1f96:	0000                	unimp
    1f98:	0000                	unimp
    1f9a:	0100                	addi	s0,sp,128
    1f9c:	6000                	ld	s0,0(s0)
    1f9e:	0134                	addi	a3,sp,136
    1fa0:	0000                	unimp
    1fa2:	0000                	unimp
    1fa4:	0000                	unimp
    1fa6:	01c4                	addi	s1,sp,196
    1fa8:	0000                	unimp
    1faa:	0000                	unimp
    1fac:	0000                	unimp
    1fae:	0001                	nop
    1fb0:	c458                	sw	a4,12(s0)
    1fb2:	0001                	nop
    1fb4:	0000                	unimp
    1fb6:	0000                	unimp
    1fb8:	c800                	sw	s0,16(s0)
    1fba:	0001                	nop
    1fbc:	0000                	unimp
    1fbe:	0000                	unimp
    1fc0:	0100                	addi	s0,sp,128
    1fc2:	6000                	ld	s0,0(s0)
    1fc4:	01c8                	addi	a0,sp,196
    1fc6:	0000                	unimp
    1fc8:	0000                	unimp
    1fca:	0000                	unimp
    1fcc:	01e0                	addi	s0,sp,204
    1fce:	0000                	unimp
    1fd0:	0000                	unimp
    1fd2:	0000                	unimp
    1fd4:	0001                	nop
    1fd6:	e058                	sd	a4,128(s0)
    1fd8:	0001                	nop
    1fda:	0000                	unimp
    1fdc:	0000                	unimp
    1fde:	e400                	sd	s0,8(s0)
    1fe0:	0001                	nop
    1fe2:	0000                	unimp
    1fe4:	0000                	unimp
    1fe6:	0100                	addi	s0,sp,128
    1fe8:	6000                	ld	s0,0(s0)
    1fea:	01e4                	addi	s1,sp,204
    1fec:	0000                	unimp
    1fee:	0000                	unimp
    1ff0:	0000                	unimp
    1ff2:	01f8                	addi	a4,sp,204
    1ff4:	0000                	unimp
    1ff6:	0000                	unimp
    1ff8:	0000                	unimp
    1ffa:	0001                	nop
    1ffc:	f858                	sd	a4,176(s0)
    1ffe:	0001                	nop
    2000:	0000                	unimp
    2002:	0000                	unimp
    2004:	fc00                	sd	s0,56(s0)
    2006:	0001                	nop
    2008:	0000                	unimp
    200a:	0000                	unimp
    200c:	0100                	addi	s0,sp,128
    200e:	6000                	ld	s0,0(s0)
    2010:	01fc                	addi	a5,sp,204
    2012:	0000                	unimp
    2014:	0000                	unimp
    2016:	0000                	unimp
    2018:	0214                	addi	a3,sp,256
    201a:	0000                	unimp
    201c:	0000                	unimp
    201e:	0000                	unimp
    2020:	0001                	nop
    2022:	2858                	fld	fa4,144(s0)
    2024:	0002                	c.slli64	zero
    2026:	0000                	unimp
    2028:	0000                	unimp
    202a:	9000                	0x9000
    202c:	0002                	c.slli64	zero
    202e:	0000                	unimp
    2030:	0000                	unimp
    2032:	0100                	addi	s0,sp,128
    2034:	5800                	lw	s0,48(s0)
    2036:	0298                	addi	a4,sp,320
    2038:	0000                	unimp
    203a:	0000                	unimp
    203c:	0000                	unimp
    203e:	0310                	addi	a2,sp,384
    2040:	0000                	unimp
    2042:	0000                	unimp
    2044:	0000                	unimp
    2046:	0001                	nop
    2048:	1858                	addi	a4,sp,52
    204a:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    204e:	0000                	unimp
    2050:	5000                	lw	s0,32(s0)
    2052:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2056:	0000                	unimp
    2058:	0100                	addi	s0,sp,128
    205a:	5800                	lw	s0,48(s0)
    205c:	0350                	addi	a2,sp,388
    205e:	0000                	unimp
    2060:	0000                	unimp
    2062:	0000                	unimp
    2064:	0354                	addi	a3,sp,388
    2066:	0000                	unimp
    2068:	0000                	unimp
    206a:	0000                	unimp
    206c:	0001                	nop
    206e:	5460                	lw	s0,108(s0)
    2070:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2074:	0000                	unimp
    2076:	6800                	ld	s0,16(s0)
    2078:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    207c:	0000                	unimp
    207e:	0100                	addi	s0,sp,128
    2080:	5800                	lw	s0,48(s0)
    2082:	03a4                	addi	s1,sp,456
    2084:	0000                	unimp
    2086:	0000                	unimp
    2088:	0000                	unimp
    208a:	03b0                	addi	a2,sp,456
    208c:	0000                	unimp
    208e:	0000                	unimp
    2090:	0000                	unimp
    2092:	0001                	nop
    2094:	b058                	fsd	fa4,160(s0)
    2096:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    209a:	0000                	unimp
    209c:	b800                	fsd	fs0,48(s0)
    209e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    20a2:	0000                	unimp
    20a4:	0100                	addi	s0,sp,128
    20a6:	6000                	ld	s0,0(s0)
    20a8:	03d0                	addi	a2,sp,452
    20aa:	0000                	unimp
    20ac:	0000                	unimp
    20ae:	0000                	unimp
    20b0:	03d8                	addi	a4,sp,452
    20b2:	0000                	unimp
    20b4:	0000                	unimp
    20b6:	0000                	unimp
    20b8:	0001                	nop
    20ba:	d858                	sw	a4,52(s0)
    20bc:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    20c0:	0000                	unimp
    20c2:	dc00                	sw	s0,56(s0)
    20c4:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    20c8:	0000                	unimp
    20ca:	0100                	addi	s0,sp,128
    20cc:	6000                	ld	s0,0(s0)
    20ce:	03dc                	addi	a5,sp,452
    20d0:	0000                	unimp
    20d2:	0000                	unimp
    20d4:	0000                	unimp
    20d6:	03f0                	addi	a2,sp,460
    20d8:	0000                	unimp
    20da:	0000                	unimp
    20dc:	0000                	unimp
    20de:	0001                	nop
    20e0:	f058                	sd	a4,160(s0)
    20e2:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    20e6:	0000                	unimp
    20e8:	f400                	sd	s0,40(s0)
    20ea:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    20ee:	0000                	unimp
    20f0:	0100                	addi	s0,sp,128
    20f2:	6000                	ld	s0,0(s0)
    20f4:	0468                	addi	a0,sp,524
    20f6:	0000                	unimp
    20f8:	0000                	unimp
    20fa:	0000                	unimp
    20fc:	0470                	addi	a2,sp,524
    20fe:	0000                	unimp
    2100:	0000                	unimp
    2102:	0000                	unimp
    2104:	0001                	nop
    2106:	7058                	ld	a4,160(s0)
    2108:	0004                	0x4
    210a:	0000                	unimp
    210c:	0000                	unimp
    210e:	7400                	ld	s0,40(s0)
    2110:	0004                	0x4
    2112:	0000                	unimp
    2114:	0000                	unimp
    2116:	0100                	addi	s0,sp,128
    2118:	6000                	ld	s0,0(s0)
    211a:	0474                	addi	a3,sp,524
    211c:	0000                	unimp
    211e:	0000                	unimp
    2120:	0000                	unimp
    2122:	047c                	addi	a5,sp,524
    2124:	0000                	unimp
    2126:	0000                	unimp
    2128:	0000                	unimp
    212a:	0001                	nop
    212c:	0058                	addi	a4,sp,4
	...
    213a:	0000                	unimp
    213c:	1800                	addi	s0,sp,48
    213e:	0000                	unimp
    2140:	0000                	unimp
    2142:	0000                	unimp
    2144:	7c00                	ld	s0,56(s0)
    2146:	0000                	unimp
    2148:	0000                	unimp
    214a:	0000                	unimp
    214c:	0100                	addi	s0,sp,128
    214e:	5f00                	lw	s0,56(a4)
    2150:	00b0                	addi	a2,sp,72
    2152:	0000                	unimp
    2154:	0000                	unimp
    2156:	0000                	unimp
    2158:	00b8                	addi	a4,sp,72
    215a:	0000                	unimp
    215c:	0000                	unimp
    215e:	0000                	unimp
    2160:	0001                	nop
    2162:	d45f 0000 0000      	0xd45f
    2168:	0000                	unimp
    216a:	1000                	addi	s0,sp,32
    216c:	0001                	nop
    216e:	0000                	unimp
    2170:	0000                	unimp
    2172:	0100                	addi	s0,sp,128
    2174:	5f00                	lw	s0,56(a4)
    2176:	0114                	addi	a3,sp,128
    2178:	0000                	unimp
    217a:	0000                	unimp
    217c:	0000                	unimp
    217e:	012c                	addi	a1,sp,136
    2180:	0000                	unimp
    2182:	0000                	unimp
    2184:	0000                	unimp
    2186:	0001                	nop
    2188:	345f 0001 0000      	0x1345f
    218e:	0000                	unimp
    2190:	6000                	ld	s0,0(s0)
    2192:	0001                	nop
    2194:	0000                	unimp
    2196:	0000                	unimp
    2198:	0100                	addi	s0,sp,128
    219a:	5f00                	lw	s0,56(a4)
    219c:	0168                	addi	a0,sp,140
    219e:	0000                	unimp
    21a0:	0000                	unimp
    21a2:	0000                	unimp
    21a4:	0170                	addi	a2,sp,140
    21a6:	0000                	unimp
    21a8:	0000                	unimp
    21aa:	0000                	unimp
    21ac:	0001                	nop
    21ae:	0001705b          	0x1705b
    21b2:	0000                	unimp
    21b4:	0000                	unimp
    21b6:	a800                	fsd	fs0,16(s0)
    21b8:	0001                	nop
    21ba:	0000                	unimp
    21bc:	0000                	unimp
    21be:	0100                	addi	s0,sp,128
    21c0:	5f00                	lw	s0,56(a4)
    21c2:	01c8                	addi	a0,sp,196
    21c4:	0000                	unimp
    21c6:	0000                	unimp
    21c8:	0000                	unimp
    21ca:	01d4                	addi	a3,sp,196
    21cc:	0000                	unimp
    21ce:	0000                	unimp
    21d0:	0000                	unimp
    21d2:	0001                	nop
    21d4:	e45f 0001 0000      	0x1e45f
    21da:	0000                	unimp
    21dc:	f000                	sd	s0,32(s0)
    21de:	0001                	nop
    21e0:	0000                	unimp
    21e2:	0000                	unimp
    21e4:	0100                	addi	s0,sp,128
    21e6:	5f00                	lw	s0,56(a4)
    21e8:	01fc                	addi	a5,sp,204
    21ea:	0000                	unimp
    21ec:	0000                	unimp
    21ee:	0000                	unimp
    21f0:	0214                	addi	a3,sp,256
    21f2:	0000                	unimp
    21f4:	0000                	unimp
    21f6:	0000                	unimp
    21f8:	0001                	nop
    21fa:	285f 0002 0000      	0x2285f
    2200:	0000                	unimp
    2202:	5800                	lw	s0,48(s0)
    2204:	0002                	c.slli64	zero
    2206:	0000                	unimp
    2208:	0000                	unimp
    220a:	0100                	addi	s0,sp,128
    220c:	5f00                	lw	s0,56(a4)
    220e:	025c                	addi	a5,sp,260
    2210:	0000                	unimp
    2212:	0000                	unimp
    2214:	0000                	unimp
    2216:	028c                	addi	a1,sp,320
    2218:	0000                	unimp
    221a:	0000                	unimp
    221c:	0000                	unimp
    221e:	0001                	nop
    2220:	985f 0002 0000      	0x2985f
    2226:	0000                	unimp
    2228:	c400                	sw	s0,8(s0)
    222a:	0002                	c.slli64	zero
    222c:	0000                	unimp
    222e:	0000                	unimp
    2230:	0100                	addi	s0,sp,128
    2232:	5f00                	lw	s0,56(a4)
    2234:	02cc                	addi	a1,sp,324
    2236:	0000                	unimp
    2238:	0000                	unimp
    223a:	0000                	unimp
    223c:	02d4                	addi	a3,sp,324
    223e:	0000                	unimp
    2240:	0000                	unimp
    2242:	0000                	unimp
    2244:	0001                	nop
    2246:	d45a                	sw	s6,40(sp)
    2248:	0002                	c.slli64	zero
    224a:	0000                	unimp
    224c:	0000                	unimp
    224e:	1000                	addi	s0,sp,32
    2250:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2254:	0000                	unimp
    2256:	0100                	addi	s0,sp,128
    2258:	5f00                	lw	s0,56(a4)
    225a:	0318                	addi	a4,sp,384
    225c:	0000                	unimp
    225e:	0000                	unimp
    2260:	0000                	unimp
    2262:	0328                	addi	a0,sp,392
    2264:	0000                	unimp
    2266:	0000                	unimp
    2268:	0000                	unimp
    226a:	0001                	nop
    226c:	3c5f 0003 0000      	0x33c5f
    2272:	0000                	unimp
    2274:	4800                	lw	s0,16(s0)
    2276:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    227a:	0000                	unimp
    227c:	0100                	addi	s0,sp,128
    227e:	5f00                	lw	s0,56(a4)
    2280:	0354                	addi	a3,sp,388
    2282:	0000                	unimp
    2284:	0000                	unimp
    2286:	0000                	unimp
    2288:	0368                	addi	a0,sp,396
    228a:	0000                	unimp
    228c:	0000                	unimp
    228e:	0000                	unimp
    2290:	0001                	nop
    2292:	a45f 0003 0000      	0x3a45f
    2298:	0000                	unimp
    229a:	ac00                	fsd	fs0,24(s0)
    229c:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    22a0:	0000                	unimp
    22a2:	0100                	addi	s0,sp,128
    22a4:	5f00                	lw	s0,56(a4)
    22a6:	03d0                	addi	a2,sp,452
    22a8:	0000                	unimp
    22aa:	0000                	unimp
    22ac:	0000                	unimp
    22ae:	03d4                	addi	a3,sp,452
    22b0:	0000                	unimp
    22b2:	0000                	unimp
    22b4:	0000                	unimp
    22b6:	0001                	nop
    22b8:	dc5f 0003 0000      	0x3dc5f
    22be:	0000                	unimp
    22c0:	e000                	sd	s0,0(s0)
    22c2:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    22c6:	0000                	unimp
    22c8:	0100                	addi	s0,sp,128
    22ca:	5f00                	lw	s0,56(a4)
    22cc:	03e4                	addi	s1,sp,460
    22ce:	0000                	unimp
    22d0:	0000                	unimp
    22d2:	0000                	unimp
    22d4:	03e8                	addi	a0,sp,460
    22d6:	0000                	unimp
    22d8:	0000                	unimp
    22da:	0000                	unimp
    22dc:	0001                	nop
    22de:	ec5f 0003 0000      	0x3ec5f
    22e4:	0000                	unimp
    22e6:	f000                	sd	s0,32(s0)
    22e8:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    22ec:	0000                	unimp
    22ee:	0100                	addi	s0,sp,128
    22f0:	5f00                	lw	s0,56(a4)
    22f2:	0468                	addi	a0,sp,524
    22f4:	0000                	unimp
    22f6:	0000                	unimp
    22f8:	0000                	unimp
    22fa:	046c                	addi	a1,sp,524
    22fc:	0000                	unimp
    22fe:	0000                	unimp
    2300:	0000                	unimp
    2302:	0001                	nop
    2304:	745f 0004 0000      	0x4745f
    230a:	0000                	unimp
    230c:	7800                	ld	s0,48(s0)
    230e:	0004                	0x4
    2310:	0000                	unimp
    2312:	0000                	unimp
    2314:	0100                	addi	s0,sp,128
    2316:	5f00                	lw	s0,56(a4)
	...
    2328:	0048                	addi	a0,sp,4
    232a:	0000                	unimp
    232c:	0000                	unimp
    232e:	0000                	unimp
    2330:	0058                	addi	a4,sp,4
    2332:	0000                	unimp
    2334:	0000                	unimp
    2336:	0000                	unimp
    2338:	0006                	c.slli	zero,0x1
    233a:	ff08007b          	0xff08007b
    233e:	9f1a                	add	t5,t5,t1
    2340:	0058                	addi	a4,sp,4
    2342:	0000                	unimp
    2344:	0000                	unimp
    2346:	0000                	unimp
    2348:	007c                	addi	a5,sp,12
    234a:	0000                	unimp
    234c:	0000                	unimp
    234e:	0000                	unimp
    2350:	0001                	nop
    2352:	0000b05b          	0xb05b
    2356:	0000                	unimp
    2358:	0000                	unimp
    235a:	b800                	fsd	fs0,48(s0)
    235c:	0000                	unimp
    235e:	0000                	unimp
    2360:	0000                	unimp
    2362:	0100                	addi	s0,sp,128
    2364:	5b00                	lw	s0,48(a4)
    2366:	00d4                	addi	a3,sp,68
    2368:	0000                	unimp
    236a:	0000                	unimp
    236c:	0000                	unimp
    236e:	0124                	addi	s1,sp,136
    2370:	0000                	unimp
    2372:	0000                	unimp
    2374:	0000                	unimp
    2376:	0001                	nop
    2378:	0001705b          	0x1705b
    237c:	0000                	unimp
    237e:	0000                	unimp
    2380:	7400                	ld	s0,40(s0)
    2382:	0001                	nop
    2384:	0000                	unimp
    2386:	0000                	unimp
    2388:	0100                	addi	s0,sp,128
    238a:	5b00                	lw	s0,48(a4)
    238c:	018c                	addi	a1,sp,192
    238e:	0000                	unimp
    2390:	0000                	unimp
    2392:	0000                	unimp
    2394:	034c                	addi	a1,sp,388
    2396:	0000                	unimp
    2398:	0000                	unimp
    239a:	0000                	unimp
    239c:	0001                	nop
    239e:	0003545b          	0x3545b
    23a2:	0000                	unimp
    23a4:	0000                	unimp
    23a6:	6f00                	ld	s0,24(a4)
    23a8:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    23ac:	0000                	unimp
    23ae:	0100                	addi	s0,sp,128
    23b0:	5b00                	lw	s0,48(a4)
    23b2:	03a4                	addi	s1,sp,456
    23b4:	0000                	unimp
    23b6:	0000                	unimp
    23b8:	0000                	unimp
    23ba:	03b8                	addi	a4,sp,456
    23bc:	0000                	unimp
    23be:	0000                	unimp
    23c0:	0000                	unimp
    23c2:	0001                	nop
    23c4:	0003d05b          	0x3d05b
    23c8:	0000                	unimp
    23ca:	0000                	unimp
    23cc:	e400                	sd	s0,8(s0)
    23ce:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    23d2:	0000                	unimp
    23d4:	0100                	addi	s0,sp,128
    23d6:	5b00                	lw	s0,48(a4)
    23d8:	03ec                	addi	a1,sp,460
    23da:	0000                	unimp
    23dc:	0000                	unimp
    23de:	0000                	unimp
    23e0:	03f0                	addi	a2,sp,460
    23e2:	0000                	unimp
    23e4:	0000                	unimp
    23e6:	0000                	unimp
    23e8:	0001                	nop
    23ea:	0004685b          	0x4685b
    23ee:	0000                	unimp
    23f0:	0000                	unimp
    23f2:	8000                	0x8000
    23f4:	0004                	0x4
    23f6:	0000                	unimp
    23f8:	0000                	unimp
    23fa:	0100                	addi	s0,sp,128
    23fc:	5b00                	lw	s0,48(a4)
	...
    240e:	0044                	addi	s1,sp,4
    2410:	0000                	unimp
    2412:	0000                	unimp
    2414:	0000                	unimp
    2416:	007c                	addi	a5,sp,12
    2418:	0000                	unimp
    241a:	0000                	unimp
    241c:	0000                	unimp
    241e:	0001                	nop
    2420:	b05c                	fsd	fa5,160(s0)
    2422:	0000                	unimp
    2424:	0000                	unimp
    2426:	0000                	unimp
    2428:	b800                	fsd	fs0,48(s0)
    242a:	0000                	unimp
    242c:	0000                	unimp
    242e:	0000                	unimp
    2430:	0100                	addi	s0,sp,128
    2432:	5c00                	lw	s0,56(s0)
    2434:	00d4                	addi	a3,sp,68
    2436:	0000                	unimp
    2438:	0000                	unimp
    243a:	0000                	unimp
    243c:	00ec                	addi	a1,sp,76
    243e:	0000                	unimp
    2440:	0000                	unimp
    2442:	0000                	unimp
    2444:	0001                	nop
    2446:	145c                	addi	a5,sp,548
    2448:	0001                	nop
    244a:	0000                	unimp
    244c:	0000                	unimp
    244e:	9400                	0x9400
    2450:	0001                	nop
    2452:	0000                	unimp
    2454:	0000                	unimp
    2456:	0100                	addi	s0,sp,128
    2458:	5c00                	lw	s0,56(s0)
    245a:	01fc                	addi	a5,sp,204
    245c:	0000                	unimp
    245e:	0000                	unimp
    2460:	0000                	unimp
    2462:	0214                	addi	a3,sp,256
    2464:	0000                	unimp
    2466:	0000                	unimp
    2468:	0000                	unimp
    246a:	0001                	nop
    246c:	285c                	fld	fa5,144(s0)
    246e:	0002                	c.slli64	zero
    2470:	0000                	unimp
    2472:	0000                	unimp
    2474:	3400                	fld	fs0,40(s0)
    2476:	0002                	c.slli64	zero
    2478:	0000                	unimp
    247a:	0000                	unimp
    247c:	0100                	addi	s0,sp,128
    247e:	5c00                	lw	s0,56(s0)
    2480:	025c                	addi	a5,sp,260
    2482:	0000                	unimp
    2484:	0000                	unimp
    2486:	0000                	unimp
    2488:	0310                	addi	a2,sp,384
    248a:	0000                	unimp
    248c:	0000                	unimp
    248e:	0000                	unimp
    2490:	0001                	nop
    2492:	185c                	addi	a5,sp,52
    2494:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2498:	0000                	unimp
    249a:	2400                	fld	fs0,8(s0)
    249c:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    24a0:	0000                	unimp
    24a2:	0100                	addi	s0,sp,128
    24a4:	5c00                	lw	s0,56(s0)
    24a6:	033c                	addi	a5,sp,392
    24a8:	0000                	unimp
    24aa:	0000                	unimp
    24ac:	0000                	unimp
    24ae:	034c                	addi	a1,sp,388
    24b0:	0000                	unimp
    24b2:	0000                	unimp
    24b4:	0000                	unimp
    24b6:	0001                	nop
    24b8:	545c                	lw	a5,44(s0)
    24ba:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    24be:	0000                	unimp
    24c0:	6800                	ld	s0,16(s0)
    24c2:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    24c6:	0000                	unimp
    24c8:	0100                	addi	s0,sp,128
    24ca:	5c00                	lw	s0,56(s0)
    24cc:	03a4                	addi	s1,sp,456
    24ce:	0000                	unimp
    24d0:	0000                	unimp
    24d2:	0000                	unimp
    24d4:	03b0                	addi	a2,sp,456
    24d6:	0000                	unimp
    24d8:	0000                	unimp
    24da:	0000                	unimp
    24dc:	0001                	nop
    24de:	d05c                	sw	a5,36(s0)
    24e0:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    24e4:	0000                	unimp
    24e6:	dc00                	sw	s0,56(s0)
    24e8:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    24ec:	0000                	unimp
    24ee:	0100                	addi	s0,sp,128
    24f0:	5c00                	lw	s0,56(s0)
    24f2:	0468                	addi	a0,sp,524
    24f4:	0000                	unimp
    24f6:	0000                	unimp
    24f8:	0000                	unimp
    24fa:	0480                	addi	s0,sp,576
    24fc:	0000                	unimp
    24fe:	0000                	unimp
    2500:	0000                	unimp
    2502:	0001                	nop
    2504:	005c                	addi	a5,sp,4
	...
    2512:	0000                	unimp
    2514:	4400                	lw	s0,8(s0)
    2516:	0000                	unimp
    2518:	0000                	unimp
    251a:	0000                	unimp
    251c:	7c00                	ld	s0,56(s0)
    251e:	0000                	unimp
    2520:	0000                	unimp
    2522:	0000                	unimp
    2524:	0100                	addi	s0,sp,128
    2526:	5e00                	lw	s0,56(a2)
    2528:	00b0                	addi	a2,sp,72
    252a:	0000                	unimp
    252c:	0000                	unimp
    252e:	0000                	unimp
    2530:	00b8                	addi	a4,sp,72
    2532:	0000                	unimp
    2534:	0000                	unimp
    2536:	0000                	unimp
    2538:	0001                	nop
    253a:	d45e                	sw	s7,40(sp)
    253c:	0000                	unimp
    253e:	0000                	unimp
    2540:	0000                	unimp
    2542:	0400                	addi	s0,sp,512
    2544:	0001                	nop
    2546:	0000                	unimp
    2548:	0000                	unimp
    254a:	0100                	addi	s0,sp,128
    254c:	5e00                	lw	s0,56(a2)
    254e:	010c                	addi	a1,sp,128
    2550:	0000                	unimp
    2552:	0000                	unimp
    2554:	0000                	unimp
    2556:	0114                	addi	a3,sp,128
    2558:	0000                	unimp
    255a:	0000                	unimp
    255c:	0000                	unimp
    255e:	0001                	nop
    2560:	145d                	addi	s0,s0,-9
    2562:	0001                	nop
    2564:	0000                	unimp
    2566:	0000                	unimp
    2568:	ac00                	fsd	fs0,24(s0)
    256a:	0001                	nop
    256c:	0000                	unimp
    256e:	0000                	unimp
    2570:	0100                	addi	s0,sp,128
    2572:	5e00                	lw	s0,56(a2)
    2574:	01c8                	addi	a0,sp,196
    2576:	0000                	unimp
    2578:	0000                	unimp
    257a:	0000                	unimp
    257c:	0214                	addi	a3,sp,256
    257e:	0000                	unimp
    2580:	0000                	unimp
    2582:	0000                	unimp
    2584:	0001                	nop
    2586:	285e                	fld	fa6,464(sp)
    2588:	0002                	c.slli64	zero
    258a:	0000                	unimp
    258c:	0000                	unimp
    258e:	4c00                	lw	s0,24(s0)
    2590:	0002                	c.slli64	zero
    2592:	0000                	unimp
    2594:	0000                	unimp
    2596:	0100                	addi	s0,sp,128
    2598:	5e00                	lw	s0,56(a2)
    259a:	0254                	addi	a3,sp,260
    259c:	0000                	unimp
    259e:	0000                	unimp
    25a0:	0000                	unimp
    25a2:	025c                	addi	a5,sp,260
    25a4:	0000                	unimp
    25a6:	0000                	unimp
    25a8:	0000                	unimp
    25aa:	0001                	nop
    25ac:	5c5d                	li	s8,-9
    25ae:	0002                	c.slli64	zero
    25b0:	0000                	unimp
    25b2:	0000                	unimp
    25b4:	6800                	ld	s0,16(s0)
    25b6:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    25ba:	0000                	unimp
    25bc:	0100                	addi	s0,sp,128
    25be:	5e00                	lw	s0,56(a2)
    25c0:	03a4                	addi	s1,sp,456
    25c2:	0000                	unimp
    25c4:	0000                	unimp
    25c6:	0000                	unimp
    25c8:	03b8                	addi	a4,sp,456
    25ca:	0000                	unimp
    25cc:	0000                	unimp
    25ce:	0000                	unimp
    25d0:	0001                	nop
    25d2:	d05e                	sw	s7,32(sp)
    25d4:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    25d8:	0000                	unimp
    25da:	f000                	sd	s0,32(s0)
    25dc:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    25e0:	0000                	unimp
    25e2:	0100                	addi	s0,sp,128
    25e4:	5e00                	lw	s0,56(a2)
    25e6:	0468                	addi	a0,sp,524
    25e8:	0000                	unimp
    25ea:	0000                	unimp
    25ec:	0000                	unimp
    25ee:	0480                	addi	s0,sp,576
    25f0:	0000                	unimp
    25f2:	0000                	unimp
    25f4:	0000                	unimp
    25f6:	0001                	nop
    25f8:	005e                	c.slli	zero,0x17
	...
    2606:	0000                	unimp
    2608:	6400                	ld	s0,8(s0)
    260a:	0000                	unimp
    260c:	0000                	unimp
    260e:	0000                	unimp
    2610:	cc00                	sw	s0,24(s0)
    2612:	0001                	nop
    2614:	0000                	unimp
    2616:	0000                	unimp
    2618:	0100                	addi	s0,sp,128
    261a:	5900                	lw	s0,48(a0)
    261c:	01e4                	addi	s1,sp,204
    261e:	0000                	unimp
    2620:	0000                	unimp
    2622:	0000                	unimp
    2624:	01fc                	addi	a5,sp,204
    2626:	0000                	unimp
    2628:	0000                	unimp
    262a:	0000                	unimp
    262c:	0001                	nop
    262e:	0059                	c.nop	22
    2630:	0002                	c.slli64	zero
    2632:	0000                	unimp
    2634:	0000                	unimp
    2636:	7400                	ld	s0,40(s0)
    2638:	0002                	c.slli64	zero
    263a:	0000                	unimp
    263c:	0000                	unimp
    263e:	0100                	addi	s0,sp,128
    2640:	5900                	lw	s0,48(a0)
    2642:	0278                	addi	a4,sp,268
    2644:	0000                	unimp
    2646:	0000                	unimp
    2648:	0000                	unimp
    264a:	02f0                	addi	a2,sp,332
    264c:	0000                	unimp
    264e:	0000                	unimp
    2650:	0000                	unimp
    2652:	0001                	nop
    2654:	0003205b          	0x3205b
    2658:	0000                	unimp
    265a:	0000                	unimp
    265c:	3c00                	fld	fs0,56(s0)
    265e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2662:	0000                	unimp
    2664:	0100                	addi	s0,sp,128
    2666:	5900                	lw	s0,48(a0)
    2668:	0358                	addi	a4,sp,388
    266a:	0000                	unimp
    266c:	0000                	unimp
    266e:	0000                	unimp
    2670:	0364                	addi	s1,sp,396
    2672:	0000                	unimp
    2674:	0000                	unimp
    2676:	0000                	unimp
    2678:	0001                	nop
    267a:	6459                	lui	s0,0x16
    267c:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2680:	0000                	unimp
    2682:	6800                	ld	s0,16(s0)
    2684:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2688:	0000                	unimp
    268a:	0100                	addi	s0,sp,128
    268c:	5b00                	lw	s0,48(a4)
    268e:	0368                	addi	a0,sp,396
    2690:	0000                	unimp
    2692:	0000                	unimp
    2694:	0000                	unimp
    2696:	03b4                	addi	a3,sp,456
    2698:	0000                	unimp
    269a:	0000                	unimp
    269c:	0000                	unimp
    269e:	0001                	nop
    26a0:	b859                	j	1f36 <register_fini-0xe17a>
    26a2:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    26a6:	0000                	unimp
    26a8:	f400                	sd	s0,40(s0)
    26aa:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    26ae:	0000                	unimp
    26b0:	0100                	addi	s0,sp,128
    26b2:	5900                	lw	s0,48(a0)
    26b4:	0434                	addi	a3,sp,520
    26b6:	0000                	unimp
    26b8:	0000                	unimp
    26ba:	0000                	unimp
    26bc:	045c                	addi	a5,sp,516
    26be:	0000                	unimp
    26c0:	0000                	unimp
    26c2:	0000                	unimp
    26c4:	0001                	nop
    26c6:	6859                	lui	a6,0x16
    26c8:	0004                	0x4
    26ca:	0000                	unimp
    26cc:	0000                	unimp
    26ce:	8000                	0x8000
    26d0:	0004                	0x4
    26d2:	0000                	unimp
    26d4:	0000                	unimp
    26d6:	0100                	addi	s0,sp,128
    26d8:	5b00                	lw	s0,48(a4)
	...
    26ea:	0068                	addi	a0,sp,12
    26ec:	0000                	unimp
    26ee:	0000                	unimp
    26f0:	0000                	unimp
    26f2:	0114                	addi	a3,sp,128
    26f4:	0000                	unimp
    26f6:	0000                	unimp
    26f8:	0000                	unimp
    26fa:	0001                	nop
    26fc:	1858                	addi	a4,sp,52
    26fe:	0001                	nop
    2700:	0000                	unimp
    2702:	0000                	unimp
    2704:	8c00                	0x8c00
    2706:	0001                	nop
    2708:	0000                	unimp
    270a:	0000                	unimp
    270c:	0100                	addi	s0,sp,128
    270e:	5c00                	lw	s0,56(s0)
    2710:	019c                	addi	a5,sp,192
    2712:	0000                	unimp
    2714:	0000                	unimp
    2716:	0000                	unimp
    2718:	01c0                	addi	s0,sp,196
    271a:	0000                	unimp
    271c:	0000                	unimp
    271e:	0000                	unimp
    2720:	0002                	c.slli64	zero
    2722:	9f30                	0x9f30
    2724:	01c0                	addi	s0,sp,196
    2726:	0000                	unimp
    2728:	0000                	unimp
    272a:	0000                	unimp
    272c:	01c8                	addi	a0,sp,196
    272e:	0000                	unimp
    2730:	0000                	unimp
    2732:	0000                	unimp
    2734:	0002                	c.slli64	zero
    2736:	9f31                	addw	a4,a4,a2
    2738:	01c8                	addi	a0,sp,196
    273a:	0000                	unimp
    273c:	0000                	unimp
    273e:	0000                	unimp
    2740:	01e4                	addi	s1,sp,204
    2742:	0000                	unimp
    2744:	0000                	unimp
    2746:	0000                	unimp
    2748:	0004                	0x4
    274a:	ff0a                	sd	sp,440(sp)
    274c:	01e49f07          	0x1e49f07
    2750:	0000                	unimp
    2752:	0000                	unimp
    2754:	0000                	unimp
    2756:	01fc                	addi	a5,sp,204
    2758:	0000                	unimp
    275a:	0000                	unimp
    275c:	0000                	unimp
    275e:	0001                	nop
    2760:	005d                	c.nop	23
    2762:	0002                	c.slli64	zero
    2764:	0000                	unimp
    2766:	0000                	unimp
    2768:	7400                	ld	s0,40(s0)
    276a:	0002                	c.slli64	zero
    276c:	0000                	unimp
    276e:	0000                	unimp
    2770:	0100                	addi	s0,sp,128
    2772:	5800                	lw	s0,48(s0)
    2774:	0278                	addi	a4,sp,268
    2776:	0000                	unimp
    2778:	0000                	unimp
    277a:	0000                	unimp
    277c:	02f0                	addi	a2,sp,332
    277e:	0000                	unimp
    2780:	0000                	unimp
    2782:	0000                	unimp
    2784:	0001                	nop
    2786:	005c                	addi	a5,sp,4
    2788:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    278c:	0000                	unimp
    278e:	1000                	addi	s0,sp,32
    2790:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2794:	0000                	unimp
    2796:	0200                	addi	s0,sp,256
    2798:	3000                	fld	fs0,32(s0)
    279a:	189f 0003 0000      	0x3189f
    27a0:	0000                	unimp
    27a2:	3c00                	fld	fs0,56(s0)
    27a4:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    27a8:	0000                	unimp
    27aa:	0200                	addi	s0,sp,256
    27ac:	3000                	fld	fs0,32(s0)
    27ae:	3c9f 0003 0000      	0x33c9f
    27b4:	0000                	unimp
    27b6:	4c00                	lw	s0,24(s0)
    27b8:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    27bc:	0000                	unimp
    27be:	0400                	addi	s0,sp,512
    27c0:	0a00                	addi	s0,sp,272
    27c2:	07ff                	0x7ff
    27c4:	549f 0003 0000      	0x3549f
    27ca:	0000                	unimp
    27cc:	8800                	0x8800
    27ce:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    27d2:	0000                	unimp
    27d4:	0100                	addi	s0,sp,128
    27d6:	5800                	lw	s0,48(s0)
    27d8:	039c                	addi	a5,sp,448
    27da:	0000                	unimp
    27dc:	0000                	unimp
    27de:	0000                	unimp
    27e0:	03a4                	addi	s1,sp,456
    27e2:	0000                	unimp
    27e4:	0000                	unimp
    27e6:	0000                	unimp
    27e8:	0002                	c.slli64	zero
    27ea:	9f30                	0x9f30
    27ec:	03a4                	addi	s1,sp,456
    27ee:	0000                	unimp
    27f0:	0000                	unimp
    27f2:	0000                	unimp
    27f4:	03b0                	addi	a2,sp,456
    27f6:	0000                	unimp
    27f8:	0000                	unimp
    27fa:	0000                	unimp
    27fc:	0001                	nop
    27fe:	b858                	fsd	fa4,176(s0)
    2800:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2804:	0000                	unimp
    2806:	d000                	sw	s0,32(s0)
    2808:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    280c:	0000                	unimp
    280e:	0100                	addi	s0,sp,128
    2810:	5800                	lw	s0,48(s0)
    2812:	03d0                	addi	a2,sp,452
    2814:	0000                	unimp
    2816:	0000                	unimp
    2818:	0000                	unimp
    281a:	03dc                	addi	a5,sp,452
    281c:	0000                	unimp
    281e:	0000                	unimp
    2820:	0000                	unimp
    2822:	0001                	nop
    2824:	dc5c                	sw	a5,60(s0)
    2826:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    282a:	0000                	unimp
    282c:	e400                	sd	s0,8(s0)
    282e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2832:	0000                	unimp
    2834:	0200                	addi	s0,sp,256
    2836:	3000                	fld	fs0,32(s0)
    2838:	ec9f 0003 0000      	0x3ec9f
    283e:	0000                	unimp
    2840:	f000                	sd	s0,32(s0)
    2842:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2846:	0000                	unimp
    2848:	0100                	addi	s0,sp,128
    284a:	5d00                	lw	s0,56(a0)
    284c:	0400                	addi	s0,sp,512
    284e:	0000                	unimp
    2850:	0000                	unimp
    2852:	0000                	unimp
    2854:	0424                	addi	s1,sp,520
    2856:	0000                	unimp
    2858:	0000                	unimp
    285a:	0000                	unimp
    285c:	0001                	nop
    285e:	2458                	fld	fa4,136(s0)
    2860:	0004                	0x4
    2862:	0000                	unimp
    2864:	0000                	unimp
    2866:	3400                	fld	fs0,40(s0)
    2868:	0004                	0x4
    286a:	0000                	unimp
    286c:	0000                	unimp
    286e:	0400                	addi	s0,sp,512
    2870:	0a00                	addi	s0,sp,272
    2872:	07ff                	0x7ff
    2874:	689f 0004 0000      	0x4689f
    287a:	0000                	unimp
    287c:	8000                	0x8000
    287e:	0004                	0x4
    2880:	0000                	unimp
    2882:	0000                	unimp
    2884:	0100                	addi	s0,sp,128
    2886:	5c00                	lw	s0,56(s0)
    2888:	0480                	addi	s0,sp,576
    288a:	0000                	unimp
    288c:	0000                	unimp
    288e:	0000                	unimp
    2890:	0488                	addi	a0,sp,576
    2892:	0000                	unimp
    2894:	0000                	unimp
    2896:	0000                	unimp
    2898:	0001                	nop
    289a:	0058                	addi	a4,sp,4
	...
    28a8:	0000                	unimp
    28aa:	7c00                	ld	s0,56(s0)
    28ac:	0000                	unimp
    28ae:	0000                	unimp
    28b0:	0000                	unimp
    28b2:	8400                	0x8400
    28b4:	0000                	unimp
    28b6:	0000                	unimp
    28b8:	0000                	unimp
    28ba:	0100                	addi	s0,sp,128
    28bc:	5f00                	lw	s0,56(a4)
    28be:	0084                	addi	s1,sp,64
    28c0:	0000                	unimp
    28c2:	0000                	unimp
    28c4:	0000                	unimp
    28c6:	0088                	addi	a0,sp,64
    28c8:	0000                	unimp
    28ca:	0000                	unimp
    28cc:	0000                	unimp
    28ce:	000e                	c.slli	zero,0x3
    28d0:	007f                	0x7f
    28d2:	ff11                	bnez	a4,27ee <register_fini-0xd8c2>
    28d4:	ffff                	0xffff
    28d6:	ffff                	0xffff
    28d8:	ffff                	0xffff
    28da:	9f1a7fbf 00000088 	0x889f1a7fbf
    28e2:	0000                	unimp
    28e4:	0000                	unimp
    28e6:	009c                	addi	a5,sp,64
    28e8:	0000                	unimp
    28ea:	0000                	unimp
    28ec:	0000                	unimp
    28ee:	0015                	c.nop	5
    28f0:	007f                	0x7f
    28f2:	2531                	addiw	a0,a0,12
    28f4:	ff10                	sd	a2,56(a4)
    28f6:	ffff                	0xffff
    28f8:	ffff                	0xffff
    28fa:	ffff                	0xffff
    28fc:	7fdf 7f1a 3100      	0x31007f1a7fdf
    2902:	211a                	fld	ft2,384(sp)
    2904:	9c9f 0000 0000      	0x9c9f
    290a:	0000                	unimp
    290c:	a400                	fsd	fs0,8(s0)
    290e:	0000                	unimp
    2910:	0000                	unimp
    2912:	0000                	unimp
    2914:	1300                	addi	s0,sp,416
    2916:	7f00                	ld	s0,56(a4)
    2918:	3100                	fld	fs0,32(a0)
    291a:	1025                	c.nop	-23
    291c:	ffff                	0xffff
    291e:	ffff                	0xffff
    2920:	ffff                	0xffff
    2922:	dfff                	0xdfff
    2924:	1a7f                	0x1a7f
    2926:	007d                	c.nop	31
    2928:	9f21                	addw	a4,a4,s0
    292a:	00a4                	addi	s1,sp,72
    292c:	0000                	unimp
    292e:	0000                	unimp
    2930:	0000                	unimp
    2932:	00a8                	addi	a0,sp,72
    2934:	0000                	unimp
    2936:	0000                	unimp
    2938:	0000                	unimp
    293a:	0011                	c.nop	4
    293c:	007f                	0x7f
    293e:	ff10                	sd	a2,56(a4)
    2940:	ffff                	0xffff
    2942:	ffff                	0xffff
    2944:	ffff                	0xffff
    2946:	7fdf 7d1a 2100      	0x21007d1a7fdf
    294c:	b89f 0000 0000      	0xb89f
    2952:	0000                	unimp
    2954:	d400                	sw	s0,40(s0)
    2956:	0000                	unimp
    2958:	0000                	unimp
    295a:	0000                	unimp
    295c:	0100                	addi	s0,sp,128
    295e:	5f00                	lw	s0,56(a4)
    2960:	0110                	addi	a2,sp,128
    2962:	0000                	unimp
    2964:	0000                	unimp
    2966:	0000                	unimp
    2968:	0114                	addi	a3,sp,128
    296a:	0000                	unimp
    296c:	0000                	unimp
    296e:	0000                	unimp
    2970:	0001                	nop
    2972:	2c5f 0001 0000      	0x12c5f
    2978:	0000                	unimp
    297a:	3400                	fld	fs0,40(s0)
    297c:	0001                	nop
    297e:	0000                	unimp
    2980:	0000                	unimp
    2982:	0100                	addi	s0,sp,128
    2984:	5f00                	lw	s0,56(a4)
    2986:	01a8                	addi	a0,sp,200
    2988:	0000                	unimp
    298a:	0000                	unimp
    298c:	0000                	unimp
    298e:	01c8                	addi	a0,sp,196
    2990:	0000                	unimp
    2992:	0000                	unimp
    2994:	0000                	unimp
    2996:	0001                	nop
    2998:	e45f 0001 0000      	0x1e45f
    299e:	0000                	unimp
    29a0:	f000                	sd	s0,32(s0)
    29a2:	0001                	nop
    29a4:	0000                	unimp
    29a6:	0000                	unimp
    29a8:	0800                	addi	s0,sp,16
    29aa:	7f00                	ld	s0,56(a4)
    29ac:	7e00                	ld	s0,56(a2)
    29ae:	2200                	fld	fs0,0(a2)
    29b0:	2531                	addiw	a0,a0,12
    29b2:	f09f 0001 0000      	0x1f09f
    29b8:	0000                	unimp
    29ba:	f400                	sd	s0,40(s0)
    29bc:	0001                	nop
    29be:	0000                	unimp
    29c0:	0000                	unimp
    29c2:	0500                	addi	s0,sp,640
    29c4:	7f00                	ld	s0,56(a4)
    29c6:	3100                	fld	fs0,32(a0)
    29c8:	9f25                	addw	a4,a4,s1
    29ca:	0214                	addi	a3,sp,256
    29cc:	0000                	unimp
    29ce:	0000                	unimp
    29d0:	0000                	unimp
    29d2:	0220                	addi	s0,sp,264
    29d4:	0000                	unimp
    29d6:	0000                	unimp
    29d8:	0000                	unimp
    29da:	0001                	nop
    29dc:	245f 0002 0000      	0x2245f
    29e2:	0000                	unimp
    29e4:	2800                	fld	fs0,16(s0)
    29e6:	0002                	c.slli64	zero
    29e8:	0000                	unimp
    29ea:	0000                	unimp
    29ec:	0100                	addi	s0,sp,128
    29ee:	6200                	ld	s0,0(a2)
    29f0:	0258                	addi	a4,sp,260
    29f2:	0000                	unimp
    29f4:	0000                	unimp
    29f6:	0000                	unimp
    29f8:	025c                	addi	a5,sp,260
    29fa:	0000                	unimp
    29fc:	0000                	unimp
    29fe:	0000                	unimp
    2a00:	0001                	nop
    2a02:	8c5f 0002 0000      	0x28c5f
    2a08:	0000                	unimp
    2a0a:	9800                	0x9800
    2a0c:	0002                	c.slli64	zero
    2a0e:	0000                	unimp
    2a10:	0000                	unimp
    2a12:	0100                	addi	s0,sp,128
    2a14:	5f00                	lw	s0,56(a4)
    2a16:	0304                	addi	s1,sp,384
    2a18:	0000                	unimp
    2a1a:	0000                	unimp
    2a1c:	0000                	unimp
    2a1e:	0310                	addi	a2,sp,384
    2a20:	0000                	unimp
    2a22:	0000                	unimp
    2a24:	0000                	unimp
    2a26:	0001                	nop
    2a28:	205e                	fld	ft0,464(sp)
    2a2a:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2a2e:	0000                	unimp
    2a30:	3c00                	fld	fs0,56(s0)
    2a32:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2a36:	0000                	unimp
    2a38:	0100                	addi	s0,sp,128
    2a3a:	5d00                	lw	s0,56(a0)
    2a3c:	0358                	addi	a4,sp,388
    2a3e:	0000                	unimp
    2a40:	0000                	unimp
    2a42:	0000                	unimp
    2a44:	0394                	addi	a3,sp,448
    2a46:	0000                	unimp
    2a48:	0000                	unimp
    2a4a:	0000                	unimp
    2a4c:	0001                	nop
    2a4e:	9c62                	add	s8,s8,s8
    2a50:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2a54:	0000                	unimp
    2a56:	a400                	fsd	fs0,8(s0)
    2a58:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2a5c:	0000                	unimp
    2a5e:	0100                	addi	s0,sp,128
    2a60:	5f00                	lw	s0,56(a4)
    2a62:	03a4                	addi	s1,sp,456
    2a64:	0000                	unimp
    2a66:	0000                	unimp
    2a68:	0000                	unimp
    2a6a:	03b0                	addi	a2,sp,456
    2a6c:	0000                	unimp
    2a6e:	0000                	unimp
    2a70:	0000                	unimp
    2a72:	0001                	nop
    2a74:	b862                	fsd	fs8,48(sp)
    2a76:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2a7a:	0000                	unimp
    2a7c:	cc00                	sw	s0,24(s0)
    2a7e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2a82:	0000                	unimp
    2a84:	0100                	addi	s0,sp,128
    2a86:	6200                	ld	s0,0(a2)
    2a88:	03cc                	addi	a1,sp,452
    2a8a:	0000                	unimp
    2a8c:	0000                	unimp
    2a8e:	0000                	unimp
    2a90:	03d0                	addi	a2,sp,452
    2a92:	0000                	unimp
    2a94:	0000                	unimp
    2a96:	0000                	unimp
    2a98:	0001                	nop
    2a9a:	ec5f 0003 0000      	0x3ec5f
    2aa0:	0000                	unimp
    2aa2:	f000                	sd	s0,32(s0)
    2aa4:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2aa8:	0000                	unimp
    2aaa:	0800                	addi	s0,sp,16
    2aac:	7f00                	ld	s0,56(a4)
    2aae:	7e00                	ld	s0,56(a2)
    2ab0:	2200                	fld	fs0,0(a2)
    2ab2:	2531                	addiw	a0,a0,12
    2ab4:	f49f 0003 0000      	0x3f49f
    2aba:	0000                	unimp
    2abc:	fc00                	sd	s0,56(s0)
    2abe:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2ac2:	0000                	unimp
    2ac4:	0100                	addi	s0,sp,128
    2ac6:	5f00                	lw	s0,56(a4)
    2ac8:	03fc                	addi	a5,sp,460
    2aca:	0000                	unimp
    2acc:	0000                	unimp
    2ace:	0000                	unimp
    2ad0:	0418                	addi	a4,sp,512
    2ad2:	0000                	unimp
    2ad4:	0000                	unimp
    2ad6:	0000                	unimp
    2ad8:	000e                	c.slli	zero,0x3
    2ada:	007f                	0x7f
    2adc:	ff11                	bnez	a4,29f8 <register_fini-0xd6b8>
    2ade:	ffff                	0xffff
    2ae0:	ffff                	0xffff
    2ae2:	ffff                	0xffff
    2ae4:	9f1a7fbf 00000418 	0x4189f1a7fbf
    2aec:	0000                	unimp
    2aee:	0000                	unimp
    2af0:	042c                	addi	a1,sp,520
    2af2:	0000                	unimp
    2af4:	0000                	unimp
    2af6:	0000                	unimp
    2af8:	0001                	nop
    2afa:	345f 0004 0000      	0x4345f
    2b00:	0000                	unimp
    2b02:	3c00                	fld	fs0,56(s0)
    2b04:	0004                	0x4
    2b06:	0000                	unimp
    2b08:	0000                	unimp
    2b0a:	0100                	addi	s0,sp,128
    2b0c:	5f00                	lw	s0,56(a4)
    2b0e:	0480                	addi	s0,sp,576
    2b10:	0000                	unimp
    2b12:	0000                	unimp
    2b14:	0000                	unimp
    2b16:	0484                	addi	s1,sp,576
    2b18:	0000                	unimp
    2b1a:	0000                	unimp
    2b1c:	0000                	unimp
    2b1e:	000e                	c.slli	zero,0x3
    2b20:	007f                	0x7f
    2b22:	ff11                	bnez	a4,2a3e <register_fini-0xd672>
    2b24:	ffff                	0xffff
    2b26:	ffff                	0xffff
    2b28:	ffff                	0xffff
    2b2a:	9f1a7fbf 00000000 	0x9f1a7fbf
	...
    2b3e:	0454                	addi	a3,sp,516
    2b40:	0000                	unimp
    2b42:	0000                	unimp
    2b44:	0000                	unimp
    2b46:	0460                	addi	s0,sp,524
    2b48:	0000                	unimp
    2b4a:	0000                	unimp
    2b4c:	0000                	unimp
    2b4e:	0008                	0x8
    2b50:	007f                	0x7f
    2b52:	007a                	c.slli	zero,0x1e
    2b54:	f921                	bnez	a0,2aa4 <register_fini-0xd60c>
    2b56:	9f2d                	addw	a4,a4,a1
    2b58:	0460                	addi	s0,sp,524
    2b5a:	0000                	unimp
    2b5c:	0000                	unimp
    2b5e:	0000                	unimp
    2b60:	0468                	addi	a0,sp,524
    2b62:	0000                	unimp
    2b64:	0000                	unimp
    2b66:	0000                	unimp
    2b68:	0001                	nop
    2b6a:	005a                	c.slli	zero,0x16
	...
    2b78:	0000                	unimp
    2b7a:	7400                	ld	s0,40(s0)
    2b7c:	0000                	unimp
    2b7e:	0000                	unimp
    2b80:	0000                	unimp
    2b82:	7c00                	ld	s0,56(s0)
    2b84:	0000                	unimp
    2b86:	0000                	unimp
    2b88:	0000                	unimp
    2b8a:	0300                	addi	s0,sp,384
    2b8c:	7d00                	ld	s0,56(a0)
    2b8e:	9f7f                	0x9f7f
    2b90:	00b0                	addi	a2,sp,72
    2b92:	0000                	unimp
    2b94:	0000                	unimp
    2b96:	0000                	unimp
    2b98:	00b4                	addi	a3,sp,72
    2b9a:	0000                	unimp
    2b9c:	0000                	unimp
    2b9e:	0000                	unimp
    2ba0:	7f7d0003          	lb	zero,2039(s10)
    2ba4:	b49f 0000 0000      	0xb49f
    2baa:	0000                	unimp
    2bac:	b800                	fsd	fs0,48(s0)
    2bae:	0000                	unimp
    2bb0:	0000                	unimp
    2bb2:	0000                	unimp
    2bb4:	0700                	addi	s0,sp,896
    2bb6:	7c00                	ld	s0,56(s0)
    2bb8:	2000                	fld	fs0,0(s0)
    2bba:	0080                	addi	s0,sp,64
    2bbc:	9f22                	add	t5,t5,s0
    2bbe:	00e8                	addi	a0,sp,76
    2bc0:	0000                	unimp
    2bc2:	0000                	unimp
    2bc4:	0000                	unimp
    2bc6:	0100                	addi	s0,sp,128
    2bc8:	0000                	unimp
    2bca:	0000                	unimp
    2bcc:	0000                	unimp
    2bce:	0001                	nop
    2bd0:	185a                	slli	a6,a6,0x36
    2bd2:	0001                	nop
    2bd4:	0000                	unimp
    2bd6:	0000                	unimp
    2bd8:	2000                	fld	fs0,0(s0)
    2bda:	0001                	nop
    2bdc:	0000                	unimp
    2bde:	0000                	unimp
    2be0:	0400                	addi	s0,sp,512
    2be2:	7d00                	ld	s0,56(a0)
    2be4:	1f00                	addi	s0,sp,944
    2be6:	209f 0001 0000      	0x1209f
    2bec:	0000                	unimp
    2bee:	2c00                	fld	fs0,24(s0)
    2bf0:	0001                	nop
    2bf2:	0000                	unimp
    2bf4:	0000                	unimp
    2bf6:	0400                	addi	s0,sp,512
    2bf8:	7d00                	ld	s0,56(a0)
    2bfa:	2000                	fld	fs0,0(s0)
    2bfc:	349f 0001 0000      	0x1349f
    2c02:	0000                	unimp
    2c04:	4000                	lw	s0,0(s0)
    2c06:	0001                	nop
    2c08:	0000                	unimp
    2c0a:	0000                	unimp
    2c0c:	0400                	addi	s0,sp,512
    2c0e:	7d00                	ld	s0,56(a0)
    2c10:	2000                	fld	fs0,0(s0)
    2c12:	409f 0001 0000      	0x1409f
    2c18:	0000                	unimp
    2c1a:	4400                	lw	s0,8(s0)
    2c1c:	0001                	nop
    2c1e:	0000                	unimp
    2c20:	0000                	unimp
    2c22:	0400                	addi	s0,sp,512
    2c24:	7a00                	ld	s0,48(a2)
    2c26:	2000                	fld	fs0,0(s0)
    2c28:	449f 0001 0000      	0x1449f
    2c2e:	0000                	unimp
    2c30:	5c00                	lw	s0,56(s0)
    2c32:	0001                	nop
    2c34:	0000                	unimp
    2c36:	0000                	unimp
    2c38:	0100                	addi	s0,sp,128
    2c3a:	5d00                	lw	s0,56(a0)
    2c3c:	0170                	addi	a2,sp,140
    2c3e:	0000                	unimp
    2c40:	0000                	unimp
    2c42:	0000                	unimp
    2c44:	0184                	addi	s1,sp,192
    2c46:	0000                	unimp
    2c48:	0000                	unimp
    2c4a:	0000                	unimp
    2c4c:	0004                	0x4
    2c4e:	007d                	c.nop	31
    2c50:	9f1f 0184 0000      	0x1849f1f
    2c56:	0000                	unimp
    2c58:	0000                	unimp
    2c5a:	018c                	addi	a1,sp,192
    2c5c:	0000                	unimp
    2c5e:	0000                	unimp
    2c60:	0000                	unimp
    2c62:	0004                	0x4
    2c64:	007a                	c.slli	zero,0x1e
    2c66:	9f1f 03d0 0000      	0x3d09f1f
    2c6c:	0000                	unimp
    2c6e:	0000                	unimp
    2c70:	03dc                	addi	a5,sp,452
    2c72:	0000                	unimp
    2c74:	0000                	unimp
    2c76:	0000                	unimp
    2c78:	0004                	0x4
    2c7a:	007d                	c.nop	31
    2c7c:	9f1f 0000 0000      	0x9f1f
	...
    2c8e:	020c                	addi	a1,sp,256
    2c90:	0000                	unimp
    2c92:	0000                	unimp
    2c94:	0000                	unimp
    2c96:	0214                	addi	a3,sp,256
    2c98:	0000                	unimp
    2c9a:	0000                	unimp
    2c9c:	0000                	unimp
    2c9e:	7f7d0003          	lb	zero,2039(s10)
    2ca2:	289f 0002 0000      	0x2289f
    2ca8:	0000                	unimp
    2caa:	2c00                	fld	fs0,24(s0)
    2cac:	0002                	c.slli64	zero
    2cae:	0000                	unimp
    2cb0:	0000                	unimp
    2cb2:	0300                	addi	s0,sp,384
    2cb4:	7d00                	ld	s0,56(a0)
    2cb6:	9f7f                	0x9f7f
    2cb8:	022c                	addi	a1,sp,264
    2cba:	0000                	unimp
    2cbc:	0000                	unimp
    2cbe:	0000                	unimp
    2cc0:	0230                	addi	a2,sp,264
    2cc2:	0000                	unimp
    2cc4:	0000                	unimp
    2cc6:	0000                	unimp
    2cc8:	007c0007          	0x7c0007
    2ccc:	8020                	0x8020
    2cce:	2200                	fld	fs0,0(a2)
    2cd0:	309f 0002 0000      	0x2309f
    2cd6:	0000                	unimp
    2cd8:	4800                	lw	s0,16(s0)
    2cda:	0002                	c.slli64	zero
    2cdc:	0000                	unimp
    2cde:	0000                	unimp
    2ce0:	0100                	addi	s0,sp,128
    2ce2:	5a00                	lw	s0,48(a2)
    2ce4:	0278                	addi	a4,sp,268
    2ce6:	0000                	unimp
    2ce8:	0000                	unimp
    2cea:	0000                	unimp
    2cec:	0280                	addi	s0,sp,320
    2cee:	0000                	unimp
    2cf0:	0000                	unimp
    2cf2:	0000                	unimp
    2cf4:	0004                	0x4
    2cf6:	007d                	c.nop	31
    2cf8:	9f1f 0280 0000      	0x2809f1f
    2cfe:	0000                	unimp
    2d00:	0000                	unimp
    2d02:	028c                	addi	a1,sp,320
    2d04:	0000                	unimp
    2d06:	0000                	unimp
    2d08:	0000                	unimp
    2d0a:	0004                	0x4
    2d0c:	007d                	c.nop	31
    2d0e:	9f20                	0x9f20
    2d10:	0298                	addi	a4,sp,320
    2d12:	0000                	unimp
    2d14:	0000                	unimp
    2d16:	0000                	unimp
    2d18:	02a4                	addi	s1,sp,328
    2d1a:	0000                	unimp
    2d1c:	0000                	unimp
    2d1e:	0000                	unimp
    2d20:	0004                	0x4
    2d22:	007d                	c.nop	31
    2d24:	9f20                	0x9f20
    2d26:	02a8                	addi	a0,sp,328
    2d28:	0000                	unimp
    2d2a:	0000                	unimp
    2d2c:	0000                	unimp
    2d2e:	02c0                	addi	s0,sp,324
    2d30:	0000                	unimp
    2d32:	0000                	unimp
    2d34:	0000                	unimp
    2d36:	0001                	nop
    2d38:	d45d                	beqz	s0,2ce6 <register_fini-0xd3ca>
    2d3a:	0002                	c.slli64	zero
    2d3c:	0000                	unimp
    2d3e:	0000                	unimp
    2d40:	e800                	sd	s0,16(s0)
    2d42:	0002                	c.slli64	zero
    2d44:	0000                	unimp
    2d46:	0000                	unimp
    2d48:	0400                	addi	s0,sp,512
    2d4a:	7d00                	ld	s0,56(a0)
    2d4c:	1f00                	addi	s0,sp,944
    2d4e:	e89f 0002 0000      	0x2e89f
    2d54:	0000                	unimp
    2d56:	f000                	sd	s0,32(s0)
    2d58:	0002                	c.slli64	zero
    2d5a:	0000                	unimp
    2d5c:	0000                	unimp
    2d5e:	0600                	addi	s0,sp,768
    2d60:	7c00                	ld	s0,56(s0)
    2d62:	8000                	0x8000
    2d64:	1c00                	addi	s0,sp,560
    2d66:	689f 0004 0000      	0x4689f
    2d6c:	0000                	unimp
    2d6e:	7400                	ld	s0,40(s0)
    2d70:	0004                	0x4
    2d72:	0000                	unimp
    2d74:	0000                	unimp
    2d76:	0400                	addi	s0,sp,512
    2d78:	7d00                	ld	s0,56(a0)
    2d7a:	1f00                	addi	s0,sp,944
    2d7c:	009f 0000 0000      	0x9f
	...
    2d8a:	0000                	unimp
    2d8c:	7000                	ld	s0,32(s0)
    2d8e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2d92:	0000                	unimp
    2d94:	7400                	ld	s0,40(s0)
    2d96:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2d9a:	0000                	unimp
    2d9c:	0100                	addi	s0,sp,128
    2d9e:	5a00                	lw	s0,48(a2)
    2da0:	0374                	addi	a3,sp,396
    2da2:	0000                	unimp
    2da4:	0000                	unimp
    2da6:	0000                	unimp
    2da8:	0384                	addi	s1,sp,448
    2daa:	0000                	unimp
    2dac:	0000                	unimp
    2dae:	0000                	unimp
    2db0:	0001                	nop
    2db2:	845f 0003 0000      	0x3845f
    2db8:	0000                	unimp
    2dba:	9000                	0x9000
    2dbc:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2dc0:	0000                	unimp
    2dc2:	0100                	addi	s0,sp,128
    2dc4:	5a00                	lw	s0,48(a2)
    2dc6:	03b8                	addi	a4,sp,456
    2dc8:	0000                	unimp
    2dca:	0000                	unimp
    2dcc:	0000                	unimp
    2dce:	03c0                	addi	s0,sp,452
    2dd0:	0000                	unimp
    2dd2:	0000                	unimp
    2dd4:	0000                	unimp
    2dd6:	0001                	nop
    2dd8:	c05f 0003 0000      	0x3c05f
    2dde:	0000                	unimp
    2de0:	d000                	sw	s0,32(s0)
    2de2:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2de6:	0000                	unimp
    2de8:	0300                	addi	s0,sp,384
    2dea:	7a00                	ld	s0,48(a2)
    2dec:	9f78                	0x9f78
	...
    2e06:	0030                	addi	a2,sp,8
    2e08:	0000                	unimp
    2e0a:	0000                	unimp
    2e0c:	0000                	unimp
    2e0e:	0001                	nop
    2e10:	305a                	fld	ft0,432(sp)
    2e12:	0000                	unimp
    2e14:	0000                	unimp
    2e16:	0000                	unimp
    2e18:	7400                	ld	s0,40(s0)
    2e1a:	0000                	unimp
    2e1c:	0000                	unimp
    2e1e:	0000                	unimp
    2e20:	0400                	addi	s0,sp,512
    2e22:	f300                	sd	s0,32(a4)
    2e24:	5a01                	li	s4,-32
    2e26:	749f 0000 0000      	0x749f
    2e2c:	0000                	unimp
    2e2e:	8400                	0x8400
    2e30:	0000                	unimp
    2e32:	0000                	unimp
    2e34:	0000                	unimp
    2e36:	0100                	addi	s0,sp,128
    2e38:	5a00                	lw	s0,48(a2)
	...
    2e4a:	001c                	0x1c
    2e4c:	0000                	unimp
    2e4e:	0000                	unimp
    2e50:	0000                	unimp
    2e52:	0068                	addi	a0,sp,12
    2e54:	0000                	unimp
    2e56:	0000                	unimp
    2e58:	0000                	unimp
    2e5a:	0001                	nop
    2e5c:	0059                	c.nop	22
	...
    2e6a:	0000                	unimp
    2e6c:	3c00                	fld	fs0,56(s0)
    2e6e:	0000                	unimp
    2e70:	0000                	unimp
    2e72:	0000                	unimp
    2e74:	5800                	lw	s0,48(s0)
    2e76:	0000                	unimp
    2e78:	0000                	unimp
    2e7a:	0000                	unimp
    2e7c:	0100                	addi	s0,sp,128
    2e7e:	5e00                	lw	s0,56(a2)
	...
    2e90:	003c                	addi	a5,sp,8
    2e92:	0000                	unimp
    2e94:	0000                	unimp
    2e96:	0000                	unimp
    2e98:	0048                	addi	a0,sp,4
    2e9a:	0000                	unimp
    2e9c:	0000                	unimp
    2e9e:	0000                	unimp
    2ea0:	0001                	nop
    2ea2:	4858                	lw	a4,20(s0)
    2ea4:	0000                	unimp
    2ea6:	0000                	unimp
    2ea8:	0000                	unimp
    2eaa:	5400                	lw	s0,40(s0)
    2eac:	0000                	unimp
    2eae:	0000                	unimp
    2eb0:	0000                	unimp
    2eb2:	0100                	addi	s0,sp,128
    2eb4:	5f00                	lw	s0,56(a4)
	...
    2ec6:	0064                	addi	s1,sp,12
    2ec8:	0000                	unimp
    2eca:	0000                	unimp
    2ecc:	0000                	unimp
    2ece:	006c                	addi	a1,sp,12
    2ed0:	0000                	unimp
    2ed2:	0000                	unimp
    2ed4:	0000                	unimp
    2ed6:	0008                	0x8
    2ed8:	007f                	0x7f
    2eda:	007a                	c.slli	zero,0x1e
    2edc:	f921                	bnez	a0,2e2c <register_fini-0xd284>
    2ede:	9f2d                	addw	a4,a4,a1
    2ee0:	006c                	addi	a1,sp,12
    2ee2:	0000                	unimp
    2ee4:	0000                	unimp
    2ee6:	0000                	unimp
    2ee8:	0074                	addi	a3,sp,12
    2eea:	0000                	unimp
    2eec:	0000                	unimp
    2eee:	0000                	unimp
    2ef0:	0001                	nop
    2ef2:	005a                	c.slli	zero,0x16
	...
    2f00:	0000                	unimp
    2f02:	1800                	addi	s0,sp,48
    2f04:	0000                	unimp
    2f06:	0000                	unimp
    2f08:	0000                	unimp
    2f0a:	3300                	fld	fs0,32(a4)
    2f0c:	0000                	unimp
    2f0e:	0000                	unimp
    2f10:	0000                	unimp
    2f12:	0100                	addi	s0,sp,128
    2f14:	5f00                	lw	s0,56(a4)
	...
    2f26:	0034                	addi	a3,sp,8
    2f28:	0000                	unimp
    2f2a:	0000                	unimp
    2f2c:	0000                	unimp
    2f2e:	0048                	addi	a0,sp,4
    2f30:	0000                	unimp
    2f32:	0000                	unimp
    2f34:	0000                	unimp
    2f36:	0001                	nop
    2f38:	005a                	c.slli	zero,0x16
	...
    2f4e:	0000                	unimp
    2f50:	2000                	fld	fs0,0(s0)
    2f52:	0000                	unimp
    2f54:	0000                	unimp
    2f56:	0000                	unimp
    2f58:	0100                	addi	s0,sp,128
    2f5a:	5a00                	lw	s0,48(a2)
    2f5c:	0020                	addi	s0,sp,8
    2f5e:	0000                	unimp
    2f60:	0000                	unimp
    2f62:	0000                	unimp
    2f64:	00a4                	addi	s1,sp,72
    2f66:	0000                	unimp
    2f68:	0000                	unimp
    2f6a:	0000                	unimp
    2f6c:	0006                	c.slli	zero,0x1
    2f6e:	0af503f3          	0xaf503f3
    2f72:	9f34                	0x9f34
	...
    2f8c:	0038                	addi	a4,sp,8
    2f8e:	0000                	unimp
    2f90:	0000                	unimp
    2f92:	0000                	unimp
    2f94:	0002                	c.slli64	zero
    2f96:	9f30                	0x9f30
    2f98:	0064                	addi	s1,sp,12
    2f9a:	0000                	unimp
    2f9c:	0000                	unimp
    2f9e:	0000                	unimp
    2fa0:	0090                	addi	a2,sp,64
    2fa2:	0000                	unimp
    2fa4:	0000                	unimp
    2fa6:	0000                	unimp
    2fa8:	0002                	c.slli64	zero
    2faa:	9f30                	0x9f30
	...
    2fbc:	002c                	addi	a1,sp,8
    2fbe:	0000                	unimp
    2fc0:	0000                	unimp
    2fc2:	0000                	unimp
    2fc4:	005c                	addi	a5,sp,4
    2fc6:	0000                	unimp
    2fc8:	0000                	unimp
    2fca:	0000                	unimp
    2fcc:	0006                	c.slli	zero,0x1
    2fce:	0079                	c.nop	30
    2fd0:	ff08                	sd	a0,56(a4)
    2fd2:	9f1a                	add	t5,t5,t1
    2fd4:	0064                	addi	s1,sp,12
    2fd6:	0000                	unimp
    2fd8:	0000                	unimp
    2fda:	0000                	unimp
    2fdc:	00a4                	addi	s1,sp,72
    2fde:	0000                	unimp
    2fe0:	0000                	unimp
    2fe2:	0000                	unimp
    2fe4:	0006                	c.slli	zero,0x1
    2fe6:	0079                	c.nop	30
    2fe8:	ff08                	sd	a0,56(a4)
    2fea:	9f1a                	add	t5,t5,t1
	...
    2ffc:	002c                	addi	a1,sp,8
    2ffe:	0000                	unimp
    3000:	0000                	unimp
    3002:	0000                	unimp
    3004:	0038                	addi	a4,sp,8
    3006:	0000                	unimp
    3008:	0000                	unimp
    300a:	0000                	unimp
    300c:	0001                	nop
    300e:	645f 0000 0000      	0x645f
    3014:	0000                	unimp
    3016:	7300                	ld	s0,32(a4)
    3018:	0000                	unimp
    301a:	0000                	unimp
    301c:	0000                	unimp
    301e:	0100                	addi	s0,sp,128
    3020:	5f00                	lw	s0,56(a4)
    3022:	0088                	addi	a0,sp,64
    3024:	0000                	unimp
    3026:	0000                	unimp
    3028:	0000                	unimp
    302a:	0094                	addi	a3,sp,64
    302c:	0000                	unimp
    302e:	0000                	unimp
    3030:	0000                	unimp
    3032:	0001                	nop
    3034:	005f 0000 0000      	0x5f
	...
    3042:	0000                	unimp
    3044:	2c00                	fld	fs0,24(s0)
    3046:	0000                	unimp
    3048:	0000                	unimp
    304a:	0000                	unimp
    304c:	3800                	fld	fs0,48(s0)
    304e:	0000                	unimp
    3050:	0000                	unimp
    3052:	0000                	unimp
    3054:	0100                	addi	s0,sp,128
    3056:	5800                	lw	s0,48(s0)
    3058:	0064                	addi	s1,sp,12
    305a:	0000                	unimp
    305c:	0000                	unimp
    305e:	0000                	unimp
    3060:	007c                	addi	a5,sp,12
    3062:	0000                	unimp
    3064:	0000                	unimp
    3066:	0000                	unimp
    3068:	0001                	nop
    306a:	8858                	0x8858
    306c:	0000                	unimp
    306e:	0000                	unimp
    3070:	0000                	unimp
    3072:	9800                	0x9800
    3074:	0000                	unimp
    3076:	0000                	unimp
    3078:	0000                	unimp
    307a:	0100                	addi	s0,sp,128
    307c:	5800                	lw	s0,48(s0)
	...
    308e:	0034                	addi	a3,sp,8
    3090:	0000                	unimp
    3092:	0000                	unimp
    3094:	0000                	unimp
    3096:	0040                	addi	s0,sp,4
    3098:	0000                	unimp
    309a:	0000                	unimp
    309c:	0000                	unimp
    309e:	0001                	nop
    30a0:	845a                	mv	s0,s6
    30a2:	0000                	unimp
    30a4:	0000                	unimp
    30a6:	0000                	unimp
    30a8:	8800                	0x8800
    30aa:	0000                	unimp
    30ac:	0000                	unimp
    30ae:	0000                	unimp
    30b0:	0100                	addi	s0,sp,128
    30b2:	5a00                	lw	s0,48(a2)
    30b4:	0088                	addi	a0,sp,64
    30b6:	0000                	unimp
    30b8:	0000                	unimp
    30ba:	0000                	unimp
    30bc:	00a4                	addi	s1,sp,72
    30be:	0000                	unimp
    30c0:	0000                	unimp
    30c2:	0000                	unimp
    30c4:	0004                	0x4
    30c6:	ff0a                	sd	sp,440(sp)
    30c8:	00009f07          	0x9f07
	...
    30d8:	0000                	unimp
    30da:	002c                	addi	a1,sp,8
    30dc:	0000                	unimp
    30de:	0000                	unimp
    30e0:	0000                	unimp
    30e2:	003c                	addi	a5,sp,8
    30e4:	0000                	unimp
    30e6:	0000                	unimp
    30e8:	0000                	unimp
    30ea:	0001                	nop
    30ec:	6458                	ld	a4,136(s0)
    30ee:	0000                	unimp
    30f0:	0000                	unimp
    30f2:	0000                	unimp
    30f4:	a400                	fsd	fs0,8(s0)
    30f6:	0000                	unimp
    30f8:	0000                	unimp
    30fa:	0000                	unimp
    30fc:	0100                	addi	s0,sp,128
    30fe:	5800                	lw	s0,48(s0)
	...
    3110:	004c                	addi	a1,sp,4
    3112:	0000                	unimp
    3114:	0000                	unimp
    3116:	0000                	unimp
    3118:	0054                	addi	a3,sp,4
    311a:	0000                	unimp
    311c:	0000                	unimp
    311e:	0000                	unimp
    3120:	0008                	0x8
    3122:	0078                	addi	a4,sp,12
    3124:	007a                	c.slli	zero,0x1e
    3126:	f921                	bnez	a0,3076 <register_fini-0xd03a>
    3128:	9f2d                	addw	a4,a4,a1
    312a:	0054                	addi	a3,sp,4
    312c:	0000                	unimp
    312e:	0000                	unimp
    3130:	0000                	unimp
    3132:	0064                	addi	s1,sp,12
    3134:	0000                	unimp
    3136:	0000                	unimp
    3138:	0000                	unimp
    313a:	0001                	nop
    313c:	005a                	c.slli	zero,0x16
	...
    314a:	0000                	unimp
    314c:	7400                	ld	s0,40(s0)
    314e:	0000                	unimp
    3150:	0000                	unimp
    3152:	0000                	unimp
    3154:	8400                	0x8400
    3156:	0000                	unimp
    3158:	0000                	unimp
    315a:	0000                	unimp
    315c:	0100                	addi	s0,sp,128
    315e:	5a00                	lw	s0,48(a2)
	...
    3178:	001c                	0x1c
    317a:	0000                	unimp
    317c:	0000                	unimp
    317e:	0000                	unimp
    3180:	0001                	nop
    3182:	1c5a                	slli	s8,s8,0x36
    3184:	0000                	unimp
    3186:	0000                	unimp
    3188:	0000                	unimp
    318a:	3000                	fld	fs0,32(s0)
    318c:	0001                	nop
    318e:	0000                	unimp
    3190:	0000                	unimp
    3192:	0600                	addi	s0,sp,768
    3194:	f300                	sd	s0,32(a4)
    3196:	2d0af503          	0x2d0af503
    319a:	009f 0000 0000      	0x9f
	...
    31b0:	0000                	unimp
    31b2:	6800                	ld	s0,16(s0)
    31b4:	0000                	unimp
    31b6:	0000                	unimp
    31b8:	0000                	unimp
    31ba:	0200                	addi	s0,sp,256
    31bc:	3000                	fld	fs0,32(s0)
    31be:	749f 0000 0000      	0x749f
    31c4:	0000                	unimp
    31c6:	8000                	0x8000
    31c8:	0000                	unimp
    31ca:	0000                	unimp
    31cc:	0000                	unimp
    31ce:	0200                	addi	s0,sp,256
    31d0:	3000                	fld	fs0,32(s0)
    31d2:	889f 0000 0000      	0x889f
    31d8:	0000                	unimp
    31da:	9c00                	0x9c00
    31dc:	0000                	unimp
    31de:	0000                	unimp
    31e0:	0000                	unimp
    31e2:	0200                	addi	s0,sp,256
    31e4:	3000                	fld	fs0,32(s0)
    31e6:	ac9f 0000 0000      	0xac9f
    31ec:	0000                	unimp
    31ee:	b400                	fsd	fs0,40(s0)
    31f0:	0000                	unimp
    31f2:	0000                	unimp
    31f4:	0000                	unimp
    31f6:	0200                	addi	s0,sp,256
    31f8:	3000                	fld	fs0,32(s0)
    31fa:	0c9f 0001 0000      	0x10c9f
    3200:	0000                	unimp
    3202:	1400                	addi	s0,sp,544
    3204:	0001                	nop
    3206:	0000                	unimp
    3208:	0000                	unimp
    320a:	0200                	addi	s0,sp,256
    320c:	3000                	fld	fs0,32(s0)
    320e:	009f 0000 0000      	0x9f
	...
    321c:	0000                	unimp
    321e:	1c00                	addi	s0,sp,560
    3220:	0000                	unimp
    3222:	0000                	unimp
    3224:	0000                	unimp
    3226:	e800                	sd	s0,16(s0)
    3228:	0000                	unimp
    322a:	0000                	unimp
    322c:	0000                	unimp
    322e:	0100                	addi	s0,sp,128
    3230:	5a00                	lw	s0,48(a2)
    3232:	00e8                	addi	a0,sp,76
    3234:	0000                	unimp
    3236:	0000                	unimp
    3238:	0000                	unimp
    323a:	00ec                	addi	a1,sp,76
    323c:	0000                	unimp
    323e:	0000                	unimp
    3240:	0000                	unimp
    3242:	0002                	c.slli64	zero
    3244:	9f30                	0x9f30
    3246:	010c                	addi	a1,sp,128
    3248:	0000                	unimp
    324a:	0000                	unimp
    324c:	0000                	unimp
    324e:	0130                	addi	a2,sp,136
    3250:	0000                	unimp
    3252:	0000                	unimp
    3254:	0000                	unimp
    3256:	0001                	nop
    3258:	005a                	c.slli	zero,0x16
	...
    3266:	0000                	unimp
    3268:	1800                	addi	s0,sp,48
    326a:	0000                	unimp
    326c:	0000                	unimp
    326e:	0000                	unimp
    3270:	2800                	fld	fs0,16(s0)
    3272:	0000                	unimp
    3274:	0000                	unimp
    3276:	0000                	unimp
    3278:	0100                	addi	s0,sp,128
    327a:	5e00                	lw	s0,56(a2)
    327c:	0028                	addi	a0,sp,8
    327e:	0000                	unimp
    3280:	0000                	unimp
    3282:	0000                	unimp
    3284:	0054                	addi	a3,sp,4
    3286:	0000                	unimp
    3288:	0000                	unimp
    328a:	0000                	unimp
    328c:	0004                	0x4
    328e:	807e                	c.mv	zero,t6
    3290:	00749f07          	0x749f07
    3294:	0000                	unimp
    3296:	0000                	unimp
    3298:	0000                	unimp
    329a:	0080                	addi	s0,sp,64
    329c:	0000                	unimp
    329e:	0000                	unimp
    32a0:	0000                	unimp
    32a2:	0004                	0x4
    32a4:	807e                	c.mv	zero,t6
    32a6:	00889f07          	0x889f07
    32aa:	0000                	unimp
    32ac:	0000                	unimp
    32ae:	0000                	unimp
    32b0:	0098                	addi	a4,sp,64
    32b2:	0000                	unimp
    32b4:	0000                	unimp
    32b6:	0000                	unimp
    32b8:	0001                	nop
    32ba:	ac5e                	fsd	fs7,24(sp)
    32bc:	0000                	unimp
    32be:	0000                	unimp
    32c0:	0000                	unimp
    32c2:	b400                	fsd	fs0,40(s0)
    32c4:	0000                	unimp
    32c6:	0000                	unimp
    32c8:	0000                	unimp
    32ca:	0400                	addi	s0,sp,512
    32cc:	7e00                	ld	s0,56(a2)
    32ce:	0780                	addi	s0,sp,960
    32d0:	0c9f 0001 0000      	0x10c9f
    32d6:	0000                	unimp
    32d8:	1400                	addi	s0,sp,544
    32da:	0001                	nop
    32dc:	0000                	unimp
    32de:	0000                	unimp
    32e0:	0400                	addi	s0,sp,512
    32e2:	7e00                	ld	s0,56(a2)
    32e4:	0780                	addi	s0,sp,960
    32e6:	009f 0000 0000      	0x9f
	...
    32f4:	0000                	unimp
    32f6:	1800                	addi	s0,sp,48
    32f8:	0000                	unimp
    32fa:	0000                	unimp
    32fc:	0000                	unimp
    32fe:	2000                	fld	fs0,0(s0)
    3300:	0000                	unimp
    3302:	0000                	unimp
    3304:	0000                	unimp
    3306:	0100                	addi	s0,sp,128
    3308:	5d00                	lw	s0,56(a0)
    330a:	0020                	addi	s0,sp,8
    330c:	0000                	unimp
    330e:	0000                	unimp
    3310:	0000                	unimp
    3312:	005c                	addi	a5,sp,4
    3314:	0000                	unimp
    3316:	0000                	unimp
    3318:	0000                	unimp
    331a:	0001                	nop
    331c:	645f 0000 0000      	0x645f
    3322:	0000                	unimp
    3324:	6800                	ld	s0,16(s0)
    3326:	0000                	unimp
    3328:	0000                	unimp
    332a:	0000                	unimp
    332c:	0100                	addi	s0,sp,128
    332e:	5f00                	lw	s0,56(a4)
    3330:	0074                	addi	a3,sp,12
    3332:	0000                	unimp
    3334:	0000                	unimp
    3336:	0000                	unimp
    3338:	007c                	addi	a5,sp,12
    333a:	0000                	unimp
    333c:	0000                	unimp
    333e:	0000                	unimp
    3340:	0001                	nop
    3342:	885f 0000 0000      	0x885f
    3348:	0000                	unimp
    334a:	9000                	0x9000
    334c:	0000                	unimp
    334e:	0000                	unimp
    3350:	0000                	unimp
    3352:	0100                	addi	s0,sp,128
    3354:	5f00                	lw	s0,56(a4)
    3356:	0094                	addi	a3,sp,64
    3358:	0000                	unimp
    335a:	0000                	unimp
    335c:	0000                	unimp
    335e:	009c                	addi	a5,sp,64
    3360:	0000                	unimp
    3362:	0000                	unimp
    3364:	0000                	unimp
    3366:	0001                	nop
    3368:	9c5f 0000 0000      	0x9c5f
    336e:	0000                	unimp
    3370:	a000                	fsd	fs0,0(s0)
    3372:	0000                	unimp
    3374:	0000                	unimp
    3376:	0000                	unimp
    3378:	0500                	addi	s0,sp,640
    337a:	7f00                	ld	s0,56(a4)
    337c:	4d00                	lw	s0,24(a0)
    337e:	9f25                	addw	a4,a4,s1
    3380:	00a0                	addi	s0,sp,72
    3382:	0000                	unimp
    3384:	0000                	unimp
    3386:	0000                	unimp
    3388:	00a4                	addi	s1,sp,72
    338a:	0000                	unimp
    338c:	0000                	unimp
    338e:	0000                	unimp
    3390:	0001                	nop
    3392:	ac5f 0000 0000      	0xac5f
    3398:	0000                	unimp
    339a:	b000                	fsd	fs0,32(s0)
    339c:	0000                	unimp
    339e:	0000                	unimp
    33a0:	0000                	unimp
    33a2:	0100                	addi	s0,sp,128
    33a4:	5f00                	lw	s0,56(a4)
    33a6:	010c                	addi	a1,sp,128
    33a8:	0000                	unimp
    33aa:	0000                	unimp
    33ac:	0000                	unimp
    33ae:	0110                	addi	a2,sp,128
    33b0:	0000                	unimp
    33b2:	0000                	unimp
    33b4:	0000                	unimp
    33b6:	0001                	nop
    33b8:	005f 0000 0000      	0x5f
	...
    33c6:	0000                	unimp
    33c8:	2000                	fld	fs0,0(s0)
    33ca:	0000                	unimp
    33cc:	0000                	unimp
    33ce:	0000                	unimp
    33d0:	e800                	sd	s0,16(s0)
    33d2:	0000                	unimp
    33d4:	0000                	unimp
    33d6:	0000                	unimp
    33d8:	0100                	addi	s0,sp,128
    33da:	5a00                	lw	s0,48(a2)
    33dc:	00e8                	addi	a0,sp,76
    33de:	0000                	unimp
    33e0:	0000                	unimp
    33e2:	0000                	unimp
    33e4:	00ec                	addi	a1,sp,76
    33e6:	0000                	unimp
    33e8:	0000                	unimp
    33ea:	0000                	unimp
    33ec:	0002                	c.slli64	zero
    33ee:	9f30                	0x9f30
    33f0:	010c                	addi	a1,sp,128
    33f2:	0000                	unimp
    33f4:	0000                	unimp
    33f6:	0000                	unimp
    33f8:	0130                	addi	a2,sp,136
    33fa:	0000                	unimp
    33fc:	0000                	unimp
    33fe:	0000                	unimp
    3400:	0001                	nop
    3402:	005a                	c.slli	zero,0x16
	...
    3410:	0000                	unimp
    3412:	2800                	fld	fs0,16(s0)
    3414:	0000                	unimp
    3416:	0000                	unimp
    3418:	0000                	unimp
    341a:	5400                	lw	s0,40(s0)
    341c:	0000                	unimp
    341e:	0000                	unimp
    3420:	0000                	unimp
    3422:	0100                	addi	s0,sp,128
    3424:	5e00                	lw	s0,56(a2)
    3426:	0068                	addi	a0,sp,12
    3428:	0000                	unimp
    342a:	0000                	unimp
    342c:	0000                	unimp
    342e:	0080                	addi	s0,sp,64
    3430:	0000                	unimp
    3432:	0000                	unimp
    3434:	0000                	unimp
    3436:	0001                	nop
    3438:	8c5e                	mv	s8,s7
    343a:	0000                	unimp
    343c:	0000                	unimp
    343e:	0000                	unimp
    3440:	9400                	0x9400
    3442:	0000                	unimp
    3444:	0000                	unimp
    3446:	0000                	unimp
    3448:	0200                	addi	s0,sp,256
    344a:	3000                	fld	fs0,32(s0)
    344c:	949f 0000 0000      	0x949f
    3452:	0000                	unimp
    3454:	ac00                	fsd	fs0,24(s0)
    3456:	0000                	unimp
    3458:	0000                	unimp
    345a:	0000                	unimp
    345c:	0300                	addi	s0,sp,384
    345e:	0800                	addi	s0,sp,16
    3460:	9fff                	0x9fff
    3462:	00ac                	addi	a1,sp,72
    3464:	0000                	unimp
    3466:	0000                	unimp
    3468:	0000                	unimp
    346a:	00b4                	addi	a3,sp,72
    346c:	0000                	unimp
    346e:	0000                	unimp
    3470:	0000                	unimp
    3472:	0001                	nop
    3474:	c05e                	sw	s7,0(sp)
    3476:	0000                	unimp
    3478:	0000                	unimp
    347a:	0000                	unimp
    347c:	e000                	sd	s0,0(s0)
    347e:	0000                	unimp
    3480:	0000                	unimp
    3482:	0000                	unimp
    3484:	0100                	addi	s0,sp,128
    3486:	5e00                	lw	s0,56(a2)
    3488:	00e0                	addi	s0,sp,76
    348a:	0000                	unimp
    348c:	0000                	unimp
    348e:	0000                	unimp
    3490:	00ec                	addi	a1,sp,76
    3492:	0000                	unimp
    3494:	0000                	unimp
    3496:	0000                	unimp
    3498:	ff080003          	lb	zero,-16(a6) # 15ff0 <__BSS_END__+0x37c0>
    349c:	0c9f 0001 0000      	0x10c9f
    34a2:	0000                	unimp
    34a4:	3000                	fld	fs0,32(s0)
    34a6:	0001                	nop
    34a8:	0000                	unimp
    34aa:	0000                	unimp
    34ac:	0100                	addi	s0,sp,128
    34ae:	5e00                	lw	s0,56(a2)
	...
    34c0:	0068                	addi	a0,sp,12
    34c2:	0000                	unimp
    34c4:	0000                	unimp
    34c6:	0000                	unimp
    34c8:	0074                	addi	a3,sp,12
    34ca:	0000                	unimp
    34cc:	0000                	unimp
    34ce:	0000                	unimp
    34d0:	0001                	nop
    34d2:	845f 0000 0000      	0x845f
    34d8:	0000                	unimp
    34da:	8800                	0x8800
    34dc:	0000                	unimp
    34de:	0000                	unimp
    34e0:	0000                	unimp
    34e2:	0100                	addi	s0,sp,128
    34e4:	5f00                	lw	s0,56(a4)
    34e6:	009c                	addi	a5,sp,64
    34e8:	0000                	unimp
    34ea:	0000                	unimp
    34ec:	0000                	unimp
    34ee:	00a0                	addi	s0,sp,72
    34f0:	0000                	unimp
    34f2:	0000                	unimp
    34f4:	0000                	unimp
    34f6:	0005                	c.nop	1
    34f8:	007f                	0x7f
    34fa:	254d                	addiw	a0,a0,19
    34fc:	a09f 0000 0000      	0xa09f
    3502:	0000                	unimp
    3504:	ac00                	fsd	fs0,24(s0)
    3506:	0000                	unimp
    3508:	0000                	unimp
    350a:	0000                	unimp
    350c:	0100                	addi	s0,sp,128
    350e:	5f00                	lw	s0,56(a4)
    3510:	00b4                	addi	a3,sp,72
    3512:	0000                	unimp
    3514:	0000                	unimp
    3516:	0000                	unimp
    3518:	00bc                	addi	a5,sp,72
    351a:	0000                	unimp
    351c:	0000                	unimp
    351e:	0000                	unimp
    3520:	0001                	nop
    3522:	bc5f 0000 0000      	0xbc5f
    3528:	0000                	unimp
    352a:	d400                	sw	s0,40(s0)
    352c:	0000                	unimp
    352e:	0000                	unimp
    3530:	0000                	unimp
    3532:	0900                	addi	s0,sp,144
    3534:	7f00                	ld	s0,56(a4)
    3536:	1100                	addi	s0,sp,160
    3538:	ffff                	0xffff
    353a:	5fff                	0x5fff
    353c:	9f1a                	add	t5,t5,t1
    353e:	00d4                	addi	a3,sp,68
    3540:	0000                	unimp
    3542:	0000                	unimp
    3544:	0000                	unimp
    3546:	00e8                	addi	a0,sp,76
    3548:	0000                	unimp
    354a:	0000                	unimp
    354c:	0000                	unimp
    354e:	0001                	nop
    3550:	ec5f 0000 0000      	0xec5f
    3556:	0000                	unimp
    3558:	f400                	sd	s0,40(s0)
    355a:	0000                	unimp
    355c:	0000                	unimp
    355e:	0000                	unimp
    3560:	0100                	addi	s0,sp,128
    3562:	5f00                	lw	s0,56(a4)
    3564:	0114                	addi	a3,sp,128
    3566:	0000                	unimp
    3568:	0000                	unimp
    356a:	0000                	unimp
    356c:	0128                	addi	a0,sp,136
    356e:	0000                	unimp
    3570:	0000                	unimp
    3572:	0000                	unimp
    3574:	0001                	nop
    3576:	285f 0001 0000      	0x1285f
    357c:	0000                	unimp
    357e:	2c00                	fld	fs0,24(s0)
    3580:	0001                	nop
    3582:	0000                	unimp
    3584:	0000                	unimp
    3586:	0900                	addi	s0,sp,144
    3588:	7f00                	ld	s0,56(a4)
    358a:	1100                	addi	s0,sp,160
    358c:	ffff                	0xffff
    358e:	5fff                	0x5fff
    3590:	9f1a                	add	t5,t5,t1
	...
    35a2:	0104                	addi	s1,sp,128
    35a4:	0000                	unimp
    35a6:	0000                	unimp
    35a8:	0000                	unimp
    35aa:	0108                	addi	a0,sp,128
    35ac:	0000                	unimp
    35ae:	0000                	unimp
    35b0:	0000                	unimp
    35b2:	0001                	nop
    35b4:	005a                	c.slli	zero,0x16
	...
    35ca:	0000                	unimp
    35cc:	2800                	fld	fs0,16(s0)
    35ce:	0000                	unimp
    35d0:	0000                	unimp
    35d2:	0000                	unimp
    35d4:	0100                	addi	s0,sp,128
    35d6:	5a00                	lw	s0,48(a2)
    35d8:	0028                	addi	a0,sp,8
    35da:	0000                	unimp
    35dc:	0000                	unimp
    35de:	0000                	unimp
    35e0:	003c                	addi	a5,sp,8
    35e2:	0000                	unimp
    35e4:	0000                	unimp
    35e6:	0000                	unimp
    35e8:	0004                	0x4
    35ea:	9f5a01f3          	0x9f5a01f3
	...
    3606:	0028                	addi	a0,sp,8
    3608:	0000                	unimp
    360a:	0000                	unimp
    360c:	0000                	unimp
    360e:	0001                	nop
    3610:	285a                	fld	fa6,400(sp)
    3612:	0000                	unimp
    3614:	0000                	unimp
    3616:	0000                	unimp
    3618:	3c00                	fld	fs0,56(s0)
    361a:	0000                	unimp
    361c:	0000                	unimp
    361e:	0000                	unimp
    3620:	0400                	addi	s0,sp,512
    3622:	f300                	sd	s0,32(a4)
    3624:	5a01                	li	s4,-32
    3626:	009f 0000 0000      	0x9f
	...
    363c:	0000                	unimp
    363e:	0400                	addi	s0,sp,512
    3640:	0000                	unimp
    3642:	0000                	unimp
    3644:	0000                	unimp
    3646:	0300                	addi	s0,sp,384
    3648:	0800                	addi	s0,sp,16
    364a:	9f38                	0x9f38
    364c:	0004                	0x4
    364e:	0000                	unimp
    3650:	0000                	unimp
    3652:	0000                	unimp
    3654:	002c                	addi	a1,sp,8
    3656:	0000                	unimp
    3658:	0000                	unimp
    365a:	0000                	unimp
    365c:	0001                	nop
    365e:	005f 0000 0000      	0x5f
	...

Disassembly of section .debug_ranges:

0000000000000000 <.debug_ranges>:
	...
  10:	0004                	0x4
  12:	0000                	unimp
  14:	0000                	unimp
  16:	0000                	unimp
  18:	000c                	0xc
  1a:	0000                	unimp
  1c:	0000                	unimp
  1e:	0000                	unimp
  20:	0014                	0x14
  22:	0000                	unimp
  24:	0000                	unimp
  26:	0000                	unimp
  28:	001c                	0x1c
  2a:	0000                	unimp
  2c:	0000                	unimp
  2e:	0000                	unimp
  30:	0024                	addi	s1,sp,8
  32:	0000                	unimp
  34:	0000                	unimp
  36:	0000                	unimp
  38:	0028                	addi	a0,sp,8
  3a:	0000                	unimp
  3c:	0000                	unimp
  3e:	0000                	unimp
  40:	0034                	addi	a3,sp,8
  42:	0000                	unimp
  44:	0000                	unimp
  46:	0000                	unimp
  48:	0038                	addi	a4,sp,8
	...
  5e:	0000                	unimp
  60:	000c                	0xc
  62:	0000                	unimp
  64:	0000                	unimp
  66:	0000                	unimp
  68:	0010                	0x10
  6a:	0000                	unimp
  6c:	0000                	unimp
  6e:	0000                	unimp
  70:	0020                	addi	s0,sp,8
  72:	0000                	unimp
  74:	0000                	unimp
  76:	0000                	unimp
  78:	0024                	addi	s1,sp,8
  7a:	0000                	unimp
  7c:	0000                	unimp
  7e:	0000                	unimp
  80:	0028                	addi	a0,sp,8
  82:	0000                	unimp
  84:	0000                	unimp
  86:	0000                	unimp
  88:	002c                	addi	a1,sp,8
  8a:	0000                	unimp
  8c:	0000                	unimp
  8e:	0000                	unimp
  90:	0038                	addi	a4,sp,8
  92:	0000                	unimp
  94:	0000                	unimp
  96:	0000                	unimp
  98:	003c                	addi	a5,sp,8
  9a:	0000                	unimp
  9c:	0000                	unimp
  9e:	0000                	unimp
  a0:	0040                	addi	s0,sp,4
  a2:	0000                	unimp
  a4:	0000                	unimp
  a6:	0000                	unimp
  a8:	0040                	addi	s0,sp,4
  aa:	0000                	unimp
  ac:	0000                	unimp
  ae:	0000                	unimp
  b0:	0114                	addi	a3,sp,128
  b2:	0000                	unimp
  b4:	0000                	unimp
  b6:	0000                	unimp
  b8:	0118                	addi	a4,sp,128
  ba:	0000                	unimp
  bc:	0000                	unimp
  be:	0000                	unimp
  c0:	0270                	addi	a2,sp,268
  c2:	0000                	unimp
  c4:	0000                	unimp
  c6:	0000                	unimp
  c8:	0274                	addi	a3,sp,268
  ca:	0000                	unimp
  cc:	0000                	unimp
  ce:	0000                	unimp
  d0:	03b0                	addi	a2,sp,456
  d2:	0000                	unimp
  d4:	0000                	unimp
  d6:	0000                	unimp
  d8:	03b8                	addi	a4,sp,456
  da:	0000                	unimp
  dc:	0000                	unimp
  de:	0000                	unimp
  e0:	0448                	addi	a0,sp,516
  e2:	0000                	unimp
  e4:	0000                	unimp
  e6:	0000                	unimp
  e8:	044c                	addi	a1,sp,516
	...
  fe:	0000                	unimp
 100:	004c                	addi	a1,sp,4
 102:	0000                	unimp
 104:	0000                	unimp
 106:	0000                	unimp
 108:	00a4                	addi	s1,sp,72
 10a:	0000                	unimp
 10c:	0000                	unimp
 10e:	0000                	unimp
 110:	00c0                	addi	s0,sp,68
 112:	0000                	unimp
 114:	0000                	unimp
 116:	0000                	unimp
 118:	0114                	addi	a3,sp,128
 11a:	0000                	unimp
 11c:	0000                	unimp
 11e:	0000                	unimp
 120:	0118                	addi	a4,sp,128
 122:	0000                	unimp
 124:	0000                	unimp
 126:	0000                	unimp
 128:	01b0                	addi	a2,sp,200
 12a:	0000                	unimp
 12c:	0000                	unimp
 12e:	0000                	unimp
 130:	01c8                	addi	a0,sp,196
 132:	0000                	unimp
 134:	0000                	unimp
 136:	0000                	unimp
 138:	01e0                	addi	s0,sp,204
 13a:	0000                	unimp
 13c:	0000                	unimp
 13e:	0000                	unimp
 140:	03c8                	addi	a0,sp,452
 142:	0000                	unimp
 144:	0000                	unimp
 146:	0000                	unimp
 148:	03d0                	addi	a2,sp,452
	...
 15e:	0000                	unimp
 160:	00a4                	addi	s1,sp,72
 162:	0000                	unimp
 164:	0000                	unimp
 166:	0000                	unimp
 168:	00a4                	addi	s1,sp,72
 16a:	0000                	unimp
 16c:	0000                	unimp
 16e:	0000                	unimp
 170:	01b0                	addi	a2,sp,200
 172:	0000                	unimp
 174:	0000                	unimp
 176:	0000                	unimp
 178:	01c8                	addi	a0,sp,196
 17a:	0000                	unimp
 17c:	0000                	unimp
 17e:	0000                	unimp
 180:	01e0                	addi	s0,sp,204
 182:	0000                	unimp
 184:	0000                	unimp
 186:	0000                	unimp
 188:	0270                	addi	a2,sp,268
 18a:	0000                	unimp
 18c:	0000                	unimp
 18e:	0000                	unimp
 190:	0274                	addi	a3,sp,268
 192:	0000                	unimp
 194:	0000                	unimp
 196:	0000                	unimp
 198:	03ac                	addi	a1,sp,456
 19a:	0000                	unimp
 19c:	0000                	unimp
 19e:	0000                	unimp
 1a0:	044c                	addi	a1,sp,516
 1a2:	0000                	unimp
 1a4:	0000                	unimp
 1a6:	0000                	unimp
 1a8:	0454                	addi	a3,sp,516
 1aa:	0000                	unimp
 1ac:	0000                	unimp
 1ae:	0000                	unimp
 1b0:	0458                	addi	a4,sp,516
 1b2:	0000                	unimp
 1b4:	0000                	unimp
 1b6:	0000                	unimp
 1b8:	0460                	addi	s0,sp,524
	...
 1ce:	0000                	unimp
 1d0:	0204                	addi	s1,sp,256
 1d2:	0000                	unimp
 1d4:	0000                	unimp
 1d6:	0000                	unimp
 1d8:	0210                	addi	a2,sp,256
 1da:	0000                	unimp
 1dc:	0000                	unimp
 1de:	0000                	unimp
 1e0:	0348                	addi	a0,sp,388
 1e2:	0000                	unimp
 1e4:	0000                	unimp
 1e6:	0000                	unimp
 1e8:	0384                	addi	s1,sp,448
 1ea:	0000                	unimp
 1ec:	0000                	unimp
 1ee:	0000                	unimp
 1f0:	0394                	addi	a3,sp,448
 1f2:	0000                	unimp
 1f4:	0000                	unimp
 1f6:	0000                	unimp
 1f8:	03ac                	addi	a1,sp,456
	...
 20e:	0000                	unimp
 210:	00a4                	addi	s1,sp,72
 212:	0000                	unimp
 214:	0000                	unimp
 216:	0000                	unimp
 218:	00c0                	addi	s0,sp,68
 21a:	0000                	unimp
 21c:	0000                	unimp
 21e:	0000                	unimp
 220:	03d0                	addi	a2,sp,452
 222:	0000                	unimp
 224:	0000                	unimp
 226:	0000                	unimp
 228:	0410                	addi	a2,sp,512
 22a:	0000                	unimp
 22c:	0000                	unimp
 22e:	0000                	unimp
 230:	0460                	addi	s0,sp,524
 232:	0000                	unimp
 234:	0000                	unimp
 236:	0000                	unimp
 238:	0468                	addi	a0,sp,524
	...
 24e:	0000                	unimp
 250:	0410                	addi	a2,sp,512
 252:	0000                	unimp
 254:	0000                	unimp
 256:	0000                	unimp
 258:	0420                	addi	s0,sp,520
 25a:	0000                	unimp
 25c:	0000                	unimp
 25e:	0000                	unimp
 260:	0424                	addi	s1,sp,520
 262:	0000                	unimp
 264:	0000                	unimp
 266:	0000                	unimp
 268:	0428                	addi	a0,sp,520
 26a:	0000                	unimp
 26c:	0000                	unimp
 26e:	0000                	unimp
 270:	042c                	addi	a1,sp,520
 272:	0000                	unimp
 274:	0000                	unimp
 276:	0000                	unimp
 278:	0430                	addi	a2,sp,520
	...
 29e:	0000                	unimp
 2a0:	0004                	0x4
 2a2:	0000                	unimp
 2a4:	0000                	unimp
 2a6:	0000                	unimp
 2a8:	0008                	0x8
 2aa:	0000                	unimp
 2ac:	0000                	unimp
 2ae:	0000                	unimp
 2b0:	0014                	0x14
 2b2:	0000                	unimp
 2b4:	0000                	unimp
 2b6:	0000                	unimp
 2b8:	0018                	0x18
 2ba:	0000                	unimp
 2bc:	0000                	unimp
 2be:	0000                	unimp
 2c0:	0030                	addi	a2,sp,8
 2c2:	0000                	unimp
 2c4:	0000                	unimp
 2c6:	0000                	unimp
 2c8:	0038                	addi	a4,sp,8
 2ca:	0000                	unimp
 2cc:	0000                	unimp
 2ce:	0000                	unimp
 2d0:	026c                	addi	a1,sp,268
 2d2:	0000                	unimp
 2d4:	0000                	unimp
 2d6:	0000                	unimp
 2d8:	0270                	addi	a2,sp,268
	...
 2ee:	0000                	unimp
 2f0:	005c                	addi	a5,sp,4
 2f2:	0000                	unimp
 2f4:	0000                	unimp
 2f6:	0000                	unimp
 2f8:	0060                	addi	s0,sp,12
 2fa:	0000                	unimp
 2fc:	0000                	unimp
 2fe:	0000                	unimp
 300:	00d8                	addi	a4,sp,68
 302:	0000                	unimp
 304:	0000                	unimp
 306:	0000                	unimp
 308:	00f8                	addi	a4,sp,76
	...
 31e:	0000                	unimp
 320:	0060                	addi	s0,sp,12
 322:	0000                	unimp
 324:	0000                	unimp
 326:	0000                	unimp
 328:	0068                	addi	a0,sp,12
 32a:	0000                	unimp
 32c:	0000                	unimp
 32e:	0000                	unimp
 330:	006c                	addi	a1,sp,12
 332:	0000                	unimp
 334:	0000                	unimp
 336:	0000                	unimp
 338:	0078                	addi	a4,sp,12
 33a:	0000                	unimp
 33c:	0000                	unimp
 33e:	0000                	unimp
 340:	029c                	addi	a5,sp,320
 342:	0000                	unimp
 344:	0000                	unimp
 346:	0000                	unimp
 348:	02a0                	addi	s0,sp,328
	...
 35e:	0000                	unimp
 360:	0098                	addi	a4,sp,64
 362:	0000                	unimp
 364:	0000                	unimp
 366:	0000                	unimp
 368:	009c                	addi	a5,sp,64
 36a:	0000                	unimp
 36c:	0000                	unimp
 36e:	0000                	unimp
 370:	011c                	addi	a5,sp,128
 372:	0000                	unimp
 374:	0000                	unimp
 376:	0000                	unimp
 378:	013c                	addi	a5,sp,136
	...
 38e:	0000                	unimp
 390:	015c                	addi	a5,sp,132
 392:	0000                	unimp
 394:	0000                	unimp
 396:	0000                	unimp
 398:	01e4                	addi	s1,sp,204
 39a:	0000                	unimp
 39c:	0000                	unimp
 39e:	0000                	unimp
 3a0:	01e8                	addi	a0,sp,204
 3a2:	0000                	unimp
 3a4:	0000                	unimp
 3a6:	0000                	unimp
 3a8:	01ec                	addi	a1,sp,204
 3aa:	0000                	unimp
 3ac:	0000                	unimp
 3ae:	0000                	unimp
 3b0:	01f4                	addi	a3,sp,204
 3b2:	0000                	unimp
 3b4:	0000                	unimp
 3b6:	0000                	unimp
 3b8:	01fc                	addi	a5,sp,204
	...
 3ce:	0000                	unimp
 3d0:	0290                	addi	a2,sp,320
 3d2:	0000                	unimp
 3d4:	0000                	unimp
 3d6:	0000                	unimp
 3d8:	029c                	addi	a5,sp,320
 3da:	0000                	unimp
 3dc:	0000                	unimp
 3de:	0000                	unimp
 3e0:	02ac                	addi	a1,sp,328
 3e2:	0000                	unimp
 3e4:	0000                	unimp
 3e6:	0000                	unimp
 3e8:	0304                	addi	s1,sp,384
	...
 406:	0000                	unimp
 408:	0004                	0x4
 40a:	0000                	unimp
 40c:	0000                	unimp
 40e:	0000                	unimp
 410:	0008                	0x8
 412:	0000                	unimp
 414:	0000                	unimp
 416:	0000                	unimp
 418:	000c                	0xc
 41a:	0000                	unimp
 41c:	0000                	unimp
 41e:	0000                	unimp
 420:	0010                	0x10
 422:	0000                	unimp
 424:	0000                	unimp
 426:	0000                	unimp
 428:	0018                	0x18
 42a:	0000                	unimp
 42c:	0000                	unimp
 42e:	0000                	unimp
 430:	0024                	addi	s1,sp,8
 432:	0000                	unimp
 434:	0000                	unimp
 436:	0000                	unimp
 438:	0028                	addi	a0,sp,8
 43a:	0000                	unimp
 43c:	0000                	unimp
 43e:	0000                	unimp
 440:	0038                	addi	a4,sp,8
 442:	0000                	unimp
 444:	0000                	unimp
 446:	0000                	unimp
 448:	0040                	addi	s0,sp,4
	...
 45e:	0000                	unimp
 460:	000c                	0xc
 462:	0000                	unimp
 464:	0000                	unimp
 466:	0000                	unimp
 468:	0010                	0x10
 46a:	0000                	unimp
 46c:	0000                	unimp
 46e:	0000                	unimp
 470:	001c                	0x1c
 472:	0000                	unimp
 474:	0000                	unimp
 476:	0000                	unimp
 478:	0020                	addi	s0,sp,8
 47a:	0000                	unimp
 47c:	0000                	unimp
 47e:	0000                	unimp
 480:	0030                	addi	a2,sp,8
 482:	0000                	unimp
 484:	0000                	unimp
 486:	0000                	unimp
 488:	0034                	addi	a3,sp,8
 48a:	0000                	unimp
 48c:	0000                	unimp
 48e:	0000                	unimp
 490:	0044                	addi	s1,sp,4
 492:	0000                	unimp
 494:	0000                	unimp
 496:	0000                	unimp
 498:	0048                	addi	a0,sp,4
 49a:	0000                	unimp
 49c:	0000                	unimp
 49e:	0000                	unimp
 4a0:	012c                	addi	a1,sp,136
 4a2:	0000                	unimp
 4a4:	0000                	unimp
 4a6:	0000                	unimp
 4a8:	0130                	addi	a2,sp,136
 4aa:	0000                	unimp
 4ac:	0000                	unimp
 4ae:	0000                	unimp
 4b0:	028c                	addi	a1,sp,320
 4b2:	0000                	unimp
 4b4:	0000                	unimp
 4b6:	0000                	unimp
 4b8:	0290                	addi	a2,sp,320
 4ba:	0000                	unimp
 4bc:	0000                	unimp
 4be:	0000                	unimp
 4c0:	03d4                	addi	a3,sp,452
 4c2:	0000                	unimp
 4c4:	0000                	unimp
 4c6:	0000                	unimp
 4c8:	03dc                	addi	a5,sp,452
 4ca:	0000                	unimp
 4cc:	0000                	unimp
 4ce:	0000                	unimp
 4d0:	046c                	addi	a1,sp,524
 4d2:	0000                	unimp
 4d4:	0000                	unimp
 4d6:	0000                	unimp
 4d8:	0474                	addi	a3,sp,524
	...
 4ee:	0000                	unimp
 4f0:	0064                	addi	s1,sp,12
 4f2:	0000                	unimp
 4f4:	0000                	unimp
 4f6:	0000                	unimp
 4f8:	00b8                	addi	a4,sp,72
 4fa:	0000                	unimp
 4fc:	0000                	unimp
 4fe:	0000                	unimp
 500:	00d4                	addi	a3,sp,68
 502:	0000                	unimp
 504:	0000                	unimp
 506:	0000                	unimp
 508:	012c                	addi	a1,sp,136
 50a:	0000                	unimp
 50c:	0000                	unimp
 50e:	0000                	unimp
 510:	0130                	addi	a2,sp,136
 512:	0000                	unimp
 514:	0000                	unimp
 516:	0000                	unimp
 518:	01cc                	addi	a1,sp,196
 51a:	0000                	unimp
 51c:	0000                	unimp
 51e:	0000                	unimp
 520:	01e4                	addi	s1,sp,204
 522:	0000                	unimp
 524:	0000                	unimp
 526:	0000                	unimp
 528:	01fc                	addi	a5,sp,204
 52a:	0000                	unimp
 52c:	0000                	unimp
 52e:	0000                	unimp
 530:	03ec                	addi	a1,sp,460
 532:	0000                	unimp
 534:	0000                	unimp
 536:	0000                	unimp
 538:	03f4                	addi	a3,sp,460
	...
 54e:	0000                	unimp
 550:	00b8                	addi	a4,sp,72
 552:	0000                	unimp
 554:	0000                	unimp
 556:	0000                	unimp
 558:	00b8                	addi	a4,sp,72
 55a:	0000                	unimp
 55c:	0000                	unimp
 55e:	0000                	unimp
 560:	01cc                	addi	a1,sp,196
 562:	0000                	unimp
 564:	0000                	unimp
 566:	0000                	unimp
 568:	01e4                	addi	s1,sp,204
 56a:	0000                	unimp
 56c:	0000                	unimp
 56e:	0000                	unimp
 570:	01fc                	addi	a5,sp,204
 572:	0000                	unimp
 574:	0000                	unimp
 576:	0000                	unimp
 578:	028c                	addi	a1,sp,320
 57a:	0000                	unimp
 57c:	0000                	unimp
 57e:	0000                	unimp
 580:	0290                	addi	a2,sp,320
 582:	0000                	unimp
 584:	0000                	unimp
 586:	0000                	unimp
 588:	03d0                	addi	a2,sp,452
 58a:	0000                	unimp
 58c:	0000                	unimp
 58e:	0000                	unimp
 590:	0478                	addi	a4,sp,524
 592:	0000                	unimp
 594:	0000                	unimp
 596:	0000                	unimp
 598:	0480                	addi	s0,sp,576
	...
 5ae:	0000                	unimp
 5b0:	021c                	addi	a5,sp,256
 5b2:	0000                	unimp
 5b4:	0000                	unimp
 5b6:	0000                	unimp
 5b8:	0228                	addi	a0,sp,264
 5ba:	0000                	unimp
 5bc:	0000                	unimp
 5be:	0000                	unimp
 5c0:	0368                	addi	a0,sp,396
 5c2:	0000                	unimp
 5c4:	0000                	unimp
 5c6:	0000                	unimp
 5c8:	03a4                	addi	s1,sp,456
 5ca:	0000                	unimp
 5cc:	0000                	unimp
 5ce:	0000                	unimp
 5d0:	03b8                	addi	a4,sp,456
 5d2:	0000                	unimp
 5d4:	0000                	unimp
 5d6:	0000                	unimp
 5d8:	03d0                	addi	a2,sp,452
	...
 5ee:	0000                	unimp
 5f0:	00b8                	addi	a4,sp,72
 5f2:	0000                	unimp
 5f4:	0000                	unimp
 5f6:	0000                	unimp
 5f8:	00d4                	addi	a3,sp,68
 5fa:	0000                	unimp
 5fc:	0000                	unimp
 5fe:	0000                	unimp
 600:	03f4                	addi	a3,sp,460
 602:	0000                	unimp
 604:	0000                	unimp
 606:	0000                	unimp
 608:	0434                	addi	a3,sp,520
 60a:	0000                	unimp
 60c:	0000                	unimp
 60e:	0000                	unimp
 610:	0480                	addi	s0,sp,576
 612:	0000                	unimp
 614:	0000                	unimp
 616:	0000                	unimp
 618:	0488                	addi	a0,sp,576
	...
 62e:	0000                	unimp
 630:	0434                	addi	a3,sp,520
 632:	0000                	unimp
 634:	0000                	unimp
 636:	0000                	unimp
 638:	0444                	addi	s1,sp,516
 63a:	0000                	unimp
 63c:	0000                	unimp
 63e:	0000                	unimp
 640:	0448                	addi	a0,sp,516
 642:	0000                	unimp
 644:	0000                	unimp
 646:	0000                	unimp
 648:	044c                	addi	a1,sp,516
 64a:	0000                	unimp
 64c:	0000                	unimp
 64e:	0000                	unimp
 650:	0450                	addi	a2,sp,516
 652:	0000                	unimp
 654:	0000                	unimp
 656:	0000                	unimp
 658:	0454                	addi	a3,sp,516
	...
 67e:	0000                	unimp
 680:	0010                	0x10
 682:	0000                	unimp
 684:	0000                	unimp
 686:	0000                	unimp
 688:	0048                	addi	a0,sp,4
 68a:	0000                	unimp
 68c:	0000                	unimp
 68e:	0000                	unimp
 690:	0074                	addi	a3,sp,12
 692:	0000                	unimp
 694:	0000                	unimp
 696:	0000                	unimp
 698:	0084                	addi	s1,sp,64
	...
 6ae:	0000                	unimp
 6b0:	0048                	addi	a0,sp,4
 6b2:	0000                	unimp
 6b4:	0000                	unimp
 6b6:	0000                	unimp
 6b8:	0048                	addi	a0,sp,4
 6ba:	0000                	unimp
 6bc:	0000                	unimp
 6be:	0000                	unimp
 6c0:	0050                	addi	a2,sp,4
 6c2:	0000                	unimp
 6c4:	0000                	unimp
 6c6:	0000                	unimp
 6c8:	0064                	addi	s1,sp,12
	...
 6e6:	0000                	unimp
 6e8:	0004                	0x4
 6ea:	0000                	unimp
 6ec:	0000                	unimp
 6ee:	0000                	unimp
 6f0:	0014                	0x14
 6f2:	0000                	unimp
 6f4:	0000                	unimp
 6f6:	0000                	unimp
 6f8:	001c                	0x1c
 6fa:	0000                	unimp
 6fc:	0000                	unimp
 6fe:	0000                	unimp
 700:	0028                	addi	a0,sp,8
 702:	0000                	unimp
 704:	0000                	unimp
 706:	0000                	unimp
 708:	002c                	addi	a1,sp,8
	...
 726:	0000                	unimp
 728:	0008                	0x8
 72a:	0000                	unimp
 72c:	0000                	unimp
 72e:	0000                	unimp
 730:	000c                	0xc
 732:	0000                	unimp
 734:	0000                	unimp
 736:	0000                	unimp
 738:	0010                	0x10
 73a:	0000                	unimp
 73c:	0000                	unimp
 73e:	0000                	unimp
 740:	0014                	0x14
 742:	0000                	unimp
 744:	0000                	unimp
 746:	0000                	unimp
 748:	001c                	0x1c
	...
 75e:	0000                	unimp
 760:	0068                	addi	a0,sp,12
 762:	0000                	unimp
 764:	0000                	unimp
 766:	0000                	unimp
 768:	0074                	addi	a3,sp,12
 76a:	0000                	unimp
 76c:	0000                	unimp
 76e:	0000                	unimp
 770:	00b4                	addi	a3,sp,72
 772:	0000                	unimp
 774:	0000                	unimp
 776:	0000                	unimp
 778:	00ec                	addi	a1,sp,76
 77a:	0000                	unimp
 77c:	0000                	unimp
 77e:	0000                	unimp
 780:	0114                	addi	a3,sp,128
 782:	0000                	unimp
 784:	0000                	unimp
 786:	0000                	unimp
 788:	0130                	addi	a2,sp,136
	...
 7a6:	0000                	unimp
 7a8:	0018                	0x18
 7aa:	0000                	unimp
 7ac:	0000                	unimp
 7ae:	0000                	unimp
 7b0:	0018                	0x18
 7b2:	0000                	unimp
 7b4:	0000                	unimp
 7b6:	0000                	unimp
 7b8:	0034                	addi	a3,sp,8
	...


double-float.riscv：     文件格式 elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00011537          	lui	a0,0x11
   100bc:	58050513          	addi	a0,a0,1408 # 11580 <__libc_fini_array>
   100c0:	51c0106f          	j	115dc <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00002197          	auipc	gp,0x2
   100cc:	75818193          	addi	gp,gp,1880 # 12820 <__global_pointer$>
   100d0:	fd818513          	addi	a0,gp,-40 # 127f8 <completed.5525>
   100d4:	01018613          	addi	a2,gp,16 # 12830 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	29c010ef          	jal	ra,1137c <memset>
   100e4:	00001517          	auipc	a0,0x1
   100e8:	4f850513          	addi	a0,a0,1272 # 115dc <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00001517          	auipc	a0,0x1
   100f4:	49050513          	addi	a0,a0,1168 # 11580 <__libc_fini_array>
   100f8:	4e4010ef          	jal	ra,115dc <atexit>
   100fc:	1e4010ef          	jal	ra,112e0 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	074000ef          	jal	ra,10180 <main>
   10110:	1a00106f          	j	112b0 <exit>

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
   101c4:	659000ef          	jal	ra,1101c <__floatsidf>
   101c8:	00050713          	mv	a4,a0
   101cc:	000117b7          	lui	a5,0x11
   101d0:	6e87b583          	ld	a1,1768(a5) # 116e8 <__errno+0xc>
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
   10250:	5cd000ef          	jal	ra,1101c <__floatsidf>
   10254:	00050713          	mv	a4,a0
   10258:	000117b7          	lui	a5,0x11
   1025c:	6e87b583          	ld	a1,1768(a5) # 116e8 <__errno+0xc>
   10260:	00070513          	mv	a0,a4
   10264:	608000ef          	jal	ra,1086c <__muldf3>
   10268:	00050793          	mv	a5,a0
   1026c:	00078593          	mv	a1,a5
   10270:	00048513          	mv	a0,s1
   10274:	121000ef          	jal	ra,10b94 <__subdf3>
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
   102d8:	5c9000ef          	jal	ra,110a0 <__extendsfdf2>
   102dc:	00050493          	mv	s1,a0
   102e0:	fdc42783          	lw	a5,-36(s0)
   102e4:	00078513          	mv	a0,a5
   102e8:	535000ef          	jal	ra,1101c <__floatsidf>
   102ec:	00050713          	mv	a4,a0
   102f0:	000117b7          	lui	a5,0x11
   102f4:	6e87b583          	ld	a1,1768(a5) # 116e8 <__errno+0xc>
   102f8:	00070513          	mv	a0,a4
   102fc:	570000ef          	jal	ra,1086c <__muldf3>
   10300:	00050793          	mv	a5,a0
   10304:	00078593          	mv	a1,a5
   10308:	00048513          	mv	a0,s1
   1030c:	0f8000ef          	jal	ra,10404 <__adddf3>
   10310:	00050793          	mv	a5,a0
   10314:	00078513          	mv	a0,a5
   10318:	62d000ef          	jal	ra,11144 <__truncdfsf2>
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
   10370:	531000ef          	jal	ra,110a0 <__extendsfdf2>
   10374:	00050493          	mv	s1,a0
   10378:	fdc42783          	lw	a5,-36(s0)
   1037c:	00078513          	mv	a0,a5
   10380:	49d000ef          	jal	ra,1101c <__floatsidf>
   10384:	00050713          	mv	a4,a0
   10388:	000117b7          	lui	a5,0x11
   1038c:	6e87b583          	ld	a1,1768(a5) # 116e8 <__errno+0xc>
   10390:	00070513          	mv	a0,a4
   10394:	4d8000ef          	jal	ra,1086c <__muldf3>
   10398:	00050793          	mv	a5,a0
   1039c:	00078593          	mv	a1,a5
   103a0:	00048513          	mv	a0,s1
   103a4:	7f0000ef          	jal	ra,10b94 <__subdf3>
   103a8:	00050793          	mv	a5,a0
   103ac:	00078513          	mv	a0,a5
   103b0:	595000ef          	jal	ra,11144 <__truncdfsf2>
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
   10750:	325000ef          	jal	ra,11274 <__clzdi2>
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
   10918:	00e00613          	li	a2,14
   1091c:	01494533          	xor	a0,s2,s4
   10920:	00198693          	addi	a3,s3,1
   10924:	0ae66263          	bltu	a2,a4,109c8 <__muldf3+0x15c>
   10928:	00011637          	lui	a2,0x11
   1092c:	00271713          	slli	a4,a4,0x2
   10930:	6f060613          	addi	a2,a2,1776 # 116f0 <__errno+0x14>
   10934:	00c70733          	add	a4,a4,a2
   10938:	00072703          	lw	a4,0(a4)
   1093c:	00070067          	jr	a4
   10940:	02048c63          	beqz	s1,10978 <__muldf3+0x10c>
   10944:	00048513          	mv	a0,s1
   10948:	12d000ef          	jal	ra,11274 <__clzdi2>
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
   1098c:	0e9000ef          	jal	ra,11274 <__clzdi2>
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
   109d0:	0204d713          	srli	a4,s1,0x20
   109d4:	02045613          	srli	a2,s0,0x20
   109d8:	00f4f4b3          	and	s1,s1,a5
   109dc:	00f47433          	and	s0,s0,a5
   109e0:	029405b3          	mul	a1,s0,s1
   109e4:	02870433          	mul	s0,a4,s0
   109e8:	02c70733          	mul	a4,a4,a2
   109ec:	02960633          	mul	a2,a2,s1
   109f0:	0205d493          	srli	s1,a1,0x20
   109f4:	00860633          	add	a2,a2,s0
   109f8:	00c484b3          	add	s1,s1,a2
   109fc:	0084f863          	bgeu	s1,s0,10a0c <__muldf3+0x1a0>
   10a00:	00100793          	li	a5,1
   10a04:	02079793          	slli	a5,a5,0x20
   10a08:	00f70733          	add	a4,a4,a5
   10a0c:	fff00413          	li	s0,-1
   10a10:	02045413          	srli	s0,s0,0x20
   10a14:	0084f7b3          	and	a5,s1,s0
   10a18:	0085f5b3          	and	a1,a1,s0
   10a1c:	02079793          	slli	a5,a5,0x20
   10a20:	00b787b3          	add	a5,a5,a1
   10a24:	00979413          	slli	s0,a5,0x9
   10a28:	0204d493          	srli	s1,s1,0x20
   10a2c:	00803433          	snez	s0,s0
   10a30:	0377d793          	srli	a5,a5,0x37
   10a34:	00e484b3          	add	s1,s1,a4
   10a38:	00f467b3          	or	a5,s0,a5
   10a3c:	00949493          	slli	s1,s1,0x9
   10a40:	00f4e433          	or	s0,s1,a5
   10a44:	00749793          	slli	a5,s1,0x7
   10a48:	0807de63          	bgez	a5,10ae4 <__muldf3+0x278>
   10a4c:	00145793          	srli	a5,s0,0x1
   10a50:	00147413          	andi	s0,s0,1
   10a54:	0087e433          	or	s0,a5,s0
   10a58:	3ff68793          	addi	a5,a3,1023
   10a5c:	08f05863          	blez	a5,10aec <__muldf3+0x280>
   10a60:	00747713          	andi	a4,s0,7
   10a64:	00070a63          	beqz	a4,10a78 <__muldf3+0x20c>
   10a68:	00f47713          	andi	a4,s0,15
   10a6c:	00400613          	li	a2,4
   10a70:	00c70463          	beq	a4,a2,10a78 <__muldf3+0x20c>
   10a74:	00440413          	addi	s0,s0,4
   10a78:	00741713          	slli	a4,s0,0x7
   10a7c:	00075c63          	bgez	a4,10a94 <__muldf3+0x228>
   10a80:	fff00793          	li	a5,-1
   10a84:	03879793          	slli	a5,a5,0x38
   10a88:	fff78793          	addi	a5,a5,-1
   10a8c:	00f47433          	and	s0,s0,a5
   10a90:	40068793          	addi	a5,a3,1024
   10a94:	7fe00713          	li	a4,2046
   10a98:	00345413          	srli	s0,s0,0x3
   10a9c:	0af75c63          	bge	a4,a5,10b54 <__muldf3+0x2e8>
   10aa0:	00000413          	li	s0,0
   10aa4:	7ff00793          	li	a5,2047
   10aa8:	0ac0006f          	j	10b54 <__muldf3+0x2e8>
   10aac:	00090513          	mv	a0,s2
   10ab0:	00048413          	mv	s0,s1
   10ab4:	000a8793          	mv	a5,s5
   10ab8:	00200713          	li	a4,2
   10abc:	fee782e3          	beq	a5,a4,10aa0 <__muldf3+0x234>
   10ac0:	00300713          	li	a4,3
   10ac4:	08e78063          	beq	a5,a4,10b44 <__muldf3+0x2d8>
   10ac8:	00100713          	li	a4,1
   10acc:	f8e796e3          	bne	a5,a4,10a58 <__muldf3+0x1ec>
   10ad0:	00000413          	li	s0,0
   10ad4:	00000793          	li	a5,0
   10ad8:	07c0006f          	j	10b54 <__muldf3+0x2e8>
   10adc:	000a0513          	mv	a0,s4
   10ae0:	fd9ff06f          	j	10ab8 <__muldf3+0x24c>
   10ae4:	00098693          	mv	a3,s3
   10ae8:	f71ff06f          	j	10a58 <__muldf3+0x1ec>
   10aec:	00100713          	li	a4,1
   10af0:	40f70733          	sub	a4,a4,a5
   10af4:	03800793          	li	a5,56
   10af8:	fce7cce3          	blt	a5,a4,10ad0 <__muldf3+0x264>
   10afc:	04000693          	li	a3,64
   10b00:	00e457b3          	srl	a5,s0,a4
   10b04:	40e6873b          	subw	a4,a3,a4
   10b08:	00e41433          	sll	s0,s0,a4
   10b0c:	00803433          	snez	s0,s0
   10b10:	0087e433          	or	s0,a5,s0
   10b14:	00747793          	andi	a5,s0,7
   10b18:	00078a63          	beqz	a5,10b2c <__muldf3+0x2c0>
   10b1c:	00f47793          	andi	a5,s0,15
   10b20:	00400713          	li	a4,4
   10b24:	00e78463          	beq	a5,a4,10b2c <__muldf3+0x2c0>
   10b28:	00440413          	addi	s0,s0,4
   10b2c:	00841793          	slli	a5,s0,0x8
   10b30:	00345413          	srli	s0,s0,0x3
   10b34:	fa07d0e3          	bgez	a5,10ad4 <__muldf3+0x268>
   10b38:	00000413          	li	s0,0
   10b3c:	00100793          	li	a5,1
   10b40:	0140006f          	j	10b54 <__muldf3+0x2e8>
   10b44:	00100413          	li	s0,1
   10b48:	03341413          	slli	s0,s0,0x33
   10b4c:	7ff00793          	li	a5,2047
   10b50:	00000513          	li	a0,0
   10b54:	7ff7f793          	andi	a5,a5,2047
   10b58:	00c41413          	slli	s0,s0,0xc
   10b5c:	03479793          	slli	a5,a5,0x34
   10b60:	00c45413          	srli	s0,s0,0xc
   10b64:	0087e433          	or	s0,a5,s0
   10b68:	03f51513          	slli	a0,a0,0x3f
   10b6c:	03813083          	ld	ra,56(sp)
   10b70:	00a46533          	or	a0,s0,a0
   10b74:	03013403          	ld	s0,48(sp)
   10b78:	02813483          	ld	s1,40(sp)
   10b7c:	02013903          	ld	s2,32(sp)
   10b80:	01813983          	ld	s3,24(sp)
   10b84:	01013a03          	ld	s4,16(sp)
   10b88:	00813a83          	ld	s5,8(sp)
   10b8c:	04010113          	addi	sp,sp,64
   10b90:	00008067          	ret

0000000000010b94 <__subdf3>:
   10b94:	fff00713          	li	a4,-1
   10b98:	fe010113          	addi	sp,sp,-32
   10b9c:	00c75713          	srli	a4,a4,0xc
   10ba0:	0345d613          	srli	a2,a1,0x34
   10ba4:	03455813          	srli	a6,a0,0x34
   10ba8:	00a777b3          	and	a5,a4,a0
   10bac:	00813823          	sd	s0,16(sp)
   10bb0:	00b77733          	and	a4,a4,a1
   10bb4:	00913423          	sd	s1,8(sp)
   10bb8:	7ff87813          	andi	a6,a6,2047
   10bbc:	00113c23          	sd	ra,24(sp)
   10bc0:	01213023          	sd	s2,0(sp)
   10bc4:	7ff67613          	andi	a2,a2,2047
   10bc8:	7ff00693          	li	a3,2047
   10bcc:	00080413          	mv	s0,a6
   10bd0:	03f55493          	srli	s1,a0,0x3f
   10bd4:	00379793          	slli	a5,a5,0x3
   10bd8:	03f5d593          	srli	a1,a1,0x3f
   10bdc:	00371713          	slli	a4,a4,0x3
   10be0:	00d61463          	bne	a2,a3,10be8 <__subdf3+0x54>
   10be4:	00071463          	bnez	a4,10bec <__subdf3+0x58>
   10be8:	0015c593          	xori	a1,a1,1
   10bec:	40c806bb          	subw	a3,a6,a2
   10bf0:	0006851b          	sext.w	a0,a3
   10bf4:	18959e63          	bne	a1,s1,10d90 <__subdf3+0x1fc>
   10bf8:	0aa05863          	blez	a0,10ca8 <__subdf3+0x114>
   10bfc:	06061663          	bnez	a2,10c68 <__subdf3+0xd4>
   10c00:	04070663          	beqz	a4,10c4c <__subdf3+0xb8>
   10c04:	fff6851b          	addiw	a0,a3,-1
   10c08:	02051e63          	bnez	a0,10c44 <__subdf3+0xb0>
   10c0c:	00e787b3          	add	a5,a5,a4
   10c10:	00879713          	slli	a4,a5,0x8
   10c14:	02075c63          	bgez	a4,10c4c <__subdf3+0xb8>
   10c18:	00140413          	addi	s0,s0,1
   10c1c:	7ff00713          	li	a4,2047
   10c20:	36e40263          	beq	s0,a4,10f84 <__subdf3+0x3f0>
   10c24:	1ff00713          	li	a4,511
   10c28:	03671713          	slli	a4,a4,0x36
   10c2c:	0017f693          	andi	a3,a5,1
   10c30:	fff70713          	addi	a4,a4,-1
   10c34:	0017d793          	srli	a5,a5,0x1
   10c38:	00e7f7b3          	and	a5,a5,a4
   10c3c:	00d7e7b3          	or	a5,a5,a3
   10c40:	00c0006f          	j	10c4c <__subdf3+0xb8>
   10c44:	7ff00693          	li	a3,2047
   10c48:	02d81a63          	bne	a6,a3,10c7c <__subdf3+0xe8>
   10c4c:	0077f713          	andi	a4,a5,7
   10c50:	32070c63          	beqz	a4,10f88 <__subdf3+0x3f4>
   10c54:	00f7f713          	andi	a4,a5,15
   10c58:	00400693          	li	a3,4
   10c5c:	32d70663          	beq	a4,a3,10f88 <__subdf3+0x3f4>
   10c60:	00478793          	addi	a5,a5,4
   10c64:	3240006f          	j	10f88 <__subdf3+0x3f4>
   10c68:	7ff00693          	li	a3,2047
   10c6c:	fed800e3          	beq	a6,a3,10c4c <__subdf3+0xb8>
   10c70:	00100693          	li	a3,1
   10c74:	03769693          	slli	a3,a3,0x37
   10c78:	00d76733          	or	a4,a4,a3
   10c7c:	03800613          	li	a2,56
   10c80:	00100693          	li	a3,1
   10c84:	00a64e63          	blt	a2,a0,10ca0 <__subdf3+0x10c>
   10c88:	04000693          	li	a3,64
   10c8c:	00a75633          	srl	a2,a4,a0
   10c90:	40a6853b          	subw	a0,a3,a0
   10c94:	00a71733          	sll	a4,a4,a0
   10c98:	00e03733          	snez	a4,a4
   10c9c:	00e666b3          	or	a3,a2,a4
   10ca0:	00d787b3          	add	a5,a5,a3
   10ca4:	f6dff06f          	j	10c10 <__subdf3+0x7c>
   10ca8:	06050c63          	beqz	a0,10d20 <__subdf3+0x18c>
   10cac:	04081c63          	bnez	a6,10d04 <__subdf3+0x170>
   10cb0:	2a078a63          	beqz	a5,10f64 <__subdf3+0x3d0>
   10cb4:	fff00593          	li	a1,-1
   10cb8:	00b51863          	bne	a0,a1,10cc8 <__subdf3+0x134>
   10cbc:	00e787b3          	add	a5,a5,a4
   10cc0:	00060413          	mv	s0,a2
   10cc4:	f4dff06f          	j	10c10 <__subdf3+0x7c>
   10cc8:	7ff00593          	li	a1,2047
   10ccc:	2ab60663          	beq	a2,a1,10f78 <__subdf3+0x3e4>
   10cd0:	fff6c693          	not	a3,a3
   10cd4:	0006869b          	sext.w	a3,a3
   10cd8:	03800513          	li	a0,56
   10cdc:	00100593          	li	a1,1
   10ce0:	00d54e63          	blt	a0,a3,10cfc <__subdf3+0x168>
   10ce4:	04000593          	li	a1,64
   10ce8:	00d7d533          	srl	a0,a5,a3
   10cec:	40d586bb          	subw	a3,a1,a3
   10cf0:	00d797b3          	sll	a5,a5,a3
   10cf4:	00f037b3          	snez	a5,a5
   10cf8:	00f565b3          	or	a1,a0,a5
   10cfc:	00e587b3          	add	a5,a1,a4
   10d00:	fc1ff06f          	j	10cc0 <__subdf3+0x12c>
   10d04:	7ff00593          	li	a1,2047
   10d08:	26b60863          	beq	a2,a1,10f78 <__subdf3+0x3e4>
   10d0c:	00100593          	li	a1,1
   10d10:	03759593          	slli	a1,a1,0x37
   10d14:	40d006bb          	negw	a3,a3
   10d18:	00b7e7b3          	or	a5,a5,a1
   10d1c:	fbdff06f          	j	10cd8 <__subdf3+0x144>
   10d20:	00180693          	addi	a3,a6,1
   10d24:	7fe6f613          	andi	a2,a3,2046
   10d28:	04061863          	bnez	a2,10d78 <__subdf3+0x1e4>
   10d2c:	02081863          	bnez	a6,10d5c <__subdf3+0x1c8>
   10d30:	24078063          	beqz	a5,10f70 <__subdf3+0x3dc>
   10d34:	f0070ce3          	beqz	a4,10c4c <__subdf3+0xb8>
   10d38:	00e787b3          	add	a5,a5,a4
   10d3c:	00879713          	slli	a4,a5,0x8
   10d40:	f00756e3          	bgez	a4,10c4c <__subdf3+0xb8>
   10d44:	fff00713          	li	a4,-1
   10d48:	03771713          	slli	a4,a4,0x37
   10d4c:	fff70713          	addi	a4,a4,-1
   10d50:	00e7f7b3          	and	a5,a5,a4
   10d54:	00100413          	li	s0,1
   10d58:	ef5ff06f          	j	10c4c <__subdf3+0xb8>
   10d5c:	20078e63          	beqz	a5,10f78 <__subdf3+0x3e4>
   10d60:	18070063          	beqz	a4,10ee0 <__subdf3+0x34c>
   10d64:	00100793          	li	a5,1
   10d68:	00000493          	li	s1,0
   10d6c:	03679793          	slli	a5,a5,0x36
   10d70:	7ff00413          	li	s0,2047
   10d74:	2140006f          	j	10f88 <__subdf3+0x3f4>
   10d78:	7ff00613          	li	a2,2047
   10d7c:	20c68263          	beq	a3,a2,10f80 <__subdf3+0x3ec>
   10d80:	00e787b3          	add	a5,a5,a4
   10d84:	0017d793          	srli	a5,a5,0x1
   10d88:	00068413          	mv	s0,a3
   10d8c:	ec1ff06f          	j	10c4c <__subdf3+0xb8>
   10d90:	06a05c63          	blez	a0,10e08 <__subdf3+0x274>
   10d94:	04061e63          	bnez	a2,10df0 <__subdf3+0x25c>
   10d98:	ea070ae3          	beqz	a4,10c4c <__subdf3+0xb8>
   10d9c:	fff6851b          	addiw	a0,a3,-1
   10da0:	00051e63          	bnez	a0,10dbc <__subdf3+0x228>
   10da4:	40e787b3          	sub	a5,a5,a4
   10da8:	00879713          	slli	a4,a5,0x8
   10dac:	ea0750e3          	bgez	a4,10c4c <__subdf3+0xb8>
   10db0:	00979793          	slli	a5,a5,0x9
   10db4:	0097d913          	srli	s2,a5,0x9
   10db8:	1440006f          	j	10efc <__subdf3+0x368>
   10dbc:	7ff00693          	li	a3,2047
   10dc0:	e8d806e3          	beq	a6,a3,10c4c <__subdf3+0xb8>
   10dc4:	03800613          	li	a2,56
   10dc8:	00100693          	li	a3,1
   10dcc:	00a64e63          	blt	a2,a0,10de8 <__subdf3+0x254>
   10dd0:	04000693          	li	a3,64
   10dd4:	00a75633          	srl	a2,a4,a0
   10dd8:	40a6853b          	subw	a0,a3,a0
   10ddc:	00a71733          	sll	a4,a4,a0
   10de0:	00e03733          	snez	a4,a4
   10de4:	00e666b3          	or	a3,a2,a4
   10de8:	40d787b3          	sub	a5,a5,a3
   10dec:	fbdff06f          	j	10da8 <__subdf3+0x214>
   10df0:	7ff00693          	li	a3,2047
   10df4:	e4d80ce3          	beq	a6,a3,10c4c <__subdf3+0xb8>
   10df8:	00100693          	li	a3,1
   10dfc:	03769693          	slli	a3,a3,0x37
   10e00:	00d76733          	or	a4,a4,a3
   10e04:	fc1ff06f          	j	10dc4 <__subdf3+0x230>
   10e08:	06050e63          	beqz	a0,10e84 <__subdf3+0x2f0>
   10e0c:	04081e63          	bnez	a6,10e68 <__subdf3+0x2d4>
   10e10:	1e078663          	beqz	a5,10ffc <__subdf3+0x468>
   10e14:	fff00813          	li	a6,-1
   10e18:	01051a63          	bne	a0,a6,10e2c <__subdf3+0x298>
   10e1c:	40f707b3          	sub	a5,a4,a5
   10e20:	00060413          	mv	s0,a2
   10e24:	00058493          	mv	s1,a1
   10e28:	f81ff06f          	j	10da8 <__subdf3+0x214>
   10e2c:	7ff00513          	li	a0,2047
   10e30:	1ca60c63          	beq	a2,a0,11008 <__subdf3+0x474>
   10e34:	fff6c693          	not	a3,a3
   10e38:	0006869b          	sext.w	a3,a3
   10e3c:	03800813          	li	a6,56
   10e40:	00100513          	li	a0,1
   10e44:	00d84e63          	blt	a6,a3,10e60 <__subdf3+0x2cc>
   10e48:	04000513          	li	a0,64
   10e4c:	00d7d833          	srl	a6,a5,a3
   10e50:	40d506bb          	subw	a3,a0,a3
   10e54:	00d797b3          	sll	a5,a5,a3
   10e58:	00f037b3          	snez	a5,a5
   10e5c:	00f86533          	or	a0,a6,a5
   10e60:	40a707b3          	sub	a5,a4,a0
   10e64:	fbdff06f          	j	10e20 <__subdf3+0x28c>
   10e68:	7ff00513          	li	a0,2047
   10e6c:	18a60e63          	beq	a2,a0,11008 <__subdf3+0x474>
   10e70:	00100513          	li	a0,1
   10e74:	03751513          	slli	a0,a0,0x37
   10e78:	40d006bb          	negw	a3,a3
   10e7c:	00a7e7b3          	or	a5,a5,a0
   10e80:	fbdff06f          	j	10e3c <__subdf3+0x2a8>
   10e84:	00180693          	addi	a3,a6,1
   10e88:	7fe6f693          	andi	a3,a3,2046
   10e8c:	04069e63          	bnez	a3,10ee8 <__subdf3+0x354>
   10e90:	04081063          	bnez	a6,10ed0 <__subdf3+0x33c>
   10e94:	00079c63          	bnez	a5,10eac <__subdf3+0x318>
   10e98:	00000493          	li	s1,0
   10e9c:	0e070663          	beqz	a4,10f88 <__subdf3+0x3f4>
   10ea0:	00070793          	mv	a5,a4
   10ea4:	00058493          	mv	s1,a1
   10ea8:	da5ff06f          	j	10c4c <__subdf3+0xb8>
   10eac:	da0700e3          	beqz	a4,10c4c <__subdf3+0xb8>
   10eb0:	40e786b3          	sub	a3,a5,a4
   10eb4:	00869613          	slli	a2,a3,0x8
   10eb8:	40f707b3          	sub	a5,a4,a5
   10ebc:	fe0644e3          	bltz	a2,10ea4 <__subdf3+0x310>
   10ec0:	00000793          	li	a5,0
   10ec4:	08068063          	beqz	a3,10f44 <__subdf3+0x3b0>
   10ec8:	00068793          	mv	a5,a3
   10ecc:	d81ff06f          	j	10c4c <__subdf3+0xb8>
   10ed0:	e80798e3          	bnez	a5,10d60 <__subdf3+0x1cc>
   10ed4:	e80708e3          	beqz	a4,10d64 <__subdf3+0x1d0>
   10ed8:	00070793          	mv	a5,a4
   10edc:	00058493          	mv	s1,a1
   10ee0:	7ff00413          	li	s0,2047
   10ee4:	d69ff06f          	j	10c4c <__subdf3+0xb8>
   10ee8:	40e78933          	sub	s2,a5,a4
   10eec:	00891693          	slli	a3,s2,0x8
   10ef0:	0406d463          	bgez	a3,10f38 <__subdf3+0x3a4>
   10ef4:	40f70933          	sub	s2,a4,a5
   10ef8:	00058493          	mv	s1,a1
   10efc:	00090513          	mv	a0,s2
   10f00:	374000ef          	jal	ra,11274 <__clzdi2>
   10f04:	ff85079b          	addiw	a5,a0,-8
   10f08:	00f91933          	sll	s2,s2,a5
   10f0c:	0487c063          	blt	a5,s0,10f4c <__subdf3+0x3b8>
   10f10:	4087853b          	subw	a0,a5,s0
   10f14:	0015051b          	addiw	a0,a0,1
   10f18:	04000413          	li	s0,64
   10f1c:	00a957b3          	srl	a5,s2,a0
   10f20:	40a4053b          	subw	a0,s0,a0
   10f24:	00a91933          	sll	s2,s2,a0
   10f28:	01203933          	snez	s2,s2
   10f2c:	0127e7b3          	or	a5,a5,s2
   10f30:	00000413          	li	s0,0
   10f34:	d19ff06f          	j	10c4c <__subdf3+0xb8>
   10f38:	fc0912e3          	bnez	s2,10efc <__subdf3+0x368>
   10f3c:	00000793          	li	a5,0
   10f40:	00000413          	li	s0,0
   10f44:	00000493          	li	s1,0
   10f48:	0400006f          	j	10f88 <__subdf3+0x3f4>
   10f4c:	40f40433          	sub	s0,s0,a5
   10f50:	fff00793          	li	a5,-1
   10f54:	03779793          	slli	a5,a5,0x37
   10f58:	fff78793          	addi	a5,a5,-1
   10f5c:	00f977b3          	and	a5,s2,a5
   10f60:	cedff06f          	j	10c4c <__subdf3+0xb8>
   10f64:	00070793          	mv	a5,a4
   10f68:	00060413          	mv	s0,a2
   10f6c:	ce1ff06f          	j	10c4c <__subdf3+0xb8>
   10f70:	00070793          	mv	a5,a4
   10f74:	cd9ff06f          	j	10c4c <__subdf3+0xb8>
   10f78:	00070793          	mv	a5,a4
   10f7c:	f65ff06f          	j	10ee0 <__subdf3+0x34c>
   10f80:	7ff00413          	li	s0,2047
   10f84:	00000793          	li	a5,0
   10f88:	00879713          	slli	a4,a5,0x8
   10f8c:	02075063          	bgez	a4,10fac <__subdf3+0x418>
   10f90:	00140413          	addi	s0,s0,1
   10f94:	7ff00713          	li	a4,2047
   10f98:	06e40e63          	beq	s0,a4,11014 <__subdf3+0x480>
   10f9c:	fff00713          	li	a4,-1
   10fa0:	03771713          	slli	a4,a4,0x37
   10fa4:	fff70713          	addi	a4,a4,-1
   10fa8:	00e7f7b3          	and	a5,a5,a4
   10fac:	7ff00713          	li	a4,2047
   10fb0:	0037d793          	srli	a5,a5,0x3
   10fb4:	00e41a63          	bne	s0,a4,10fc8 <__subdf3+0x434>
   10fb8:	00078863          	beqz	a5,10fc8 <__subdf3+0x434>
   10fbc:	00100793          	li	a5,1
   10fc0:	03379793          	slli	a5,a5,0x33
   10fc4:	00000493          	li	s1,0
   10fc8:	7ff47413          	andi	s0,s0,2047
   10fcc:	00c79793          	slli	a5,a5,0xc
   10fd0:	03441413          	slli	s0,s0,0x34
   10fd4:	00c7d793          	srli	a5,a5,0xc
   10fd8:	01813083          	ld	ra,24(sp)
   10fdc:	00f467b3          	or	a5,s0,a5
   10fe0:	01013403          	ld	s0,16(sp)
   10fe4:	03f49513          	slli	a0,s1,0x3f
   10fe8:	00013903          	ld	s2,0(sp)
   10fec:	00813483          	ld	s1,8(sp)
   10ff0:	00a7e533          	or	a0,a5,a0
   10ff4:	02010113          	addi	sp,sp,32
   10ff8:	00008067          	ret
   10ffc:	00070793          	mv	a5,a4
   11000:	00060413          	mv	s0,a2
   11004:	ea1ff06f          	j	10ea4 <__subdf3+0x310>
   11008:	00070793          	mv	a5,a4
   1100c:	7ff00413          	li	s0,2047
   11010:	e95ff06f          	j	10ea4 <__subdf3+0x310>
   11014:	00000793          	li	a5,0
   11018:	f95ff06f          	j	10fac <__subdf3+0x418>

000000000001101c <__floatsidf>:
   1101c:	fe010113          	addi	sp,sp,-32
   11020:	00113c23          	sd	ra,24(sp)
   11024:	00813823          	sd	s0,16(sp)
   11028:	00913423          	sd	s1,8(sp)
   1102c:	06050263          	beqz	a0,11090 <__floatsidf+0x74>
   11030:	0005079b          	sext.w	a5,a0
   11034:	03f55493          	srli	s1,a0,0x3f
   11038:	00055463          	bgez	a0,11040 <__floatsidf+0x24>
   1103c:	40f007bb          	negw	a5,a5
   11040:	02079413          	slli	s0,a5,0x20
   11044:	02045413          	srli	s0,s0,0x20
   11048:	00040513          	mv	a0,s0
   1104c:	228000ef          	jal	ra,11274 <__clzdi2>
   11050:	43e00793          	li	a5,1086
   11054:	40a7873b          	subw	a4,a5,a0
   11058:	43300793          	li	a5,1075
   1105c:	40e787bb          	subw	a5,a5,a4
   11060:	00f417b3          	sll	a5,s0,a5
   11064:	01813083          	ld	ra,24(sp)
   11068:	01013403          	ld	s0,16(sp)
   1106c:	00c79793          	slli	a5,a5,0xc
   11070:	03471713          	slli	a4,a4,0x34
   11074:	00c7d793          	srli	a5,a5,0xc
   11078:	03f49513          	slli	a0,s1,0x3f
   1107c:	00f767b3          	or	a5,a4,a5
   11080:	00813483          	ld	s1,8(sp)
   11084:	00a7e533          	or	a0,a5,a0
   11088:	02010113          	addi	sp,sp,32
   1108c:	00008067          	ret
   11090:	00000793          	li	a5,0
   11094:	00000713          	li	a4,0
   11098:	00000493          	li	s1,0
   1109c:	fc9ff06f          	j	11064 <__floatsidf+0x48>

00000000000110a0 <__extendsfdf2>:
   110a0:	0175579b          	srliw	a5,a0,0x17
   110a4:	fe010113          	addi	sp,sp,-32
   110a8:	0ff7f793          	andi	a5,a5,255
   110ac:	00813823          	sd	s0,16(sp)
   110b0:	00913423          	sd	s1,8(sp)
   110b4:	02951413          	slli	s0,a0,0x29
   110b8:	01f5549b          	srliw	s1,a0,0x1f
   110bc:	00178513          	addi	a0,a5,1
   110c0:	00113c23          	sd	ra,24(sp)
   110c4:	0fe57513          	andi	a0,a0,254
   110c8:	02945413          	srli	s0,s0,0x29
   110cc:	02050c63          	beqz	a0,11104 <__extendsfdf2+0x64>
   110d0:	38078513          	addi	a0,a5,896
   110d4:	01d41413          	slli	s0,s0,0x1d
   110d8:	00c41413          	slli	s0,s0,0xc
   110dc:	03451513          	slli	a0,a0,0x34
   110e0:	00c45413          	srli	s0,s0,0xc
   110e4:	00856433          	or	s0,a0,s0
   110e8:	03f49513          	slli	a0,s1,0x3f
   110ec:	01813083          	ld	ra,24(sp)
   110f0:	00a46533          	or	a0,s0,a0
   110f4:	01013403          	ld	s0,16(sp)
   110f8:	00813483          	ld	s1,8(sp)
   110fc:	02010113          	addi	sp,sp,32
   11100:	00008067          	ret
   11104:	02079263          	bnez	a5,11128 <__extendsfdf2+0x88>
   11108:	fc0408e3          	beqz	s0,110d8 <__extendsfdf2+0x38>
   1110c:	00040513          	mv	a0,s0
   11110:	164000ef          	jal	ra,11274 <__clzdi2>
   11114:	ff55079b          	addiw	a5,a0,-11
   11118:	00f41433          	sll	s0,s0,a5
   1111c:	3a900793          	li	a5,937
   11120:	40a7853b          	subw	a0,a5,a0
   11124:	fb5ff06f          	j	110d8 <__extendsfdf2+0x38>
   11128:	7ff00513          	li	a0,2047
   1112c:	fa0406e3          	beqz	s0,110d8 <__extendsfdf2+0x38>
   11130:	00100793          	li	a5,1
   11134:	01d41413          	slli	s0,s0,0x1d
   11138:	03379793          	slli	a5,a5,0x33
   1113c:	00f46433          	or	s0,s0,a5
   11140:	f99ff06f          	j	110d8 <__extendsfdf2+0x38>

0000000000011144 <__truncdfsf2>:
   11144:	03455713          	srli	a4,a0,0x34
   11148:	7ff77713          	andi	a4,a4,2047
   1114c:	00170613          	addi	a2,a4,1
   11150:	00c51793          	slli	a5,a0,0xc
   11154:	7fe67613          	andi	a2,a2,2046
   11158:	00c7d693          	srli	a3,a5,0xc
   1115c:	03f55513          	srli	a0,a0,0x3f
   11160:	0097d793          	srli	a5,a5,0x9
   11164:	06060463          	beqz	a2,111cc <__truncdfsf2+0x88>
   11168:	c8070713          	addi	a4,a4,-896
   1116c:	0fe00613          	li	a2,254
   11170:	08e64063          	blt	a2,a4,111f0 <__truncdfsf2+0xac>
   11174:	04e04263          	bgtz	a4,111b8 <__truncdfsf2+0x74>
   11178:	fe900693          	li	a3,-23
   1117c:	0cd74a63          	blt	a4,a3,11250 <__truncdfsf2+0x10c>
   11180:	00100693          	li	a3,1
   11184:	03769693          	slli	a3,a3,0x37
   11188:	00d7e7b3          	or	a5,a5,a3
   1118c:	01e00693          	li	a3,30
   11190:	40e686bb          	subw	a3,a3,a4
   11194:	0227071b          	addiw	a4,a4,34
   11198:	00d7d6b3          	srl	a3,a5,a3
   1119c:	00e797b3          	sll	a5,a5,a4
   111a0:	00f037b3          	snez	a5,a5
   111a4:	00f6e7b3          	or	a5,a3,a5
   111a8:	00000713          	li	a4,0
   111ac:	0077f693          	andi	a3,a5,7
   111b0:	04068463          	beqz	a3,111f8 <__truncdfsf2+0xb4>
   111b4:	0a40006f          	j	11258 <__truncdfsf2+0x114>
   111b8:	02669693          	slli	a3,a3,0x26
   111bc:	01d7d793          	srli	a5,a5,0x1d
   111c0:	00d036b3          	snez	a3,a3
   111c4:	00d7e7b3          	or	a5,a5,a3
   111c8:	fe5ff06f          	j	111ac <__truncdfsf2+0x68>
   111cc:	00071663          	bnez	a4,111d8 <__truncdfsf2+0x94>
   111d0:	00f037b3          	snez	a5,a5
   111d4:	fd9ff06f          	j	111ac <__truncdfsf2+0x68>
   111d8:	0ff00713          	li	a4,255
   111dc:	00078e63          	beqz	a5,111f8 <__truncdfsf2+0xb4>
   111e0:	01d7d793          	srli	a5,a5,0x1d
   111e4:	ff87f793          	andi	a5,a5,-8
   111e8:	020006b7          	lui	a3,0x2000
   111ec:	fd9ff06f          	j	111c4 <__truncdfsf2+0x80>
   111f0:	00000793          	li	a5,0
   111f4:	0ff00713          	li	a4,255
   111f8:	02579693          	slli	a3,a5,0x25
   111fc:	0006de63          	bgez	a3,11218 <__truncdfsf2+0xd4>
   11200:	00170713          	addi	a4,a4,1
   11204:	0ff00693          	li	a3,255
   11208:	06d70263          	beq	a4,a3,1126c <__truncdfsf2+0x128>
   1120c:	fc0006b7          	lui	a3,0xfc000
   11210:	fff68693          	addi	a3,a3,-1 # fffffffffbffffff <__BSS_END__+0xfffffffffbfed7cf>
   11214:	00d7f7b3          	and	a5,a5,a3
   11218:	0ff00693          	li	a3,255
   1121c:	0037d793          	srli	a5,a5,0x3
   11220:	00d71863          	bne	a4,a3,11230 <__truncdfsf2+0xec>
   11224:	00078663          	beqz	a5,11230 <__truncdfsf2+0xec>
   11228:	004007b7          	lui	a5,0x400
   1122c:	00000513          	li	a0,0
   11230:	0ff77713          	andi	a4,a4,255
   11234:	02979793          	slli	a5,a5,0x29
   11238:	0177171b          	slliw	a4,a4,0x17
   1123c:	0297d793          	srli	a5,a5,0x29
   11240:	00e7e7b3          	or	a5,a5,a4
   11244:	01f5151b          	slliw	a0,a0,0x1f
   11248:	00f56533          	or	a0,a0,a5
   1124c:	00008067          	ret
   11250:	00100793          	li	a5,1
   11254:	00000713          	li	a4,0
   11258:	00f7f693          	andi	a3,a5,15
   1125c:	00400613          	li	a2,4
   11260:	f8c68ce3          	beq	a3,a2,111f8 <__truncdfsf2+0xb4>
   11264:	00478793          	addi	a5,a5,4 # 400004 <__BSS_END__+0x3ed7d4>
   11268:	f91ff06f          	j	111f8 <__truncdfsf2+0xb4>
   1126c:	00000793          	li	a5,0
   11270:	fa9ff06f          	j	11218 <__truncdfsf2+0xd4>

0000000000011274 <__clzdi2>:
   11274:	03800793          	li	a5,56
   11278:	00f55733          	srl	a4,a0,a5
   1127c:	0ff77713          	andi	a4,a4,255
   11280:	00071663          	bnez	a4,1128c <__clzdi2+0x18>
   11284:	ff878793          	addi	a5,a5,-8
   11288:	fe0798e3          	bnez	a5,11278 <__clzdi2+0x4>
   1128c:	00011737          	lui	a4,0x11
   11290:	04000693          	li	a3,64
   11294:	40f686b3          	sub	a3,a3,a5
   11298:	00f55533          	srl	a0,a0,a5
   1129c:	73070793          	addi	a5,a4,1840 # 11730 <__clz_tab>
   112a0:	00a78533          	add	a0,a5,a0
   112a4:	00054503          	lbu	a0,0(a0) # 12000 <__FRAME_END__>
   112a8:	40a6853b          	subw	a0,a3,a0
   112ac:	00008067          	ret

00000000000112b0 <exit>:
   112b0:	ff010113          	addi	sp,sp,-16
   112b4:	00000593          	li	a1,0
   112b8:	00813023          	sd	s0,0(sp)
   112bc:	00113423          	sd	ra,8(sp)
   112c0:	00050413          	mv	s0,a0
   112c4:	194000ef          	jal	ra,11458 <__call_exitprocs>
   112c8:	fc01b503          	ld	a0,-64(gp) # 127e0 <_global_impure_ptr>
   112cc:	05853783          	ld	a5,88(a0)
   112d0:	00078463          	beqz	a5,112d8 <exit+0x28>
   112d4:	000780e7          	jalr	a5
   112d8:	00040513          	mv	a0,s0
   112dc:	3bc000ef          	jal	ra,11698 <_exit>

00000000000112e0 <__libc_init_array>:
   112e0:	fe010113          	addi	sp,sp,-32
   112e4:	00813823          	sd	s0,16(sp)
   112e8:	01213023          	sd	s2,0(sp)
   112ec:	00012437          	lui	s0,0x12
   112f0:	00012937          	lui	s2,0x12
   112f4:	00440793          	addi	a5,s0,4 # 12004 <__preinit_array_end>
   112f8:	00490913          	addi	s2,s2,4 # 12004 <__preinit_array_end>
   112fc:	40f90933          	sub	s2,s2,a5
   11300:	00113c23          	sd	ra,24(sp)
   11304:	00913423          	sd	s1,8(sp)
   11308:	40395913          	srai	s2,s2,0x3
   1130c:	02090063          	beqz	s2,1132c <__libc_init_array+0x4c>
   11310:	00440413          	addi	s0,s0,4
   11314:	00000493          	li	s1,0
   11318:	00043783          	ld	a5,0(s0)
   1131c:	00148493          	addi	s1,s1,1
   11320:	00840413          	addi	s0,s0,8
   11324:	000780e7          	jalr	a5
   11328:	fe9918e3          	bne	s2,s1,11318 <__libc_init_array+0x38>
   1132c:	00012437          	lui	s0,0x12
   11330:	00012937          	lui	s2,0x12
   11334:	00840793          	addi	a5,s0,8 # 12008 <__init_array_start>
   11338:	01890913          	addi	s2,s2,24 # 12018 <__do_global_dtors_aux_fini_array_entry>
   1133c:	40f90933          	sub	s2,s2,a5
   11340:	40395913          	srai	s2,s2,0x3
   11344:	02090063          	beqz	s2,11364 <__libc_init_array+0x84>
   11348:	00840413          	addi	s0,s0,8
   1134c:	00000493          	li	s1,0
   11350:	00043783          	ld	a5,0(s0)
   11354:	00148493          	addi	s1,s1,1
   11358:	00840413          	addi	s0,s0,8
   1135c:	000780e7          	jalr	a5
   11360:	fe9918e3          	bne	s2,s1,11350 <__libc_init_array+0x70>
   11364:	01813083          	ld	ra,24(sp)
   11368:	01013403          	ld	s0,16(sp)
   1136c:	00813483          	ld	s1,8(sp)
   11370:	00013903          	ld	s2,0(sp)
   11374:	02010113          	addi	sp,sp,32
   11378:	00008067          	ret

000000000001137c <memset>:
   1137c:	00f00313          	li	t1,15
   11380:	00050713          	mv	a4,a0
   11384:	02c37a63          	bgeu	t1,a2,113b8 <memset+0x3c>
   11388:	00f77793          	andi	a5,a4,15
   1138c:	0a079063          	bnez	a5,1142c <memset+0xb0>
   11390:	06059e63          	bnez	a1,1140c <memset+0x90>
   11394:	ff067693          	andi	a3,a2,-16
   11398:	00f67613          	andi	a2,a2,15
   1139c:	00e686b3          	add	a3,a3,a4
   113a0:	00b73023          	sd	a1,0(a4)
   113a4:	00b73423          	sd	a1,8(a4)
   113a8:	01070713          	addi	a4,a4,16
   113ac:	fed76ae3          	bltu	a4,a3,113a0 <memset+0x24>
   113b0:	00061463          	bnez	a2,113b8 <memset+0x3c>
   113b4:	00008067          	ret
   113b8:	40c306b3          	sub	a3,t1,a2
   113bc:	00269693          	slli	a3,a3,0x2
   113c0:	00000297          	auipc	t0,0x0
   113c4:	005686b3          	add	a3,a3,t0
   113c8:	00c68067          	jr	12(a3)
   113cc:	00b70723          	sb	a1,14(a4)
   113d0:	00b706a3          	sb	a1,13(a4)
   113d4:	00b70623          	sb	a1,12(a4)
   113d8:	00b705a3          	sb	a1,11(a4)
   113dc:	00b70523          	sb	a1,10(a4)
   113e0:	00b704a3          	sb	a1,9(a4)
   113e4:	00b70423          	sb	a1,8(a4)
   113e8:	00b703a3          	sb	a1,7(a4)
   113ec:	00b70323          	sb	a1,6(a4)
   113f0:	00b702a3          	sb	a1,5(a4)
   113f4:	00b70223          	sb	a1,4(a4)
   113f8:	00b701a3          	sb	a1,3(a4)
   113fc:	00b70123          	sb	a1,2(a4)
   11400:	00b700a3          	sb	a1,1(a4)
   11404:	00b70023          	sb	a1,0(a4)
   11408:	00008067          	ret
   1140c:	0ff5f593          	andi	a1,a1,255
   11410:	00859693          	slli	a3,a1,0x8
   11414:	00d5e5b3          	or	a1,a1,a3
   11418:	01059693          	slli	a3,a1,0x10
   1141c:	00d5e5b3          	or	a1,a1,a3
   11420:	02059693          	slli	a3,a1,0x20
   11424:	00d5e5b3          	or	a1,a1,a3
   11428:	f6dff06f          	j	11394 <memset+0x18>
   1142c:	00279693          	slli	a3,a5,0x2
   11430:	00000297          	auipc	t0,0x0
   11434:	005686b3          	add	a3,a3,t0
   11438:	00008293          	mv	t0,ra
   1143c:	f98680e7          	jalr	-104(a3)
   11440:	00028093          	mv	ra,t0
   11444:	ff078793          	addi	a5,a5,-16
   11448:	40f70733          	sub	a4,a4,a5
   1144c:	00f60633          	add	a2,a2,a5
   11450:	f6c374e3          	bgeu	t1,a2,113b8 <memset+0x3c>
   11454:	f3dff06f          	j	11390 <memset+0x14>

0000000000011458 <__call_exitprocs>:
   11458:	fb010113          	addi	sp,sp,-80
   1145c:	03413023          	sd	s4,32(sp)
   11460:	fc01ba03          	ld	s4,-64(gp) # 127e0 <_global_impure_ptr>
   11464:	03213823          	sd	s2,48(sp)
   11468:	04113423          	sd	ra,72(sp)
   1146c:	1f8a3903          	ld	s2,504(s4)
   11470:	04813023          	sd	s0,64(sp)
   11474:	02913c23          	sd	s1,56(sp)
   11478:	03313423          	sd	s3,40(sp)
   1147c:	01513c23          	sd	s5,24(sp)
   11480:	01613823          	sd	s6,16(sp)
   11484:	01713423          	sd	s7,8(sp)
   11488:	01813023          	sd	s8,0(sp)
   1148c:	04090063          	beqz	s2,114cc <__call_exitprocs+0x74>
   11490:	00050b13          	mv	s6,a0
   11494:	00058b93          	mv	s7,a1
   11498:	00100a93          	li	s5,1
   1149c:	fff00993          	li	s3,-1
   114a0:	00892483          	lw	s1,8(s2)
   114a4:	fff4841b          	addiw	s0,s1,-1
   114a8:	02044263          	bltz	s0,114cc <__call_exitprocs+0x74>
   114ac:	00349493          	slli	s1,s1,0x3
   114b0:	009904b3          	add	s1,s2,s1
   114b4:	040b8463          	beqz	s7,114fc <__call_exitprocs+0xa4>
   114b8:	2084b783          	ld	a5,520(s1)
   114bc:	05778063          	beq	a5,s7,114fc <__call_exitprocs+0xa4>
   114c0:	fff4041b          	addiw	s0,s0,-1
   114c4:	ff848493          	addi	s1,s1,-8
   114c8:	ff3416e3          	bne	s0,s3,114b4 <__call_exitprocs+0x5c>
   114cc:	04813083          	ld	ra,72(sp)
   114d0:	04013403          	ld	s0,64(sp)
   114d4:	03813483          	ld	s1,56(sp)
   114d8:	03013903          	ld	s2,48(sp)
   114dc:	02813983          	ld	s3,40(sp)
   114e0:	02013a03          	ld	s4,32(sp)
   114e4:	01813a83          	ld	s5,24(sp)
   114e8:	01013b03          	ld	s6,16(sp)
   114ec:	00813b83          	ld	s7,8(sp)
   114f0:	00013c03          	ld	s8,0(sp)
   114f4:	05010113          	addi	sp,sp,80
   114f8:	00008067          	ret
   114fc:	00892783          	lw	a5,8(s2)
   11500:	0084b703          	ld	a4,8(s1)
   11504:	fff7879b          	addiw	a5,a5,-1
   11508:	06878263          	beq	a5,s0,1156c <__call_exitprocs+0x114>
   1150c:	0004b423          	sd	zero,8(s1)
   11510:	fa0708e3          	beqz	a4,114c0 <__call_exitprocs+0x68>
   11514:	31092783          	lw	a5,784(s2)
   11518:	008a96bb          	sllw	a3,s5,s0
   1151c:	00892c03          	lw	s8,8(s2)
   11520:	00d7f7b3          	and	a5,a5,a3
   11524:	0007879b          	sext.w	a5,a5
   11528:	02079263          	bnez	a5,1154c <__call_exitprocs+0xf4>
   1152c:	000700e7          	jalr	a4
   11530:	00892703          	lw	a4,8(s2)
   11534:	1f8a3783          	ld	a5,504(s4)
   11538:	01871463          	bne	a4,s8,11540 <__call_exitprocs+0xe8>
   1153c:	f8f902e3          	beq	s2,a5,114c0 <__call_exitprocs+0x68>
   11540:	f80786e3          	beqz	a5,114cc <__call_exitprocs+0x74>
   11544:	00078913          	mv	s2,a5
   11548:	f59ff06f          	j	114a0 <__call_exitprocs+0x48>
   1154c:	31492783          	lw	a5,788(s2)
   11550:	1084b583          	ld	a1,264(s1)
   11554:	00d7f7b3          	and	a5,a5,a3
   11558:	0007879b          	sext.w	a5,a5
   1155c:	00079c63          	bnez	a5,11574 <__call_exitprocs+0x11c>
   11560:	000b0513          	mv	a0,s6
   11564:	000700e7          	jalr	a4
   11568:	fc9ff06f          	j	11530 <__call_exitprocs+0xd8>
   1156c:	00892423          	sw	s0,8(s2)
   11570:	fa1ff06f          	j	11510 <__call_exitprocs+0xb8>
   11574:	00058513          	mv	a0,a1
   11578:	000700e7          	jalr	a4
   1157c:	fb5ff06f          	j	11530 <__call_exitprocs+0xd8>

0000000000011580 <__libc_fini_array>:
   11580:	fe010113          	addi	sp,sp,-32
   11584:	00813823          	sd	s0,16(sp)
   11588:	000127b7          	lui	a5,0x12
   1158c:	00012437          	lui	s0,0x12
   11590:	01840413          	addi	s0,s0,24 # 12018 <__do_global_dtors_aux_fini_array_entry>
   11594:	02078793          	addi	a5,a5,32 # 12020 <result_double>
   11598:	408787b3          	sub	a5,a5,s0
   1159c:	00913423          	sd	s1,8(sp)
   115a0:	00113c23          	sd	ra,24(sp)
   115a4:	4037d493          	srai	s1,a5,0x3
   115a8:	02048063          	beqz	s1,115c8 <__libc_fini_array+0x48>
   115ac:	ff878793          	addi	a5,a5,-8
   115b0:	00878433          	add	s0,a5,s0
   115b4:	00043783          	ld	a5,0(s0)
   115b8:	fff48493          	addi	s1,s1,-1
   115bc:	ff840413          	addi	s0,s0,-8
   115c0:	000780e7          	jalr	a5
   115c4:	fe0498e3          	bnez	s1,115b4 <__libc_fini_array+0x34>
   115c8:	01813083          	ld	ra,24(sp)
   115cc:	01013403          	ld	s0,16(sp)
   115d0:	00813483          	ld	s1,8(sp)
   115d4:	02010113          	addi	sp,sp,32
   115d8:	00008067          	ret

00000000000115dc <atexit>:
   115dc:	00050593          	mv	a1,a0
   115e0:	00000693          	li	a3,0
   115e4:	00000613          	li	a2,0
   115e8:	00000513          	li	a0,0
   115ec:	0040006f          	j	115f0 <__register_exitproc>

00000000000115f0 <__register_exitproc>:
   115f0:	fc01b703          	ld	a4,-64(gp) # 127e0 <_global_impure_ptr>
   115f4:	1f873783          	ld	a5,504(a4)
   115f8:	06078063          	beqz	a5,11658 <__register_exitproc+0x68>
   115fc:	0087a703          	lw	a4,8(a5)
   11600:	01f00813          	li	a6,31
   11604:	08e84663          	blt	a6,a4,11690 <__register_exitproc+0xa0>
   11608:	02050863          	beqz	a0,11638 <__register_exitproc+0x48>
   1160c:	00371813          	slli	a6,a4,0x3
   11610:	01078833          	add	a6,a5,a6
   11614:	10c83823          	sd	a2,272(a6)
   11618:	3107a883          	lw	a7,784(a5)
   1161c:	00100613          	li	a2,1
   11620:	00e6163b          	sllw	a2,a2,a4
   11624:	00c8e8b3          	or	a7,a7,a2
   11628:	3117a823          	sw	a7,784(a5)
   1162c:	20d83823          	sd	a3,528(a6)
   11630:	00200693          	li	a3,2
   11634:	02d50863          	beq	a0,a3,11664 <__register_exitproc+0x74>
   11638:	00270693          	addi	a3,a4,2
   1163c:	00369693          	slli	a3,a3,0x3
   11640:	0017071b          	addiw	a4,a4,1
   11644:	00e7a423          	sw	a4,8(a5)
   11648:	00d787b3          	add	a5,a5,a3
   1164c:	00b7b023          	sd	a1,0(a5)
   11650:	00000513          	li	a0,0
   11654:	00008067          	ret
   11658:	20070793          	addi	a5,a4,512
   1165c:	1ef73c23          	sd	a5,504(a4)
   11660:	f9dff06f          	j	115fc <__register_exitproc+0xc>
   11664:	3147a683          	lw	a3,788(a5)
   11668:	00000513          	li	a0,0
   1166c:	00c6e633          	or	a2,a3,a2
   11670:	00270693          	addi	a3,a4,2
   11674:	00369693          	slli	a3,a3,0x3
   11678:	0017071b          	addiw	a4,a4,1
   1167c:	30c7aa23          	sw	a2,788(a5)
   11680:	00e7a423          	sw	a4,8(a5)
   11684:	00d787b3          	add	a5,a5,a3
   11688:	00b7b023          	sd	a1,0(a5)
   1168c:	00008067          	ret
   11690:	fff00513          	li	a0,-1
   11694:	00008067          	ret

0000000000011698 <_exit>:
   11698:	00000593          	li	a1,0
   1169c:	00000613          	li	a2,0
   116a0:	00000693          	li	a3,0
   116a4:	00000713          	li	a4,0
   116a8:	00000793          	li	a5,0
   116ac:	05d00893          	li	a7,93
   116b0:	00000073          	ecall
   116b4:	00054463          	bltz	a0,116bc <_exit+0x24>
   116b8:	0000006f          	j	116b8 <_exit+0x20>
   116bc:	ff010113          	addi	sp,sp,-16
   116c0:	00813023          	sd	s0,0(sp)
   116c4:	00050413          	mv	s0,a0
   116c8:	00113423          	sd	ra,8(sp)
   116cc:	4080043b          	negw	s0,s0
   116d0:	00c000ef          	jal	ra,116dc <__errno>
   116d4:	00852023          	sw	s0,0(a0)
   116d8:	0000006f          	j	116d8 <_exit+0x40>

00000000000116dc <__errno>:
   116dc:	fd01b503          	ld	a0,-48(gp) # 127f0 <_impure_ptr>
   116e0:	00008067          	ret

Disassembly of section .rodata:

00000000000116e8 <__clz_tab-0x48>:
   116e8:	999a                	add	s3,s3,t1
   116ea:	9999                	andi	a1,a1,-26
   116ec:	9999                	andi	a1,a1,-26
   116ee:	3ff1                	addiw	t6,t6,-4
   116f0:	0ab8                	addi	a4,sp,344
   116f2:	0001                	nop
   116f4:	0ab8                	addi	a4,sp,344
   116f6:	0001                	nop
   116f8:	0adc                	addi	a5,sp,340
   116fa:	0001                	nop
   116fc:	0ab0                	addi	a2,sp,344
   116fe:	0001                	nop
   11700:	0ab0                	addi	a2,sp,344
   11702:	0001                	nop
   11704:	0b44                	addi	s1,sp,404
   11706:	0001                	nop
   11708:	0adc                	addi	a5,sp,340
   1170a:	0001                	nop
   1170c:	0ab0                	addi	a2,sp,344
   1170e:	0001                	nop
   11710:	0b44                	addi	s1,sp,404
   11712:	0001                	nop
   11714:	0ab0                	addi	a2,sp,344
   11716:	0001                	nop
   11718:	0adc                	addi	a5,sp,340
   1171a:	0001                	nop
   1171c:	0aac                	addi	a1,sp,344
   1171e:	0001                	nop
   11720:	0aac                	addi	a1,sp,344
   11722:	0001                	nop
   11724:	0aac                	addi	a1,sp,344
   11726:	0001                	nop
   11728:	0b44                	addi	s1,sp,404
   1172a:	0001                	nop
   1172c:	0000                	unimp
	...

0000000000011730 <__clz_tab>:
   11730:	0100                	addi	s0,sp,128
   11732:	0202                	c.slli64	tp
   11734:	03030303          	lb	t1,48(t1) # 101a4 <main+0x24>
   11738:	0404                	addi	s1,sp,512
   1173a:	0404                	addi	s1,sp,512
   1173c:	0404                	addi	s1,sp,512
   1173e:	0404                	addi	s1,sp,512
   11740:	0505                	addi	a0,a0,1
   11742:	0505                	addi	a0,a0,1
   11744:	0505                	addi	a0,a0,1
   11746:	0505                	addi	a0,a0,1
   11748:	0505                	addi	a0,a0,1
   1174a:	0505                	addi	a0,a0,1
   1174c:	0505                	addi	a0,a0,1
   1174e:	0505                	addi	a0,a0,1
   11750:	0606                	slli	a2,a2,0x1
   11752:	0606                	slli	a2,a2,0x1
   11754:	0606                	slli	a2,a2,0x1
   11756:	0606                	slli	a2,a2,0x1
   11758:	0606                	slli	a2,a2,0x1
   1175a:	0606                	slli	a2,a2,0x1
   1175c:	0606                	slli	a2,a2,0x1
   1175e:	0606                	slli	a2,a2,0x1
   11760:	0606                	slli	a2,a2,0x1
   11762:	0606                	slli	a2,a2,0x1
   11764:	0606                	slli	a2,a2,0x1
   11766:	0606                	slli	a2,a2,0x1
   11768:	0606                	slli	a2,a2,0x1
   1176a:	0606                	slli	a2,a2,0x1
   1176c:	0606                	slli	a2,a2,0x1
   1176e:	0606                	slli	a2,a2,0x1
   11770:	07070707          	0x7070707
   11774:	07070707          	0x7070707
   11778:	07070707          	0x7070707
   1177c:	07070707          	0x7070707
   11780:	07070707          	0x7070707
   11784:	07070707          	0x7070707
   11788:	07070707          	0x7070707
   1178c:	07070707          	0x7070707
   11790:	07070707          	0x7070707
   11794:	07070707          	0x7070707
   11798:	07070707          	0x7070707
   1179c:	07070707          	0x7070707
   117a0:	07070707          	0x7070707
   117a4:	07070707          	0x7070707
   117a8:	07070707          	0x7070707
   117ac:	07070707          	0x7070707
   117b0:	0808                	addi	a0,sp,16
   117b2:	0808                	addi	a0,sp,16
   117b4:	0808                	addi	a0,sp,16
   117b6:	0808                	addi	a0,sp,16
   117b8:	0808                	addi	a0,sp,16
   117ba:	0808                	addi	a0,sp,16
   117bc:	0808                	addi	a0,sp,16
   117be:	0808                	addi	a0,sp,16
   117c0:	0808                	addi	a0,sp,16
   117c2:	0808                	addi	a0,sp,16
   117c4:	0808                	addi	a0,sp,16
   117c6:	0808                	addi	a0,sp,16
   117c8:	0808                	addi	a0,sp,16
   117ca:	0808                	addi	a0,sp,16
   117cc:	0808                	addi	a0,sp,16
   117ce:	0808                	addi	a0,sp,16
   117d0:	0808                	addi	a0,sp,16
   117d2:	0808                	addi	a0,sp,16
   117d4:	0808                	addi	a0,sp,16
   117d6:	0808                	addi	a0,sp,16
   117d8:	0808                	addi	a0,sp,16
   117da:	0808                	addi	a0,sp,16
   117dc:	0808                	addi	a0,sp,16
   117de:	0808                	addi	a0,sp,16
   117e0:	0808                	addi	a0,sp,16
   117e2:	0808                	addi	a0,sp,16
   117e4:	0808                	addi	a0,sp,16
   117e6:	0808                	addi	a0,sp,16
   117e8:	0808                	addi	a0,sp,16
   117ea:	0808                	addi	a0,sp,16
   117ec:	0808                	addi	a0,sp,16
   117ee:	0808                	addi	a0,sp,16
   117f0:	0808                	addi	a0,sp,16
   117f2:	0808                	addi	a0,sp,16
   117f4:	0808                	addi	a0,sp,16
   117f6:	0808                	addi	a0,sp,16
   117f8:	0808                	addi	a0,sp,16
   117fa:	0808                	addi	a0,sp,16
   117fc:	0808                	addi	a0,sp,16
   117fe:	0808                	addi	a0,sp,16
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
  48:	0328                	addi	a0,sp,392
	...
  5e:	0000                	unimp
  60:	002c                	addi	a1,sp,8
  62:	0000                	unimp
  64:	0002                	c.slli64	zero
  66:	0778                	addi	a4,sp,908
  68:	0000                	unimp
  6a:	0008                	0x8
  6c:	0000                	unimp
  6e:	0000                	unimp
  70:	0b94                	addi	a3,sp,464
  72:	0001                	nop
  74:	0000                	unimp
  76:	0000                	unimp
  78:	0488                	addi	a0,sp,576
	...
  8e:	0000                	unimp
  90:	002c                	addi	a1,sp,8
  92:	0000                	unimp
  94:	0002                	c.slli64	zero
  96:	0b10                	addi	a2,sp,400
  98:	0000                	unimp
  9a:	0008                	0x8
  9c:	0000                	unimp
  9e:	0000                	unimp
  a0:	101c                	addi	a5,sp,32
  a2:	0001                	nop
  a4:	0000                	unimp
  a6:	0000                	unimp
  a8:	0084                	addi	s1,sp,64
	...
  be:	0000                	unimp
  c0:	002c                	addi	a1,sp,8
  c2:	0000                	unimp
  c4:	0002                	c.slli64	zero
  c6:	00000d6b          	0xd6b
  ca:	0008                	0x8
  cc:	0000                	unimp
  ce:	0000                	unimp
  d0:	10a0                	addi	s0,sp,104
  d2:	0001                	nop
  d4:	0000                	unimp
  d6:	0000                	unimp
  d8:	00a4                	addi	s1,sp,72
	...
  ee:	0000                	unimp
  f0:	002c                	addi	a1,sp,8
  f2:	0000                	unimp
  f4:	0002                	c.slli64	zero
  f6:	1026                	c.slli	zero,0x29
  f8:	0000                	unimp
  fa:	0008                	0x8
  fc:	0000                	unimp
  fe:	0000                	unimp
 100:	1144                	addi	s1,sp,164
 102:	0001                	nop
 104:	0000                	unimp
 106:	0000                	unimp
 108:	0130                	addi	a2,sp,136
	...
 11e:	0000                	unimp
 120:	002c                	addi	a1,sp,8
 122:	0000                	unimp
 124:	0002                	c.slli64	zero
 126:	00001303          	lh	t1,0(zero) # 0 <register_fini-0x100b0>
 12a:	0008                	0x8
 12c:	0000                	unimp
 12e:	0000                	unimp
 130:	1274                	addi	a3,sp,300
 132:	0001                	nop
 134:	0000                	unimp
 136:	0000                	unimp
 138:	003c                	addi	a5,sp,8
	...
 14e:	0000                	unimp
 150:	001c                	0x1c
 152:	0000                	unimp
 154:	0002                	c.slli64	zero
 156:	1efc                	addi	a5,sp,892
 158:	0000                	unimp
 15a:	0008                	0x8
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
       0:	0394                	addi	a3,sp,448
       2:	0000                	unimp
       4:	0004                	0x4
       6:	0000                	unimp
       8:	0000                	unimp
       a:	0108                	addi	a0,sp,128
       c:	010a                	slli	sp,sp,0x2
       e:	0000                	unimp
      10:	2e0c                	fld	fa1,24(a2)
      12:	0000                	unimp
      14:	7600                	ld	s0,40(a2)
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
      30:	05f4                	addi	a3,sp,716
      32:	0000                	unimp
      34:	1002                	c.slli	zero,0x20
      36:	d305                	beqz	a4,ffffffffffffff56 <__BSS_END__+0xfffffffffffed726>
      38:	0001                	nop
      3a:	0200                	addi	s0,sp,256
      3c:	0710                	addi	a2,sp,896
      3e:	0000                	unimp
      40:	0000                	unimp
      42:	0802                	c.slli64	a6
      44:	4c05                	li	s8,1
      46:	0002                	c.slli64	zero
      48:	0200                	addi	s0,sp,256
      4a:	0601                	addi	a2,a2,0
      4c:	01ed                	addi	gp,gp,27
      4e:	0000                	unimp
      50:	69050403          	lb	s0,1680(a0)
      54:	746e                	ld	s0,248(sp)
      56:	0400                	addi	s0,sp,512
      58:	01fe                	slli	gp,gp,0x1f
      5a:	0000                	unimp
      5c:	4a02                	lw	s4,0(sp)
      5e:	1601                	addi	a2,a2,-32
      60:	0069                	c.nop	26
      62:	0000                	unimp
      64:	5705                	li	a4,-31
      66:	0000                	unimp
      68:	0200                	addi	s0,sp,256
      6a:	0801                	addi	a6,a6,0
      6c:	000001eb          	0x1eb
      70:	0402                	c.slli64	s0
      72:	00021f07          	0x21f07
      76:	0200                	addi	s0,sp,256
      78:	0708                	addi	a0,sp,896
      7a:	021a                	slli	tp,tp,0x6
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
      94:	0206                	slli	tp,tp,0x1
      96:	0000                	unimp
      98:	3c04                	fld	fs1,56(s0)
      9a:	8e16                	mv	t3,t0
      9c:	0000                	unimp
      9e:	0900                	addi	s0,sp,144
      a0:	00e5                	addi	ra,ra,25
      a2:	0000                	unimp
      a4:	2d0f4803          	lbu	a6,720(t5)
      a8:	0000                	unimp
      aa:	0a00                	addi	s0,sp,272
      ac:	0308                	addi	a0,sp,384
      ae:	03ca                	slli	t2,t2,0x12
      b0:	00e5                	addi	ra,ra,25
      b2:	0000                	unimp
      b4:	0002100b          	0x2100b
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
      d4:	0007290b          	0x7290b
      d8:	0300                	addi	s0,sp,384
      da:	00700ed3          	fadd.s	ft9,ft0,ft7,rne
      de:	0000                	unimp
      e0:	0104                	addi	s1,sp,128
      e2:	0400                	addi	s0,sp,512
      e4:	0200                	addi	s0,sp,256
      e6:	0708                	addi	a0,sp,896
      e8:	0215                	addi	tp,tp,5
      ea:	0000                	unimp
      ec:	6c0d                	lui	s8,0x3
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
     106:	02a0                	addi	s0,sp,328
     108:	0000                	unimp
     10a:	ab05d503          	lhu	a0,-1360(a1)
     10e:	0000                	unimp
     110:	0000                	unimp
     112:	2510                	fld	fa2,8(a0)
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
     150:	5c12                	lw	s8,36(sp)
     152:	0000                	unimp
     154:	0100                	addi	s0,sp,128
     156:	0325                	addi	t1,t1,9
     158:	0050                	addi	a2,sp,4
     15a:	0000                	unimp
     15c:	0178                	addi	a4,sp,140
     15e:	0000                	unimp
     160:	0002be13          	sltiu	t3,t0,0
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
     238:	0001a917          	auipc	s2,0x1a
     23c:	0100                	addi	s0,sp,128
     23e:	032c                	addi	a1,sp,392
     240:	00ec                	addi	a1,sp,76
     242:	0000                	unimp
     244:	1600                	addi	s0,sp,800
     246:	0060                	addi	s0,sp,12
     248:	0000                	unimp
     24a:	0000025b          	0x25b
     24e:	0001a917          	auipc	s2,0x1a
     252:	0100                	addi	s0,sp,128
     254:	032d                	addi	t1,t1,11
     256:	00ec                	addi	a1,sp,76
     258:	0000                	unimp
     25a:	1600                	addi	s0,sp,800
     25c:	0100                	addi	s0,sp,128
     25e:	0000                	unimp
     260:	02b5                	addi	t0,t0,13
     262:	0000                	unimp
     264:	9618                	0x9618
     266:	0002                	c.slli64	zero
     268:	0100                	addi	s0,sp,128
     26a:	032e                	slli	t1,t1,0xb
     26c:	04d8                	addi	a4,sp,580
     26e:	0001                	nop
     270:	0000                	unimp
     272:	0000                	unimp
     274:	9b18                	0x9b18
     276:	0002                	c.slli64	zero
     278:	0100                	addi	s0,sp,128
     27a:	032e                	slli	t1,t1,0xb
     27c:	0530                	addi	a2,sp,648
     27e:	0001                	nop
     280:	0000                	unimp
     282:	0000                	unimp
     284:	2c18                	fld	fa4,24(s0)
     286:	0002                	c.slli64	zero
     288:	0100                	addi	s0,sp,128
     28a:	032e                	slli	t1,t1,0xb
     28c:	046c                	addi	a1,sp,524
     28e:	0001                	nop
     290:	0000                	unimp
     292:	0000                	unimp
     294:	0118                	addi	a4,sp,128
     296:	0001                	nop
     298:	0100                	addi	s0,sp,128
     29a:	032e                	slli	t1,t1,0xb
     29c:	04a8                	addi	a0,sp,584
     29e:	0001                	nop
     2a0:	0000                	unimp
     2a2:	0000                	unimp
     2a4:	5512                	lw	a0,36(sp)
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
     2be:	dc18                	sw	a4,56(s0)
     2c0:	0001                	nop
     2c2:	0100                	addi	s0,sp,128
     2c4:	032e                	slli	t1,t1,0xb
     2c6:	061c                	addi	a5,sp,768
     2c8:	0001                	nop
     2ca:	0000                	unimp
     2cc:	0000                	unimp
     2ce:	e118                	sd	a4,0(a0)
     2d0:	0001                	nop
     2d2:	0100                	addi	s0,sp,128
     2d4:	032e                	slli	t1,t1,0xb
     2d6:	0690                	addi	a2,sp,832
     2d8:	0001                	nop
     2da:	0000                	unimp
     2dc:	0000                	unimp
     2de:	e618                	sd	a4,8(a2)
     2e0:	0001                	nop
     2e2:	0100                	addi	s0,sp,128
     2e4:	032e                	slli	t1,t1,0xb
     2e6:	0600                	addi	s0,sp,768
     2e8:	0001                	nop
     2ea:	0000                	unimp
     2ec:	0000                	unimp
     2ee:	f918                	sd	a4,48(a0)
     2f0:	0001                	nop
     2f2:	0100                	addi	s0,sp,128
     2f4:	032e                	slli	t1,t1,0xb
     2f6:	074c                	addi	a1,sp,900
     2f8:	0001                	nop
     2fa:	0000                	unimp
     2fc:	0000                	unimp
     2fe:	7818                	ld	a4,48(s0)
     300:	0002                	c.slli64	zero
     302:	0100                	addi	s0,sp,128
     304:	032e                	slli	t1,t1,0xb
     306:	04a8                	addi	a0,sp,584
     308:	0001                	nop
     30a:	0000                	unimp
     30c:	0000                	unimp
     30e:	5512                	lw	a0,36(sp)
     310:	0002                	c.slli64	zero
     312:	0100                	addi	s0,sp,128
     314:	032e                	slli	t1,t1,0xb
     316:	0050                	addi	a2,sp,4
     318:	0000                	unimp
     31a:	000010db          	0x10db
     31e:	d019                	beqz	s0,224 <register_fini-0xfe8c>
     320:	0001                	nop
     322:	1200                	addi	s0,sp,288
     324:	0231                	addi	tp,tp,12
     326:	0000                	unimp
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
     33e:	0002a517          	auipc	a0,0x2a
     342:	0100                	addi	s0,sp,128
     344:	0050032f          	0x50032f
     348:	0000                	unimp
     34a:	171a                	slli	a4,a4,0x26
     34c:	0061                	c.nop	24
     34e:	0000                	unimp
     350:	2f01                	sext.w	t5,t5
     352:	00039003          	lh	zero,0(t2)
     356:	1700                	addi	s0,sp,928
     358:	01be                	slli	gp,gp,0xf
     35a:	0000                	unimp
     35c:	2f01                	sext.w	t5,t5
     35e:	00039003          	lh	zero,0(t2)
     362:	1700                	addi	s0,sp,928
     364:	0281                	addi	t0,t0,0
     366:	0000                	unimp
     368:	2f01                	sext.w	t5,t5
     36a:	00039003          	lh	zero,0(t2)
     36e:	1700                	addi	s0,sp,928
     370:	00ec                	addi	a1,sp,76
     372:	0000                	unimp
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
     392:	4705                	li	a4,1
     394:	0002                	c.slli64	zero
     396:	0000                	unimp
     398:	03dc                	addi	a5,sp,452
     39a:	0000                	unimp
     39c:	0004                	0x4
     39e:	0184                	addi	s1,sp,192
     3a0:	0000                	unimp
     3a2:	0108                	addi	a0,sp,128
     3a4:	010a                	slli	sp,sp,0x2
     3a6:	0000                	unimp
     3a8:	c30c                	sw	a1,0(a4)
     3aa:	76000003          	lb	zero,1888(zero) # 760 <register_fini-0xf950>
     3ae:	0000                	unimp
     3b0:	6c00                	ld	s0,24(s0)
     3b2:	0108                	addi	a0,sp,128
     3b4:	0000                	unimp
     3b6:	0000                	unimp
     3b8:	2800                	fld	fs0,16(s0)
     3ba:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
     3be:	0000                	unimp
     3c0:	7a00                	ld	s0,48(a2)
     3c2:	000a                	c.slli	zero,0x2
     3c4:	0200                	addi	s0,sp,256
     3c6:	0408                	addi	a0,sp,512
     3c8:	05f4                	addi	a3,sp,716
     3ca:	0000                	unimp
     3cc:	1002                	c.slli	zero,0x20
     3ce:	d305                	beqz	a4,2ee <register_fini-0xfdc2>
     3d0:	0001                	nop
     3d2:	0200                	addi	s0,sp,256
     3d4:	0710                	addi	a2,sp,896
     3d6:	0000                	unimp
     3d8:	0000                	unimp
     3da:	0802                	c.slli64	a6
     3dc:	4c05                	li	s8,1
     3de:	0002                	c.slli64	zero
     3e0:	0200                	addi	s0,sp,256
     3e2:	0601                	addi	a2,a2,0
     3e4:	01ed                	addi	gp,gp,27
     3e6:	0000                	unimp
     3e8:	69050403          	lb	s0,1680(a0) # 2a9ce <__BSS_END__+0x1819e>
     3ec:	746e                	ld	s0,248(sp)
     3ee:	0400                	addi	s0,sp,512
     3f0:	01fe                	slli	gp,gp,0x1f
     3f2:	0000                	unimp
     3f4:	4a02                	lw	s4,0(sp)
     3f6:	1601                	addi	a2,a2,-32
     3f8:	0069                	c.nop	26
     3fa:	0000                	unimp
     3fc:	5705                	li	a4,-31
     3fe:	0000                	unimp
     400:	0200                	addi	s0,sp,256
     402:	0801                	addi	a6,a6,0
     404:	000001eb          	0x1eb
     408:	0c04                	addi	s1,sp,528
     40a:	02000003          	lb	zero,32(zero) # 20 <register_fini-0x10090>
     40e:	7d16014b          	0x7d16014b
     412:	0000                	unimp
     414:	0200                	addi	s0,sp,256
     416:	0704                	addi	s1,sp,896
     418:	021f 0000 0802      	0x8020000021f
     41e:	00021a07          	0x21a07
     422:	0400                	addi	s0,sp,512
     424:	02ff                	0x2ff
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
     446:	0206                	slli	tp,tp,0x1
     448:	0000                	unimp
     44a:	3c04                	fld	fs1,56(s0)
     44c:	a816                	fsd	ft5,16(sp)
     44e:	0000                	unimp
     450:	0900                	addi	s0,sp,144
     452:	00e5                	addi	ra,ra,25
     454:	0000                	unimp
     456:	2d0f4803          	lbu	a6,720(t5)
     45a:	0000                	unimp
     45c:	0a00                	addi	s0,sp,272
     45e:	0308                	addi	a0,sp,384
     460:	03ca                	slli	t2,t2,0x12
     462:	00ff                	0xff
     464:	0000                	unimp
     466:	0002100b          	0x2100b
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
     486:	0007290b          	0x7290b
     48a:	0300                	addi	s0,sp,384
     48c:	007d0ed3          	fadd.s	ft9,fs10,ft7,rne
     490:	0000                	unimp
     492:	0104                	addi	s1,sp,128
     494:	0400                	addi	s0,sp,512
     496:	0200                	addi	s0,sp,256
     498:	0708                	addi	a0,sp,896
     49a:	0215                	addi	tp,tp,5
     49c:	0000                	unimp
     49e:	6c0d                	lui	s8,0x3
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
     4b8:	02a0                	addi	s0,sp,328
     4ba:	0000                	unimp
     4bc:	c505d503          	lhu	a0,-944(a1)
     4c0:	0000                	unimp
     4c2:	0000                	unimp
     4c4:	ba10                	fsd	fa2,48(a2)
     4c6:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     4ca:	00b90123          	sb	a1,2(s2) # 1a250 <__BSS_END__+0x7a20>
     4ce:	0000                	unimp
     4d0:	086c                	addi	a1,sp,28
     4d2:	0001                	nop
     4d4:	0000                	unimp
     4d6:	0000                	unimp
     4d8:	0328                	addi	a0,sp,392
     4da:	0000                	unimp
     4dc:	0000                	unimp
     4de:	0000                	unimp
     4e0:	9c01                	subw	s0,s0,s0
     4e2:	03d8                	addi	a4,sp,452
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
     502:	5c12                	lw	s8,36(sp)
     504:	0000                	unimp
     506:	0100                	addi	s0,sp,128
     508:	0325                	addi	t1,t1,9
     50a:	0050                	addi	a2,sp,4
     50c:	0000                	unimp
     50e:	142c                	addi	a1,sp,552
     510:	0000                	unimp
     512:	0002be13          	sltiu	t3,t0,0
     516:	0100                	addi	s0,sp,128
     518:	0325                	addi	t1,t1,9
     51a:	0050                	addi	a2,sp,4
     51c:	0000                	unimp
     51e:	1400                	addi	s0,sp,544
     520:	5f41                	li	t5,-16
     522:	26010063          	beqz	sp,782 <register_fini-0xf92e>
     526:	0003d803          	lhu	a6,0(t2)
     52a:	6400                	ld	s0,8(s0)
     52c:	0014                	0x14
     52e:	1400                	addi	s0,sp,544
     530:	5f41                	li	t5,-16
     532:	26010073          	0x26010073
     536:	0003d803          	lhu	a6,0(t2)
     53a:	ae00                	fsd	fs0,24(a2)
     53c:	0014                	0x14
     53e:	1400                	addi	s0,sp,544
     540:	5f41                	li	t5,-16
     542:	0065                	c.nop	25
     544:	2601                	sext.w	a2,a2
     546:	0003d803          	lhu	a6,0(t2)
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
     566:	0003d803          	lhu	a6,0(t2)
     56a:	3600                	fld	fs0,40(a2)
     56c:	0016                	c.slli	zero,0x5
     56e:	1400                	addi	s0,sp,544
     570:	5f42                	lw	t5,48(sp)
     572:	27010073          	0x27010073
     576:	0003d803          	lhu	a6,0(t2)
     57a:	a600                	fsd	fs0,8(a2)
     57c:	0016                	c.slli	zero,0x5
     57e:	1400                	addi	s0,sp,544
     580:	5f42                	lw	t5,48(sp)
     582:	0065                	c.nop	25
     584:	2701                	sext.w	a4,a4
     586:	0003d803          	lhu	a6,0(t2)
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
     5a6:	0003d803          	lhu	a6,0(t2)
     5aa:	0f00                	addi	s0,sp,912
     5ac:	0018                	0x18
     5ae:	1400                	addi	s0,sp,544
     5b0:	5f52                	lw	t5,52(sp)
     5b2:	28010073          	0x28010073
     5b6:	0003d803          	lhu	a6,0(t2)
     5ba:	5a00                	lw	s0,48(a2)
     5bc:	0018                	0x18
     5be:	1400                	addi	s0,sp,544
     5c0:	5f52                	lw	t5,52(sp)
     5c2:	0065                	c.nop	25
     5c4:	2801                	sext.w	a6,a6
     5c6:	0003d803          	lhu	a6,0(t2)
     5ca:	e600                	sd	s0,8(a2)
     5cc:	0018                	0x18
     5ce:	1400                	addi	s0,sp,544
     5d0:	5f52                	lw	t5,52(sp)
     5d2:	0066                	c.slli	zero,0x19
     5d4:	2801                	sext.w	a6,a6
     5d6:	0000ff03          	0xff03
     5da:	df00                	sw	s0,56(a4)
     5dc:	0019                	c.nop	6
     5de:	1400                	addi	s0,sp,544
     5e0:	0072                	c.slli	zero,0x1c
     5e2:	2901                	sext.w	s2,s2
     5e4:	b90a                	fsd	ft2,176(sp)
     5e6:	0000                	unimp
     5e8:	8b00                	0x8b00
     5ea:	001a                	c.slli	zero,0x6
     5ec:	1500                	addi	s0,sp,672
     5ee:	0290                	addi	a2,sp,320
     5f0:	0000                	unimp
     5f2:	0000026b          	0x26b
     5f6:	a916                	fsd	ft5,144(sp)
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
     60c:	1412                	slli	s0,s0,0x24
     60e:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     612:	032c                	addi	a1,sp,392
     614:	03d8                	addi	a4,sp,452
     616:	0000                	unimp
     618:	1ac8                	addi	a0,sp,372
     61a:	0000                	unimp
     61c:	1500                	addi	s0,sp,672
     61e:	0320                	addi	s0,sp,392
     620:	0000                	unimp
     622:	0000029b          	sext.w	t0,zero
     626:	a916                	fsd	ft5,144(sp)
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
     63c:	1412                	slli	s0,s0,0x24
     63e:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     642:	032d                	addi	t1,t1,11
     644:	03d8                	addi	a4,sp,452
     646:	0000                	unimp
     648:	1aed                	addi	s5,s5,-5
     64a:	0000                	unimp
     64c:	1700                	addi	s0,sp,928
     64e:	09c8                	addi	a0,sp,212
     650:	0001                	nop
     652:	0000                	unimp
     654:	0000                	unimp
     656:	007c                	addi	a5,sp,12
     658:	0000                	unimp
     65a:	0000                	unimp
     65c:	0000                	unimp
     65e:	0371                	addi	t1,t1,28
     660:	0000                	unimp
     662:	c312                	sw	tp,132(sp)
     664:	0002                	c.slli64	zero
     666:	0100                	addi	s0,sp,128
     668:	032e                	slli	t1,t1,0xb
     66a:	00ff                	0xff
     66c:	0000                	unimp
     66e:	1b12                	slli	s6,s6,0x24
     670:	0000                	unimp
     672:	dc12                	sw	tp,56(sp)
     674:	0002                	c.slli64	zero
     676:	0100                	addi	s0,sp,128
     678:	032e                	slli	t1,t1,0xb
     67a:	00ff                	0xff
     67c:	0000                	unimp
     67e:	00001b5b          	0x1b5b
     682:	9018                	0x9018
     684:	12000003          	lb	zero,288(zero) # 120 <register_fini-0xff90>
     688:	00000307          	0x307
     68c:	2e01                	sext.w	t3,t3
     68e:	0000ff03          	0xff03
     692:	9900                	0x9900
     694:	1200001b          	addiw	zero,zero,288
     698:	03a6                	slli	t2,t2,0x9
     69a:	0000                	unimp
     69c:	2e01                	sext.w	t3,t3
     69e:	0000ff03          	0xff03
     6a2:	bc00                	fsd	fs0,56(s0)
     6a4:	1200001b          	addiw	zero,zero,288
     6a8:	03f1                	addi	t2,t2,28
     6aa:	0000                	unimp
     6ac:	2e01                	sext.w	t3,t3
     6ae:	0000ff03          	0xff03
     6b2:	0a00                	addi	s0,sp,272
     6b4:	001c                	0x1c
     6b6:	1200                	addi	s0,sp,288
     6b8:	000003ab          	0x3ab
     6bc:	2e01                	sext.w	t3,t3
     6be:	0000ff03          	0xff03
     6c2:	2d00                	fld	fs0,24(a0)
     6c4:	001c                	0x1c
     6c6:	1200                	addi	s0,sp,288
     6c8:	02fa                	slli	t0,t0,0x1e
     6ca:	0000                	unimp
     6cc:	2e01                	sext.w	t3,t3
     6ce:	00008b03          	lb	s6,0(ra)
     6d2:	6300                	ld	s0,0(a4)
     6d4:	001c                	0x1c
     6d6:	1200                	addi	s0,sp,288
     6d8:	03b5                	addi	t2,t2,13
     6da:	0000                	unimp
     6dc:	2e01                	sext.w	t3,t3
     6de:	00008b03          	lb	s6,0(ra)
     6e2:	8600                	0x8600
     6e4:	001c                	0x1c
     6e6:	1200                	addi	s0,sp,288
     6e8:	02f5                	addi	t0,t0,29
     6ea:	0000                	unimp
     6ec:	2e01                	sext.w	t3,t3
     6ee:	00008b03          	lb	s6,0(ra)
     6f2:	a900                	fsd	fs0,16(a0)
     6f4:	001c                	0x1c
     6f6:	1200                	addi	s0,sp,288
     6f8:	03b0                	addi	a2,sp,456
     6fa:	0000                	unimp
     6fc:	2e01                	sext.w	t3,t3
     6fe:	00008b03          	lb	s6,0(ra)
     702:	cc00                	sw	s0,24(s0)
     704:	001c                	0x1c
     706:	0000                	unimp
     708:	1500                	addi	s0,sp,672
     70a:	03d0                	addi	a2,sp,452
     70c:	0000                	unimp
     70e:	03b9                	addi	t2,t2,14
     710:	0000                	unimp
     712:	7416                	ld	s0,352(sp)
     714:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     718:	0050032f          	0x50032f
     71c:	0000                	unimp
     71e:	1619                	addi	a2,a2,-26
     720:	0000038f          	0x38f
     724:	2f01                	sext.w	t5,t5
     726:	0003d803          	lhu	a6,0(t2)
     72a:	1600                	addi	s0,sp,800
     72c:	035d                	addi	t1,t1,23
     72e:	0000                	unimp
     730:	2f01                	sext.w	t5,t5
     732:	0003d803          	lhu	a6,0(t2)
     736:	1600                	addi	s0,sp,800
     738:	0346                	slli	t1,t1,0x11
     73a:	0000                	unimp
     73c:	2f01                	sext.w	t5,t5
     73e:	0003d803          	lhu	a6,0(t2)
     742:	1600                	addi	s0,sp,800
     744:	0000032f          	0x32f
     748:	2f01                	sext.w	t5,t5
     74a:	0000ff03          	0xff03
     74e:	0000                	unimp
     750:	1a00                	addi	s0,sp,304
     752:	0b54                	addi	a3,sp,404
     754:	0001                	nop
     756:	0000                	unimp
     758:	0000                	unimp
     75a:	0018                	0x18
     75c:	0000                	unimp
     75e:	0000                	unimp
     760:	0000                	unimp
     762:	1216                	slli	tp,tp,0x25
     764:	0000                	unimp
     766:	0100                	addi	s0,sp,128
     768:	0106032f          	0x106032f
     76c:	0000                	unimp
     76e:	0000                	unimp
     770:	0802                	c.slli64	a6
     772:	4705                	li	a4,1
     774:	0002                	c.slli64	zero
     776:	0000                	unimp
     778:	0394                	addi	a3,sp,448
     77a:	0000                	unimp
     77c:	0004                	0x4
     77e:	02fe                	slli	t0,t0,0x1f
     780:	0000                	unimp
     782:	0108                	addi	a0,sp,128
     784:	010a                	slli	sp,sp,0x2
     786:	0000                	unimp
     788:	ff0c                	sd	a1,56(a4)
     78a:	76000003          	lb	zero,1888(zero) # 760 <register_fini-0xf950>
     78e:	0000                	unimp
     790:	9400                	0x9400
     792:	0000010b          	0x10b
     796:	0000                	unimp
     798:	8800                	0x8800
     79a:	0004                	0x4
     79c:	0000                	unimp
     79e:	0000                	unimp
     7a0:	3200                	fld	fs0,32(a2)
     7a2:	0012                	c.slli	zero,0x4
     7a4:	0200                	addi	s0,sp,256
     7a6:	0408                	addi	a0,sp,512
     7a8:	05f4                	addi	a3,sp,716
     7aa:	0000                	unimp
     7ac:	1002                	c.slli	zero,0x20
     7ae:	d305                	beqz	a4,6ce <register_fini-0xf9e2>
     7b0:	0001                	nop
     7b2:	0200                	addi	s0,sp,256
     7b4:	0710                	addi	a2,sp,896
     7b6:	0000                	unimp
     7b8:	0000                	unimp
     7ba:	0802                	c.slli64	a6
     7bc:	4c05                	li	s8,1
     7be:	0002                	c.slli64	zero
     7c0:	0200                	addi	s0,sp,256
     7c2:	0601                	addi	a2,a2,0
     7c4:	01ed                	addi	gp,gp,27
     7c6:	0000                	unimp
     7c8:	69050403          	lb	s0,1680(a0)
     7cc:	746e                	ld	s0,248(sp)
     7ce:	0400                	addi	s0,sp,512
     7d0:	01fe                	slli	gp,gp,0x1f
     7d2:	0000                	unimp
     7d4:	4a02                	lw	s4,0(sp)
     7d6:	1601                	addi	a2,a2,-32
     7d8:	0069                	c.nop	26
     7da:	0000                	unimp
     7dc:	5705                	li	a4,-31
     7de:	0000                	unimp
     7e0:	0200                	addi	s0,sp,256
     7e2:	0801                	addi	a6,a6,0
     7e4:	000001eb          	0x1eb
     7e8:	0402                	c.slli64	s0
     7ea:	00021f07          	0x21f07
     7ee:	0200                	addi	s0,sp,256
     7f0:	0708                	addi	a0,sp,896
     7f2:	021a                	slli	tp,tp,0x6
     7f4:	0000                	unimp
     7f6:	6406                	ld	s0,64(sp)
     7f8:	0000                	unimp
     7fa:	8e00                	0x8e00
     7fc:	0000                	unimp
     7fe:	0700                	addi	s0,sp,896
     800:	00000077          	0x77
     804:	00ff                	0xff
     806:	7e05                	lui	t3,0xfffe1
     808:	0000                	unimp
     80a:	0800                	addi	s0,sp,16
     80c:	0206                	slli	tp,tp,0x1
     80e:	0000                	unimp
     810:	3c04                	fld	fs1,56(s0)
     812:	8e16                	mv	t3,t0
     814:	0000                	unimp
     816:	0900                	addi	s0,sp,144
     818:	00e5                	addi	ra,ra,25
     81a:	0000                	unimp
     81c:	2d0f4803          	lbu	a6,720(t5)
     820:	0000                	unimp
     822:	0a00                	addi	s0,sp,272
     824:	0308                	addi	a0,sp,384
     826:	03ca                	slli	t2,t2,0x12
     828:	00e5                	addi	ra,ra,25
     82a:	0000                	unimp
     82c:	0002100b          	0x2100b
     830:	0300                	addi	s0,sp,384
     832:	10d1                	addi	ra,ra,-12
     834:	00e5                	addi	ra,ra,25
     836:	0000                	unimp
     838:	3408                	fld	fa0,40(s0)
     83a:	000c                	0xc
     83c:	650c                	ld	a1,8(a0)
     83e:	7078                	ld	a4,224(s0)
     840:	0300                	addi	s0,sp,384
     842:	0ed2                	slli	t4,t4,0x14
     844:	0070                	addi	a2,sp,12
     846:	0000                	unimp
     848:	0b04                	addi	s1,sp,400
     84a:	0401                	addi	s0,s0,0
     84c:	0007290b          	0x7290b
     850:	0300                	addi	s0,sp,384
     852:	00700ed3          	fadd.s	ft9,ft0,ft7,rne
     856:	0000                	unimp
     858:	0104                	addi	s1,sp,128
     85a:	0400                	addi	s0,sp,512
     85c:	0200                	addi	s0,sp,256
     85e:	0708                	addi	a0,sp,896
     860:	0215                	addi	tp,tp,5
     862:	0000                	unimp
     864:	6c0d                	lui	s8,0x3
     866:	0002                	c.slli64	zero
     868:	0800                	addi	s0,sp,16
     86a:	1207c703          	lbu	a4,288(a5)
     86e:	0001                	nop
     870:	0e00                	addi	s0,sp,784
     872:	6c66                	ld	s8,88(sp)
     874:	0074                	addi	a3,sp,12
     876:	9f0ac903          	lbu	s2,-1552(s5)
     87a:	0000                	unimp
     87c:	0f00                	addi	s0,sp,912
     87e:	02a0                	addi	s0,sp,328
     880:	0000                	unimp
     882:	ab05d503          	lhu	a0,-1360(a1)
     886:	0000                	unimp
     888:	0000                	unimp
     88a:	f610                	sd	a2,40(a2)
     88c:	01000003          	lb	zero,16(zero) # 10 <register_fini-0x100a0>
     890:	009f0123          	sb	s1,2(t5)
     894:	0000                	unimp
     896:	0b94                	addi	a3,sp,464
     898:	0001                	nop
     89a:	0000                	unimp
     89c:	0000                	unimp
     89e:	0488                	addi	a0,sp,576
     8a0:	0000                	unimp
     8a2:	0000                	unimp
     8a4:	0000                	unimp
     8a6:	9c01                	subw	s0,s0,s0
     8a8:	0390                	addi	a2,sp,448
     8aa:	0000                	unimp
     8ac:	6111                	addi	sp,sp,256
     8ae:	0100                	addi	s0,sp,128
     8b0:	009f1223          	sh	s1,4(t5)
     8b4:	0000                	unimp
     8b6:	00001cef          	jal	s9,18b6 <register_fini-0xe7fa>
     8ba:	6211                	lui	tp,0x4
     8bc:	0100                	addi	s0,sp,128
     8be:	009f1c23          	sh	s1,24(t5)
     8c2:	0000                	unimp
     8c4:	1d2a                	slli	s10,s10,0x2a
     8c6:	0000                	unimp
     8c8:	5c12                	lw	s8,36(sp)
     8ca:	0000                	unimp
     8cc:	0100                	addi	s0,sp,128
     8ce:	0325                	addi	t1,t1,9
     8d0:	0050                	addi	a2,sp,4
     8d2:	0000                	unimp
     8d4:	1d65                	addi	s10,s10,-7
     8d6:	0000                	unimp
     8d8:	0002be13          	sltiu	t3,t0,0
     8dc:	0100                	addi	s0,sp,128
     8de:	0325                	addi	t1,t1,9
     8e0:	0050                	addi	a2,sp,4
     8e2:	0000                	unimp
     8e4:	1400                	addi	s0,sp,544
     8e6:	5f41                	li	t5,-16
     8e8:	26010063          	beqz	sp,b48 <register_fini-0xf568>
     8ec:	00039003          	lh	zero,0(t2)
     8f0:	1500                	addi	s0,sp,672
     8f2:	5f41                	li	t5,-16
     8f4:	26010073          	0x26010073
     8f8:	00039003          	lh	zero,0(t2)
     8fc:	ed00                	sd	s0,24(a0)
     8fe:	001d                	c.nop	7
     900:	1500                	addi	s0,sp,672
     902:	5f41                	li	t5,-16
     904:	0065                	c.nop	25
     906:	2601                	sext.w	a2,a2
     908:	00039003          	lh	zero,0(t2)
     90c:	bb00                	fsd	fs0,48(a4)
     90e:	001e                	c.slli	zero,0x7
     910:	1500                	addi	s0,sp,672
     912:	5f41                	li	t5,-16
     914:	0066                	c.slli	zero,0x19
     916:	2601                	sext.w	a2,a2
     918:	0000e503          	lwu	a0,0(ra)
     91c:	b900                	fsd	fs0,48(a0)
     91e:	0020                	addi	s0,sp,8
     920:	1400                	addi	s0,sp,544
     922:	5f42                	lw	t5,48(sp)
     924:	27010063          	beq	sp,a6,b84 <register_fini-0xf52c>
     928:	00039003          	lh	zero,0(t2)
     92c:	1500                	addi	s0,sp,672
     92e:	5f42                	lw	t5,48(sp)
     930:	27010073          	0x27010073
     934:	00039003          	lh	zero,0(t2)
     938:	a400                	fsd	fs0,8(s0)
     93a:	0022                	c.slli	zero,0x8
     93c:	1500                	addi	s0,sp,672
     93e:	5f42                	lw	t5,48(sp)
     940:	0065                	c.nop	25
     942:	2701                	sext.w	a4,a4
     944:	00039003          	lh	zero,0(t2)
     948:	8a00                	0x8a00
     94a:	15000023          	sb	a6,320(zero) # 140 <register_fini-0xff70>
     94e:	5f42                	lw	t5,48(sp)
     950:	0066                	c.slli	zero,0x19
     952:	2701                	sext.w	a4,a4
     954:	0000e503          	lwu	a0,0(ra)
     958:	9100                	0x9100
     95a:	0024                	addi	s1,sp,8
     95c:	1400                	addi	s0,sp,544
     95e:	5f52                	lw	t5,52(sp)
     960:	28010063          	beqz	sp,be0 <register_fini-0xf4d0>
     964:	00039003          	lh	zero,0(t2)
     968:	1500                	addi	s0,sp,672
     96a:	5f52                	lw	t5,52(sp)
     96c:	28010073          	0x28010073
     970:	00039003          	lh	zero,0(t2)
     974:	8500                	0x8500
     976:	0025                	c.nop	9
     978:	1500                	addi	s0,sp,672
     97a:	5f52                	lw	t5,52(sp)
     97c:	0065                	c.nop	25
     97e:	2801                	sext.w	a6,a6
     980:	00039003          	lh	zero,0(t2)
     984:	6600                	ld	s0,8(a2)
     986:	0026                	c.slli	zero,0x9
     988:	1500                	addi	s0,sp,672
     98a:	5f52                	lw	t5,52(sp)
     98c:	0066                	c.slli	zero,0x19
     98e:	2801                	sext.w	a6,a6
     990:	0000e503          	lwu	a0,0(ra)
     994:	2700                	fld	fs0,8(a4)
     996:	0028                	addi	a0,sp,8
     998:	1500                	addi	s0,sp,672
     99a:	0072                	c.slli	zero,0x1c
     99c:	2901                	sext.w	s2,s2
     99e:	9f0a                	add	t5,t5,sp
     9a0:	0000                	unimp
     9a2:	ba00                	fsd	fs0,48(a2)
     9a4:	002a                	c.slli	zero,0xa
     9a6:	1600                	addi	s0,sp,800
     9a8:	0400                	addi	s0,sp,512
     9aa:	0000                	unimp
     9ac:	0245                	addi	tp,tp,17
     9ae:	0000                	unimp
     9b0:	0001a917          	auipc	s2,0x1a
     9b4:	0100                	addi	s0,sp,128
     9b6:	032c                	addi	a1,sp,392
     9b8:	00ec                	addi	a1,sp,76
     9ba:	0000                	unimp
     9bc:	1600                	addi	s0,sp,800
     9be:	0460                	addi	s0,sp,524
     9c0:	0000                	unimp
     9c2:	0000025b          	0x25b
     9c6:	0001a917          	auipc	s2,0x1a
     9ca:	0100                	addi	s0,sp,128
     9cc:	032d                	addi	t1,t1,11
     9ce:	00ec                	addi	a1,sp,76
     9d0:	0000                	unimp
     9d2:	1600                	addi	s0,sp,800
     9d4:	04f0                	addi	a2,sp,588
     9d6:	0000                	unimp
     9d8:	02b5                	addi	t0,t0,13
     9da:	0000                	unimp
     9dc:	9618                	0x9618
     9de:	0002                	c.slli64	zero
     9e0:	0100                	addi	s0,sp,128
     9e2:	032e                	slli	t1,t1,0xb
     9e4:	0c7c                	addi	a5,sp,540
     9e6:	0001                	nop
     9e8:	0000                	unimp
     9ea:	0000                	unimp
     9ec:	9b18                	0x9b18
     9ee:	0002                	c.slli64	zero
     9f0:	0100                	addi	s0,sp,128
     9f2:	032e                	slli	t1,t1,0xb
     9f4:	0cd8                	addi	a4,sp,596
     9f6:	0001                	nop
     9f8:	0000                	unimp
     9fa:	0000                	unimp
     9fc:	2c18                	fld	fa4,24(s0)
     9fe:	0002                	c.slli64	zero
     a00:	0100                	addi	s0,sp,128
     a02:	032e                	slli	t1,t1,0xb
     a04:	0c10                	addi	a2,sp,528
     a06:	0001                	nop
     a08:	0000                	unimp
     a0a:	0000                	unimp
     a0c:	0118                	addi	a4,sp,128
     a0e:	0001                	nop
     a10:	0100                	addi	s0,sp,128
     a12:	032e                	slli	t1,t1,0xb
     a14:	0c4c                	addi	a1,sp,532
     a16:	0001                	nop
     a18:	0000                	unimp
     a1a:	0000                	unimp
     a1c:	5512                	lw	a0,36(sp)
     a1e:	0002                	c.slli64	zero
     a20:	0100                	addi	s0,sp,128
     a22:	032e                	slli	t1,t1,0xb
     a24:	0050                	addi	a2,sp,4
     a26:	0000                	unimp
     a28:	00002af7          	0x2af7
     a2c:	1600                	addi	s0,sp,800
     a2e:	0550                	addi	a2,sp,644
     a30:	0000                	unimp
     a32:	0335                	addi	t1,t1,13
     a34:	0000                	unimp
     a36:	dc18                	sw	a4,56(s0)
     a38:	0001                	nop
     a3a:	0100                	addi	s0,sp,128
     a3c:	032e                	slli	t1,t1,0xb
     a3e:	0dc4                	addi	s1,sp,724
     a40:	0001                	nop
     a42:	0000                	unimp
     a44:	0000                	unimp
     a46:	e118                	sd	a4,0(a0)
     a48:	0001                	nop
     a4a:	0100                	addi	s0,sp,128
     a4c:	032e                	slli	t1,t1,0xb
     a4e:	0e3c                	addi	a5,sp,792
     a50:	0001                	nop
     a52:	0000                	unimp
     a54:	0000                	unimp
     a56:	e618                	sd	a4,8(a2)
     a58:	0001                	nop
     a5a:	0100                	addi	s0,sp,128
     a5c:	032e                	slli	t1,t1,0xb
     a5e:	0da8                	addi	a0,sp,728
     a60:	0001                	nop
     a62:	0000                	unimp
     a64:	0000                	unimp
     a66:	f918                	sd	a4,48(a0)
     a68:	0001                	nop
     a6a:	0100                	addi	s0,sp,128
     a6c:	032e                	slli	t1,t1,0xb
     a6e:	0efc                	addi	a5,sp,860
     a70:	0001                	nop
     a72:	0000                	unimp
     a74:	0000                	unimp
     a76:	7818                	ld	a4,48(s0)
     a78:	0002                	c.slli64	zero
     a7a:	0100                	addi	s0,sp,128
     a7c:	032e                	slli	t1,t1,0xb
     a7e:	0c4c                	addi	a1,sp,532
     a80:	0001                	nop
     a82:	0000                	unimp
     a84:	0000                	unimp
     a86:	5512                	lw	a0,36(sp)
     a88:	0002                	c.slli64	zero
     a8a:	0100                	addi	s0,sp,128
     a8c:	032e                	slli	t1,t1,0xb
     a8e:	0050                	addi	a2,sp,4
     a90:	0000                	unimp
     a92:	2c0a                	fld	fs8,128(sp)
     a94:	0000                	unimp
     a96:	b019                	j	29c <register_fini-0xfe14>
     a98:	0005                	c.nop	1
     a9a:	1200                	addi	s0,sp,288
     a9c:	0231                	addi	tp,tp,12
     a9e:	0000                	unimp
     aa0:	2e01                	sext.w	t3,t3
     aa2:	00005003          	lhu	zero,0(zero) # 0 <register_fini-0x100b0>
     aa6:	0900                	addi	s0,sp,144
     aa8:	002d                	c.nop	11
     aaa:	0000                	unimp
     aac:	1600                	addi	s0,sp,800
     aae:	05f0                	addi	a2,sp,716
     ab0:	0000                	unimp
     ab2:	037d                	addi	t1,t1,31
     ab4:	0000                	unimp
     ab6:	0002a517          	auipc	a0,0x2a
     aba:	0100                	addi	s0,sp,128
     abc:	0050032f          	0x50032f
     ac0:	0000                	unimp
     ac2:	171a                	slli	a4,a4,0x26
     ac4:	0061                	c.nop	24
     ac6:	0000                	unimp
     ac8:	2f01                	sext.w	t5,t5
     aca:	00039003          	lh	zero,0(t2)
     ace:	1700                	addi	s0,sp,928
     ad0:	01be                	slli	gp,gp,0xf
     ad2:	0000                	unimp
     ad4:	2f01                	sext.w	t5,t5
     ad6:	00039003          	lh	zero,0(t2)
     ada:	1700                	addi	s0,sp,928
     adc:	0281                	addi	t0,t0,0
     ade:	0000                	unimp
     ae0:	2f01                	sext.w	t5,t5
     ae2:	00039003          	lh	zero,0(t2)
     ae6:	1700                	addi	s0,sp,928
     ae8:	00ec                	addi	a1,sp,76
     aea:	0000                	unimp
     aec:	2f01                	sext.w	t5,t5
     aee:	0000e503          	lwu	a0,0(ra)
     af2:	0000                	unimp
     af4:	1900                	addi	s0,sp,176
     af6:	0630                	addi	a2,sp,776
     af8:	0000                	unimp
     afa:	00001217          	auipc	tp,0x1
     afe:	0100                	addi	s0,sp,128
     b00:	00ec032f          	0xec032f
     b04:	0000                	unimp
     b06:	0000                	unimp
     b08:	0802                	c.slli64	a6
     b0a:	4705                	li	a4,1
     b0c:	0002                	c.slli64	zero
     b0e:	0000                	unimp
     b10:	00000257          	0x257
     b14:	0004                	0x4
     b16:	0482                	c.slli64	s1
     b18:	0000                	unimp
     b1a:	0108                	addi	a0,sp,128
     b1c:	010a                	slli	sp,sp,0x2
     b1e:	0000                	unimp
     b20:	5a0c                	lw	a1,48(a2)
     b22:	0004                	0x4
     b24:	7600                	ld	s0,40(a2)
     b26:	0000                	unimp
     b28:	1c00                	addi	s0,sp,560
     b2a:	0110                	addi	a2,sp,128
     b2c:	0000                	unimp
     b2e:	0000                	unimp
     b30:	8400                	0x8400
     b32:	0000                	unimp
     b34:	0000                	unimp
     b36:	0000                	unimp
     b38:	f400                	sd	s0,40(s0)
     b3a:	001c                	0x1c
     b3c:	0200                	addi	s0,sp,256
     b3e:	0408                	addi	a0,sp,512
     b40:	05f4                	addi	a3,sp,716
     b42:	0000                	unimp
     b44:	1002                	c.slli	zero,0x20
     b46:	d305                	beqz	a4,a66 <register_fini-0xf64a>
     b48:	0001                	nop
     b4a:	0200                	addi	s0,sp,256
     b4c:	0710                	addi	a2,sp,896
     b4e:	0000                	unimp
     b50:	0000                	unimp
     b52:	0802                	c.slli64	a6
     b54:	4c05                	li	s8,1
     b56:	0002                	c.slli64	zero
     b58:	0200                	addi	s0,sp,256
     b5a:	0601                	addi	a2,a2,0
     b5c:	01ed                	addi	gp,gp,27
     b5e:	0000                	unimp
     b60:	00030d03          	lb	s10,0(t1) # ffffffffffffa000 <__BSS_END__+0xfffffffffffe77d0>
     b64:	0200                	addi	s0,sp,256
     b66:	0148                	addi	a0,sp,132
     b68:	5d0d                	li	s10,-29
     b6a:	0000                	unimp
     b6c:	0400                	addi	s0,sp,512
     b6e:	0504                	addi	s1,sp,640
     b70:	6e69                	lui	t3,0x1a
     b72:	0074                	addi	a3,sp,12
     b74:	0001fe03          	0x1fe03
     b78:	0200                	addi	s0,sp,256
     b7a:	014a                	slli	sp,sp,0x12
     b7c:	7616                	ld	a2,352(sp)
     b7e:	0000                	unimp
     b80:	0500                	addi	s0,sp,640
     b82:	0064                	addi	s1,sp,12
     b84:	0000                	unimp
     b86:	0102                	c.slli64	sp
     b88:	eb08                	sd	a0,16(a4)
     b8a:	0001                	nop
     b8c:	0300                	addi	s0,sp,384
     b8e:	030c                	addi	a1,sp,384
     b90:	0000                	unimp
     b92:	4b02                	lw	s6,0(sp)
     b94:	1601                	addi	a2,a2,-32
     b96:	008a                	slli	ra,ra,0x2
     b98:	0000                	unimp
     b9a:	0402                	c.slli64	s0
     b9c:	00021f07          	0x21f07
     ba0:	0200                	addi	s0,sp,256
     ba2:	0708                	addi	a0,sp,896
     ba4:	021a                	slli	tp,tp,0x6
     ba6:	0000                	unimp
     ba8:	7106                	ld	sp,96(sp)
     baa:	0000                	unimp
     bac:	a800                	fsd	fs0,16(s0)
     bae:	0000                	unimp
     bb0:	0700                	addi	s0,sp,896
     bb2:	0091                	addi	ra,ra,4
     bb4:	0000                	unimp
     bb6:	00ff                	0xff
     bb8:	9805                	andi	s0,s0,-31
     bba:	0000                	unimp
     bbc:	0800                	addi	s0,sp,16
     bbe:	0206                	slli	tp,tp,0x1
     bc0:	0000                	unimp
     bc2:	3c04                	fld	fs1,56(s0)
     bc4:	a816                	fsd	ft5,16(sp)
     bc6:	0000                	unimp
     bc8:	0900                	addi	s0,sp,144
     bca:	00e5                	addi	ra,ra,25
     bcc:	0000                	unimp
     bce:	2d0f4803          	lbu	a6,720(t5)
     bd2:	0000                	unimp
     bd4:	0a00                	addi	s0,sp,272
     bd6:	0308                	addi	a0,sp,384
     bd8:	03ca                	slli	t2,t2,0x12
     bda:	00ff                	0xff
     bdc:	0000                	unimp
     bde:	0002100b          	0x2100b
     be2:	0300                	addi	s0,sp,384
     be4:	10d1                	addi	ra,ra,-12
     be6:	00ff                	0xff
     be8:	0000                	unimp
     bea:	3408                	fld	fa0,40(s0)
     bec:	000c                	0xc
     bee:	650c                	ld	a1,8(a0)
     bf0:	7078                	ld	a4,224(s0)
     bf2:	0300                	addi	s0,sp,384
     bf4:	0ed2                	slli	t4,t4,0x14
     bf6:	008a                	slli	ra,ra,0x2
     bf8:	0000                	unimp
     bfa:	0b04                	addi	s1,sp,400
     bfc:	0401                	addi	s0,s0,0
     bfe:	0007290b          	0x7290b
     c02:	0300                	addi	s0,sp,384
     c04:	008a0ed3          	fadd.s	ft9,fs4,fs0,rne
     c08:	0000                	unimp
     c0a:	0104                	addi	s1,sp,128
     c0c:	0400                	addi	s0,sp,512
     c0e:	0200                	addi	s0,sp,256
     c10:	0708                	addi	a0,sp,896
     c12:	0215                	addi	tp,tp,5
     c14:	0000                	unimp
     c16:	6c0d                	lui	s8,0x3
     c18:	0002                	c.slli64	zero
     c1a:	0800                	addi	s0,sp,16
     c1c:	2c07c703          	lbu	a4,704(a5)
     c20:	0001                	nop
     c22:	0e00                	addi	s0,sp,784
     c24:	6c66                	ld	s8,88(sp)
     c26:	0074                	addi	a3,sp,12
     c28:	b90ac903          	lbu	s2,-1136(s5)
     c2c:	0000                	unimp
     c2e:	0f00                	addi	s0,sp,912
     c30:	02a0                	addi	s0,sp,328
     c32:	0000                	unimp
     c34:	c505d503          	lhu	a0,-944(a1)
     c38:	0000                	unimp
     c3a:	0000                	unimp
     c3c:	8b10                	0x8b10
     c3e:	0004                	0x4
     c40:	0100                	addi	s0,sp,128
     c42:	0124                	addi	s1,sp,136
     c44:	00b9                	addi	ra,ra,14
     c46:	0000                	unimp
     c48:	101c                	addi	a5,sp,32
     c4a:	0001                	nop
     c4c:	0000                	unimp
     c4e:	0000                	unimp
     c50:	0084                	addi	s1,sp,64
     c52:	0000                	unimp
     c54:	0000                	unimp
     c56:	0000                	unimp
     c58:	9c01                	subw	s0,s0,s0
     c5a:	00000253          	fadd.s	ft4,ft0,ft0,rne
     c5e:	6911                	lui	s2,0x4
     c60:	0100                	addi	s0,sp,128
     c62:	1524                	addi	s1,sp,680
     c64:	0050                	addi	a2,sp,4
     c66:	0000                	unimp
     c68:	2d7a                	fld	fs10,408(sp)
     c6a:	0000                	unimp
     c6c:	4112                	lw	sp,4(sp)
     c6e:	635f 0100 0326      	0x3260100635f
     c74:	00000253          	fadd.s	ft4,ft0,ft0,rne
     c78:	735f4113          	xori	sp,t5,1845
     c7c:	0100                	addi	s0,sp,128
     c7e:	0326                	slli	t1,t1,0x9
     c80:	00000253          	fadd.s	ft4,ft0,ft0,rne
     c84:	2dc6                	fld	fs11,80(sp)
     c86:	0000                	unimp
     c88:	655f4113          	xori	sp,t5,1621
     c8c:	0100                	addi	s0,sp,128
     c8e:	0326                	slli	t1,t1,0x9
     c90:	00000253          	fadd.s	ft4,ft0,ft0,rne
     c94:	2de9                	addiw	s11,s11,26
     c96:	0000                	unimp
     c98:	665f4113          	xori	sp,t5,1637
     c9c:	0100                	addi	s0,sp,128
     c9e:	0326                	slli	t1,t1,0x9
     ca0:	00ff                	0xff
     ca2:	0000                	unimp
     ca4:	2e0c                	fld	fa1,24(a2)
     ca6:	0000                	unimp
     ca8:	01006113          	ori	sp,zero,16
     cac:	00b90a27          	0xb90a27
     cb0:	0000                	unimp
     cb2:	2e42                	fld	ft8,16(sp)
     cb4:	0000                	unimp
     cb6:	7014                	ld	a3,32(s0)
     cb8:	0006                	c.slli	zero,0x1
     cba:	4000                	lw	s0,0(s0)
     cbc:	0002                	c.slli64	zero
     cbe:	1500                	addi	s0,sp,672
     cc0:	042d                	addi	s0,s0,11
     cc2:	0000                	unimp
     cc4:	2901                	sext.w	s2,s2
     cc6:	10301603          	lh	a2,259(zero) # 103 <register_fini-0xffad>
     cca:	0001                	nop
     ccc:	0000                	unimp
     cce:	0000                	unimp
     cd0:	0034                	addi	a3,sp,8
     cd2:	0000                	unimp
     cd4:	0000                	unimp
     cd6:	0000                	unimp
     cd8:	00043a17          	auipc	s4,0x43
     cdc:	0100                	addi	s0,sp,128
     cde:	0329                	addi	t1,t1,10
     ce0:	007d                	c.nop	31
     ce2:	0000                	unimp
     ce4:	2e7f                	0x2e7f
     ce6:	0000                	unimp
     ce8:	4018                	lw	a4,0(s0)
     cea:	0110                	addi	a2,sp,128
     cec:	0000                	unimp
     cee:	0000                	unimp
     cf0:	1800                	addi	s0,sp,48
     cf2:	0000                	unimp
     cf4:	0000                	unimp
     cf6:	0000                	unimp
     cf8:	fe00                	sd	s0,56(a2)
     cfa:	0001                	nop
     cfc:	1700                	addi	s0,sp,928
     cfe:	044a                	slli	s0,s0,0x12
     d00:	0000                	unimp
     d02:	2901                	sext.w	s2,s2
     d04:	00005d03          	lhu	s10,0(zero) # 0 <register_fini-0x100b0>
     d08:	a200                	fsd	fs0,0(a2)
     d0a:	002e                	c.slli	zero,0xb
     d0c:	0000                	unimp
     d0e:	1a19                	addi	s4,s4,-26
     d10:	02a5                	addi	t0,t0,9
     d12:	0000                	unimp
     d14:	2901                	sext.w	s2,s2
     d16:	00005d03          	lhu	s10,0(zero) # 0 <register_fini-0x100b0>
     d1a:	1900                	addi	s0,sp,176
     d1c:	611a                	ld	sp,384(sp)
     d1e:	0000                	unimp
     d20:	0100                	addi	s0,sp,128
     d22:	0329                	addi	t1,t1,10
     d24:	00000253          	fadd.s	ft4,ft0,ft0,rne
     d28:	be1a                	fsd	ft6,312(sp)
     d2a:	0001                	nop
     d2c:	0100                	addi	s0,sp,128
     d2e:	0329                	addi	t1,t1,10
     d30:	00000253          	fadd.s	ft4,ft0,ft0,rne
     d34:	811a                	mv	sp,t1
     d36:	0002                	c.slli64	zero
     d38:	0100                	addi	s0,sp,128
     d3a:	0329                	addi	t1,t1,10
     d3c:	00000253          	fadd.s	ft4,ft0,ft0,rne
     d40:	ec1a                	sd	t1,24(sp)
     d42:	0000                	unimp
     d44:	0100                	addi	s0,sp,128
     d46:	0329                	addi	t1,t1,10
     d48:	00ff                	0xff
     d4a:	0000                	unimp
     d4c:	0000                	unimp
     d4e:	0000                	unimp
     d50:	0006b01b          	0x6b01b
     d54:	1a00                	addi	s0,sp,304
     d56:	0012                	c.slli	zero,0x4
     d58:	0000                	unimp
     d5a:	2a01                	sext.w	s4,s4
     d5c:	00010603          	lb	a2,0(sp)
     d60:	0000                	unimp
     d62:	0200                	addi	s0,sp,256
     d64:	0508                	addi	a0,sp,640
     d66:	00000247          	fmsub.s	ft4,ft0,ft0,ft0,rne
     d6a:	b700                	fsd	fs0,40(a4)
     d6c:	0002                	c.slli64	zero
     d6e:	0400                	addi	s0,sp,512
     d70:	0700                	addi	s0,sp,896
     d72:	0006                	c.slli	zero,0x1
     d74:	0800                	addi	s0,sp,16
     d76:	0a01                	addi	s4,s4,0
     d78:	0001                	nop
     d7a:	0c00                	addi	s0,sp,528
     d7c:	00000497          	auipc	s1,0x0
     d80:	0076                	c.slli	zero,0x1d
     d82:	0000                	unimp
     d84:	10a0                	addi	s0,sp,104
     d86:	0001                	nop
     d88:	0000                	unimp
     d8a:	0000                	unimp
     d8c:	00a4                	addi	s1,sp,72
     d8e:	0000                	unimp
     d90:	0000                	unimp
     d92:	0000                	unimp
     d94:	1f39                	addi	t5,t5,-18
     d96:	0000                	unimp
     d98:	0802                	c.slli64	a6
     d9a:	f404                	sd	s1,40(s0)
     d9c:	0005                	c.nop	1
     d9e:	0200                	addi	s0,sp,256
     da0:	0404                	addi	s1,sp,512
     da2:	087d                	addi	a6,a6,31
     da4:	0000                	unimp
     da6:	1002                	c.slli	zero,0x20
     da8:	d305                	beqz	a4,cc8 <register_fini-0xf3e8>
     daa:	0001                	nop
     dac:	0200                	addi	s0,sp,256
     dae:	0710                	addi	a2,sp,896
     db0:	0000                	unimp
     db2:	0000                	unimp
     db4:	0802                	c.slli64	a6
     db6:	4c05                	li	s8,1
     db8:	0002                	c.slli64	zero
     dba:	0200                	addi	s0,sp,256
     dbc:	0601                	addi	a2,a2,0
     dbe:	01ed                	addi	gp,gp,27
     dc0:	0000                	unimp
     dc2:	69050403          	lb	s0,1680(a0) # 2b146 <__BSS_END__+0x18916>
     dc6:	746e                	ld	s0,248(sp)
     dc8:	0400                	addi	s0,sp,512
     dca:	01fe                	slli	gp,gp,0x1f
     dcc:	0000                	unimp
     dce:	4a02                	lw	s4,0(sp)
     dd0:	1601                	addi	a2,a2,-32
     dd2:	0070                	addi	a2,sp,12
     dd4:	0000                	unimp
     dd6:	5e05                	li	t3,-31
     dd8:	0000                	unimp
     dda:	0200                	addi	s0,sp,256
     ddc:	0801                	addi	a6,a6,0
     dde:	000001eb          	0x1eb
     de2:	0402                	c.slli64	s0
     de4:	00021f07          	0x21f07
     de8:	0200                	addi	s0,sp,256
     dea:	0708                	addi	a0,sp,896
     dec:	021a                	slli	tp,tp,0x6
     dee:	0000                	unimp
     df0:	6b06                	ld	s6,64(sp)
     df2:	0000                	unimp
     df4:	9500                	0x9500
     df6:	0000                	unimp
     df8:	0700                	addi	s0,sp,896
     dfa:	007e                	c.slli	zero,0x1f
     dfc:	0000                	unimp
     dfe:	00ff                	0xff
     e00:	8505                	srai	a0,a0,0x1
     e02:	0000                	unimp
     e04:	0800                	addi	s0,sp,16
     e06:	0206                	slli	tp,tp,0x1
     e08:	0000                	unimp
     e0a:	3c05                	addiw	s8,s8,-31
     e0c:	9516                	add	a0,a0,t0
     e0e:	0000                	unimp
     e10:	0900                	addi	s0,sp,144
     e12:	000004e3          	beqz	zero,161a <register_fini-0xea96>
     e16:	340f4503          	lbu	a0,832(t5)
     e1a:	0000                	unimp
     e1c:	0a00                	addi	s0,sp,272
     e1e:	0304                	addi	s1,sp,384
     e20:	034a                	slli	t1,t1,0x12
     e22:	00ec                	addi	a1,sp,76
     e24:	0000                	unimp
     e26:	0002100b          	0x2100b
     e2a:	0300                	addi	s0,sp,384
     e2c:	0e51                	addi	t3,t3,20
     e2e:	00000077          	0x77
     e32:	1704                	addi	s1,sp,928
     e34:	0009                	c.nop	2
     e36:	650c                	ld	a1,8(a0)
     e38:	7078                	ld	a4,224(s0)
     e3a:	0300                	addi	s0,sp,384
     e3c:	0e52                	slli	t3,t3,0x14
     e3e:	00000077          	0x77
     e42:	0804                	addi	s1,sp,16
     e44:	0001                	nop
     e46:	0007290b          	0x7290b
     e4a:	0300                	addi	s0,sp,384
     e4c:	00770e53          	fadd.s	ft8,fa4,ft7,rne
     e50:	0000                	unimp
     e52:	0104                	addi	s1,sp,128
     e54:	0000                	unimp
     e56:	0d00                	addi	s0,sp,656
     e58:	000004d7          	0x4d7
     e5c:	0304                	addi	s1,sp,384
     e5e:	01120747          	fmsub.s	fa4,ft4,fa7,ft0,rne
     e62:	0000                	unimp
     e64:	660e                	ld	a2,192(sp)
     e66:	746c                	ld	a1,232(s0)
     e68:	0300                	addi	s0,sp,384
     e6a:	0a49                	addi	s4,s4,18
     e6c:	00a6                	slli	ra,ra,0x9
     e6e:	0000                	unimp
     e70:	0002a00f          	0x2a00f
     e74:	0300                	addi	s0,sp,384
     e76:	0555                	addi	a0,a0,21
     e78:	00b2                	slli	ra,ra,0xc
     e7a:	0000                	unimp
     e7c:	0900                	addi	s0,sp,144
     e7e:	00e5                	addi	ra,ra,25
     e80:	0000                	unimp
     e82:	4804                	lw	s1,16(s0)
     e84:	00002d0f          	0x2d0f
     e88:	0a00                	addi	s0,sp,272
     e8a:	0408                	addi	a0,sp,512
     e8c:	03ca                	slli	t2,t2,0x12
     e8e:	0158                	addi	a4,sp,132
     e90:	0000                	unimp
     e92:	0002100b          	0x2100b
     e96:	0400                	addi	s0,sp,512
     e98:	10d1                	addi	ra,ra,-12
     e9a:	0158                	addi	a4,sp,132
     e9c:	0000                	unimp
     e9e:	3408                	fld	fa0,40(s0)
     ea0:	000c                	0xc
     ea2:	650c                	ld	a1,8(a0)
     ea4:	7078                	ld	a4,224(s0)
     ea6:	0400                	addi	s0,sp,512
     ea8:	0ed2                	slli	t4,t4,0x14
     eaa:	00000077          	0x77
     eae:	0b04                	addi	s1,sp,400
     eb0:	0401                	addi	s0,s0,0
     eb2:	0007290b          	0x7290b
     eb6:	0400                	addi	s0,sp,512
     eb8:	00770ed3          	fadd.s	ft9,fa4,ft7,rne
     ebc:	0000                	unimp
     ebe:	0104                	addi	s1,sp,128
     ec0:	0400                	addi	s0,sp,512
     ec2:	0200                	addi	s0,sp,256
     ec4:	0708                	addi	a0,sp,896
     ec6:	0215                	addi	tp,tp,5
     ec8:	0000                	unimp
     eca:	6c0d                	lui	s8,0x3
     ecc:	0002                	c.slli64	zero
     ece:	0800                	addi	s0,sp,16
     ed0:	c704                	sw	s1,8(a4)
     ed2:	00018507          	0x18507
     ed6:	0e00                	addi	s0,sp,784
     ed8:	6c66                	ld	s8,88(sp)
     eda:	0074                	addi	a3,sp,12
     edc:	c904                	sw	s1,16(a0)
     ede:	120a                	slli	tp,tp,0x22
     ee0:	0001                	nop
     ee2:	0f00                	addi	s0,sp,912
     ee4:	02a0                	addi	s0,sp,328
     ee6:	0000                	unimp
     ee8:	d504                	sw	s1,40(a0)
     eea:	1e05                	addi	t3,t3,-31
     eec:	0001                	nop
     eee:	0000                	unimp
     ef0:	ea10                	sd	a2,16(a2)
     ef2:	0004                	0x4
     ef4:	0100                	addi	s0,sp,128
     ef6:	0125                	addi	sp,sp,9
     ef8:	0112                	slli	sp,sp,0x4
     efa:	0000                	unimp
     efc:	10a0                	addi	s0,sp,104
     efe:	0001                	nop
     f00:	0000                	unimp
     f02:	0000                	unimp
     f04:	00a4                	addi	s1,sp,72
     f06:	0000                	unimp
     f08:	0000                	unimp
     f0a:	0000                	unimp
     f0c:	9c01                	subw	s0,s0,s0
     f0e:	000002b3          	add	t0,zero,zero
     f12:	6111                	addi	sp,sp,256
     f14:	0100                	addi	s0,sp,128
     f16:	1725                	addi	a4,a4,-23
     f18:	00a6                	slli	ra,ra,0x9
     f1a:	0000                	unimp
     f1c:	2ec5                	addiw	t4,t4,17
     f1e:	0000                	unimp
     f20:	5c12                	lw	s8,36(sp)
     f22:	0000                	unimp
     f24:	0100                	addi	s0,sp,128
     f26:	00570327          	0x570327
     f2a:	0000                	unimp
     f2c:	2f00                	fld	fs0,24(a4)
     f2e:	0000                	unimp
     f30:	0002be13          	sltiu	t3,t0,0
     f34:	0100                	addi	s0,sp,128
     f36:	00570327          	0x570327
     f3a:	0000                	unimp
     f3c:	1400                	addi	s0,sp,544
     f3e:	5f41                	li	t5,-16
     f40:	28010063          	beqz	sp,11c0 <register_fini-0xeef0>
     f44:	0002b303          	ld	t1,0(t0) # 11430 <memset+0xb4>
     f48:	1500                	addi	s0,sp,672
     f4a:	5f41                	li	t5,-16
     f4c:	28010073          	0x28010073
     f50:	0002b303          	ld	t1,0(t0)
     f54:	3800                	fld	fs0,48(s0)
     f56:	1500002f          	0x1500002f
     f5a:	5f41                	li	t5,-16
     f5c:	0065                	c.nop	25
     f5e:	2801                	sext.w	a6,a6
     f60:	0002b303          	ld	t1,0(t0)
     f64:	7800                	ld	s0,48(s0)
     f66:	1500002f          	0x1500002f
     f6a:	5f41                	li	t5,-16
     f6c:	0066                	c.slli	zero,0x19
     f6e:	2801                	sext.w	a6,a6
     f70:	00015803          	lhu	a6,0(sp)
     f74:	c100                	sw	s0,0(a0)
     f76:	1400002f          	0x1400002f
     f7a:	5f52                	lw	t5,52(sp)
     f7c:	29010063          	beq	sp,a6,11fc <register_fini-0xeeb4>
     f80:	0002b303          	ld	t1,0(t0)
     f84:	1500                	addi	s0,sp,672
     f86:	5f52                	lw	t5,52(sp)
     f88:	29010073          	0x29010073
     f8c:	0002b303          	ld	t1,0(t0)
     f90:	3800                	fld	fs0,48(s0)
     f92:	1500002f          	0x1500002f
     f96:	5f52                	lw	t5,52(sp)
     f98:	0065                	c.nop	25
     f9a:	2901                	sext.w	s2,s2
     f9c:	0002b303          	ld	t1,0(t0)
     fa0:	0a00                	addi	s0,sp,272
     fa2:	0030                	addi	a2,sp,8
     fa4:	1500                	addi	s0,sp,672
     fa6:	5f52                	lw	t5,52(sp)
     fa8:	0066                	c.slli	zero,0x19
     faa:	2901                	sext.w	s2,s2
     fac:	00015803          	lhu	a6,0(sp)
     fb0:	5600                	lw	s0,40(a2)
     fb2:	0030                	addi	a2,sp,8
     fb4:	1500                	addi	s0,sp,672
     fb6:	0072                	c.slli	zero,0x1c
     fb8:	2a01                	sext.w	s4,s4
     fba:	120a                	slli	tp,tp,0x22
     fbc:	0001                	nop
     fbe:	8c00                	0x8c00
     fc0:	0030                	addi	a2,sp,8
     fc2:	1600                	addi	s0,sp,800
     fc4:	06e0                	addi	s0,sp,844
     fc6:	0000                	unimp
     fc8:	026e                	slli	tp,tp,0x1b
     fca:	0000                	unimp
     fcc:	0001a917          	auipc	s2,0x1a
     fd0:	0100                	addi	s0,sp,128
     fd2:	032d                	addi	t1,t1,11
     fd4:	00ec                	addi	a1,sp,76
     fd6:	0000                	unimp
     fd8:	1800                	addi	s0,sp,48
     fda:	110c                	addi	a1,sp,160
     fdc:	0001                	nop
     fde:	0000                	unimp
     fe0:	0000                	unimp
     fe2:	001c                	0x1c
     fe4:	0000                	unimp
     fe6:	0000                	unimp
     fe8:	0000                	unimp
     fea:	0294                	addi	a3,sp,320
     fec:	0000                	unimp
     fee:	ca12                	sw	tp,20(sp)
     ff0:	0004                	0x4
     ff2:	0100                	addi	s0,sp,128
     ff4:	0331                	addi	t1,t1,12
     ff6:	00000057          	0x57
     ffa:	30c9                	addiw	ra,ra,-14
     ffc:	0000                	unimp
     ffe:	1900                	addi	s0,sp,176
    1000:	10d8                	addi	a4,sp,100
    1002:	0001                	nop
    1004:	0000                	unimp
    1006:	0000                	unimp
    1008:	0014                	0x14
    100a:	0000                	unimp
    100c:	0000                	unimp
    100e:	0000                	unimp
    1010:	00001217          	auipc	tp,0x1
    1014:	0100                	addi	s0,sp,128
    1016:	015f0333          	add	t1,t5,s5
    101a:	0000                	unimp
    101c:	0000                	unimp
    101e:	0802                	c.slli64	a6
    1020:	4705                	li	a4,1
    1022:	0002                	c.slli64	zero
    1024:	0000                	unimp
    1026:	02d9                	addi	t0,t0,22
    1028:	0000                	unimp
    102a:	0004                	0x4
    102c:	0784                	addi	s1,sp,960
    102e:	0000                	unimp
    1030:	0108                	addi	a0,sp,128
    1032:	010a                	slli	sp,sp,0x2
    1034:	0000                	unimp
    1036:	050c                	addi	a1,sp,640
    1038:	0005                	c.nop	1
    103a:	7600                	ld	s0,40(a2)
    103c:	0000                	unimp
    103e:	4400                	lw	s0,8(s0)
    1040:	0111                	addi	sp,sp,4
    1042:	0000                	unimp
    1044:	0000                	unimp
    1046:	3000                	fld	fs0,32(s0)
    1048:	0001                	nop
    104a:	0000                	unimp
    104c:	0000                	unimp
    104e:	b900                	fsd	fs0,48(a0)
    1050:	0022                	c.slli	zero,0x8
    1052:	0200                	addi	s0,sp,256
    1054:	0408                	addi	a0,sp,512
    1056:	05f4                	addi	a3,sp,716
    1058:	0000                	unimp
    105a:	1002                	c.slli	zero,0x20
    105c:	d305                	beqz	a4,f7c <register_fini-0xf134>
    105e:	0001                	nop
    1060:	0200                	addi	s0,sp,256
    1062:	0710                	addi	a2,sp,896
    1064:	0000                	unimp
    1066:	0000                	unimp
    1068:	0802                	c.slli64	a6
    106a:	4c05                	li	s8,1
    106c:	0002                	c.slli64	zero
    106e:	0200                	addi	s0,sp,256
    1070:	0601                	addi	a2,a2,0
    1072:	01ed                	addi	gp,gp,27
    1074:	0000                	unimp
    1076:	69050403          	lb	s0,1680(a0)
    107a:	746e                	ld	s0,248(sp)
    107c:	0400                	addi	s0,sp,512
    107e:	01fe                	slli	gp,gp,0x1f
    1080:	0000                	unimp
    1082:	4a02                	lw	s4,0(sp)
    1084:	1601                	addi	a2,a2,-32
    1086:	0069                	c.nop	26
    1088:	0000                	unimp
    108a:	5705                	li	a4,-31
    108c:	0000                	unimp
    108e:	0200                	addi	s0,sp,256
    1090:	0801                	addi	a6,a6,0
    1092:	000001eb          	0x1eb
    1096:	0402                	c.slli64	s0
    1098:	00021f07          	0x21f07
    109c:	0200                	addi	s0,sp,256
    109e:	0708                	addi	a0,sp,896
    10a0:	021a                	slli	tp,tp,0x6
    10a2:	0000                	unimp
    10a4:	6406                	ld	s0,64(sp)
    10a6:	0000                	unimp
    10a8:	8e00                	0x8e00
    10aa:	0000                	unimp
    10ac:	0700                	addi	s0,sp,896
    10ae:	00000077          	0x77
    10b2:	00ff                	0xff
    10b4:	7e05                	lui	t3,0xfffe1
    10b6:	0000                	unimp
    10b8:	0800                	addi	s0,sp,16
    10ba:	0206                	slli	tp,tp,0x1
    10bc:	0000                	unimp
    10be:	3c05                	addiw	s8,s8,-31
    10c0:	8e16                	mv	t3,t0
    10c2:	0000                	unimp
    10c4:	0900                	addi	s0,sp,144
    10c6:	000004e3          	beqz	zero,18ce <register_fini-0xe7e2>
    10ca:	ab0f4503          	lbu	a0,-1360(t5)
    10ce:	0000                	unimp
    10d0:	0200                	addi	s0,sp,256
    10d2:	0404                	addi	s1,sp,512
    10d4:	087d                	addi	a6,a6,31
    10d6:	0000                	unimp
    10d8:	040a                	slli	s0,s0,0x2
    10da:	ec034a03          	lbu	s4,-320(t1)
    10de:	0000                	unimp
    10e0:	0b00                	addi	s0,sp,400
    10e2:	0210                	addi	a2,sp,256
    10e4:	0000                	unimp
    10e6:	700e5103          	lhu	sp,1792(t3) # fffffffffffe1700 <__BSS_END__+0xfffffffffffceed0>
    10ea:	0000                	unimp
    10ec:	0400                	addi	s0,sp,512
    10ee:	0c000917          	auipc	s2,0xc000
    10f2:	7865                	lui	a6,0xffff9
    10f4:	0070                	addi	a2,sp,12
    10f6:	700e5203          	lhu	tp,1792(t3)
    10fa:	0000                	unimp
    10fc:	0400                	addi	s0,sp,512
    10fe:	0108                	addi	a0,sp,128
    1100:	0b00                	addi	s0,sp,400
    1102:	0729                	addi	a4,a4,10
    1104:	0000                	unimp
    1106:	700e5303          	lhu	t1,1792(t3)
    110a:	0000                	unimp
    110c:	0400                	addi	s0,sp,512
    110e:	0001                	nop
    1110:	0000                	unimp
    1112:	d70d                	beqz	a4,103c <register_fini-0xf074>
    1114:	0004                	0x4
    1116:	0400                	addi	s0,sp,512
    1118:	12074703          	lbu	a4,288(a4)
    111c:	0001                	nop
    111e:	0e00                	addi	s0,sp,784
    1120:	6c66                	ld	s8,88(sp)
    1122:	0074                	addi	a3,sp,12
    1124:	9f0a4903          	lbu	s2,-1552(s4) # 436c8 <__BSS_END__+0x30e98>
    1128:	0000                	unimp
    112a:	0f00                	addi	s0,sp,912
    112c:	02a0                	addi	s0,sp,328
    112e:	0000                	unimp
    1130:	b2055503          	lhu	a0,-1248(a0)
    1134:	0000                	unimp
    1136:	0000                	unimp
    1138:	e509                	bnez	a0,1142 <register_fini-0xef6e>
    113a:	0000                	unimp
    113c:	0400                	addi	s0,sp,512
    113e:	0f48                	addi	a0,sp,916
    1140:	002d                	c.nop	11
    1142:	0000                	unimp
    1144:	080a                	slli	a6,a6,0x2
    1146:	ca04                	sw	s1,16(a2)
    1148:	00015803          	lhu	a6,0(sp)
    114c:	0b00                	addi	s0,sp,400
    114e:	0210                	addi	a2,sp,256
    1150:	0000                	unimp
    1152:	d104                	sw	s1,32(a0)
    1154:	5810                	lw	a2,48(s0)
    1156:	0001                	nop
    1158:	0800                	addi	s0,sp,16
    115a:	0c34                	addi	a3,sp,536
    115c:	0c00                	addi	s0,sp,528
    115e:	7865                	lui	a6,0xffff9
    1160:	0070                	addi	a2,sp,12
    1162:	d204                	sw	s1,32(a2)
    1164:	700e                	0x700e
    1166:	0000                	unimp
    1168:	0400                	addi	s0,sp,512
    116a:	0b04010b          	0xb04010b
    116e:	0729                	addi	a4,a4,10
    1170:	0000                	unimp
    1172:	d304                	sw	s1,32(a4)
    1174:	700e                	0x700e
    1176:	0000                	unimp
    1178:	0400                	addi	s0,sp,512
    117a:	0001                	nop
    117c:	0004                	0x4
    117e:	0802                	c.slli64	a6
    1180:	00021507          	0x21507
    1184:	0d00                	addi	s0,sp,656
    1186:	026c                	addi	a1,sp,268
    1188:	0000                	unimp
    118a:	0408                	addi	a0,sp,512
    118c:	018507c7          	fmsub.s	fa5,fa0,fs8,ft0,rne
    1190:	0000                	unimp
    1192:	660e                	ld	a2,192(sp)
    1194:	746c                	ld	a1,232(s0)
    1196:	0400                	addi	s0,sp,512
    1198:	0ac9                	addi	s5,s5,18
    119a:	0112                	slli	sp,sp,0x4
    119c:	0000                	unimp
    119e:	0002a00f          	0x2a00f
    11a2:	0400                	addi	s0,sp,512
    11a4:	05d5                	addi	a1,a1,21
    11a6:	011e                	slli	sp,sp,0x7
    11a8:	0000                	unimp
    11aa:	1000                	addi	s0,sp,32
    11ac:	04f8                	addi	a4,sp,588
    11ae:	0000                	unimp
    11b0:	2401                	sext.w	s0,s0
    11b2:	9f01                	subw	a4,a4,s0
    11b4:	0000                	unimp
    11b6:	4400                	lw	s0,8(s0)
    11b8:	0111                	addi	sp,sp,4
    11ba:	0000                	unimp
    11bc:	0000                	unimp
    11be:	3000                	fld	fs0,32(s0)
    11c0:	0001                	nop
    11c2:	0000                	unimp
    11c4:	0000                	unimp
    11c6:	0100                	addi	s0,sp,128
    11c8:	d59c                	sw	a5,40(a1)
    11ca:	0002                	c.slli64	zero
    11cc:	1100                	addi	s0,sp,160
    11ce:	0061                	c.nop	24
    11d0:	2401                	sext.w	s0,s0
    11d2:	1216                	slli	tp,tp,0x25
    11d4:	0001                	nop
    11d6:	ec00                	sd	s0,24(s0)
    11d8:	0030                	addi	a2,sp,8
    11da:	1200                	addi	s0,sp,288
    11dc:	005c                	addi	a5,sp,4
    11de:	0000                	unimp
    11e0:	2601                	sext.w	a2,a2
    11e2:	00005003          	lhu	zero,0(zero) # 0 <register_fini-0x100b0>
    11e6:	2700                	fld	fs0,8(a4)
    11e8:	0031                	c.nop	12
    11ea:	1300                	addi	s0,sp,416
    11ec:	02be                	slli	t0,t0,0xf
    11ee:	0000                	unimp
    11f0:	2601                	sext.w	a2,a2
    11f2:	00005003          	lhu	zero,0(zero) # 0 <register_fini-0x100b0>
    11f6:	0000                	unimp
    11f8:	4114                	lw	a3,0(a0)
    11fa:	635f 0100 0327      	0x3270100635f
    1200:	02d5                	addi	t0,t0,21
    1202:	0000                	unimp
    1204:	4115                	li	sp,5
    1206:	735f 0100 0327      	0x3270100735f
    120c:	02d5                	addi	t0,t0,21
    120e:	0000                	unimp
    1210:	0000319b          	0x319b
    1214:	4115                	li	sp,5
    1216:	655f 0100 0327      	0x3270100655f
    121c:	02d5                	addi	t0,t0,21
    121e:	0000                	unimp
    1220:	31e5                	addiw	gp,gp,-7
    1222:	0000                	unimp
    1224:	4115                	li	sp,5
    1226:	665f 0100 0327      	0x3270100665f
    122c:	0158                	addi	a4,sp,132
    122e:	0000                	unimp
    1230:	00003273          	csrrc	tp,ustatus,zero
    1234:	5214                	lw	a3,32(a2)
    1236:	635f 0100 0328      	0x3280100635f
    123c:	02d5                	addi	t0,t0,21
    123e:	0000                	unimp
    1240:	5215                	li	tp,-27
    1242:	735f 0100 0328      	0x3280100735f
    1248:	02d5                	addi	t0,t0,21
    124a:	0000                	unimp
    124c:	3345                	addiw	t1,t1,-15
    124e:	0000                	unimp
    1250:	5215                	li	tp,-27
    1252:	655f 0100 0328      	0x3280100655f
    1258:	02d5                	addi	t0,t0,21
    125a:	0000                	unimp
    125c:	0000338f          	0x338f
    1260:	5215                	li	tp,-27
    1262:	665f 0100 0328      	0x3280100665f
    1268:	0158                	addi	a4,sp,132
    126a:	0000                	unimp
    126c:	343c                	fld	fa5,104(s0)
    126e:	0000                	unimp
    1270:	7214                	ld	a3,32(a2)
    1272:	0100                	addi	s0,sp,128
    1274:	0a29                	addi	s4,s4,10
    1276:	009f 0000 2016      	0x20160000009f
    127c:	6a000007          	0x6a000007
    1280:	0002                	c.slli64	zero
    1282:	1700                	addi	s0,sp,928
    1284:	01a9                	addi	gp,gp,10
    1286:	0000                	unimp
    1288:	2c01                	sext.w	s8,s8
    128a:	00015f03          	lhu	t5,0(sp)
    128e:	0000                	unimp
    1290:	6016                	0x6016
    1292:	b2000007          	0xb2000007
    1296:	0002                	c.slli64	zero
    1298:	1700                	addi	s0,sp,928
    129a:	02a5                	addi	t0,t0,9
    129c:	0000                	unimp
    129e:	3201                	addiw	tp,tp,-32
    12a0:	00005003          	lhu	zero,0(zero) # 0 <register_fini-0x100b0>
    12a4:	1800                	addi	s0,sp,48
    12a6:	00006117          	auipc	sp,0x6
    12aa:	0100                	addi	s0,sp,128
    12ac:	0332                	slli	t1,t1,0xc
    12ae:	02d5                	addi	t0,t0,21
    12b0:	0000                	unimp
    12b2:	0001be17          	auipc	t3,0x1b
    12b6:	0100                	addi	s0,sp,128
    12b8:	0332                	slli	t1,t1,0xc
    12ba:	02d5                	addi	t0,t0,21
    12bc:	0000                	unimp
    12be:	00028117          	auipc	sp,0x28
    12c2:	0100                	addi	s0,sp,128
    12c4:	0332                	slli	t1,t1,0xc
    12c6:	02d5                	addi	t0,t0,21
    12c8:	0000                	unimp
    12ca:	0000ec17          	auipc	s8,0xe
    12ce:	0100                	addi	s0,sp,128
    12d0:	0332                	slli	t1,t1,0xc
    12d2:	0158                	addi	a4,sp,132
    12d4:	0000                	unimp
    12d6:	0000                	unimp
    12d8:	3019                	0x3019
    12da:	0112                	slli	sp,sp,0x4
    12dc:	0000                	unimp
    12de:	0000                	unimp
    12e0:	1800                	addi	s0,sp,48
    12e2:	0000                	unimp
    12e4:	0000                	unimp
    12e6:	0000                	unimp
    12e8:	1200                	addi	s0,sp,288
    12ea:	0012                	c.slli	zero,0x4
    12ec:	0000                	unimp
    12ee:	3201                	addiw	tp,tp,-32
    12f0:	0000ec03          	lwu	s8,0(ra)
    12f4:	1e00                	addi	s0,sp,816
    12f6:	0035                	c.nop	13
    12f8:	0000                	unimp
    12fa:	0200                	addi	s0,sp,256
    12fc:	0508                	addi	a0,sp,640
    12fe:	00000247          	fmsub.s	ft4,ft0,ft0,ft0,rne
    1302:	f500                	sd	s0,40(a0)
    1304:	0400000b          	0x400000b
    1308:	fb00                	sd	s0,48(a4)
    130a:	0008                	0x8
    130c:	0800                	addi	s0,sp,16
    130e:	0a01                	addi	s4,s4,0
    1310:	0001                	nop
    1312:	0c00                	addi	s0,sp,528
    1314:	000008e7          	jalr	a7,zero # 0 <register_fini-0x100b0>
    1318:	0076                	c.slli	zero,0x1d
    131a:	0000                	unimp
    131c:	1274                	addi	a3,sp,300
    131e:	0001                	nop
    1320:	0000                	unimp
    1322:	0000                	unimp
    1324:	003c                	addi	a5,sp,8
    1326:	0000                	unimp
    1328:	0000                	unimp
    132a:	0000                	unimp
    132c:	26e0                	fld	fs0,200(a3)
    132e:	0000                	unimp
    1330:	0802                	c.slli64	a6
    1332:	4c05                	li	s8,1
    1334:	0002                	c.slli64	zero
    1336:	0200                	addi	s0,sp,256
    1338:	0708                	addi	a0,sp,896
    133a:	021a                	slli	tp,tp,0x6
    133c:	0000                	unimp
    133e:	69050403          	lb	s0,1680(a0)
    1342:	746e                	ld	s0,248(sp)
    1344:	0200                	addi	s0,sp,256
    1346:	0508                	addi	a0,sp,640
    1348:	00000247          	fmsub.s	ft4,ft0,ft0,ft0,rne
    134c:	1002                	c.slli	zero,0x20
    134e:	ef04                	sd	s1,24(a4)
    1350:	0005                	c.nop	1
    1352:	0200                	addi	s0,sp,256
    1354:	0601                	addi	a2,a2,0
    1356:	01ed                	addi	gp,gp,27
    1358:	0000                	unimp
    135a:	0102                	c.slli64	sp
    135c:	eb08                	sd	a0,16(a4)
    135e:	0001                	nop
    1360:	0200                	addi	s0,sp,256
    1362:	0502                	c.slli64	a0
    1364:	00000537          	lui	a0,0x0
    1368:	0202                	c.slli64	tp
    136a:	00079907          	0x79907
    136e:	0200                	addi	s0,sp,256
    1370:	0704                	addi	s1,sp,896
    1372:	021f 0000 ef04      	0xef040000021f
    1378:	02000007          	0x2000007
    137c:	015e                	slli	sp,sp,0x17
    137e:	00006c17          	auipc	s8,0x6
    1382:	0500                	addi	s0,sp,640
    1384:	08a9                	addi	a7,a7,10
    1386:	0000                	unimp
    1388:	2d0e2e03          	lw	t3,720(t3) # 1c582 <__BSS_END__+0x9d52>
    138c:	0000                	unimp
    138e:	0500                	addi	s0,sp,640
    1390:	00000a0b          	0xa0b
    1394:	2d0e7403          	0x2d0e7403
    1398:	0000                	unimp
    139a:	0500                	addi	s0,sp,640
    139c:	0aad                	addi	s5,s5,11
    139e:	0000                	unimp
    13a0:	2d179303          	lh	t1,721(a5)
    13a4:	0000                	unimp
    13a6:	0600                	addi	s0,sp,768
    13a8:	0304                	addi	s1,sp,384
    13aa:	03a5                	addi	t2,t2,9
    13ac:	00c6                	slli	ra,ra,0x11
    13ae:	0000                	unimp
    13b0:	0007d607          	0x7d607
    13b4:	0300                	addi	s0,sp,384
    13b6:	00730ca7          	0x730ca7
    13ba:	0000                	unimp
    13bc:	00077307          	0x77307
    13c0:	0300                	addi	s0,sp,384
    13c2:	13a8                	addi	a0,sp,488
    13c4:	00c6                	slli	ra,ra,0x11
    13c6:	0000                	unimp
    13c8:	0800                	addi	s0,sp,16
    13ca:	00000057          	0x57
    13ce:	00d6                	slli	ra,ra,0x15
    13d0:	0000                	unimp
    13d2:	3409                	addiw	s0,s0,-30
    13d4:	0000                	unimp
    13d6:	0300                	addi	s0,sp,384
    13d8:	0a00                	addi	s0,sp,272
    13da:	0308                	addi	a0,sp,384
    13dc:	09a2                	slli	s3,s3,0x8
    13de:	00fa                	slli	ra,ra,0x1e
    13e0:	0000                	unimp
    13e2:	0009f50b          	0x9f50b
    13e6:	0300                	addi	s0,sp,384
    13e8:	07a4                	addi	s1,sp,968
    13ea:	0000003b          	addw	zero,zero,zero
    13ee:	0b00                	addi	s0,sp,400
    13f0:	09fd                	addi	s3,s3,31
    13f2:	0000                	unimp
    13f4:	a405a903          	lw	s2,-1472(a1)
    13f8:	0000                	unimp
    13fa:	0400                	addi	s0,sp,512
    13fc:	0500                	addi	s0,sp,640
    13fe:	08c4                	addi	s1,sp,84
    1400:	0000                	unimp
    1402:	d603aa03          	lw	s4,-672(t2)
    1406:	0000                	unimp
    1408:	0c00                	addi	s0,sp,528
    140a:	0508                	addi	a0,sp,640
    140c:	0a56                	slli	s4,s4,0x15
    140e:	0000                	unimp
    1410:	1904                	addi	s1,sp,176
    1412:	6c19                	lui	s8,0x6
    1414:	0000                	unimp
    1416:	0500                	addi	s0,sp,640
    1418:	000008cf          	fnmadd.s	fa7,ft0,ft0,ft0,rne
    141c:	0c05                	addi	s8,s8,1
    141e:	3b0d                	addiw	s6,s6,-29
    1420:	0000                	unimp
    1422:	0500                	addi	s0,sp,640
    1424:	0945                	addi	s2,s2,17
    1426:	0000                	unimp
    1428:	2304                	fld	fs1,0(a4)
    142a:	0001141b          	slliw	s0,sp,0x0
    142e:	0d00                	addi	s0,sp,656
    1430:	0736                	slli	a4,a4,0xd
    1432:	0000                	unimp
    1434:	0420                	addi	s0,sp,520
    1436:	0834                	addi	a3,sp,24
    1438:	0186                	slli	gp,gp,0x1
    143a:	0000                	unimp
    143c:	0009980b          	0x9980b
    1440:	0400                	addi	s0,sp,512
    1442:	1336                	slli	t1,t1,0x2d
    1444:	0186                	slli	gp,gp,0x1
    1446:	0000                	unimp
    1448:	0e00                	addi	s0,sp,784
    144a:	6b5f 0400 0737      	0x73704006b5f
    1450:	0000003b          	addw	zero,zero,zero
    1454:	0b08                	addi	a0,sp,400
    1456:	09e0                	addi	s0,sp,220
    1458:	0000                	unimp
    145a:	3704                	fld	fs1,40(a4)
    145c:	00003b0b          	0x3b0b
    1460:	0c00                	addi	s0,sp,528
    1462:	0007280b          	0x7280b
    1466:	0400                	addi	s0,sp,512
    1468:	003b1437          	lui	s0,0x3b1
    146c:	0000                	unimp
    146e:	0b10                	addi	a2,sp,400
    1470:	069d                	addi	a3,a3,7
    1472:	0000                	unimp
    1474:	3704                	fld	fs1,40(a4)
    1476:	00003b1b          	0x3b1b
    147a:	1400                	addi	s0,sp,544
    147c:	5f0e                	lw	t5,224(sp)
    147e:	0078                	addi	a4,sp,12
    1480:	3804                	fld	fs1,48(s0)
    1482:	00018c0b          	0x18c0b
    1486:	1800                	addi	s0,sp,48
    1488:	0f00                	addi	s0,sp,912
    148a:	2c08                	fld	fa0,24(s0)
    148c:	0001                	nop
    148e:	0800                	addi	s0,sp,16
    1490:	0108                	addi	a0,sp,128
    1492:	0000                	unimp
    1494:	019c                	addi	a5,sp,192
    1496:	0000                	unimp
    1498:	3409                	addiw	s0,s0,-30
    149a:	0000                	unimp
    149c:	0000                	unimp
    149e:	0d00                	addi	s0,sp,656
    14a0:	0756                	slli	a4,a4,0x15
    14a2:	0000                	unimp
    14a4:	0424                	addi	s1,sp,520
    14a6:	083c                	addi	a5,sp,24
    14a8:	021f 0000 350b      	0x350b0000021f
    14ae:	0006                	c.slli	zero,0x1
    14b0:	0400                	addi	s0,sp,512
    14b2:	093e                	slli	s2,s2,0xf
    14b4:	0000003b          	addw	zero,zero,zero
    14b8:	0b00                	addi	s0,sp,400
    14ba:	0af2                	slli	s5,s5,0x1c
    14bc:	0000                	unimp
    14be:	3f04                	fld	fs1,56(a4)
    14c0:	3b09                	addiw	s6,s6,-30
    14c2:	0000                	unimp
    14c4:	0400                	addi	s0,sp,512
    14c6:	0006510b          	0x6510b
    14ca:	0400                	addi	s0,sp,512
    14cc:	0940                	addi	s0,sp,148
    14ce:	0000003b          	addw	zero,zero,zero
    14d2:	0b08                	addi	a0,sp,400
    14d4:	0b2e                	slli	s6,s6,0xb
    14d6:	0000                	unimp
    14d8:	4104                	lw	s1,0(a0)
    14da:	3b09                	addiw	s6,s6,-30
    14dc:	0000                	unimp
    14de:	0c00                	addi	s0,sp,528
    14e0:	0008830b          	0x8830b
    14e4:	0400                	addi	s0,sp,512
    14e6:	0942                	slli	s2,s2,0x10
    14e8:	0000003b          	addw	zero,zero,zero
    14ec:	0b10                	addi	a2,sp,400
    14ee:	00000837          	lui	a6,0x0
    14f2:	4304                	lw	s1,0(a4)
    14f4:	3b09                	addiw	s6,s6,-30
    14f6:	0000                	unimp
    14f8:	1400                	addi	s0,sp,544
    14fa:	000a960b          	0xa960b
    14fe:	0400                	addi	s0,sp,512
    1500:	0944                	addi	s1,sp,148
    1502:	0000003b          	addw	zero,zero,zero
    1506:	0b18                	addi	a4,sp,400
    1508:	094e                	slli	s2,s2,0x13
    150a:	0000                	unimp
    150c:	4504                	lw	s1,8(a0)
    150e:	3b09                	addiw	s6,s6,-30
    1510:	0000                	unimp
    1512:	1c00                	addi	s0,sp,560
    1514:	000ad80b          	0xad80b
    1518:	0400                	addi	s0,sp,512
    151a:	0946                	slli	s2,s2,0x11
    151c:	0000003b          	addw	zero,zero,zero
    1520:	0020                	addi	s0,sp,8
    1522:	7010                	ld	a2,32(s0)
    1524:	0006                	c.slli	zero,0x1
    1526:	0800                	addi	s0,sp,16
    1528:	0402                	c.slli64	s0
    152a:	0265084f          	fnmadd.d	fa6,fa0,ft6,ft0,rne
    152e:	0000                	unimp
    1530:	00071b0b          	0x71b0b
    1534:	0400                	addi	s0,sp,512
    1536:	0a50                	addi	a2,sp,276
    1538:	0265                	addi	tp,tp,25
    153a:	0000                	unimp
    153c:	1100                	addi	s0,sp,160
    153e:	0921                	addi	s2,s2,8
    1540:	0000                	unimp
    1542:	5104                	lw	s1,32(a0)
    1544:	6509                	lui	a0,0x2
    1546:	0002                	c.slli64	zero
    1548:	0000                	unimp
    154a:	1101                	addi	sp,sp,-32
    154c:	0a48                	addi	a0,sp,276
    154e:	0000                	unimp
    1550:	5304                	lw	s1,32(a4)
    1552:	080a                	slli	a6,a6,0x2
    1554:	0001                	nop
    1556:	0000                	unimp
    1558:	1102                	slli	sp,sp,0x20
    155a:	0695                	addi	a3,a3,5
    155c:	0000                	unimp
    155e:	5604                	lw	s1,40(a2)
    1560:	080a                	slli	a6,a6,0x2
    1562:	0001                	nop
    1564:	0400                	addi	s0,sp,512
    1566:	0002                	c.slli64	zero
    1568:	0608                	addi	a0,sp,768
    156a:	0001                	nop
    156c:	7500                	ld	s0,40(a0)
    156e:	0002                	c.slli64	zero
    1570:	0900                	addi	s0,sp,144
    1572:	0034                	addi	a3,sp,8
    1574:	0000                	unimp
    1576:	001f 8c10 0008      	0x88c10001f
    157c:	1800                	addi	s0,sp,48
    157e:	08620403          	lb	s0,134(tp) # 2096 <register_fini-0xe01a>
    1582:	02b9                	addi	t0,t0,14
    1584:	0000                	unimp
    1586:	0009980b          	0x9980b
    158a:	0400                	addi	s0,sp,512
    158c:	02b91263          	bne	s2,a1,15b0 <register_fini-0xeb00>
    1590:	0000                	unimp
    1592:	0b00                	addi	s0,sp,400
    1594:	09b0                	addi	a2,sp,216
    1596:	0000                	unimp
    1598:	6404                	ld	s1,8(s0)
    159a:	3b06                	fld	fs6,96(sp)
    159c:	0000                	unimp
    159e:	0800                	addi	s0,sp,16
    15a0:	0007230b          	0x7230b
    15a4:	0400                	addi	s0,sp,512
    15a6:	0966                	slli	s2,s2,0x19
    15a8:	000002bf 06701110 	0x6701110000002bf
    15b0:	0000                	unimp
    15b2:	6704                	ld	s1,8(a4)
    15b4:	1f1e                	slli	t5,t5,0x27
    15b6:	0002                	c.slli64	zero
    15b8:	1000                	addi	s0,sp,32
    15ba:	0001                	nop
    15bc:	0275080f          	0x275080f
    15c0:	0000                	unimp
    15c2:	cf08                	sw	a0,24(a4)
    15c4:	0002                	c.slli64	zero
    15c6:	cf00                	sw	s0,24(a4)
    15c8:	0002                	c.slli64	zero
    15ca:	0900                	addi	s0,sp,144
    15cc:	0034                	addi	a3,sp,8
    15ce:	0000                	unimp
    15d0:	001f 080f 02d5      	0x2d5080f001f
    15d6:	0000                	unimp
    15d8:	0d12                	slli	s10,s10,0x4
    15da:	0958                	addi	a4,sp,148
    15dc:	0000                	unimp
    15de:	0410                	addi	a2,sp,512
    15e0:	087a                	slli	a6,a6,0x1e
    15e2:	02fe                	slli	t0,t0,0x1f
    15e4:	0000                	unimp
    15e6:	00064b0b          	0x64b0b
    15ea:	0400                	addi	s0,sp,512
    15ec:	02fe117b          	0x2fe117b
    15f0:	0000                	unimp
    15f2:	0b00                	addi	s0,sp,400
    15f4:	00000553          	fadd.s	fa0,ft0,ft0,rne
    15f8:	7c04                	ld	s1,56(s0)
    15fa:	3b06                	fld	fs6,96(sp)
    15fc:	0000                	unimp
    15fe:	0800                	addi	s0,sp,16
    1600:	0f00                	addi	s0,sp,912
    1602:	5708                	lw	a0,40(a4)
    1604:	0000                	unimp
    1606:	0d00                	addi	s0,sp,656
    1608:	0981                	addi	s3,s3,0
    160a:	0000                	unimp
    160c:	04b0                	addi	a2,sp,584
    160e:	08ba                	slli	a7,a7,0xe
    1610:	00000447          	fmsub.s	fs0,ft0,ft0,ft0,rne
    1614:	5f0e                	lw	t5,224(sp)
    1616:	0070                	addi	a2,sp,12
    1618:	bb04                	fsd	fs1,48(a4)
    161a:	fe12                	sd	tp,312(sp)
    161c:	0002                	c.slli64	zero
    161e:	0000                	unimp
    1620:	5f0e                	lw	t5,224(sp)
    1622:	0072                	c.slli	zero,0x1c
    1624:	bc04                	fsd	fs1,56(s0)
    1626:	00003b07          	fld	fs6,0(zero) # 0 <register_fini-0x100b0>
    162a:	0800                	addi	s0,sp,16
    162c:	5f0e                	lw	t5,224(sp)
    162e:	bd040077          	0xbd040077
    1632:	00003b07          	fld	fs6,0(zero) # 0 <register_fini-0x100b0>
    1636:	0c00                	addi	s0,sp,528
    1638:	00068e0b          	0x68e0b
    163c:	0400                	addi	s0,sp,512
    163e:	09be                	slli	s3,s3,0xf
    1640:	005e                	c.slli	zero,0x17
    1642:	0000                	unimp
    1644:	0b10                	addi	a2,sp,400
    1646:	0782                	c.slli64	a5
    1648:	0000                	unimp
    164a:	bf04                	fsd	fs1,56(a4)
    164c:	5e09                	li	t3,-30
    164e:	0000                	unimp
    1650:	1200                	addi	s0,sp,288
    1652:	5f0e                	lw	t5,224(sp)
    1654:	6662                	ld	a2,24(sp)
    1656:	0400                	addi	s0,sp,512
    1658:	11c0                	addi	s0,sp,228
    165a:	02d6                	slli	t0,t0,0x15
    165c:	0000                	unimp
    165e:	0b18                	addi	a4,sp,400
    1660:	05de                	slli	a1,a1,0x17
    1662:	0000                	unimp
    1664:	c104                	sw	s1,0(a0)
    1666:	00003b07          	fld	fs6,0(zero) # 0 <register_fini-0x100b0>
    166a:	2800                	fld	fs0,16(s0)
    166c:	00067e0b          	0x67e0b
    1670:	0400                	addi	s0,sp,512
    1672:	0ac8                	addi	a0,sp,340
    1674:	0106                	slli	sp,sp,0x1
    1676:	0000                	unimp
    1678:	0b30                	addi	a2,sp,408
    167a:	08e1                	addi	a7,a7,24
    167c:	0000                	unimp
    167e:	ca04                	sw	s1,16(a2)
    1680:	cb1d                	beqz	a4,16b6 <register_fini-0xe9fa>
    1682:	0005                	c.nop	1
    1684:	3800                	fld	fs0,48(s0)
    1686:	0008300b          	0x8300b
    168a:	0400                	addi	s0,sp,512
    168c:	1dcc                	addi	a1,sp,756
    168e:	05fa                	slli	a1,a1,0x1e
    1690:	0000                	unimp
    1692:	0b40                	addi	s0,sp,404
    1694:	0a05                	addi	s4,s4,1
    1696:	0000                	unimp
    1698:	cf04                	sw	s1,24(a4)
    169a:	1e0d                	addi	t3,t3,-29
    169c:	0006                	c.slli	zero,0x1
    169e:	4800                	lw	s0,16(s0)
    16a0:	00063e0b          	0x63e0b
    16a4:	0400                	addi	s0,sp,512
    16a6:	09d0                	addi	a2,sp,212
    16a8:	0638                	addi	a4,sp,776
    16aa:	0000                	unimp
    16ac:	0e50                	addi	a2,sp,788
    16ae:	755f 0062 d304      	0xd3040062755f
    16b4:	d611                	beqz	a2,15c0 <register_fini-0xeaf0>
    16b6:	0002                	c.slli64	zero
    16b8:	5800                	lw	s0,48(s0)
    16ba:	5f0e                	lw	t5,224(sp)
    16bc:	7075                	c.lui	zero,0xffffd
    16be:	0400                	addi	s0,sp,512
    16c0:	12d4                	addi	a3,sp,356
    16c2:	02fe                	slli	t0,t0,0x1f
    16c4:	0000                	unimp
    16c6:	0e68                	addi	a0,sp,796
    16c8:	755f 0072 d504      	0xd5040072755f
    16ce:	00003b07          	fld	fs6,0(zero) # 0 <register_fini-0x100b0>
    16d2:	7000                	ld	s0,32(s0)
    16d4:	0006450b          	0x6450b
    16d8:	0400                	addi	s0,sp,512
    16da:	11d8                	addi	a4,sp,228
    16dc:	063e                	slli	a2,a2,0xf
    16de:	0000                	unimp
    16e0:	0b74                	addi	a3,sp,412
    16e2:	0aca                	slli	s5,s5,0x12
    16e4:	0000                	unimp
    16e6:	d904                	sw	s1,48(a0)
    16e8:	4e11                	li	t3,4
    16ea:	0006                	c.slli	zero,0x1
    16ec:	7700                	ld	s0,40(a4)
    16ee:	5f0e                	lw	t5,224(sp)
    16f0:	626c                	ld	a1,192(a2)
    16f2:	0400                	addi	s0,sp,512
    16f4:	11dc                	addi	a5,sp,228
    16f6:	02d6                	slli	t0,t0,0x15
    16f8:	0000                	unimp
    16fa:	0b78                	addi	a4,sp,412
    16fc:	0a1c                	addi	a5,sp,272
    16fe:	0000                	unimp
    1700:	df04                	sw	s1,56(a4)
    1702:	00003b07          	fld	fs6,0(zero) # 0 <register_fini-0x100b0>
    1706:	8800                	0x8800
    1708:	00085f0b          	0x85f0b
    170c:	0400                	addi	s0,sp,512
    170e:	0ae0                	addi	s0,sp,348
    1710:	0080                	addi	s0,sp,64
    1712:	0000                	unimp
    1714:	0b90                	addi	a2,sp,464
    1716:	0592                	slli	a1,a1,0x4
    1718:	0000                	unimp
    171a:	e304                	sd	s1,0(a4)
    171c:	6512                	ld	a0,256(sp)
    171e:	0004                	0x4
    1720:	9800                	0x9800
    1722:	0007f60b          	0x7f60b
    1726:	0400                	addi	s0,sp,512
    1728:	01200ce7          	jalr	s9,18(zero) # 0 <register_fini-0x100b0>
    172c:	0000                	unimp
    172e:	0ba0                	addi	s0,sp,472
    1730:	076a                	slli	a4,a4,0x1a
    1732:	0000                	unimp
    1734:	e904                	sd	s1,16(a0)
    1736:	fa0e                	sd	gp,304(sp)
    1738:	0000                	unimp
    173a:	a400                	fsd	fs0,8(s0)
    173c:	00095f0b          	0x95f0b
    1740:	0400                	addi	s0,sp,512
    1742:	09ea                	slli	s3,s3,0x1a
    1744:	0000003b          	addw	zero,zero,zero
    1748:	00ac                	addi	a1,sp,72
    174a:	00009813          	slli	a6,ra,0x0
    174e:	6500                	ld	s0,8(a0)
    1750:	0004                	0x4
    1752:	1400                	addi	s0,sp,544
    1754:	0465                	addi	s0,s0,25
    1756:	0000                	unimp
    1758:	0614                	addi	a3,sp,768
    175a:	0001                	nop
    175c:	1400                	addi	s0,sp,544
    175e:	05b9                	addi	a1,a1,14
    1760:	0000                	unimp
    1762:	3b14                	fld	fa3,48(a4)
    1764:	0000                	unimp
    1766:	0000                	unimp
    1768:	0470080f          	0x470080f
    176c:	0000                	unimp
    176e:	6515                	lui	a0,0x5
    1770:	0004                	0x4
    1772:	1600                	addi	s0,sp,800
    1774:	09e8                	addi	a0,sp,220
    1776:	0000                	unimp
    1778:	0748                	addi	a0,sp,900
    177a:	6504                	ld	s1,8(a0)
    177c:	0802                	c.slli64	a6
    177e:	05b9                	addi	a1,a1,14
    1780:	0000                	unimp
    1782:	00093e17          	auipc	t3,0x93
    1786:	0400                	addi	s0,sp,512
    1788:	3b070267          	jalr	tp,944(a4)
    178c:	0000                	unimp
    178e:	0000                	unimp
    1790:	000aa617          	auipc	a2,0xaa
    1794:	0400                	addi	s0,sp,512
    1796:	026c                	addi	a1,sp,268
    1798:	0006aa0b          	0x6aa0b
    179c:	0800                	addi	s0,sp,16
    179e:	000a8e17          	auipc	t3,0xa8
    17a2:	0400                	addi	s0,sp,512
    17a4:	026c                	addi	a1,sp,268
    17a6:	aa14                	fsd	fa3,16(a2)
    17a8:	0006                	c.slli	zero,0x1
    17aa:	1000                	addi	s0,sp,32
    17ac:	00072e17          	auipc	t3,0x72
    17b0:	0400                	addi	s0,sp,512
    17b2:	026c                	addi	a1,sp,268
    17b4:	aa1e                	fsd	ft7,272(sp)
    17b6:	0006                	c.slli	zero,0x1
    17b8:	1800                	addi	s0,sp,48
    17ba:	0009ab17          	auipc	s6,0x9a
    17be:	0400                	addi	s0,sp,512
    17c0:	026e                	slli	tp,tp,0x1b
    17c2:	3b08                	fld	fa0,48(a4)
    17c4:	0000                	unimp
    17c6:	2000                	fld	fs0,0(s0)
    17c8:	00056117          	auipc	sp,0x56
    17cc:	0400                	addi	s0,sp,512
    17ce:	b308026f          	jal	tp,fffffffffff81afe <__BSS_END__+0xfffffffffff6f2ce>
    17d2:	0008                	0x8
    17d4:	2400                	fld	fs0,8(s0)
    17d6:	0009c717          	auipc	a4,0x9c
    17da:	0400                	addi	s0,sp,512
    17dc:	0272                	slli	tp,tp,0x1c
    17de:	00003b07          	fld	fs6,0(zero) # 0 <register_fini-0x100b0>
    17e2:	4000                	lw	s0,0(s0)
    17e4:	0009b517          	auipc	a0,0x9b
    17e8:	0400                	addi	s0,sp,512
    17ea:	c8160273          	0xc8160273
    17ee:	0008                	0x8
    17f0:	4800                	lw	s0,16(s0)
    17f2:	00089e17          	auipc	t3,0x89
    17f6:	0400                	addi	s0,sp,512
    17f8:	0275                	addi	tp,tp,29
    17fa:	00003b07          	fld	fs6,0(zero) # 0 <register_fini-0x100b0>
    17fe:	5000                	lw	s0,32(s0)
    1800:	0009bd17          	auipc	s10,0x9b
    1804:	0400                	addi	s0,sp,512
    1806:	d90a0277          	0xd90a0277
    180a:	0008                	0x8
    180c:	5800                	lw	s0,48(s0)
    180e:	0007ce17          	auipc	t3,0x7c
    1812:	0400                	addi	s0,sp,512
    1814:	027a                	slli	tp,tp,0x1e
    1816:	00018613          	mv	a2,gp
    181a:	6000                	ld	s0,0(s0)
    181c:	0006a917          	auipc	s2,0x6a
    1820:	0400                	addi	s0,sp,512
    1822:	3b07027b          	0x3b07027b
    1826:	0000                	unimp
    1828:	6800                	ld	s0,16(s0)
    182a:	000b2917          	auipc	s2,0xb2
    182e:	0400                	addi	s0,sp,512
    1830:	027c                	addi	a5,sp,268
    1832:	00018613          	mv	a2,gp
    1836:	7000                	ld	s0,32(s0)
    1838:	0008b017          	auipc	zero,0x8b
    183c:	0400                	addi	s0,sp,512
    183e:	027d                	addi	tp,tp,31
    1840:	df14                	sw	a3,56(a4)
    1842:	0008                	0x8
    1844:	7800                	ld	s0,48(s0)
    1846:	00077a17          	auipc	s4,0x77
    184a:	0400                	addi	s0,sp,512
    184c:	0280                	addi	s0,sp,320
    184e:	00003b07          	fld	fs6,0(zero) # 0 <register_fini-0x100b0>
    1852:	8000                	0x8000
    1854:	0006e717          	auipc	a4,0x6e
    1858:	0400                	addi	s0,sp,512
    185a:	0281                	addi	t0,t0,0
    185c:	b909                	j	146e <register_fini-0xec42>
    185e:	0005                	c.nop	1
    1860:	8800                	0x8800
    1862:	00093717          	auipc	a4,0x93
    1866:	0400                	addi	s0,sp,512
    1868:	02a4                	addi	s1,sp,328
    186a:	00088d07          	0x88d07
    186e:	9000                	0x9000
    1870:	8c18                	0x8c18
    1872:	0008                	0x8
    1874:	0400                	addi	s0,sp,512
    1876:	02a8                	addi	a0,sp,328
    1878:	0002b913          	sltiu	s2,t0,0
    187c:	f800                	sd	s0,48(s0)
    187e:	1801                	addi	a6,a6,-32
    1880:	07ac                	addi	a1,sp,968
    1882:	0000                	unimp
    1884:	a904                	fsd	fs1,16(a0)
    1886:	1202                	slli	tp,tp,0x20
    1888:	0275                	addi	tp,tp,29
    188a:	0000                	unimp
    188c:	0200                	addi	s0,sp,256
    188e:	c018                	sw	a4,0(s0)
    1890:	000a                	c.slli	zero,0x2
    1892:	0400                	addi	s0,sp,512
    1894:	02ad                	addi	t0,t0,11
    1896:	f00c                	sd	a1,32(s0)
    1898:	0008                	0x8
    189a:	1800                	addi	s0,sp,48
    189c:	1805                	addi	a6,a6,-31
    189e:	0686                	slli	a3,a3,0x1
    18a0:	0000                	unimp
    18a2:	b204                	fsd	fs1,32(a2)
    18a4:	1002                	c.slli	zero,0x20
    18a6:	0000066b          	0x66b
    18aa:	0520                	addi	s0,sp,648
    18ac:	6b18                	ld	a4,16(a4)
    18ae:	0006                	c.slli	zero,0x1
    18b0:	0400                	addi	s0,sp,512
    18b2:	02b4                	addi	a3,sp,328
    18b4:	fc0a                	sd	sp,56(sp)
    18b6:	0008                	0x8
    18b8:	3800                	fld	fs0,48(s0)
    18ba:	0005                	c.nop	1
    18bc:	05bf080f          	0x5bf080f
    18c0:	0000                	unimp
    18c2:	0102                	c.slli64	sp
    18c4:	f408                	sd	a0,40(s0)
    18c6:	0001                	nop
    18c8:	1500                	addi	s0,sp,672
    18ca:	000005bf 0447080f 	0x447080f000005bf
    18d2:	0000                	unimp
    18d4:	00009813          	slli	a6,ra,0x0
    18d8:	ef00                	sd	s0,24(a4)
    18da:	0005                	c.nop	1
    18dc:	1400                	addi	s0,sp,544
    18de:	0465                	addi	s0,s0,25
    18e0:	0000                	unimp
    18e2:	0614                	addi	a3,sp,768
    18e4:	0001                	nop
    18e6:	1400                	addi	s0,sp,544
    18e8:	000005ef          	jal	a1,18e8 <register_fini-0xe7c8>
    18ec:	3b14                	fld	fa3,48(a4)
    18ee:	0000                	unimp
    18f0:	0000                	unimp
    18f2:	05c6080f          	0x5c6080f
    18f6:	0000                	unimp
    18f8:	ef15                	bnez	a4,1934 <register_fini-0xe77c>
    18fa:	0005                	c.nop	1
    18fc:	0f00                	addi	s0,sp,912
    18fe:	d108                	sw	a0,32(a0)
    1900:	0005                	c.nop	1
    1902:	1300                	addi	s0,sp,416
    1904:	008c                	addi	a1,sp,64
    1906:	0000                	unimp
    1908:	061e                	slli	a2,a2,0x7
    190a:	0000                	unimp
    190c:	6514                	ld	a3,8(a0)
    190e:	0004                	0x4
    1910:	1400                	addi	s0,sp,544
    1912:	0106                	slli	sp,sp,0x1
    1914:	0000                	unimp
    1916:	8c14                	0x8c14
    1918:	0000                	unimp
    191a:	1400                	addi	s0,sp,544
    191c:	0000003b          	addw	zero,zero,zero
    1920:	0f00                	addi	s0,sp,912
    1922:	0008                	0x8
    1924:	0006                	c.slli	zero,0x1
    1926:	1300                	addi	s0,sp,416
    1928:	0000003b          	addw	zero,zero,zero
    192c:	0638                	addi	a4,sp,776
    192e:	0000                	unimp
    1930:	6514                	ld	a3,8(a0)
    1932:	0004                	0x4
    1934:	1400                	addi	s0,sp,544
    1936:	0106                	slli	sp,sp,0x1
    1938:	0000                	unimp
    193a:	0f00                	addi	s0,sp,912
    193c:	2408                	fld	fa0,8(s0)
    193e:	0006                	c.slli	zero,0x1
    1940:	0800                	addi	s0,sp,16
    1942:	00000057          	0x57
    1946:	064e                	slli	a2,a2,0x13
    1948:	0000                	unimp
    194a:	3409                	addiw	s0,s0,-30
    194c:	0000                	unimp
    194e:	0200                	addi	s0,sp,256
    1950:	0800                	addi	s0,sp,16
    1952:	00000057          	0x57
    1956:	065e                	slli	a2,a2,0x17
    1958:	0000                	unimp
    195a:	3409                	addiw	s0,s0,-30
    195c:	0000                	unimp
    195e:	0000                	unimp
    1960:	0400                	addi	s0,sp,512
    1962:	06a2                	slli	a3,a3,0x8
    1964:	0000                	unimp
    1966:	2404                	fld	fs1,8(s0)
    1968:	1a01                	addi	s4,s4,-32
    196a:	0304                	addi	s1,sp,384
    196c:	0000                	unimp
    196e:	a019                	j	1974 <register_fini-0xe73c>
    1970:	000a                	c.slli	zero,0x2
    1972:	1800                	addi	s0,sp,48
    1974:	2804                	fld	fs1,16(s0)
    1976:	0801                	addi	a6,a6,0
    1978:	06a4                	addi	s1,sp,840
    197a:	0000                	unimp
    197c:	00099817          	auipc	a6,0x99
    1980:	0400                	addi	s0,sp,512
    1982:	012a                	slli	sp,sp,0xa
    1984:	a411                	j	1b88 <register_fini-0xe528>
    1986:	0006                	c.slli	zero,0x1
    1988:	0000                	unimp
    198a:	00079217          	auipc	tp,0x79
    198e:	0400                	addi	s0,sp,512
    1990:	3b07012b          	0x3b07012b
    1994:	0000                	unimp
    1996:	0800                	addi	s0,sp,16
    1998:	00096717          	auipc	a4,0x96
    199c:	0400                	addi	s0,sp,512
    199e:	012c                	addi	a1,sp,136
    19a0:	0006aa0b          	0x6aa0b
    19a4:	1000                	addi	s0,sp,32
    19a6:	0f00                	addi	s0,sp,912
    19a8:	6b08                	ld	a0,16(a4)
    19aa:	0006                	c.slli	zero,0x1
    19ac:	0f00                	addi	s0,sp,912
    19ae:	5e08                	lw	a0,56(a2)
    19b0:	0006                	c.slli	zero,0x1
    19b2:	1900                	addi	s0,sp,176
    19b4:	0559                	addi	a0,a0,22
    19b6:	0000                	unimp
    19b8:	040e                	slli	s0,s0,0x3
    19ba:	0144                	addi	s1,sp,132
    19bc:	e908                	sd	a0,16(a0)
    19be:	0006                	c.slli	zero,0x1
    19c0:	1700                	addi	s0,sp,928
    19c2:	000009ef          	jal	s3,19c2 <register_fini-0xe6ee>
    19c6:	4504                	lw	s1,8(a0)
    19c8:	1201                	addi	tp,tp,-32
    19ca:	06e9                	addi	a3,a3,26
    19cc:	0000                	unimp
    19ce:	1700                	addi	s0,sp,928
    19d0:	0812                	slli	a6,a6,0x4
    19d2:	0000                	unimp
    19d4:	4604                	lw	s1,8(a2)
    19d6:	1201                	addi	tp,tp,-32
    19d8:	06e9                	addi	a3,a3,26
    19da:	0000                	unimp
    19dc:	1706                	slli	a4,a4,0x21
    19de:	0a51                	addi	s4,s4,20
    19e0:	0000                	unimp
    19e2:	4704                	lw	s1,8(a4)
    19e4:	1201                	addi	tp,tp,-32
    19e6:	0065                	c.nop	25
    19e8:	0000                	unimp
    19ea:	000c                	0xc
    19ec:	6508                	ld	a0,8(a0)
    19ee:	0000                	unimp
    19f0:	f900                	sd	s0,48(a0)
    19f2:	0006                	c.slli	zero,0x1
    19f4:	0900                	addi	s0,sp,144
    19f6:	0034                	addi	a3,sp,8
    19f8:	0000                	unimp
    19fa:	0002                	c.slli64	zero
    19fc:	d81a                	sw	t1,48(sp)
    19fe:	8504                	0x8504
    1a00:	0702                	c.slli64	a4
    1a02:	080e                	slli	a6,a6,0x3
    1a04:	0000                	unimp
    1a06:	00084117          	auipc	sp,0x84
    1a0a:	0400                	addi	s0,sp,512
    1a0c:	6c180287          	0x6c180287
    1a10:	0000                	unimp
    1a12:	0000                	unimp
    1a14:	000a3417          	auipc	s0,0xa3
    1a18:	0400                	addi	s0,sp,512
    1a1a:	0288                	addi	a0,sp,320
    1a1c:	b912                	fsd	ft4,176(sp)
    1a1e:	0005                	c.nop	1
    1a20:	0800                	addi	s0,sp,16
    1a22:	0007c117          	auipc	sp,0x7c
    1a26:	0400                	addi	s0,sp,512
    1a28:	0289                	addi	t0,t0,2
    1a2a:	0e10                	addi	a2,sp,784
    1a2c:	0008                	0x8
    1a2e:	1000                	addi	s0,sp,32
    1a30:	000ae317          	auipc	t1,0xae
    1a34:	0400                	addi	s0,sp,512
    1a36:	028a                	slli	t0,t0,0x2
    1a38:	00019c17          	auipc	s8,0x19
    1a3c:	2c00                	fld	fs0,24(s0)
    1a3e:	00073e17          	auipc	t3,0x73
    1a42:	0400                	addi	s0,sp,512
    1a44:	3b0f028b          	0x3b0f028b
    1a48:	0000                	unimp
    1a4a:	5000                	lw	s0,32(s0)
    1a4c:	00099317          	auipc	t1,0x99
    1a50:	0400                	addi	s0,sp,512
    1a52:	028c                	addi	a1,sp,320
    1a54:	1e2c                	addi	a1,sp,824
    1a56:	0008                	0x8
    1a58:	5800                	lw	s0,48(s0)
    1a5a:	000afb17          	auipc	s6,0xaf
    1a5e:	0400                	addi	s0,sp,512
    1a60:	028d                	addi	t0,t0,3
    1a62:	b01a                	fsd	ft6,32(sp)
    1a64:	0006                	c.slli	zero,0x1
    1a66:	6000                	ld	s0,0(s0)
    1a68:	00099e17          	auipc	t3,0x99
    1a6c:	0400                	addi	s0,sp,512
    1a6e:	028e                	slli	t0,t0,0x3
    1a70:	fa16                	sd	t0,304(sp)
    1a72:	0000                	unimp
    1a74:	7000                	ld	s0,32(s0)
    1a76:	000b1b17          	auipc	s6,0xb1
    1a7a:	0400                	addi	s0,sp,512
    1a7c:	fa16028f          	0xfa16028f
    1a80:	0000                	unimp
    1a82:	7800                	ld	s0,48(s0)
    1a84:	00062717          	auipc	a4,0x62
    1a88:	0400                	addi	s0,sp,512
    1a8a:	0290                	addi	a2,sp,320
    1a8c:	fa16                	sd	t0,304(sp)
    1a8e:	0000                	unimp
    1a90:	8000                	0x8000
    1a92:	000ab617          	auipc	a2,0xab
    1a96:	0400                	addi	s0,sp,512
    1a98:	0291                	addi	t0,t0,4
    1a9a:	2510                	fld	fa2,8(a0)
    1a9c:	0008                	0x8
    1a9e:	8800                	0x8800
    1aa0:	0007b517          	auipc	a0,0x7b
    1aa4:	0400                	addi	s0,sp,512
    1aa6:	0292                	slli	t0,t0,0x4
    1aa8:	3510                	fld	fa2,40(a0)
    1aaa:	0008                	0x8
    1aac:	9000                	0x9000
    1aae:	00058517          	auipc	a0,0x58
    1ab2:	0400                	addi	s0,sp,512
    1ab4:	3b0f0293          	addi	t0,t5,944
    1ab8:	0000                	unimp
    1aba:	a800                	fsd	fs0,16(s0)
    1abc:	00070017          	auipc	zero,0x70
    1ac0:	0400                	addi	s0,sp,512
    1ac2:	0294                	addi	a3,sp,320
    1ac4:	fa16                	sd	t0,304(sp)
    1ac6:	0000                	unimp
    1ac8:	ac00                	fsd	fs0,24(s0)
    1aca:	00061017          	auipc	zero,0x61
    1ace:	0400                	addi	s0,sp,512
    1ad0:	0295                	addi	t0,t0,5
    1ad2:	fa16                	sd	t0,304(sp)
    1ad4:	0000                	unimp
    1ad6:	b400                	fsd	fs0,40(s0)
    1ad8:	0006ef17          	auipc	t5,0x6e
    1adc:	0400                	addi	s0,sp,512
    1ade:	0296                	slli	t0,t0,0x5
    1ae0:	fa16                	sd	t0,304(sp)
    1ae2:	0000                	unimp
    1ae4:	bc00                	fsd	fs0,56(s0)
    1ae6:	00059817          	auipc	a6,0x59
    1aea:	0400                	addi	s0,sp,512
    1aec:	fa160297          	auipc	t0,0xfa160
    1af0:	0000                	unimp
    1af2:	c400                	sw	s0,8(s0)
    1af4:	0005c417          	auipc	s0,0x5c
    1af8:	0400                	addi	s0,sp,512
    1afa:	0298                	addi	a4,sp,320
    1afc:	fa16                	sd	t0,304(sp)
    1afe:	0000                	unimp
    1b00:	cc00                	sw	s0,24(s0)
    1b02:	00093c17          	auipc	s8,0x93
    1b06:	0400                	addi	s0,sp,512
    1b08:	0299                	addi	t0,t0,6
    1b0a:	3b08                	fld	fa0,48(a4)
    1b0c:	0000                	unimp
    1b0e:	d400                	sw	s0,40(s0)
    1b10:	0800                	addi	s0,sp,16
    1b12:	000005bf 0000081e 	0x81e000005bf
    1b1a:	3409                	addiw	s0,s0,-30
    1b1c:	0000                	unimp
    1b1e:	1900                	addi	s0,sp,176
    1b20:	0200                	addi	s0,sp,256
    1b22:	0708                	addi	a0,sp,896
    1b24:	0215                	addi	tp,tp,5
    1b26:	0000                	unimp
    1b28:	bf08                	fsd	fa0,56(a4)
    1b2a:	0005                	c.nop	1
    1b2c:	3500                	fld	fs0,40(a0)
    1b2e:	0008                	0x8
    1b30:	0900                	addi	s0,sp,144
    1b32:	0034                	addi	a3,sp,8
    1b34:	0000                	unimp
    1b36:	bf080007          	0xbf080007
    1b3a:	0005                	c.nop	1
    1b3c:	4500                	lw	s0,8(a0)
    1b3e:	0008                	0x8
    1b40:	0900                	addi	s0,sp,144
    1b42:	0034                	addi	a3,sp,8
    1b44:	0000                	unimp
    1b46:	681b0017          	auipc	zero,0x681b0
    1b4a:	0401                	addi	s0,s0,0
    1b4c:	029e                	slli	t0,t0,0x7
    1b4e:	00086d07          	0x86d07
    1b52:	1700                	addi	s0,sp,928
    1b54:	086e                	slli	a6,a6,0x1b
    1b56:	0000                	unimp
    1b58:	a104                	fsd	fs1,0(a0)
    1b5a:	1b02                	slli	s6,s6,0x20
    1b5c:	086d                	addi	a6,a6,27
    1b5e:	0000                	unimp
    1b60:	1700                	addi	s0,sp,928
    1b62:	074d                	addi	a4,a4,19
    1b64:	0000                	unimp
    1b66:	a204                	fsd	fs1,0(a2)
    1b68:	1802                	slli	a6,a6,0x20
    1b6a:	087d                	addi	a6,a6,31
    1b6c:	0000                	unimp
    1b6e:	00f0                	addi	a2,sp,76
    1b70:	fe08                	sd	a0,56(a2)
    1b72:	0002                	c.slli64	zero
    1b74:	7d00                	ld	s0,56(a0)
    1b76:	0008                	0x8
    1b78:	0900                	addi	s0,sp,144
    1b7a:	0034                	addi	a3,sp,8
    1b7c:	0000                	unimp
    1b7e:	001d                	c.nop	7
    1b80:	6c08                	ld	a0,24(s0)
    1b82:	0000                	unimp
    1b84:	8d00                	0x8d00
    1b86:	0008                	0x8
    1b88:	0900                	addi	s0,sp,144
    1b8a:	0034                	addi	a3,sp,8
    1b8c:	0000                	unimp
    1b8e:	001d                	c.nop	7
    1b90:	681c                	ld	a5,16(s0)
    1b92:	0401                	addi	s0,s0,0
    1b94:	b3030283          	lb	t0,-1232(t1) # 9a57c <__BSS_END__+0x87d4c>
    1b98:	0008                	0x8
    1b9a:	1d00                	addi	s0,sp,688
    1b9c:	09e8                	addi	a0,sp,220
    1b9e:	0000                	unimp
    1ba0:	9a04                	0x9a04
    1ba2:	0b02                	c.slli64	s6
    1ba4:	06f9                	addi	a3,a3,30
    1ba6:	0000                	unimp
    1ba8:	d01d                	beqz	s0,1ace <register_fini-0xe5e2>
    1baa:	000a                	c.slli	zero,0x2
    1bac:	0400                	addi	s0,sp,512
    1bae:	450b02a3          	sb	a6,1093(s6) # b2ebb <__BSS_END__+0xa068b>
    1bb2:	0008                	0x8
    1bb4:	0000                	unimp
    1bb6:	bf08                	fsd	fa0,56(a4)
    1bb8:	0005                	c.nop	1
    1bba:	c300                	sw	s0,0(a4)
    1bbc:	0008                	0x8
    1bbe:	0900                	addi	s0,sp,144
    1bc0:	0034                	addi	a3,sp,8
    1bc2:	0000                	unimp
    1bc4:	0018                	0x18
    1bc6:	051e                	slli	a0,a0,0x7
    1bc8:	0006                	c.slli	zero,0x1
    1bca:	0f00                	addi	s0,sp,912
    1bcc:	c308                	sw	a0,0(a4)
    1bce:	0008                	0x8
    1bd0:	1f00                	addi	s0,sp,944
    1bd2:	08d9                	addi	a7,a7,22
    1bd4:	0000                	unimp
    1bd6:	6514                	ld	a3,8(a0)
    1bd8:	0004                	0x4
    1bda:	0000                	unimp
    1bdc:	08ce080f          	0x8ce080f
    1be0:	0000                	unimp
    1be2:	0186080f          	0x186080f
    1be6:	0000                	unimp
    1be8:	f01f 0008 1400      	0x14000008f01f
    1bee:	0000003b          	addw	zero,zero,zero
    1bf2:	0f00                	addi	s0,sp,912
    1bf4:	f608                	sd	a0,40(a2)
    1bf6:	0008                	0x8
    1bf8:	0f00                	addi	s0,sp,912
    1bfa:	e508                	sd	a0,8(a0)
    1bfc:	0008                	0x8
    1bfe:	0800                	addi	s0,sp,16
    1c00:	065e                	slli	a2,a2,0x17
    1c02:	0000                	unimp
    1c04:	090c                	addi	a1,sp,144
    1c06:	0000                	unimp
    1c08:	3409                	addiw	s0,s0,-30
    1c0a:	0000                	unimp
    1c0c:	0200                	addi	s0,sp,256
    1c0e:	2000                	fld	fs0,0(s0)
    1c10:	0a7a                	slli	s4,s4,0x1e
    1c12:	0000                	unimp
    1c14:	3304                	fld	fs1,32(a4)
    1c16:	04651703          	lh	a4,70(a0) # 59af4 <__BSS_END__+0x472c4>
    1c1a:	0000                	unimp
    1c1c:	7320                	ld	s0,96(a4)
    1c1e:	000a                	c.slli	zero,0x2
    1c20:	0400                	addi	s0,sp,512
    1c22:	0334                	addi	a3,sp,392
    1c24:	6b1d                	lui	s6,0x7
    1c26:	0004                	0x4
    1c28:	0800                	addi	s0,sp,16
    1c2a:	05f5                	addi	a1,a1,29
    1c2c:	0000                	unimp
    1c2e:	0931                	addi	s2,s2,12
    1c30:	0000                	unimp
    1c32:	0021                	c.nop	8
    1c34:	2615                	addiw	a2,a2,5
    1c36:	0009                	c.nop	2
    1c38:	2200                	fld	fs0,0(a2)
    1c3a:	06da                	slli	a3,a3,0x16
    1c3c:	0000                	unimp
    1c3e:	1406                	slli	s0,s0,0x21
    1c40:	3124                	fld	fs1,96(a0)
    1c42:	0009                	c.nop	2
    1c44:	2200                	fld	fs0,0(a2)
    1c46:	0989                	addi	s3,s3,2
    1c48:	0000                	unimp
    1c4a:	1506                	slli	a0,a0,0x21
    1c4c:	3b15                	addiw	s6,s6,-27
    1c4e:	0000                	unimp
    1c50:	0f00                	addi	s0,sp,912
    1c52:	5408                	lw	a0,40(s0)
    1c54:	0009                	c.nop	2
    1c56:	1300                	addi	s0,sp,416
    1c58:	0000003b          	addw	zero,zero,zero
    1c5c:	0968                	addi	a0,sp,156
    1c5e:	0000                	unimp
    1c60:	6814                	ld	a3,16(s0)
    1c62:	0009                	c.nop	2
    1c64:	1400                	addi	s0,sp,544
    1c66:	0968                	addi	a0,sp,156
    1c68:	0000                	unimp
    1c6a:	0f00                	addi	s0,sp,912
    1c6c:	6e08                	ld	a0,24(a2)
    1c6e:	0009                	c.nop	2
    1c70:	2300                	fld	fs0,0(a4)
    1c72:	9422                	add	s0,s0,s0
    1c74:	0008                	0x8
    1c76:	0700                	addi	s0,sp,896
    1c78:	05b90e67          	jalr	t3,91(s2) # b3885 <__BSS_END__+0xa1055>
    1c7c:	0000                	unimp
    1c7e:	e722                	sd	s0,392(sp)
    1c80:	08000007          	0x8000007
    1c84:	0f10                	addi	a2,sp,912
    1c86:	00000987          	0x987
    1c8a:	05b9080f          	0x5b9080f
    1c8e:	0000                	unimp
    1c90:	9722                	add	a4,a4,s0
    1c92:	0008                	0x8
    1c94:	0800                	addi	s0,sp,16
    1c96:	0efc                	addi	a5,sp,860
    1c98:	05b9                	addi	a1,a1,14
    1c9a:	0000                	unimp
    1c9c:	6722                	ld	a4,8(sp)
    1c9e:	0008                	0x8
    1ca0:	0800                	addi	s0,sp,16
    1ca2:	0cfd                	addi	s9,s9,31
    1ca4:	0000003b          	addw	zero,zero,zero
    1ca8:	2d22                	fld	fs10,8(sp)
    1caa:	000a                	c.slli	zero,0x2
    1cac:	0800                	addi	s0,sp,16
    1cae:	14fd                	addi	s1,s1,-1
    1cb0:	0000003b          	addw	zero,zero,zero
    1cb4:	0a22                	slli	s4,s4,0x8
    1cb6:	0800000b          	0x800000b
    1cba:	1cfd                	addi	s9,s9,-1
    1cbc:	0000003b          	addw	zero,zero,zero
    1cc0:	2722                	fld	fa4,8(sp)
    1cc2:	0008                	0x8
    1cc4:	0800                	addi	s0,sp,16
    1cc6:	0cff                	0xcff
    1cc8:	0000003b          	addw	zero,zero,zero
    1ccc:	ba22                	fsd	fs0,304(sp)
    1cce:	0008                	0x8
    1cd0:	0900                	addi	s0,sp,144
    1cd2:	169a                	slli	a3,a3,0x26
    1cd4:	002d                	c.nop	11
    1cd6:	0000                	unimp
    1cd8:	6c22                	ld	s8,8(sp)
    1cda:	0005                	c.nop	1
    1cdc:	0900                	addi	s0,sp,144
    1cde:	003b159b          	slliw	a1,s6,0x3
    1ce2:	0000                	unimp
    1ce4:	b908                	fsd	fa0,48(a0)
    1ce6:	0005                	c.nop	1
    1ce8:	f100                	sd	s0,32(a0)
    1cea:	0009                	c.nop	2
    1cec:	0900                	addi	s0,sp,144
    1cee:	0034                	addi	a3,sp,8
    1cf0:	0000                	unimp
    1cf2:	0001                	nop
    1cf4:	1f22                	slli	t5,t5,0x28
    1cf6:	0006                	c.slli	zero,0x1
    1cf8:	0900                	addi	s0,sp,144
    1cfa:	179e                	slli	a5,a5,0x27
    1cfc:	09e1                	addi	s3,s3,24
    1cfe:	0000                	unimp
    1d00:	8805                	andi	s0,s0,1
    1d02:	0a000007          	0xa000007
    1d06:	162a                	slli	a2,a2,0x2a
    1d08:	006c                	addi	a1,sp,12
    1d0a:	0000                	unimp
    1d0c:	7705                	lui	a4,0xfffe1
    1d0e:	0009                	c.nop	2
    1d10:	0a00                	addi	s0,sp,272
    1d12:	0a15152f          	0xa15152f
    1d16:	0000                	unimp
    1d18:	0a1b080f          	0xa1b080f
    1d1c:	0000                	unimp
    1d1e:	0009fd13          	andi	s10,s3,0
    1d22:	2a00                	fld	fs0,16(a2)
    1d24:	000a                	c.slli	zero,0x2
    1d26:	1400                	addi	s0,sp,544
    1d28:	0968                	addi	a0,sp,156
    1d2a:	0000                	unimp
    1d2c:	0500                	addi	s0,sp,640
    1d2e:	0b38                	addi	a4,sp,408
    1d30:	0000                	unimp
    1d32:	360a                	fld	fa2,160(sp)
    1d34:	00094e0f          	0x94e0f
    1d38:	2200                	fld	fs0,0(a2)
    1d3a:	0541                	addi	a0,a0,16
    1d3c:	0000                	unimp
    1d3e:	bb0a                	fsd	ft2,432(sp)
    1d40:	0912                	slli	s2,s2,0x4
    1d42:	000a                	c.slli	zero,0x2
    1d44:	2200                	fld	fs0,0(a2)
    1d46:	0a5e                	slli	s4,s4,0x17
    1d48:	0000                	unimp
    1d4a:	be0a                	fsd	ft2,312(sp)
    1d4c:	2a10                	fld	fa2,16(a2)
    1d4e:	000a                	c.slli	zero,0x2
    1d50:	2400                	fld	fs0,8(s0)
    1d52:	0000075b          	0x75b
    1d56:	006c0407          	0x6c0407
    1d5a:	0000                	unimp
    1d5c:	8b06180b          	0x8b06180b
    1d60:	000a                	c.slli	zero,0x2
    1d62:	2500                	fld	fs0,8(a0)
    1d64:	00000917          	auipc	s2,0x0
    1d68:	2500                	fld	fs0,8(a0)
    1d6a:	00000807          	0x807
    1d6e:	2501                	sext.w	a0,a0
    1d70:	07dc                	addi	a5,sp,964
    1d72:	0000                	unimp
    1d74:	2502                	fld	fa0,0(sp)
    1d76:	07fc                	addi	a5,sp,972
    1d78:	0000                	unimp
    1d7a:	090e2503          	lw	a0,144(t3) # 9aaf8 <__BSS_END__+0x882c8>
    1d7e:	0000                	unimp
    1d80:	2504                	fld	fs1,8(a0)
    1d82:	0b11                	addi	s6,s6,4
    1d84:	0000                	unimp
    1d86:	2505                	addiw	a0,a0,1
    1d88:	0b00                	addi	s0,sp,400
    1d8a:	0000                	unimp
    1d8c:	0006                	c.slli	zero,0x1
    1d8e:	fb22                	sd	s0,432(sp)
    1d90:	0005                	c.nop	1
    1d92:	0b00                	addi	s0,sp,400
    1d94:	1c21                	addi	s8,s8,-24
    1d96:	0a4e                	slli	s4,s4,0x13
    1d98:	0000                	unimp
    1d9a:	4e24                	lw	s1,88(a2)
    1d9c:	0008                	0x8
    1d9e:	0700                	addi	s0,sp,896
    1da0:	6c04                	ld	s1,24(s0)
    1da2:	0000                	unimp
    1da4:	0b00                	addi	s0,sp,400
    1da6:	0abc0623          	sb	a1,172(s8) # 94bae <__BSS_END__+0x8237e>
    1daa:	0000                	unimp
    1dac:	6d25                	lui	s10,0x9
    1dae:	0009                	c.nop	2
    1db0:	0000                	unimp
    1db2:	2d25                	addiw	s10,s10,9
    1db4:	0009                	c.nop	2
    1db6:	0100                	addi	s0,sp,128
    1db8:	4125                	li	sp,9
    1dba:	000a                	c.slli	zero,0x2
    1dbc:	0200                	addi	s0,sp,256
    1dbe:	2200                	fld	fs0,0(a2)
    1dc0:	070e                	slli	a4,a4,0x3
    1dc2:	0000                	unimp
    1dc4:	971e280b          	0x971e280b
    1dc8:	000a                	c.slli	zero,0x2
    1dca:	2400                	fld	fs0,8(s0)
    1dcc:	000005a7          	0x5a7
    1dd0:	006c0407          	0x6c0407
    1dd4:	0000                	unimp
    1dd6:	e7062b0b          	0xe7062b0b
    1dda:	000a                	c.slli	zero,0x2
    1ddc:	2500                	fld	fs0,8(a0)
    1dde:	0a25                	addi	s4,s4,9
    1de0:	0000                	unimp
    1de2:	2500                	fld	fs0,8(a0)
    1de4:	00000a13          	li	s4,0
    1de8:	0001                	nop
    1dea:	c222                	sw	s0,4(sp)
    1dec:	0006                	c.slli	zero,0x1
    1dee:	0b00                	addi	s0,sp,400
    1df0:	0ac82a2f          	amoswap.w.rl	s4,a2,(a6)
    1df4:	0000                	unimp
    1df6:	1822                	slli	a6,a6,0x28
    1df8:	0008                	0x8
    1dfa:	0c00                	addi	s0,sp,528
    1dfc:	1a29                	addi	s4,s4,-22
    1dfe:	0931                	addi	s2,s2,12
    1e00:	0000                	unimp
    1e02:	5b22                	lw	s6,40(sp)
    1e04:	0006                	c.slli	zero,0x1
    1e06:	0c00                	addi	s0,sp,528
    1e08:	1a38                	addi	a4,sp,312
    1e0a:	0931                	addi	s2,s2,12
    1e0c:	0000                	unimp
    1e0e:	fe05                	bnez	a2,1d46 <register_fini-0xe36a>
    1e10:	0001                	nop
    1e12:	0d00                	addi	s0,sp,656
    1e14:	0057167b          	0x57167b
    1e18:	0000                	unimp
    1e1a:	0b15                	addi	s6,s6,5
    1e1c:	0500000b          	0x500000b
    1e20:	00000a87          	0xa87
    1e24:	840d                	srai	s0,s0,0x3
    1e26:	00002d0f          	0x2d0f
    1e2a:	0500                	addi	s0,sp,640
    1e2c:	0a86                	slli	s5,s5,0x1
    1e2e:	0000                	unimp
    1e30:	850d                	srai	a0,a0,0x3
    1e32:	3416                	fld	fs0,352(sp)
    1e34:	0000                	unimp
    1e36:	0200                	addi	s0,sp,256
    1e38:	0510                	addi	a2,sp,640
    1e3a:	000001d3          	fadd.s	ft3,ft0,ft0,rne
    1e3e:	1002                	c.slli	zero,0x20
    1e40:	00000007          	0x7
    1e44:	0200                	addi	s0,sp,256
    1e46:	0404                	addi	s1,sp,512
    1e48:	087d                	addi	a6,a6,31
    1e4a:	0000                	unimp
    1e4c:	0802                	c.slli64	a6
    1e4e:	00087503          	0x87503
    1e52:	0200                	addi	s0,sp,256
    1e54:	0408                	addi	a0,sp,512
    1e56:	05f4                	addi	a3,sp,716
    1e58:	0000                	unimp
    1e5a:	1002                	c.slli	zero,0x20
    1e5c:	00057603          	0x57603
    1e60:	0200                	addi	s0,sp,256
    1e62:	0320                	addi	s0,sp,392
    1e64:	000005e7          	jalr	a1,zero # 0 <register_fini-0x100b0>
    1e68:	1708                	addi	a0,sp,928
    1e6a:	7500000b          	0x7500000b
    1e6e:	0900000b          	0x900000b
    1e72:	0034                	addi	a3,sp,8
    1e74:	0000                	unimp
    1e76:	00ff                	0xff
    1e78:	6515                	lui	a0,0x5
    1e7a:	2000000b          	0x2000000b
    1e7e:	000006b3          	add	a3,zero,zero
    1e82:	fc0d                	bnez	s0,1dbc <register_fini-0xe2f4>
    1e84:	1601                	addi	a2,a2,-32
    1e86:	0b75                	addi	s6,s6,29
    1e88:	0000                	unimp
    1e8a:	0620                	addi	s0,sp,776
    1e8c:	0002                	c.slli64	zero
    1e8e:	0d00                	addi	s0,sp,656
    1e90:	0202                	c.slli64	tp
    1e92:	7516                	ld	a0,352(sp)
    1e94:	2600000b          	0x2600000b
    1e98:	05d5                	addi	a1,a1,21
    1e9a:	0000                	unimp
    1e9c:	c201                	beqz	a2,1e9c <register_fini-0xe214>
    1e9e:	0102                	c.slli64	sp
    1ea0:	0000003b          	addw	zero,zero,zero
    1ea4:	1274                	addi	a3,sp,300
    1ea6:	0001                	nop
    1ea8:	0000                	unimp
    1eaa:	0000                	unimp
    1eac:	003c                	addi	a5,sp,8
    1eae:	0000                	unimp
    1eb0:	0000                	unimp
    1eb2:	0000                	unimp
    1eb4:	9c01                	subw	s0,s0,s0
    1eb6:	01007827          	0x1007827
    1eba:	02c2                	slli	t0,t0,0x10
    1ebc:	2812                	fld	fa6,256(sp)
    1ebe:	4100000b          	0x4100000b
    1ec2:	0035                	c.nop	13
    1ec4:	2800                	fld	fs0,16(s0)
    1ec6:	6572                	ld	a0,280(sp)
    1ec8:	0074                	addi	a3,sp,12
    1eca:	c401                	beqz	s0,1ed2 <register_fini-0xe1de>
    1ecc:	0902                	c.slli64	s2
    1ece:	0b1c                	addi	a5,sp,400
    1ed0:	0000                	unimp
    1ed2:	a029                	j	1edc <register_fini-0xe1d4>
    1ed4:	2a000007          	0x2a000007
    1ed8:	0a6e                	slli	s4,s4,0x1b
    1eda:	0000                	unimp
    1edc:	c601                	beqz	a2,1ee4 <register_fini-0xe1cc>
    1ede:	0302                	c.slli64	t1
    1ee0:	0b28                	addi	a0,sp,408
    1ee2:	0000                	unimp
    1ee4:	357a                	fld	fa0,440(sp)
    1ee6:	0000                	unimp
    1ee8:	615f5f2b          	0x615f5f2b
    1eec:	0100                	addi	s0,sp,128
    1eee:	02c6                	slli	t0,t0,0x11
    1ef0:	000b2803          	lw	a6,0(s6) # 7000 <register_fini-0x90b0>
    1ef4:	b300                	fsd	fs0,32(a4)
    1ef6:	0035                	c.nop	13
    1ef8:	0000                	unimp
    1efa:	0000                	unimp
    1efc:	0b7c                	addi	a5,sp,412
    1efe:	0000                	unimp
    1f00:	0004                	0x4
    1f02:	0b4c                	addi	a1,sp,404
    1f04:	0000                	unimp
    1f06:	0108                	addi	a0,sp,128
    1f08:	010a                	slli	sp,sp,0x2
    1f0a:	0000                	unimp
    1f0c:	e70c                	sd	a1,8(a4)
    1f0e:	0008                	0x8
    1f10:	7600                	ld	s0,40(a2)
    1f12:	0000                	unimp
    1f14:	9400                	0x9400
    1f16:	0029                	c.nop	10
    1f18:	0200                	addi	s0,sp,256
    1f1a:	0508                	addi	a0,sp,640
    1f1c:	024c                	addi	a1,sp,260
    1f1e:	0000                	unimp
    1f20:	0802                	c.slli64	a6
    1f22:	00021a07          	0x21a07
    1f26:	0300                	addi	s0,sp,384
    1f28:	0504                	addi	s1,sp,640
    1f2a:	6e69                	lui	t3,0x1a
    1f2c:	0074                	addi	a3,sp,12
    1f2e:	0802                	c.slli64	a6
    1f30:	4705                	li	a4,1
    1f32:	0002                	c.slli64	zero
    1f34:	0200                	addi	s0,sp,256
    1f36:	0410                	addi	a2,sp,512
    1f38:	000005ef          	jal	a1,1f38 <register_fini-0xe178>
    1f3c:	0102                	c.slli64	sp
    1f3e:	ed06                	sd	ra,152(sp)
    1f40:	0001                	nop
    1f42:	0200                	addi	s0,sp,256
    1f44:	0801                	addi	a6,a6,0
    1f46:	000001eb          	0x1eb
    1f4a:	0202                	c.slli64	tp
    1f4c:	3705                	addiw	a4,a4,-31
    1f4e:	0005                	c.nop	1
    1f50:	0200                	addi	s0,sp,256
    1f52:	0702                	c.slli64	a4
    1f54:	0799                	addi	a5,a5,6
    1f56:	0000                	unimp
    1f58:	0402                	c.slli64	s0
    1f5a:	00021f07          	0x21f07
    1f5e:	0400                	addi	s0,sp,512
    1f60:	000007ef          	jal	a5,1f60 <register_fini-0xe150>
    1f64:	5e01                	li	t3,-32
    1f66:	1701                	addi	a4,a4,-32
    1f68:	005c                	addi	a5,sp,4
    1f6a:	0000                	unimp
    1f6c:	a905                	j	239c <register_fini-0xdd14>
    1f6e:	0008                	0x8
    1f70:	0200                	addi	s0,sp,256
    1f72:	0e2e                	slli	t3,t3,0xb
    1f74:	001d                	c.nop	7
    1f76:	0000                	unimp
    1f78:	0b05                	addi	s6,s6,1
    1f7a:	000a                	c.slli	zero,0x2
    1f7c:	0200                	addi	s0,sp,256
    1f7e:	0e74                	addi	a3,sp,796
    1f80:	001d                	c.nop	7
    1f82:	0000                	unimp
    1f84:	ad05                	j	25b4 <register_fini-0xdafc>
    1f86:	000a                	c.slli	zero,0x2
    1f88:	0200                	addi	s0,sp,256
    1f8a:	001d1793          	slli	a5,s10,0x1
    1f8e:	0000                	unimp
    1f90:	0406                	slli	s0,s0,0x1
    1f92:	a502                	fsd	ft0,136(sp)
    1f94:	0000b603          	ld	a2,0(ra)
    1f98:	0700                	addi	s0,sp,896
    1f9a:	07d6                	slli	a5,a5,0x15
    1f9c:	0000                	unimp
    1f9e:	a702                	fsd	ft0,392(sp)
    1fa0:	630c                	ld	a1,0(a4)
    1fa2:	0000                	unimp
    1fa4:	0700                	addi	s0,sp,896
    1fa6:	00000773          	0x773
    1faa:	a802                	fsd	ft0,16(sp)
    1fac:	0000b613          	sltiu	a2,ra,0
    1fb0:	0000                	unimp
    1fb2:	4708                	lw	a0,8(a4)
    1fb4:	0000                	unimp
    1fb6:	c600                	sw	s0,8(a2)
    1fb8:	0000                	unimp
    1fba:	0900                	addi	s0,sp,144
    1fbc:	0024                	addi	s1,sp,8
    1fbe:	0000                	unimp
    1fc0:	080a0003          	lb	zero,128(s4) # 788c6 <__BSS_END__+0x66096>
    1fc4:	a202                	fsd	ft0,256(sp)
    1fc6:	ea09                	bnez	a2,1fd8 <register_fini-0xe0d8>
    1fc8:	0000                	unimp
    1fca:	0b00                	addi	s0,sp,400
    1fcc:	09f5                	addi	s3,s3,29
    1fce:	0000                	unimp
    1fd0:	a402                	fsd	ft0,8(sp)
    1fd2:	00002b07          	flw	fs6,0(zero) # 0 <register_fini-0x100b0>
    1fd6:	0000                	unimp
    1fd8:	0009fd0b          	0x9fd0b
    1fdc:	0200                	addi	s0,sp,256
    1fde:	05a9                	addi	a1,a1,10
    1fe0:	0094                	addi	a3,sp,64
    1fe2:	0000                	unimp
    1fe4:	0004                	0x4
    1fe6:	c405                	beqz	s0,200e <register_fini-0xe0a2>
    1fe8:	0008                	0x8
    1fea:	0200                	addi	s0,sp,256
    1fec:	03aa                	slli	t2,t2,0xa
    1fee:	00c6                	slli	ra,ra,0x11
    1ff0:	0000                	unimp
    1ff2:	080c                	addi	a1,sp,16
    1ff4:	5605                	li	a2,-31
    1ff6:	000a                	c.slli	zero,0x2
    1ff8:	0300                	addi	s0,sp,384
    1ffa:	1919                	addi	s2,s2,-26
    1ffc:	005c                	addi	a5,sp,4
    1ffe:	0000                	unimp
    2000:	cf05                	beqz	a4,2038 <register_fini-0xe078>
    2002:	0008                	0x8
    2004:	0400                	addi	s0,sp,512
    2006:	0d0c                	addi	a1,sp,656
    2008:	0000002b          	0x2b
    200c:	4505                	li	a0,1
    200e:	0009                	c.nop	2
    2010:	0300                	addi	s0,sp,384
    2012:	01041b23          	sh	a6,22(s0) # 5db0a <__BSS_END__+0x4b2da>
    2016:	0000                	unimp
    2018:	360d                	addiw	a2,a2,-29
    201a:	20000007          	0x20000007
    201e:	76083403          	ld	s0,1888(a6) # 5b246 <__BSS_END__+0x48a16>
    2022:	0001                	nop
    2024:	0b00                	addi	s0,sp,400
    2026:	0998                	addi	a4,sp,208
    2028:	0000                	unimp
    202a:	76133603          	ld	a2,1889(t1)
    202e:	0001                	nop
    2030:	0000                	unimp
    2032:	5f0e                	lw	t5,224(sp)
    2034:	3703006b          	0x3703006b
    2038:	00002b07          	flw	fs6,0(zero) # 0 <register_fini-0x100b0>
    203c:	0800                	addi	s0,sp,16
    203e:	0009e00b          	0x9e00b
    2042:	0300                	addi	s0,sp,384
    2044:	002b0b37          	lui	s6,0x2b0
    2048:	0000                	unimp
    204a:	0b0c                	addi	a1,sp,400
    204c:	0728                	addi	a0,sp,904
    204e:	0000                	unimp
    2050:	2b143703          	ld	a4,689(s0)
    2054:	0000                	unimp
    2056:	1000                	addi	s0,sp,32
    2058:	00069d0b          	0x69d0b
    205c:	0300                	addi	s0,sp,384
    205e:	002b1b37          	lui	s6,0x2b1
    2062:	0000                	unimp
    2064:	0e14                	addi	a3,sp,784
    2066:	785f 0300 0b38      	0xb380300785f
    206c:	017c                	addi	a5,sp,140
    206e:	0000                	unimp
    2070:	0018                	0x18
    2072:	011c080f          	0x11c080f
    2076:	0000                	unimp
    2078:	f808                	sd	a0,48(s0)
    207a:	0000                	unimp
    207c:	8c00                	0x8c00
    207e:	0001                	nop
    2080:	0900                	addi	s0,sp,144
    2082:	0024                	addi	s1,sp,8
    2084:	0000                	unimp
    2086:	0000                	unimp
    2088:	560d                	li	a2,-29
    208a:	24000007          	0x24000007
    208e:	0f083c03          	ld	s8,240(a6)
    2092:	0002                	c.slli64	zero
    2094:	0b00                	addi	s0,sp,400
    2096:	0635                	addi	a2,a2,13
    2098:	0000                	unimp
    209a:	2b093e03          	ld	t3,688(s2) # 2014 <register_fini-0xe09c>
    209e:	0000                	unimp
    20a0:	0000                	unimp
    20a2:	000af20b          	0xaf20b
    20a6:	0300                	addi	s0,sp,384
    20a8:	002b093f 0b040000 	0xb040000002b093f
    20b0:	0651                	addi	a2,a2,20
    20b2:	0000                	unimp
    20b4:	2b094003          	lbu	zero,688(s2)
    20b8:	0000                	unimp
    20ba:	0800                	addi	s0,sp,16
    20bc:	000b2e0b          	0xb2e0b
    20c0:	0300                	addi	s0,sp,384
    20c2:	0941                	addi	s2,s2,16
    20c4:	0000002b          	0x2b
    20c8:	0b0c                	addi	a1,sp,400
    20ca:	00000883          	lb	a7,0(zero) # 0 <register_fini-0x100b0>
    20ce:	2b094203          	lbu	tp,688(s2)
    20d2:	0000                	unimp
    20d4:	1000                	addi	s0,sp,32
    20d6:	0008370b          	0x8370b
    20da:	0300                	addi	s0,sp,384
    20dc:	002b0943          	fmadd.s	fs2,fs6,ft2,ft0,rne
    20e0:	0000                	unimp
    20e2:	0b14                	addi	a3,sp,400
    20e4:	0a96                	slli	s5,s5,0x5
    20e6:	0000                	unimp
    20e8:	2b094403          	lbu	s0,688(s2)
    20ec:	0000                	unimp
    20ee:	1800                	addi	s0,sp,48
    20f0:	00094e0b          	0x94e0b
    20f4:	0300                	addi	s0,sp,384
    20f6:	0945                	addi	s2,s2,17
    20f8:	0000002b          	0x2b
    20fc:	0b1c                	addi	a5,sp,400
    20fe:	0ad8                	addi	a4,sp,340
    2100:	0000                	unimp
    2102:	2b094603          	lbu	a2,688(s2)
    2106:	0000                	unimp
    2108:	2000                	fld	fs0,0(s0)
    210a:	1000                	addi	s0,sp,32
    210c:	0670                	addi	a2,sp,780
    210e:	0000                	unimp
    2110:	0208                	addi	a0,sp,256
    2112:	55084f03          	lbu	t5,1360(a6)
    2116:	0002                	c.slli64	zero
    2118:	0b00                	addi	s0,sp,400
    211a:	0000071b          	sext.w	a4,zero
    211e:	550a5003          	lhu	zero,1360(s4)
    2122:	0002                	c.slli64	zero
    2124:	0000                	unimp
    2126:	2111                	addiw	sp,sp,4
    2128:	0009                	c.nop	2
    212a:	0300                	addi	s0,sp,384
    212c:	0951                	addi	s2,s2,20
    212e:	0255                	addi	tp,tp,21
    2130:	0000                	unimp
    2132:	0100                	addi	s0,sp,128
    2134:	4811                	li	a6,4
    2136:	000a                	c.slli	zero,0x2
    2138:	0300                	addi	s0,sp,384
    213a:	00f80a53          	fadd.s	fs4,fa6,fa5,rne
    213e:	0000                	unimp
    2140:	0200                	addi	s0,sp,256
    2142:	9511                	srai	a0,a0,0x24
    2144:	0006                	c.slli	zero,0x1
    2146:	0300                	addi	s0,sp,384
    2148:	0a56                	slli	s4,s4,0x15
    214a:	00f8                	addi	a4,sp,76
    214c:	0000                	unimp
    214e:	0204                	addi	s1,sp,256
    2150:	0800                	addi	s0,sp,16
    2152:	00f6                	slli	ra,ra,0x1d
    2154:	0000                	unimp
    2156:	0265                	addi	tp,tp,25
    2158:	0000                	unimp
    215a:	2409                	addiw	s0,s0,2
    215c:	0000                	unimp
    215e:	1f00                	addi	s0,sp,944
    2160:	1000                	addi	s0,sp,32
    2162:	088c                	addi	a1,sp,80
    2164:	0000                	unimp
    2166:	0318                	addi	a4,sp,384
    2168:	a9086203          	lwu	tp,-1392(a6)
    216c:	0002                	c.slli64	zero
    216e:	0b00                	addi	s0,sp,400
    2170:	0998                	addi	a4,sp,208
    2172:	0000                	unimp
    2174:	a9126303          	lwu	t1,-1391(tp) # 7a41b <__BSS_END__+0x67beb>
    2178:	0002                	c.slli64	zero
    217a:	0000                	unimp
    217c:	0009b00b          	0x9b00b
    2180:	0300                	addi	s0,sp,384
    2182:	0664                	addi	s1,sp,780
    2184:	0000002b          	0x2b
    2188:	0b08                	addi	a0,sp,400
    218a:	00000723          	sb	zero,14(zero) # e <register_fini-0x100a2>
    218e:	af096603          	lwu	a2,-1296(s2)
    2192:	0002                	c.slli64	zero
    2194:	1000                	addi	s0,sp,32
    2196:	7011                	c.lui	zero,0xfffe4
    2198:	0006                	c.slli	zero,0x1
    219a:	0300                	addi	s0,sp,384
    219c:	020f1e67          	0x20f1e67
    21a0:	0000                	unimp
    21a2:	0110                	addi	a2,sp,128
    21a4:	0f00                	addi	s0,sp,912
    21a6:	6508                	ld	a0,8(a0)
    21a8:	0002                	c.slli64	zero
    21aa:	0800                	addi	s0,sp,16
    21ac:	000002bf 000002bf 	0x2bf000002bf
    21b4:	2409                	addiw	s0,s0,2
    21b6:	0000                	unimp
    21b8:	1f00                	addi	s0,sp,944
    21ba:	0f00                	addi	s0,sp,912
    21bc:	c508                	sw	a0,8(a0)
    21be:	0002                	c.slli64	zero
    21c0:	1200                	addi	s0,sp,288
    21c2:	580d                	li	a6,-29
    21c4:	0009                	c.nop	2
    21c6:	1000                	addi	s0,sp,32
    21c8:	ee087a03          	0xee087a03
    21cc:	0002                	c.slli64	zero
    21ce:	0b00                	addi	s0,sp,400
    21d0:	0000064b          	fnmsub.s	fa2,ft0,ft0,ft0,rne
    21d4:	ee117b03          	0xee117b03
    21d8:	0002                	c.slli64	zero
    21da:	0000                	unimp
    21dc:	0005530b          	0x5530b
    21e0:	0300                	addi	s0,sp,384
    21e2:	067c                	addi	a5,sp,780
    21e4:	0000002b          	0x2b
    21e8:	0008                	0x8
    21ea:	0047080f          	0x47080f
    21ee:	0000                	unimp
    21f0:	810d                	srli	a0,a0,0x3
    21f2:	0009                	c.nop	2
    21f4:	b000                	fsd	fs0,32(s0)
    21f6:	3708ba03          	ld	s4,880(a7)
    21fa:	0004                	0x4
    21fc:	0e00                	addi	s0,sp,784
    21fe:	705f 0300 12bb      	0x12bb0300705f
    2204:	02ee                	slli	t0,t0,0x1b
    2206:	0000                	unimp
    2208:	0e00                	addi	s0,sp,784
    220a:	725f 0300 07bc      	0x7bc0300725f
    2210:	0000002b          	0x2b
    2214:	0e08                	addi	a0,sp,784
    2216:	775f 0300 07bd      	0x7bd0300775f
    221c:	0000002b          	0x2b
    2220:	0b0c                	addi	a1,sp,400
    2222:	068e                	slli	a3,a3,0x3
    2224:	0000                	unimp
    2226:	4e09be03          	ld	t3,1248(s3)
    222a:	0000                	unimp
    222c:	1000                	addi	s0,sp,32
    222e:	0007820b          	0x7820b
    2232:	0300                	addi	s0,sp,384
    2234:	004e09bf 0e120000 	0xe120000004e09bf
    223c:	625f 0066 c003      	0xc0030066625f
    2242:	c611                	beqz	a2,224e <register_fini-0xde62>
    2244:	0002                	c.slli64	zero
    2246:	1800                	addi	s0,sp,48
    2248:	0005de0b          	0x5de0b
    224c:	0300                	addi	s0,sp,384
    224e:	07c1                	addi	a5,a5,16
    2250:	0000002b          	0x2b
    2254:	0b28                	addi	a0,sp,408
    2256:	067e                	slli	a2,a2,0x1f
    2258:	0000                	unimp
    225a:	f60ac803          	lbu	a6,-160(s5)
    225e:	0000                	unimp
    2260:	3000                	fld	fs0,32(s0)
    2262:	0008e10b          	0x8e10b
    2266:	0300                	addi	s0,sp,384
    2268:	1dca                	slli	s11,s11,0x32
    226a:	000005bb          	addw	a1,zero,zero
    226e:	0b38                	addi	a4,sp,408
    2270:	0830                	addi	a2,sp,24
    2272:	0000                	unimp
    2274:	ea1dcc03          	lbu	s8,-351(s11)
    2278:	0005                	c.nop	1
    227a:	4000                	lw	s0,0(s0)
    227c:	000a050b          	0xa050b
    2280:	0300                	addi	s0,sp,384
    2282:	060e0dcf          	fnmadd.q	fs11,ft8,ft0,ft0,rne
    2286:	0000                	unimp
    2288:	0b48                	addi	a0,sp,404
    228a:	063e                	slli	a2,a2,0xf
    228c:	0000                	unimp
    228e:	2809d003          	lhu	zero,640(s3)
    2292:	0006                	c.slli	zero,0x1
    2294:	5000                	lw	s0,32(s0)
    2296:	5f0e                	lw	t5,224(sp)
    2298:	6275                	lui	tp,0x1d
    229a:	0300                	addi	s0,sp,384
    229c:	02c611d3          	fadd.d	ft3,fa2,fa2,rtz
    22a0:	0000                	unimp
    22a2:	0e58                	addi	a4,sp,788
    22a4:	755f 0070 d403      	0xd4030070755f
    22aa:	ee12                	sd	tp,280(sp)
    22ac:	0002                	c.slli64	zero
    22ae:	6800                	ld	s0,16(s0)
    22b0:	5f0e                	lw	t5,224(sp)
    22b2:	7275                	lui	tp,0xffffd
    22b4:	0300                	addi	s0,sp,384
    22b6:	07d5                	addi	a5,a5,21
    22b8:	0000002b          	0x2b
    22bc:	0b70                	addi	a2,sp,412
    22be:	0645                	addi	a2,a2,17
    22c0:	0000                	unimp
    22c2:	2e11d803          	lhu	a6,737(gp) # 12b01 <__BSS_END__+0x2d1>
    22c6:	0006                	c.slli	zero,0x1
    22c8:	7400                	ld	s0,40(s0)
    22ca:	000aca0b          	0xaca0b
    22ce:	0300                	addi	s0,sp,384
    22d0:	11d9                	addi	gp,gp,-10
    22d2:	063e                	slli	a2,a2,0xf
    22d4:	0000                	unimp
    22d6:	6c5f0e77          	0x6c5f0e77
    22da:	0062                	c.slli	zero,0x18
    22dc:	c611dc03          	lhu	s8,-927(gp) # 12481 <impure_data+0x3e9>
    22e0:	0002                	c.slli64	zero
    22e2:	7800                	ld	s0,48(s0)
    22e4:	000a1c0b          	0xa1c0b
    22e8:	0300                	addi	s0,sp,384
    22ea:	07df 002b 0000      	0x2b07df
    22f0:	0b88                	addi	a0,sp,464
    22f2:	085f 0000 e003      	0xe0030000085f
    22f8:	700a                	0x700a
    22fa:	0000                	unimp
    22fc:	9000                	0x9000
    22fe:	0005920b          	0x5920b
    2302:	0300                	addi	s0,sp,384
    2304:	045512e3          	bne	a0,t0,2b48 <register_fini-0xd568>
    2308:	0000                	unimp
    230a:	0b98                	addi	a4,sp,464
    230c:	07f6                	slli	a5,a5,0x1d
    230e:	0000                	unimp
    2310:	100ce703          	lwu	a4,256(s9)
    2314:	0001                	nop
    2316:	a000                	fsd	fs0,0(s0)
    2318:	00076a0b          	0x76a0b
    231c:	0300                	addi	s0,sp,384
    231e:	0ee9                	addi	t4,t4,26
    2320:	00ea                	slli	ra,ra,0x1a
    2322:	0000                	unimp
    2324:	0ba4                	addi	s1,sp,472
    2326:	095f 0000 ea03      	0xea030000095f
    232c:	2b09                	addiw	s6,s6,2
    232e:	0000                	unimp
    2330:	ac00                	fsd	fs0,24(s0)
    2332:	1300                	addi	s0,sp,416
    2334:	0088                	addi	a0,sp,64
    2336:	0000                	unimp
    2338:	0455                	addi	s0,s0,21
    233a:	0000                	unimp
    233c:	5514                	lw	a3,40(a0)
    233e:	0004                	0x4
    2340:	1400                	addi	s0,sp,544
    2342:	00f6                	slli	ra,ra,0x1d
    2344:	0000                	unimp
    2346:	a914                	fsd	fa3,16(a0)
    2348:	0005                	c.nop	1
    234a:	1400                	addi	s0,sp,544
    234c:	0000002b          	0x2b
    2350:	0f00                	addi	s0,sp,912
    2352:	6008                	ld	a0,0(s0)
    2354:	0004                	0x4
    2356:	1500                	addi	s0,sp,672
    2358:	0455                	addi	s0,s0,21
    235a:	0000                	unimp
    235c:	e816                	sd	t0,16(sp)
    235e:	0009                	c.nop	2
    2360:	4800                	lw	s0,16(s0)
    2362:	02650307          	0x2650307
    2366:	a908                	fsd	fa0,16(a0)
    2368:	0005                	c.nop	1
    236a:	1700                	addi	s0,sp,928
    236c:	093e                	slli	s2,s2,0xf
    236e:	0000                	unimp
    2370:	07026703          	lwu	a4,112(tp) # ffffffffffffd070 <__BSS_END__+0xfffffffffffea840>
    2374:	0000002b          	0x2b
    2378:	1700                	addi	s0,sp,928
    237a:	0aa6                	slli	s5,s5,0x9
    237c:	0000                	unimp
    237e:	0b026c03          	lwu	s8,176(tp) # b0 <register_fini-0x10000>
    2382:	069a                	slli	a3,a3,0x6
    2384:	0000                	unimp
    2386:	1708                	addi	a0,sp,928
    2388:	0a8e                	slli	s5,s5,0x3
    238a:	0000                	unimp
    238c:	14026c03          	lwu	s8,320(tp) # 140 <register_fini-0xff70>
    2390:	069a                	slli	a3,a3,0x6
    2392:	0000                	unimp
    2394:	1710                	addi	a2,sp,928
    2396:	072e                	slli	a4,a4,0xb
    2398:	0000                	unimp
    239a:	1e026c03          	lwu	s8,480(tp) # 1e0 <register_fini-0xfed0>
    239e:	069a                	slli	a3,a3,0x6
    23a0:	0000                	unimp
    23a2:	1718                	addi	a4,sp,928
    23a4:	000009ab          	0x9ab
    23a8:	08026e03          	lwu	t3,128(tp) # 80 <register_fini-0x10030>
    23ac:	0000002b          	0x2b
    23b0:	1720                	addi	s0,sp,936
    23b2:	0561                	addi	a0,a0,24
    23b4:	0000                	unimp
    23b6:	08026f03          	lwu	t5,128(tp) # 80 <register_fini-0x10030>
    23ba:	000008a3          	sb	zero,17(zero) # 11 <register_fini-0x1009f>
    23be:	1724                	addi	s1,sp,936
    23c0:	000009c7          	fmsub.s	fs3,ft0,ft0,ft0,rne
    23c4:	07027203          	0x7027203
    23c8:	0000002b          	0x2b
    23cc:	1740                	addi	s0,sp,932
    23ce:	09b5                	addi	s3,s3,13
    23d0:	0000                	unimp
    23d2:	16027303          	0x16027303
    23d6:	08b8                	addi	a4,sp,88
    23d8:	0000                	unimp
    23da:	1748                	addi	a0,sp,932
    23dc:	089e                	slli	a7,a7,0x7
    23de:	0000                	unimp
    23e0:	07027503          	0x7027503
    23e4:	0000002b          	0x2b
    23e8:	1750                	addi	a2,sp,932
    23ea:	09bd                	addi	s3,s3,15
    23ec:	0000                	unimp
    23ee:	0a027703          	0xa027703
    23f2:	08c9                	addi	a7,a7,18
    23f4:	0000                	unimp
    23f6:	1758                	addi	a4,sp,932
    23f8:	07ce                	slli	a5,a5,0x13
    23fa:	0000                	unimp
    23fc:	13027a03          	0x13027a03
    2400:	0176                	slli	sp,sp,0x1d
    2402:	0000                	unimp
    2404:	1760                	addi	s0,sp,940
    2406:	06a9                	addi	a3,a3,10
    2408:	0000                	unimp
    240a:	07027b03          	0x7027b03
    240e:	0000002b          	0x2b
    2412:	1768                	addi	a0,sp,940
    2414:	0b29                	addi	s6,s6,10
    2416:	0000                	unimp
    2418:	13027c03          	0x13027c03
    241c:	0176                	slli	sp,sp,0x1d
    241e:	0000                	unimp
    2420:	1770                	addi	a2,sp,940
    2422:	08b0                	addi	a2,sp,88
    2424:	0000                	unimp
    2426:	14027d03          	0x14027d03
    242a:	000008cf          	fnmadd.s	fa7,ft0,ft0,ft0,rne
    242e:	1778                	addi	a4,sp,940
    2430:	077a                	slli	a4,a4,0x1e
    2432:	0000                	unimp
    2434:	07028003          	lb	zero,112(t0) # fffffffffa161b5c <__BSS_END__+0xfffffffffa14f32c>
    2438:	0000002b          	0x2b
    243c:	1780                	addi	s0,sp,992
    243e:	000006e7          	jalr	a3,zero # 0 <register_fini-0x100b0>
    2442:	09028103          	lb	sp,144(t0)
    2446:	05a9                	addi	a1,a1,10
    2448:	0000                	unimp
    244a:	1788                	addi	a0,sp,992
    244c:	00000937          	lui	s2,0x0
    2450:	0702a403          	lw	s0,112(t0)
    2454:	087d                	addi	a6,a6,31
    2456:	0000                	unimp
    2458:	1890                	addi	a2,sp,112
    245a:	088c                	addi	a1,sp,80
    245c:	0000                	unimp
    245e:	1302a803          	lw	a6,304(t0)
    2462:	02a9                	addi	t0,t0,10
    2464:	0000                	unimp
    2466:	01f8                	addi	a4,sp,204
    2468:	ac18                	fsd	fa4,24(s0)
    246a:	03000007          	0x3000007
    246e:	02a9                	addi	t0,t0,10
    2470:	6512                	ld	a0,256(sp)
    2472:	0002                	c.slli64	zero
    2474:	0000                	unimp
    2476:	1802                	slli	a6,a6,0x20
    2478:	0ac0                	addi	s0,sp,340
    247a:	0000                	unimp
    247c:	0c02ad03          	lw	s10,192(t0)
    2480:	08e0                	addi	s0,sp,92
    2482:	0000                	unimp
    2484:	0518                	addi	a4,sp,640
    2486:	8618                	0x8618
    2488:	0006                	c.slli	zero,0x1
    248a:	0300                	addi	s0,sp,384
    248c:	02b2                	slli	t0,t0,0xc
    248e:	5b10                	lw	a2,48(a4)
    2490:	0006                	c.slli	zero,0x1
    2492:	2000                	fld	fs0,0(s0)
    2494:	1805                	addi	a6,a6,-31
    2496:	0000066b          	0x66b
    249a:	0a02b403          	ld	s0,160(t0)
    249e:	08ec                	addi	a1,sp,92
    24a0:	0000                	unimp
    24a2:	0538                	addi	a4,sp,648
    24a4:	0f00                	addi	s0,sp,912
    24a6:	af08                	fsd	fa0,24(a4)
    24a8:	0005                	c.nop	1
    24aa:	0200                	addi	s0,sp,256
    24ac:	0801                	addi	a6,a6,0
    24ae:	01f4                	addi	a3,sp,204
    24b0:	0000                	unimp
    24b2:	af15                	j	2be6 <register_fini-0xd4ca>
    24b4:	0005                	c.nop	1
    24b6:	0f00                	addi	s0,sp,912
    24b8:	3708                	fld	fa0,40(a4)
    24ba:	0004                	0x4
    24bc:	1300                	addi	s0,sp,416
    24be:	0088                	addi	a0,sp,64
    24c0:	0000                	unimp
    24c2:	05df 0000 5514      	0x5514000005df
    24c8:	0004                	0x4
    24ca:	1400                	addi	s0,sp,544
    24cc:	00f6                	slli	ra,ra,0x1d
    24ce:	0000                	unimp
    24d0:	df14                	sw	a3,56(a4)
    24d2:	0005                	c.nop	1
    24d4:	1400                	addi	s0,sp,544
    24d6:	0000002b          	0x2b
    24da:	0f00                	addi	s0,sp,912
    24dc:	b608                	fsd	fa0,40(a2)
    24de:	0005                	c.nop	1
    24e0:	1500                	addi	s0,sp,672
    24e2:	05df 0000 080f      	0x80f000005df
    24e8:	05c1                	addi	a1,a1,16
    24ea:	0000                	unimp
    24ec:	00007c13          	andi	s8,zero,0
    24f0:	0e00                	addi	s0,sp,784
    24f2:	0006                	c.slli	zero,0x1
    24f4:	1400                	addi	s0,sp,544
    24f6:	0455                	addi	s0,s0,21
    24f8:	0000                	unimp
    24fa:	f614                	sd	a3,40(a2)
    24fc:	0000                	unimp
    24fe:	1400                	addi	s0,sp,544
    2500:	007c                	addi	a5,sp,12
    2502:	0000                	unimp
    2504:	2b14                	fld	fa3,16(a4)
    2506:	0000                	unimp
    2508:	0000                	unimp
    250a:	05f0080f          	0x5f0080f
    250e:	0000                	unimp
    2510:	00002b13          	slti	s6,zero,0
    2514:	2800                	fld	fs0,16(s0)
    2516:	0006                	c.slli	zero,0x1
    2518:	1400                	addi	s0,sp,544
    251a:	0455                	addi	s0,s0,21
    251c:	0000                	unimp
    251e:	f614                	sd	a3,40(a2)
    2520:	0000                	unimp
    2522:	0000                	unimp
    2524:	0614080f          	0x614080f
    2528:	0000                	unimp
    252a:	4708                	lw	a0,8(a4)
    252c:	0000                	unimp
    252e:	3e00                	fld	fs0,56(a2)
    2530:	0006                	c.slli	zero,0x1
    2532:	0900                	addi	s0,sp,144
    2534:	0024                	addi	s1,sp,8
    2536:	0000                	unimp
    2538:	0002                	c.slli64	zero
    253a:	4708                	lw	a0,8(a4)
    253c:	0000                	unimp
    253e:	4e00                	lw	s0,24(a2)
    2540:	0006                	c.slli	zero,0x1
    2542:	0900                	addi	s0,sp,144
    2544:	0024                	addi	s1,sp,8
    2546:	0000                	unimp
    2548:	0000                	unimp
    254a:	a204                	fsd	fs1,0(a2)
    254c:	0006                	c.slli	zero,0x1
    254e:	0300                	addi	s0,sp,384
    2550:	0124                	addi	s1,sp,136
    2552:	f41a                	sd	t1,40(sp)
    2554:	0002                	c.slli64	zero
    2556:	1900                	addi	s0,sp,176
    2558:	0aa0                	addi	s0,sp,344
    255a:	0000                	unimp
    255c:	0318                	addi	a4,sp,384
    255e:	0128                	addi	a0,sp,136
    2560:	9408                	0x9408
    2562:	0006                	c.slli	zero,0x1
    2564:	1700                	addi	s0,sp,928
    2566:	0998                	addi	a4,sp,208
    2568:	0000                	unimp
    256a:	11012a03          	lw	s4,272(sp) # 7db32 <__BSS_END__+0x6b302>
    256e:	0694                	addi	a3,sp,832
    2570:	0000                	unimp
    2572:	1700                	addi	s0,sp,928
    2574:	0792                	slli	a5,a5,0x4
    2576:	0000                	unimp
    2578:	07012b03          	lw	s6,112(sp)
    257c:	0000002b          	0x2b
    2580:	1708                	addi	a0,sp,928
    2582:	00000967          	jalr	s2,zero # 0 <register_fini-0x100b0>
    2586:	0b012c03          	lw	s8,176(sp)
    258a:	069a                	slli	a3,a3,0x6
    258c:	0000                	unimp
    258e:	0010                	0x10
    2590:	065b080f          	0x65b080f
    2594:	0000                	unimp
    2596:	064e080f          	0x64e080f
    259a:	0000                	unimp
    259c:	5919                	li	s2,-26
    259e:	0005                	c.nop	1
    25a0:	0e00                	addi	s0,sp,784
    25a2:	08014403          	lbu	s0,128(sp)
    25a6:	06d9                	addi	a3,a3,22
    25a8:	0000                	unimp
    25aa:	0009ef17          	auipc	t5,0x9e
    25ae:	0300                	addi	s0,sp,384
    25b0:	0145                	addi	sp,sp,17
    25b2:	d912                	sw	tp,176(sp)
    25b4:	0006                	c.slli	zero,0x1
    25b6:	0000                	unimp
    25b8:	00081217          	auipc	tp,0x81
    25bc:	0300                	addi	s0,sp,384
    25be:	0146                	slli	sp,sp,0x11
    25c0:	d912                	sw	tp,176(sp)
    25c2:	0006                	c.slli	zero,0x1
    25c4:	0600                	addi	s0,sp,768
    25c6:	000a5117          	auipc	sp,0xa5
    25ca:	0300                	addi	s0,sp,384
    25cc:	55120147          	0x55120147
    25d0:	0000                	unimp
    25d2:	0c00                	addi	s0,sp,528
    25d4:	0800                	addi	s0,sp,16
    25d6:	0055                	c.nop	21
    25d8:	0000                	unimp
    25da:	06e9                	addi	a3,a3,26
    25dc:	0000                	unimp
    25de:	2409                	addiw	s0,s0,2
    25e0:	0000                	unimp
    25e2:	0200                	addi	s0,sp,256
    25e4:	1a00                	addi	s0,sp,304
    25e6:	03d8                	addi	a4,sp,452
    25e8:	0285                	addi	t0,t0,1
    25ea:	0007fe07          	0x7fe07
    25ee:	1700                	addi	s0,sp,928
    25f0:	0841                	addi	a6,a6,16
    25f2:	0000                	unimp
    25f4:	18028703          	lb	a4,384(t0)
    25f8:	005c                	addi	a5,sp,4
    25fa:	0000                	unimp
    25fc:	1700                	addi	s0,sp,928
    25fe:	0a34                	addi	a3,sp,280
    2600:	0000                	unimp
    2602:	12028803          	lb	a6,288(t0)
    2606:	05a9                	addi	a1,a1,10
    2608:	0000                	unimp
    260a:	1708                	addi	a0,sp,928
    260c:	07c1                	addi	a5,a5,16
    260e:	0000                	unimp
    2610:	10028903          	lb	s2,256(t0)
    2614:	07fe                	slli	a5,a5,0x1f
    2616:	0000                	unimp
    2618:	1710                	addi	a2,sp,928
    261a:	00000ae3          	beqz	zero,2e2e <register_fini-0xd282>
    261e:	17028a03          	lb	s4,368(t0)
    2622:	018c                	addi	a1,sp,192
    2624:	0000                	unimp
    2626:	172c                	addi	a1,sp,936
    2628:	073e                	slli	a4,a4,0xf
    262a:	0000                	unimp
    262c:	0f028b03          	lb	s6,240(t0)
    2630:	0000002b          	0x2b
    2634:	1750                	addi	a2,sp,932
    2636:	00000993          	li	s3,0
    263a:	2c028c03          	lb	s8,704(t0)
    263e:	080e                	slli	a6,a6,0x3
    2640:	0000                	unimp
    2642:	1758                	addi	a4,sp,932
    2644:	00000afb          	0xafb
    2648:	1a028d03          	lb	s10,416(t0)
    264c:	06a0                	addi	s0,sp,840
    264e:	0000                	unimp
    2650:	1760                	addi	s0,sp,940
    2652:	099e                	slli	s3,s3,0x7
    2654:	0000                	unimp
    2656:	16028e03          	lb	t3,352(t0)
    265a:	00ea                	slli	ra,ra,0x1a
    265c:	0000                	unimp
    265e:	1770                	addi	a2,sp,940
    2660:	00000b1b          	sext.w	s6,zero
    2664:	16028f03          	lb	t5,352(t0)
    2668:	00ea                	slli	ra,ra,0x1a
    266a:	0000                	unimp
    266c:	1778                	addi	a4,sp,940
    266e:	00000627          	0x627
    2672:	16029003          	lh	zero,352(t0)
    2676:	00ea                	slli	ra,ra,0x1a
    2678:	0000                	unimp
    267a:	1780                	addi	s0,sp,992
    267c:	0ab6                	slli	s5,s5,0xd
    267e:	0000                	unimp
    2680:	10029103          	lh	sp,256(t0)
    2684:	0815                	addi	a6,a6,5
    2686:	0000                	unimp
    2688:	1788                	addi	a0,sp,992
    268a:	07b5                	addi	a5,a5,13
    268c:	0000                	unimp
    268e:	10029203          	lh	tp,256(t0)
    2692:	0825                	addi	a6,a6,9
    2694:	0000                	unimp
    2696:	1790                	addi	a2,sp,992
    2698:	0585                	addi	a1,a1,1
    269a:	0000                	unimp
    269c:	0f029303          	lh	t1,240(t0)
    26a0:	0000002b          	0x2b
    26a4:	17a8                	addi	a0,sp,1000
    26a6:	0700                	addi	s0,sp,896
    26a8:	0000                	unimp
    26aa:	16029403          	lh	s0,352(t0)
    26ae:	00ea                	slli	ra,ra,0x1a
    26b0:	0000                	unimp
    26b2:	17ac                	addi	a1,sp,1000
    26b4:	0610                	addi	a2,sp,768
    26b6:	0000                	unimp
    26b8:	16029503          	lh	a0,352(t0)
    26bc:	00ea                	slli	ra,ra,0x1a
    26be:	0000                	unimp
    26c0:	17b4                	addi	a3,sp,1000
    26c2:	000006ef          	jal	a3,26c2 <register_fini-0xd9ee>
    26c6:	16029603          	lh	a2,352(t0)
    26ca:	00ea                	slli	ra,ra,0x1a
    26cc:	0000                	unimp
    26ce:	17bc                	addi	a5,sp,1000
    26d0:	0598                	addi	a4,sp,704
    26d2:	0000                	unimp
    26d4:	16029703          	lh	a4,352(t0)
    26d8:	00ea                	slli	ra,ra,0x1a
    26da:	0000                	unimp
    26dc:	17c4                	addi	s1,sp,996
    26de:	05c4                	addi	s1,sp,708
    26e0:	0000                	unimp
    26e2:	16029803          	lh	a6,352(t0)
    26e6:	00ea                	slli	ra,ra,0x1a
    26e8:	0000                	unimp
    26ea:	17cc                	addi	a1,sp,996
    26ec:	093c                	addi	a5,sp,152
    26ee:	0000                	unimp
    26f0:	08029903          	lh	s2,128(t0)
    26f4:	0000002b          	0x2b
    26f8:	00d4                	addi	a3,sp,68
    26fa:	af08                	fsd	fa0,24(a4)
    26fc:	0005                	c.nop	1
    26fe:	0e00                	addi	s0,sp,784
    2700:	0008                	0x8
    2702:	0900                	addi	s0,sp,144
    2704:	0024                	addi	s1,sp,8
    2706:	0000                	unimp
    2708:	0019                	c.nop	6
    270a:	0802                	c.slli64	a6
    270c:	00021507          	0x21507
    2710:	0800                	addi	s0,sp,16
    2712:	000005af          	0x5af
    2716:	0825                	addi	a6,a6,9
    2718:	0000                	unimp
    271a:	2409                	addiw	s0,s0,2
    271c:	0000                	unimp
    271e:	0700                	addi	s0,sp,896
    2720:	0800                	addi	s0,sp,16
    2722:	000005af          	0x5af
    2726:	0835                	addi	a6,a6,13
    2728:	0000                	unimp
    272a:	2409                	addiw	s0,s0,2
    272c:	0000                	unimp
    272e:	1700                	addi	s0,sp,928
    2730:	1b00                	addi	s0,sp,432
    2732:	0168                	addi	a0,sp,140
    2734:	07029e03          	lh	t3,112(t0)
    2738:	085d                	addi	a6,a6,23
    273a:	0000                	unimp
    273c:	00086e17          	auipc	t3,0x86
    2740:	0300                	addi	s0,sp,384
    2742:	02a1                	addi	t0,t0,8
    2744:	00085d1b          	srliw	s10,a6,0x0
    2748:	0000                	unimp
    274a:	00074d17          	auipc	s10,0x74
    274e:	0300                	addi	s0,sp,384
    2750:	02a2                	slli	t0,t0,0x8
    2752:	6d18                	ld	a4,24(a0)
    2754:	0008                	0x8
    2756:	f000                	sd	s0,32(s0)
    2758:	0800                	addi	s0,sp,16
    275a:	02ee                	slli	t0,t0,0x1b
    275c:	0000                	unimp
    275e:	086d                	addi	a6,a6,27
    2760:	0000                	unimp
    2762:	2409                	addiw	s0,s0,2
    2764:	0000                	unimp
    2766:	1d00                	addi	s0,sp,688
    2768:	0800                	addi	s0,sp,16
    276a:	005c                	addi	a5,sp,4
    276c:	0000                	unimp
    276e:	087d                	addi	a6,a6,31
    2770:	0000                	unimp
    2772:	2409                	addiw	s0,s0,2
    2774:	0000                	unimp
    2776:	1d00                	addi	s0,sp,688
    2778:	1c00                	addi	s0,sp,560
    277a:	0168                	addi	a0,sp,140
    277c:	03028303          	lb	t1,48(t0)
    2780:	000008a3          	sb	zero,17(zero) # 11 <register_fini-0x1009f>
    2784:	e81d                	bnez	s0,27ba <register_fini-0xd8f6>
    2786:	0009                	c.nop	2
    2788:	0300                	addi	s0,sp,384
    278a:	029a                	slli	t0,t0,0x6
    278c:	0006e90b          	0x6e90b
    2790:	1d00                	addi	s0,sp,688
    2792:	0ad0                	addi	a2,sp,340
    2794:	0000                	unimp
    2796:	0b02a303          	lw	t1,176(t0)
    279a:	0835                	addi	a6,a6,13
    279c:	0000                	unimp
    279e:	0800                	addi	s0,sp,16
    27a0:	000005af          	0x5af
    27a4:	000008b3          	add	a7,zero,zero
    27a8:	2409                	addiw	s0,s0,2
    27aa:	0000                	unimp
    27ac:	1800                	addi	s0,sp,48
    27ae:	1e00                	addi	s0,sp,816
    27b0:	0605                	addi	a2,a2,1
    27b2:	0000                	unimp
    27b4:	08b3080f          	0x8b3080f
    27b8:	0000                	unimp
    27ba:	c91f 0008 1400      	0x14000008c91f
    27c0:	0455                	addi	s0,s0,21
    27c2:	0000                	unimp
    27c4:	0f00                	addi	s0,sp,912
    27c6:	be08                	fsd	fa0,56(a2)
    27c8:	0008                	0x8
    27ca:	0f00                	addi	s0,sp,912
    27cc:	7608                	ld	a0,40(a2)
    27ce:	0001                	nop
    27d0:	1f00                	addi	s0,sp,944
    27d2:	08e0                	addi	s0,sp,92
    27d4:	0000                	unimp
    27d6:	2b14                	fld	fa3,16(a4)
    27d8:	0000                	unimp
    27da:	0000                	unimp
    27dc:	08e6080f          	0x8e6080f
    27e0:	0000                	unimp
    27e2:	08d5080f          	0x8d5080f
    27e6:	0000                	unimp
    27e8:	4e08                	lw	a0,24(a2)
    27ea:	0006                	c.slli	zero,0x1
    27ec:	fc00                	sd	s0,56(s0)
    27ee:	0008                	0x8
    27f0:	0900                	addi	s0,sp,144
    27f2:	0024                	addi	s1,sp,8
    27f4:	0000                	unimp
    27f6:	0002                	c.slli64	zero
    27f8:	7a20                	ld	s0,112(a2)
    27fa:	000a                	c.slli	zero,0x2
    27fc:	0300                	addi	s0,sp,384
    27fe:	55170333          	0x55170333
    2802:	0004                	0x4
    2804:	2000                	fld	fs0,0(s0)
    2806:	00000a73          	0xa73
    280a:	1d033403          	ld	s0,464(t1)
    280e:	0000045b          	0x45b
    2812:	e508                	sd	a0,8(a0)
    2814:	0005                	c.nop	1
    2816:	2100                	fld	fs0,0(a0)
    2818:	0009                	c.nop	2
    281a:	2100                	fld	fs0,0(a0)
    281c:	1500                	addi	s0,sp,672
    281e:	0916                	slli	s2,s2,0x5
    2820:	0000                	unimp
    2822:	da22                	sw	s0,52(sp)
    2824:	0006                	c.slli	zero,0x1
    2826:	0500                	addi	s0,sp,640
    2828:	2414                	fld	fa3,8(s0)
    282a:	0921                	addi	s2,s2,8
    282c:	0000                	unimp
    282e:	8922                	mv	s2,s0
    2830:	0009                	c.nop	2
    2832:	0500                	addi	s0,sp,640
    2834:	1515                	addi	a0,a0,-27
    2836:	0000002b          	0x2b
    283a:	0944080f          	0x944080f
    283e:	0000                	unimp
    2840:	00002b13          	slti	s6,zero,0
    2844:	5800                	lw	s0,48(s0)
    2846:	0009                	c.nop	2
    2848:	1400                	addi	s0,sp,544
    284a:	0958                	addi	a4,sp,148
    284c:	0000                	unimp
    284e:	5814                	lw	a3,48(s0)
    2850:	0009                	c.nop	2
    2852:	0000                	unimp
    2854:	095e080f          	0x95e080f
    2858:	0000                	unimp
    285a:	08942223          	sw	s1,132(s0)
    285e:	0000                	unimp
    2860:	6706                	ld	a4,64(sp)
    2862:	a90e                	fsd	ft3,144(sp)
    2864:	0005                	c.nop	1
    2866:	2200                	fld	fs0,0(a2)
    2868:	000007e7          	jalr	a5,zero # 0 <register_fini-0x100b0>
    286c:	770f1007          	0x770f1007
    2870:	0009                	c.nop	2
    2872:	0f00                	addi	s0,sp,912
    2874:	a908                	fsd	fa0,16(a0)
    2876:	0005                	c.nop	1
    2878:	2200                	fld	fs0,0(a2)
    287a:	00000897          	auipc	a7,0x0
    287e:	a90efc07          	0xa90efc07
    2882:	0005                	c.nop	1
    2884:	2200                	fld	fs0,0(a2)
    2886:	00000867          	jalr	a6,zero # 0 <register_fini-0x100b0>
    288a:	2b0cfd07          	0x2b0cfd07
    288e:	0000                	unimp
    2890:	2200                	fld	fs0,0(a2)
    2892:	0a2d                	addi	s4,s4,11
    2894:	0000                	unimp
    2896:	2b14fd07          	0x2b14fd07
    289a:	0000                	unimp
    289c:	2200                	fld	fs0,0(a2)
    289e:	0b0a                	slli	s6,s6,0x2
    28a0:	0000                	unimp
    28a2:	2b1cfd07          	0x2b1cfd07
    28a6:	0000                	unimp
    28a8:	2200                	fld	fs0,0(a2)
    28aa:	00000827          	0x827
    28ae:	2b0cff07          	0x2b0cff07
    28b2:	0000                	unimp
    28b4:	2200                	fld	fs0,0(a2)
    28b6:	08ba                	slli	a7,a7,0xe
    28b8:	0000                	unimp
    28ba:	9a08                	0x9a08
    28bc:	1d16                	slli	s10,s10,0x25
    28be:	0000                	unimp
    28c0:	2200                	fld	fs0,0(a2)
    28c2:	056c                	addi	a1,sp,652
    28c4:	0000                	unimp
    28c6:	9b08                	0x9b08
    28c8:	2b15                	addiw	s6,s6,5
    28ca:	0000                	unimp
    28cc:	0800                	addi	s0,sp,16
    28ce:	05a9                	addi	a1,a1,10
    28d0:	0000                	unimp
    28d2:	09e1                	addi	s3,s3,24
    28d4:	0000                	unimp
    28d6:	2409                	addiw	s0,s0,2
    28d8:	0000                	unimp
    28da:	0100                	addi	s0,sp,128
    28dc:	2200                	fld	fs0,0(a2)
    28de:	061f 0000 9e08      	0x9e080000061f
    28e4:	0009d117          	auipc	sp,0x9d
    28e8:	0500                	addi	s0,sp,640
    28ea:	0788                	addi	a0,sp,960
    28ec:	0000                	unimp
    28ee:	2a09                	addiw	s4,s4,2
    28f0:	5c16                	lw	s8,100(sp)
    28f2:	0000                	unimp
    28f4:	0500                	addi	s0,sp,640
    28f6:	00000977          	0x977
    28fa:	2f09                	addiw	t5,t5,2
    28fc:	0515                	addi	a0,a0,5
    28fe:	000a                	c.slli	zero,0x2
    2900:	0f00                	addi	s0,sp,912
    2902:	0b08                	addi	a0,sp,400
    2904:	000a                	c.slli	zero,0x2
    2906:	1300                	addi	s0,sp,416
    2908:	09ed                	addi	s3,s3,27
    290a:	0000                	unimp
    290c:	0a1a                	slli	s4,s4,0x6
    290e:	0000                	unimp
    2910:	5814                	lw	a3,48(s0)
    2912:	0009                	c.nop	2
    2914:	0000                	unimp
    2916:	3805                	addiw	a6,a6,-31
    2918:	0900000b          	0x900000b
    291c:	0f36                	slli	t5,t5,0xd
    291e:	093e                	slli	s2,s2,0xf
    2920:	0000                	unimp
    2922:	4122                	lw	sp,8(sp)
    2924:	0005                	c.nop	1
    2926:	0900                	addi	s0,sp,144
    2928:	09f912bb          	0x9f912bb
    292c:	0000                	unimp
    292e:	5e22                	lw	t3,40(sp)
    2930:	000a                	c.slli	zero,0x2
    2932:	0900                	addi	s0,sp,144
    2934:	10be                	slli	ra,ra,0x2f
    2936:	0a1a                	slli	s4,s4,0x6
    2938:	0000                	unimp
    293a:	5b24                	lw	s1,112(a4)
    293c:	07000007          	0x7000007
    2940:	5c04                	lw	s1,56(s0)
    2942:	0000                	unimp
    2944:	0a00                	addi	s0,sp,272
    2946:	0618                	addi	a4,sp,768
    2948:	00000a7b          	0xa7b
    294c:	1725                	addi	a4,a4,-23
    294e:	0009                	c.nop	2
    2950:	0000                	unimp
    2952:	0725                	addi	a4,a4,9
    2954:	0008                	0x8
    2956:	0100                	addi	s0,sp,128
    2958:	dc25                	beqz	s0,28d0 <register_fini-0xd7e0>
    295a:	02000007          	0x2000007
    295e:	fc25                	bnez	s0,28d6 <register_fini-0xd7da>
    2960:	03000007          	0x3000007
    2964:	0e25                	addi	t3,t3,9
    2966:	0009                	c.nop	2
    2968:	0400                	addi	s0,sp,512
    296a:	1125                	addi	sp,sp,-23
    296c:	0500000b          	0x500000b
    2970:	0025                	c.nop	9
    2972:	0600000b          	0x600000b
    2976:	2200                	fld	fs0,0(a2)
    2978:	000005fb          	0x5fb
    297c:	210a                	fld	ft2,128(sp)
    297e:	3e1c                	fld	fa5,56(a2)
    2980:	000a                	c.slli	zero,0x2
    2982:	2400                	fld	fs0,8(s0)
    2984:	084e                	slli	a6,a6,0x13
    2986:	0000                	unimp
    2988:	005c0407          	0x5c0407
    298c:	0000                	unimp
    298e:	230a                	fld	ft6,128(sp)
    2990:	ac06                	fsd	ft1,24(sp)
    2992:	000a                	c.slli	zero,0x2
    2994:	2500                	fld	fs0,8(a0)
    2996:	096d                	addi	s2,s2,27
    2998:	0000                	unimp
    299a:	2500                	fld	fs0,8(a0)
    299c:	092d                	addi	s2,s2,11
    299e:	0000                	unimp
    29a0:	2501                	sext.w	a0,a0
    29a2:	0a41                	addi	s4,s4,16
    29a4:	0000                	unimp
    29a6:	0002                	c.slli64	zero
    29a8:	0e22                	slli	t3,t3,0x8
    29aa:	0a000007          	0xa000007
    29ae:	1e28                	addi	a0,sp,824
    29b0:	00000a87          	0xa87
    29b4:	a724                	fsd	fs1,72(a4)
    29b6:	0005                	c.nop	1
    29b8:	0700                	addi	s0,sp,896
    29ba:	5c04                	lw	s1,56(s0)
    29bc:	0000                	unimp
    29be:	0a00                	addi	s0,sp,272
    29c0:	0ad7062b          	0xad7062b
    29c4:	0000                	unimp
    29c6:	2525                	addiw	a0,a0,9
    29c8:	000a                	c.slli	zero,0x2
    29ca:	0000                	unimp
    29cc:	1325                	addi	t1,t1,-23
    29ce:	000a                	c.slli	zero,0x2
    29d0:	0100                	addi	s0,sp,128
    29d2:	2200                	fld	fs0,0(a2)
    29d4:	06c2                	slli	a3,a3,0x10
    29d6:	0000                	unimp
    29d8:	2f0a                	fld	ft10,128(sp)
    29da:	b82a                	fsd	fa0,48(sp)
    29dc:	000a                	c.slli	zero,0x2
    29de:	2200                	fld	fs0,0(a2)
    29e0:	0818                	addi	a4,sp,16
    29e2:	0000                	unimp
    29e4:	211a290b          	0x211a290b
    29e8:	0009                	c.nop	2
    29ea:	2200                	fld	fs0,0(a2)
    29ec:	0000065b          	0x65b
    29f0:	211a380b          	0x211a380b
    29f4:	0009                	c.nop	2
    29f6:	0500                	addi	s0,sp,640
    29f8:	01fe                	slli	gp,gp,0x1f
    29fa:	0000                	unimp
    29fc:	7b0c                	ld	a1,48(a4)
    29fe:	4716                	lw	a4,68(sp)
    2a00:	0000                	unimp
    2a02:	1500                	addi	s0,sp,672
    2a04:	00000afb          	0xafb
    2a08:	1002                	c.slli	zero,0x20
    2a0a:	d305                	beqz	a4,292a <register_fini-0xd786>
    2a0c:	0001                	nop
    2a0e:	0200                	addi	s0,sp,256
    2a10:	0710                	addi	a2,sp,896
    2a12:	0000                	unimp
    2a14:	0000                	unimp
    2a16:	0402                	c.slli64	s0
    2a18:	7d04                	ld	s1,56(a0)
    2a1a:	0008                	0x8
    2a1c:	0200                	addi	s0,sp,256
    2a1e:	0308                	addi	a0,sp,384
    2a20:	0875                	addi	a6,a6,29
    2a22:	0000                	unimp
    2a24:	0802                	c.slli64	a6
    2a26:	f404                	sd	s1,40(s0)
    2a28:	0005                	c.nop	1
    2a2a:	0200                	addi	s0,sp,256
    2a2c:	0310                	addi	a2,sp,384
    2a2e:	0576                	slli	a0,a0,0x1d
    2a30:	0000                	unimp
    2a32:	2002                	fld	ft0,0(sp)
    2a34:	0005e703          	lwu	a4,0(a1)
    2a38:	0800                	addi	s0,sp,16
    2a3a:	00000b07          	0xb07
    2a3e:	0b4d                	addi	s6,s6,19
    2a40:	0000                	unimp
    2a42:	2409                	addiw	s0,s0,2
    2a44:	0000                	unimp
    2a46:	ff00                	sd	s0,56(a4)
    2a48:	1500                	addi	s0,sp,672
    2a4a:	0b3d                	addi	s6,s6,15
    2a4c:	0000                	unimp
    2a4e:	b320                	fsd	fs0,96(a4)
    2a50:	0006                	c.slli	zero,0x1
    2a52:	0c00                	addi	s0,sp,528
    2a54:	01fc                	addi	a5,sp,204
    2a56:	4d16                	lw	s10,68(sp)
    2a58:	2000000b          	0x2000000b
    2a5c:	0206                	slli	tp,tp,0x1
    2a5e:	0000                	unimp
    2a60:	020c                	addi	a1,sp,256
    2a62:	1602                	slli	a2,a2,0x20
    2a64:	0b4d                	addi	s6,s6,19
    2a66:	0000                	unimp
    2a68:	5f26                	lw	t5,104(sp)
    2a6a:	0d00000b          	0xd00000b
    2a6e:	02b2                	slli	t0,t0,0xc
    2a70:	3003090f          	0x3003090f
    2a74:	00000117          	auipc	sp,0x0
    2a78:	0000                	unimp
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
  2c:	0b3a0e03          	lb	t3,179(s4)
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
  74:	0b0b0113          	addi	sp,s6,176 # 2b10b0 <__BSS_END__+0x29e880>
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
 2f0:	0000010b          	0x10b
 2f4:	0b1a                	slli	s6,s6,0x6
 2f6:	1101                	addi	sp,sp,-32
 2f8:	1201                	addi	tp,tp,-32
 2fa:	00000007          	0x7
 2fe:	1101                	addi	sp,sp,-32
 300:	2501                	sext.w	a0,a0
 302:	130e                	slli	t1,t1,0x23
 304:	1b0e030b          	0x1b0e030b
 308:	110e                	slli	sp,sp,0x23
 30a:	1201                	addi	tp,tp,-32
 30c:	00171007          	0x171007
 310:	0200                	addi	s0,sp,256
 312:	0024                	addi	s1,sp,8
 314:	0b3e0b0b          	0xb3e0b0b
 318:	00000e03          	lb	t3,0(zero) # 0 <register_fini-0x100b0>
 31c:	0b002403          	lw	s0,176(zero) # b0 <register_fini-0x10000>
 320:	030b3e0b          	0x30b3e0b
 324:	0008                	0x8
 326:	0400                	addi	s0,sp,512
 328:	0016                	c.slli	zero,0x5
 32a:	0b3a0e03          	lb	t3,179(s4)
 32e:	0b39053b          	0xb39053b
 332:	1349                	addi	t1,t1,-14
 334:	0000                	unimp
 336:	2605                	addiw	a2,a2,1
 338:	4900                	lw	s0,16(a0)
 33a:	06000013          	li	zero,96
 33e:	0101                	addi	sp,sp,0
 340:	1349                	addi	t1,t1,-14
 342:	1301                	addi	t1,t1,-32
 344:	0000                	unimp
 346:	49002107          	flw	ft2,1168(zero) # 490 <register_fini-0xfc20>
 34a:	000b2f13          	slti	t5,s6,0
 34e:	0800                	addi	s0,sp,16
 350:	0034                	addi	a3,sp,8
 352:	0b3a0e03          	lb	t3,179(s4)
 356:	0b390b3b          	0xb390b3b
 35a:	1349                	addi	t1,t1,-14
 35c:	193c193f 16090000 	0x16090000193c193f
 364:	0300                	addi	s0,sp,384
 366:	3a0e                	fld	fs4,224(sp)
 368:	390b3b0b          	0x390b3b0b
 36c:	0013490b          	0x13490b
 370:	0a00                	addi	s0,sp,272
 372:	0b0b0113          	addi	sp,s6,176
 376:	0b3a                	slli	s6,s6,0xe
 378:	0b390b3b          	0xb390b3b
 37c:	1301                	addi	t1,t1,-32
 37e:	0000                	unimp
 380:	03000d0b          	0x3000d0b
 384:	3a0e                	fld	fs4,224(sp)
 386:	390b3b0b          	0x390b3b0b
 38a:	0b13490b          	0xb13490b
 38e:	0c0b0d0b          	0xc0b0d0b
 392:	000b380b          	0xb380b
 396:	0c00                	addi	s0,sp,528
 398:	000d                	c.nop	3
 39a:	0b3a0803          	lb	a6,179(s4)
 39e:	0b390b3b          	0xb390b3b
 3a2:	1349                	addi	t1,t1,-14
 3a4:	0b0d0b0b          	0xb0d0b0b
 3a8:	0b0c                	addi	a1,sp,400
 3aa:	0b38                	addi	a4,sp,408
 3ac:	0000                	unimp
 3ae:	170d                	addi	a4,a4,-29
 3b0:	0301                	addi	t1,t1,0
 3b2:	0b0e                	slli	s6,s6,0x3
 3b4:	3b0b3a0b          	0x3b0b3a0b
 3b8:	010b390b          	0x10b390b
 3bc:	0e000013          	li	zero,224
 3c0:	000d                	c.nop	3
 3c2:	0b3a0803          	lb	a6,179(s4)
 3c6:	0b390b3b          	0xb390b3b
 3ca:	1349                	addi	t1,t1,-14
 3cc:	0000                	unimp
 3ce:	03000d0f          	0x3000d0f
 3d2:	3a0e                	fld	fs4,224(sp)
 3d4:	390b3b0b          	0x390b3b0b
 3d8:	0013490b          	0x13490b
 3dc:	1000                	addi	s0,sp,32
 3de:	012e                	slli	sp,sp,0xb
 3e0:	0e03193f 0b3b0b3a 	0xb3b0b3a0e03193f
 3e8:	0b39                	addi	s6,s6,14
 3ea:	13491927          	0x13491927
 3ee:	0111                	addi	sp,sp,4
 3f0:	0712                	slli	a4,a4,0x4
 3f2:	1840                	addi	s0,sp,52
 3f4:	4296                	lw	t0,68(sp)
 3f6:	0119                	addi	sp,sp,6
 3f8:	11000013          	li	zero,272
 3fc:	0005                	c.nop	1
 3fe:	0b3a0803          	lb	a6,179(s4)
 402:	0b390b3b          	0xb390b3b
 406:	1349                	addi	t1,t1,-14
 408:	1702                	slli	a4,a4,0x20
 40a:	0000                	unimp
 40c:	3412                	fld	fs0,288(sp)
 40e:	0300                	addi	s0,sp,384
 410:	3a0e                	fld	fs4,224(sp)
 412:	390b3b0b          	0x390b3b0b
 416:	0213490b          	0x213490b
 41a:	13000017          	auipc	zero,0x13000
 41e:	0034                	addi	a3,sp,8
 420:	0b3a0e03          	lb	t3,179(s4)
 424:	0b390b3b          	0xb390b3b
 428:	1349                	addi	t1,t1,-14
 42a:	0b1c                	addi	a5,sp,400
 42c:	0000                	unimp
 42e:	3414                	fld	fa3,40(s0)
 430:	0300                	addi	s0,sp,384
 432:	3a08                	fld	fa0,48(a2)
 434:	390b3b0b          	0x390b3b0b
 438:	0013490b          	0x13490b
 43c:	1500                	addi	s0,sp,672
 43e:	0034                	addi	a3,sp,8
 440:	0b3a0803          	lb	a6,179(s4)
 444:	0b390b3b          	0xb390b3b
 448:	1349                	addi	t1,t1,-14
 44a:	1702                	slli	a4,a4,0x20
 44c:	0000                	unimp
 44e:	0b16                	slli	s6,s6,0x5
 450:	5501                	li	a0,-32
 452:	00130117          	auipc	sp,0x130
 456:	1700                	addi	s0,sp,928
 458:	0034                	addi	a3,sp,8
 45a:	0b3a0e03          	lb	t3,179(s4)
 45e:	0b390b3b          	0xb390b3b
 462:	1349                	addi	t1,t1,-14
 464:	0000                	unimp
 466:	0a18                	addi	a4,sp,272
 468:	0300                	addi	s0,sp,384
 46a:	3a0e                	fld	fs4,224(sp)
 46c:	390b3b0b          	0x390b3b0b
 470:	0001110b          	0x1110b
 474:	1900                	addi	s0,sp,176
 476:	1755010b          	0x1755010b
 47a:	0000                	unimp
 47c:	0b1a                	slli	s6,s6,0x6
 47e:	0001                	nop
 480:	0000                	unimp
 482:	1101                	addi	sp,sp,-32
 484:	2501                	sext.w	a0,a0
 486:	130e                	slli	t1,t1,0x23
 488:	1b0e030b          	0x1b0e030b
 48c:	110e                	slli	sp,sp,0x23
 48e:	1201                	addi	tp,tp,-32
 490:	00171007          	0x171007
 494:	0200                	addi	s0,sp,256
 496:	0024                	addi	s1,sp,8
 498:	0b3e0b0b          	0xb3e0b0b
 49c:	00000e03          	lb	t3,0(zero) # 0 <register_fini-0x100b0>
 4a0:	03001603          	lh	a2,48(zero) # 30 <register_fini-0x10080>
 4a4:	3a0e                	fld	fs4,224(sp)
 4a6:	39053b0b          	0x39053b0b
 4aa:	0013490b          	0x13490b
 4ae:	0400                	addi	s0,sp,512
 4b0:	0024                	addi	s1,sp,8
 4b2:	0b3e0b0b          	0xb3e0b0b
 4b6:	00000803          	lb	a6,0(zero) # 0 <register_fini-0x100b0>
 4ba:	2605                	addiw	a2,a2,1
 4bc:	4900                	lw	s0,16(a0)
 4be:	06000013          	li	zero,96
 4c2:	0101                	addi	sp,sp,0
 4c4:	1349                	addi	t1,t1,-14
 4c6:	1301                	addi	t1,t1,-32
 4c8:	0000                	unimp
 4ca:	49002107          	flw	ft2,1168(zero) # 490 <register_fini-0xfc20>
 4ce:	000b2f13          	slti	t5,s6,0
 4d2:	0800                	addi	s0,sp,16
 4d4:	0034                	addi	a3,sp,8
 4d6:	0b3a0e03          	lb	t3,179(s4)
 4da:	0b390b3b          	0xb390b3b
 4de:	1349                	addi	t1,t1,-14
 4e0:	193c193f 16090000 	0x16090000193c193f
 4e8:	0300                	addi	s0,sp,384
 4ea:	3a0e                	fld	fs4,224(sp)
 4ec:	390b3b0b          	0x390b3b0b
 4f0:	0013490b          	0x13490b
 4f4:	0a00                	addi	s0,sp,272
 4f6:	0b0b0113          	addi	sp,s6,176
 4fa:	0b3a                	slli	s6,s6,0xe
 4fc:	0b390b3b          	0xb390b3b
 500:	1301                	addi	t1,t1,-32
 502:	0000                	unimp
 504:	03000d0b          	0x3000d0b
 508:	3a0e                	fld	fs4,224(sp)
 50a:	390b3b0b          	0x390b3b0b
 50e:	0b13490b          	0xb13490b
 512:	0c0b0d0b          	0xc0b0d0b
 516:	000b380b          	0xb380b
 51a:	0c00                	addi	s0,sp,528
 51c:	000d                	c.nop	3
 51e:	0b3a0803          	lb	a6,179(s4)
 522:	0b390b3b          	0xb390b3b
 526:	1349                	addi	t1,t1,-14
 528:	0b0d0b0b          	0xb0d0b0b
 52c:	0b0c                	addi	a1,sp,400
 52e:	0b38                	addi	a4,sp,408
 530:	0000                	unimp
 532:	170d                	addi	a4,a4,-29
 534:	0301                	addi	t1,t1,0
 536:	0b0e                	slli	s6,s6,0x3
 538:	3b0b3a0b          	0x3b0b3a0b
 53c:	010b390b          	0x10b390b
 540:	0e000013          	li	zero,224
 544:	000d                	c.nop	3
 546:	0b3a0803          	lb	a6,179(s4)
 54a:	0b390b3b          	0xb390b3b
 54e:	1349                	addi	t1,t1,-14
 550:	0000                	unimp
 552:	03000d0f          	0x3000d0f
 556:	3a0e                	fld	fs4,224(sp)
 558:	390b3b0b          	0x390b3b0b
 55c:	0013490b          	0x13490b
 560:	1000                	addi	s0,sp,32
 562:	012e                	slli	sp,sp,0xb
 564:	0e03193f 0b3b0b3a 	0xb3b0b3a0e03193f
 56c:	0b39                	addi	s6,s6,14
 56e:	13491927          	0x13491927
 572:	0111                	addi	sp,sp,4
 574:	0712                	slli	a4,a4,0x4
 576:	1840                	addi	s0,sp,52
 578:	4296                	lw	t0,68(sp)
 57a:	0119                	addi	sp,sp,6
 57c:	11000013          	li	zero,272
 580:	0005                	c.nop	1
 582:	0b3a0803          	lb	a6,179(s4)
 586:	0b390b3b          	0xb390b3b
 58a:	1349                	addi	t1,t1,-14
 58c:	1702                	slli	a4,a4,0x20
 58e:	0000                	unimp
 590:	3412                	fld	fs0,288(sp)
 592:	0300                	addi	s0,sp,384
 594:	3a08                	fld	fa0,48(a2)
 596:	390b3b0b          	0x390b3b0b
 59a:	0013490b          	0x13490b
 59e:	1300                	addi	s0,sp,416
 5a0:	0034                	addi	a3,sp,8
 5a2:	0b3a0803          	lb	a6,179(s4)
 5a6:	0b390b3b          	0xb390b3b
 5aa:	1349                	addi	t1,t1,-14
 5ac:	1702                	slli	a4,a4,0x20
 5ae:	0000                	unimp
 5b0:	0b14                	addi	a3,sp,400
 5b2:	5501                	li	a0,-32
 5b4:	00130117          	auipc	sp,0x130
 5b8:	1500                	addi	s0,sp,672
 5ba:	000a                	c.slli	zero,0x2
 5bc:	0b3a0e03          	lb	t3,179(s4)
 5c0:	0b390b3b          	0xb390b3b
 5c4:	0000                	unimp
 5c6:	0b16                	slli	s6,s6,0x5
 5c8:	1101                	addi	sp,sp,-32
 5ca:	1201                	addi	tp,tp,-32
 5cc:	17000007          	0x17000007
 5d0:	0034                	addi	a3,sp,8
 5d2:	0b3a0e03          	lb	t3,179(s4)
 5d6:	0b390b3b          	0xb390b3b
 5da:	1349                	addi	t1,t1,-14
 5dc:	1702                	slli	a4,a4,0x20
 5de:	0000                	unimp
 5e0:	0b18                	addi	a4,sp,400
 5e2:	1101                	addi	sp,sp,-32
 5e4:	1201                	addi	tp,tp,-32
 5e6:	00130107          	0x130107
 5ea:	1900                	addi	s0,sp,176
 5ec:	0000010b          	0x10b
 5f0:	341a                	fld	fs0,416(sp)
 5f2:	0300                	addi	s0,sp,384
 5f4:	3a0e                	fld	fs4,224(sp)
 5f6:	390b3b0b          	0x390b3b0b
 5fa:	0013490b          	0x13490b
 5fe:	1b00                	addi	s0,sp,432
 600:	1755010b          	0x1755010b
 604:	0000                	unimp
 606:	0100                	addi	s0,sp,128
 608:	0111                	addi	sp,sp,4
 60a:	0e25                	addi	t3,t3,9
 60c:	0e030b13          	addi	s6,t1,224
 610:	01110e1b          	addiw	t3,sp,17
 614:	0712                	slli	a4,a4,0x4
 616:	1710                	addi	a2,sp,928
 618:	0000                	unimp
 61a:	2402                	fld	fs0,0(sp)
 61c:	0b00                	addi	s0,sp,400
 61e:	030b3e0b          	0x30b3e0b
 622:	000e                	c.slli	zero,0x3
 624:	0300                	addi	s0,sp,384
 626:	0024                	addi	s1,sp,8
 628:	0b3e0b0b          	0xb3e0b0b
 62c:	00000803          	lb	a6,0(zero) # 0 <register_fini-0x100b0>
 630:	1604                	addi	s1,sp,800
 632:	0300                	addi	s0,sp,384
 634:	3a0e                	fld	fs4,224(sp)
 636:	39053b0b          	0x39053b0b
 63a:	0013490b          	0x13490b
 63e:	0500                	addi	s0,sp,640
 640:	0026                	c.slli	zero,0x9
 642:	1349                	addi	t1,t1,-14
 644:	0000                	unimp
 646:	0106                	slli	sp,sp,0x1
 648:	4901                	li	s2,0
 64a:	00130113          	addi	sp,t1,1
 64e:	0700                	addi	s0,sp,896
 650:	0021                	c.nop	8
 652:	1349                	addi	t1,t1,-14
 654:	00000b2f          	0xb2f
 658:	3408                	fld	fa0,40(s0)
 65a:	0300                	addi	s0,sp,384
 65c:	3a0e                	fld	fs4,224(sp)
 65e:	390b3b0b          	0x390b3b0b
 662:	3f13490b          	0x3f13490b
 666:	3c19                	addiw	s8,s8,-26
 668:	0019                	c.nop	6
 66a:	0900                	addi	s0,sp,144
 66c:	0016                	c.slli	zero,0x5
 66e:	0b3a0e03          	lb	t3,179(s4)
 672:	0b390b3b          	0xb390b3b
 676:	1349                	addi	t1,t1,-14
 678:	0000                	unimp
 67a:	130a                	slli	t1,t1,0x22
 67c:	0b01                	addi	s6,s6,0
 67e:	3b0b3a0b          	0x3b0b3a0b
 682:	010b390b          	0x10b390b
 686:	0b000013          	li	zero,176
 68a:	000d                	c.nop	3
 68c:	0b3a0e03          	lb	t3,179(s4)
 690:	0b390b3b          	0xb390b3b
 694:	1349                	addi	t1,t1,-14
 696:	0b0d0b0b          	0xb0d0b0b
 69a:	0b0c                	addi	a1,sp,400
 69c:	0b38                	addi	a4,sp,408
 69e:	0000                	unimp
 6a0:	0d0c                	addi	a1,sp,656
 6a2:	0300                	addi	s0,sp,384
 6a4:	3a08                	fld	fa0,48(a2)
 6a6:	390b3b0b          	0x390b3b0b
 6aa:	0b13490b          	0xb13490b
 6ae:	0c0b0d0b          	0xc0b0d0b
 6b2:	000b380b          	0xb380b
 6b6:	0d00                	addi	s0,sp,656
 6b8:	0e030117          	auipc	sp,0xe030
 6bc:	0b3a0b0b          	0xb3a0b0b
 6c0:	0b390b3b          	0xb390b3b
 6c4:	1301                	addi	t1,t1,-32
 6c6:	0000                	unimp
 6c8:	0d0e                	slli	s10,s10,0x3
 6ca:	0300                	addi	s0,sp,384
 6cc:	3a08                	fld	fa0,48(a2)
 6ce:	390b3b0b          	0x390b3b0b
 6d2:	0013490b          	0x13490b
 6d6:	0f00                	addi	s0,sp,912
 6d8:	000d                	c.nop	3
 6da:	0b3a0e03          	lb	t3,179(s4)
 6de:	0b390b3b          	0xb390b3b
 6e2:	1349                	addi	t1,t1,-14
 6e4:	0000                	unimp
 6e6:	2e10                	fld	fa2,24(a2)
 6e8:	3f01                	addiw	t5,t5,-32
 6ea:	0319                	addi	t1,t1,6
 6ec:	3a0e                	fld	fs4,224(sp)
 6ee:	390b3b0b          	0x390b3b0b
 6f2:	4919270b          	0x4919270b
 6f6:	12011113          	0x12011113
 6fa:	96184007          	flq	ft0,-1695(a6)
 6fe:	1942                	slli	s2,s2,0x30
 700:	1301                	addi	t1,t1,-32
 702:	0000                	unimp
 704:	0511                	addi	a0,a0,4
 706:	0300                	addi	s0,sp,384
 708:	3a08                	fld	fa0,48(a2)
 70a:	390b3b0b          	0x390b3b0b
 70e:	0213490b          	0x213490b
 712:	12000017          	auipc	zero,0x12000
 716:	0034                	addi	a3,sp,8
 718:	0b3a0e03          	lb	t3,179(s4)
 71c:	0b390b3b          	0xb390b3b
 720:	1349                	addi	t1,t1,-14
 722:	1702                	slli	a4,a4,0x20
 724:	0000                	unimp
 726:	03003413          	sltiu	s0,zero,48
 72a:	3a0e                	fld	fs4,224(sp)
 72c:	390b3b0b          	0x390b3b0b
 730:	1c13490b          	0x1c13490b
 734:	1400000b          	0x1400000b
 738:	0034                	addi	a3,sp,8
 73a:	0b3a0803          	lb	a6,179(s4)
 73e:	0b390b3b          	0xb390b3b
 742:	1349                	addi	t1,t1,-14
 744:	0000                	unimp
 746:	3415                	addiw	s0,s0,-27
 748:	0300                	addi	s0,sp,384
 74a:	3a08                	fld	fa0,48(a2)
 74c:	390b3b0b          	0x390b3b0b
 750:	0213490b          	0x213490b
 754:	16000017          	auipc	zero,0x16000
 758:	1755010b          	0x1755010b
 75c:	1301                	addi	t1,t1,-32
 75e:	0000                	unimp
 760:	03003417          	auipc	s0,0x3003
 764:	3a0e                	fld	fs4,224(sp)
 766:	390b3b0b          	0x390b3b0b
 76a:	0013490b          	0x13490b
 76e:	1800                	addi	s0,sp,48
 770:	0111010b          	0x111010b
 774:	0712                	slli	a4,a4,0x4
 776:	1301                	addi	t1,t1,-32
 778:	0000                	unimp
 77a:	0b19                	addi	s6,s6,6
 77c:	1101                	addi	sp,sp,-32
 77e:	1201                	addi	tp,tp,-32
 780:	00000007          	0x7
 784:	1101                	addi	sp,sp,-32
 786:	2501                	sext.w	a0,a0
 788:	130e                	slli	t1,t1,0x23
 78a:	1b0e030b          	0x1b0e030b
 78e:	110e                	slli	sp,sp,0x23
 790:	1201                	addi	tp,tp,-32
 792:	00171007          	0x171007
 796:	0200                	addi	s0,sp,256
 798:	0024                	addi	s1,sp,8
 79a:	0b3e0b0b          	0xb3e0b0b
 79e:	00000e03          	lb	t3,0(zero) # 0 <register_fini-0x100b0>
 7a2:	0b002403          	lw	s0,176(zero) # b0 <register_fini-0x10000>
 7a6:	030b3e0b          	0x30b3e0b
 7aa:	0008                	0x8
 7ac:	0400                	addi	s0,sp,512
 7ae:	0016                	c.slli	zero,0x5
 7b0:	0b3a0e03          	lb	t3,179(s4)
 7b4:	0b39053b          	0xb39053b
 7b8:	1349                	addi	t1,t1,-14
 7ba:	0000                	unimp
 7bc:	2605                	addiw	a2,a2,1
 7be:	4900                	lw	s0,16(a0)
 7c0:	06000013          	li	zero,96
 7c4:	0101                	addi	sp,sp,0
 7c6:	1349                	addi	t1,t1,-14
 7c8:	1301                	addi	t1,t1,-32
 7ca:	0000                	unimp
 7cc:	49002107          	flw	ft2,1168(zero) # 490 <register_fini-0xfc20>
 7d0:	000b2f13          	slti	t5,s6,0
 7d4:	0800                	addi	s0,sp,16
 7d6:	0034                	addi	a3,sp,8
 7d8:	0b3a0e03          	lb	t3,179(s4)
 7dc:	0b390b3b          	0xb390b3b
 7e0:	1349                	addi	t1,t1,-14
 7e2:	193c193f 16090000 	0x16090000193c193f
 7ea:	0300                	addi	s0,sp,384
 7ec:	3a0e                	fld	fs4,224(sp)
 7ee:	390b3b0b          	0x390b3b0b
 7f2:	0013490b          	0x13490b
 7f6:	0a00                	addi	s0,sp,272
 7f8:	0b0b0113          	addi	sp,s6,176
 7fc:	0b3a                	slli	s6,s6,0xe
 7fe:	0b390b3b          	0xb390b3b
 802:	1301                	addi	t1,t1,-32
 804:	0000                	unimp
 806:	03000d0b          	0x3000d0b
 80a:	3a0e                	fld	fs4,224(sp)
 80c:	390b3b0b          	0x390b3b0b
 810:	0b13490b          	0xb13490b
 814:	0c0b0d0b          	0xc0b0d0b
 818:	000b380b          	0xb380b
 81c:	0c00                	addi	s0,sp,528
 81e:	000d                	c.nop	3
 820:	0b3a0803          	lb	a6,179(s4)
 824:	0b390b3b          	0xb390b3b
 828:	1349                	addi	t1,t1,-14
 82a:	0b0d0b0b          	0xb0d0b0b
 82e:	0b0c                	addi	a1,sp,400
 830:	0b38                	addi	a4,sp,408
 832:	0000                	unimp
 834:	170d                	addi	a4,a4,-29
 836:	0301                	addi	t1,t1,0
 838:	0b0e                	slli	s6,s6,0x3
 83a:	3b0b3a0b          	0x3b0b3a0b
 83e:	010b390b          	0x10b390b
 842:	0e000013          	li	zero,224
 846:	000d                	c.nop	3
 848:	0b3a0803          	lb	a6,179(s4)
 84c:	0b390b3b          	0xb390b3b
 850:	1349                	addi	t1,t1,-14
 852:	0000                	unimp
 854:	03000d0f          	0x3000d0f
 858:	3a0e                	fld	fs4,224(sp)
 85a:	390b3b0b          	0x390b3b0b
 85e:	0013490b          	0x13490b
 862:	1000                	addi	s0,sp,32
 864:	012e                	slli	sp,sp,0xb
 866:	0e03193f 0b3b0b3a 	0xb3b0b3a0e03193f
 86e:	0b39                	addi	s6,s6,14
 870:	13491927          	0x13491927
 874:	0111                	addi	sp,sp,4
 876:	0712                	slli	a4,a4,0x4
 878:	1840                	addi	s0,sp,52
 87a:	01194297          	auipc	t0,0x1194
 87e:	11000013          	li	zero,272
 882:	0005                	c.nop	1
 884:	0b3a0803          	lb	a6,179(s4)
 888:	0b390b3b          	0xb390b3b
 88c:	1349                	addi	t1,t1,-14
 88e:	1702                	slli	a4,a4,0x20
 890:	0000                	unimp
 892:	3412                	fld	fs0,288(sp)
 894:	0300                	addi	s0,sp,384
 896:	3a0e                	fld	fs4,224(sp)
 898:	390b3b0b          	0x390b3b0b
 89c:	0213490b          	0x213490b
 8a0:	13000017          	auipc	zero,0x13000
 8a4:	0034                	addi	a3,sp,8
 8a6:	0b3a0e03          	lb	t3,179(s4)
 8aa:	0b390b3b          	0xb390b3b
 8ae:	1349                	addi	t1,t1,-14
 8b0:	0b1c                	addi	a5,sp,400
 8b2:	0000                	unimp
 8b4:	3414                	fld	fa3,40(s0)
 8b6:	0300                	addi	s0,sp,384
 8b8:	3a08                	fld	fa0,48(a2)
 8ba:	390b3b0b          	0x390b3b0b
 8be:	0013490b          	0x13490b
 8c2:	1500                	addi	s0,sp,672
 8c4:	0034                	addi	a3,sp,8
 8c6:	0b3a0803          	lb	a6,179(s4)
 8ca:	0b390b3b          	0xb390b3b
 8ce:	1349                	addi	t1,t1,-14
 8d0:	1702                	slli	a4,a4,0x20
 8d2:	0000                	unimp
 8d4:	0b16                	slli	s6,s6,0x5
 8d6:	5501                	li	a0,-32
 8d8:	00130117          	auipc	sp,0x130
 8dc:	1700                	addi	s0,sp,928
 8de:	0034                	addi	a3,sp,8
 8e0:	0b3a0e03          	lb	t3,179(s4)
 8e4:	0b390b3b          	0xb390b3b
 8e8:	1349                	addi	t1,t1,-14
 8ea:	0000                	unimp
 8ec:	0b18                	addi	a4,sp,400
 8ee:	0001                	nop
 8f0:	1900                	addi	s0,sp,176
 8f2:	0111010b          	0x111010b
 8f6:	0712                	slli	a4,a4,0x4
 8f8:	0000                	unimp
 8fa:	0100                	addi	s0,sp,128
 8fc:	0111                	addi	sp,sp,4
 8fe:	0e25                	addi	t3,t3,9
 900:	0e030b13          	addi	s6,t1,224
 904:	01110e1b          	addiw	t3,sp,17
 908:	0712                	slli	a4,a4,0x4
 90a:	1710                	addi	a2,sp,928
 90c:	0000                	unimp
 90e:	2402                	fld	fs0,0(sp)
 910:	0b00                	addi	s0,sp,400
 912:	030b3e0b          	0x30b3e0b
 916:	000e                	c.slli	zero,0x3
 918:	0300                	addi	s0,sp,384
 91a:	0024                	addi	s1,sp,8
 91c:	0b3e0b0b          	0xb3e0b0b
 920:	00000803          	lb	a6,0(zero) # 0 <register_fini-0x100b0>
 924:	1604                	addi	s1,sp,800
 926:	0300                	addi	s0,sp,384
 928:	3a0e                	fld	fs4,224(sp)
 92a:	39053b0b          	0x39053b0b
 92e:	0013490b          	0x13490b
 932:	0500                	addi	s0,sp,640
 934:	0016                	c.slli	zero,0x5
 936:	0b3a0e03          	lb	t3,179(s4)
 93a:	0b390b3b          	0xb390b3b
 93e:	1349                	addi	t1,t1,-14
 940:	0000                	unimp
 942:	1706                	slli	a4,a4,0x21
 944:	0b01                	addi	s6,s6,0
 946:	3b0b3a0b          	0x3b0b3a0b
 94a:	010b390b          	0x10b390b
 94e:	07000013          	li	zero,112
 952:	000d                	c.nop	3
 954:	0b3a0e03          	lb	t3,179(s4)
 958:	0b390b3b          	0xb390b3b
 95c:	1349                	addi	t1,t1,-14
 95e:	0000                	unimp
 960:	0108                	addi	a0,sp,128
 962:	4901                	li	s2,0
 964:	00130113          	addi	sp,t1,1
 968:	0900                	addi	s0,sp,144
 96a:	0021                	c.nop	8
 96c:	1349                	addi	t1,t1,-14
 96e:	00000b2f          	0xb2f
 972:	130a                	slli	t1,t1,0x22
 974:	0b01                	addi	s6,s6,0
 976:	3b0b3a0b          	0x3b0b3a0b
 97a:	010b390b          	0x10b390b
 97e:	0b000013          	li	zero,176
 982:	000d                	c.nop	3
 984:	0b3a0e03          	lb	t3,179(s4)
 988:	0b390b3b          	0xb390b3b
 98c:	1349                	addi	t1,t1,-14
 98e:	0b38                	addi	a4,sp,408
 990:	0000                	unimp
 992:	0f0c                	addi	a1,sp,912
 994:	0b00                	addi	s0,sp,400
 996:	0d00000b          	0xd00000b
 99a:	0e030113          	addi	sp,t1,224
 99e:	0b3a0b0b          	0xb3a0b0b
 9a2:	0b390b3b          	0xb390b3b
 9a6:	1301                	addi	t1,t1,-32
 9a8:	0000                	unimp
 9aa:	0d0e                	slli	s10,s10,0x3
 9ac:	0300                	addi	s0,sp,384
 9ae:	3a08                	fld	fa0,48(a2)
 9b0:	390b3b0b          	0x390b3b0b
 9b4:	3813490b          	0x3813490b
 9b8:	0f00000b          	0xf00000b
 9bc:	0b0b000f          	0xb0b000f
 9c0:	1349                	addi	t1,t1,-14
 9c2:	0000                	unimp
 9c4:	1310                	addi	a2,sp,416
 9c6:	0301                	addi	t1,t1,0
 9c8:	0b0e                	slli	s6,s6,0x3
 9ca:	3a05                	addiw	s4,s4,-31
 9cc:	390b3b0b          	0x390b3b0b
 9d0:	0013010b          	0x13010b
 9d4:	1100                	addi	s0,sp,160
 9d6:	000d                	c.nop	3
 9d8:	0b3a0e03          	lb	t3,179(s4)
 9dc:	0b390b3b          	0xb390b3b
 9e0:	1349                	addi	t1,t1,-14
 9e2:	0538                	addi	a4,sp,648
 9e4:	0000                	unimp
 9e6:	1512                	slli	a0,a0,0x24
 9e8:	2700                	fld	fs0,8(a4)
 9ea:	0019                	c.nop	6
 9ec:	1300                	addi	s0,sp,416
 9ee:	0115                	addi	sp,sp,5
 9f0:	13491927          	0x13491927
 9f4:	1301                	addi	t1,t1,-32
 9f6:	0000                	unimp
 9f8:	0514                	addi	a3,sp,640
 9fa:	4900                	lw	s0,16(a0)
 9fc:	15000013          	li	zero,336
 a00:	0026                	c.slli	zero,0x9
 a02:	1349                	addi	t1,t1,-14
 a04:	0000                	unimp
 a06:	1316                	slli	t1,t1,0x25
 a08:	0301                	addi	t1,t1,0
 a0a:	0b0e                	slli	s6,s6,0x3
 a0c:	3a05                	addiw	s4,s4,-31
 a0e:	39053b0b          	0x39053b0b
 a12:	0013010b          	0x13010b
 a16:	1700                	addi	s0,sp,928
 a18:	000d                	c.nop	3
 a1a:	0b3a0e03          	lb	t3,179(s4)
 a1e:	0b39053b          	0xb39053b
 a22:	1349                	addi	t1,t1,-14
 a24:	0b38                	addi	a4,sp,408
 a26:	0000                	unimp
 a28:	0d18                	addi	a4,sp,656
 a2a:	0300                	addi	s0,sp,384
 a2c:	3a0e                	fld	fs4,224(sp)
 a2e:	39053b0b          	0x39053b0b
 a32:	3813490b          	0x3813490b
 a36:	0005                	c.nop	1
 a38:	1900                	addi	s0,sp,176
 a3a:	0e030113          	addi	sp,t1,224
 a3e:	0b3a0b0b          	0xb3a0b0b
 a42:	0b39053b          	0xb39053b
 a46:	1301                	addi	t1,t1,-32
 a48:	0000                	unimp
 a4a:	131a                	slli	t1,t1,0x26
 a4c:	0b01                	addi	s6,s6,0
 a4e:	3b0b3a0b          	0x3b0b3a0b
 a52:	3905                	addiw	s2,s2,-31
 a54:	0013010b          	0x13010b
 a58:	1b00                	addi	s0,sp,432
 a5a:	050b0113          	addi	sp,s6,80
 a5e:	0b3a                	slli	s6,s6,0xe
 a60:	0b39053b          	0xb39053b
 a64:	1301                	addi	t1,t1,-32
 a66:	0000                	unimp
 a68:	171c                	addi	a5,sp,928
 a6a:	0b01                	addi	s6,s6,0
 a6c:	3a05                	addiw	s4,s4,-31
 a6e:	39053b0b          	0x39053b0b
 a72:	0013010b          	0x13010b
 a76:	1d00                	addi	s0,sp,688
 a78:	000d                	c.nop	3
 a7a:	0b3a0e03          	lb	t3,179(s4)
 a7e:	0b39053b          	0xb39053b
 a82:	1349                	addi	t1,t1,-14
 a84:	0000                	unimp
 a86:	131e                	slli	t1,t1,0x27
 a88:	0300                	addi	s0,sp,384
 a8a:	3c0e                	fld	fs8,224(sp)
 a8c:	0019                	c.nop	6
 a8e:	1f00                	addi	s0,sp,944
 a90:	0115                	addi	sp,sp,5
 a92:	13011927          	0x13011927
 a96:	0000                	unimp
 a98:	3420                	fld	fs0,104(s0)
 a9a:	0300                	addi	s0,sp,384
 a9c:	3a0e                	fld	fs4,224(sp)
 a9e:	39053b0b          	0x39053b0b
 aa2:	3f13490b          	0x3f13490b
 aa6:	3c19                	addiw	s8,s8,-26
 aa8:	0019                	c.nop	6
 aaa:	2100                	fld	fs0,0(a0)
 aac:	0021                	c.nop	8
 aae:	0000                	unimp
 ab0:	3422                	fld	fs0,40(sp)
 ab2:	0300                	addi	s0,sp,384
 ab4:	3a0e                	fld	fs4,224(sp)
 ab6:	390b3b0b          	0x390b3b0b
 aba:	3f13490b          	0x3f13490b
 abe:	3c19                	addiw	s8,s8,-26
 ac0:	0019                	c.nop	6
 ac2:	2300                	fld	fs0,0(a4)
 ac4:	0026                	c.slli	zero,0x9
 ac6:	0000                	unimp
 ac8:	0424                	addi	s1,sp,520
 aca:	0301                	addi	t1,t1,0
 acc:	3e0e                	fld	ft8,224(sp)
 ace:	490b0b0b          	0x490b0b0b
 ad2:	3b0b3a13          	sltiu	s4,s6,944
 ad6:	010b390b          	0x10b390b
 ada:	25000013          	li	zero,592
 ade:	0028                	addi	a0,sp,8
 ae0:	0b1c0e03          	lb	t3,177(s8)
 ae4:	0000                	unimp
 ae6:	2e26                	fld	ft8,72(sp)
 ae8:	3f01                	addiw	t5,t5,-32
 aea:	0319                	addi	t1,t1,6
 aec:	3a0e                	fld	fs4,224(sp)
 aee:	39053b0b          	0x39053b0b
 af2:	4919270b          	0x4919270b
 af6:	12011113          	0x12011113
 afa:	97184007          	flq	ft0,-1679(a6)
 afe:	1942                	slli	s2,s2,0x30
 b00:	0000                	unimp
 b02:	03000527          	0x3000527
 b06:	3a08                	fld	fa0,48(a2)
 b08:	39053b0b          	0x39053b0b
 b0c:	0213490b          	0x213490b
 b10:	28000017          	auipc	zero,0x28000
 b14:	0034                	addi	a3,sp,8
 b16:	0b3a0803          	lb	a6,179(s4)
 b1a:	0b39053b          	0xb39053b
 b1e:	1349                	addi	t1,t1,-14
 b20:	0000                	unimp
 b22:	0b29                	addi	s6,s6,10
 b24:	5501                	li	a0,-32
 b26:	2a000017          	auipc	zero,0x2a000
 b2a:	0034                	addi	a3,sp,8
 b2c:	0b3a0e03          	lb	t3,179(s4)
 b30:	0b39053b          	0xb39053b
 b34:	1349                	addi	t1,t1,-14
 b36:	1702                	slli	a4,a4,0x20
 b38:	0000                	unimp
 b3a:	0300342b          	0x300342b
 b3e:	3a08                	fld	fa0,48(a2)
 b40:	39053b0b          	0x39053b0b
 b44:	0213490b          	0x213490b
 b48:	00000017          	auipc	zero,0x0
 b4c:	1101                	addi	sp,sp,-32
 b4e:	2501                	sext.w	a0,a0
 b50:	130e                	slli	t1,t1,0x23
 b52:	1b0e030b          	0x1b0e030b
 b56:	100e                	c.slli	zero,0x23
 b58:	02000017          	auipc	zero,0x2000
 b5c:	0024                	addi	s1,sp,8
 b5e:	0b3e0b0b          	0xb3e0b0b
 b62:	00000e03          	lb	t3,0(zero) # 0 <register_fini-0x100b0>
 b66:	0b002403          	lw	s0,176(zero) # b0 <register_fini-0x10000>
 b6a:	030b3e0b          	0x30b3e0b
 b6e:	0008                	0x8
 b70:	0400                	addi	s0,sp,512
 b72:	0016                	c.slli	zero,0x5
 b74:	0b3a0e03          	lb	t3,179(s4)
 b78:	0b39053b          	0xb39053b
 b7c:	1349                	addi	t1,t1,-14
 b7e:	0000                	unimp
 b80:	1605                	addi	a2,a2,-31
 b82:	0300                	addi	s0,sp,384
 b84:	3a0e                	fld	fs4,224(sp)
 b86:	390b3b0b          	0x390b3b0b
 b8a:	0013490b          	0x13490b
 b8e:	0600                	addi	s0,sp,768
 b90:	0b0b0117          	auipc	sp,0xb0b0
 b94:	0b3a                	slli	s6,s6,0xe
 b96:	0b390b3b          	0xb390b3b
 b9a:	1301                	addi	t1,t1,-32
 b9c:	0000                	unimp
 b9e:	03000d07          	0x3000d07
 ba2:	3a0e                	fld	fs4,224(sp)
 ba4:	390b3b0b          	0x390b3b0b
 ba8:	0013490b          	0x13490b
 bac:	0800                	addi	s0,sp,16
 bae:	0101                	addi	sp,sp,0
 bb0:	1349                	addi	t1,t1,-14
 bb2:	1301                	addi	t1,t1,-32
 bb4:	0000                	unimp
 bb6:	2109                	addiw	sp,sp,2
 bb8:	4900                	lw	s0,16(a0)
 bba:	000b2f13          	slti	t5,s6,0
 bbe:	0a00                	addi	s0,sp,272
 bc0:	0b0b0113          	addi	sp,s6,176
 bc4:	0b3a                	slli	s6,s6,0xe
 bc6:	0b390b3b          	0xb390b3b
 bca:	1301                	addi	t1,t1,-32
 bcc:	0000                	unimp
 bce:	03000d0b          	0x3000d0b
 bd2:	3a0e                	fld	fs4,224(sp)
 bd4:	390b3b0b          	0x390b3b0b
 bd8:	3813490b          	0x3813490b
 bdc:	0c00000b          	0xc00000b
 be0:	0b0b000f          	0xb0b000f
 be4:	0000                	unimp
 be6:	130d                	addi	t1,t1,-29
 be8:	0301                	addi	t1,t1,0
 bea:	0b0e                	slli	s6,s6,0x3
 bec:	3b0b3a0b          	0x3b0b3a0b
 bf0:	010b390b          	0x10b390b
 bf4:	0e000013          	li	zero,224
 bf8:	000d                	c.nop	3
 bfa:	0b3a0803          	lb	a6,179(s4)
 bfe:	0b390b3b          	0xb390b3b
 c02:	1349                	addi	t1,t1,-14
 c04:	0b38                	addi	a4,sp,408
 c06:	0000                	unimp
 c08:	0b000f0f          	0xb000f0f
 c0c:	0013490b          	0x13490b
 c10:	1000                	addi	s0,sp,32
 c12:	0e030113          	addi	sp,t1,224
 c16:	0b3a050b          	0xb3a050b
 c1a:	0b390b3b          	0xb390b3b
 c1e:	1301                	addi	t1,t1,-32
 c20:	0000                	unimp
 c22:	0d11                	addi	s10,s10,4
 c24:	0300                	addi	s0,sp,384
 c26:	3a0e                	fld	fs4,224(sp)
 c28:	390b3b0b          	0x390b3b0b
 c2c:	3813490b          	0x3813490b
 c30:	0005                	c.nop	1
 c32:	1200                	addi	s0,sp,288
 c34:	0015                	c.nop	5
 c36:	00001927          	0x1927
 c3a:	27011513          	0x27011513
 c3e:	4919                	li	s2,6
 c40:	00130113          	addi	sp,t1,1
 c44:	1400                	addi	s0,sp,544
 c46:	0005                	c.nop	1
 c48:	1349                	addi	t1,t1,-14
 c4a:	0000                	unimp
 c4c:	2615                	addiw	a2,a2,5
 c4e:	4900                	lw	s0,16(a0)
 c50:	16000013          	li	zero,352
 c54:	0e030113          	addi	sp,t1,224
 c58:	0b3a050b          	0xb3a050b
 c5c:	0b39053b          	0xb39053b
 c60:	1301                	addi	t1,t1,-32
 c62:	0000                	unimp
 c64:	03000d17          	auipc	s10,0x3000
 c68:	3a0e                	fld	fs4,224(sp)
 c6a:	39053b0b          	0x39053b0b
 c6e:	3813490b          	0x3813490b
 c72:	1800000b          	0x1800000b
 c76:	000d                	c.nop	3
 c78:	0b3a0e03          	lb	t3,179(s4)
 c7c:	0b39053b          	0xb39053b
 c80:	1349                	addi	t1,t1,-14
 c82:	0538                	addi	a4,sp,648
 c84:	0000                	unimp
 c86:	1319                	addi	t1,t1,-26
 c88:	0301                	addi	t1,t1,0
 c8a:	0b0e                	slli	s6,s6,0x3
 c8c:	3b0b3a0b          	0x3b0b3a0b
 c90:	3905                	addiw	s2,s2,-31
 c92:	0013010b          	0x13010b
 c96:	1a00                	addi	s0,sp,304
 c98:	0b0b0113          	addi	sp,s6,176
 c9c:	0b3a                	slli	s6,s6,0xe
 c9e:	0b39053b          	0xb39053b
 ca2:	1301                	addi	t1,t1,-32
 ca4:	0000                	unimp
 ca6:	0b01131b          	0xb01131b
 caa:	3a05                	addiw	s4,s4,-31
 cac:	39053b0b          	0x39053b0b
 cb0:	0013010b          	0x13010b
 cb4:	1c00                	addi	s0,sp,560
 cb6:	050b0117          	auipc	sp,0x50b0
 cba:	0b3a                	slli	s6,s6,0xe
 cbc:	0b39053b          	0xb39053b
 cc0:	1301                	addi	t1,t1,-32
 cc2:	0000                	unimp
 cc4:	0d1d                	addi	s10,s10,7
 cc6:	0300                	addi	s0,sp,384
 cc8:	3a0e                	fld	fs4,224(sp)
 cca:	39053b0b          	0x39053b0b
 cce:	0013490b          	0x13490b
 cd2:	1e00                	addi	s0,sp,816
 cd4:	0e030013          	addi	zero,t1,224
 cd8:	193c                	addi	a5,sp,184
 cda:	0000                	unimp
 cdc:	151f 2701 0119      	0x1192701151f
 ce2:	20000013          	li	zero,512
 ce6:	0034                	addi	a3,sp,8
 ce8:	0b3a0e03          	lb	t3,179(s4)
 cec:	0b39053b          	0xb39053b
 cf0:	1349                	addi	t1,t1,-14
 cf2:	193c193f 21210000 	0x21210000193c193f
 cfa:	0000                	unimp
 cfc:	2200                	fld	fs0,0(a2)
 cfe:	0034                	addi	a3,sp,8
 d00:	0b3a0e03          	lb	t3,179(s4)
 d04:	0b390b3b          	0xb390b3b
 d08:	1349                	addi	t1,t1,-14
 d0a:	193c193f 26230000 	0x26230000193c193f
 d12:	0000                	unimp
 d14:	2400                	fld	fs0,8(s0)
 d16:	0104                	addi	s1,sp,128
 d18:	0b3e0e03          	lb	t3,179(t3) # 887ef <__BSS_END__+0x75fbf>
 d1c:	13490b0b          	0x13490b0b
 d20:	0b3a                	slli	s6,s6,0xe
 d22:	0b390b3b          	0xb390b3b
 d26:	1301                	addi	t1,t1,-32
 d28:	0000                	unimp
 d2a:	2825                	addiw	a6,a6,9
 d2c:	0300                	addi	s0,sp,384
 d2e:	1c0e                	slli	s8,s8,0x23
 d30:	2600000b          	0x2600000b
 d34:	0034                	addi	a3,sp,8
 d36:	0b3a1347          	fmsub.d	ft6,fs4,fs3,ft1,rtz
 d3a:	0b39053b          	0xb39053b
 d3e:	1802                	slli	a6,a6,0x20
 d40:	0000                	unimp
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
      aa:	05012303          	lw	t1,80(sp) # 50b0d06 <__BSS_END__+0x509e4d6>
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
     142:	04090803          	lb	a6,64(s2) # 40 <register_fini-0x10070>
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
     4da:	018f0403          	lb	s0,24(t5) # a05c2 <__BSS_END__+0x8dd92>
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
     57e:	01bd0403          	lb	s0,27(s10) # 3000c7f <__BSS_END__+0x2fee44f>
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
     618:	01e40403          	lb	s0,30(s0) # 300377e <__BSS_END__+0x2ff0f4e>
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
     73a:	02a70403          	lb	s0,42(a4) # fffffffffffe102a <__BSS_END__+0xfffffffffffce7fa>
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
     a7a:	07b4                	addi	a3,sp,968
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
     f64:	000c                	0xc
     f66:	0001                	nop
     f68:	0402                	c.slli64	s0
     f6a:	0302                	c.slli64	t1
     f6c:	0900                	addi	s0,sp,144
     f6e:	0000                	unimp
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
     f8c:	000c                	0xc
     f8e:	0001                	nop
     f90:	0402                	c.slli64	s0
     f92:	0302                	c.slli64	t1
     f94:	0900                	addi	s0,sp,144
     f96:	0004                	0x4
     f98:	0001                	nop
     f9a:	0402                	c.slli64	s0
     f9c:	0309                	addi	t1,t1,2
     f9e:	0900                	addi	s0,sp,144
     fa0:	0004                	0x4
     fa2:	0001                	nop
     fa4:	0402                	c.slli64	s0
     fa6:	0900030b          	0x900030b
     faa:	000c                	0xc
     fac:	0001                	nop
     fae:	0402                	c.slli64	s0
     fb0:	0900030b          	0x900030b
     fb4:	0000                	unimp
     fb6:	0001                	nop
     fb8:	0402                	c.slli64	s0
     fba:	0900030b          	0x900030b
     fbe:	0018                	0x18
     fc0:	0001                	nop
     fc2:	0402                	c.slli64	s0
     fc4:	0900030b          	0x900030b
     fc8:	0000                	unimp
     fca:	0001                	nop
     fcc:	0402                	c.slli64	s0
     fce:	0900030b          	0x900030b
     fd2:	0000                	unimp
     fd4:	0001                	nop
     fd6:	0402                	c.slli64	s0
     fd8:	0900030b          	0x900030b
     fdc:	0000                	unimp
     fde:	0001                	nop
     fe0:	0402                	c.slli64	s0
     fe2:	0900030b          	0x900030b
     fe6:	0020                	addi	s0,sp,8
     fe8:	0001                	nop
     fea:	0402                	c.slli64	s0
     fec:	0900030b          	0x900030b
     ff0:	0000                	unimp
     ff2:	0001                	nop
     ff4:	0402                	c.slli64	s0
     ff6:	0900030b          	0x900030b
     ffa:	0000                	unimp
     ffc:	0001                	nop
     ffe:	0402                	c.slli64	s0
    1000:	0900030b          	0x900030b
    1004:	0000                	unimp
    1006:	0001                	nop
    1008:	0402                	c.slli64	s0
    100a:	030c                	addi	a1,sp,384
    100c:	0900                	addi	s0,sp,144
    100e:	0008                	0x8
    1010:	0001                	nop
    1012:	0402                	c.slli64	s0
    1014:	0302                	c.slli64	t1
    1016:	0901                	addi	s2,s2,0
    1018:	000c                	0xc
    101a:	0001                	nop
    101c:	0402                	c.slli64	s0
    101e:	0302                	c.slli64	t1
    1020:	0900                	addi	s0,sp,144
    1022:	0004                	0x4
    1024:	0001                	nop
    1026:	0402                	c.slli64	s0
    1028:	0306                	slli	t1,t1,0x1
    102a:	0900                	addi	s0,sp,144
    102c:	0004                	0x4
    102e:	0001                	nop
    1030:	0402                	c.slli64	s0
    1032:	0306                	slli	t1,t1,0x1
    1034:	0900                	addi	s0,sp,144
    1036:	0000                	unimp
    1038:	0001                	nop
    103a:	0402                	c.slli64	s0
    103c:	0308                	addi	a0,sp,384
    103e:	0900                	addi	s0,sp,144
    1040:	0008                	0x8
    1042:	0001                	nop
    1044:	0402                	c.slli64	s0
    1046:	0308                	addi	a0,sp,384
    1048:	0900                	addi	s0,sp,144
    104a:	0000                	unimp
    104c:	0001                	nop
    104e:	0402                	c.slli64	s0
    1050:	0308                	addi	a0,sp,384
    1052:	0900                	addi	s0,sp,144
    1054:	0000                	unimp
    1056:	0001                	nop
    1058:	0402                	c.slli64	s0
    105a:	0308                	addi	a0,sp,384
    105c:	0900                	addi	s0,sp,144
    105e:	0000                	unimp
    1060:	0001                	nop
    1062:	0402                	c.slli64	s0
    1064:	030a                	slli	t1,t1,0x2
    1066:	0900                	addi	s0,sp,144
    1068:	000c                	0xc
    106a:	0001                	nop
    106c:	0402                	c.slli64	s0
    106e:	0309                	addi	t1,t1,2
    1070:	0900                	addi	s0,sp,144
    1072:	0004                	0x4
    1074:	0001                	nop
    1076:	0402                	c.slli64	s0
    1078:	0309                	addi	t1,t1,2
    107a:	0900                	addi	s0,sp,144
    107c:	0000                	unimp
    107e:	0001                	nop
    1080:	0402                	c.slli64	s0
    1082:	0318                	addi	a4,sp,384
    1084:	0900                	addi	s0,sp,144
    1086:	0008                	0x8
    1088:	0001                	nop
    108a:	0402                	c.slli64	s0
    108c:	0318                	addi	a4,sp,384
    108e:	0900                	addi	s0,sp,144
    1090:	0010                	0x10
    1092:	0001                	nop
    1094:	0402                	c.slli64	s0
    1096:	031a                	slli	t1,t1,0x6
    1098:	0900                	addi	s0,sp,144
    109a:	0004                	0x4
    109c:	0001                	nop
    109e:	0402                	c.slli64	s0
    10a0:	031a                	slli	t1,t1,0x6
    10a2:	0900                	addi	s0,sp,144
    10a4:	0000                	unimp
    10a6:	0001                	nop
    10a8:	0402                	c.slli64	s0
    10aa:	7d030607          	0x7d030607
    10ae:	1809                	addi	a6,a6,-30
    10b0:	0100                	addi	s0,sp,128
    10b2:	0200                	addi	s0,sp,256
    10b4:	0704                	addi	s1,sp,896
    10b6:	0306                	slli	t1,t1,0x1
    10b8:	0902                	c.slli64	s2
    10ba:	0004                	0x4
    10bc:	0001                	nop
    10be:	0402                	c.slli64	s0
    10c0:	0315                	addi	t1,t1,5
    10c2:	0900                	addi	s0,sp,144
    10c4:	0008                	0x8
    10c6:	0001                	nop
    10c8:	0402                	c.slli64	s0
    10ca:	0315                	addi	t1,t1,5
    10cc:	0901                	addi	s2,s2,0
    10ce:	0000                	unimp
    10d0:	0001                	nop
    10d2:	0402                	c.slli64	s0
    10d4:	0315                	addi	t1,t1,5
    10d6:	0900                	addi	s0,sp,144
    10d8:	0000                	unimp
    10da:	0001                	nop
    10dc:	0402                	c.slli64	s0
    10de:	0315                	addi	t1,t1,5
    10e0:	0900                	addi	s0,sp,144
    10e2:	0000                	unimp
    10e4:	0601                	addi	a2,a2,0
    10e6:	08090003          	lb	zero,128(s2)
    10ea:	0100                	addi	s0,sp,128
    10ec:	0200                	addi	s0,sp,256
    10ee:	0404                	addi	s1,sp,512
    10f0:	1c097e03          	0x1c097e03
    10f4:	0100                	addi	s0,sp,128
    10f6:	0200                	addi	s0,sp,256
    10f8:	0404                	addi	s1,sp,512
    10fa:	0306                	slli	t1,t1,0x1
    10fc:	0901                	addi	s2,s2,0
    10fe:	0004                	0x4
    1100:	0601                	addi	a2,a2,0
    1102:	04090003          	lb	zero,64(s2)
    1106:	0100                	addi	s0,sp,128
    1108:	0200                	addi	s0,sp,256
    110a:	3b04                	fld	fs1,48(a4)
    110c:	0306                	slli	t1,t1,0x1
    110e:	0901                	addi	s2,s2,0
    1110:	0008                	0x8
    1112:	0001                	nop
    1114:	0402                	c.slli64	s0
    1116:	0900033b          	0x900033b
    111a:	0000                	unimp
    111c:	0001                	nop
    111e:	0402                	c.slli64	s0
    1120:	0900033b          	0x900033b
    1124:	0000                	unimp
    1126:	0001                	nop
    1128:	0402                	c.slli64	s0
    112a:	0900033b          	0x900033b
    112e:	0008                	0x8
    1130:	0001                	nop
    1132:	0402                	c.slli64	s0
    1134:	033c                	addi	a5,sp,392
    1136:	0900                	addi	s0,sp,144
    1138:	0008                	0x8
    113a:	0001                	nop
    113c:	0402                	c.slli64	s0
    113e:	033c                	addi	a5,sp,392
    1140:	0900                	addi	s0,sp,144
    1142:	0018                	0x18
    1144:	0001                	nop
    1146:	0402                	c.slli64	s0
    1148:	033c                	addi	a5,sp,392
    114a:	0900                	addi	s0,sp,144
    114c:	0000                	unimp
    114e:	0001                	nop
    1150:	0402                	c.slli64	s0
    1152:	0344                	addi	s1,sp,388
    1154:	0900                	addi	s0,sp,144
    1156:	0008                	0x8
    1158:	0001                	nop
    115a:	0402                	c.slli64	s0
    115c:	0344                	addi	s1,sp,388
    115e:	0900                	addi	s0,sp,144
    1160:	0000                	unimp
    1162:	0001                	nop
    1164:	0402                	c.slli64	s0
    1166:	0344                	addi	s1,sp,388
    1168:	0900                	addi	s0,sp,144
    116a:	0000                	unimp
    116c:	0001                	nop
    116e:	0402                	c.slli64	s0
    1170:	0344                	addi	s1,sp,388
    1172:	0900                	addi	s0,sp,144
    1174:	0000                	unimp
    1176:	0001                	nop
    1178:	0402                	c.slli64	s0
    117a:	0346                	slli	t1,t1,0x11
    117c:	0900                	addi	s0,sp,144
    117e:	000c                	0xc
    1180:	0001                	nop
    1182:	0402                	c.slli64	s0
    1184:	0345                	addi	t1,t1,17
    1186:	0900                	addi	s0,sp,144
    1188:	0004                	0x4
    118a:	0001                	nop
    118c:	0402                	c.slli64	s0
    118e:	0345                	addi	t1,t1,17
    1190:	0900                	addi	s0,sp,144
    1192:	0000                	unimp
    1194:	0601                	addi	a2,a2,0
    1196:	0c090003          	lb	zero,192(s2)
    119a:	0100                	addi	s0,sp,128
    119c:	0200                	addi	s0,sp,256
    119e:	6f04                	ld	s1,24(a4)
    11a0:	0306                	slli	t1,t1,0x1
    11a2:	0900                	addi	s0,sp,144
    11a4:	001c                	0x1c
    11a6:	0001                	nop
    11a8:	0402                	c.slli64	s0
    11aa:	0900036f          	jal	t1,123a <register_fini-0xee76>
    11ae:	0000                	unimp
    11b0:	0001                	nop
    11b2:	0402                	c.slli64	s0
    11b4:	0900036f          	jal	t1,1244 <register_fini-0xee6c>
    11b8:	0000                	unimp
    11ba:	0001                	nop
    11bc:	0402                	c.slli64	s0
    11be:	0900036f          	jal	t1,124e <register_fini-0xee62>
    11c2:	0000                	unimp
    11c4:	0001                	nop
    11c6:	0402                	c.slli64	s0
    11c8:	0900036f          	jal	t1,1258 <register_fini-0xee58>
    11cc:	0000                	unimp
    11ce:	0001                	nop
    11d0:	0402                	c.slli64	s0
    11d2:	0900036f          	jal	t1,1262 <register_fini-0xee4e>
    11d6:	0000                	unimp
    11d8:	0001                	nop
    11da:	0402                	c.slli64	s0
    11dc:	0900036f          	jal	t1,126c <register_fini-0xee44>
    11e0:	0018                	0x18
    11e2:	0001                	nop
    11e4:	0402                	c.slli64	s0
    11e6:	0900036f          	jal	t1,1276 <register_fini-0xee3a>
    11ea:	0000                	unimp
    11ec:	0001                	nop
    11ee:	0402                	c.slli64	s0
    11f0:	0900036f          	jal	t1,1280 <register_fini-0xee30>
    11f4:	0000                	unimp
    11f6:	0001                	nop
    11f8:	0402                	c.slli64	s0
    11fa:	0901036f          	jal	t1,1128a <__clzdi2+0x16>
    11fe:	0000                	unimp
    1200:	0001                	nop
    1202:	0402                	c.slli64	s0
    1204:	0900036f          	jal	t1,1294 <register_fini-0xee1c>
    1208:	0000                	unimp
    120a:	0001                	nop
    120c:	0402                	c.slli64	s0
    120e:	0900036f          	jal	t1,129e <register_fini-0xee12>
    1212:	0000                	unimp
    1214:	0001                	nop
    1216:	0402                	c.slli64	s0
    1218:	0902036f          	jal	t1,212a8 <__BSS_END__+0xea78>
    121c:	0000                	unimp
    121e:	0501                	addi	a0,a0,0
    1220:	0001                	nop
    1222:	0402                	c.slli64	s0
    1224:	0103066f          	jal	a2,31234 <__BSS_END__+0x1ea04>
    1228:	0009                	c.nop	2
    122a:	0100                	addi	s0,sp,128
    122c:	2809                	addiw	a6,a6,2
    122e:	0000                	unimp
    1230:	0101                	addi	sp,sp,0
    1232:	0abe                	slli	s5,s5,0xf
    1234:	0000                	unimp
    1236:	00930003          	lb	zero,9(t1)
    123a:	0000                	unimp
    123c:	0101                	addi	sp,sp,0
    123e:	000d0efb          	0xd0efb
    1242:	0101                	addi	sp,sp,0
    1244:	0101                	addi	sp,sp,0
    1246:	0000                	unimp
    1248:	0100                	addi	s0,sp,128
    124a:	0000                	unimp
    124c:	2e01                	sext.w	t3,t3
    124e:	2f2e                	fld	ft10,200(sp)
    1250:	2e2e                	fld	ft8,200(sp)
    1252:	2f2e2e2f          	0x2f2e2e2f
    1256:	2e2e                	fld	ft8,200(sp)
    1258:	7369722f          	0x7369722f
    125c:	672d7663          	bgeu	s10,s2,18c8 <register_fini-0xe7e8>
    1260:	6c2f6363          	bltu	t5,sp,1926 <register_fini-0xe78a>
    1264:	6269                	lui	tp,0x1a
    1266:	2f636367          	0x2f636367
    126a:	74666f73          	csrrsi	t5,0x746,12
    126e:	662d                	lui	a2,0xb
    1270:	0070                	addi	a2,sp,12
    1272:	2e2e                	fld	ft8,200(sp)
    1274:	2f2e2e2f          	0x2f2e2e2f
    1278:	2e2e                	fld	ft8,200(sp)
    127a:	2f2e2e2f          	0x2f2e2e2f
    127e:	6972                	ld	s2,280(sp)
    1280:	2d766373          	csrrsi	t1,0x2d7,12
    1284:	2f636367          	0x2f636367
    1288:	696c                	ld	a1,208(a0)
    128a:	6762                	ld	a4,24(sp)
    128c:	2e2f6363          	bltu	t5,sp,1572 <register_fini-0xeb3e>
    1290:	2f2e                	fld	ft10,200(sp)
    1292:	6e69                	lui	t3,0x1a
    1294:	64756c63          	bltu	a0,t2,18ec <register_fini-0xe7c4>
    1298:	0065                	c.nop	25
    129a:	7300                	ld	s0,32(a4)
    129c:	6275                	lui	tp,0x1d
    129e:	6664                	ld	s1,200(a2)
    12a0:	00632e33          	slt	t3,t1,t1
    12a4:	0001                	nop
    12a6:	7300                	ld	s0,32(a4)
    12a8:	2d74666f          	jal	a2,47d7e <__BSS_END__+0x3554e>
    12ac:	7066                	0x7066
    12ae:	682e                	ld	a6,200(sp)
    12b0:	0100                	addi	s0,sp,128
    12b2:	0000                	unimp
    12b4:	6f64                	ld	s1,216(a4)
    12b6:	6275                	lui	tp,0x1d
    12b8:	656c                	ld	a1,200(a0)
    12ba:	682e                	ld	a6,200(sp)
    12bc:	0100                	addi	s0,sp,128
    12be:	0000                	unimp
    12c0:	6f6c                	ld	a1,216(a4)
    12c2:	676e                	ld	a4,216(sp)
    12c4:	6f6c                	ld	a1,216(a4)
    12c6:	676e                	ld	a4,216(sp)
    12c8:	682e                	ld	a6,200(sp)
    12ca:	0200                	addi	s0,sp,256
    12cc:	0000                	unimp
    12ce:	0500                	addi	s0,sp,640
    12d0:	0001                	nop
    12d2:	0209                	addi	tp,tp,2
    12d4:	0b94                	addi	a3,sp,464
    12d6:	0001                	nop
    12d8:	0000                	unimp
    12da:	0000                	unimp
    12dc:	05012303          	lw	t1,80(sp)
    12e0:	09010303          	lb	t1,144(sp)
    12e4:	0000                	unimp
    12e6:	0301                	addi	t1,t1,0
    12e8:	0900                	addi	s0,sp,144
    12ea:	0000                	unimp
    12ec:	0501                	addi	a0,a0,0
    12ee:	030d                	addi	t1,t1,3
    12f0:	0900                	addi	s0,sp,144
    12f2:	0000                	unimp
    12f4:	0501                	addi	a0,a0,0
    12f6:	09010303          	lb	t1,144(sp)
    12fa:	0000                	unimp
    12fc:	0301                	addi	t1,t1,0
    12fe:	0900                	addi	s0,sp,144
    1300:	0000                	unimp
    1302:	0301                	addi	t1,t1,0
    1304:	0900                	addi	s0,sp,144
    1306:	0000                	unimp
    1308:	0301                	addi	t1,t1,0
    130a:	0900                	addi	s0,sp,144
    130c:	0000                	unimp
    130e:	0301                	addi	t1,t1,0
    1310:	0901                	addi	s2,s2,0
    1312:	0000                	unimp
    1314:	0301                	addi	t1,t1,0
    1316:	0900                	addi	s0,sp,144
    1318:	0000                	unimp
    131a:	0301                	addi	t1,t1,0
    131c:	0900                	addi	s0,sp,144
    131e:	0000                	unimp
    1320:	0301                	addi	t1,t1,0
    1322:	0900                	addi	s0,sp,144
    1324:	0000                	unimp
    1326:	0301                	addi	t1,t1,0
    1328:	0901                	addi	s2,s2,0
    132a:	0000                	unimp
    132c:	0301                	addi	t1,t1,0
    132e:	0900                	addi	s0,sp,144
    1330:	0000                	unimp
    1332:	0301                	addi	t1,t1,0
    1334:	0900                	addi	s0,sp,144
    1336:	0000                	unimp
    1338:	0301                	addi	t1,t1,0
    133a:	0900                	addi	s0,sp,144
    133c:	0000                	unimp
    133e:	0301                	addi	t1,t1,0
    1340:	0901                	addi	s2,s2,0
    1342:	0000                	unimp
    1344:	0301                	addi	t1,t1,0
    1346:	0902                	c.slli64	s2
    1348:	0000                	unimp
    134a:	0301                	addi	t1,t1,0
    134c:	0901                	addi	s2,s2,0
    134e:	0000                	unimp
    1350:	0301                	addi	t1,t1,0
    1352:	0900                	addi	s0,sp,144
    1354:	0000                	unimp
    1356:	0301                	addi	t1,t1,0
    1358:	0900                	addi	s0,sp,144
    135a:	0000                	unimp
    135c:	0301                	addi	t1,t1,0
    135e:	0900                	addi	s0,sp,144
    1360:	0000                	unimp
    1362:	0301                	addi	t1,t1,0
    1364:	0900                	addi	s0,sp,144
    1366:	0000                	unimp
    1368:	0501                	addi	a0,a0,0
    136a:	0601                	addi	a2,a2,0
    136c:	04097803          	0x4097803
    1370:	0100                	addi	s0,sp,128
    1372:	0305                	addi	t1,t1,1
    1374:	04090803          	lb	a6,64(s2)
    1378:	0100                	addi	s0,sp,128
    137a:	04090103          	lb	sp,64(s2)
    137e:	0100                	addi	s0,sp,128
    1380:	04097f03          	0x4097f03
    1384:	0100                	addi	s0,sp,128
    1386:	0306                	slli	t1,t1,0x1
    1388:	0900                	addi	s0,sp,144
    138a:	0008                	0x8
    138c:	0501                	addi	a0,a0,0
    138e:	0601                	addi	a2,a2,0
    1390:	00097803          	0x97803
    1394:	0100                	addi	s0,sp,128
    1396:	0305                	addi	t1,t1,1
    1398:	04090903          	lb	s2,64(s2)
    139c:	0100                	addi	s0,sp,128
    139e:	0105                	addi	sp,sp,1
    13a0:	04097703          	0x4097703
    13a4:	0100                	addi	s0,sp,128
    13a6:	0305                	addi	t1,t1,1
    13a8:	04090803          	lb	a6,64(s2)
    13ac:	0100                	addi	s0,sp,128
    13ae:	0105                	addi	sp,sp,1
    13b0:	04097803          	0x4097803
    13b4:	0100                	addi	s0,sp,128
    13b6:	0305                	addi	t1,t1,1
    13b8:	08090903          	lb	s2,128(s2)
    13bc:	0100                	addi	s0,sp,128
    13be:	04090103          	lb	sp,64(s2)
    13c2:	0100                	addi	s0,sp,128
    13c4:	04097e03          	0x4097e03
    13c8:	0100                	addi	s0,sp,128
    13ca:	0306                	slli	t1,t1,0x1
    13cc:	0900                	addi	s0,sp,144
    13ce:	0004                	0x4
    13d0:	0301                	addi	t1,t1,0
    13d2:	0900                	addi	s0,sp,144
    13d4:	0004                	0x4
    13d6:	0301                	addi	t1,t1,0
    13d8:	0900                	addi	s0,sp,144
    13da:	0000                	unimp
    13dc:	0301                	addi	t1,t1,0
    13de:	0900                	addi	s0,sp,144
    13e0:	0000                	unimp
    13e2:	0301                	addi	t1,t1,0
    13e4:	0900                	addi	s0,sp,144
    13e6:	0000                	unimp
    13e8:	0301                	addi	t1,t1,0
    13ea:	0900                	addi	s0,sp,144
    13ec:	0004                	0x4
    13ee:	0301                	addi	t1,t1,0
    13f0:	0900                	addi	s0,sp,144
    13f2:	0000                	unimp
    13f4:	0301                	addi	t1,t1,0
    13f6:	0901                	addi	s2,s2,0
    13f8:	0000                	unimp
    13fa:	0301                	addi	t1,t1,0
    13fc:	0900                	addi	s0,sp,144
    13fe:	0000                	unimp
    1400:	0301                	addi	t1,t1,0
    1402:	0900                	addi	s0,sp,144
    1404:	0000                	unimp
    1406:	0301                	addi	t1,t1,0
    1408:	0900                	addi	s0,sp,144
    140a:	0000                	unimp
    140c:	0301                	addi	t1,t1,0
    140e:	0900                	addi	s0,sp,144
    1410:	0000                	unimp
    1412:	0301                	addi	t1,t1,0
    1414:	0900                	addi	s0,sp,144
    1416:	0000                	unimp
    1418:	0301                	addi	t1,t1,0
    141a:	0900                	addi	s0,sp,144
    141c:	0000                	unimp
    141e:	0301                	addi	t1,t1,0
    1420:	0900                	addi	s0,sp,144
    1422:	0004                	0x4
    1424:	0301                	addi	t1,t1,0
    1426:	0900                	addi	s0,sp,144
    1428:	0000                	unimp
    142a:	0301                	addi	t1,t1,0
    142c:	0900                	addi	s0,sp,144
    142e:	0000                	unimp
    1430:	0301                	addi	t1,t1,0
    1432:	0900                	addi	s0,sp,144
    1434:	0000                	unimp
    1436:	0301                	addi	t1,t1,0
    1438:	0900                	addi	s0,sp,144
    143a:	0004                	0x4
    143c:	0301                	addi	t1,t1,0
    143e:	0900                	addi	s0,sp,144
    1440:	0000                	unimp
    1442:	0301                	addi	t1,t1,0
    1444:	0901                	addi	s2,s2,0
    1446:	0000                	unimp
    1448:	0301                	addi	t1,t1,0
    144a:	0900                	addi	s0,sp,144
    144c:	0000                	unimp
    144e:	0001                	nop
    1450:	0402                	c.slli64	s0
    1452:	0602                	c.slli64	a2
    1454:	04090003          	lb	zero,64(s2)
    1458:	0100                	addi	s0,sp,128
    145a:	0200                	addi	s0,sp,256
    145c:	0304                	addi	s1,sp,384
    145e:	0306                	slli	t1,t1,0x1
    1460:	0900                	addi	s0,sp,144
    1462:	0004                	0x4
    1464:	0001                	nop
    1466:	0402                	c.slli64	s0
    1468:	0900030b          	0x900030b
    146c:	0004                	0x4
    146e:	0001                	nop
    1470:	0402                	c.slli64	s0
    1472:	0900030b          	0x900030b
    1476:	0000                	unimp
    1478:	0001                	nop
    147a:	0402                	c.slli64	s0
    147c:	0900030b          	0x900030b
    1480:	0000                	unimp
    1482:	0001                	nop
    1484:	0402                	c.slli64	s0
    1486:	0900030b          	0x900030b
    148a:	0000                	unimp
    148c:	0001                	nop
    148e:	0402                	c.slli64	s0
    1490:	0900030b          	0x900030b
    1494:	0000                	unimp
    1496:	0001                	nop
    1498:	0402                	c.slli64	s0
    149a:	0900030b          	0x900030b
    149e:	0000                	unimp
    14a0:	0001                	nop
    14a2:	0402                	c.slli64	s0
    14a4:	0900030b          	0x900030b
    14a8:	0000                	unimp
    14aa:	0001                	nop
    14ac:	0402                	c.slli64	s0
    14ae:	0900030b          	0x900030b
    14b2:	0000                	unimp
    14b4:	0001                	nop
    14b6:	0402                	c.slli64	s0
    14b8:	030c                	addi	a1,sp,384
    14ba:	0900                	addi	s0,sp,144
    14bc:	000c                	0xc
    14be:	0001                	nop
    14c0:	0402                	c.slli64	s0
    14c2:	030c                	addi	a1,sp,384
    14c4:	0900                	addi	s0,sp,144
    14c6:	0000                	unimp
    14c8:	0001                	nop
    14ca:	0402                	c.slli64	s0
    14cc:	030c                	addi	a1,sp,384
    14ce:	0900                	addi	s0,sp,144
    14d0:	0000                	unimp
    14d2:	0001                	nop
    14d4:	0402                	c.slli64	s0
    14d6:	030e                	slli	t1,t1,0x3
    14d8:	0900                	addi	s0,sp,144
    14da:	0004                	0x4
    14dc:	0001                	nop
    14de:	0402                	c.slli64	s0
    14e0:	030e                	slli	t1,t1,0x3
    14e2:	0900                	addi	s0,sp,144
    14e4:	0000                	unimp
    14e6:	0001                	nop
    14e8:	0402                	c.slli64	s0
    14ea:	0310                	addi	a2,sp,384
    14ec:	0900                	addi	s0,sp,144
    14ee:	0004                	0x4
    14f0:	0001                	nop
    14f2:	0402                	c.slli64	s0
    14f4:	09000313          	li	t1,144
    14f8:	0004                	0x4
    14fa:	0001                	nop
    14fc:	0402                	c.slli64	s0
    14fe:	09000313          	li	t1,144
    1502:	0000                	unimp
    1504:	0001                	nop
    1506:	0402                	c.slli64	s0
    1508:	09000313          	li	t1,144
    150c:	0004                	0x4
    150e:	0001                	nop
    1510:	0402                	c.slli64	s0
    1512:	031c                	addi	a5,sp,384
    1514:	0900                	addi	s0,sp,144
    1516:	0004                	0x4
    1518:	0001                	nop
    151a:	0402                	c.slli64	s0
    151c:	031c                	addi	a5,sp,384
    151e:	0900                	addi	s0,sp,144
    1520:	0004                	0x4
    1522:	0001                	nop
    1524:	0402                	c.slli64	s0
    1526:	0375                	addi	t1,t1,29
    1528:	0900                	addi	s0,sp,144
    152a:	0000                	unimp
    152c:	0001                	nop
    152e:	01b00403          	lb	s0,27(zero) # 1b <register_fini-0x10095>
    1532:	08090003          	lb	zero,128(s2)
    1536:	0100                	addi	s0,sp,128
    1538:	0300                	addi	s0,sp,384
    153a:	b004                	fsd	fs1,32(s0)
    153c:	0301                	addi	t1,t1,0
    153e:	0900                	addi	s0,sp,144
    1540:	0000                	unimp
    1542:	0001                	nop
    1544:	01b00403          	lb	s0,27(zero) # 1b <register_fini-0x10095>
    1548:	04090003          	lb	zero,64(s2)
    154c:	0100                	addi	s0,sp,128
    154e:	0300                	addi	s0,sp,384
    1550:	b004                	fsd	fs1,32(s0)
    1552:	0301                	addi	t1,t1,0
    1554:	0900                	addi	s0,sp,144
    1556:	0000                	unimp
    1558:	0601                	addi	a2,a2,0
    155a:	08090003          	lb	zero,128(s2)
    155e:	0100                	addi	s0,sp,128
    1560:	0200                	addi	s0,sp,256
    1562:	1d04                	addi	s1,sp,688
    1564:	0306                	slli	t1,t1,0x1
    1566:	0900                	addi	s0,sp,144
    1568:	0020                	addi	s0,sp,8
    156a:	0001                	nop
    156c:	02fd0403          	lb	s0,47(s10)
    1570:	08090003          	lb	zero,128(s2)
    1574:	0100                	addi	s0,sp,128
    1576:	0300                	addi	s0,sp,384
    1578:	fd04                	sd	s1,56(a0)
    157a:	0302                	c.slli64	t1
    157c:	0900                	addi	s0,sp,144
    157e:	0000                	unimp
    1580:	0001                	nop
    1582:	02fd0403          	lb	s0,47(s10)
    1586:	00090003          	lb	zero,0(s2)
    158a:	0100                	addi	s0,sp,128
    158c:	0300                	addi	s0,sp,384
    158e:	fd04                	sd	s1,56(a0)
    1590:	0302                	c.slli64	t1
    1592:	0901                	addi	s2,s2,0
    1594:	0000                	unimp
    1596:	0001                	nop
    1598:	02fd0403          	lb	s0,47(s10)
    159c:	00090003          	lb	zero,0(s2)
    15a0:	0100                	addi	s0,sp,128
    15a2:	0300                	addi	s0,sp,384
    15a4:	fd04                	sd	s1,56(a0)
    15a6:	0302                	c.slli64	t1
    15a8:	0900                	addi	s0,sp,144
    15aa:	0000                	unimp
    15ac:	0001                	nop
    15ae:	02fd0403          	lb	s0,47(s10)
    15b2:	00090003          	lb	zero,0(s2)
    15b6:	0100                	addi	s0,sp,128
    15b8:	0300                	addi	s0,sp,384
    15ba:	fd04                	sd	s1,56(a0)
    15bc:	0302                	c.slli64	t1
    15be:	0900                	addi	s0,sp,144
    15c0:	0000                	unimp
    15c2:	0001                	nop
    15c4:	0402                	c.slli64	s0
    15c6:	0325                	addi	t1,t1,9
    15c8:	0900                	addi	s0,sp,144
    15ca:	0008                	0x8
    15cc:	0001                	nop
    15ce:	0402                	c.slli64	s0
    15d0:	0325                	addi	t1,t1,9
    15d2:	0900                	addi	s0,sp,144
    15d4:	0000                	unimp
    15d6:	0001                	nop
    15d8:	0402                	c.slli64	s0
    15da:	0325                	addi	t1,t1,9
    15dc:	0900                	addi	s0,sp,144
    15de:	0000                	unimp
    15e0:	0001                	nop
    15e2:	0402                	c.slli64	s0
    15e4:	0325                	addi	t1,t1,9
    15e6:	0900                	addi	s0,sp,144
    15e8:	0000                	unimp
    15ea:	0001                	nop
    15ec:	0402                	c.slli64	s0
    15ee:	032c                	addi	a1,sp,392
    15f0:	0900                	addi	s0,sp,144
    15f2:	000c                	0xc
    15f4:	0001                	nop
    15f6:	0402                	c.slli64	s0
    15f8:	0311                	addi	t1,t1,4
    15fa:	097f                	0x97f
    15fc:	0008                	0x8
    15fe:	0001                	nop
    1600:	0402                	c.slli64	s0
    1602:	0900032b          	0x900032b
    1606:	0008                	0x8
    1608:	0001                	nop
    160a:	0402                	c.slli64	s0
    160c:	0334                	addi	a3,sp,392
    160e:	0900                	addi	s0,sp,144
    1610:	000c                	0xc
    1612:	0001                	nop
    1614:	0402                	c.slli64	s0
    1616:	0335                	addi	t1,t1,13
    1618:	0900                	addi	s0,sp,144
    161a:	000c                	0xc
    161c:	0001                	nop
    161e:	0402                	c.slli64	s0
    1620:	0340                	addi	s0,sp,388
    1622:	0900                	addi	s0,sp,144
    1624:	0018                	0x18
    1626:	0001                	nop
    1628:	0402                	c.slli64	s0
    162a:	0900030f          	0x900030f
    162e:	0008                	0x8
    1630:	0001                	nop
    1632:	0402                	c.slli64	s0
    1634:	0342                	slli	t1,t1,0x10
    1636:	0900                	addi	s0,sp,144
    1638:	0004                	0x4
    163a:	0001                	nop
    163c:	0402                	c.slli64	s0
    163e:	0342                	slli	t1,t1,0x10
    1640:	0900                	addi	s0,sp,144
    1642:	0000                	unimp
    1644:	0001                	nop
    1646:	0402                	c.slli64	s0
    1648:	0342                	slli	t1,t1,0x10
    164a:	0900                	addi	s0,sp,144
    164c:	0000                	unimp
    164e:	0001                	nop
    1650:	0402                	c.slli64	s0
    1652:	0344                	addi	s1,sp,388
    1654:	0900                	addi	s0,sp,144
    1656:	0004                	0x4
    1658:	0001                	nop
    165a:	0402                	c.slli64	s0
    165c:	09000347          	fmsub.s	ft6,ft0,fa6,ft1,rne
    1660:	0004                	0x4
    1662:	0001                	nop
    1664:	0402                	c.slli64	s0
    1666:	09000347          	fmsub.s	ft6,ft0,fa6,ft1,rne
    166a:	0000                	unimp
    166c:	0001                	nop
    166e:	0402                	c.slli64	s0
    1670:	09000347          	fmsub.s	ft6,ft0,fa6,ft1,rne
    1674:	0000                	unimp
    1676:	0001                	nop
    1678:	0402                	c.slli64	s0
    167a:	0350                	addi	a2,sp,388
    167c:	0900                	addi	s0,sp,144
    167e:	0008                	0x8
    1680:	0001                	nop
    1682:	0402                	c.slli64	s0
    1684:	0350                	addi	a2,sp,388
    1686:	0900                	addi	s0,sp,144
    1688:	0004                	0x4
    168a:	0001                	nop
    168c:	0402                	c.slli64	s0
    168e:	0674                	addi	a3,sp,780
    1690:	00097f03          	0x97f03
    1694:	0100                	addi	s0,sp,128
    1696:	0200                	addi	s0,sp,256
    1698:	5104                	lw	s1,32(a0)
    169a:	0306                	slli	t1,t1,0x1
    169c:	0901                	addi	s2,s2,0
    169e:	0008                	0x8
    16a0:	0001                	nop
    16a2:	0402                	c.slli64	s0
    16a4:	0368                	addi	a0,sp,396
    16a6:	0900                	addi	s0,sp,144
    16a8:	0010                	0x10
    16aa:	0001                	nop
    16ac:	0402                	c.slli64	s0
    16ae:	0369                	addi	t1,t1,26
    16b0:	0900                	addi	s0,sp,144
    16b2:	000c                	0xc
    16b4:	0001                	nop
    16b6:	0402                	c.slli64	s0
    16b8:	0374                	addi	a3,sp,396
    16ba:	0900                	addi	s0,sp,144
    16bc:	0018                	0x18
    16be:	0001                	nop
    16c0:	0402                	c.slli64	s0
    16c2:	0345                	addi	t1,t1,17
    16c4:	0900                	addi	s0,sp,144
    16c6:	0008                	0x8
    16c8:	0001                	nop
    16ca:	0402                	c.slli64	s0
    16cc:	065f 0003 0809      	0x8090003065f
    16d2:	0100                	addi	s0,sp,128
    16d4:	0200                	addi	s0,sp,256
    16d6:	5f04                	lw	s1,56(a4)
    16d8:	0306                	slli	t1,t1,0x1
    16da:	0900                	addi	s0,sp,144
    16dc:	000c                	0xc
    16de:	0001                	nop
    16e0:	0402                	c.slli64	s0
    16e2:	09000343          	fmadd.s	ft6,ft0,fa6,ft1,rne
    16e6:	0008                	0x8
    16e8:	0001                	nop
    16ea:	0402                	c.slli64	s0
    16ec:	0376                	slli	t1,t1,0x1d
    16ee:	0900                	addi	s0,sp,144
    16f0:	000c                	0xc
    16f2:	0001                	nop
    16f4:	0402                	c.slli64	s0
    16f6:	0378                	addi	a4,sp,396
    16f8:	0900                	addi	s0,sp,144
    16fa:	0004                	0x4
    16fc:	0001                	nop
    16fe:	0402                	c.slli64	s0
    1700:	0378                	addi	a4,sp,396
    1702:	0900                	addi	s0,sp,144
    1704:	0000                	unimp
    1706:	0001                	nop
    1708:	0402                	c.slli64	s0
    170a:	0900037b          	0x900037b
    170e:	0004                	0x4
    1710:	0001                	nop
    1712:	01810403          	lb	s0,24(sp)
    1716:	04090003          	lb	zero,64(s2)
    171a:	0100                	addi	s0,sp,128
    171c:	0300                	addi	s0,sp,384
    171e:	8104                	0x8104
    1720:	0301                	addi	t1,t1,0
    1722:	0900                	addi	s0,sp,144
    1724:	0000                	unimp
    1726:	0001                	nop
    1728:	01810403          	lb	s0,24(sp)
    172c:	04090003          	lb	zero,64(s2)
    1730:	0100                	addi	s0,sp,128
    1732:	0300                	addi	s0,sp,384
    1734:	8304                	0x8304
    1736:	0301                	addi	t1,t1,0
    1738:	0900                	addi	s0,sp,144
    173a:	0008                	0x8
    173c:	0001                	nop
    173e:	01830403          	lb	s0,24(t1)
    1742:	10090003          	lb	zero,256(s2)
    1746:	0100                	addi	s0,sp,128
    1748:	0300                	addi	s0,sp,384
    174a:	9404                	0x9404
    174c:	0301                	addi	t1,t1,0
    174e:	0900                	addi	s0,sp,144
    1750:	0008                	0x8
    1752:	0001                	nop
    1754:	01940403          	lb	s0,25(s0)
    1758:	00090003          	lb	zero,0(s2)
    175c:	0100                	addi	s0,sp,128
    175e:	0300                	addi	s0,sp,384
    1760:	9404                	0x9404
    1762:	0301                	addi	t1,t1,0
    1764:	0900                	addi	s0,sp,144
    1766:	0000                	unimp
    1768:	0001                	nop
    176a:	01940403          	lb	s0,25(s0)
    176e:	00090003          	lb	zero,0(s2)
    1772:	0100                	addi	s0,sp,128
    1774:	0300                	addi	s0,sp,384
    1776:	9404                	0x9404
    1778:	0301                	addi	t1,t1,0
    177a:	0900                	addi	s0,sp,144
    177c:	0000                	unimp
    177e:	0001                	nop
    1780:	01940403          	lb	s0,25(s0)
    1784:	00090003          	lb	zero,0(s2)
    1788:	0100                	addi	s0,sp,128
    178a:	0300                	addi	s0,sp,384
    178c:	9404                	0x9404
    178e:	0301                	addi	t1,t1,0
    1790:	0900                	addi	s0,sp,144
    1792:	0000                	unimp
    1794:	0001                	nop
    1796:	01940403          	lb	s0,25(s0)
    179a:	00090003          	lb	zero,0(s2)
    179e:	0100                	addi	s0,sp,128
    17a0:	0300                	addi	s0,sp,384
    17a2:	ce04                	sw	s1,24(a2)
    17a4:	0302                	c.slli64	t1
    17a6:	0900                	addi	s0,sp,144
    17a8:	0004                	0x4
    17aa:	0601                	addi	a2,a2,0
    17ac:	04090003          	lb	zero,64(s2)
    17b0:	0100                	addi	s0,sp,128
    17b2:	0200                	addi	s0,sp,256
    17b4:	7704                	ld	s1,40(a4)
    17b6:	0306                	slli	t1,t1,0x1
    17b8:	0900                	addi	s0,sp,144
    17ba:	0014                	0x14
    17bc:	0001                	nop
    17be:	0402                	c.slli64	s0
    17c0:	09000377          	0x9000377
    17c4:	0000                	unimp
    17c6:	0001                	nop
    17c8:	0402                	c.slli64	s0
    17ca:	09000377          	0x9000377
    17ce:	0000                	unimp
    17d0:	0001                	nop
    17d2:	0402                	c.slli64	s0
    17d4:	09000377          	0x9000377
    17d8:	0000                	unimp
    17da:	0601                	addi	a2,a2,0
    17dc:	08090003          	lb	zero,128(s2)
    17e0:	0100                	addi	s0,sp,128
    17e2:	0200                	addi	s0,sp,256
    17e4:	0d04                	addi	s1,sp,656
    17e6:	0306                	slli	t1,t1,0x1
    17e8:	0900                	addi	s0,sp,144
    17ea:	0010                	0x10
    17ec:	0001                	nop
    17ee:	0402                	c.slli64	s0
    17f0:	030d                	addi	t1,t1,3
    17f2:	0900                	addi	s0,sp,144
    17f4:	0000                	unimp
    17f6:	0001                	nop
    17f8:	01c20403          	lb	s0,28(tp) # 1d01c <__BSS_END__+0xa7ec>
    17fc:	04090003          	lb	zero,64(s2)
    1800:	0100                	addi	s0,sp,128
    1802:	0300                	addi	s0,sp,384
    1804:	c204                	sw	s1,0(a2)
    1806:	0301                	addi	t1,t1,0
    1808:	0900                	addi	s0,sp,144
    180a:	0000                	unimp
    180c:	0001                	nop
    180e:	01c20403          	lb	s0,28(tp) # 1c <register_fini-0x10094>
    1812:	00090003          	lb	zero,0(s2)
    1816:	0100                	addi	s0,sp,128
    1818:	0300                	addi	s0,sp,384
    181a:	c404                	sw	s1,8(s0)
    181c:	0301                	addi	t1,t1,0
    181e:	0900                	addi	s0,sp,144
    1820:	0004                	0x4
    1822:	0001                	nop
    1824:	01c70403          	lb	s0,28(a4)
    1828:	04090003          	lb	zero,64(s2)
    182c:	0100                	addi	s0,sp,128
    182e:	0300                	addi	s0,sp,384
    1830:	c704                	sw	s1,8(a4)
    1832:	0301                	addi	t1,t1,0
    1834:	0900                	addi	s0,sp,144
    1836:	0000                	unimp
    1838:	0001                	nop
    183a:	01c70403          	lb	s0,28(a4)
    183e:	04090003          	lb	zero,64(s2)
    1842:	0100                	addi	s0,sp,128
    1844:	0300                	addi	s0,sp,384
    1846:	d004                	sw	s1,32(s0)
    1848:	0301                	addi	t1,t1,0
    184a:	0900                	addi	s0,sp,144
    184c:	0004                	0x4
    184e:	0001                	nop
    1850:	01d00403          	lb	s0,29(zero) # 1d <register_fini-0x10093>
    1854:	04090003          	lb	zero,64(s2)
    1858:	0100                	addi	s0,sp,128
    185a:	0300                	addi	s0,sp,384
    185c:	a904                	fsd	fs1,16(a0)
    185e:	0302                	c.slli64	t1
    1860:	0900                	addi	s0,sp,144
    1862:	0000                	unimp
    1864:	0001                	nop
    1866:	02e40403          	lb	s0,46(s0)
    186a:	08090003          	lb	zero,128(s2)
    186e:	0100                	addi	s0,sp,128
    1870:	0300                	addi	s0,sp,384
    1872:	e404                	sd	s1,8(s0)
    1874:	0302                	c.slli64	t1
    1876:	0900                	addi	s0,sp,144
    1878:	0000                	unimp
    187a:	0001                	nop
    187c:	01d10403          	lb	s0,29(sp)
    1880:	0c090003          	lb	zero,192(s2)
    1884:	0100                	addi	s0,sp,128
    1886:	0300                	addi	s0,sp,384
    1888:	e804                	sd	s1,16(s0)
    188a:	0301                	addi	t1,t1,0
    188c:	0900                	addi	s0,sp,144
    188e:	0008                	0x8
    1890:	0001                	nop
    1892:	01e90403          	lb	s0,30(s2)
    1896:	0c090003          	lb	zero,192(s2)
    189a:	0100                	addi	s0,sp,128
    189c:	0300                	addi	s0,sp,384
    189e:	f404                	sd	s1,40(s0)
    18a0:	0301                	addi	t1,t1,0
    18a2:	0900                	addi	s0,sp,144
    18a4:	0018                	0x18
    18a6:	0001                	nop
    18a8:	01c50403          	lb	s0,28(a0)
    18ac:	08090003          	lb	zero,128(s2)
    18b0:	0100                	addi	s0,sp,128
    18b2:	0300                	addi	s0,sp,384
    18b4:	df04                	sw	s1,56(a4)
    18b6:	0301                	addi	t1,t1,0
    18b8:	0900                	addi	s0,sp,144
    18ba:	0008                	0x8
    18bc:	0001                	nop
    18be:	01c30403          	lb	s0,28(t1)
    18c2:	10090003          	lb	zero,256(s2)
    18c6:	0100                	addi	s0,sp,128
    18c8:	0300                	addi	s0,sp,384
    18ca:	f604                	sd	s1,40(a2)
    18cc:	0301                	addi	t1,t1,0
    18ce:	0900                	addi	s0,sp,144
    18d0:	0004                	0x4
    18d2:	0001                	nop
    18d4:	01f60403          	lb	s0,31(a2) # b01f <register_fini-0x5091>
    18d8:	00090003          	lb	zero,0(s2)
    18dc:	0100                	addi	s0,sp,128
    18de:	0300                	addi	s0,sp,384
    18e0:	f604                	sd	s1,40(a2)
    18e2:	0301                	addi	t1,t1,0
    18e4:	0900                	addi	s0,sp,144
    18e6:	0000                	unimp
    18e8:	0001                	nop
    18ea:	01f60403          	lb	s0,31(a2)
    18ee:	00090003          	lb	zero,0(s2)
    18f2:	0100                	addi	s0,sp,128
    18f4:	0300                	addi	s0,sp,384
    18f6:	f804                	sd	s1,48(s0)
    18f8:	0301                	addi	t1,t1,0
    18fa:	0900                	addi	s0,sp,144
    18fc:	0004                	0x4
    18fe:	0001                	nop
    1900:	01fb0403          	lb	s0,31(s6)
    1904:	04090003          	lb	zero,64(s2)
    1908:	0100                	addi	s0,sp,128
    190a:	0300                	addi	s0,sp,384
    190c:	fb04                	sd	s1,48(a4)
    190e:	0301                	addi	t1,t1,0
    1910:	0900                	addi	s0,sp,144
    1912:	0000                	unimp
    1914:	0001                	nop
    1916:	01fb0403          	lb	s0,31(s6)
    191a:	00090003          	lb	zero,0(s2)
    191e:	0100                	addi	s0,sp,128
    1920:	0300                	addi	s0,sp,384
    1922:	8404                	0x8404
    1924:	0302                	c.slli64	t1
    1926:	0900                	addi	s0,sp,144
    1928:	0008                	0x8
    192a:	0001                	nop
    192c:	02840403          	lb	s0,40(s0)
    1930:	04090003          	lb	zero,64(s2)
    1934:	0100                	addi	s0,sp,128
    1936:	0300                	addi	s0,sp,384
    1938:	a804                	fsd	fs1,16(s0)
    193a:	0602                	c.slli64	a2
    193c:	00097f03          	0x97f03
    1940:	0100                	addi	s0,sp,128
    1942:	0300                	addi	s0,sp,384
    1944:	8504                	0x8504
    1946:	0602                	c.slli64	a2
    1948:	0c090103          	lb	sp,192(s2)
    194c:	0100                	addi	s0,sp,128
    194e:	0300                	addi	s0,sp,384
    1950:	9c04                	0x9c04
    1952:	0302                	c.slli64	t1
    1954:	0900                	addi	s0,sp,144
    1956:	0010                	0x10
    1958:	0001                	nop
    195a:	029d0403          	lb	s0,41(s10)
    195e:	0c090003          	lb	zero,192(s2)
    1962:	0100                	addi	s0,sp,128
    1964:	0300                	addi	s0,sp,384
    1966:	a804                	fsd	fs1,16(s0)
    1968:	0302                	c.slli64	t1
    196a:	0900                	addi	s0,sp,144
    196c:	0018                	0x18
    196e:	0001                	nop
    1970:	01f90403          	lb	s0,31(s2)
    1974:	08090003          	lb	zero,128(s2)
    1978:	0100                	addi	s0,sp,128
    197a:	0300                	addi	s0,sp,384
    197c:	9304                	0x9304
    197e:	0602                	c.slli64	a2
    1980:	08090003          	lb	zero,128(s2)
    1984:	0100                	addi	s0,sp,128
    1986:	0300                	addi	s0,sp,384
    1988:	9304                	0x9304
    198a:	0602                	c.slli64	a2
    198c:	0c090003          	lb	zero,192(s2)
    1990:	0100                	addi	s0,sp,128
    1992:	0300                	addi	s0,sp,384
    1994:	f704                	sd	s1,40(a4)
    1996:	0301                	addi	t1,t1,0
    1998:	0900                	addi	s0,sp,144
    199a:	0008                	0x8
    199c:	0001                	nop
    199e:	02aa0403          	lb	s0,42(s4)
    19a2:	0c090003          	lb	zero,192(s2)
    19a6:	0100                	addi	s0,sp,128
    19a8:	0300                	addi	s0,sp,384
    19aa:	ac04                	fsd	fs1,24(s0)
    19ac:	0302                	c.slli64	t1
    19ae:	0900                	addi	s0,sp,144
    19b0:	0004                	0x4
    19b2:	0001                	nop
    19b4:	02ac0403          	lb	s0,42(s8) # 1d02a <__BSS_END__+0xa7fa>
    19b8:	00090003          	lb	zero,0(s2)
    19bc:	0100                	addi	s0,sp,128
    19be:	0300                	addi	s0,sp,384
    19c0:	ae04                	fsd	fs1,24(a2)
    19c2:	0302                	c.slli64	t1
    19c4:	0900                	addi	s0,sp,144
    19c6:	0004                	0x4
    19c8:	0001                	nop
    19ca:	02ae0403          	lb	s0,42(t3) # 1a02a <__BSS_END__+0x77fa>
    19ce:	00090003          	lb	zero,0(s2)
    19d2:	0100                	addi	s0,sp,128
    19d4:	0306                	slli	t1,t1,0x1
    19d6:	0900                	addi	s0,sp,144
    19d8:	0008                	0x8
    19da:	0001                	nop
    19dc:	02af0403          	lb	s0,42(t5)
    19e0:	0306                	slli	t1,t1,0x1
    19e2:	0900                	addi	s0,sp,144
    19e4:	000c                	0xc
    19e6:	0001                	nop
    19e8:	02b60403          	lb	s0,43(a2)
    19ec:	04090003          	lb	zero,64(s2)
    19f0:	0100                	addi	s0,sp,128
    19f2:	0300                	addi	s0,sp,384
    19f4:	b604                	fsd	fs1,40(a2)
    19f6:	0302                	c.slli64	t1
    19f8:	0900                	addi	s0,sp,144
    19fa:	0000                	unimp
    19fc:	0001                	nop
    19fe:	02b60403          	lb	s0,43(a2)
    1a02:	04090003          	lb	zero,64(s2)
    1a06:	0100                	addi	s0,sp,128
    1a08:	0300                	addi	s0,sp,384
    1a0a:	b604                	fsd	fs1,40(a2)
    1a0c:	0302                	c.slli64	t1
    1a0e:	0900                	addi	s0,sp,144
    1a10:	0000                	unimp
    1a12:	0001                	nop
    1a14:	02b90403          	lb	s0,43(s2)
    1a18:	0c090003          	lb	zero,192(s2)
    1a1c:	0100                	addi	s0,sp,128
    1a1e:	0300                	addi	s0,sp,384
    1a20:	cc04                	sw	s1,24(s0)
    1a22:	0302                	c.slli64	t1
    1a24:	0900                	addi	s0,sp,144
    1a26:	0010                	0x10
    1a28:	0001                	nop
    1a2a:	02cc0403          	lb	s0,44(s8)
    1a2e:	00090003          	lb	zero,0(s2)
    1a32:	0100                	addi	s0,sp,128
    1a34:	0300                	addi	s0,sp,384
    1a36:	cc04                	sw	s1,24(s0)
    1a38:	0302                	c.slli64	t1
    1a3a:	0900                	addi	s0,sp,144
    1a3c:	0000                	unimp
    1a3e:	0001                	nop
    1a40:	02cc0403          	lb	s0,44(s8)
    1a44:	00090003          	lb	zero,0(s2)
    1a48:	0100                	addi	s0,sp,128
    1a4a:	0300                	addi	s0,sp,384
    1a4c:	cc04                	sw	s1,24(s0)
    1a4e:	0302                	c.slli64	t1
    1a50:	0900                	addi	s0,sp,144
    1a52:	0000                	unimp
    1a54:	0001                	nop
    1a56:	02cc0403          	lb	s0,44(s8)
    1a5a:	00090003          	lb	zero,0(s2)
    1a5e:	0100                	addi	s0,sp,128
    1a60:	0300                	addi	s0,sp,384
    1a62:	cc04                	sw	s1,24(s0)
    1a64:	0302                	c.slli64	t1
    1a66:	0900                	addi	s0,sp,144
    1a68:	0000                	unimp
    1a6a:	0001                	nop
    1a6c:	02cc0403          	lb	s0,44(s8)
    1a70:	00090003          	lb	zero,0(s2)
    1a74:	0100                	addi	s0,sp,128
    1a76:	0300                	addi	s0,sp,384
    1a78:	cd04                	sw	s1,24(a0)
    1a7a:	0302                	c.slli64	t1
    1a7c:	0900                	addi	s0,sp,144
    1a7e:	0004                	0x4
    1a80:	0601                	addi	a2,a2,0
    1a82:	04090003          	lb	zero,64(s2)
    1a86:	0100                	addi	s0,sp,128
    1a88:	0300                	addi	s0,sp,384
    1a8a:	ab04                	fsd	fs1,16(a4)
    1a8c:	0602                	c.slli64	a2
    1a8e:	10090003          	lb	zero,256(s2)
    1a92:	0100                	addi	s0,sp,128
    1a94:	0300                	addi	s0,sp,384
    1a96:	ab04                	fsd	fs1,16(a4)
    1a98:	0302                	c.slli64	t1
    1a9a:	0900                	addi	s0,sp,144
    1a9c:	0000                	unimp
    1a9e:	0001                	nop
    1aa0:	02ab0403          	lb	s0,42(s6)
    1aa4:	04090003          	lb	zero,64(s2)
    1aa8:	0100                	addi	s0,sp,128
    1aaa:	0300                	addi	s0,sp,384
    1aac:	ab04                	fsd	fs1,16(a4)
    1aae:	0302                	c.slli64	t1
    1ab0:	0900                	addi	s0,sp,144
    1ab2:	0000                	unimp
    1ab4:	0001                	nop
    1ab6:	02dd0403          	lb	s0,45(s10)
    1aba:	08090003          	lb	zero,128(s2)
    1abe:	0100                	addi	s0,sp,128
    1ac0:	0300                	addi	s0,sp,384
    1ac2:	dd04                	sw	s1,56(a0)
    1ac4:	0302                	c.slli64	t1
    1ac6:	0900                	addi	s0,sp,144
    1ac8:	0004                	0x4
    1aca:	0001                	nop
    1acc:	02ea0403          	lb	s0,46(s4)
    1ad0:	04090003          	lb	zero,64(s2)
    1ad4:	0100                	addi	s0,sp,128
    1ad6:	0300                	addi	s0,sp,384
    1ad8:	ea04                	sd	s1,16(a2)
    1ada:	0302                	c.slli64	t1
    1adc:	0900                	addi	s0,sp,144
    1ade:	0000                	unimp
    1ae0:	0001                	nop
    1ae2:	02ea0403          	lb	s0,46(s4)
    1ae6:	00090003          	lb	zero,0(s2)
    1aea:	0100                	addi	s0,sp,128
    1aec:	0300                	addi	s0,sp,384
    1aee:	ea04                	sd	s1,16(a2)
    1af0:	0302                	c.slli64	t1
    1af2:	0900                	addi	s0,sp,144
    1af4:	0000                	unimp
    1af6:	0001                	nop
    1af8:	02ea0403          	lb	s0,46(s4)
    1afc:	00090003          	lb	zero,0(s2)
    1b00:	0100                	addi	s0,sp,128
    1b02:	0300                	addi	s0,sp,384
    1b04:	ea04                	sd	s1,16(a2)
    1b06:	0302                	c.slli64	t1
    1b08:	0900                	addi	s0,sp,144
    1b0a:	0008                	0x8
    1b0c:	0001                	nop
    1b0e:	02ea0403          	lb	s0,46(s4)
    1b12:	00090003          	lb	zero,0(s2)
    1b16:	0100                	addi	s0,sp,128
    1b18:	0300                	addi	s0,sp,384
    1b1a:	ea04                	sd	s1,16(a2)
    1b1c:	0302                	c.slli64	t1
    1b1e:	0900                	addi	s0,sp,144
    1b20:	0004                	0x4
    1b22:	0001                	nop
    1b24:	02ea0403          	lb	s0,46(s4)
    1b28:	00090003          	lb	zero,0(s2)
    1b2c:	0100                	addi	s0,sp,128
    1b2e:	0300                	addi	s0,sp,384
    1b30:	ea04                	sd	s1,16(a2)
    1b32:	0302                	c.slli64	t1
    1b34:	0900                	addi	s0,sp,144
    1b36:	0000                	unimp
    1b38:	0001                	nop
    1b3a:	02ea0403          	lb	s0,46(s4)
    1b3e:	04090003          	lb	zero,64(s2)
    1b42:	0100                	addi	s0,sp,128
    1b44:	0300                	addi	s0,sp,384
    1b46:	ea04                	sd	s1,16(a2)
    1b48:	0302                	c.slli64	t1
    1b4a:	0900                	addi	s0,sp,144
    1b4c:	0000                	unimp
    1b4e:	0001                	nop
    1b50:	02f40403          	lb	s0,47(s0)
    1b54:	04090003          	lb	zero,64(s2)
    1b58:	0100                	addi	s0,sp,128
    1b5a:	0300                	addi	s0,sp,384
    1b5c:	f404                	sd	s1,40(s0)
    1b5e:	0302                	c.slli64	t1
    1b60:	0900                	addi	s0,sp,144
    1b62:	0008                	0x8
    1b64:	0001                	nop
    1b66:	02f40403          	lb	s0,47(s0)
    1b6a:	18090003          	lb	zero,384(s2)
    1b6e:	0100                	addi	s0,sp,128
    1b70:	0300                	addi	s0,sp,384
    1b72:	de04                	sw	s1,56(a2)
    1b74:	0302                	c.slli64	t1
    1b76:	0900                	addi	s0,sp,144
    1b78:	0008                	0x8
    1b7a:	0601                	addi	a2,a2,0
    1b7c:	04090003          	lb	zero,64(s2)
    1b80:	0100                	addi	s0,sp,128
    1b82:	0300                	addi	s0,sp,384
    1b84:	f504                	sd	s1,40(a0)
    1b86:	0602                	c.slli64	a2
    1b88:	10090003          	lb	zero,256(s2)
    1b8c:	0100                	addi	s0,sp,128
    1b8e:	0300                	addi	s0,sp,384
    1b90:	f504                	sd	s1,40(a0)
    1b92:	0302                	c.slli64	t1
    1b94:	0900                	addi	s0,sp,144
    1b96:	0004                	0x4
    1b98:	0601                	addi	a2,a2,0
    1b9a:	14097f03          	0x14097f03
    1b9e:	0100                	addi	s0,sp,128
    1ba0:	0200                	addi	s0,sp,256
    1ba2:	2f04                	fld	fs1,24(a4)
    1ba4:	0306                	slli	t1,t1,0x1
    1ba6:	0902                	c.slli64	s2
    1ba8:	0024                	addi	s1,sp,8
    1baa:	0001                	nop
    1bac:	0402                	c.slli64	s0
    1bae:	0900032f          	0x900032f
    1bb2:	0000                	unimp
    1bb4:	0001                	nop
    1bb6:	0402                	c.slli64	s0
    1bb8:	0900032f          	0x900032f
    1bbc:	0000                	unimp
    1bbe:	0001                	nop
    1bc0:	0402                	c.slli64	s0
    1bc2:	0900033f 00010008 	0x100080900033f
    1bca:	0402                	c.slli64	s0
    1bcc:	0900033f 00010000 	0x100000900033f
    1bd4:	0402                	c.slli64	s0
    1bd6:	0900033f 06010004 	0x60100040900033f
    1bde:	08090003          	lb	zero,128(s2)
    1be2:	0100                	addi	s0,sp,128
    1be4:	0200                	addi	s0,sp,256
    1be6:	4f04                	lw	s1,24(a4)
    1be8:	0306                	slli	t1,t1,0x1
    1bea:	0900                	addi	s0,sp,144
    1bec:	0010                	0x10
    1bee:	0001                	nop
    1bf0:	0402                	c.slli64	s0
    1bf2:	0900034f          	fnmadd.s	ft6,ft0,fa6,ft1,rne
    1bf6:	0000                	unimp
    1bf8:	0001                	nop
    1bfa:	0402                	c.slli64	s0
    1bfc:	0900034f          	fnmadd.s	ft6,ft0,fa6,ft1,rne
    1c00:	0008                	0x8
    1c02:	0001                	nop
    1c04:	0402                	c.slli64	s0
    1c06:	0650                	addi	a2,sp,772
    1c08:	04090003          	lb	zero,64(s2)
    1c0c:	0100                	addi	s0,sp,128
    1c0e:	04090003          	lb	zero,64(s2)
    1c12:	0100                	addi	s0,sp,128
    1c14:	0200                	addi	s0,sp,256
    1c16:	5a04                	lw	s1,48(a2)
    1c18:	0306                	slli	t1,t1,0x1
    1c1a:	0900                	addi	s0,sp,144
    1c1c:	000c                	0xc
    1c1e:	0001                	nop
    1c20:	0402                	c.slli64	s0
    1c22:	035a                	slli	t1,t1,0x16
    1c24:	0900                	addi	s0,sp,144
    1c26:	0000                	unimp
    1c28:	0001                	nop
    1c2a:	0402                	c.slli64	s0
    1c2c:	035a                	slli	t1,t1,0x16
    1c2e:	0900                	addi	s0,sp,144
    1c30:	0000                	unimp
    1c32:	0001                	nop
    1c34:	0402                	c.slli64	s0
    1c36:	035a                	slli	t1,t1,0x16
    1c38:	0900                	addi	s0,sp,144
    1c3a:	0000                	unimp
    1c3c:	0001                	nop
    1c3e:	0402                	c.slli64	s0
    1c40:	035a                	slli	t1,t1,0x16
    1c42:	0900                	addi	s0,sp,144
    1c44:	0000                	unimp
    1c46:	0001                	nop
    1c48:	0402                	c.slli64	s0
    1c4a:	035a                	slli	t1,t1,0x16
    1c4c:	0900                	addi	s0,sp,144
    1c4e:	0000                	unimp
    1c50:	0001                	nop
    1c52:	0402                	c.slli64	s0
    1c54:	035a                	slli	t1,t1,0x16
    1c56:	0900                	addi	s0,sp,144
    1c58:	0000                	unimp
    1c5a:	0501                	addi	a0,a0,0
    1c5c:	0001                	nop
    1c5e:	0402                	c.slli64	s0
    1c60:	065a                	slli	a2,a2,0x16
    1c62:	10090403          	lb	s0,256(s2)
    1c66:	0100                	addi	s0,sp,128
    1c68:	0305                	addi	t1,t1,1
    1c6a:	0200                	addi	s0,sp,256
    1c6c:	5a04                	lw	s1,48(a2)
    1c6e:	04097c03          	0x4097c03
    1c72:	0100                	addi	s0,sp,128
    1c74:	0105                	addi	sp,sp,1
    1c76:	0200                	addi	s0,sp,256
    1c78:	5a04                	lw	s1,48(a2)
    1c7a:	04090403          	lb	s0,64(s2)
    1c7e:	0100                	addi	s0,sp,128
    1c80:	0305                	addi	t1,t1,1
    1c82:	0200                	addi	s0,sp,256
    1c84:	5a04                	lw	s1,48(a2)
    1c86:	04097c03          	0x4097c03
    1c8a:	0100                	addi	s0,sp,128
    1c8c:	0200                	addi	s0,sp,256
    1c8e:	5a04                	lw	s1,48(a2)
    1c90:	0306                	slli	t1,t1,0x1
    1c92:	0900                	addi	s0,sp,144
    1c94:	0004                	0x4
    1c96:	0001                	nop
    1c98:	0402                	c.slli64	s0
    1c9a:	035a                	slli	t1,t1,0x16
    1c9c:	0900                	addi	s0,sp,144
    1c9e:	0000                	unimp
    1ca0:	0001                	nop
    1ca2:	0402                	c.slli64	s0
    1ca4:	035a                	slli	t1,t1,0x16
    1ca6:	0900                	addi	s0,sp,144
    1ca8:	0000                	unimp
    1caa:	0001                	nop
    1cac:	0402                	c.slli64	s0
    1cae:	035a                	slli	t1,t1,0x16
    1cb0:	0901                	addi	s2,s2,0
    1cb2:	0000                	unimp
    1cb4:	0001                	nop
    1cb6:	0402                	c.slli64	s0
    1cb8:	035a                	slli	t1,t1,0x16
    1cba:	0900                	addi	s0,sp,144
    1cbc:	0000                	unimp
    1cbe:	0001                	nop
    1cc0:	0402                	c.slli64	s0
    1cc2:	035a                	slli	t1,t1,0x16
    1cc4:	0900                	addi	s0,sp,144
    1cc6:	0000                	unimp
    1cc8:	0001                	nop
    1cca:	0402                	c.slli64	s0
    1ccc:	035a                	slli	t1,t1,0x16
    1cce:	0902                	c.slli64	s2
    1cd0:	0000                	unimp
    1cd2:	0501                	addi	a0,a0,0
    1cd4:	0001                	nop
    1cd6:	0402                	c.slli64	s0
    1cd8:	065a                	slli	a2,a2,0x16
    1cda:	00090103          	lb	sp,0(s2)
    1cde:	0100                	addi	s0,sp,128
    1ce0:	0305                	addi	t1,t1,1
    1ce2:	14097a03          	0x14097a03
    1ce6:	0100                	addi	s0,sp,128
    1ce8:	10090103          	lb	sp,256(s2)
    1cec:	0100                	addi	s0,sp,128
    1cee:	1009                	c.nop	-30
    1cf0:	0000                	unimp
    1cf2:	0101                	addi	sp,sp,0
    1cf4:	0241                	addi	tp,tp,16
    1cf6:	0000                	unimp
    1cf8:	00960003          	lb	zero,9(a2)
    1cfc:	0000                	unimp
    1cfe:	0101                	addi	sp,sp,0
    1d00:	000d0efb          	0xd0efb
    1d04:	0101                	addi	sp,sp,0
    1d06:	0101                	addi	sp,sp,0
    1d08:	0000                	unimp
    1d0a:	0100                	addi	s0,sp,128
    1d0c:	0000                	unimp
    1d0e:	2e01                	sext.w	t3,t3
    1d10:	2f2e                	fld	ft10,200(sp)
    1d12:	2e2e                	fld	ft8,200(sp)
    1d14:	2f2e2e2f          	0x2f2e2e2f
    1d18:	2e2e                	fld	ft8,200(sp)
    1d1a:	7369722f          	0x7369722f
    1d1e:	672d7663          	bgeu	s10,s2,238a <register_fini-0xdd26>
    1d22:	6c2f6363          	bltu	t5,sp,23e8 <register_fini-0xdcc8>
    1d26:	6269                	lui	tp,0x1a
    1d28:	2f636367          	0x2f636367
    1d2c:	74666f73          	csrrsi	t5,0x746,12
    1d30:	662d                	lui	a2,0xb
    1d32:	0070                	addi	a2,sp,12
    1d34:	2e2e                	fld	ft8,200(sp)
    1d36:	2f2e2e2f          	0x2f2e2e2f
    1d3a:	2e2e                	fld	ft8,200(sp)
    1d3c:	2f2e2e2f          	0x2f2e2e2f
    1d40:	6972                	ld	s2,280(sp)
    1d42:	2d766373          	csrrsi	t1,0x2d7,12
    1d46:	2f636367          	0x2f636367
    1d4a:	696c                	ld	a1,208(a0)
    1d4c:	6762                	ld	a4,24(sp)
    1d4e:	2e2f6363          	bltu	t5,sp,2034 <register_fini-0xe07c>
    1d52:	2f2e                	fld	ft10,200(sp)
    1d54:	6e69                	lui	t3,0x1a
    1d56:	64756c63          	bltu	a0,t2,23ae <register_fini-0xdd02>
    1d5a:	0065                	c.nop	25
    1d5c:	6600                	ld	s0,8(a2)
    1d5e:	6f6c                	ld	a1,216(a4)
    1d60:	7461                	lui	s0,0xffff8
    1d62:	66646973          	csrrsi	s2,0x666,8
    1d66:	632e                	ld	t1,200(sp)
    1d68:	0100                	addi	s0,sp,128
    1d6a:	0000                	unimp
    1d6c:	74666f73          	csrrsi	t5,0x746,12
    1d70:	662d                	lui	a2,0xb
    1d72:	2e70                	fld	fa2,216(a2)
    1d74:	0068                	addi	a0,sp,12
    1d76:	0001                	nop
    1d78:	6400                	ld	s0,8(s0)
    1d7a:	6c62756f          	jal	a0,29440 <__BSS_END__+0x16c10>
    1d7e:	2e65                	addiw	t3,t3,25
    1d80:	0068                	addi	a0,sp,12
    1d82:	0001                	nop
    1d84:	6c00                	ld	s0,24(s0)
    1d86:	6c676e6f          	jal	t3,7844c <__BSS_END__+0x65c1c>
    1d8a:	2e676e6f          	jal	t3,78070 <__BSS_END__+0x65840>
    1d8e:	0068                	addi	a0,sp,12
    1d90:	0002                	c.slli64	zero
    1d92:	0000                	unimp
    1d94:	0105                	addi	sp,sp,1
    1d96:	0900                	addi	s0,sp,144
    1d98:	1c02                	slli	s8,s8,0x20
    1d9a:	0110                	addi	a2,sp,128
    1d9c:	0000                	unimp
    1d9e:	0000                	unimp
    1da0:	0300                	addi	s0,sp,384
    1da2:	0124                	addi	s1,sp,136
    1da4:	0305                	addi	t1,t1,1
    1da6:	00090103          	lb	sp,0(s2)
    1daa:	0100                	addi	s0,sp,128
    1dac:	00090003          	lb	zero,0(s2)
    1db0:	0100                	addi	s0,sp,128
    1db2:	00090003          	lb	zero,0(s2)
    1db6:	0100                	addi	s0,sp,128
    1db8:	00090003          	lb	zero,0(s2)
    1dbc:	0100                	addi	s0,sp,128
    1dbe:	00090103          	lb	sp,0(s2)
    1dc2:	0100                	addi	s0,sp,128
    1dc4:	00090203          	lb	tp,0(s2)
    1dc8:	0100                	addi	s0,sp,128
    1dca:	00090003          	lb	zero,0(s2)
    1dce:	0100                	addi	s0,sp,128
    1dd0:	0105                	addi	sp,sp,1
    1dd2:	0306                	slli	t1,t1,0x1
    1dd4:	097c                	addi	a5,sp,156
    1dd6:	0000                	unimp
    1dd8:	0501                	addi	a0,a0,0
    1dda:	09040303          	lb	t1,144(s0) # ffffffffffff8090 <__BSS_END__+0xfffffffffffe5860>
    1dde:	0010                	0x10
    1de0:	0001                	nop
    1de2:	0402                	c.slli64	s0
    1de4:	0601                	addi	a2,a2,0
    1de6:	04090003          	lb	zero,64(s2)
    1dea:	0100                	addi	s0,sp,128
    1dec:	0200                	addi	s0,sp,256
    1dee:	0104                	addi	s1,sp,128
    1df0:	04090003          	lb	zero,64(s2)
    1df4:	0100                	addi	s0,sp,128
    1df6:	0200                	addi	s0,sp,256
    1df8:	0304                	addi	s1,sp,384
    1dfa:	08090003          	lb	zero,128(s2)
    1dfe:	0100                	addi	s0,sp,128
    1e00:	0200                	addi	s0,sp,256
    1e02:	0904                	addi	s1,sp,144
    1e04:	04090003          	lb	zero,64(s2)
    1e08:	0100                	addi	s0,sp,128
    1e0a:	0200                	addi	s0,sp,256
    1e0c:	0904                	addi	s1,sp,144
    1e0e:	00090003          	lb	zero,0(s2)
    1e12:	0100                	addi	s0,sp,128
    1e14:	0200                	addi	s0,sp,256
    1e16:	0904                	addi	s1,sp,144
    1e18:	00090003          	lb	zero,0(s2)
    1e1c:	0100                	addi	s0,sp,128
    1e1e:	0200                	addi	s0,sp,256
    1e20:	0904                	addi	s1,sp,144
    1e22:	00090003          	lb	zero,0(s2)
    1e26:	0100                	addi	s0,sp,128
    1e28:	0200                	addi	s0,sp,256
    1e2a:	0904                	addi	s1,sp,144
    1e2c:	00090003          	lb	zero,0(s2)
    1e30:	0100                	addi	s0,sp,128
    1e32:	0200                	addi	s0,sp,256
    1e34:	0904                	addi	s1,sp,144
    1e36:	00090003          	lb	zero,0(s2)
    1e3a:	0100                	addi	s0,sp,128
    1e3c:	0200                	addi	s0,sp,256
    1e3e:	0904                	addi	s1,sp,144
    1e40:	00090003          	lb	zero,0(s2)
    1e44:	0100                	addi	s0,sp,128
    1e46:	0200                	addi	s0,sp,256
    1e48:	0904                	addi	s1,sp,144
    1e4a:	00090003          	lb	zero,0(s2)
    1e4e:	0100                	addi	s0,sp,128
    1e50:	0200                	addi	s0,sp,256
    1e52:	0904                	addi	s1,sp,144
    1e54:	10090003          	lb	zero,256(s2)
    1e58:	0100                	addi	s0,sp,128
    1e5a:	0200                	addi	s0,sp,256
    1e5c:	0904                	addi	s1,sp,144
    1e5e:	00090003          	lb	zero,0(s2)
    1e62:	0100                	addi	s0,sp,128
    1e64:	0200                	addi	s0,sp,256
    1e66:	0904                	addi	s1,sp,144
    1e68:	08090003          	lb	zero,128(s2)
    1e6c:	0100                	addi	s0,sp,128
    1e6e:	0200                	addi	s0,sp,256
    1e70:	0904                	addi	s1,sp,144
    1e72:	00090003          	lb	zero,0(s2)
    1e76:	0100                	addi	s0,sp,128
    1e78:	0200                	addi	s0,sp,256
    1e7a:	0904                	addi	s1,sp,144
    1e7c:	00090003          	lb	zero,0(s2)
    1e80:	0100                	addi	s0,sp,128
    1e82:	0200                	addi	s0,sp,256
    1e84:	0904                	addi	s1,sp,144
    1e86:	00090003          	lb	zero,0(s2)
    1e8a:	0100                	addi	s0,sp,128
    1e8c:	0200                	addi	s0,sp,256
    1e8e:	0904                	addi	s1,sp,144
    1e90:	00090003          	lb	zero,0(s2)
    1e94:	0100                	addi	s0,sp,128
    1e96:	0200                	addi	s0,sp,256
    1e98:	0904                	addi	s1,sp,144
    1e9a:	00090003          	lb	zero,0(s2)
    1e9e:	0100                	addi	s0,sp,128
    1ea0:	0200                	addi	s0,sp,256
    1ea2:	0904                	addi	s1,sp,144
    1ea4:	00090003          	lb	zero,0(s2)
    1ea8:	0100                	addi	s0,sp,128
    1eaa:	0200                	addi	s0,sp,256
    1eac:	7904                	ld	s1,48(a0)
    1eae:	0c090003          	lb	zero,192(s2)
    1eb2:	0100                	addi	s0,sp,128
    1eb4:	0200                	addi	s0,sp,256
    1eb6:	7904                	ld	s1,48(a0)
    1eb8:	00090103          	lb	sp,0(s2)
    1ebc:	0100                	addi	s0,sp,128
    1ebe:	0200                	addi	s0,sp,256
    1ec0:	7904                	ld	s1,48(a0)
    1ec2:	00090003          	lb	zero,0(s2)
    1ec6:	0100                	addi	s0,sp,128
    1ec8:	0200                	addi	s0,sp,256
    1eca:	7904                	ld	s1,48(a0)
    1ecc:	00090003          	lb	zero,0(s2)
    1ed0:	0100                	addi	s0,sp,128
    1ed2:	0200                	addi	s0,sp,256
    1ed4:	7904                	ld	s1,48(a0)
    1ed6:	00090003          	lb	zero,0(s2)
    1eda:	0100                	addi	s0,sp,128
    1edc:	0200                	addi	s0,sp,256
    1ede:	7904                	ld	s1,48(a0)
    1ee0:	00090003          	lb	zero,0(s2)
    1ee4:	0100                	addi	s0,sp,128
    1ee6:	0105                	addi	sp,sp,1
    1ee8:	0200                	addi	s0,sp,256
    1eea:	7904                	ld	s1,48(a0)
    1eec:	0306                	slli	t1,t1,0x1
    1eee:	00000903          	lb	s2,0(zero) # 0 <register_fini-0x100b0>
    1ef2:	0501                	addi	a0,a0,0
    1ef4:	04020003          	lb	zero,64(tp) # 1a040 <__BSS_END__+0x7810>
    1ef8:	0379                	addi	t1,t1,30
    1efa:	097d                	addi	s2,s2,31
    1efc:	0008                	0x8
    1efe:	0001                	nop
    1f00:	0402                	c.slli64	s0
    1f02:	0679                	addi	a2,a2,30
    1f04:	14090003          	lb	zero,320(s2)
    1f08:	0100                	addi	s0,sp,128
    1f0a:	0200                	addi	s0,sp,256
    1f0c:	7904                	ld	s1,48(a0)
    1f0e:	00090003          	lb	zero,0(s2)
    1f12:	0100                	addi	s0,sp,128
    1f14:	0200                	addi	s0,sp,256
    1f16:	7904                	ld	s1,48(a0)
    1f18:	00090203          	lb	tp,0(s2)
    1f1c:	0100                	addi	s0,sp,128
    1f1e:	0105                	addi	sp,sp,1
    1f20:	0200                	addi	s0,sp,256
    1f22:	7904                	ld	s1,48(a0)
    1f24:	0306                	slli	t1,t1,0x1
    1f26:	0901                	addi	s2,s2,0
    1f28:	0000                	unimp
    1f2a:	0501                	addi	a0,a0,0
    1f2c:	097c0303          	lb	t1,151(s8)
    1f30:	0010                	0x10
    1f32:	0901                	addi	s2,s2,0
    1f34:	0010                	0x10
    1f36:	0100                	addi	s0,sp,128
    1f38:	7c01                	lui	s8,0xfffe0
    1f3a:	03000003          	lb	zero,48(zero) # 30 <register_fini-0x10080>
    1f3e:	a400                	fsd	fs0,8(s0)
    1f40:	0000                	unimp
    1f42:	0100                	addi	s0,sp,128
    1f44:	fb01                	bnez	a4,1e54 <register_fini-0xe25c>
    1f46:	0d0e                	slli	s10,s10,0x3
    1f48:	0100                	addi	s0,sp,128
    1f4a:	0101                	addi	sp,sp,0
    1f4c:	0001                	nop
    1f4e:	0000                	unimp
    1f50:	0001                	nop
    1f52:	0100                	addi	s0,sp,128
    1f54:	2e2e                	fld	ft8,200(sp)
    1f56:	2f2e2e2f          	0x2f2e2e2f
    1f5a:	2e2e                	fld	ft8,200(sp)
    1f5c:	2f2e2e2f          	0x2f2e2e2f
    1f60:	6972                	ld	s2,280(sp)
    1f62:	2d766373          	csrrsi	t1,0x2d7,12
    1f66:	2f636367          	0x2f636367
    1f6a:	696c                	ld	a1,208(a0)
    1f6c:	6762                	ld	a4,24(sp)
    1f6e:	732f6363          	bltu	t5,s2,2694 <register_fini-0xda1c>
    1f72:	2d74666f          	jal	a2,48a48 <__BSS_END__+0x36218>
    1f76:	7066                	0x7066
    1f78:	2e00                	fld	fs0,24(a2)
    1f7a:	2f2e                	fld	ft10,200(sp)
    1f7c:	2e2e                	fld	ft8,200(sp)
    1f7e:	2f2e2e2f          	0x2f2e2e2f
    1f82:	2e2e                	fld	ft8,200(sp)
    1f84:	7369722f          	0x7369722f
    1f88:	672d7663          	bgeu	s10,s2,25f4 <register_fini-0xdabc>
    1f8c:	6c2f6363          	bltu	t5,sp,2652 <register_fini-0xda5e>
    1f90:	6269                	lui	tp,0x1a
    1f92:	2f636367          	0x2f636367
    1f96:	2e2e                	fld	ft8,200(sp)
    1f98:	636e692f          	0x636e692f
    1f9c:	756c                	ld	a1,232(a0)
    1f9e:	6564                	ld	s1,200(a0)
    1fa0:	0000                	unimp
    1fa2:	7865                	lui	a6,0xffff9
    1fa4:	6574                	ld	a3,200(a0)
    1fa6:	646e                	ld	s0,216(sp)
    1fa8:	66646673          	csrrsi	a2,0x666,8
    1fac:	2e32                	fld	ft8,264(sp)
    1fae:	00010063          	beqz	sp,1fae <register_fini-0xe102>
    1fb2:	7300                	ld	s0,32(a4)
    1fb4:	2d74666f          	jal	a2,48a8a <__BSS_END__+0x3625a>
    1fb8:	7066                	0x7066
    1fba:	682e                	ld	a6,200(sp)
    1fbc:	0100                	addi	s0,sp,128
    1fbe:	0000                	unimp
    1fc0:	676e6973          	csrrsi	s2,0x676,28
    1fc4:	656c                	ld	a1,200(a0)
    1fc6:	682e                	ld	a6,200(sp)
    1fc8:	0100                	addi	s0,sp,128
    1fca:	0000                	unimp
    1fcc:	6f64                	ld	s1,216(a4)
    1fce:	6275                	lui	tp,0x1d
    1fd0:	656c                	ld	a1,200(a0)
    1fd2:	682e                	ld	a6,200(sp)
    1fd4:	0100                	addi	s0,sp,128
    1fd6:	0000                	unimp
    1fd8:	6f6c                	ld	a1,216(a4)
    1fda:	676e                	ld	a4,216(sp)
    1fdc:	6f6c                	ld	a1,216(a4)
    1fde:	676e                	ld	a4,216(sp)
    1fe0:	682e                	ld	a6,200(sp)
    1fe2:	0200                	addi	s0,sp,256
    1fe4:	0000                	unimp
    1fe6:	0500                	addi	s0,sp,640
    1fe8:	0001                	nop
    1fea:	0209                	addi	tp,tp,2
    1fec:	10a0                	addi	s0,sp,104
    1fee:	0001                	nop
    1ff0:	0000                	unimp
    1ff2:	0000                	unimp
    1ff4:	05012503          	lw	a0,80(sp)
    1ff8:	09010303          	lb	t1,144(sp)
    1ffc:	0000                	unimp
    1ffe:	0301                	addi	t1,t1,0
    2000:	0900                	addi	s0,sp,144
    2002:	0000                	unimp
    2004:	0501                	addi	a0,a0,0
    2006:	030d                	addi	t1,t1,3
    2008:	0900                	addi	s0,sp,144
    200a:	0000                	unimp
    200c:	0501                	addi	a0,a0,0
    200e:	09010303          	lb	t1,144(sp)
    2012:	0000                	unimp
    2014:	0301                	addi	t1,t1,0
    2016:	0900                	addi	s0,sp,144
    2018:	0000                	unimp
    201a:	0301                	addi	t1,t1,0
    201c:	0900                	addi	s0,sp,144
    201e:	0000                	unimp
    2020:	0301                	addi	t1,t1,0
    2022:	0900                	addi	s0,sp,144
    2024:	0000                	unimp
    2026:	0301                	addi	t1,t1,0
    2028:	0901                	addi	s2,s2,0
    202a:	0000                	unimp
    202c:	0301                	addi	t1,t1,0
    202e:	0900                	addi	s0,sp,144
    2030:	0000                	unimp
    2032:	0301                	addi	t1,t1,0
    2034:	0900                	addi	s0,sp,144
    2036:	0000                	unimp
    2038:	0301                	addi	t1,t1,0
    203a:	0900                	addi	s0,sp,144
    203c:	0000                	unimp
    203e:	0301                	addi	t1,t1,0
    2040:	0901                	addi	s2,s2,0
    2042:	0000                	unimp
    2044:	0301                	addi	t1,t1,0
    2046:	0902                	c.slli64	s2
    2048:	0000                	unimp
    204a:	0301                	addi	t1,t1,0
    204c:	0901                	addi	s2,s2,0
    204e:	0000                	unimp
    2050:	0301                	addi	t1,t1,0
    2052:	0900                	addi	s0,sp,144
    2054:	0000                	unimp
    2056:	0301                	addi	t1,t1,0
    2058:	0900                	addi	s0,sp,144
    205a:	0000                	unimp
    205c:	0301                	addi	t1,t1,0
    205e:	0900                	addi	s0,sp,144
    2060:	0000                	unimp
    2062:	0501                	addi	a0,a0,0
    2064:	0601                	addi	a2,a2,0
    2066:	04097903          	0x4097903
    206a:	0100                	addi	s0,sp,128
    206c:	0305                	addi	t1,t1,1
    206e:	10090703          	lb	a4,256(s2)
    2072:	0100                	addi	s0,sp,128
    2074:	08090403          	lb	s0,128(s2)
    2078:	0100                	addi	s0,sp,128
    207a:	0105                	addi	sp,sp,1
    207c:	04097503          	0x4097503
    2080:	0100                	addi	s0,sp,128
    2082:	0305                	addi	t1,t1,1
    2084:	04090b03          	lb	s6,64(s2)
    2088:	0100                	addi	s0,sp,128
    208a:	04097c03          	0x4097c03
    208e:	0100                	addi	s0,sp,128
    2090:	0306                	slli	t1,t1,0x1
    2092:	0900                	addi	s0,sp,144
    2094:	0004                	0x4
    2096:	0301                	addi	t1,t1,0
    2098:	0900                	addi	s0,sp,144
    209a:	0000                	unimp
    209c:	0301                	addi	t1,t1,0
    209e:	0900                	addi	s0,sp,144
    20a0:	0000                	unimp
    20a2:	0301                	addi	t1,t1,0
    20a4:	0904                	addi	s1,sp,144
    20a6:	0000                	unimp
    20a8:	0301                	addi	t1,t1,0
    20aa:	0900                	addi	s0,sp,144
    20ac:	0000                	unimp
    20ae:	0301                	addi	t1,t1,0
    20b0:	0900                	addi	s0,sp,144
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
    20c8:	0900                	addi	s0,sp,144
    20ca:	0000                	unimp
    20cc:	0001                	nop
    20ce:	0402                	c.slli64	s0
    20d0:	0301                	addi	t1,t1,0
    20d2:	0900                	addi	s0,sp,144
    20d4:	0004                	0x4
    20d6:	0001                	nop
    20d8:	0402                	c.slli64	s0
    20da:	0301                	addi	t1,t1,0
    20dc:	0900                	addi	s0,sp,144
    20de:	0004                	0x4
    20e0:	0001                	nop
    20e2:	0402                	c.slli64	s0
    20e4:	0301                	addi	t1,t1,0
    20e6:	0900                	addi	s0,sp,144
    20e8:	0000                	unimp
    20ea:	0001                	nop
    20ec:	0402                	c.slli64	s0
    20ee:	0301                	addi	t1,t1,0
    20f0:	0900                	addi	s0,sp,144
    20f2:	0000                	unimp
    20f4:	0001                	nop
    20f6:	0402                	c.slli64	s0
    20f8:	0330                	addi	a2,sp,392
    20fa:	0900                	addi	s0,sp,144
    20fc:	0004                	0x4
    20fe:	0001                	nop
    2100:	0402                	c.slli64	s0
    2102:	0330                	addi	a2,sp,392
    2104:	0900                	addi	s0,sp,144
    2106:	0000                	unimp
    2108:	0001                	nop
    210a:	0402                	c.slli64	s0
    210c:	0330                	addi	a2,sp,392
    210e:	0902                	c.slli64	s2
    2110:	0000                	unimp
    2112:	0001                	nop
    2114:	0402                	c.slli64	s0
    2116:	0330                	addi	a2,sp,392
    2118:	0900                	addi	s0,sp,144
    211a:	0000                	unimp
    211c:	0001                	nop
    211e:	0402                	c.slli64	s0
    2120:	0330                	addi	a2,sp,392
    2122:	0900                	addi	s0,sp,144
    2124:	0000                	unimp
    2126:	0001                	nop
    2128:	0402                	c.slli64	s0
    212a:	0330                	addi	a2,sp,392
    212c:	0900                	addi	s0,sp,144
    212e:	0000                	unimp
    2130:	0001                	nop
    2132:	0402                	c.slli64	s0
    2134:	0330                	addi	a2,sp,392
    2136:	0900                	addi	s0,sp,144
    2138:	0000                	unimp
    213a:	0001                	nop
    213c:	0402                	c.slli64	s0
    213e:	0330                	addi	a2,sp,392
    2140:	0900                	addi	s0,sp,144
    2142:	0014                	0x14
    2144:	0001                	nop
    2146:	0402                	c.slli64	s0
    2148:	0330                	addi	a2,sp,392
    214a:	0900                	addi	s0,sp,144
    214c:	0000                	unimp
    214e:	0001                	nop
    2150:	0402                	c.slli64	s0
    2152:	0330                	addi	a2,sp,392
    2154:	0901                	addi	s2,s2,0
    2156:	0000                	unimp
    2158:	0001                	nop
    215a:	0402                	c.slli64	s0
    215c:	0330                	addi	a2,sp,392
    215e:	0900                	addi	s0,sp,144
    2160:	0000                	unimp
    2162:	0001                	nop
    2164:	0402                	c.slli64	s0
    2166:	0330                	addi	a2,sp,392
    2168:	0900                	addi	s0,sp,144
    216a:	0000                	unimp
    216c:	0001                	nop
    216e:	0402                	c.slli64	s0
    2170:	0330                	addi	a2,sp,392
    2172:	0902                	c.slli64	s2
    2174:	0000                	unimp
    2176:	0501                	addi	a0,a0,0
    2178:	0001                	nop
    217a:	0402                	c.slli64	s0
    217c:	0630                	addi	a2,sp,776
    217e:	00090103          	lb	sp,0(s2)
    2182:	0100                	addi	s0,sp,128
    2184:	0305                	addi	t1,t1,1
    2186:	0200                	addi	s0,sp,256
    2188:	0204                	addi	s1,sp,256
    218a:	0306                	slli	t1,t1,0x1
    218c:	097a                	slli	s2,s2,0x1e
    218e:	0018                	0x18
    2190:	0001                	nop
    2192:	0402                	c.slli64	s0
    2194:	0900030b          	0x900030b
    2198:	0004                	0x4
    219a:	0001                	nop
    219c:	0402                	c.slli64	s0
    219e:	0900030b          	0x900030b
    21a2:	0000                	unimp
    21a4:	0001                	nop
    21a6:	0402                	c.slli64	s0
    21a8:	0900030b          	0x900030b
    21ac:	0000                	unimp
    21ae:	0001                	nop
    21b0:	0402                	c.slli64	s0
    21b2:	0900030b          	0x900030b
    21b6:	0000                	unimp
    21b8:	0001                	nop
    21ba:	0402                	c.slli64	s0
    21bc:	0900030f          	0x900030f
    21c0:	0004                	0x4
    21c2:	0001                	nop
    21c4:	0402                	c.slli64	s0
    21c6:	0900030f          	0x900030f
    21ca:	0000                	unimp
    21cc:	0001                	nop
    21ce:	0402                	c.slli64	s0
    21d0:	0900030f          	0x900030f
    21d4:	0000                	unimp
    21d6:	0001                	nop
    21d8:	0402                	c.slli64	s0
    21da:	0900030f          	0x900030f
    21de:	0000                	unimp
    21e0:	0001                	nop
    21e2:	0402                	c.slli64	s0
    21e4:	0900030f          	0x900030f
    21e8:	0000                	unimp
    21ea:	0001                	nop
    21ec:	0402                	c.slli64	s0
    21ee:	0900030f          	0x900030f
    21f2:	0000                	unimp
    21f4:	0001                	nop
    21f6:	0402                	c.slli64	s0
    21f8:	0900030f          	0x900030f
    21fc:	0000                	unimp
    21fe:	0001                	nop
    2200:	0402                	c.slli64	s0
    2202:	0900030f          	0x900030f
    2206:	0000                	unimp
    2208:	0001                	nop
    220a:	0402                	c.slli64	s0
    220c:	0900030f          	0x900030f
    2210:	0008                	0x8
    2212:	0001                	nop
    2214:	0402                	c.slli64	s0
    2216:	0900030f          	0x900030f
    221a:	0000                	unimp
    221c:	0001                	nop
    221e:	0402                	c.slli64	s0
    2220:	0900030f          	0x900030f
    2224:	0000                	unimp
    2226:	0001                	nop
    2228:	0402                	c.slli64	s0
    222a:	0900030f          	0x900030f
    222e:	0000                	unimp
    2230:	0001                	nop
    2232:	0402                	c.slli64	s0
    2234:	0900030f          	0x900030f
    2238:	0008                	0x8
    223a:	0001                	nop
    223c:	0402                	c.slli64	s0
    223e:	0900030f          	0x900030f
    2242:	0000                	unimp
    2244:	0001                	nop
    2246:	0402                	c.slli64	s0
    2248:	0308                	addi	a0,sp,384
    224a:	0900                	addi	s0,sp,144
    224c:	000c                	0xc
    224e:	0001                	nop
    2250:	0402                	c.slli64	s0
    2252:	0308                	addi	a0,sp,384
    2254:	0900                	addi	s0,sp,144
    2256:	0000                	unimp
    2258:	0001                	nop
    225a:	0402                	c.slli64	s0
    225c:	0322                	slli	t1,t1,0x8
    225e:	0900                	addi	s0,sp,144
    2260:	0008                	0x8
    2262:	0001                	nop
    2264:	0402                	c.slli64	s0
    2266:	0322                	slli	t1,t1,0x8
    2268:	0900                	addi	s0,sp,144
    226a:	0000                	unimp
    226c:	0001                	nop
    226e:	0402                	c.slli64	s0
    2270:	0322                	slli	t1,t1,0x8
    2272:	0900                	addi	s0,sp,144
    2274:	0000                	unimp
    2276:	0001                	nop
    2278:	0402                	c.slli64	s0
    227a:	0322                	slli	t1,t1,0x8
    227c:	0900                	addi	s0,sp,144
    227e:	0000                	unimp
    2280:	0001                	nop
    2282:	0402                	c.slli64	s0
    2284:	0322                	slli	t1,t1,0x8
    2286:	0900                	addi	s0,sp,144
    2288:	0008                	0x8
    228a:	0001                	nop
    228c:	0402                	c.slli64	s0
    228e:	0322                	slli	t1,t1,0x8
    2290:	0900                	addi	s0,sp,144
    2292:	0000                	unimp
    2294:	0001                	nop
    2296:	0402                	c.slli64	s0
    2298:	0322                	slli	t1,t1,0x8
    229a:	0900                	addi	s0,sp,144
    229c:	0000                	unimp
    229e:	0001                	nop
    22a0:	0402                	c.slli64	s0
    22a2:	0322                	slli	t1,t1,0x8
    22a4:	0900                	addi	s0,sp,144
    22a6:	0000                	unimp
    22a8:	0001                	nop
    22aa:	0402                	c.slli64	s0
    22ac:	0322                	slli	t1,t1,0x8
    22ae:	0900                	addi	s0,sp,144
    22b0:	0000                	unimp
    22b2:	0901                	addi	s2,s2,0
    22b4:	000c                	0xc
    22b6:	0100                	addi	s0,sp,128
    22b8:	2301                	sext.w	t1,t1
    22ba:	0004                	0x4
    22bc:	0300                	addi	s0,sp,384
    22be:	a300                	fsd	fs0,0(a4)
    22c0:	0000                	unimp
    22c2:	0100                	addi	s0,sp,128
    22c4:	fb01                	bnez	a4,21d4 <register_fini-0xdedc>
    22c6:	0d0e                	slli	s10,s10,0x3
    22c8:	0100                	addi	s0,sp,128
    22ca:	0101                	addi	sp,sp,0
    22cc:	0001                	nop
    22ce:	0000                	unimp
    22d0:	0001                	nop
    22d2:	0100                	addi	s0,sp,128
    22d4:	2e2e                	fld	ft8,200(sp)
    22d6:	2f2e2e2f          	0x2f2e2e2f
    22da:	2e2e                	fld	ft8,200(sp)
    22dc:	2f2e2e2f          	0x2f2e2e2f
    22e0:	6972                	ld	s2,280(sp)
    22e2:	2d766373          	csrrsi	t1,0x2d7,12
    22e6:	2f636367          	0x2f636367
    22ea:	696c                	ld	a1,208(a0)
    22ec:	6762                	ld	a4,24(sp)
    22ee:	732f6363          	bltu	t5,s2,2a14 <register_fini-0xd69c>
    22f2:	2d74666f          	jal	a2,48dc8 <__BSS_END__+0x36598>
    22f6:	7066                	0x7066
    22f8:	2e00                	fld	fs0,24(a2)
    22fa:	2f2e                	fld	ft10,200(sp)
    22fc:	2e2e                	fld	ft8,200(sp)
    22fe:	2f2e2e2f          	0x2f2e2e2f
    2302:	2e2e                	fld	ft8,200(sp)
    2304:	7369722f          	0x7369722f
    2308:	672d7663          	bgeu	s10,s2,2974 <register_fini-0xd73c>
    230c:	6c2f6363          	bltu	t5,sp,29d2 <register_fini-0xd6de>
    2310:	6269                	lui	tp,0x1a
    2312:	2f636367          	0x2f636367
    2316:	2e2e                	fld	ft8,200(sp)
    2318:	636e692f          	0x636e692f
    231c:	756c                	ld	a1,232(a0)
    231e:	6564                	ld	s1,200(a0)
    2320:	0000                	unimp
    2322:	7274                	ld	a3,224(a2)
    2324:	6e75                	lui	t3,0x1d
    2326:	73666463          	bltu	a2,s6,2a4e <register_fini-0xd662>
    232a:	3266                	fld	ft4,120(sp)
    232c:	632e                	ld	t1,200(sp)
    232e:	0100                	addi	s0,sp,128
    2330:	0000                	unimp
    2332:	74666f73          	csrrsi	t5,0x746,12
    2336:	662d                	lui	a2,0xb
    2338:	2e70                	fld	fa2,216(a2)
    233a:	0068                	addi	a0,sp,12
    233c:	0001                	nop
    233e:	7300                	ld	s0,32(a4)
    2340:	6e69                	lui	t3,0x1a
    2342:	2e656c67          	0x2e656c67
    2346:	0068                	addi	a0,sp,12
    2348:	0001                	nop
    234a:	6400                	ld	s0,8(s0)
    234c:	6c62756f          	jal	a0,29a12 <__BSS_END__+0x171e2>
    2350:	2e65                	addiw	t3,t3,25
    2352:	0068                	addi	a0,sp,12
    2354:	0001                	nop
    2356:	6c00                	ld	s0,24(s0)
    2358:	6c676e6f          	jal	t3,78a1e <__BSS_END__+0x661ee>
    235c:	2e676e6f          	jal	t3,78642 <__BSS_END__+0x65e12>
    2360:	0068                	addi	a0,sp,12
    2362:	0002                	c.slli64	zero
    2364:	0000                	unimp
    2366:	0105                	addi	sp,sp,1
    2368:	0900                	addi	s0,sp,144
    236a:	4402                	lw	s0,0(sp)
    236c:	0111                	addi	sp,sp,4
    236e:	0000                	unimp
    2370:	0000                	unimp
    2372:	0300                	addi	s0,sp,384
    2374:	0124                	addi	s1,sp,136
    2376:	0305                	addi	t1,t1,1
    2378:	00090103          	lb	sp,0(s2)
    237c:	0100                	addi	s0,sp,128
    237e:	00090003          	lb	zero,0(s2)
    2382:	0100                	addi	s0,sp,128
    2384:	0d05                	addi	s10,s10,1
    2386:	00090003          	lb	zero,0(s2)
    238a:	0100                	addi	s0,sp,128
    238c:	0305                	addi	t1,t1,1
    238e:	00090103          	lb	sp,0(s2)
    2392:	0100                	addi	s0,sp,128
    2394:	00090003          	lb	zero,0(s2)
    2398:	0100                	addi	s0,sp,128
    239a:	00090003          	lb	zero,0(s2)
    239e:	0100                	addi	s0,sp,128
    23a0:	00090003          	lb	zero,0(s2)
    23a4:	0100                	addi	s0,sp,128
    23a6:	00090103          	lb	sp,0(s2)
    23aa:	0100                	addi	s0,sp,128
    23ac:	00090003          	lb	zero,0(s2)
    23b0:	0100                	addi	s0,sp,128
    23b2:	00090003          	lb	zero,0(s2)
    23b6:	0100                	addi	s0,sp,128
    23b8:	00090003          	lb	zero,0(s2)
    23bc:	0100                	addi	s0,sp,128
    23be:	00090103          	lb	sp,0(s2)
    23c2:	0100                	addi	s0,sp,128
    23c4:	00090203          	lb	tp,0(s2)
    23c8:	0100                	addi	s0,sp,128
    23ca:	00090103          	lb	sp,0(s2)
    23ce:	0100                	addi	s0,sp,128
    23d0:	00090003          	lb	zero,0(s2)
    23d4:	0100                	addi	s0,sp,128
    23d6:	00090003          	lb	zero,0(s2)
    23da:	0100                	addi	s0,sp,128
    23dc:	00090003          	lb	zero,0(s2)
    23e0:	0100                	addi	s0,sp,128
    23e2:	00090003          	lb	zero,0(s2)
    23e6:	0100                	addi	s0,sp,128
    23e8:	0306                	slli	t1,t1,0x1
    23ea:	0904                	addi	s1,sp,144
    23ec:	0008                	0x8
    23ee:	0301                	addi	t1,t1,0
    23f0:	097c                	addi	a5,sp,156
    23f2:	0004                	0x4
    23f4:	0301                	addi	t1,t1,0
    23f6:	0904                	addi	s1,sp,144
    23f8:	0004                	0x4
    23fa:	0301                	addi	t1,t1,0
    23fc:	097c                	addi	a5,sp,156
    23fe:	0004                	0x4
    2400:	0601                	addi	a2,a2,0
    2402:	04090003          	lb	zero,64(s2)
    2406:	0100                	addi	s0,sp,128
    2408:	00090003          	lb	zero,0(s2)
    240c:	0100                	addi	s0,sp,128
    240e:	04090003          	lb	zero,64(s2)
    2412:	0100                	addi	s0,sp,128
    2414:	00090003          	lb	zero,0(s2)
    2418:	0100                	addi	s0,sp,128
    241a:	00090003          	lb	zero,0(s2)
    241e:	0100                	addi	s0,sp,128
    2420:	00090003          	lb	zero,0(s2)
    2424:	0100                	addi	s0,sp,128
    2426:	04090003          	lb	zero,64(s2)
    242a:	0100                	addi	s0,sp,128
    242c:	00090003          	lb	zero,0(s2)
    2430:	0100                	addi	s0,sp,128
    2432:	00090403          	lb	s0,0(s2)
    2436:	0100                	addi	s0,sp,128
    2438:	00090003          	lb	zero,0(s2)
    243c:	0100                	addi	s0,sp,128
    243e:	00090003          	lb	zero,0(s2)
    2442:	0100                	addi	s0,sp,128
    2444:	00090003          	lb	zero,0(s2)
    2448:	0100                	addi	s0,sp,128
    244a:	00090003          	lb	zero,0(s2)
    244e:	0100                	addi	s0,sp,128
    2450:	0200                	addi	s0,sp,256
    2452:	0104                	addi	s1,sp,128
    2454:	04090003          	lb	zero,64(s2)
    2458:	0100                	addi	s0,sp,128
    245a:	0200                	addi	s0,sp,256
    245c:	0104                	addi	s1,sp,128
    245e:	04090003          	lb	zero,64(s2)
    2462:	0100                	addi	s0,sp,128
    2464:	0200                	addi	s0,sp,256
    2466:	0404                	addi	s1,sp,512
    2468:	08090003          	lb	zero,128(s2)
    246c:	0100                	addi	s0,sp,128
    246e:	0200                	addi	s0,sp,256
    2470:	1104                	addi	s1,sp,160
    2472:	04090003          	lb	zero,64(s2)
    2476:	0100                	addi	s0,sp,128
    2478:	0200                	addi	s0,sp,256
    247a:	1404                	addi	s1,sp,544
    247c:	08090003          	lb	zero,128(s2)
    2480:	0100                	addi	s0,sp,128
    2482:	0200                	addi	s0,sp,256
    2484:	1404                	addi	s1,sp,544
    2486:	0c090003          	lb	zero,192(s2)
    248a:	0100                	addi	s0,sp,128
    248c:	0200                	addi	s0,sp,256
    248e:	3a04                	fld	fs1,48(a2)
    2490:	20090003          	lb	zero,512(s2)
    2494:	0100                	addi	s0,sp,128
    2496:	0200                	addi	s0,sp,256
    2498:	3a04                	fld	fs1,48(a2)
    249a:	00090003          	lb	zero,0(s2)
    249e:	0100                	addi	s0,sp,128
    24a0:	0200                	addi	s0,sp,256
    24a2:	3a04                	fld	fs1,48(a2)
    24a4:	00090203          	lb	tp,0(s2)
    24a8:	0100                	addi	s0,sp,128
    24aa:	0200                	addi	s0,sp,256
    24ac:	3a04                	fld	fs1,48(a2)
    24ae:	00090003          	lb	zero,0(s2)
    24b2:	0100                	addi	s0,sp,128
    24b4:	0200                	addi	s0,sp,256
    24b6:	3a04                	fld	fs1,48(a2)
    24b8:	00090003          	lb	zero,0(s2)
    24bc:	0100                	addi	s0,sp,128
    24be:	0200                	addi	s0,sp,256
    24c0:	3a04                	fld	fs1,48(a2)
    24c2:	00090003          	lb	zero,0(s2)
    24c6:	0100                	addi	s0,sp,128
    24c8:	0200                	addi	s0,sp,256
    24ca:	3a04                	fld	fs1,48(a2)
    24cc:	00090003          	lb	zero,0(s2)
    24d0:	0100                	addi	s0,sp,128
    24d2:	0200                	addi	s0,sp,256
    24d4:	1204                	addi	s1,sp,288
    24d6:	0c097e03          	0xc097e03
    24da:	0100                	addi	s0,sp,128
    24dc:	0200                	addi	s0,sp,256
    24de:	3104                	fld	fs1,32(a0)
    24e0:	0306                	slli	t1,t1,0x1
    24e2:	0900                	addi	s0,sp,144
    24e4:	000c                	0xc
    24e6:	0001                	nop
    24e8:	0402                	c.slli64	s0
    24ea:	0602                	c.slli64	a2
    24ec:	08090003          	lb	zero,128(s2)
    24f0:	0100                	addi	s0,sp,128
    24f2:	0200                	addi	s0,sp,256
    24f4:	2304                	fld	fs1,0(a4)
    24f6:	04090003          	lb	zero,64(s2)
    24fa:	0100                	addi	s0,sp,128
    24fc:	0200                	addi	s0,sp,256
    24fe:	2304                	fld	fs1,0(a4)
    2500:	00090003          	lb	zero,0(s2)
    2504:	0100                	addi	s0,sp,128
    2506:	0200                	addi	s0,sp,256
    2508:	2304                	fld	fs1,0(a4)
    250a:	00090003          	lb	zero,0(s2)
    250e:	0100                	addi	s0,sp,128
    2510:	0200                	addi	s0,sp,256
    2512:	2304                	fld	fs1,0(a4)
    2514:	00090003          	lb	zero,0(s2)
    2518:	0100                	addi	s0,sp,128
    251a:	0200                	addi	s0,sp,256
    251c:	2304                	fld	fs1,0(a4)
    251e:	00090003          	lb	zero,0(s2)
    2522:	0100                	addi	s0,sp,128
    2524:	0200                	addi	s0,sp,256
    2526:	2004                	fld	fs1,0(s0)
    2528:	08090003          	lb	zero,128(s2)
    252c:	0100                	addi	s0,sp,128
    252e:	0200                	addi	s0,sp,256
    2530:	2004                	fld	fs1,0(s0)
    2532:	00090003          	lb	zero,0(s2)
    2536:	0100                	addi	s0,sp,128
    2538:	0200                	addi	s0,sp,256
    253a:	3104                	fld	fs1,32(a0)
    253c:	08090003          	lb	zero,128(s2)
    2540:	0100                	addi	s0,sp,128
    2542:	0200                	addi	s0,sp,256
    2544:	3104                	fld	fs1,32(a0)
    2546:	00090003          	lb	zero,0(s2)
    254a:	0100                	addi	s0,sp,128
    254c:	0200                	addi	s0,sp,256
    254e:	3104                	fld	fs1,32(a0)
    2550:	00090003          	lb	zero,0(s2)
    2554:	0100                	addi	s0,sp,128
    2556:	0200                	addi	s0,sp,256
    2558:	3104                	fld	fs1,32(a0)
    255a:	00090003          	lb	zero,0(s2)
    255e:	0100                	addi	s0,sp,128
    2560:	0200                	addi	s0,sp,256
    2562:	3104                	fld	fs1,32(a0)
    2564:	00090003          	lb	zero,0(s2)
    2568:	0100                	addi	s0,sp,128
    256a:	0200                	addi	s0,sp,256
    256c:	3104                	fld	fs1,32(a0)
    256e:	00090003          	lb	zero,0(s2)
    2572:	0100                	addi	s0,sp,128
    2574:	0200                	addi	s0,sp,256
    2576:	3104                	fld	fs1,32(a0)
    2578:	08090003          	lb	zero,128(s2)
    257c:	0100                	addi	s0,sp,128
    257e:	0200                	addi	s0,sp,256
    2580:	3104                	fld	fs1,32(a0)
    2582:	00090003          	lb	zero,0(s2)
    2586:	0100                	addi	s0,sp,128
    2588:	0200                	addi	s0,sp,256
    258a:	3104                	fld	fs1,32(a0)
    258c:	00090003          	lb	zero,0(s2)
    2590:	0100                	addi	s0,sp,128
    2592:	0200                	addi	s0,sp,256
    2594:	2f04                	fld	fs1,24(a4)
    2596:	10090203          	lb	tp,256(s2)
    259a:	0100                	addi	s0,sp,128
    259c:	0200                	addi	s0,sp,256
    259e:	2f04                	fld	fs1,24(a4)
    25a0:	00090003          	lb	zero,0(s2)
    25a4:	0100                	addi	s0,sp,128
    25a6:	0200                	addi	s0,sp,256
    25a8:	2f04                	fld	fs1,24(a4)
    25aa:	00090003          	lb	zero,0(s2)
    25ae:	0100                	addi	s0,sp,128
    25b0:	0200                	addi	s0,sp,256
    25b2:	3f04                	fld	fs1,56(a4)
    25b4:	08090003          	lb	zero,128(s2)
    25b8:	0100                	addi	s0,sp,128
    25ba:	0200                	addi	s0,sp,256
    25bc:	3f04                	fld	fs1,56(a4)
    25be:	00090003          	lb	zero,0(s2)
    25c2:	0100                	addi	s0,sp,128
    25c4:	0200                	addi	s0,sp,256
    25c6:	3f04                	fld	fs1,56(a4)
    25c8:	04090003          	lb	zero,64(s2)
    25cc:	0100                	addi	s0,sp,128
    25ce:	0306                	slli	t1,t1,0x1
    25d0:	0900                	addi	s0,sp,144
    25d2:	0008                	0x8
    25d4:	0001                	nop
    25d6:	0402                	c.slli64	s0
    25d8:	0003064f          	fnmadd.s	fa2,ft6,ft0,ft0,rne
    25dc:	0c09                	addi	s8,s8,2
    25de:	0100                	addi	s0,sp,128
    25e0:	0200                	addi	s0,sp,256
    25e2:	4f04                	lw	s1,24(a4)
    25e4:	00090003          	lb	zero,0(s2)
    25e8:	0100                	addi	s0,sp,128
    25ea:	0200                	addi	s0,sp,256
    25ec:	4f04                	lw	s1,24(a4)
    25ee:	08090003          	lb	zero,128(s2)
    25f2:	0100                	addi	s0,sp,128
    25f4:	0200                	addi	s0,sp,256
    25f6:	5004                	lw	s1,32(s0)
    25f8:	0306                	slli	t1,t1,0x1
    25fa:	0900                	addi	s0,sp,144
    25fc:	0004                	0x4
    25fe:	0301                	addi	t1,t1,0
    2600:	0900                	addi	s0,sp,144
    2602:	0004                	0x4
    2604:	0001                	nop
    2606:	0402                	c.slli64	s0
    2608:	065a                	slli	a2,a2,0x16
    260a:	08090003          	lb	zero,128(s2)
    260e:	0100                	addi	s0,sp,128
    2610:	0200                	addi	s0,sp,256
    2612:	5a04                	lw	s1,48(a2)
    2614:	00090003          	lb	zero,0(s2)
    2618:	0100                	addi	s0,sp,128
    261a:	0200                	addi	s0,sp,256
    261c:	5a04                	lw	s1,48(a2)
    261e:	00090003          	lb	zero,0(s2)
    2622:	0100                	addi	s0,sp,128
    2624:	0200                	addi	s0,sp,256
    2626:	5a04                	lw	s1,48(a2)
    2628:	00090003          	lb	zero,0(s2)
    262c:	0100                	addi	s0,sp,128
    262e:	0200                	addi	s0,sp,256
    2630:	5a04                	lw	s1,48(a2)
    2632:	00090003          	lb	zero,0(s2)
    2636:	0100                	addi	s0,sp,128
    2638:	0200                	addi	s0,sp,256
    263a:	5a04                	lw	s1,48(a2)
    263c:	00090003          	lb	zero,0(s2)
    2640:	0100                	addi	s0,sp,128
    2642:	0200                	addi	s0,sp,256
    2644:	5a04                	lw	s1,48(a2)
    2646:	00090003          	lb	zero,0(s2)
    264a:	0100                	addi	s0,sp,128
    264c:	0200                	addi	s0,sp,256
    264e:	5a04                	lw	s1,48(a2)
    2650:	18090003          	lb	zero,384(s2)
    2654:	0100                	addi	s0,sp,128
    2656:	0200                	addi	s0,sp,256
    2658:	5a04                	lw	s1,48(a2)
    265a:	00090003          	lb	zero,0(s2)
    265e:	0100                	addi	s0,sp,128
    2660:	0200                	addi	s0,sp,256
    2662:	5a04                	lw	s1,48(a2)
    2664:	00090003          	lb	zero,0(s2)
    2668:	0100                	addi	s0,sp,128
    266a:	0200                	addi	s0,sp,256
    266c:	5a04                	lw	s1,48(a2)
    266e:	00090103          	lb	sp,0(s2)
    2672:	0100                	addi	s0,sp,128
    2674:	0200                	addi	s0,sp,256
    2676:	5a04                	lw	s1,48(a2)
    2678:	00090003          	lb	zero,0(s2)
    267c:	0100                	addi	s0,sp,128
    267e:	0200                	addi	s0,sp,256
    2680:	5a04                	lw	s1,48(a2)
    2682:	00090003          	lb	zero,0(s2)
    2686:	0100                	addi	s0,sp,128
    2688:	0200                	addi	s0,sp,256
    268a:	5a04                	lw	s1,48(a2)
    268c:	00090203          	lb	tp,0(s2)
    2690:	0100                	addi	s0,sp,128
    2692:	0105                	addi	sp,sp,1
    2694:	0200                	addi	s0,sp,256
    2696:	5a04                	lw	s1,48(a2)
    2698:	0306                	slli	t1,t1,0x1
    269a:	0901                	addi	s2,s2,0
    269c:	0000                	unimp
    269e:	0501                	addi	a0,a0,0
    26a0:	097a0303          	lb	t1,151(s4)
    26a4:	0008                	0x8
    26a6:	0001                	nop
    26a8:	0402                	c.slli64	s0
    26aa:	0625                	addi	a2,a2,9
    26ac:	08090203          	lb	tp,128(s2)
    26b0:	0100                	addi	s0,sp,128
    26b2:	0200                	addi	s0,sp,256
    26b4:	2504                	fld	fs1,8(a0)
    26b6:	00090003          	lb	zero,0(s2)
    26ba:	0100                	addi	s0,sp,128
    26bc:	0200                	addi	s0,sp,256
    26be:	2504                	fld	fs1,8(a0)
    26c0:	00090003          	lb	zero,0(s2)
    26c4:	0100                	addi	s0,sp,128
    26c6:	0200                	addi	s0,sp,256
    26c8:	2504                	fld	fs1,8(a0)
    26ca:	00090003          	lb	zero,0(s2)
    26ce:	0100                	addi	s0,sp,128
    26d0:	0200                	addi	s0,sp,256
    26d2:	2c04                	fld	fs1,24(s0)
    26d4:	0c090003          	lb	zero,192(s2)
    26d8:	0100                	addi	s0,sp,128
    26da:	1009                	c.nop	-30
    26dc:	0000                	unimp
    26de:	0101                	addi	sp,sp,0
    26e0:	02b0                	addi	a2,sp,328
    26e2:	0000                	unimp
    26e4:	02140003          	lb	zero,33(s0)
    26e8:	0000                	unimp
    26ea:	0101                	addi	sp,sp,0
    26ec:	000d0efb          	0xd0efb
    26f0:	0101                	addi	sp,sp,0
    26f2:	0101                	addi	sp,sp,0
    26f4:	0000                	unimp
    26f6:	0100                	addi	s0,sp,128
    26f8:	0000                	unimp
    26fa:	2e01                	sext.w	t3,t3
    26fc:	2f2e                	fld	ft10,200(sp)
    26fe:	2e2e                	fld	ft8,200(sp)
    2700:	2f2e2e2f          	0x2f2e2e2f
    2704:	2e2e                	fld	ft8,200(sp)
    2706:	7369722f          	0x7369722f
    270a:	672d7663          	bgeu	s10,s2,2d76 <register_fini-0xd33a>
    270e:	6c2f6363          	bltu	t5,sp,2dd4 <register_fini-0xd2dc>
    2712:	6269                	lui	tp,0x1a
    2714:	00636367          	0x636367
    2718:	6d6f682f          	0x6d6f682f
    271c:	2f65                	addiw	t5,t5,25
    271e:	6172                	ld	sp,280(sp)
    2720:	6e69                	lui	t3,0x1a
    2722:	77616873          	csrrsi	a6,0x776,2
    2726:	756f732f          	0x756f732f
    272a:	6372                	ld	t1,280(sp)
    272c:	2d65                	addiw	s10,s10,25
    272e:	65646f63          	bltu	s0,s6,2d8c <register_fini-0xd324>
    2732:	7369722f          	0x7369722f
    2736:	672d7663          	bgeu	s10,s2,2da2 <register_fini-0xd30e>
    273a:	756e                	ld	a0,248(sp)
    273c:	742d                	lui	s0,0xfffeb
    273e:	636c6f6f          	jal	t5,c8d74 <__BSS_END__+0xb6544>
    2742:	6168                	ld	a0,192(a0)
    2744:	6e69                	lui	t3,0x1a
    2746:	3676722f          	0x3676722f
    274a:	6934                	ld	a3,80(a0)
    274c:	2d6d                	addiw	s10,s10,27
    274e:	7562                	ld	a0,56(sp)
    2750:	6c69                	lui	s8,0x1a
    2752:	2f64                	fld	fs1,216(a4)
    2754:	7562                	ld	a0,56(sp)
    2756:	6c69                	lui	s8,0x1a
    2758:	2d64                	fld	fs1,216(a0)
    275a:	2d636367          	0x2d636367
    275e:	656e                	ld	a0,216(sp)
    2760:	62696c77          	0x62696c77
    2764:	732d                	lui	t1,0xfffeb
    2766:	6174                	ld	a3,192(a0)
    2768:	2f326567          	0x2f326567
    276c:	2f636367          	0x2f636367
    2770:	6e69                	lui	t3,0x1a
    2772:	64756c63          	bltu	a0,t2,2dca <register_fini-0xd2e6>
    2776:	0065                	c.nop	25
    2778:	6d6f682f          	0x6d6f682f
    277c:	2f65                	addiw	t5,t5,25
    277e:	6172                	ld	sp,280(sp)
    2780:	6e69                	lui	t3,0x1a
    2782:	77616873          	csrrsi	a6,0x776,2
    2786:	7369722f          	0x7369722f
    278a:	722f7663          	bgeu	t5,sp,2eb6 <register_fini-0xd1fa>
    278e:	7369                	lui	t1,0xffffa
    2790:	34367663          	bgeu	a2,gp,2adc <register_fini-0xd5d4>
    2794:	6d69                	lui	s10,0x1a
    2796:	7369722f          	0x7369722f
    279a:	34367663          	bgeu	a2,gp,2ae6 <register_fini-0xd5ca>
    279e:	752d                	lui	a0,0xfffeb
    27a0:	6b6e                	ld	s6,216(sp)
    27a2:	6f6e                	ld	t5,216(sp)
    27a4:	652d6e77          	0x652d6e77
    27a8:	666c                	ld	a1,200(a2)
    27aa:	636e692f          	0x636e692f
    27ae:	756c                	ld	a1,232(a0)
    27b0:	6564                	ld	s1,200(a0)
    27b2:	7379732f          	0x7379732f
    27b6:	2f00                	fld	fs0,24(a4)
    27b8:	6f68                	ld	a0,216(a4)
    27ba:	656d                	lui	a0,0x1b
    27bc:	6961722f          	0x6961722f
    27c0:	736e                	ld	t1,248(sp)
    27c2:	6168                	ld	a0,192(a0)
    27c4:	69722f77          	0x69722f77
    27c8:	2f766373          	csrrsi	t1,0x2f7,12
    27cc:	6972                	ld	s2,280(sp)
    27ce:	36766373          	csrrsi	t1,0x367,12
    27d2:	6934                	ld	a3,80(a0)
    27d4:	2f6d                	addiw	t5,t5,27
    27d6:	6972                	ld	s2,280(sp)
    27d8:	36766373          	csrrsi	t1,0x367,12
    27dc:	2d34                	fld	fa3,88(a0)
    27de:	6e75                	lui	t3,0x1d
    27e0:	776f6e6b          	0x776f6e6b
    27e4:	2d6e                	fld	fs10,216(sp)
    27e6:	6c65                	lui	s8,0x19
    27e8:	2f66                	fld	ft10,88(sp)
    27ea:	6e69                	lui	t3,0x1a
    27ec:	64756c63          	bltu	a0,t2,2e44 <register_fini-0xd26c>
    27f0:	0065                	c.nop	25
    27f2:	2e2e                	fld	ft8,200(sp)
    27f4:	2f2e2e2f          	0x2f2e2e2f
    27f8:	2e2e                	fld	ft8,200(sp)
    27fa:	2f2e2e2f          	0x2f2e2e2f
    27fe:	6972                	ld	s2,280(sp)
    2800:	2d766373          	csrrsi	t1,0x2d7,12
    2804:	2f636367          	0x2f636367
    2808:	696c                	ld	a1,208(a0)
    280a:	6762                	ld	a4,24(sp)
    280c:	2e2f6363          	bltu	t5,sp,2af2 <register_fini-0xd5be>
    2810:	2f2e                	fld	ft10,200(sp)
    2812:	6e69                	lui	t3,0x1a
    2814:	64756c63          	bltu	a0,t2,2e6c <register_fini-0xd244>
    2818:	0065                	c.nop	25
    281a:	2e2e                	fld	ft8,200(sp)
    281c:	2f2e2e2f          	0x2f2e2e2f
    2820:	2e2e                	fld	ft8,200(sp)
    2822:	2f2e2e2f          	0x2f2e2e2f
    2826:	6972                	ld	s2,280(sp)
    2828:	2d766373          	csrrsi	t1,0x2d7,12
    282c:	2f636367          	0x2f636367
    2830:	696c                	ld	a1,208(a0)
    2832:	6762                	ld	a4,24(sp)
    2834:	2e2f6363          	bltu	t5,sp,2b1a <register_fini-0xd596>
    2838:	2f2e                	fld	ft10,200(sp)
    283a:	2f636367          	0x2f636367
    283e:	666e6f63          	bltu	t3,t1,2ebc <register_fini-0xd1f4>
    2842:	6769                	lui	a4,0x1a
    2844:	7369722f          	0x7369722f
    2848:	2e007663          	bgeu	zero,zero,2b34 <register_fini-0xd57c>
    284c:	2f2e                	fld	ft10,200(sp)
    284e:	2e2e                	fld	ft8,200(sp)
    2850:	672f2e2f          	amoand.w.aqrl	t3,s2,(t5)
    2854:	00006363          	bltu	zero,zero,285a <register_fini-0xd856>
    2858:	696c                	ld	a1,208(a0)
    285a:	6762                	ld	a4,24(sp)
    285c:	2e326363          	bltu	tp,gp,2b42 <register_fini-0xd56e>
    2860:	00010063          	beqz	sp,2860 <register_fini-0xd850>
    2864:	7300                	ld	s0,32(a4)
    2866:	6474                	ld	a3,200(s0)
    2868:	6564                	ld	s1,200(a0)
    286a:	2e66                	fld	ft8,88(sp)
    286c:	0068                	addi	a0,sp,12
    286e:	0002                	c.slli64	zero
    2870:	5f00                	lw	s0,56(a4)
    2872:	7974                	ld	a3,240(a0)
    2874:	6570                	ld	a2,200(a0)
    2876:	00682e73          	csrrs	t3,0x6,a6
    287a:	72000003          	lb	zero,1824(zero) # 720 <register_fini-0xf990>
    287e:	6565                	lui	a0,0x19
    2880:	746e                	ld	s0,248(sp)
    2882:	682e                	ld	a6,200(sp)
    2884:	0300                	addi	s0,sp,384
    2886:	0000                	unimp
    2888:	6f6c                	ld	a1,216(a4)
    288a:	682e6b63          	bltu	t3,sp,2f20 <register_fini-0xd190>
    288e:	0300                	addi	s0,sp,384
    2890:	0000                	unimp
    2892:	7265                	lui	tp,0xffff9
    2894:	6e72                	ld	t3,280(sp)
    2896:	00682e6f          	jal	t3,8489c <__BSS_END__+0x7206c>
    289a:	73000003          	lb	zero,1840(zero) # 730 <register_fini-0xf980>
    289e:	6474                	ld	a3,200(s0)
    28a0:	696c                	ld	a1,208(a0)
    28a2:	2e62                	fld	ft8,24(sp)
    28a4:	0068                	addi	a0,sp,12
    28a6:	0004                	0x4
    28a8:	7500                	ld	s0,40(a0)
    28aa:	696e                	ld	s2,216(sp)
    28ac:	2e647473          	csrrci	s0,0x2e6,8
    28b0:	0068                	addi	a0,sp,12
    28b2:	74000003          	lb	zero,1856(zero) # 740 <register_fini-0xf970>
    28b6:	6d69                	lui	s10,0x1a
    28b8:	2e65                	addiw	t3,t3,25
    28ba:	0068                	addi	a0,sp,12
    28bc:	0004                	0x4
    28be:	6800                	ld	s0,16(s0)
    28c0:	7361                	lui	t1,0xffff8
    28c2:	7468                	ld	a0,232(s0)
    28c4:	6261                	lui	tp,0x18
    28c6:	682e                	ld	a6,200(sp)
    28c8:	0500                	addi	s0,sp,640
    28ca:	0000                	unimp
    28cc:	6972                	ld	s2,280(sp)
    28ce:	2d766373          	csrrsi	t1,0x2d7,12
    28d2:	7374706f          	j	4a808 <__BSS_END__+0x37fd8>
    28d6:	682e                	ld	a6,200(sp)
    28d8:	0600                	addi	s0,sp,768
    28da:	0000                	unimp
    28dc:	6e69                	lui	t3,0x1a
    28de:	632d6e73          	csrrsi	t3,0x632,26
    28e2:	74736e6f          	jal	t3,39828 <__BSS_END__+0x26ff8>
    28e6:	6e61                	lui	t3,0x18
    28e8:	7374                	ld	a3,224(a4)
    28ea:	682e                	ld	a6,200(sp)
    28ec:	0700                	addi	s0,sp,896
    28ee:	0000                	unimp
    28f0:	696c                	ld	a1,208(a0)
    28f2:	6762                	ld	a4,24(sp)
    28f4:	2e326363          	bltu	tp,gp,2bda <register_fini-0xd4d6>
    28f8:	0068                	addi	a0,sp,12
    28fa:	0001                	nop
    28fc:	0000                	unimp
    28fe:	0105                	addi	sp,sp,1
    2900:	0900                	addi	s0,sp,144
    2902:	7402                	ld	s0,32(sp)
    2904:	0112                	slli	sp,sp,0x4
    2906:	0000                	unimp
    2908:	0000                	unimp
    290a:	0300                	addi	s0,sp,384
    290c:	05c2                	slli	a1,a1,0x10
    290e:	0501                	addi	a0,a0,0
    2910:	09010303          	lb	t1,144(sp)
    2914:	0000                	unimp
    2916:	0301                	addi	t1,t1,0
    2918:	0902                	c.slli64	s2
    291a:	0000                	unimp
    291c:	0301                	addi	t1,t1,0
    291e:	0900                	addi	s0,sp,144
    2920:	0000                	unimp
    2922:	0301                	addi	t1,t1,0
    2924:	0900                	addi	s0,sp,144
    2926:	0000                	unimp
    2928:	0301                	addi	t1,t1,0
    292a:	0900                	addi	s0,sp,144
    292c:	0000                	unimp
    292e:	0301                	addi	t1,t1,0
    2930:	0900                	addi	s0,sp,144
    2932:	0000                	unimp
    2934:	0301                	addi	t1,t1,0
    2936:	0900                	addi	s0,sp,144
    2938:	0000                	unimp
    293a:	0001                	nop
    293c:	0402                	c.slli64	s0
    293e:	0314                	addi	a3,sp,384
    2940:	0900                	addi	s0,sp,144
    2942:	0004                	0x4
    2944:	0001                	nop
    2946:	0402                	c.slli64	s0
    2948:	0312                	slli	t1,t1,0x4
    294a:	0900                	addi	s0,sp,144
    294c:	000c                	0xc
    294e:	0001                	nop
    2950:	0402                	c.slli64	s0
    2952:	0312                	slli	t1,t1,0x4
    2954:	0900                	addi	s0,sp,144
    2956:	0004                	0x4
    2958:	0001                	nop
    295a:	0402                	c.slli64	s0
    295c:	0315                	addi	t1,t1,5
    295e:	0900                	addi	s0,sp,144
    2960:	0004                	0x4
    2962:	0001                	nop
    2964:	0402                	c.slli64	s0
    2966:	0315                	addi	t1,t1,5
    2968:	0900                	addi	s0,sp,144
    296a:	0000                	unimp
    296c:	0001                	nop
    296e:	0402                	c.slli64	s0
    2970:	0315                	addi	t1,t1,5
    2972:	0902                	c.slli64	s2
    2974:	0000                	unimp
    2976:	0001                	nop
    2978:	0402                	c.slli64	s0
    297a:	0615                	addi	a2,a2,5
    297c:	00097e03          	0x97e03
    2980:	0100                	addi	s0,sp,128
    2982:	0105                	addi	sp,sp,1
    2984:	0200                	addi	s0,sp,256
    2986:	1504                	addi	s1,sp,672
    2988:	1c090303          	lb	t1,448(s2)
    298c:	0100                	addi	s0,sp,128
    298e:	0809                	addi	a6,a6,2
    2990:	0000                	unimp
    2992:	0101                	addi	sp,sp,0
    2994:	021a                	slli	tp,tp,0x6
    2996:	0000                	unimp
    2998:	02140003          	lb	zero,33(s0) # fffffffffffeb021 <__BSS_END__+0xfffffffffffd87f1>
    299c:	0000                	unimp
    299e:	0101                	addi	sp,sp,0
    29a0:	000d0efb          	0xd0efb
    29a4:	0101                	addi	sp,sp,0
    29a6:	0101                	addi	sp,sp,0
    29a8:	0000                	unimp
    29aa:	0100                	addi	s0,sp,128
    29ac:	0000                	unimp
    29ae:	2f01                	sext.w	t5,t5
    29b0:	6f68                	ld	a0,216(a4)
    29b2:	656d                	lui	a0,0x1b
    29b4:	6961722f          	0x6961722f
    29b8:	736e                	ld	t1,248(sp)
    29ba:	6168                	ld	a0,192(a0)
    29bc:	6f732f77          	0x6f732f77
    29c0:	7275                	lui	tp,0xffffd
    29c2:	632d6563          	bltu	s10,s2,2fec <register_fini-0xd0c4>
    29c6:	2f65646f          	jal	s0,58cbc <__BSS_END__+0x4648c>
    29ca:	6972                	ld	s2,280(sp)
    29cc:	2d766373          	csrrsi	t1,0x2d7,12
    29d0:	2d756e67          	0x2d756e67
    29d4:	6f74                	ld	a3,216(a4)
    29d6:	68636c6f          	jal	s8,3905c <__BSS_END__+0x2682c>
    29da:	6961                	lui	s2,0x18
    29dc:	2f6e                	fld	ft10,216(sp)
    29de:	7672                	ld	a2,312(sp)
    29e0:	3436                	fld	fs0,360(sp)
    29e2:	6d69                	lui	s10,0x1a
    29e4:	622d                	lui	tp,0xb
    29e6:	6975                	lui	s2,0x1d
    29e8:	646c                	ld	a1,200(s0)
    29ea:	6975622f          	0x6975622f
    29ee:	646c                	ld	a1,200(s0)
    29f0:	672d                	lui	a4,0xb
    29f2:	6e2d6363          	bltu	s10,sp,30d8 <register_fini-0xcfd8>
    29f6:	7765                	lui	a4,0xffff9
    29f8:	696c                	ld	a1,208(a0)
    29fa:	2d62                	fld	fs10,24(sp)
    29fc:	67617473          	csrrci	s0,0x676,2
    2a00:	3265                	addiw	tp,tp,-7
    2a02:	6363672f          	0x6363672f
    2a06:	636e692f          	0x636e692f
    2a0a:	756c                	ld	a1,232(a0)
    2a0c:	6564                	ld	s1,200(a0)
    2a0e:	2f00                	fld	fs0,24(a4)
    2a10:	6f68                	ld	a0,216(a4)
    2a12:	656d                	lui	a0,0x1b
    2a14:	6961722f          	0x6961722f
    2a18:	736e                	ld	t1,248(sp)
    2a1a:	6168                	ld	a0,192(a0)
    2a1c:	69722f77          	0x69722f77
    2a20:	2f766373          	csrrsi	t1,0x2f7,12
    2a24:	6972                	ld	s2,280(sp)
    2a26:	36766373          	csrrsi	t1,0x367,12
    2a2a:	6934                	ld	a3,80(a0)
    2a2c:	2f6d                	addiw	t5,t5,27
    2a2e:	6972                	ld	s2,280(sp)
    2a30:	36766373          	csrrsi	t1,0x367,12
    2a34:	2d34                	fld	fa3,88(a0)
    2a36:	6e75                	lui	t3,0x1d
    2a38:	776f6e6b          	0x776f6e6b
    2a3c:	2d6e                	fld	fs10,216(sp)
    2a3e:	6c65                	lui	s8,0x19
    2a40:	2f66                	fld	ft10,88(sp)
    2a42:	6e69                	lui	t3,0x1a
    2a44:	64756c63          	bltu	a0,t2,309c <register_fini-0xd014>
    2a48:	2f65                	addiw	t5,t5,25
    2a4a:	00737973          	csrrci	s2,0x7,6
    2a4e:	6d6f682f          	0x6d6f682f
    2a52:	2f65                	addiw	t5,t5,25
    2a54:	6172                	ld	sp,280(sp)
    2a56:	6e69                	lui	t3,0x1a
    2a58:	77616873          	csrrsi	a6,0x776,2
    2a5c:	7369722f          	0x7369722f
    2a60:	722f7663          	bgeu	t5,sp,318c <register_fini-0xcf24>
    2a64:	7369                	lui	t1,0xffffa
    2a66:	34367663          	bgeu	a2,gp,2db2 <register_fini-0xd2fe>
    2a6a:	6d69                	lui	s10,0x1a
    2a6c:	7369722f          	0x7369722f
    2a70:	34367663          	bgeu	a2,gp,2dbc <register_fini-0xd2f4>
    2a74:	752d                	lui	a0,0xfffeb
    2a76:	6b6e                	ld	s6,216(sp)
    2a78:	6f6e                	ld	t5,216(sp)
    2a7a:	652d6e77          	0x652d6e77
    2a7e:	666c                	ld	a1,200(a2)
    2a80:	636e692f          	0x636e692f
    2a84:	756c                	ld	a1,232(a0)
    2a86:	6564                	ld	s1,200(a0)
    2a88:	2e00                	fld	fs0,24(a2)
    2a8a:	2f2e                	fld	ft10,200(sp)
    2a8c:	2e2e                	fld	ft8,200(sp)
    2a8e:	2f2e2e2f          	0x2f2e2e2f
    2a92:	2e2e                	fld	ft8,200(sp)
    2a94:	7369722f          	0x7369722f
    2a98:	672d7663          	bgeu	s10,s2,3104 <register_fini-0xcfac>
    2a9c:	6c2f6363          	bltu	t5,sp,3162 <register_fini-0xcf4e>
    2aa0:	6269                	lui	tp,0x1a
    2aa2:	2f636367          	0x2f636367
    2aa6:	2e2e                	fld	ft8,200(sp)
    2aa8:	636e692f          	0x636e692f
    2aac:	756c                	ld	a1,232(a0)
    2aae:	6564                	ld	s1,200(a0)
    2ab0:	2e00                	fld	fs0,24(a2)
    2ab2:	2f2e                	fld	ft10,200(sp)
    2ab4:	2e2e                	fld	ft8,200(sp)
    2ab6:	2f2e2e2f          	0x2f2e2e2f
    2aba:	2e2e                	fld	ft8,200(sp)
    2abc:	7369722f          	0x7369722f
    2ac0:	672d7663          	bgeu	s10,s2,312c <register_fini-0xcf84>
    2ac4:	6c2f6363          	bltu	t5,sp,318a <register_fini-0xcf26>
    2ac8:	6269                	lui	tp,0x1a
    2aca:	2f636367          	0x2f636367
    2ace:	2e2e                	fld	ft8,200(sp)
    2ad0:	6363672f          	0x6363672f
    2ad4:	6e6f632f          	0x6e6f632f
    2ad8:	6966                	ld	s2,88(sp)
    2ada:	69722f67          	0x69722f67
    2ade:	00766373          	csrrsi	t1,0x7,12
    2ae2:	2e2e                	fld	ft8,200(sp)
    2ae4:	2f2e2e2f          	0x2f2e2e2f
    2ae8:	2f2e                	fld	ft10,200(sp)
    2aea:	00636367          	0x636367
    2aee:	2e2e                	fld	ft8,200(sp)
    2af0:	2f2e2e2f          	0x2f2e2e2f
    2af4:	2e2e                	fld	ft8,200(sp)
    2af6:	2f2e2e2f          	0x2f2e2e2f
    2afa:	6972                	ld	s2,280(sp)
    2afc:	2d766373          	csrrsi	t1,0x2d7,12
    2b00:	2f636367          	0x2f636367
    2b04:	696c                	ld	a1,208(a0)
    2b06:	6762                	ld	a4,24(sp)
    2b08:	00006363          	bltu	zero,zero,2b0e <register_fini-0xd5a2>
    2b0c:	64647473          	csrrci	s0,0x646,8
    2b10:	6665                	lui	a2,0x19
    2b12:	682e                	ld	a6,200(sp)
    2b14:	0100                	addi	s0,sp,128
    2b16:	0000                	unimp
    2b18:	745f 7079 7365      	0x73657079745f
    2b1e:	682e                	ld	a6,200(sp)
    2b20:	0200                	addi	s0,sp,256
    2b22:	0000                	unimp
    2b24:	6572                	ld	a0,280(sp)
    2b26:	6e65                	lui	t3,0x19
    2b28:	2e74                	fld	fa3,216(a2)
    2b2a:	0068                	addi	a0,sp,12
    2b2c:	0002                	c.slli64	zero
    2b2e:	6c00                	ld	s0,24(s0)
    2b30:	2e6b636f          	jal	t1,b8e16 <__BSS_END__+0xa65e6>
    2b34:	0068                	addi	a0,sp,12
    2b36:	0002                	c.slli64	zero
    2b38:	6500                	ld	s0,8(a0)
    2b3a:	7272                	ld	tp,312(sp)
    2b3c:	6f6e                	ld	t5,216(sp)
    2b3e:	682e                	ld	a6,200(sp)
    2b40:	0200                	addi	s0,sp,256
    2b42:	0000                	unimp
    2b44:	6c647473          	csrrci	s0,0x6c6,8
    2b48:	6269                	lui	tp,0x1a
    2b4a:	682e                	ld	a6,200(sp)
    2b4c:	0300                	addi	s0,sp,384
    2b4e:	0000                	unimp
    2b50:	6e75                	lui	t3,0x1d
    2b52:	7369                	lui	t1,0xffffa
    2b54:	6474                	ld	a3,200(s0)
    2b56:	682e                	ld	a6,200(sp)
    2b58:	0200                	addi	s0,sp,256
    2b5a:	0000                	unimp
    2b5c:	6974                	ld	a3,208(a0)
    2b5e:	656d                	lui	a0,0x1b
    2b60:	682e                	ld	a6,200(sp)
    2b62:	0300                	addi	s0,sp,384
    2b64:	0000                	unimp
    2b66:	6168                	ld	a0,192(a0)
    2b68:	61746873          	csrrsi	a6,0x617,8
    2b6c:	2e62                	fld	ft8,24(sp)
    2b6e:	0068                	addi	a0,sp,12
    2b70:	0004                	0x4
    2b72:	7200                	ld	s0,32(a2)
    2b74:	7369                	lui	t1,0xffffa
    2b76:	6f2d7663          	bgeu	s10,s2,3262 <register_fini-0xce4e>
    2b7a:	7470                	ld	a2,232(s0)
    2b7c:	00682e73          	csrrs	t3,0x6,a6
    2b80:	0005                	c.nop	1
    2b82:	6900                	ld	s0,16(a0)
    2b84:	736e                	ld	t1,248(sp)
    2b86:	2d6e                	fld	fs10,216(sp)
    2b88:	736e6f63          	bltu	t3,s6,32c6 <register_fini-0xcdea>
    2b8c:	6174                	ld	a3,192(a0)
    2b8e:	746e                	ld	s0,248(sp)
    2b90:	00682e73          	csrrs	t3,0x6,a6
    2b94:	0006                	c.slli	zero,0x1
    2b96:	6c00                	ld	s0,24(s0)
    2b98:	6269                	lui	tp,0x1a
    2b9a:	32636367          	0x32636367
    2b9e:	682e                	ld	a6,200(sp)
    2ba0:	0700                	addi	s0,sp,896
    2ba2:	0000                	unimp
    2ba4:	696c                	ld	a1,208(a0)
    2ba6:	6762                	ld	a4,24(sp)
    2ba8:	2e326363          	bltu	tp,gp,2e8e <register_fini-0xd222>
    2bac:	00070063          	beqz	a4,2bac <register_fini-0xd504>
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
  68:	0328                	addi	a0,sp,392
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
  84:	02dc                	addi	a5,sp,324
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
  b0:	0b94                	addi	a3,sp,464
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
  f8:	101c                	addi	a5,sp,32
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
 138:	10a0                	addi	s0,sp,104
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
 178:	1144                	addi	s1,sp,164
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
 1a0:	1274                	addi	a3,sp,300
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
  24:	5f00                	lw	s0,56(a4)
  26:	615f 6464 6664      	0x66646464615f
  2c:	2e2e0033          	0x2e2e0033
  30:	2f2e2e2f          	0x2f2e2e2f
  34:	2e2e                	fld	ft8,200(sp)
  36:	2f2e2e2f          	0x2f2e2e2f
  3a:	6972                	ld	s2,280(sp)
  3c:	2d766373          	csrrsi	t1,0x2d7,12
  40:	2f636367          	0x2f636367
  44:	696c                	ld	a1,208(a0)
  46:	6762                	ld	a4,24(sp)
  48:	732f6363          	bltu	t5,s2,76e <register_fini-0xf942>
  4c:	2d74666f          	jal	a2,46b22 <__BSS_END__+0x342f2>
  50:	7066                	0x7066
  52:	6464612f          	0x6464612f
  56:	6664                	ld	s1,200(a2)
  58:	00632e33          	slt	t3,t1,t1
  5c:	665f 7865 5f00      	0x5f007865665f
  62:	5046                	0x5046
  64:	505f 4341 5f4b      	0x5f4b4341505f
  6a:	494d4553          	0x494d4553
  6e:	4152                	lw	sp,20(sp)
  70:	5f545f57          	0x5f545f57
  74:	682f0063          	beq	t5,sp,6f4 <register_fini-0xf9bc>
  78:	2f656d6f          	jal	s10,5636e <__BSS_END__+0x43b3e>
  7c:	6172                	ld	sp,280(sp)
  7e:	6e69                	lui	t3,0x1a
  80:	77616873          	csrrsi	a6,0x776,2
  84:	756f732f          	0x756f732f
  88:	6372                	ld	t1,280(sp)
  8a:	2d65                	addiw	s10,s10,25
  8c:	65646f63          	bltu	s0,s6,6ea <register_fini-0xf9c6>
  90:	7369722f          	0x7369722f
  94:	672d7663          	bgeu	s10,s2,700 <register_fini-0xf9b0>
  98:	756e                	ld	a0,248(sp)
  9a:	742d                	lui	s0,0xfffeb
  9c:	636c6f6f          	jal	t5,c66d2 <__BSS_END__+0xb3ea2>
  a0:	6168                	ld	a0,192(a0)
  a2:	6e69                	lui	t3,0x1a
  a4:	3676722f          	0x3676722f
  a8:	6934                	ld	a3,80(a0)
  aa:	2d6d                	addiw	s10,s10,27
  ac:	7562                	ld	a0,56(sp)
  ae:	6c69                	lui	s8,0x1a
  b0:	2f64                	fld	fs1,216(a4)
  b2:	7562                	ld	a0,56(sp)
  b4:	6c69                	lui	s8,0x1a
  b6:	2d64                	fld	fs1,216(a0)
  b8:	2d636367          	0x2d636367
  bc:	656e                	ld	a0,216(sp)
  be:	62696c77          	0x62696c77
  c2:	732d                	lui	t1,0xfffeb
  c4:	6174                	ld	a3,192(a0)
  c6:	2f326567          	0x2f326567
  ca:	6972                	ld	s2,280(sp)
  cc:	36766373          	csrrsi	t1,0x367,12
  d0:	2d34                	fld	fa3,88(a0)
  d2:	6e75                	lui	t3,0x1d
  d4:	776f6e6b          	0x776f6e6b
  d8:	2d6e                	fld	fs10,216(sp)
  da:	6c65                	lui	s8,0x19
  dc:	2f66                	fld	ft10,88(sp)
  de:	696c                	ld	a1,208(a0)
  e0:	6762                	ld	a4,24(sp)
  e2:	44006363          	bltu	zero,zero,528 <register_fini-0xfb88>
  e6:	7446                	ld	s0,112(sp)
  e8:	7079                	c.lui	zero,0xffffe
  ea:	0065                	c.nop	25
  ec:	465f 5f50 4150      	0x41505f50465f
  f2:	535f4b43          	fmadd.d	fs6,ft10,fs5,fa0,rmm
  f6:	4d45                	li	s10,17
  f8:	5249                	li	tp,-14
  fa:	5741                	li	a4,-16
  fc:	545f 665f 6100      	0x6100665f545f
 102:	6464                	ld	s1,200(s0)
 104:	645f 6e6f 0065      	0x656e6f645f
 10a:	20554e47          	fmsub.s	ft8,fa0,ft5,ft4,rmm
 10e:	20373143          	fmadd.s	ft2,fa4,ft3,ft4,rup
 112:	2e39                	addiw	t3,t3,14
 114:	2e32                	fld	ft8,264(sp)
 116:	2030                	fld	fa2,64(s0)
 118:	6d2d                	lui	s10,0xb
 11a:	646f6d63          	bltu	t5,t1,774 <register_fini-0xf93c>
 11e:	6c65                	lui	s8,0x19
 120:	6d3d                	lui	s10,0xf
 122:	6465                	lui	s0,0x19
 124:	6f6c                	ld	a1,216(a4)
 126:	6d2d2077          	0x6d2d2077
 12a:	646f6d63          	bltu	t5,t1,784 <register_fini-0xf92c>
 12e:	6c65                	lui	s8,0x19
 130:	6d3d                	lui	s10,0xf
 132:	6465                	lui	s0,0x19
 134:	6f6c                	ld	a1,216(a4)
 136:	6d2d2077          	0x6d2d2077
 13a:	7574                	ld	a3,232(a0)
 13c:	656e                	ld	a0,216(sp)
 13e:	723d                	lui	tp,0xfffef
 140:	656b636f          	jal	t1,b6796 <__BSS_END__+0xa3f66>
 144:	2074                	fld	fa3,192(s0)
 146:	6d2d                	lui	s10,0xb
 148:	7261                	lui	tp,0xffff8
 14a:	723d6863          	bltu	s10,gp,87a <register_fini-0xf836>
 14e:	3676                	fld	fa2,376(sp)
 150:	6934                	ld	a3,80(a0)
 152:	206d                	0x206d
 154:	6d2d                	lui	s10,0xb
 156:	6261                	lui	tp,0x18
 158:	3d69                	addiw	s10,s10,-6
 15a:	706c                	ld	a1,224(s0)
 15c:	3436                	fld	fs0,360(sp)
 15e:	2d20                	fld	fs0,88(a0)
 160:	4f2d2067          	0x4f2d2067
 164:	4f2d2073          	csrs	0x4f2,s10
 168:	2032                	fld	ft0,264(sp)
 16a:	4f2d                	li	t5,11
 16c:	662d2073          	csrs	0x662,s10
 170:	7562                	ld	a0,56(sp)
 172:	6c69                	lui	s8,0x1a
 174:	6964                	ld	s1,208(a0)
 176:	676e                	ld	a4,216(sp)
 178:	6c2d                	lui	s8,0xb
 17a:	6269                	lui	tp,0x1a
 17c:	20636367          	0x20636367
 180:	662d                	lui	a2,0xb
 182:	6f6e                	ld	t5,216(sp)
 184:	732d                	lui	t1,0xfffeb
 186:	6174                	ld	a3,192(a0)
 188:	702d6b63          	bltu	s10,sp,89e <register_fini-0xf812>
 18c:	6f72                	ld	t5,280(sp)
 18e:	6574                	ld	a3,200(a0)
 190:	726f7463          	bgeu	t5,t1,8b8 <register_fini-0xf7f8>
 194:	2d20                	fld	fs0,88(a0)
 196:	7666                	ld	a2,120(sp)
 198:	7369                	lui	t1,0xffffa
 19a:	6269                	lui	tp,0x1a
 19c:	6c69                	lui	s8,0x1a
 19e:	7469                	lui	s0,0xffffa
 1a0:	3d79                	addiw	s10,s10,-2
 1a2:	6968                	ld	a0,208(a0)
 1a4:	6464                	ld	s1,200(s0)
 1a6:	6e65                	lui	t3,0x19
 1a8:	5f00                	lw	s0,56(a4)
 1aa:	5046                	0x5046
 1ac:	555f 504e 4341      	0x4341504e555f
 1b2:	41525f4b          	fnmsub.s	ft10,ft4,fs5,fs0,unknown
 1b6:	5f315f57          	0x5f315f57
 1ba:	6c66                	ld	s8,88(sp)
 1bc:	465f006f          	j	f0e20 <__BSS_END__+0xde5f0>
 1c0:	5f50                	lw	a2,60(a4)
 1c2:	4150                	lw	a2,4(a0)
 1c4:	535f4b43          	fmadd.d	fs6,ft10,fs5,fa0,rmm
 1c8:	4d45                	li	s10,17
 1ca:	5249                	li	tp,-14
 1cc:	5741                	li	a4,-16
 1ce:	545f 735f 5f00      	0x5f00735f545f
 1d4:	695f 746e 3231      	0x3231746e695f
 1da:	0038                	addi	a4,sp,8
 1dc:	31627573          	csrrci	a0,0x316,4
 1e0:	7300                	ld	s0,32(a4)
 1e2:	6275                	lui	tp,0x1d
 1e4:	0032                	c.slli	zero,0xc
 1e6:	33627573          	csrrci	a0,mhpmevent22,4
 1ea:	7500                	ld	s0,40(a0)
 1ec:	736e                	ld	t1,248(sp)
 1ee:	6769                	lui	a4,0x1a
 1f0:	656e                	ld	a0,216(sp)
 1f2:	2064                	fld	fs1,192(s0)
 1f4:	72616863          	bltu	sp,t1,924 <register_fini-0xf78c>
 1f8:	6e00                	ld	s0,24(a2)
 1fa:	006d726f          	jal	tp,d7200 <__BSS_END__+0xc49d0>
 1fe:	5155                	li	sp,-11
 200:	7449                	lui	s0,0xffff2
 202:	7079                	c.lui	zero,0xffffe
 204:	0065                	c.nop	25
 206:	5f5f 6c63 5f7a      	0x5f7a6c635f5f
 20c:	6174                	ld	a3,192(a0)
 20e:	0062                	c.slli	zero,0x18
 210:	7266                	ld	tp,120(sp)
 212:	6361                	lui	t1,0x18
 214:	6c00                	ld	s0,24(s0)
 216:	20676e6f          	jal	t3,7641c <__BSS_END__+0x63bec>
 21a:	6f6c                	ld	a1,216(a4)
 21c:	676e                	ld	a4,216(sp)
 21e:	7520                	ld	s0,104(a0)
 220:	736e                	ld	t1,248(sp)
 222:	6769                	lui	a4,0x1a
 224:	656e                	ld	a0,216(sp)
 226:	2064                	fld	fs1,192(s0)
 228:	6e69                	lui	t3,0x1a
 22a:	0074                	addi	a3,sp,12
 22c:	6461                	lui	s0,0x18
 22e:	3364                	fld	fs1,224(a4)
 230:	5f00                	lw	s0,56(a4)
 232:	5046                	0x5046
 234:	415f 4444 495f      	0x495f4444415f
 23a:	544e                	lw	s0,240(sp)
 23c:	5245                	li	tp,-15
 23e:	414e                	lw	sp,208(sp)
 240:	5f4c                	lw	a1,60(a4)
 242:	6964                	ld	s1,208(a0)
 244:	6666                	ld	a2,88(sp)
 246:	6c00                	ld	s0,24(s0)
 248:	20676e6f          	jal	t3,7644e <__BSS_END__+0x63c1e>
 24c:	6f6c                	ld	a1,216(a4)
 24e:	676e                	ld	a4,216(sp)
 250:	6920                	ld	s0,80(a0)
 252:	746e                	ld	s0,248(sp)
 254:	5f00                	lw	s0,56(a4)
 256:	5046                	0x5046
 258:	415f 4444 495f      	0x495f4444415f
 25e:	544e                	lw	s0,240(sp)
 260:	5245                	li	tp,-15
 262:	414e                	lw	sp,208(sp)
 264:	5f4c                	lw	a1,60(a4)
 266:	6465                	lui	s0,0x19
 268:	6669                	lui	a2,0x1a
 26a:	0066                	c.slli	zero,0x19
 26c:	465f 5f50 4e55      	0x4e555f50465f
 272:	4f49                	li	t5,18
 274:	5f4e                	lw	t5,240(sp)
 276:	0044                	addi	s1,sp,4
 278:	5f627573          	csrrci	a0,0x5f6,4
 27c:	6f64                	ld	s1,216(a4)
 27e:	656e                	ld	a0,216(sp)
 280:	5f00                	lw	s0,56(a4)
 282:	5046                	0x5046
 284:	505f 4341 5f4b      	0x5f4b4341505f
 28a:	494d4553          	0x494d4553
 28e:	4152                	lw	sp,20(sp)
 290:	5f545f57          	0x5f545f57
 294:	0065                	c.nop	25
 296:	6461                	lui	s0,0x18
 298:	3164                	fld	fs1,224(a0)
 29a:	6100                	ld	s0,0(a0)
 29c:	6464                	ld	s1,200(s0)
 29e:	0032                	c.slli	zero,0xc
 2a0:	6962                	ld	s2,24(sp)
 2a2:	7374                	ld	a3,224(a4)
 2a4:	5f00                	lw	s0,56(a4)
 2a6:	5046                	0x5046
 2a8:	505f 4341 5f4b      	0x5f4b4341505f
 2ae:	494d4553          	0x494d4553
 2b2:	4152                	lw	sp,20(sp)
 2b4:	73695f57          	0x73695f57
 2b8:	745f 6e69 0079      	0x796e69745f
 2be:	665f 6d72 5f00      	0x5f006d72665f
 2c4:	5046                	0x5046
 2c6:	4d5f 4c55 4d5f      	0x4d5f4c554d5f
 2cc:	4145                	li	sp,17
 2ce:	5f54                	lw	a3,60(a4)
 2d0:	5f31                	li	t5,-20
 2d2:	65646977          	0x65646977
 2d6:	5a5f 665f 0030      	0x30665f5a5f
 2dc:	465f 5f50 554d      	0x554d5f50465f
 2e2:	5f4c                	lw	a1,60(a4)
 2e4:	454d                	li	a0,19
 2e6:	5441                	li	s0,-16
 2e8:	315f 775f 6469      	0x6469775f315f
 2ee:	5f65                	li	t5,-7
 2f0:	5f5a                	lw	t5,180(sp)
 2f2:	3166                	fld	ft2,120(sp)
 2f4:	5f00                	lw	s0,56(a4)
 2f6:	755f 0068 5f5f      	0x5f5f0068755f
 2fc:	6c75                	lui	s8,0x1d
 2fe:	5500                	lw	s0,40(a0)
 300:	5748                	lw	a0,44(a4)
 302:	7974                	ld	a3,240(a0)
 304:	6570                	ld	a2,200(a0)
 306:	5f00                	lw	s0,56(a4)
 308:	785f 0030 5355      	0x53550030785f
 30e:	7449                	lui	s0,0xffff2
 310:	7079                	c.lui	zero,0xffffe
 312:	0065                	c.nop	25
 314:	465f 5f50 4e55      	0x4e555f50465f
 31a:	4150                	lw	a2,4(a0)
 31c:	435f4b43          	fmadd.d	fs6,ft10,fs5,fs0,rmm
 320:	4e41                	li	t3,16
 322:	43494e4f          	fnmadd.d	ft8,fs2,fs4,fs0,rmm
 326:	4c41                	li	s8,16
 328:	735f 6968 7466      	0x74666968735f
 32e:	5f00                	lw	s0,56(a4)
 330:	5046                	0x5046
 332:	505f 4341 5f4b      	0x5f4b4341505f
 338:	4f4e4143          	fmadd.q	ft2,ft8,fs4,fs1,rmm
 33c:	494e                	lw	s2,208(sp)
 33e:	5f4c4143          	fmadd.q	ft2,fs8,fs4,fa1,rmm
 342:	5f54                	lw	a3,60(a4)
 344:	0066                	c.slli	zero,0x19
 346:	465f 5f50 4150      	0x41505f50465f
 34c:	435f4b43          	fmadd.d	fs6,ft10,fs5,fs0,rmm
 350:	4e41                	li	t3,16
 352:	43494e4f          	fnmadd.d	ft8,fs2,fs4,fs0,rmm
 356:	4c41                	li	s8,16
 358:	545f 655f 5f00      	0x5f00655f545f
 35e:	5046                	0x5046
 360:	505f 4341 5f4b      	0x5f4b4341505f
 366:	4f4e4143          	fmadd.q	ft2,ft8,fs4,fs1,rmm
 36a:	494e                	lw	s2,208(sp)
 36c:	5f4c4143          	fmadd.q	ft2,fs8,fs4,fa1,rmm
 370:	5f54                	lw	a3,60(a4)
 372:	465f0073          	0x465f0073
 376:	5f50                	lw	a2,60(a4)
 378:	4150                	lw	a2,4(a0)
 37a:	435f4b43          	fmadd.d	fs6,ft10,fs5,fs0,rmm
 37e:	4e41                	li	t3,16
 380:	43494e4f          	fnmadd.d	ft8,fs2,fs4,fs0,rmm
 384:	4c41                	li	s8,16
 386:	695f 5f73 6974      	0x69745f73695f
 38c:	796e                	ld	s2,248(sp)
 38e:	5f00                	lw	s0,56(a4)
 390:	5046                	0x5046
 392:	505f 4341 5f4b      	0x5f4b4341505f
 398:	4f4e4143          	fmadd.q	ft2,ft8,fs4,fs1,rmm
 39c:	494e                	lw	s2,208(sp)
 39e:	5f4c4143          	fmadd.q	ft2,fs8,fs4,fa1,rmm
 3a2:	5f54                	lw	a3,60(a4)
 3a4:	5f5f0063          	beq	t5,s5,984 <register_fini-0xf72c>
 3a8:	3178                	fld	fa4,224(a0)
 3aa:	5f00                	lw	s0,56(a4)
 3ac:	785f 0033 5f5f      	0x5f5f0033785f
 3b2:	6876                	ld	a6,344(sp)
 3b4:	5f00                	lw	s0,56(a4)
 3b6:	765f 006c 5f5f      	0x5f5f006c765f
 3bc:	756d                	lui	a0,0xffffb
 3be:	646c                	ld	a1,200(s0)
 3c0:	3366                	fld	ft6,120(sp)
 3c2:	2e00                	fld	fs0,24(a2)
 3c4:	2f2e                	fld	ft10,200(sp)
 3c6:	2e2e                	fld	ft8,200(sp)
 3c8:	2f2e2e2f          	0x2f2e2e2f
 3cc:	2e2e                	fld	ft8,200(sp)
 3ce:	7369722f          	0x7369722f
 3d2:	672d7663          	bgeu	s10,s2,a3e <register_fini-0xf672>
 3d6:	6c2f6363          	bltu	t5,sp,a9c <register_fini-0xf614>
 3da:	6269                	lui	tp,0x1a
 3dc:	2f636367          	0x2f636367
 3e0:	74666f73          	csrrsi	t5,0x746,12
 3e4:	662d                	lui	a2,0xb
 3e6:	2f70                	fld	fa2,216(a4)
 3e8:	756d                	lui	a0,0xffffb
 3ea:	646c                	ld	a1,200(s0)
 3ec:	3366                	fld	ft6,120(sp)
 3ee:	632e                	ld	t1,200(sp)
 3f0:	5f00                	lw	s0,56(a4)
 3f2:	785f 0032 5f5f      	0x5f5f0032785f
 3f8:	64627573          	csrrci	a0,0x646,4
 3fc:	3366                	fld	ft6,120(sp)
 3fe:	2e00                	fld	fs0,24(a2)
 400:	2f2e                	fld	ft10,200(sp)
 402:	2e2e                	fld	ft8,200(sp)
 404:	2f2e2e2f          	0x2f2e2e2f
 408:	2e2e                	fld	ft8,200(sp)
 40a:	7369722f          	0x7369722f
 40e:	672d7663          	bgeu	s10,s2,a7a <register_fini-0xf636>
 412:	6c2f6363          	bltu	t5,sp,ad8 <register_fini-0xf5d8>
 416:	6269                	lui	tp,0x1a
 418:	2f636367          	0x2f636367
 41c:	74666f73          	csrrsi	t5,0x746,12
 420:	662d                	lui	a2,0xb
 422:	2f70                	fld	fa2,216(a4)
 424:	64627573          	csrrci	a0,0x646,4
 428:	3366                	fld	ft6,120(sp)
 42a:	632e                	ld	t1,200(sp)
 42c:	7000                	ld	s0,32(s0)
 42e:	6361                	lui	t1,0x18
 430:	65735f6b          	0x65735f6b
 434:	696d                	lui	s2,0x1b
 436:	6172                	ld	sp,280(sp)
 438:	465f0077          	0x465f0077
 43c:	5f50                	lw	a2,60(a4)
 43e:	5246                	lw	tp,112(sp)
 440:	495f4d4f          	fnmadd.s	fs10,ft10,fs5,fs1,rmm
 444:	544e                	lw	s0,240(sp)
 446:	755f 0072 465f      	0x465f0072755f
 44c:	5f50                	lw	a2,60(a4)
 44e:	5246                	lw	tp,112(sp)
 450:	495f4d4f          	fnmadd.s	fs10,ft10,fs5,fs1,rmm
 454:	544e                	lw	s0,240(sp)
 456:	6c5f 007a 2e2e      	0x2e2e007a6c5f
 45c:	2f2e2e2f          	0x2f2e2e2f
 460:	2e2e                	fld	ft8,200(sp)
 462:	2f2e2e2f          	0x2f2e2e2f
 466:	6972                	ld	s2,280(sp)
 468:	2d766373          	csrrsi	t1,0x2d7,12
 46c:	2f636367          	0x2f636367
 470:	696c                	ld	a1,208(a0)
 472:	6762                	ld	a4,24(sp)
 474:	732f6363          	bltu	t5,s2,b9a <register_fini-0xf516>
 478:	2d74666f          	jal	a2,46f4e <__BSS_END__+0x3471e>
 47c:	7066                	0x7066
 47e:	6f6c662f          	0x6f6c662f
 482:	7461                	lui	s0,0xffff8
 484:	66646973          	csrrsi	s2,0x666,8
 488:	632e                	ld	t1,200(sp)
 48a:	5f00                	lw	s0,56(a4)
 48c:	665f 6f6c 7461      	0x74616f6c665f
 492:	66646973          	csrrsi	s2,0x666,8
 496:	2e00                	fld	fs0,24(a2)
 498:	2f2e                	fld	ft10,200(sp)
 49a:	2e2e                	fld	ft8,200(sp)
 49c:	2f2e2e2f          	0x2f2e2e2f
 4a0:	2e2e                	fld	ft8,200(sp)
 4a2:	7369722f          	0x7369722f
 4a6:	672d7663          	bgeu	s10,s2,b12 <register_fini-0xf59e>
 4aa:	6c2f6363          	bltu	t5,sp,b70 <register_fini-0xf540>
 4ae:	6269                	lui	tp,0x1a
 4b0:	2f636367          	0x2f636367
 4b4:	74666f73          	csrrsi	t5,0x746,12
 4b8:	662d                	lui	a2,0xb
 4ba:	2f70                	fld	fa2,216(a4)
 4bc:	7865                	lui	a6,0xffff9
 4be:	6574                	ld	a3,200(a0)
 4c0:	646e                	ld	s0,216(sp)
 4c2:	66646673          	csrrsi	a2,0x666,8
 4c6:	2e32                	fld	ft8,264(sp)
 4c8:	50460063          	beq	a2,tp,9c8 <register_fini-0xf6e8>
 4cc:	455f 5458 4e45      	0x4e455458455f
 4d2:	5f44                	lw	s1,60(a4)
 4d4:	7a6c                	ld	a1,240(a2)
 4d6:	5f00                	lw	s0,56(a4)
 4d8:	5046                	0x5046
 4da:	555f 494e 4e4f      	0x4e4f494e555f
 4e0:	535f 5300 7446      	0x74465300535f
 4e6:	7079                	c.lui	zero,0xffffe
 4e8:	0065                	c.nop	25
 4ea:	5f5f 7865 6574      	0x657478655f5f
 4f0:	646e                	ld	s0,216(sp)
 4f2:	66646673          	csrrsi	a2,0x666,8
 4f6:	0032                	c.slli	zero,0xc
 4f8:	5f5f 7274 6e75      	0x6e7572745f5f
 4fe:	73666463          	bltu	a2,s6,c26 <register_fini-0xf48a>
 502:	3266                	fld	ft4,120(sp)
 504:	2e00                	fld	fs0,24(a2)
 506:	2f2e                	fld	ft10,200(sp)
 508:	2e2e                	fld	ft8,200(sp)
 50a:	2f2e2e2f          	0x2f2e2e2f
 50e:	2e2e                	fld	ft8,200(sp)
 510:	7369722f          	0x7369722f
 514:	672d7663          	bgeu	s10,s2,b80 <register_fini-0xf530>
 518:	6c2f6363          	bltu	t5,sp,bde <register_fini-0xf4d2>
 51c:	6269                	lui	tp,0x1a
 51e:	2f636367          	0x2f636367
 522:	74666f73          	csrrsi	t5,0x746,12
 526:	662d                	lui	a2,0xb
 528:	2f70                	fld	fa2,216(a4)
 52a:	7274                	ld	a3,224(a2)
 52c:	6e75                	lui	t3,0x1d
 52e:	73666463          	bltu	a2,s6,c56 <register_fini-0xf45a>
 532:	3266                	fld	ft4,120(sp)
 534:	632e                	ld	t1,200(sp)
 536:	7300                	ld	s0,32(a4)
 538:	6f68                	ld	a0,216(a4)
 53a:	7472                	ld	s0,312(sp)
 53c:	6920                	ld	s0,80(a0)
 53e:	746e                	ld	s0,248(sp)
 540:	6800                	ld	s0,16(s0)
 542:	6174                	ld	a3,192(a0)
 544:	5f62                	lw	t5,56(sp)
 546:	6168                	ld	a0,192(a0)
 548:	705f6873          	csrrsi	a6,0x705,30
 54c:	746e696f          	jal	s2,e6c92 <__BSS_END__+0xd4462>
 550:	7265                	lui	tp,0xffff9
 552:	5f00                	lw	s0,56(a4)
 554:	657a6973          	csrrsi	s2,0x657,20
 558:	5f00                	lw	s0,56(a4)
 55a:	6172                	ld	sp,280(sp)
 55c:	646e                	ld	s0,216(sp)
 55e:	3834                	fld	fa3,112(s0)
 560:	5f00                	lw	s0,56(a4)
 562:	6d65                	lui	s10,0x19
 564:	7265                	lui	tp,0xffff9
 566:	636e6567          	0x636e6567
 56a:	0079                	c.nop	30
 56c:	645f 7961 696c      	0x696c7961645f
 572:	00746867          	0x746867
 576:	706d6f63          	bltu	s10,t1,c94 <register_fini-0xf41c>
 57a:	656c                	ld	a1,200(a0)
 57c:	2078                	fld	fa4,192(s0)
 57e:	6f64                	ld	s1,216(a4)
 580:	6275                	lui	tp,0x1d
 582:	656c                	ld	a1,200(a0)
 584:	5f00                	lw	s0,56(a4)
 586:	64746567          	0x64746567
 58a:	7461                	lui	s0,0xffff8
 58c:	5f65                	li	t5,-7
 58e:	7265                	lui	tp,0xffff9
 590:	0072                	c.slli	zero,0x1c
 592:	645f 7461 0061      	0x617461645f
 598:	775f 7263 6f74      	0x6f747263775f
 59e:	626d                	lui	tp,0x1b
 5a0:	735f 6174 6574      	0x65746174735f
 5a6:	7200                	ld	s0,32(a2)
 5a8:	7369                	lui	t1,0xffffa
 5aa:	6d5f7663          	bgeu	t5,s5,c76 <register_fini-0xf43a>
 5ae:	6369                	lui	t1,0x1a
 5b0:	6f72                	ld	t5,280(sp)
 5b2:	7261                	lui	tp,0xffff8
 5b4:	74696863          	bltu	s2,t1,d04 <register_fini-0xf3ac>
 5b8:	6365                	lui	t1,0x19
 5ba:	7574                	ld	a3,232(a0)
 5bc:	6572                	ld	a0,280(sp)
 5be:	745f 7079 0065      	0x657079745f
 5c4:	775f 7363 7472      	0x74727363775f
 5ca:	73626d6f          	jal	s10,26d00 <__BSS_END__+0x144d0>
 5ce:	735f 6174 6574      	0x65746174735f
 5d4:	5f00                	lw	s0,56(a4)
 5d6:	635f 7a6c 6964      	0x69647a6c635f
 5dc:	0032                	c.slli	zero,0xc
 5de:	6c5f 6662 6973      	0x697366626c5f
 5e4:	657a                	ld	a0,408(sp)
 5e6:	6300                	ld	s0,0(a4)
 5e8:	6c706d6f          	jal	s10,74ae <register_fini-0x8c02>
 5ec:	7865                	lui	a6,0xffff9
 5ee:	6c20                	ld	s0,88(s0)
 5f0:	20676e6f          	jal	t3,767f6 <__BSS_END__+0x63fc6>
 5f4:	6f64                	ld	s1,216(a4)
 5f6:	6275                	lui	tp,0x1d
 5f8:	656c                	ld	a1,200(a0)
 5fa:	7200                	ld	s0,32(a2)
 5fc:	7369                	lui	t1,0xffffa
 5fe:	615f7663          	bgeu	t5,s5,c0a <register_fini-0xf4a6>
 602:	6962                	ld	s2,24(sp)
 604:	5f00                	lw	s0,56(a4)
 606:	6c5f 636f 6c61      	0x6c61636f6c5f
 60c:	5f65                	li	t5,-7
 60e:	0074                	addi	a3,sp,12
 610:	6d5f 7262 6f74      	0x6f7472626d5f
 616:	735f6377          	0x735f6377
 61a:	6174                	ld	a3,192(a0)
 61c:	6574                	ld	a3,200(a0)
 61e:	5f00                	lw	s0,56(a4)
 620:	7a74                	ld	a3,240(a2)
 622:	616e                	ld	sp,216(sp)
 624:	656d                	lui	a0,0x1b
 626:	5f00                	lw	s0,56(a4)
 628:	6f746377          	0x6f746377
 62c:	626d                	lui	tp,0x1b
 62e:	735f 6174 6574      	0x65746174735f
 634:	5f00                	lw	s0,56(a4)
 636:	745f 5f6d 6573      	0x65735f6d745f
 63c:	635f0063          	beq	t5,s5,c5c <register_fini-0xf454>
 640:	6f6c                	ld	a1,216(a4)
 642:	5f006573          	csrrsi	a0,0x5f0,0
 646:	6275                	lui	tp,0x1d
 648:	6675                	lui	a2,0x1d
 64a:	5f00                	lw	s0,56(a4)
 64c:	6162                	ld	sp,24(sp)
 64e:	5f006573          	csrrsi	a0,0x5f0,0
 652:	745f 5f6d 6f68      	0x6f685f6d745f
 658:	7275                	lui	tp,0xffffd
 65a:	7500                	ld	s0,40(a0)
 65c:	736e                	ld	t1,248(sp)
 65e:	6570                	ld	a2,200(a0)
 660:	735f7663          	bgeu	t5,s5,d8c <register_fini-0xf324>
 664:	7274                	ld	a3,224(a2)
 666:	6e69                	lui	t3,0x1a
 668:	5f007367          	0x5f007367
 66c:	735f 0066 6f5f      	0x6f5f0066735f
 672:	5f6e                	lw	t5,248(sp)
 674:	7865                	lui	a6,0xffff9
 676:	7469                	lui	s0,0xffffa
 678:	615f 6772 0073      	0x736772615f
 67e:	635f 6f6f 696b      	0x696b6f6f635f
 684:	0065                	c.nop	25
 686:	5f5f 6773 756c      	0x756c67735f5f
 68c:	0065                	c.nop	25
 68e:	665f 616c 7367      	0x7367616c665f
 694:	5f00                	lw	s0,56(a4)
 696:	7369                	lui	t1,0xffffa
 698:	635f 6178 5f00      	0x5f006178635f
 69e:	00736477          	0x736477
 6a2:	5f5f 4946 454c      	0x454c49465f5f
 6a8:	5f00                	lw	s0,56(a4)
 6aa:	6572                	ld	a0,280(sp)
 6ac:	746c7573          	csrrci	a0,0x746,24
 6b0:	6b5f 5f00 705f      	0x705f5f006b5f
 6b6:	6f63706f          	j	37dac <__BSS_END__+0x2557c>
 6ba:	6e75                	lui	t3,0x1d
 6bc:	5f74                	lw	a3,124(a4)
 6be:	6174                	ld	a3,192(a0)
 6c0:	0062                	c.slli	zero,0x18
 6c2:	6972                	ld	s2,280(sp)
 6c4:	5f766373          	csrrsi	t1,0x5f7,12
 6c8:	696d                	lui	s2,0x1b
 6ca:	616f7263          	bgeu	t5,s6,cce <register_fini-0xf3e2>
 6ce:	6372                	ld	t1,280(sp)
 6d0:	6968                	ld	a0,208(a0)
 6d2:	6574                	ld	a3,200(a0)
 6d4:	72757463          	bgeu	a0,t2,dfc <register_fini-0xf2b4>
 6d8:	0065                	c.nop	25
 6da:	735f 7379 655f      	0x655f7379735f
 6e0:	7272                	ld	tp,312(sp)
 6e2:	696c                	ld	a1,208(a0)
 6e4:	5f007473          	csrrci	s0,0x5f0,0
 6e8:	62747663          	bgeu	s0,t2,d14 <register_fini-0xf39c>
 6ec:	6675                	lui	a2,0x1d
 6ee:	5f00                	lw	s0,56(a4)
 6f0:	626d                	lui	tp,0x1b
 6f2:	6f747273          	csrrci	tp,0x6f7,8
 6f6:	5f736377          	0x5f736377
 6fa:	74617473          	csrrci	s0,0x746,2
 6fe:	0065                	c.nop	25
 700:	6d5f 7262 656c      	0x656c72626d5f
 706:	5f6e                	lw	t5,248(sp)
 708:	74617473          	csrrci	s0,0x746,2
 70c:	0065                	c.nop	25
 70e:	6972                	ld	s2,280(sp)
 710:	5f766373          	csrrsi	t1,0x5f7,12
 714:	646f6d63          	bltu	t5,t1,d6e <register_fini-0xf342>
 718:	6c65                	lui	s8,0x19
 71a:	5f00                	lw	s0,56(a4)
 71c:	6e66                	ld	t3,88(sp)
 71e:	7261                	lui	tp,0xffff8
 720:	5f007367          	0x5f007367
 724:	6e66                	ld	t3,88(sp)
 726:	735f0073          	0x735f0073
 72a:	6769                	lui	a4,0x1a
 72c:	006e                	c.slli	zero,0x1b
 72e:	735f 6474 7265      	0x72656474735f
 734:	0072                	c.slli	zero,0x1c
 736:	425f 6769 6e69      	0x6e696769425f
 73c:	0074                	addi	a3,sp,12
 73e:	675f 6d61 616d      	0x616d6d61675f
 744:	735f 6769 676e      	0x676e6769735f
 74a:	6d61                	lui	s10,0x18
 74c:	5f00                	lw	s0,56(a4)
 74e:	6d6e                	ld	s10,216(sp)
 750:	6c61                	lui	s8,0x18
 752:	6f6c                	ld	a1,216(a4)
 754:	5f5f0063          	beq	t5,s5,d34 <register_fini-0xf37c>
 758:	6d74                	ld	a3,216(a0)
 75a:	7200                	ld	s0,32(a2)
 75c:	7369                	lui	t1,0xffffa
 75e:	615f7663          	bgeu	t5,s5,d6a <register_fini-0xf346>
 762:	6962                	ld	s2,24(sp)
 764:	745f 7079 0065      	0x657079745f
 76a:	6d5f 7362 6174      	0x617473626d5f
 770:	6574                	ld	a3,200(a0)
 772:	5f00                	lw	s0,56(a4)
 774:	775f 6863 0062      	0x626863775f
 77a:	635f 7476 656c      	0x656c7476635f
 780:	006e                	c.slli	zero,0x1b
 782:	665f 6c69 0065      	0x656c69665f
 788:	6168                	ld	a0,192(a0)
 78a:	61766873          	csrrsi	a6,0x617,12
 78e:	5f6c                	lw	a1,124(a4)
 790:	0074                	addi	a3,sp,12
 792:	6e5f 6f69 7362      	0x73626f696e5f
 798:	7300                	ld	s0,32(a4)
 79a:	6f68                	ld	a0,216(a4)
 79c:	7472                	ld	s0,312(sp)
 79e:	7520                	ld	s0,104(a0)
 7a0:	736e                	ld	t1,248(sp)
 7a2:	6769                	lui	a4,0x1a
 7a4:	656e                	ld	a0,216(sp)
 7a6:	2064                	fld	fs1,192(s0)
 7a8:	6e69                	lui	t3,0x1a
 7aa:	0074                	addi	a3,sp,12
 7ac:	615f 6574 6978      	0x69786574615f
 7b2:	3074                	fld	fa3,224(s0)
 7b4:	5f00                	lw	s0,56(a4)
 7b6:	6e676973          	csrrsi	s2,0x6e6,14
 7ba:	6c61                	lui	s8,0x18
 7bc:	625f 6675 5f00      	0x5f006675625f
 7c2:	7361                	lui	t1,0xffff8
 7c4:	6d697463          	bgeu	s2,s6,e8c <register_fini-0xf224>
 7c8:	5f65                	li	t5,-7
 7ca:	7562                	ld	a0,56(sp)
 7cc:	0066                	c.slli	zero,0x19
 7ce:	725f 7365 6c75      	0x6c757365725f
 7d4:	0074                	addi	a3,sp,12
 7d6:	5f5f 6377 0068      	0x6863775f5f
 7dc:	4241                	li	tp,16
 7de:	5f49                	li	t5,-14
 7e0:	4c49                	li	s8,18
 7e2:	3350                	fld	fa2,160(a4)
 7e4:	4632                	lw	a2,12(sp)
 7e6:	6500                	ld	s0,8(a0)
 7e8:	766e                	ld	a2,248(sp)
 7ea:	7269                	lui	tp,0xffffa
 7ec:	77006e6f          	jal	t3,6f5c <register_fini-0x9154>
 7f0:	6e69                	lui	t3,0x1a
 7f2:	5f74                	lw	a3,124(a4)
 7f4:	0074                	addi	a3,sp,12
 7f6:	6c5f 636f 006b      	0x6b636f6c5f
 7fc:	4241                	li	tp,16
 7fe:	5f49                	li	t5,-14
 800:	4c49                	li	s8,18
 802:	3350                	fld	fa2,160(a4)
 804:	4432                	lw	s0,12(sp)
 806:	4100                	lw	s0,0(a0)
 808:	4942                	lw	s2,16(sp)
 80a:	495f 504c 3233      	0x3233504c495f
 810:	0045                	c.nop	17
 812:	6d5f 6c75 0074      	0x746c756d5f
 818:	6e75                	lui	t3,0x1d
 81a:	63657073          	csrci	0x636,10
 81e:	735f 7274 6e69      	0x6e697274735f
 824:	6f007367          	0x6f007367
 828:	7470                	ld	a2,232(s0)
 82a:	6572                	ld	a0,280(sp)
 82c:	00746573          	csrrsi	a0,0x7,8
 830:	775f 6972 6574      	0x65746972775f
 836:	5f00                	lw	s0,56(a4)
 838:	745f 5f6d 6579      	0x65795f6d745f
 83e:	7261                	lui	tp,0xffff8
 840:	5f00                	lw	s0,56(a4)
 842:	6e75                	lui	t3,0x1d
 844:	7375                	lui	t1,0xffffd
 846:	6465                	lui	s0,0x19
 848:	725f 6e61 0064      	0x646e61725f
 84e:	6972                	ld	s2,280(sp)
 850:	5f766373          	csrrsi	t1,0x5f7,12
 854:	65646f63          	bltu	s0,s6,eb2 <register_fini-0xf1fe>
 858:	6d5f 646f 6c65      	0x6c65646f6d5f
 85e:	5f00                	lw	s0,56(a4)
 860:	7366666f          	jal	a2,66f96 <__BSS_END__+0x54766>
 864:	7465                	lui	s0,0xffff9
 866:	6f00                	ld	s0,24(a4)
 868:	7470                	ld	a2,232(s0)
 86a:	6e69                	lui	t3,0x1a
 86c:	0064                	addi	s1,sp,12
 86e:	6e5f 7865 6674      	0x667478656e5f
 874:	6300                	ld	s0,0(a4)
 876:	6c706d6f          	jal	s10,773c <register_fini-0x8974>
 87a:	7865                	lui	a6,0xffff9
 87c:	6620                	ld	s0,72(a2)
 87e:	6f6c                	ld	a1,216(a4)
 880:	7461                	lui	s0,0xffff8
 882:	5f00                	lw	s0,56(a4)
 884:	745f 5f6d 6f6d      	0x6f6d5f6d745f
 88a:	006e                	c.slli	zero,0x1b
 88c:	615f 6574 6978      	0x69786574615f
 892:	0074                	addi	a3,sp,12
 894:	6f627573          	csrrci	a0,0x6f6,4
 898:	7470                	ld	a2,232(s0)
 89a:	7261                	lui	tp,0xffff8
 89c:	5f5f0067          	jr	1525(t5)
 8a0:	64696473          	csrrsi	s0,0x646,18
 8a4:	6e69                	lui	t3,0x1a
 8a6:	7469                	lui	s0,0xffffa
 8a8:	5f00                	lw	s0,56(a4)
 8aa:	5f66666f          	jal	a2,66ea0 <__BSS_END__+0x54670>
 8ae:	0074                	addi	a3,sp,12
 8b0:	665f 6572 6c65      	0x6c656572665f
 8b6:	7369                	lui	t1,0xffffa
 8b8:	0074                	addi	a3,sp,12
 8ba:	745f 6d69 7a65      	0x7a656d69745f
 8c0:	00656e6f          	jal	t3,568c6 <__BSS_END__+0x44096>
 8c4:	6d5f 7362 6174      	0x617473626d5f
 8ca:	6574                	ld	a3,200(a0)
 8cc:	745f 5f00 4f4c      	0x4f4c5f00745f
 8d2:	525f4b43          	fmadd.d	fs6,ft10,ft5,fa0,rmm
 8d6:	4345                	li	t1,17
 8d8:	5255                	li	tp,-11
 8da:	45564953          	0x45564953
 8de:	545f 5f00 6572      	0x65725f00545f
 8e4:	6461                	lui	s0,0x18
 8e6:	2e00                	fld	fs0,24(a2)
 8e8:	2f2e                	fld	ft10,200(sp)
 8ea:	2e2e                	fld	ft8,200(sp)
 8ec:	2f2e2e2f          	0x2f2e2e2f
 8f0:	2e2e                	fld	ft8,200(sp)
 8f2:	7369722f          	0x7369722f
 8f6:	672d7663          	bgeu	s10,s2,f62 <register_fini-0xf14e>
 8fa:	6c2f6363          	bltu	t5,sp,fc0 <register_fini-0xf0f0>
 8fe:	6269                	lui	tp,0x1a
 900:	2f636367          	0x2f636367
 904:	696c                	ld	a1,208(a0)
 906:	6762                	ld	a4,24(sp)
 908:	2e326363          	bltu	tp,gp,bee <register_fini-0xf4c2>
 90c:	42410063          	beq	sp,tp,d2c <register_fini-0xf384>
 910:	5f49                	li	t5,-14
 912:	504c                	lw	a1,36(s0)
 914:	3436                	fld	fs0,360(sp)
 916:	4100                	lw	s0,0(a0)
 918:	4942                	lw	s2,16(sp)
 91a:	495f 504c 3233      	0x3233504c495f
 920:	5f00                	lw	s0,56(a4)
 922:	7364                	ld	s1,224(a4)
 924:	61685f6f          	jal	t5,85f3a <__BSS_END__+0x7370a>
 928:	646e                	ld	s0,216(sp)
 92a:	656c                	ld	a1,200(a0)
 92c:	4300                	lw	s0,0(a4)
 92e:	5f4d                	li	t5,-13
 930:	454d                	li	a0,19
 932:	4144                	lw	s1,4(a0)
 934:	594e                	lw	s2,240(sp)
 936:	5f00                	lw	s0,56(a4)
 938:	656e                	ld	a0,216(sp)
 93a:	685f0077          	0x685f0077
 93e:	655f 7272 6f6e      	0x6f6e7272655f
 944:	5f00                	lw	s0,56(a4)
 946:	6c66                	ld	s8,88(sp)
 948:	5f6b636f          	jal	t1,b6f3e <__BSS_END__+0xa470e>
 94c:	0074                	addi	a3,sp,12
 94e:	5f5f 6d74 795f      	0x795f6d745f5f
 954:	6164                	ld	s1,192(a0)
 956:	0079                	c.nop	30
 958:	5f5f 6273 6675      	0x667562735f5f
 95e:	5f00                	lw	s0,56(a4)
 960:	6c66                	ld	s8,88(sp)
 962:	6761                	lui	a4,0x18
 964:	5f003273          	csrrc	tp,0x5f0,zero
 968:	6f69                	lui	t5,0x1a
 96a:	7362                	ld	t1,56(sp)
 96c:	4300                	lw	s0,0(a4)
 96e:	5f4d                	li	t5,-13
 970:	454d                	li	a0,19
 972:	4c44                	lw	s1,28(s0)
 974:	6800574f          	fnmadd.s	fa4,ft0,ft0,fa3,unknown
 978:	6174                	ld	a3,192(a0)
 97a:	5f62                	lw	t5,56(sp)
 97c:	6168                	ld	a0,192(a0)
 97e:	5f006873          	csrrsi	a6,0x5f0,0
 982:	735f 4946 454c      	0x454c4946735f
 988:	5f00                	lw	s0,56(a4)
 98a:	5f737973          	csrrci	s2,0x5f7,6
 98e:	656e                	ld	a0,216(sp)
 990:	7272                	ld	tp,312(sp)
 992:	5f00                	lw	s0,56(a4)
 994:	6172                	ld	sp,280(sp)
 996:	646e                	ld	s0,216(sp)
 998:	6e5f 7865 0074      	0x7478656e5f
 99e:	6d5f 6c62 6e65      	0x6e656c626d5f
 9a4:	735f 6174 6574      	0x65746174735f
 9aa:	5f00                	lw	s0,56(a4)
 9ac:	6e69                	lui	t3,0x1a
 9ae:	695f0063          	beq	t5,s5,102e <register_fini-0xf082>
 9b2:	646e                	ld	s0,216(sp)
 9b4:	5f00                	lw	s0,56(a4)
 9b6:	6f6c                	ld	a1,216(a4)
 9b8:	656c6163          	bltu	s8,s6,ffa <register_fini-0xf0b6>
 9bc:	5f00                	lw	s0,56(a4)
 9be:	635f 656c 6e61      	0x6e61656c635f
 9c4:	7075                	c.lui	zero,0xffffd
 9c6:	5f00                	lw	s0,56(a4)
 9c8:	6e75                	lui	t3,0x1d
 9ca:	63657073          	csrci	0x636,10
 9ce:	6669                	lui	a2,0x1a
 9d0:	6569                	lui	a0,0x1a
 9d2:	5f64                	lw	s1,124(a4)
 9d4:	6f6c                	ld	a1,216(a4)
 9d6:	656c6163          	bltu	s8,s6,1018 <register_fini-0xf098>
 9da:	695f 666e 006f      	0x6f666e695f
 9e0:	6d5f 7861 6477      	0x647778616d5f
 9e6:	725f0073          	0x725f0073
 9ea:	6565                	lui	a0,0x19
 9ec:	746e                	ld	s0,248(sp)
 9ee:	5f00                	lw	s0,56(a4)
 9f0:	64656573          	csrrsi	a0,0x646,10
 9f4:	5f00                	lw	s0,56(a4)
 9f6:	635f 756f 746e      	0x746e756f635f
 9fc:	5f00                	lw	s0,56(a4)
 9fe:	765f 6c61 6575      	0x65756c61765f
 a04:	5f00                	lw	s0,56(a4)
 a06:	6b656573          	csrrsi	a0,0x6b6,10
 a0a:	5f00                	lw	s0,56(a4)
 a0c:	7066                	0x7066
 a0e:	745f736f          	jal	t1,f8952 <__BSS_END__+0xe6122>
 a12:	7300                	ld	s0,32(a4)
 a14:	6669                	lui	a2,0x1a
 a16:	7669                	lui	a2,0xffffa
 a18:	5f65                	li	t5,-7
 a1a:	625f0037          	lui	zero,0x625f0
 a1e:	6b6c                	ld	a1,208(a4)
 a20:	657a6973          	csrrsi	s2,0x657,20
 a24:	6700                	ld	s0,8(a4)
 a26:	6e65                	lui	t3,0x19
 a28:	7265                	lui	tp,0xffff9
 a2a:	6369                	lui	t1,0x1a
 a2c:	6f00                	ld	s0,24(a4)
 a2e:	7470                	ld	a2,232(s0)
 a30:	7265                	lui	tp,0xffff9
 a32:	0072                	c.slli	zero,0x1c
 a34:	735f 7274 6f74      	0x6f747274735f
 a3a:	616c5f6b          	0x616c5f6b
 a3e:	43007473          	csrrci	s0,0x430,0
 a42:	5f4d                	li	t5,-13
 a44:	4950                	lw	a2,20(a0)
 a46:	665f0043          	fmadd.q	ft0,ft10,ft5,fa2,rne
 a4a:	746e                	ld	s0,248(sp)
 a4c:	7079                	c.lui	zero,0xffffe
 a4e:	7365                	lui	t1,0xffff9
 a50:	5f00                	lw	s0,56(a4)
 a52:	6461                	lui	s0,0x18
 a54:	0064                	addi	s1,sp,12
 a56:	5f5f 4c55 6e6f      	0x6e6f4c555f5f
 a5c:	74680067          	jr	1862(a6) # ffffffffffff9746 <__BSS_END__+0xfffffffffffe6f16>
 a60:	6261                	lui	tp,0x18
 a62:	655f 5f71 6f70      	0x6f705f71655f
 a68:	6e69                	lui	t3,0x1a
 a6a:	6574                	ld	a3,200(a0)
 a6c:	0072                	c.slli	zero,0x1c
 a6e:	5f5f 7278 5f00      	0x5f0072785f5f
 a74:	626f6c67          	0x626f6c67
 a78:	6c61                	lui	s8,0x18
 a7a:	695f 706d 7275      	0x7275706d695f
 a80:	5f65                	li	t5,-7
 a82:	7470                	ld	a2,232(s0)
 a84:	0072                	c.slli	zero,0x1c
 a86:	4455                	li	s0,21
 a88:	7449                	lui	s0,0xffff2
 a8a:	7079                	c.lui	zero,0xffffe
 a8c:	0065                	c.nop	25
 a8e:	735f 6474 756f      	0x756f6474735f
 a94:	0074                	addi	a3,sp,12
 a96:	5f5f 6d74 775f      	0x775f6d745f5f
 a9c:	6164                	ld	s1,192(a0)
 a9e:	0079                	c.nop	30
 aa0:	675f 756c 0065      	0x65756c675f
 aa6:	735f 6474 6e69      	0x6e696474735f
 aac:	5f00                	lw	s0,56(a4)
 aae:	7a697373          	csrrci	t1,0x7a6,18
 ab2:	5f65                	li	t5,-7
 ab4:	0074                	addi	a3,sp,12
 ab6:	6c5f 3436 5f61      	0x5f6134366c5f
 abc:	7562                	ld	a0,56(sp)
 abe:	0066                	c.slli	zero,0x19
 ac0:	735f 6769 665f      	0x665f6769735f
 ac6:	6e75                	lui	t3,0x1d
 ac8:	6e5f0063          	beq	t5,t0,11a8 <register_fini-0xef08>
 acc:	7562                	ld	a0,56(sp)
 ace:	0066                	c.slli	zero,0x19
 ad0:	755f 756e 6573      	0x6573756e755f
 ad6:	0064                	addi	s1,sp,12
 ad8:	5f5f 6d74 695f      	0x695f6d745f5f
 ade:	74736473          	csrrsi	s0,0x747,6
 ae2:	5f00                	lw	s0,56(a4)
 ae4:	6f6c                	ld	a1,216(a4)
 ae6:	746c6163          	bltu	s8,t1,1228 <register_fini-0xee88>
 aea:	6d69                	lui	s10,0x1a
 aec:	5f65                	li	t5,-7
 aee:	7562                	ld	a0,56(sp)
 af0:	0066                	c.slli	zero,0x19
 af2:	5f5f 6d74 6d5f      	0x6d5f6d745f5f
 af8:	6e69                	lui	t3,0x1a
 afa:	5f00                	lw	s0,56(a4)
 afc:	3472                	fld	fs0,312(sp)
 afe:	0038                	addi	a4,sp,8
 b00:	4241                	li	tp,16
 b02:	5f49                	li	t5,-14
 b04:	504c                	lw	a1,36(s0)
 b06:	3436                	fld	fs0,360(sp)
 b08:	0044                	addi	s1,sp,4
 b0a:	6f74706f          	j	48a00 <__BSS_END__+0x361d0>
 b0e:	7470                	ld	a2,232(s0)
 b10:	4100                	lw	s0,0(a0)
 b12:	4942                	lw	s2,16(sp)
 b14:	4c5f 3650 4634      	0x463436504c5f
 b1a:	5f00                	lw	s0,56(a4)
 b1c:	626d                	lui	tp,0x1b
 b1e:	6f74                	ld	a3,216(a4)
 b20:	735f6377          	0x735f6377
 b24:	6174                	ld	a3,192(a0)
 b26:	6574                	ld	a3,200(a0)
 b28:	5f00                	lw	s0,56(a4)
 b2a:	3570                	fld	fa2,232(a0)
 b2c:	5f5f0073          	0x5f5f0073
 b30:	6d74                	ld	a3,216(a0)
 b32:	6d5f 6164 0079      	0x7961646d5f
 b38:	7468                	ld	a0,232(s0)
 b3a:	6261                	lui	tp,0x18
 b3c:	655f 0071       	0x71655f

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
    136c:	2800                	fld	fs0,16(s0)
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
    140c:	0328                	addi	a0,sp,392
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
    1492:	2000                	fld	fs0,0(s0)
    1494:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1498:	0000                	unimp
    149a:	0100                	addi	s0,sp,128
    149c:	6500                	ld	s0,8(a0)
	...
    14ae:	0038                	addi	a4,sp,8
    14b0:	0000                	unimp
    14b2:	0000                	unimp
    14b4:	0000                	unimp
    14b6:	0314                	addi	a3,sp,384
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
    15ec:	4059                	c.li	zero,22
    15ee:	0002                	c.slli64	zero
    15f0:	0000                	unimp
    15f2:	0000                	unimp
    15f4:	6400                	ld	s0,8(s0)
    15f6:	0002                	c.slli64	zero
    15f8:	0000                	unimp
    15fa:	0000                	unimp
    15fc:	0100                	addi	s0,sp,128
    15fe:	5900                	lw	s0,48(a0)
    1600:	0270                	addi	a2,sp,268
    1602:	0000                	unimp
    1604:	0000                	unimp
    1606:	0000                	unimp
    1608:	0278                	addi	a4,sp,268
    160a:	0000                	unimp
    160c:	0000                	unimp
    160e:	0000                	unimp
    1610:	0001                	nop
    1612:	d859                	beqz	s0,15a8 <register_fini-0xeb08>
    1614:	0002                	c.slli64	zero
    1616:	0000                	unimp
    1618:	0000                	unimp
    161a:	e800                	sd	s0,16(s0)
    161c:	0002                	c.slli64	zero
    161e:	0000                	unimp
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
    1670:	0240                	addi	s0,sp,260
    1672:	0000                	unimp
    1674:	0000                	unimp
    1676:	0000                	unimp
    1678:	024c                	addi	a1,sp,260
    167a:	0000                	unimp
    167c:	0000                	unimp
    167e:	0000                	unimp
    1680:	0001                	nop
    1682:	705f 0002 0000      	0x2705f
    1688:	0000                	unimp
    168a:	7800                	ld	s0,48(s0)
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
    16c6:	031c                	addi	a5,sp,384
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
    17d8:	4058                	lw	a4,4(s0)
    17da:	0002                	c.slli64	zero
    17dc:	0000                	unimp
    17de:	0000                	unimp
    17e0:	4800                	lw	s0,16(s0)
    17e2:	0002                	c.slli64	zero
    17e4:	0000                	unimp
    17e6:	0000                	unimp
    17e8:	0100                	addi	s0,sp,128
    17ea:	5800                	lw	s0,48(s0)
    17ec:	0270                	addi	a2,sp,268
    17ee:	0000                	unimp
    17f0:	0000                	unimp
    17f2:	0000                	unimp
    17f4:	0278                	addi	a4,sp,268
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
    1816:	ec00                	sd	s0,24(s0)
    1818:	0001                	nop
    181a:	0000                	unimp
    181c:	0000                	unimp
    181e:	0200                	addi	s0,sp,256
    1820:	3000                	fld	fs0,32(s0)
    1822:	4c9f 0002 0000      	0x24c9f
    1828:	0000                	unimp
    182a:	6400                	ld	s0,8(s0)
    182c:	0002                	c.slli64	zero
    182e:	0000                	unimp
    1830:	0000                	unimp
    1832:	0100                	addi	s0,sp,128
    1834:	5f00                	lw	s0,56(a4)
    1836:	0278                	addi	a4,sp,268
    1838:	0000                	unimp
    183a:	0000                	unimp
    183c:	0000                	unimp
    183e:	0280                	addi	s0,sp,320
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
    186c:	5c5a                	lw	s8,180(sp)
    186e:	0001                	nop
    1870:	0000                	unimp
    1872:	0000                	unimp
    1874:	4400                	lw	s0,8(s0)
    1876:	0002                	c.slli64	zero
    1878:	0000                	unimp
    187a:	0000                	unimp
    187c:	0100                	addi	s0,sp,128
    187e:	5a00                	lw	s0,48(a2)
    1880:	0244                	addi	s1,sp,260
    1882:	0000                	unimp
    1884:	0000                	unimp
    1886:	0000                	unimp
    1888:	024c                	addi	a1,sp,260
    188a:	0000                	unimp
    188c:	0000                	unimp
    188e:	0000                	unimp
    1890:	0006                	c.slli	zero,0x1
    1892:	0082                	c.slli64	ra
    1894:	ff08                	sd	a0,56(a4)
    1896:	9f1a                	add	t5,t5,t1
    1898:	024c                	addi	a1,sp,260
    189a:	0000                	unimp
    189c:	0000                	unimp
    189e:	0000                	unimp
    18a0:	0274                	addi	a3,sp,268
    18a2:	0000                	unimp
    18a4:	0000                	unimp
    18a6:	0000                	unimp
    18a8:	0001                	nop
    18aa:	745a                	ld	s0,432(sp)
    18ac:	0002                	c.slli64	zero
    18ae:	0000                	unimp
    18b0:	0000                	unimp
    18b2:	7800                	ld	s0,48(s0)
    18b4:	0002                	c.slli64	zero
    18b6:	0000                	unimp
    18b8:	0000                	unimp
    18ba:	0600                	addi	s0,sp,768
    18bc:	8400                	0x8400
    18be:	0800                	addi	s0,sp,16
    18c0:	1aff                	0x1aff
    18c2:	789f 0002 0000      	0x2789f
    18c8:	0000                	unimp
    18ca:	0000                	unimp
    18cc:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    18d0:	0000                	unimp
    18d2:	0100                	addi	s0,sp,128
    18d4:	5a00                	lw	s0,48(a2)
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
    18f8:	5c5d                	li	s8,-9
    18fa:	0001                	nop
    18fc:	0000                	unimp
    18fe:	0000                	unimp
    1900:	f000                	sd	s0,32(s0)
    1902:	0001                	nop
    1904:	0000                	unimp
    1906:	0000                	unimp
    1908:	0100                	addi	s0,sp,128
    190a:	5d00                	lw	s0,56(a0)
    190c:	01f0                	addi	a2,sp,204
    190e:	0000                	unimp
    1910:	0000                	unimp
    1912:	0000                	unimp
    1914:	0218                	addi	a4,sp,256
    1916:	0000                	unimp
    1918:	0000                	unimp
    191a:	0000                	unimp
    191c:	0001                	nop
    191e:	185f 0002 0000      	0x2185f
    1924:	0000                	unimp
    1926:	2800                	fld	fs0,16(s0)
    1928:	0002                	c.slli64	zero
    192a:	0000                	unimp
    192c:	0000                	unimp
    192e:	0400                	addi	s0,sp,512
    1930:	7d00                	ld	s0,56(a0)
    1932:	07ff                	0x7ff
    1934:	289f 0002 0000      	0x2289f
    193a:	0000                	unimp
    193c:	3400                	fld	fs0,40(s0)
    193e:	0002                	c.slli64	zero
    1940:	0000                	unimp
    1942:	0000                	unimp
    1944:	0100                	addi	s0,sp,128
    1946:	5f00                	lw	s0,56(a4)
    1948:	0240                	addi	s0,sp,260
    194a:	0000                	unimp
    194c:	0000                	unimp
    194e:	0000                	unimp
    1950:	0264                	addi	s1,sp,268
    1952:	0000                	unimp
    1954:	0000                	unimp
    1956:	0000                	unimp
    1958:	0001                	nop
    195a:	705d                	c.lui	zero,0xffff7
    195c:	0002                	c.slli64	zero
    195e:	0000                	unimp
    1960:	0000                	unimp
    1962:	7c00                	ld	s0,56(s0)
    1964:	0002                	c.slli64	zero
    1966:	0000                	unimp
    1968:	0000                	unimp
    196a:	0100                	addi	s0,sp,128
    196c:	5d00                	lw	s0,56(a0)
    196e:	027c                	addi	a5,sp,268
    1970:	0000                	unimp
    1972:	0000                	unimp
    1974:	0000                	unimp
    1976:	0280                	addi	s0,sp,320
    1978:	0000                	unimp
    197a:	0000                	unimp
    197c:	0000                	unimp
    197e:	01830003          	lb	zero,24(t1) # ffffffffffff9018 <__BSS_END__+0xfffffffffffe67e8>
    1982:	809f 0002 0000      	0x2809f
    1988:	0000                	unimp
    198a:	8800                	0x8800
    198c:	0002                	c.slli64	zero
    198e:	0000                	unimp
    1990:	0000                	unimp
    1992:	0100                	addi	s0,sp,128
    1994:	5f00                	lw	s0,56(a4)
    1996:	0288                	addi	a0,sp,320
    1998:	0000                	unimp
    199a:	0000                	unimp
    199c:	0000                	unimp
    199e:	029c                	addi	a5,sp,320
    19a0:	0000                	unimp
    19a2:	0000                	unimp
    19a4:	0000                	unimp
    19a6:	0001                	nop
    19a8:	d85e                	sw	s7,48(sp)
    19aa:	0002                	c.slli64	zero
    19ac:	0000                	unimp
    19ae:	0000                	unimp
    19b0:	e800                	sd	s0,16(s0)
    19b2:	0002                	c.slli64	zero
    19b4:	0000                	unimp
    19b6:	0000                	unimp
    19b8:	0100                	addi	s0,sp,128
    19ba:	5d00                	lw	s0,56(a0)
    19bc:	02e8                	addi	a0,sp,332
    19be:	0000                	unimp
    19c0:	0000                	unimp
    19c2:	0000                	unimp
    19c4:	02ec                	addi	a1,sp,332
    19c6:	0000                	unimp
    19c8:	0000                	unimp
    19ca:	0000                	unimp
    19cc:	0001                	nop
    19ce:	005f 0000 0000      	0x5f
	...
    19dc:	0000                	unimp
    19de:	d800                	sw	s0,48(s0)
    19e0:	0001                	nop
    19e2:	0000                	unimp
    19e4:	0000                	unimp
    19e6:	e800                	sd	s0,16(s0)
    19e8:	0001                	nop
    19ea:	0000                	unimp
    19ec:	0000                	unimp
    19ee:	0100                	addi	s0,sp,128
    19f0:	5800                	lw	s0,48(s0)
    19f2:	01ec                	addi	a1,sp,204
    19f4:	0000                	unimp
    19f6:	0000                	unimp
    19f8:	0000                	unimp
    19fa:	0228                	addi	a0,sp,264
    19fc:	0000                	unimp
    19fe:	0000                	unimp
    1a00:	0000                	unimp
    1a02:	0001                	nop
    1a04:	2858                	fld	fa4,144(s0)
    1a06:	0002                	c.slli64	zero
    1a08:	0000                	unimp
    1a0a:	0000                	unimp
    1a0c:	3000                	fld	fs0,32(s0)
    1a0e:	0002                	c.slli64	zero
    1a10:	0000                	unimp
    1a12:	0000                	unimp
    1a14:	0500                	addi	s0,sp,640
    1a16:	7800                	ld	s0,48(s0)
    1a18:	3300                	fld	fs0,32(a4)
    1a1a:	9f25                	addw	a4,a4,s1
    1a1c:	0230                	addi	a2,sp,264
    1a1e:	0000                	unimp
    1a20:	0000                	unimp
    1a22:	0000                	unimp
    1a24:	0238                	addi	a4,sp,264
    1a26:	0000                	unimp
    1a28:	0000                	unimp
    1a2a:	0000                	unimp
    1a2c:	0001                	nop
    1a2e:	4c58                	lw	a4,28(s0)
    1a30:	0002                	c.slli64	zero
    1a32:	0000                	unimp
    1a34:	0000                	unimp
    1a36:	6800                	ld	s0,16(s0)
    1a38:	0002                	c.slli64	zero
    1a3a:	0000                	unimp
    1a3c:	0000                	unimp
    1a3e:	0100                	addi	s0,sp,128
    1a40:	5800                	lw	s0,48(s0)
    1a42:	0278                	addi	a4,sp,268
    1a44:	0000                	unimp
    1a46:	0000                	unimp
    1a48:	0000                	unimp
    1a4a:	02a0                	addi	s0,sp,328
    1a4c:	0000                	unimp
    1a4e:	0000                	unimp
    1a50:	0000                	unimp
    1a52:	0001                	nop
    1a54:	a858                	fsd	fa4,144(s0)
    1a56:	0002                	c.slli64	zero
    1a58:	0000                	unimp
    1a5a:	0000                	unimp
    1a5c:	c800                	sw	s0,16(s0)
    1a5e:	0002                	c.slli64	zero
    1a60:	0000                	unimp
    1a62:	0000                	unimp
    1a64:	0100                	addi	s0,sp,128
    1a66:	5800                	lw	s0,48(s0)
    1a68:	02e8                	addi	a0,sp,332
    1a6a:	0000                	unimp
    1a6c:	0000                	unimp
    1a6e:	0000                	unimp
    1a70:	02f0                	addi	a2,sp,332
    1a72:	0000                	unimp
    1a74:	0000                	unimp
    1a76:	0000                	unimp
    1a78:	0001                	nop
    1a7a:	0058                	addi	a4,sp,4
	...
    1a8c:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1a90:	0000                	unimp
    1a92:	0800                	addi	s0,sp,16
    1a94:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1a98:	0000                	unimp
    1a9a:	0800                	addi	s0,sp,16
    1a9c:	7800                	ld	s0,48(s0)
    1a9e:	7a00                	ld	s0,48(a2)
    1aa0:	2100                	fld	fs0,0(a0)
    1aa2:	2df9                	addiw	s11,s11,30
    1aa4:	089f 0003 0000      	0x3089f
    1aaa:	0000                	unimp
    1aac:	2800                	fld	fs0,16(s0)
    1aae:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1ab2:	0000                	unimp
    1ab4:	0100                	addi	s0,sp,128
    1ab6:	5a00                	lw	s0,48(a2)
	...
    1ac8:	00e4                	addi	s1,sp,76
    1aca:	0000                	unimp
    1acc:	0000                	unimp
    1ace:	0000                	unimp
    1ad0:	00f8                	addi	a4,sp,76
    1ad2:	0000                	unimp
    1ad4:	0000                	unimp
    1ad6:	0000                	unimp
    1ad8:	757e0003          	lb	zero,1879(t3) # 1a757 <__BSS_END__+0x7f27>
    1adc:	009f 0000 0000      	0x9f
	...
    1aea:	0000                	unimp
    1aec:	2800                	fld	fs0,16(s0)
    1aee:	0001                	nop
    1af0:	0000                	unimp
    1af2:	0000                	unimp
    1af4:	3c00                	fld	fs0,56(s0)
    1af6:	0001                	nop
    1af8:	0000                	unimp
    1afa:	0000                	unimp
    1afc:	0300                	addi	s0,sp,384
    1afe:	7f00                	ld	s0,56(a4)
    1b00:	9f75                	0x9f75
	...
    1b12:	01b8                	addi	a4,sp,200
    1b14:	0000                	unimp
    1b16:	0000                	unimp
    1b18:	0000                	unimp
    1b1a:	01c8                	addi	a0,sp,196
    1b1c:	0000                	unimp
    1b1e:	0000                	unimp
    1b20:	0000                	unimp
    1b22:	0001                	nop
    1b24:	d85f 0001 0000      	0x1d85f
    1b2a:	0000                	unimp
    1b2c:	e800                	sd	s0,16(s0)
    1b2e:	0001                	nop
    1b30:	0000                	unimp
    1b32:	0000                	unimp
    1b34:	0100                	addi	s0,sp,128
    1b36:	5800                	lw	s0,48(s0)
    1b38:	0278                	addi	a4,sp,268
    1b3a:	0000                	unimp
    1b3c:	0000                	unimp
    1b3e:	0000                	unimp
    1b40:	0280                	addi	s0,sp,320
    1b42:	0000                	unimp
    1b44:	0000                	unimp
    1b46:	0000                	unimp
    1b48:	0001                	nop
    1b4a:	0058                	addi	a4,sp,4
	...
    1b58:	0000                	unimp
    1b5a:	a000                	fsd	fs0,0(s0)
    1b5c:	0001                	nop
    1b5e:	0000                	unimp
    1b60:	0000                	unimp
    1b62:	c000                	sw	s0,0(s0)
    1b64:	0001                	nop
    1b66:	0000                	unimp
    1b68:	0000                	unimp
    1b6a:	0900                	addi	s0,sp,144
    1b6c:	7900                	ld	s0,48(a0)
    1b6e:	0800                	addi	s0,sp,16
    1b70:	2520                	fld	fs0,72(a0)
    1b72:	007e                	c.slli	zero,0x1f
    1b74:	9f22                	add	t5,t5,s0
    1b76:	01cc                	addi	a1,sp,196
    1b78:	0000                	unimp
    1b7a:	0000                	unimp
    1b7c:	0000                	unimp
    1b7e:	01d4                	addi	a3,sp,196
    1b80:	0000                	unimp
    1b82:	0000                	unimp
    1b84:	0000                	unimp
    1b86:	0001                	nop
    1b88:	0059                	c.nop	22
	...
    1b96:	0000                	unimp
    1b98:	7800                	ld	s0,48(s0)
    1b9a:	0001                	nop
    1b9c:	0000                	unimp
    1b9e:	0000                	unimp
    1ba0:	b000                	fsd	fs0,32(s0)
    1ba2:	0001                	nop
    1ba4:	0000                	unimp
    1ba6:	0000                	unimp
    1ba8:	0100                	addi	s0,sp,128
    1baa:	5b00                	lw	s0,48(a4)
	...
    1bbc:	0178                	addi	a4,sp,140
    1bbe:	0000                	unimp
    1bc0:	0000                	unimp
    1bc2:	0000                	unimp
    1bc4:	0184                	addi	s1,sp,192
    1bc6:	0000                	unimp
    1bc8:	0000                	unimp
    1bca:	0000                	unimp
    1bcc:	0006                	c.slli	zero,0x1
    1bce:	007c                	addi	a5,sp,12
    1bd0:	0079                	c.nop	30
    1bd2:	9f1e                	add	t5,t5,t2
    1bd4:	0184                	addi	s1,sp,192
    1bd6:	0000                	unimp
    1bd8:	0000                	unimp
    1bda:	0000                	unimp
    1bdc:	018c                	addi	a1,sp,192
    1bde:	0000                	unimp
    1be0:	0000                	unimp
    1be2:	0000                	unimp
    1be4:	0001                	nop
    1be6:	905c                	0x905c
    1be8:	0001                	nop
    1bea:	0000                	unimp
    1bec:	0000                	unimp
    1bee:	c000                	sw	s0,0(s0)
    1bf0:	0001                	nop
    1bf2:	0000                	unimp
    1bf4:	0000                	unimp
    1bf6:	0100                	addi	s0,sp,128
    1bf8:	5900                	lw	s0,48(a0)
	...
    1c0a:	017c                	addi	a5,sp,140
    1c0c:	0000                	unimp
    1c0e:	0000                	unimp
    1c10:	0000                	unimp
    1c12:	01a4                	addi	s1,sp,200
    1c14:	0000                	unimp
    1c16:	0000                	unimp
    1c18:	0000                	unimp
    1c1a:	0001                	nop
    1c1c:	0058                	addi	a4,sp,4
	...
    1c2a:	0000                	unimp
    1c2c:	8000                	0x8000
    1c2e:	0001                	nop
    1c30:	0000                	unimp
    1c32:	0000                	unimp
    1c34:	ec00                	sd	s0,24(s0)
    1c36:	0001                	nop
    1c38:	0000                	unimp
    1c3a:	0000                	unimp
    1c3c:	0100                	addi	s0,sp,128
    1c3e:	5e00                	lw	s0,56(a2)
    1c40:	0278                	addi	a4,sp,268
    1c42:	0000                	unimp
    1c44:	0000                	unimp
    1c46:	0000                	unimp
    1c48:	0280                	addi	s0,sp,320
    1c4a:	0000                	unimp
    1c4c:	0000                	unimp
    1c4e:	0000                	unimp
    1c50:	0001                	nop
    1c52:	005e                	c.slli	zero,0x17
	...
    1c60:	0000                	unimp
    1c62:	5c00                	lw	s0,56(s0)
    1c64:	0001                	nop
    1c66:	0000                	unimp
    1c68:	0000                	unimp
    1c6a:	7000                	ld	s0,32(s0)
    1c6c:	0001                	nop
    1c6e:	0000                	unimp
    1c70:	0000                	unimp
    1c72:	0100                	addi	s0,sp,128
    1c74:	5900                	lw	s0,48(a0)
	...
    1c86:	0168                	addi	a0,sp,140
    1c88:	0000                	unimp
    1c8a:	0000                	unimp
    1c8c:	0000                	unimp
    1c8e:	0174                	addi	a3,sp,140
    1c90:	0000                	unimp
    1c92:	0000                	unimp
    1c94:	0000                	unimp
    1c96:	0001                	nop
    1c98:	0058                	addi	a4,sp,4
	...
    1ca6:	0000                	unimp
    1ca8:	6800                	ld	s0,16(s0)
    1caa:	0001                	nop
    1cac:	0000                	unimp
    1cae:	0000                	unimp
    1cb0:	8000                	0x8000
    1cb2:	0001                	nop
    1cb4:	0000                	unimp
    1cb6:	0000                	unimp
    1cb8:	0100                	addi	s0,sp,128
    1cba:	5e00                	lw	s0,56(a2)
	...
    1ccc:	016c                	addi	a1,sp,140
    1cce:	0000                	unimp
    1cd0:	0000                	unimp
    1cd2:	0000                	unimp
    1cd4:	0184                	addi	s1,sp,192
    1cd6:	0000                	unimp
    1cd8:	0000                	unimp
    1cda:	0000                	unimp
    1cdc:	0001                	nop
    1cde:	005c                	addi	a5,sp,4
	...
    1cf4:	0000                	unimp
    1cf6:	6000                	ld	s0,0(s0)
    1cf8:	0000                	unimp
    1cfa:	0000                	unimp
    1cfc:	0000                	unimp
    1cfe:	0100                	addi	s0,sp,128
    1d00:	5a00                	lw	s0,48(a2)
    1d02:	0060                	addi	s0,sp,12
    1d04:	0000                	unimp
    1d06:	0000                	unimp
    1d08:	0000                	unimp
    1d0a:	0488                	addi	a0,sp,576
    1d0c:	0000                	unimp
    1d0e:	0000                	unimp
    1d10:	0000                	unimp
    1d12:	0006                	c.slli	zero,0x1
    1d14:	0af503f3          	0xaf503f3
    1d18:	9f2d                	addw	a4,a4,a1
	...
    1d32:	0048                	addi	a0,sp,4
    1d34:	0000                	unimp
    1d36:	0000                	unimp
    1d38:	0000                	unimp
    1d3a:	0001                	nop
    1d3c:	0000485b          	0x485b
    1d40:	0000                	unimp
    1d42:	0000                	unimp
    1d44:	8800                	0x8800
    1d46:	0004                	0x4
    1d48:	0000                	unimp
    1d4a:	0000                	unimp
    1d4c:	0600                	addi	s0,sp,768
    1d4e:	f300                	sd	s0,32(a4)
    1d50:	2d0bf503          	0x2d0bf503
    1d54:	009f 0000 0000      	0x9f
	...
    1d6a:	0000                	unimp
    1d6c:	b800                	fsd	fs0,48(s0)
    1d6e:	0000                	unimp
    1d70:	0000                	unimp
    1d72:	0000                	unimp
    1d74:	0200                	addi	s0,sp,256
    1d76:	3000                	fld	fs0,32(s0)
    1d78:	d49f 0000 0000      	0xd49f
    1d7e:	0000                	unimp
    1d80:	c800                	sw	s0,16(s0)
    1d82:	0001                	nop
    1d84:	0000                	unimp
    1d86:	0000                	unimp
    1d88:	0200                	addi	s0,sp,256
    1d8a:	3000                	fld	fs0,32(s0)
    1d8c:	e49f 0001 0000      	0x1e49f
    1d92:	0000                	unimp
    1d94:	3c00                	fld	fs0,56(s0)
    1d96:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1d9a:	0000                	unimp
    1d9c:	0200                	addi	s0,sp,256
    1d9e:	3000                	fld	fs0,32(s0)
    1da0:	549f 0003 0000      	0x3549f
    1da6:	0000                	unimp
    1da8:	e400                	sd	s0,8(s0)
    1daa:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1dae:	0000                	unimp
    1db0:	0200                	addi	s0,sp,256
    1db2:	3000                	fld	fs0,32(s0)
    1db4:	ec9f 0003 0000      	0x3ec9f
    1dba:	0000                	unimp
    1dbc:	f400                	sd	s0,40(s0)
    1dbe:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1dc2:	0000                	unimp
    1dc4:	0200                	addi	s0,sp,256
    1dc6:	3000                	fld	fs0,32(s0)
    1dc8:	689f 0004 0000      	0x4689f
    1dce:	0000                	unimp
    1dd0:	8000                	0x8000
    1dd2:	0004                	0x4
    1dd4:	0000                	unimp
    1dd6:	0000                	unimp
    1dd8:	0200                	addi	s0,sp,256
    1dda:	3000                	fld	fs0,32(s0)
    1ddc:	009f 0000 0000      	0x9f
	...
    1dea:	0000                	unimp
    1dec:	4000                	lw	s0,0(s0)
    1dee:	0000                	unimp
    1df0:	0000                	unimp
    1df2:	0000                	unimp
    1df4:	b800                	fsd	fs0,48(s0)
    1df6:	0000                	unimp
    1df8:	0000                	unimp
    1dfa:	0000                	unimp
    1dfc:	0100                	addi	s0,sp,128
    1dfe:	5900                	lw	s0,48(a0)
    1e00:	00d4                	addi	a3,sp,68
    1e02:	0000                	unimp
    1e04:	0000                	unimp
    1e06:	0000                	unimp
    1e08:	01d8                	addi	a4,sp,196
    1e0a:	0000                	unimp
    1e0c:	0000                	unimp
    1e0e:	0000                	unimp
    1e10:	0001                	nop
    1e12:	e459                	bnez	s0,1ea0 <register_fini-0xe210>
    1e14:	0001                	nop
    1e16:	0000                	unimp
    1e18:	0000                	unimp
    1e1a:	1400                	addi	s0,sp,544
    1e1c:	0002                	c.slli64	zero
    1e1e:	0000                	unimp
    1e20:	0000                	unimp
    1e22:	0100                	addi	s0,sp,128
    1e24:	5900                	lw	s0,48(a0)
    1e26:	0228                	addi	a0,sp,264
    1e28:	0000                	unimp
    1e2a:	0000                	unimp
    1e2c:	0000                	unimp
    1e2e:	0294                	addi	a3,sp,320
    1e30:	0000                	unimp
    1e32:	0000                	unimp
    1e34:	0000                	unimp
    1e36:	0001                	nop
    1e38:	9859                	andi	s0,s0,-10
    1e3a:	0002                	c.slli64	zero
    1e3c:	0000                	unimp
    1e3e:	0000                	unimp
    1e40:	0800                	addi	s0,sp,16
    1e42:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1e46:	0000                	unimp
    1e48:	0100                	addi	s0,sp,128
    1e4a:	5900                	lw	s0,48(a0)
    1e4c:	0318                	addi	a4,sp,384
    1e4e:	0000                	unimp
    1e50:	0000                	unimp
    1e52:	0000                	unimp
    1e54:	034c                	addi	a1,sp,388
    1e56:	0000                	unimp
    1e58:	0000                	unimp
    1e5a:	0000                	unimp
    1e5c:	0001                	nop
    1e5e:	5459                	li	s0,-10
    1e60:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1e64:	0000                	unimp
    1e66:	6800                	ld	s0,16(s0)
    1e68:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1e6c:	0000                	unimp
    1e6e:	0100                	addi	s0,sp,128
    1e70:	5900                	lw	s0,48(a0)
    1e72:	03a4                	addi	s1,sp,456
    1e74:	0000                	unimp
    1e76:	0000                	unimp
    1e78:	0000                	unimp
    1e7a:	03b4                	addi	a3,sp,456
    1e7c:	0000                	unimp
    1e7e:	0000                	unimp
    1e80:	0000                	unimp
    1e82:	0001                	nop
    1e84:	d059                	beqz	s0,1e0a <register_fini-0xe2a6>
    1e86:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1e8a:	0000                	unimp
    1e8c:	f400                	sd	s0,40(s0)
    1e8e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1e92:	0000                	unimp
    1e94:	0100                	addi	s0,sp,128
    1e96:	5900                	lw	s0,48(a0)
    1e98:	0468                	addi	a0,sp,524
    1e9a:	0000                	unimp
    1e9c:	0000                	unimp
    1e9e:	0000                	unimp
    1ea0:	0480                	addi	s0,sp,576
    1ea2:	0000                	unimp
    1ea4:	0000                	unimp
    1ea6:	0000                	unimp
    1ea8:	0001                	nop
    1eaa:	0059                	c.nop	22
	...
    1eb8:	0000                	unimp
    1eba:	3c00                	fld	fs0,56(s0)
    1ebc:	0000                	unimp
    1ebe:	0000                	unimp
    1ec0:	0000                	unimp
    1ec2:	7c00                	ld	s0,56(s0)
    1ec4:	0000                	unimp
    1ec6:	0000                	unimp
    1ec8:	0000                	unimp
    1eca:	0100                	addi	s0,sp,128
    1ecc:	5800                	lw	s0,48(s0)
    1ece:	007c                	addi	a5,sp,12
    1ed0:	0000                	unimp
    1ed2:	0000                	unimp
    1ed4:	0000                	unimp
    1ed6:	00b0                	addi	a2,sp,72
    1ed8:	0000                	unimp
    1eda:	0000                	unimp
    1edc:	0000                	unimp
    1ede:	0001                	nop
    1ee0:	b060                	fsd	fs0,224(s0)
    1ee2:	0000                	unimp
    1ee4:	0000                	unimp
    1ee6:	0000                	unimp
    1ee8:	b800                	fsd	fs0,48(s0)
    1eea:	0000                	unimp
    1eec:	0000                	unimp
    1eee:	0000                	unimp
    1ef0:	0100                	addi	s0,sp,128
    1ef2:	5800                	lw	s0,48(s0)
    1ef4:	00d4                	addi	a3,sp,68
    1ef6:	0000                	unimp
    1ef8:	0000                	unimp
    1efa:	0000                	unimp
    1efc:	0130                	addi	a2,sp,136
    1efe:	0000                	unimp
    1f00:	0000                	unimp
    1f02:	0000                	unimp
    1f04:	0001                	nop
    1f06:	3058                	fld	fa4,160(s0)
    1f08:	0001                	nop
    1f0a:	0000                	unimp
    1f0c:	0000                	unimp
    1f0e:	3400                	fld	fs0,40(s0)
    1f10:	0001                	nop
    1f12:	0000                	unimp
    1f14:	0000                	unimp
    1f16:	0100                	addi	s0,sp,128
    1f18:	6000                	ld	s0,0(s0)
    1f1a:	0134                	addi	a3,sp,136
    1f1c:	0000                	unimp
    1f1e:	0000                	unimp
    1f20:	0000                	unimp
    1f22:	01c4                	addi	s1,sp,196
    1f24:	0000                	unimp
    1f26:	0000                	unimp
    1f28:	0000                	unimp
    1f2a:	0001                	nop
    1f2c:	c458                	sw	a4,12(s0)
    1f2e:	0001                	nop
    1f30:	0000                	unimp
    1f32:	0000                	unimp
    1f34:	c800                	sw	s0,16(s0)
    1f36:	0001                	nop
    1f38:	0000                	unimp
    1f3a:	0000                	unimp
    1f3c:	0100                	addi	s0,sp,128
    1f3e:	6000                	ld	s0,0(s0)
    1f40:	01c8                	addi	a0,sp,196
    1f42:	0000                	unimp
    1f44:	0000                	unimp
    1f46:	0000                	unimp
    1f48:	01e0                	addi	s0,sp,204
    1f4a:	0000                	unimp
    1f4c:	0000                	unimp
    1f4e:	0000                	unimp
    1f50:	0001                	nop
    1f52:	e058                	sd	a4,128(s0)
    1f54:	0001                	nop
    1f56:	0000                	unimp
    1f58:	0000                	unimp
    1f5a:	e400                	sd	s0,8(s0)
    1f5c:	0001                	nop
    1f5e:	0000                	unimp
    1f60:	0000                	unimp
    1f62:	0100                	addi	s0,sp,128
    1f64:	6000                	ld	s0,0(s0)
    1f66:	01e4                	addi	s1,sp,204
    1f68:	0000                	unimp
    1f6a:	0000                	unimp
    1f6c:	0000                	unimp
    1f6e:	01f8                	addi	a4,sp,204
    1f70:	0000                	unimp
    1f72:	0000                	unimp
    1f74:	0000                	unimp
    1f76:	0001                	nop
    1f78:	f858                	sd	a4,176(s0)
    1f7a:	0001                	nop
    1f7c:	0000                	unimp
    1f7e:	0000                	unimp
    1f80:	fc00                	sd	s0,56(s0)
    1f82:	0001                	nop
    1f84:	0000                	unimp
    1f86:	0000                	unimp
    1f88:	0100                	addi	s0,sp,128
    1f8a:	6000                	ld	s0,0(s0)
    1f8c:	01fc                	addi	a5,sp,204
    1f8e:	0000                	unimp
    1f90:	0000                	unimp
    1f92:	0000                	unimp
    1f94:	0214                	addi	a3,sp,256
    1f96:	0000                	unimp
    1f98:	0000                	unimp
    1f9a:	0000                	unimp
    1f9c:	0001                	nop
    1f9e:	2858                	fld	fa4,144(s0)
    1fa0:	0002                	c.slli64	zero
    1fa2:	0000                	unimp
    1fa4:	0000                	unimp
    1fa6:	9000                	0x9000
    1fa8:	0002                	c.slli64	zero
    1faa:	0000                	unimp
    1fac:	0000                	unimp
    1fae:	0100                	addi	s0,sp,128
    1fb0:	5800                	lw	s0,48(s0)
    1fb2:	0298                	addi	a4,sp,320
    1fb4:	0000                	unimp
    1fb6:	0000                	unimp
    1fb8:	0000                	unimp
    1fba:	0310                	addi	a2,sp,384
    1fbc:	0000                	unimp
    1fbe:	0000                	unimp
    1fc0:	0000                	unimp
    1fc2:	0001                	nop
    1fc4:	1858                	addi	a4,sp,52
    1fc6:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1fca:	0000                	unimp
    1fcc:	5000                	lw	s0,32(s0)
    1fce:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1fd2:	0000                	unimp
    1fd4:	0100                	addi	s0,sp,128
    1fd6:	5800                	lw	s0,48(s0)
    1fd8:	0350                	addi	a2,sp,388
    1fda:	0000                	unimp
    1fdc:	0000                	unimp
    1fde:	0000                	unimp
    1fe0:	0354                	addi	a3,sp,388
    1fe2:	0000                	unimp
    1fe4:	0000                	unimp
    1fe6:	0000                	unimp
    1fe8:	0001                	nop
    1fea:	5460                	lw	s0,108(s0)
    1fec:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1ff0:	0000                	unimp
    1ff2:	6800                	ld	s0,16(s0)
    1ff4:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    1ff8:	0000                	unimp
    1ffa:	0100                	addi	s0,sp,128
    1ffc:	5800                	lw	s0,48(s0)
    1ffe:	03a4                	addi	s1,sp,456
    2000:	0000                	unimp
    2002:	0000                	unimp
    2004:	0000                	unimp
    2006:	03b0                	addi	a2,sp,456
    2008:	0000                	unimp
    200a:	0000                	unimp
    200c:	0000                	unimp
    200e:	0001                	nop
    2010:	b058                	fsd	fa4,160(s0)
    2012:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2016:	0000                	unimp
    2018:	b800                	fsd	fs0,48(s0)
    201a:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    201e:	0000                	unimp
    2020:	0100                	addi	s0,sp,128
    2022:	6000                	ld	s0,0(s0)
    2024:	03d0                	addi	a2,sp,452
    2026:	0000                	unimp
    2028:	0000                	unimp
    202a:	0000                	unimp
    202c:	03d8                	addi	a4,sp,452
    202e:	0000                	unimp
    2030:	0000                	unimp
    2032:	0000                	unimp
    2034:	0001                	nop
    2036:	d858                	sw	a4,52(s0)
    2038:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    203c:	0000                	unimp
    203e:	dc00                	sw	s0,56(s0)
    2040:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2044:	0000                	unimp
    2046:	0100                	addi	s0,sp,128
    2048:	6000                	ld	s0,0(s0)
    204a:	03dc                	addi	a5,sp,452
    204c:	0000                	unimp
    204e:	0000                	unimp
    2050:	0000                	unimp
    2052:	03f0                	addi	a2,sp,460
    2054:	0000                	unimp
    2056:	0000                	unimp
    2058:	0000                	unimp
    205a:	0001                	nop
    205c:	f058                	sd	a4,160(s0)
    205e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2062:	0000                	unimp
    2064:	f400                	sd	s0,40(s0)
    2066:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    206a:	0000                	unimp
    206c:	0100                	addi	s0,sp,128
    206e:	6000                	ld	s0,0(s0)
    2070:	0468                	addi	a0,sp,524
    2072:	0000                	unimp
    2074:	0000                	unimp
    2076:	0000                	unimp
    2078:	0470                	addi	a2,sp,524
    207a:	0000                	unimp
    207c:	0000                	unimp
    207e:	0000                	unimp
    2080:	0001                	nop
    2082:	7058                	ld	a4,160(s0)
    2084:	0004                	0x4
    2086:	0000                	unimp
    2088:	0000                	unimp
    208a:	7400                	ld	s0,40(s0)
    208c:	0004                	0x4
    208e:	0000                	unimp
    2090:	0000                	unimp
    2092:	0100                	addi	s0,sp,128
    2094:	6000                	ld	s0,0(s0)
    2096:	0474                	addi	a3,sp,524
    2098:	0000                	unimp
    209a:	0000                	unimp
    209c:	0000                	unimp
    209e:	047c                	addi	a5,sp,524
    20a0:	0000                	unimp
    20a2:	0000                	unimp
    20a4:	0000                	unimp
    20a6:	0001                	nop
    20a8:	0058                	addi	a4,sp,4
	...
    20b6:	0000                	unimp
    20b8:	1800                	addi	s0,sp,48
    20ba:	0000                	unimp
    20bc:	0000                	unimp
    20be:	0000                	unimp
    20c0:	7c00                	ld	s0,56(s0)
    20c2:	0000                	unimp
    20c4:	0000                	unimp
    20c6:	0000                	unimp
    20c8:	0100                	addi	s0,sp,128
    20ca:	5f00                	lw	s0,56(a4)
    20cc:	00b0                	addi	a2,sp,72
    20ce:	0000                	unimp
    20d0:	0000                	unimp
    20d2:	0000                	unimp
    20d4:	00b8                	addi	a4,sp,72
    20d6:	0000                	unimp
    20d8:	0000                	unimp
    20da:	0000                	unimp
    20dc:	0001                	nop
    20de:	d45f 0000 0000      	0xd45f
    20e4:	0000                	unimp
    20e6:	1000                	addi	s0,sp,32
    20e8:	0001                	nop
    20ea:	0000                	unimp
    20ec:	0000                	unimp
    20ee:	0100                	addi	s0,sp,128
    20f0:	5f00                	lw	s0,56(a4)
    20f2:	0114                	addi	a3,sp,128
    20f4:	0000                	unimp
    20f6:	0000                	unimp
    20f8:	0000                	unimp
    20fa:	012c                	addi	a1,sp,136
    20fc:	0000                	unimp
    20fe:	0000                	unimp
    2100:	0000                	unimp
    2102:	0001                	nop
    2104:	345f 0001 0000      	0x1345f
    210a:	0000                	unimp
    210c:	6000                	ld	s0,0(s0)
    210e:	0001                	nop
    2110:	0000                	unimp
    2112:	0000                	unimp
    2114:	0100                	addi	s0,sp,128
    2116:	5f00                	lw	s0,56(a4)
    2118:	0168                	addi	a0,sp,140
    211a:	0000                	unimp
    211c:	0000                	unimp
    211e:	0000                	unimp
    2120:	0170                	addi	a2,sp,140
    2122:	0000                	unimp
    2124:	0000                	unimp
    2126:	0000                	unimp
    2128:	0001                	nop
    212a:	0001705b          	0x1705b
    212e:	0000                	unimp
    2130:	0000                	unimp
    2132:	a800                	fsd	fs0,16(s0)
    2134:	0001                	nop
    2136:	0000                	unimp
    2138:	0000                	unimp
    213a:	0100                	addi	s0,sp,128
    213c:	5f00                	lw	s0,56(a4)
    213e:	01c8                	addi	a0,sp,196
    2140:	0000                	unimp
    2142:	0000                	unimp
    2144:	0000                	unimp
    2146:	01d4                	addi	a3,sp,196
    2148:	0000                	unimp
    214a:	0000                	unimp
    214c:	0000                	unimp
    214e:	0001                	nop
    2150:	e45f 0001 0000      	0x1e45f
    2156:	0000                	unimp
    2158:	f000                	sd	s0,32(s0)
    215a:	0001                	nop
    215c:	0000                	unimp
    215e:	0000                	unimp
    2160:	0100                	addi	s0,sp,128
    2162:	5f00                	lw	s0,56(a4)
    2164:	01fc                	addi	a5,sp,204
    2166:	0000                	unimp
    2168:	0000                	unimp
    216a:	0000                	unimp
    216c:	0214                	addi	a3,sp,256
    216e:	0000                	unimp
    2170:	0000                	unimp
    2172:	0000                	unimp
    2174:	0001                	nop
    2176:	285f 0002 0000      	0x2285f
    217c:	0000                	unimp
    217e:	5800                	lw	s0,48(s0)
    2180:	0002                	c.slli64	zero
    2182:	0000                	unimp
    2184:	0000                	unimp
    2186:	0100                	addi	s0,sp,128
    2188:	5f00                	lw	s0,56(a4)
    218a:	025c                	addi	a5,sp,260
    218c:	0000                	unimp
    218e:	0000                	unimp
    2190:	0000                	unimp
    2192:	028c                	addi	a1,sp,320
    2194:	0000                	unimp
    2196:	0000                	unimp
    2198:	0000                	unimp
    219a:	0001                	nop
    219c:	985f 0002 0000      	0x2985f
    21a2:	0000                	unimp
    21a4:	c400                	sw	s0,8(s0)
    21a6:	0002                	c.slli64	zero
    21a8:	0000                	unimp
    21aa:	0000                	unimp
    21ac:	0100                	addi	s0,sp,128
    21ae:	5f00                	lw	s0,56(a4)
    21b0:	02cc                	addi	a1,sp,324
    21b2:	0000                	unimp
    21b4:	0000                	unimp
    21b6:	0000                	unimp
    21b8:	02d4                	addi	a3,sp,324
    21ba:	0000                	unimp
    21bc:	0000                	unimp
    21be:	0000                	unimp
    21c0:	0001                	nop
    21c2:	d45a                	sw	s6,40(sp)
    21c4:	0002                	c.slli64	zero
    21c6:	0000                	unimp
    21c8:	0000                	unimp
    21ca:	1000                	addi	s0,sp,32
    21cc:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    21d0:	0000                	unimp
    21d2:	0100                	addi	s0,sp,128
    21d4:	5f00                	lw	s0,56(a4)
    21d6:	0318                	addi	a4,sp,384
    21d8:	0000                	unimp
    21da:	0000                	unimp
    21dc:	0000                	unimp
    21de:	0328                	addi	a0,sp,392
    21e0:	0000                	unimp
    21e2:	0000                	unimp
    21e4:	0000                	unimp
    21e6:	0001                	nop
    21e8:	3c5f 0003 0000      	0x33c5f
    21ee:	0000                	unimp
    21f0:	4800                	lw	s0,16(s0)
    21f2:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    21f6:	0000                	unimp
    21f8:	0100                	addi	s0,sp,128
    21fa:	5f00                	lw	s0,56(a4)
    21fc:	0354                	addi	a3,sp,388
    21fe:	0000                	unimp
    2200:	0000                	unimp
    2202:	0000                	unimp
    2204:	0368                	addi	a0,sp,396
    2206:	0000                	unimp
    2208:	0000                	unimp
    220a:	0000                	unimp
    220c:	0001                	nop
    220e:	a45f 0003 0000      	0x3a45f
    2214:	0000                	unimp
    2216:	ac00                	fsd	fs0,24(s0)
    2218:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    221c:	0000                	unimp
    221e:	0100                	addi	s0,sp,128
    2220:	5f00                	lw	s0,56(a4)
    2222:	03d0                	addi	a2,sp,452
    2224:	0000                	unimp
    2226:	0000                	unimp
    2228:	0000                	unimp
    222a:	03d4                	addi	a3,sp,452
    222c:	0000                	unimp
    222e:	0000                	unimp
    2230:	0000                	unimp
    2232:	0001                	nop
    2234:	dc5f 0003 0000      	0x3dc5f
    223a:	0000                	unimp
    223c:	e000                	sd	s0,0(s0)
    223e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2242:	0000                	unimp
    2244:	0100                	addi	s0,sp,128
    2246:	5f00                	lw	s0,56(a4)
    2248:	03e4                	addi	s1,sp,460
    224a:	0000                	unimp
    224c:	0000                	unimp
    224e:	0000                	unimp
    2250:	03e8                	addi	a0,sp,460
    2252:	0000                	unimp
    2254:	0000                	unimp
    2256:	0000                	unimp
    2258:	0001                	nop
    225a:	ec5f 0003 0000      	0x3ec5f
    2260:	0000                	unimp
    2262:	f000                	sd	s0,32(s0)
    2264:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2268:	0000                	unimp
    226a:	0100                	addi	s0,sp,128
    226c:	5f00                	lw	s0,56(a4)
    226e:	0468                	addi	a0,sp,524
    2270:	0000                	unimp
    2272:	0000                	unimp
    2274:	0000                	unimp
    2276:	046c                	addi	a1,sp,524
    2278:	0000                	unimp
    227a:	0000                	unimp
    227c:	0000                	unimp
    227e:	0001                	nop
    2280:	745f 0004 0000      	0x4745f
    2286:	0000                	unimp
    2288:	7800                	ld	s0,48(s0)
    228a:	0004                	0x4
    228c:	0000                	unimp
    228e:	0000                	unimp
    2290:	0100                	addi	s0,sp,128
    2292:	5f00                	lw	s0,56(a4)
	...
    22a4:	0048                	addi	a0,sp,4
    22a6:	0000                	unimp
    22a8:	0000                	unimp
    22aa:	0000                	unimp
    22ac:	0058                	addi	a4,sp,4
    22ae:	0000                	unimp
    22b0:	0000                	unimp
    22b2:	0000                	unimp
    22b4:	0006                	c.slli	zero,0x1
    22b6:	ff08007b          	0xff08007b
    22ba:	9f1a                	add	t5,t5,t1
    22bc:	0058                	addi	a4,sp,4
    22be:	0000                	unimp
    22c0:	0000                	unimp
    22c2:	0000                	unimp
    22c4:	007c                	addi	a5,sp,12
    22c6:	0000                	unimp
    22c8:	0000                	unimp
    22ca:	0000                	unimp
    22cc:	0001                	nop
    22ce:	0000b05b          	0xb05b
    22d2:	0000                	unimp
    22d4:	0000                	unimp
    22d6:	b800                	fsd	fs0,48(s0)
    22d8:	0000                	unimp
    22da:	0000                	unimp
    22dc:	0000                	unimp
    22de:	0100                	addi	s0,sp,128
    22e0:	5b00                	lw	s0,48(a4)
    22e2:	00d4                	addi	a3,sp,68
    22e4:	0000                	unimp
    22e6:	0000                	unimp
    22e8:	0000                	unimp
    22ea:	0124                	addi	s1,sp,136
    22ec:	0000                	unimp
    22ee:	0000                	unimp
    22f0:	0000                	unimp
    22f2:	0001                	nop
    22f4:	0001705b          	0x1705b
    22f8:	0000                	unimp
    22fa:	0000                	unimp
    22fc:	7400                	ld	s0,40(s0)
    22fe:	0001                	nop
    2300:	0000                	unimp
    2302:	0000                	unimp
    2304:	0100                	addi	s0,sp,128
    2306:	5b00                	lw	s0,48(a4)
    2308:	018c                	addi	a1,sp,192
    230a:	0000                	unimp
    230c:	0000                	unimp
    230e:	0000                	unimp
    2310:	034c                	addi	a1,sp,388
    2312:	0000                	unimp
    2314:	0000                	unimp
    2316:	0000                	unimp
    2318:	0001                	nop
    231a:	0003545b          	0x3545b
    231e:	0000                	unimp
    2320:	0000                	unimp
    2322:	6f00                	ld	s0,24(a4)
    2324:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2328:	0000                	unimp
    232a:	0100                	addi	s0,sp,128
    232c:	5b00                	lw	s0,48(a4)
    232e:	03a4                	addi	s1,sp,456
    2330:	0000                	unimp
    2332:	0000                	unimp
    2334:	0000                	unimp
    2336:	03b8                	addi	a4,sp,456
    2338:	0000                	unimp
    233a:	0000                	unimp
    233c:	0000                	unimp
    233e:	0001                	nop
    2340:	0003d05b          	0x3d05b
    2344:	0000                	unimp
    2346:	0000                	unimp
    2348:	e400                	sd	s0,8(s0)
    234a:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    234e:	0000                	unimp
    2350:	0100                	addi	s0,sp,128
    2352:	5b00                	lw	s0,48(a4)
    2354:	03ec                	addi	a1,sp,460
    2356:	0000                	unimp
    2358:	0000                	unimp
    235a:	0000                	unimp
    235c:	03f0                	addi	a2,sp,460
    235e:	0000                	unimp
    2360:	0000                	unimp
    2362:	0000                	unimp
    2364:	0001                	nop
    2366:	0004685b          	0x4685b
    236a:	0000                	unimp
    236c:	0000                	unimp
    236e:	8000                	0x8000
    2370:	0004                	0x4
    2372:	0000                	unimp
    2374:	0000                	unimp
    2376:	0100                	addi	s0,sp,128
    2378:	5b00                	lw	s0,48(a4)
	...
    238a:	0044                	addi	s1,sp,4
    238c:	0000                	unimp
    238e:	0000                	unimp
    2390:	0000                	unimp
    2392:	007c                	addi	a5,sp,12
    2394:	0000                	unimp
    2396:	0000                	unimp
    2398:	0000                	unimp
    239a:	0001                	nop
    239c:	b05c                	fsd	fa5,160(s0)
    239e:	0000                	unimp
    23a0:	0000                	unimp
    23a2:	0000                	unimp
    23a4:	b800                	fsd	fs0,48(s0)
    23a6:	0000                	unimp
    23a8:	0000                	unimp
    23aa:	0000                	unimp
    23ac:	0100                	addi	s0,sp,128
    23ae:	5c00                	lw	s0,56(s0)
    23b0:	00d4                	addi	a3,sp,68
    23b2:	0000                	unimp
    23b4:	0000                	unimp
    23b6:	0000                	unimp
    23b8:	00ec                	addi	a1,sp,76
    23ba:	0000                	unimp
    23bc:	0000                	unimp
    23be:	0000                	unimp
    23c0:	0001                	nop
    23c2:	145c                	addi	a5,sp,548
    23c4:	0001                	nop
    23c6:	0000                	unimp
    23c8:	0000                	unimp
    23ca:	9400                	0x9400
    23cc:	0001                	nop
    23ce:	0000                	unimp
    23d0:	0000                	unimp
    23d2:	0100                	addi	s0,sp,128
    23d4:	5c00                	lw	s0,56(s0)
    23d6:	01fc                	addi	a5,sp,204
    23d8:	0000                	unimp
    23da:	0000                	unimp
    23dc:	0000                	unimp
    23de:	0214                	addi	a3,sp,256
    23e0:	0000                	unimp
    23e2:	0000                	unimp
    23e4:	0000                	unimp
    23e6:	0001                	nop
    23e8:	285c                	fld	fa5,144(s0)
    23ea:	0002                	c.slli64	zero
    23ec:	0000                	unimp
    23ee:	0000                	unimp
    23f0:	3400                	fld	fs0,40(s0)
    23f2:	0002                	c.slli64	zero
    23f4:	0000                	unimp
    23f6:	0000                	unimp
    23f8:	0100                	addi	s0,sp,128
    23fa:	5c00                	lw	s0,56(s0)
    23fc:	025c                	addi	a5,sp,260
    23fe:	0000                	unimp
    2400:	0000                	unimp
    2402:	0000                	unimp
    2404:	0310                	addi	a2,sp,384
    2406:	0000                	unimp
    2408:	0000                	unimp
    240a:	0000                	unimp
    240c:	0001                	nop
    240e:	185c                	addi	a5,sp,52
    2410:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2414:	0000                	unimp
    2416:	2400                	fld	fs0,8(s0)
    2418:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    241c:	0000                	unimp
    241e:	0100                	addi	s0,sp,128
    2420:	5c00                	lw	s0,56(s0)
    2422:	033c                	addi	a5,sp,392
    2424:	0000                	unimp
    2426:	0000                	unimp
    2428:	0000                	unimp
    242a:	034c                	addi	a1,sp,388
    242c:	0000                	unimp
    242e:	0000                	unimp
    2430:	0000                	unimp
    2432:	0001                	nop
    2434:	545c                	lw	a5,44(s0)
    2436:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    243a:	0000                	unimp
    243c:	6800                	ld	s0,16(s0)
    243e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2442:	0000                	unimp
    2444:	0100                	addi	s0,sp,128
    2446:	5c00                	lw	s0,56(s0)
    2448:	03a4                	addi	s1,sp,456
    244a:	0000                	unimp
    244c:	0000                	unimp
    244e:	0000                	unimp
    2450:	03b0                	addi	a2,sp,456
    2452:	0000                	unimp
    2454:	0000                	unimp
    2456:	0000                	unimp
    2458:	0001                	nop
    245a:	d05c                	sw	a5,36(s0)
    245c:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2460:	0000                	unimp
    2462:	dc00                	sw	s0,56(s0)
    2464:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2468:	0000                	unimp
    246a:	0100                	addi	s0,sp,128
    246c:	5c00                	lw	s0,56(s0)
    246e:	0468                	addi	a0,sp,524
    2470:	0000                	unimp
    2472:	0000                	unimp
    2474:	0000                	unimp
    2476:	0480                	addi	s0,sp,576
    2478:	0000                	unimp
    247a:	0000                	unimp
    247c:	0000                	unimp
    247e:	0001                	nop
    2480:	005c                	addi	a5,sp,4
	...
    248e:	0000                	unimp
    2490:	4400                	lw	s0,8(s0)
    2492:	0000                	unimp
    2494:	0000                	unimp
    2496:	0000                	unimp
    2498:	7c00                	ld	s0,56(s0)
    249a:	0000                	unimp
    249c:	0000                	unimp
    249e:	0000                	unimp
    24a0:	0100                	addi	s0,sp,128
    24a2:	5e00                	lw	s0,56(a2)
    24a4:	00b0                	addi	a2,sp,72
    24a6:	0000                	unimp
    24a8:	0000                	unimp
    24aa:	0000                	unimp
    24ac:	00b8                	addi	a4,sp,72
    24ae:	0000                	unimp
    24b0:	0000                	unimp
    24b2:	0000                	unimp
    24b4:	0001                	nop
    24b6:	d45e                	sw	s7,40(sp)
    24b8:	0000                	unimp
    24ba:	0000                	unimp
    24bc:	0000                	unimp
    24be:	0400                	addi	s0,sp,512
    24c0:	0001                	nop
    24c2:	0000                	unimp
    24c4:	0000                	unimp
    24c6:	0100                	addi	s0,sp,128
    24c8:	5e00                	lw	s0,56(a2)
    24ca:	010c                	addi	a1,sp,128
    24cc:	0000                	unimp
    24ce:	0000                	unimp
    24d0:	0000                	unimp
    24d2:	0114                	addi	a3,sp,128
    24d4:	0000                	unimp
    24d6:	0000                	unimp
    24d8:	0000                	unimp
    24da:	0001                	nop
    24dc:	145d                	addi	s0,s0,-9
    24de:	0001                	nop
    24e0:	0000                	unimp
    24e2:	0000                	unimp
    24e4:	ac00                	fsd	fs0,24(s0)
    24e6:	0001                	nop
    24e8:	0000                	unimp
    24ea:	0000                	unimp
    24ec:	0100                	addi	s0,sp,128
    24ee:	5e00                	lw	s0,56(a2)
    24f0:	01c8                	addi	a0,sp,196
    24f2:	0000                	unimp
    24f4:	0000                	unimp
    24f6:	0000                	unimp
    24f8:	0214                	addi	a3,sp,256
    24fa:	0000                	unimp
    24fc:	0000                	unimp
    24fe:	0000                	unimp
    2500:	0001                	nop
    2502:	285e                	fld	fa6,464(sp)
    2504:	0002                	c.slli64	zero
    2506:	0000                	unimp
    2508:	0000                	unimp
    250a:	4c00                	lw	s0,24(s0)
    250c:	0002                	c.slli64	zero
    250e:	0000                	unimp
    2510:	0000                	unimp
    2512:	0100                	addi	s0,sp,128
    2514:	5e00                	lw	s0,56(a2)
    2516:	0254                	addi	a3,sp,260
    2518:	0000                	unimp
    251a:	0000                	unimp
    251c:	0000                	unimp
    251e:	025c                	addi	a5,sp,260
    2520:	0000                	unimp
    2522:	0000                	unimp
    2524:	0000                	unimp
    2526:	0001                	nop
    2528:	5c5d                	li	s8,-9
    252a:	0002                	c.slli64	zero
    252c:	0000                	unimp
    252e:	0000                	unimp
    2530:	6800                	ld	s0,16(s0)
    2532:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2536:	0000                	unimp
    2538:	0100                	addi	s0,sp,128
    253a:	5e00                	lw	s0,56(a2)
    253c:	03a4                	addi	s1,sp,456
    253e:	0000                	unimp
    2540:	0000                	unimp
    2542:	0000                	unimp
    2544:	03b8                	addi	a4,sp,456
    2546:	0000                	unimp
    2548:	0000                	unimp
    254a:	0000                	unimp
    254c:	0001                	nop
    254e:	d05e                	sw	s7,32(sp)
    2550:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2554:	0000                	unimp
    2556:	f000                	sd	s0,32(s0)
    2558:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    255c:	0000                	unimp
    255e:	0100                	addi	s0,sp,128
    2560:	5e00                	lw	s0,56(a2)
    2562:	0468                	addi	a0,sp,524
    2564:	0000                	unimp
    2566:	0000                	unimp
    2568:	0000                	unimp
    256a:	0480                	addi	s0,sp,576
    256c:	0000                	unimp
    256e:	0000                	unimp
    2570:	0000                	unimp
    2572:	0001                	nop
    2574:	005e                	c.slli	zero,0x17
	...
    2582:	0000                	unimp
    2584:	6400                	ld	s0,8(s0)
    2586:	0000                	unimp
    2588:	0000                	unimp
    258a:	0000                	unimp
    258c:	cc00                	sw	s0,24(s0)
    258e:	0001                	nop
    2590:	0000                	unimp
    2592:	0000                	unimp
    2594:	0100                	addi	s0,sp,128
    2596:	5900                	lw	s0,48(a0)
    2598:	01e4                	addi	s1,sp,204
    259a:	0000                	unimp
    259c:	0000                	unimp
    259e:	0000                	unimp
    25a0:	01fc                	addi	a5,sp,204
    25a2:	0000                	unimp
    25a4:	0000                	unimp
    25a6:	0000                	unimp
    25a8:	0001                	nop
    25aa:	0059                	c.nop	22
    25ac:	0002                	c.slli64	zero
    25ae:	0000                	unimp
    25b0:	0000                	unimp
    25b2:	7400                	ld	s0,40(s0)
    25b4:	0002                	c.slli64	zero
    25b6:	0000                	unimp
    25b8:	0000                	unimp
    25ba:	0100                	addi	s0,sp,128
    25bc:	5900                	lw	s0,48(a0)
    25be:	0278                	addi	a4,sp,268
    25c0:	0000                	unimp
    25c2:	0000                	unimp
    25c4:	0000                	unimp
    25c6:	02f0                	addi	a2,sp,332
    25c8:	0000                	unimp
    25ca:	0000                	unimp
    25cc:	0000                	unimp
    25ce:	0001                	nop
    25d0:	0003205b          	0x3205b
    25d4:	0000                	unimp
    25d6:	0000                	unimp
    25d8:	3c00                	fld	fs0,56(s0)
    25da:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    25de:	0000                	unimp
    25e0:	0100                	addi	s0,sp,128
    25e2:	5900                	lw	s0,48(a0)
    25e4:	0358                	addi	a4,sp,388
    25e6:	0000                	unimp
    25e8:	0000                	unimp
    25ea:	0000                	unimp
    25ec:	0364                	addi	s1,sp,396
    25ee:	0000                	unimp
    25f0:	0000                	unimp
    25f2:	0000                	unimp
    25f4:	0001                	nop
    25f6:	6459                	lui	s0,0x16
    25f8:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    25fc:	0000                	unimp
    25fe:	6800                	ld	s0,16(s0)
    2600:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2604:	0000                	unimp
    2606:	0100                	addi	s0,sp,128
    2608:	5b00                	lw	s0,48(a4)
    260a:	0368                	addi	a0,sp,396
    260c:	0000                	unimp
    260e:	0000                	unimp
    2610:	0000                	unimp
    2612:	03b4                	addi	a3,sp,456
    2614:	0000                	unimp
    2616:	0000                	unimp
    2618:	0000                	unimp
    261a:	0001                	nop
    261c:	b859                	j	1eb2 <register_fini-0xe1fe>
    261e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2622:	0000                	unimp
    2624:	f400                	sd	s0,40(s0)
    2626:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    262a:	0000                	unimp
    262c:	0100                	addi	s0,sp,128
    262e:	5900                	lw	s0,48(a0)
    2630:	0434                	addi	a3,sp,520
    2632:	0000                	unimp
    2634:	0000                	unimp
    2636:	0000                	unimp
    2638:	045c                	addi	a5,sp,516
    263a:	0000                	unimp
    263c:	0000                	unimp
    263e:	0000                	unimp
    2640:	0001                	nop
    2642:	6859                	lui	a6,0x16
    2644:	0004                	0x4
    2646:	0000                	unimp
    2648:	0000                	unimp
    264a:	8000                	0x8000
    264c:	0004                	0x4
    264e:	0000                	unimp
    2650:	0000                	unimp
    2652:	0100                	addi	s0,sp,128
    2654:	5b00                	lw	s0,48(a4)
	...
    2666:	0068                	addi	a0,sp,12
    2668:	0000                	unimp
    266a:	0000                	unimp
    266c:	0000                	unimp
    266e:	0114                	addi	a3,sp,128
    2670:	0000                	unimp
    2672:	0000                	unimp
    2674:	0000                	unimp
    2676:	0001                	nop
    2678:	1858                	addi	a4,sp,52
    267a:	0001                	nop
    267c:	0000                	unimp
    267e:	0000                	unimp
    2680:	8c00                	0x8c00
    2682:	0001                	nop
    2684:	0000                	unimp
    2686:	0000                	unimp
    2688:	0100                	addi	s0,sp,128
    268a:	5c00                	lw	s0,56(s0)
    268c:	019c                	addi	a5,sp,192
    268e:	0000                	unimp
    2690:	0000                	unimp
    2692:	0000                	unimp
    2694:	01c0                	addi	s0,sp,196
    2696:	0000                	unimp
    2698:	0000                	unimp
    269a:	0000                	unimp
    269c:	0002                	c.slli64	zero
    269e:	9f30                	0x9f30
    26a0:	01c0                	addi	s0,sp,196
    26a2:	0000                	unimp
    26a4:	0000                	unimp
    26a6:	0000                	unimp
    26a8:	01c8                	addi	a0,sp,196
    26aa:	0000                	unimp
    26ac:	0000                	unimp
    26ae:	0000                	unimp
    26b0:	0002                	c.slli64	zero
    26b2:	9f31                	addw	a4,a4,a2
    26b4:	01c8                	addi	a0,sp,196
    26b6:	0000                	unimp
    26b8:	0000                	unimp
    26ba:	0000                	unimp
    26bc:	01e4                	addi	s1,sp,204
    26be:	0000                	unimp
    26c0:	0000                	unimp
    26c2:	0000                	unimp
    26c4:	0004                	0x4
    26c6:	ff0a                	sd	sp,440(sp)
    26c8:	01e49f07          	0x1e49f07
    26cc:	0000                	unimp
    26ce:	0000                	unimp
    26d0:	0000                	unimp
    26d2:	01fc                	addi	a5,sp,204
    26d4:	0000                	unimp
    26d6:	0000                	unimp
    26d8:	0000                	unimp
    26da:	0001                	nop
    26dc:	005d                	c.nop	23
    26de:	0002                	c.slli64	zero
    26e0:	0000                	unimp
    26e2:	0000                	unimp
    26e4:	7400                	ld	s0,40(s0)
    26e6:	0002                	c.slli64	zero
    26e8:	0000                	unimp
    26ea:	0000                	unimp
    26ec:	0100                	addi	s0,sp,128
    26ee:	5800                	lw	s0,48(s0)
    26f0:	0278                	addi	a4,sp,268
    26f2:	0000                	unimp
    26f4:	0000                	unimp
    26f6:	0000                	unimp
    26f8:	02f0                	addi	a2,sp,332
    26fa:	0000                	unimp
    26fc:	0000                	unimp
    26fe:	0000                	unimp
    2700:	0001                	nop
    2702:	005c                	addi	a5,sp,4
    2704:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2708:	0000                	unimp
    270a:	1000                	addi	s0,sp,32
    270c:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2710:	0000                	unimp
    2712:	0200                	addi	s0,sp,256
    2714:	3000                	fld	fs0,32(s0)
    2716:	189f 0003 0000      	0x3189f
    271c:	0000                	unimp
    271e:	3c00                	fld	fs0,56(s0)
    2720:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2724:	0000                	unimp
    2726:	0200                	addi	s0,sp,256
    2728:	3000                	fld	fs0,32(s0)
    272a:	3c9f 0003 0000      	0x33c9f
    2730:	0000                	unimp
    2732:	4c00                	lw	s0,24(s0)
    2734:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2738:	0000                	unimp
    273a:	0400                	addi	s0,sp,512
    273c:	0a00                	addi	s0,sp,272
    273e:	07ff                	0x7ff
    2740:	549f 0003 0000      	0x3549f
    2746:	0000                	unimp
    2748:	8800                	0x8800
    274a:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    274e:	0000                	unimp
    2750:	0100                	addi	s0,sp,128
    2752:	5800                	lw	s0,48(s0)
    2754:	039c                	addi	a5,sp,448
    2756:	0000                	unimp
    2758:	0000                	unimp
    275a:	0000                	unimp
    275c:	03a4                	addi	s1,sp,456
    275e:	0000                	unimp
    2760:	0000                	unimp
    2762:	0000                	unimp
    2764:	0002                	c.slli64	zero
    2766:	9f30                	0x9f30
    2768:	03a4                	addi	s1,sp,456
    276a:	0000                	unimp
    276c:	0000                	unimp
    276e:	0000                	unimp
    2770:	03b0                	addi	a2,sp,456
    2772:	0000                	unimp
    2774:	0000                	unimp
    2776:	0000                	unimp
    2778:	0001                	nop
    277a:	b858                	fsd	fa4,176(s0)
    277c:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2780:	0000                	unimp
    2782:	d000                	sw	s0,32(s0)
    2784:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2788:	0000                	unimp
    278a:	0100                	addi	s0,sp,128
    278c:	5800                	lw	s0,48(s0)
    278e:	03d0                	addi	a2,sp,452
    2790:	0000                	unimp
    2792:	0000                	unimp
    2794:	0000                	unimp
    2796:	03dc                	addi	a5,sp,452
    2798:	0000                	unimp
    279a:	0000                	unimp
    279c:	0000                	unimp
    279e:	0001                	nop
    27a0:	dc5c                	sw	a5,60(s0)
    27a2:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    27a6:	0000                	unimp
    27a8:	e400                	sd	s0,8(s0)
    27aa:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    27ae:	0000                	unimp
    27b0:	0200                	addi	s0,sp,256
    27b2:	3000                	fld	fs0,32(s0)
    27b4:	ec9f 0003 0000      	0x3ec9f
    27ba:	0000                	unimp
    27bc:	f000                	sd	s0,32(s0)
    27be:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    27c2:	0000                	unimp
    27c4:	0100                	addi	s0,sp,128
    27c6:	5d00                	lw	s0,56(a0)
    27c8:	0400                	addi	s0,sp,512
    27ca:	0000                	unimp
    27cc:	0000                	unimp
    27ce:	0000                	unimp
    27d0:	0424                	addi	s1,sp,520
    27d2:	0000                	unimp
    27d4:	0000                	unimp
    27d6:	0000                	unimp
    27d8:	0001                	nop
    27da:	2458                	fld	fa4,136(s0)
    27dc:	0004                	0x4
    27de:	0000                	unimp
    27e0:	0000                	unimp
    27e2:	3400                	fld	fs0,40(s0)
    27e4:	0004                	0x4
    27e6:	0000                	unimp
    27e8:	0000                	unimp
    27ea:	0400                	addi	s0,sp,512
    27ec:	0a00                	addi	s0,sp,272
    27ee:	07ff                	0x7ff
    27f0:	689f 0004 0000      	0x4689f
    27f6:	0000                	unimp
    27f8:	8000                	0x8000
    27fa:	0004                	0x4
    27fc:	0000                	unimp
    27fe:	0000                	unimp
    2800:	0100                	addi	s0,sp,128
    2802:	5c00                	lw	s0,56(s0)
    2804:	0480                	addi	s0,sp,576
    2806:	0000                	unimp
    2808:	0000                	unimp
    280a:	0000                	unimp
    280c:	0488                	addi	a0,sp,576
    280e:	0000                	unimp
    2810:	0000                	unimp
    2812:	0000                	unimp
    2814:	0001                	nop
    2816:	0058                	addi	a4,sp,4
	...
    2824:	0000                	unimp
    2826:	7c00                	ld	s0,56(s0)
    2828:	0000                	unimp
    282a:	0000                	unimp
    282c:	0000                	unimp
    282e:	8400                	0x8400
    2830:	0000                	unimp
    2832:	0000                	unimp
    2834:	0000                	unimp
    2836:	0100                	addi	s0,sp,128
    2838:	5f00                	lw	s0,56(a4)
    283a:	0084                	addi	s1,sp,64
    283c:	0000                	unimp
    283e:	0000                	unimp
    2840:	0000                	unimp
    2842:	0088                	addi	a0,sp,64
    2844:	0000                	unimp
    2846:	0000                	unimp
    2848:	0000                	unimp
    284a:	000e                	c.slli	zero,0x3
    284c:	007f                	0x7f
    284e:	ff11                	bnez	a4,276a <register_fini-0xd946>
    2850:	ffff                	0xffff
    2852:	ffff                	0xffff
    2854:	ffff                	0xffff
    2856:	9f1a7fbf 00000088 	0x889f1a7fbf
    285e:	0000                	unimp
    2860:	0000                	unimp
    2862:	009c                	addi	a5,sp,64
    2864:	0000                	unimp
    2866:	0000                	unimp
    2868:	0000                	unimp
    286a:	0015                	c.nop	5
    286c:	007f                	0x7f
    286e:	2531                	addiw	a0,a0,12
    2870:	ff10                	sd	a2,56(a4)
    2872:	ffff                	0xffff
    2874:	ffff                	0xffff
    2876:	ffff                	0xffff
    2878:	7fdf 7f1a 3100      	0x31007f1a7fdf
    287e:	211a                	fld	ft2,384(sp)
    2880:	9c9f 0000 0000      	0x9c9f
    2886:	0000                	unimp
    2888:	a400                	fsd	fs0,8(s0)
    288a:	0000                	unimp
    288c:	0000                	unimp
    288e:	0000                	unimp
    2890:	1300                	addi	s0,sp,416
    2892:	7f00                	ld	s0,56(a4)
    2894:	3100                	fld	fs0,32(a0)
    2896:	1025                	c.nop	-23
    2898:	ffff                	0xffff
    289a:	ffff                	0xffff
    289c:	ffff                	0xffff
    289e:	dfff                	0xdfff
    28a0:	1a7f                	0x1a7f
    28a2:	007d                	c.nop	31
    28a4:	9f21                	addw	a4,a4,s0
    28a6:	00a4                	addi	s1,sp,72
    28a8:	0000                	unimp
    28aa:	0000                	unimp
    28ac:	0000                	unimp
    28ae:	00a8                	addi	a0,sp,72
    28b0:	0000                	unimp
    28b2:	0000                	unimp
    28b4:	0000                	unimp
    28b6:	0011                	c.nop	4
    28b8:	007f                	0x7f
    28ba:	ff10                	sd	a2,56(a4)
    28bc:	ffff                	0xffff
    28be:	ffff                	0xffff
    28c0:	ffff                	0xffff
    28c2:	7fdf 7d1a 2100      	0x21007d1a7fdf
    28c8:	b89f 0000 0000      	0xb89f
    28ce:	0000                	unimp
    28d0:	d400                	sw	s0,40(s0)
    28d2:	0000                	unimp
    28d4:	0000                	unimp
    28d6:	0000                	unimp
    28d8:	0100                	addi	s0,sp,128
    28da:	5f00                	lw	s0,56(a4)
    28dc:	0110                	addi	a2,sp,128
    28de:	0000                	unimp
    28e0:	0000                	unimp
    28e2:	0000                	unimp
    28e4:	0114                	addi	a3,sp,128
    28e6:	0000                	unimp
    28e8:	0000                	unimp
    28ea:	0000                	unimp
    28ec:	0001                	nop
    28ee:	2c5f 0001 0000      	0x12c5f
    28f4:	0000                	unimp
    28f6:	3400                	fld	fs0,40(s0)
    28f8:	0001                	nop
    28fa:	0000                	unimp
    28fc:	0000                	unimp
    28fe:	0100                	addi	s0,sp,128
    2900:	5f00                	lw	s0,56(a4)
    2902:	01a8                	addi	a0,sp,200
    2904:	0000                	unimp
    2906:	0000                	unimp
    2908:	0000                	unimp
    290a:	01c8                	addi	a0,sp,196
    290c:	0000                	unimp
    290e:	0000                	unimp
    2910:	0000                	unimp
    2912:	0001                	nop
    2914:	e45f 0001 0000      	0x1e45f
    291a:	0000                	unimp
    291c:	f000                	sd	s0,32(s0)
    291e:	0001                	nop
    2920:	0000                	unimp
    2922:	0000                	unimp
    2924:	0800                	addi	s0,sp,16
    2926:	7f00                	ld	s0,56(a4)
    2928:	7e00                	ld	s0,56(a2)
    292a:	2200                	fld	fs0,0(a2)
    292c:	2531                	addiw	a0,a0,12
    292e:	f09f 0001 0000      	0x1f09f
    2934:	0000                	unimp
    2936:	f400                	sd	s0,40(s0)
    2938:	0001                	nop
    293a:	0000                	unimp
    293c:	0000                	unimp
    293e:	0500                	addi	s0,sp,640
    2940:	7f00                	ld	s0,56(a4)
    2942:	3100                	fld	fs0,32(a0)
    2944:	9f25                	addw	a4,a4,s1
    2946:	0214                	addi	a3,sp,256
    2948:	0000                	unimp
    294a:	0000                	unimp
    294c:	0000                	unimp
    294e:	0220                	addi	s0,sp,264
    2950:	0000                	unimp
    2952:	0000                	unimp
    2954:	0000                	unimp
    2956:	0001                	nop
    2958:	245f 0002 0000      	0x2245f
    295e:	0000                	unimp
    2960:	2800                	fld	fs0,16(s0)
    2962:	0002                	c.slli64	zero
    2964:	0000                	unimp
    2966:	0000                	unimp
    2968:	0100                	addi	s0,sp,128
    296a:	6200                	ld	s0,0(a2)
    296c:	0258                	addi	a4,sp,260
    296e:	0000                	unimp
    2970:	0000                	unimp
    2972:	0000                	unimp
    2974:	025c                	addi	a5,sp,260
    2976:	0000                	unimp
    2978:	0000                	unimp
    297a:	0000                	unimp
    297c:	0001                	nop
    297e:	8c5f 0002 0000      	0x28c5f
    2984:	0000                	unimp
    2986:	9800                	0x9800
    2988:	0002                	c.slli64	zero
    298a:	0000                	unimp
    298c:	0000                	unimp
    298e:	0100                	addi	s0,sp,128
    2990:	5f00                	lw	s0,56(a4)
    2992:	0304                	addi	s1,sp,384
    2994:	0000                	unimp
    2996:	0000                	unimp
    2998:	0000                	unimp
    299a:	0310                	addi	a2,sp,384
    299c:	0000                	unimp
    299e:	0000                	unimp
    29a0:	0000                	unimp
    29a2:	0001                	nop
    29a4:	205e                	fld	ft0,464(sp)
    29a6:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    29aa:	0000                	unimp
    29ac:	3c00                	fld	fs0,56(s0)
    29ae:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    29b2:	0000                	unimp
    29b4:	0100                	addi	s0,sp,128
    29b6:	5d00                	lw	s0,56(a0)
    29b8:	0358                	addi	a4,sp,388
    29ba:	0000                	unimp
    29bc:	0000                	unimp
    29be:	0000                	unimp
    29c0:	0394                	addi	a3,sp,448
    29c2:	0000                	unimp
    29c4:	0000                	unimp
    29c6:	0000                	unimp
    29c8:	0001                	nop
    29ca:	9c62                	add	s8,s8,s8
    29cc:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    29d0:	0000                	unimp
    29d2:	a400                	fsd	fs0,8(s0)
    29d4:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    29d8:	0000                	unimp
    29da:	0100                	addi	s0,sp,128
    29dc:	5f00                	lw	s0,56(a4)
    29de:	03a4                	addi	s1,sp,456
    29e0:	0000                	unimp
    29e2:	0000                	unimp
    29e4:	0000                	unimp
    29e6:	03b0                	addi	a2,sp,456
    29e8:	0000                	unimp
    29ea:	0000                	unimp
    29ec:	0000                	unimp
    29ee:	0001                	nop
    29f0:	b862                	fsd	fs8,48(sp)
    29f2:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    29f6:	0000                	unimp
    29f8:	cc00                	sw	s0,24(s0)
    29fa:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    29fe:	0000                	unimp
    2a00:	0100                	addi	s0,sp,128
    2a02:	6200                	ld	s0,0(a2)
    2a04:	03cc                	addi	a1,sp,452
    2a06:	0000                	unimp
    2a08:	0000                	unimp
    2a0a:	0000                	unimp
    2a0c:	03d0                	addi	a2,sp,452
    2a0e:	0000                	unimp
    2a10:	0000                	unimp
    2a12:	0000                	unimp
    2a14:	0001                	nop
    2a16:	ec5f 0003 0000      	0x3ec5f
    2a1c:	0000                	unimp
    2a1e:	f000                	sd	s0,32(s0)
    2a20:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2a24:	0000                	unimp
    2a26:	0800                	addi	s0,sp,16
    2a28:	7f00                	ld	s0,56(a4)
    2a2a:	7e00                	ld	s0,56(a2)
    2a2c:	2200                	fld	fs0,0(a2)
    2a2e:	2531                	addiw	a0,a0,12
    2a30:	f49f 0003 0000      	0x3f49f
    2a36:	0000                	unimp
    2a38:	fc00                	sd	s0,56(s0)
    2a3a:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2a3e:	0000                	unimp
    2a40:	0100                	addi	s0,sp,128
    2a42:	5f00                	lw	s0,56(a4)
    2a44:	03fc                	addi	a5,sp,460
    2a46:	0000                	unimp
    2a48:	0000                	unimp
    2a4a:	0000                	unimp
    2a4c:	0418                	addi	a4,sp,512
    2a4e:	0000                	unimp
    2a50:	0000                	unimp
    2a52:	0000                	unimp
    2a54:	000e                	c.slli	zero,0x3
    2a56:	007f                	0x7f
    2a58:	ff11                	bnez	a4,2974 <register_fini-0xd73c>
    2a5a:	ffff                	0xffff
    2a5c:	ffff                	0xffff
    2a5e:	ffff                	0xffff
    2a60:	9f1a7fbf 00000418 	0x4189f1a7fbf
    2a68:	0000                	unimp
    2a6a:	0000                	unimp
    2a6c:	042c                	addi	a1,sp,520
    2a6e:	0000                	unimp
    2a70:	0000                	unimp
    2a72:	0000                	unimp
    2a74:	0001                	nop
    2a76:	345f 0004 0000      	0x4345f
    2a7c:	0000                	unimp
    2a7e:	3c00                	fld	fs0,56(s0)
    2a80:	0004                	0x4
    2a82:	0000                	unimp
    2a84:	0000                	unimp
    2a86:	0100                	addi	s0,sp,128
    2a88:	5f00                	lw	s0,56(a4)
    2a8a:	0480                	addi	s0,sp,576
    2a8c:	0000                	unimp
    2a8e:	0000                	unimp
    2a90:	0000                	unimp
    2a92:	0484                	addi	s1,sp,576
    2a94:	0000                	unimp
    2a96:	0000                	unimp
    2a98:	0000                	unimp
    2a9a:	000e                	c.slli	zero,0x3
    2a9c:	007f                	0x7f
    2a9e:	ff11                	bnez	a4,29ba <register_fini-0xd6f6>
    2aa0:	ffff                	0xffff
    2aa2:	ffff                	0xffff
    2aa4:	ffff                	0xffff
    2aa6:	9f1a7fbf 00000000 	0x9f1a7fbf
	...
    2aba:	0454                	addi	a3,sp,516
    2abc:	0000                	unimp
    2abe:	0000                	unimp
    2ac0:	0000                	unimp
    2ac2:	0460                	addi	s0,sp,524
    2ac4:	0000                	unimp
    2ac6:	0000                	unimp
    2ac8:	0000                	unimp
    2aca:	0008                	0x8
    2acc:	007f                	0x7f
    2ace:	007a                	c.slli	zero,0x1e
    2ad0:	f921                	bnez	a0,2a20 <register_fini-0xd690>
    2ad2:	9f2d                	addw	a4,a4,a1
    2ad4:	0460                	addi	s0,sp,524
    2ad6:	0000                	unimp
    2ad8:	0000                	unimp
    2ada:	0000                	unimp
    2adc:	0468                	addi	a0,sp,524
    2ade:	0000                	unimp
    2ae0:	0000                	unimp
    2ae2:	0000                	unimp
    2ae4:	0001                	nop
    2ae6:	005a                	c.slli	zero,0x16
	...
    2af4:	0000                	unimp
    2af6:	7400                	ld	s0,40(s0)
    2af8:	0000                	unimp
    2afa:	0000                	unimp
    2afc:	0000                	unimp
    2afe:	7c00                	ld	s0,56(s0)
    2b00:	0000                	unimp
    2b02:	0000                	unimp
    2b04:	0000                	unimp
    2b06:	0300                	addi	s0,sp,384
    2b08:	7d00                	ld	s0,56(a0)
    2b0a:	9f7f                	0x9f7f
    2b0c:	00b0                	addi	a2,sp,72
    2b0e:	0000                	unimp
    2b10:	0000                	unimp
    2b12:	0000                	unimp
    2b14:	00b4                	addi	a3,sp,72
    2b16:	0000                	unimp
    2b18:	0000                	unimp
    2b1a:	0000                	unimp
    2b1c:	7f7d0003          	lb	zero,2039(s10)
    2b20:	b49f 0000 0000      	0xb49f
    2b26:	0000                	unimp
    2b28:	b800                	fsd	fs0,48(s0)
    2b2a:	0000                	unimp
    2b2c:	0000                	unimp
    2b2e:	0000                	unimp
    2b30:	0700                	addi	s0,sp,896
    2b32:	7c00                	ld	s0,56(s0)
    2b34:	2000                	fld	fs0,0(s0)
    2b36:	0080                	addi	s0,sp,64
    2b38:	9f22                	add	t5,t5,s0
    2b3a:	00e8                	addi	a0,sp,76
    2b3c:	0000                	unimp
    2b3e:	0000                	unimp
    2b40:	0000                	unimp
    2b42:	0100                	addi	s0,sp,128
    2b44:	0000                	unimp
    2b46:	0000                	unimp
    2b48:	0000                	unimp
    2b4a:	0001                	nop
    2b4c:	185a                	slli	a6,a6,0x36
    2b4e:	0001                	nop
    2b50:	0000                	unimp
    2b52:	0000                	unimp
    2b54:	2000                	fld	fs0,0(s0)
    2b56:	0001                	nop
    2b58:	0000                	unimp
    2b5a:	0000                	unimp
    2b5c:	0400                	addi	s0,sp,512
    2b5e:	7d00                	ld	s0,56(a0)
    2b60:	1f00                	addi	s0,sp,944
    2b62:	209f 0001 0000      	0x1209f
    2b68:	0000                	unimp
    2b6a:	2c00                	fld	fs0,24(s0)
    2b6c:	0001                	nop
    2b6e:	0000                	unimp
    2b70:	0000                	unimp
    2b72:	0400                	addi	s0,sp,512
    2b74:	7d00                	ld	s0,56(a0)
    2b76:	2000                	fld	fs0,0(s0)
    2b78:	349f 0001 0000      	0x1349f
    2b7e:	0000                	unimp
    2b80:	4000                	lw	s0,0(s0)
    2b82:	0001                	nop
    2b84:	0000                	unimp
    2b86:	0000                	unimp
    2b88:	0400                	addi	s0,sp,512
    2b8a:	7d00                	ld	s0,56(a0)
    2b8c:	2000                	fld	fs0,0(s0)
    2b8e:	409f 0001 0000      	0x1409f
    2b94:	0000                	unimp
    2b96:	4400                	lw	s0,8(s0)
    2b98:	0001                	nop
    2b9a:	0000                	unimp
    2b9c:	0000                	unimp
    2b9e:	0400                	addi	s0,sp,512
    2ba0:	7a00                	ld	s0,48(a2)
    2ba2:	2000                	fld	fs0,0(s0)
    2ba4:	449f 0001 0000      	0x1449f
    2baa:	0000                	unimp
    2bac:	5c00                	lw	s0,56(s0)
    2bae:	0001                	nop
    2bb0:	0000                	unimp
    2bb2:	0000                	unimp
    2bb4:	0100                	addi	s0,sp,128
    2bb6:	5d00                	lw	s0,56(a0)
    2bb8:	0170                	addi	a2,sp,140
    2bba:	0000                	unimp
    2bbc:	0000                	unimp
    2bbe:	0000                	unimp
    2bc0:	0184                	addi	s1,sp,192
    2bc2:	0000                	unimp
    2bc4:	0000                	unimp
    2bc6:	0000                	unimp
    2bc8:	0004                	0x4
    2bca:	007d                	c.nop	31
    2bcc:	9f1f 0184 0000      	0x1849f1f
    2bd2:	0000                	unimp
    2bd4:	0000                	unimp
    2bd6:	018c                	addi	a1,sp,192
    2bd8:	0000                	unimp
    2bda:	0000                	unimp
    2bdc:	0000                	unimp
    2bde:	0004                	0x4
    2be0:	007a                	c.slli	zero,0x1e
    2be2:	9f1f 03d0 0000      	0x3d09f1f
    2be8:	0000                	unimp
    2bea:	0000                	unimp
    2bec:	03dc                	addi	a5,sp,452
    2bee:	0000                	unimp
    2bf0:	0000                	unimp
    2bf2:	0000                	unimp
    2bf4:	0004                	0x4
    2bf6:	007d                	c.nop	31
    2bf8:	9f1f 0000 0000      	0x9f1f
	...
    2c0a:	020c                	addi	a1,sp,256
    2c0c:	0000                	unimp
    2c0e:	0000                	unimp
    2c10:	0000                	unimp
    2c12:	0214                	addi	a3,sp,256
    2c14:	0000                	unimp
    2c16:	0000                	unimp
    2c18:	0000                	unimp
    2c1a:	7f7d0003          	lb	zero,2039(s10)
    2c1e:	289f 0002 0000      	0x2289f
    2c24:	0000                	unimp
    2c26:	2c00                	fld	fs0,24(s0)
    2c28:	0002                	c.slli64	zero
    2c2a:	0000                	unimp
    2c2c:	0000                	unimp
    2c2e:	0300                	addi	s0,sp,384
    2c30:	7d00                	ld	s0,56(a0)
    2c32:	9f7f                	0x9f7f
    2c34:	022c                	addi	a1,sp,264
    2c36:	0000                	unimp
    2c38:	0000                	unimp
    2c3a:	0000                	unimp
    2c3c:	0230                	addi	a2,sp,264
    2c3e:	0000                	unimp
    2c40:	0000                	unimp
    2c42:	0000                	unimp
    2c44:	007c0007          	0x7c0007
    2c48:	8020                	0x8020
    2c4a:	2200                	fld	fs0,0(a2)
    2c4c:	309f 0002 0000      	0x2309f
    2c52:	0000                	unimp
    2c54:	4800                	lw	s0,16(s0)
    2c56:	0002                	c.slli64	zero
    2c58:	0000                	unimp
    2c5a:	0000                	unimp
    2c5c:	0100                	addi	s0,sp,128
    2c5e:	5a00                	lw	s0,48(a2)
    2c60:	0278                	addi	a4,sp,268
    2c62:	0000                	unimp
    2c64:	0000                	unimp
    2c66:	0000                	unimp
    2c68:	0280                	addi	s0,sp,320
    2c6a:	0000                	unimp
    2c6c:	0000                	unimp
    2c6e:	0000                	unimp
    2c70:	0004                	0x4
    2c72:	007d                	c.nop	31
    2c74:	9f1f 0280 0000      	0x2809f1f
    2c7a:	0000                	unimp
    2c7c:	0000                	unimp
    2c7e:	028c                	addi	a1,sp,320
    2c80:	0000                	unimp
    2c82:	0000                	unimp
    2c84:	0000                	unimp
    2c86:	0004                	0x4
    2c88:	007d                	c.nop	31
    2c8a:	9f20                	0x9f20
    2c8c:	0298                	addi	a4,sp,320
    2c8e:	0000                	unimp
    2c90:	0000                	unimp
    2c92:	0000                	unimp
    2c94:	02a4                	addi	s1,sp,328
    2c96:	0000                	unimp
    2c98:	0000                	unimp
    2c9a:	0000                	unimp
    2c9c:	0004                	0x4
    2c9e:	007d                	c.nop	31
    2ca0:	9f20                	0x9f20
    2ca2:	02a8                	addi	a0,sp,328
    2ca4:	0000                	unimp
    2ca6:	0000                	unimp
    2ca8:	0000                	unimp
    2caa:	02c0                	addi	s0,sp,324
    2cac:	0000                	unimp
    2cae:	0000                	unimp
    2cb0:	0000                	unimp
    2cb2:	0001                	nop
    2cb4:	d45d                	beqz	s0,2c62 <register_fini-0xd44e>
    2cb6:	0002                	c.slli64	zero
    2cb8:	0000                	unimp
    2cba:	0000                	unimp
    2cbc:	e800                	sd	s0,16(s0)
    2cbe:	0002                	c.slli64	zero
    2cc0:	0000                	unimp
    2cc2:	0000                	unimp
    2cc4:	0400                	addi	s0,sp,512
    2cc6:	7d00                	ld	s0,56(a0)
    2cc8:	1f00                	addi	s0,sp,944
    2cca:	e89f 0002 0000      	0x2e89f
    2cd0:	0000                	unimp
    2cd2:	f000                	sd	s0,32(s0)
    2cd4:	0002                	c.slli64	zero
    2cd6:	0000                	unimp
    2cd8:	0000                	unimp
    2cda:	0600                	addi	s0,sp,768
    2cdc:	7c00                	ld	s0,56(s0)
    2cde:	8000                	0x8000
    2ce0:	1c00                	addi	s0,sp,560
    2ce2:	689f 0004 0000      	0x4689f
    2ce8:	0000                	unimp
    2cea:	7400                	ld	s0,40(s0)
    2cec:	0004                	0x4
    2cee:	0000                	unimp
    2cf0:	0000                	unimp
    2cf2:	0400                	addi	s0,sp,512
    2cf4:	7d00                	ld	s0,56(a0)
    2cf6:	1f00                	addi	s0,sp,944
    2cf8:	009f 0000 0000      	0x9f
	...
    2d06:	0000                	unimp
    2d08:	7000                	ld	s0,32(s0)
    2d0a:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2d0e:	0000                	unimp
    2d10:	7400                	ld	s0,40(s0)
    2d12:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2d16:	0000                	unimp
    2d18:	0100                	addi	s0,sp,128
    2d1a:	5a00                	lw	s0,48(a2)
    2d1c:	0374                	addi	a3,sp,396
    2d1e:	0000                	unimp
    2d20:	0000                	unimp
    2d22:	0000                	unimp
    2d24:	0384                	addi	s1,sp,448
    2d26:	0000                	unimp
    2d28:	0000                	unimp
    2d2a:	0000                	unimp
    2d2c:	0001                	nop
    2d2e:	845f 0003 0000      	0x3845f
    2d34:	0000                	unimp
    2d36:	9000                	0x9000
    2d38:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2d3c:	0000                	unimp
    2d3e:	0100                	addi	s0,sp,128
    2d40:	5a00                	lw	s0,48(a2)
    2d42:	03b8                	addi	a4,sp,456
    2d44:	0000                	unimp
    2d46:	0000                	unimp
    2d48:	0000                	unimp
    2d4a:	03c0                	addi	s0,sp,452
    2d4c:	0000                	unimp
    2d4e:	0000                	unimp
    2d50:	0000                	unimp
    2d52:	0001                	nop
    2d54:	c05f 0003 0000      	0x3c05f
    2d5a:	0000                	unimp
    2d5c:	d000                	sw	s0,32(s0)
    2d5e:	00000003          	lb	zero,0(zero) # 0 <register_fini-0x100b0>
    2d62:	0000                	unimp
    2d64:	0300                	addi	s0,sp,384
    2d66:	7a00                	ld	s0,48(a2)
    2d68:	9f78                	0x9f78
	...
    2d82:	0030                	addi	a2,sp,8
    2d84:	0000                	unimp
    2d86:	0000                	unimp
    2d88:	0000                	unimp
    2d8a:	0001                	nop
    2d8c:	305a                	fld	ft0,432(sp)
    2d8e:	0000                	unimp
    2d90:	0000                	unimp
    2d92:	0000                	unimp
    2d94:	7400                	ld	s0,40(s0)
    2d96:	0000                	unimp
    2d98:	0000                	unimp
    2d9a:	0000                	unimp
    2d9c:	0400                	addi	s0,sp,512
    2d9e:	f300                	sd	s0,32(a4)
    2da0:	5a01                	li	s4,-32
    2da2:	749f 0000 0000      	0x749f
    2da8:	0000                	unimp
    2daa:	8400                	0x8400
    2dac:	0000                	unimp
    2dae:	0000                	unimp
    2db0:	0000                	unimp
    2db2:	0100                	addi	s0,sp,128
    2db4:	5a00                	lw	s0,48(a2)
	...
    2dc6:	001c                	0x1c
    2dc8:	0000                	unimp
    2dca:	0000                	unimp
    2dcc:	0000                	unimp
    2dce:	0068                	addi	a0,sp,12
    2dd0:	0000                	unimp
    2dd2:	0000                	unimp
    2dd4:	0000                	unimp
    2dd6:	0001                	nop
    2dd8:	0059                	c.nop	22
	...
    2de6:	0000                	unimp
    2de8:	3c00                	fld	fs0,56(s0)
    2dea:	0000                	unimp
    2dec:	0000                	unimp
    2dee:	0000                	unimp
    2df0:	5800                	lw	s0,48(s0)
    2df2:	0000                	unimp
    2df4:	0000                	unimp
    2df6:	0000                	unimp
    2df8:	0100                	addi	s0,sp,128
    2dfa:	5e00                	lw	s0,56(a2)
	...
    2e0c:	003c                	addi	a5,sp,8
    2e0e:	0000                	unimp
    2e10:	0000                	unimp
    2e12:	0000                	unimp
    2e14:	0048                	addi	a0,sp,4
    2e16:	0000                	unimp
    2e18:	0000                	unimp
    2e1a:	0000                	unimp
    2e1c:	0001                	nop
    2e1e:	4858                	lw	a4,20(s0)
    2e20:	0000                	unimp
    2e22:	0000                	unimp
    2e24:	0000                	unimp
    2e26:	5400                	lw	s0,40(s0)
    2e28:	0000                	unimp
    2e2a:	0000                	unimp
    2e2c:	0000                	unimp
    2e2e:	0100                	addi	s0,sp,128
    2e30:	5f00                	lw	s0,56(a4)
	...
    2e42:	0064                	addi	s1,sp,12
    2e44:	0000                	unimp
    2e46:	0000                	unimp
    2e48:	0000                	unimp
    2e4a:	006c                	addi	a1,sp,12
    2e4c:	0000                	unimp
    2e4e:	0000                	unimp
    2e50:	0000                	unimp
    2e52:	0008                	0x8
    2e54:	007f                	0x7f
    2e56:	007a                	c.slli	zero,0x1e
    2e58:	f921                	bnez	a0,2da8 <register_fini-0xd308>
    2e5a:	9f2d                	addw	a4,a4,a1
    2e5c:	006c                	addi	a1,sp,12
    2e5e:	0000                	unimp
    2e60:	0000                	unimp
    2e62:	0000                	unimp
    2e64:	0074                	addi	a3,sp,12
    2e66:	0000                	unimp
    2e68:	0000                	unimp
    2e6a:	0000                	unimp
    2e6c:	0001                	nop
    2e6e:	005a                	c.slli	zero,0x16
	...
    2e7c:	0000                	unimp
    2e7e:	1800                	addi	s0,sp,48
    2e80:	0000                	unimp
    2e82:	0000                	unimp
    2e84:	0000                	unimp
    2e86:	3300                	fld	fs0,32(a4)
    2e88:	0000                	unimp
    2e8a:	0000                	unimp
    2e8c:	0000                	unimp
    2e8e:	0100                	addi	s0,sp,128
    2e90:	5f00                	lw	s0,56(a4)
	...
    2ea2:	0034                	addi	a3,sp,8
    2ea4:	0000                	unimp
    2ea6:	0000                	unimp
    2ea8:	0000                	unimp
    2eaa:	0048                	addi	a0,sp,4
    2eac:	0000                	unimp
    2eae:	0000                	unimp
    2eb0:	0000                	unimp
    2eb2:	0001                	nop
    2eb4:	005a                	c.slli	zero,0x16
	...
    2eca:	0000                	unimp
    2ecc:	2000                	fld	fs0,0(s0)
    2ece:	0000                	unimp
    2ed0:	0000                	unimp
    2ed2:	0000                	unimp
    2ed4:	0100                	addi	s0,sp,128
    2ed6:	5a00                	lw	s0,48(a2)
    2ed8:	0020                	addi	s0,sp,8
    2eda:	0000                	unimp
    2edc:	0000                	unimp
    2ede:	0000                	unimp
    2ee0:	00a4                	addi	s1,sp,72
    2ee2:	0000                	unimp
    2ee4:	0000                	unimp
    2ee6:	0000                	unimp
    2ee8:	0006                	c.slli	zero,0x1
    2eea:	0af503f3          	0xaf503f3
    2eee:	9f34                	0x9f34
	...
    2f08:	0038                	addi	a4,sp,8
    2f0a:	0000                	unimp
    2f0c:	0000                	unimp
    2f0e:	0000                	unimp
    2f10:	0002                	c.slli64	zero
    2f12:	9f30                	0x9f30
    2f14:	0064                	addi	s1,sp,12
    2f16:	0000                	unimp
    2f18:	0000                	unimp
    2f1a:	0000                	unimp
    2f1c:	0090                	addi	a2,sp,64
    2f1e:	0000                	unimp
    2f20:	0000                	unimp
    2f22:	0000                	unimp
    2f24:	0002                	c.slli64	zero
    2f26:	9f30                	0x9f30
	...
    2f38:	002c                	addi	a1,sp,8
    2f3a:	0000                	unimp
    2f3c:	0000                	unimp
    2f3e:	0000                	unimp
    2f40:	005c                	addi	a5,sp,4
    2f42:	0000                	unimp
    2f44:	0000                	unimp
    2f46:	0000                	unimp
    2f48:	0006                	c.slli	zero,0x1
    2f4a:	0079                	c.nop	30
    2f4c:	ff08                	sd	a0,56(a4)
    2f4e:	9f1a                	add	t5,t5,t1
    2f50:	0064                	addi	s1,sp,12
    2f52:	0000                	unimp
    2f54:	0000                	unimp
    2f56:	0000                	unimp
    2f58:	00a4                	addi	s1,sp,72
    2f5a:	0000                	unimp
    2f5c:	0000                	unimp
    2f5e:	0000                	unimp
    2f60:	0006                	c.slli	zero,0x1
    2f62:	0079                	c.nop	30
    2f64:	ff08                	sd	a0,56(a4)
    2f66:	9f1a                	add	t5,t5,t1
	...
    2f78:	002c                	addi	a1,sp,8
    2f7a:	0000                	unimp
    2f7c:	0000                	unimp
    2f7e:	0000                	unimp
    2f80:	0038                	addi	a4,sp,8
    2f82:	0000                	unimp
    2f84:	0000                	unimp
    2f86:	0000                	unimp
    2f88:	0001                	nop
    2f8a:	645f 0000 0000      	0x645f
    2f90:	0000                	unimp
    2f92:	7300                	ld	s0,32(a4)
    2f94:	0000                	unimp
    2f96:	0000                	unimp
    2f98:	0000                	unimp
    2f9a:	0100                	addi	s0,sp,128
    2f9c:	5f00                	lw	s0,56(a4)
    2f9e:	0088                	addi	a0,sp,64
    2fa0:	0000                	unimp
    2fa2:	0000                	unimp
    2fa4:	0000                	unimp
    2fa6:	0094                	addi	a3,sp,64
    2fa8:	0000                	unimp
    2faa:	0000                	unimp
    2fac:	0000                	unimp
    2fae:	0001                	nop
    2fb0:	005f 0000 0000      	0x5f
	...
    2fbe:	0000                	unimp
    2fc0:	2c00                	fld	fs0,24(s0)
    2fc2:	0000                	unimp
    2fc4:	0000                	unimp
    2fc6:	0000                	unimp
    2fc8:	3800                	fld	fs0,48(s0)
    2fca:	0000                	unimp
    2fcc:	0000                	unimp
    2fce:	0000                	unimp
    2fd0:	0100                	addi	s0,sp,128
    2fd2:	5800                	lw	s0,48(s0)
    2fd4:	0064                	addi	s1,sp,12
    2fd6:	0000                	unimp
    2fd8:	0000                	unimp
    2fda:	0000                	unimp
    2fdc:	007c                	addi	a5,sp,12
    2fde:	0000                	unimp
    2fe0:	0000                	unimp
    2fe2:	0000                	unimp
    2fe4:	0001                	nop
    2fe6:	8858                	0x8858
    2fe8:	0000                	unimp
    2fea:	0000                	unimp
    2fec:	0000                	unimp
    2fee:	9800                	0x9800
    2ff0:	0000                	unimp
    2ff2:	0000                	unimp
    2ff4:	0000                	unimp
    2ff6:	0100                	addi	s0,sp,128
    2ff8:	5800                	lw	s0,48(s0)
	...
    300a:	0034                	addi	a3,sp,8
    300c:	0000                	unimp
    300e:	0000                	unimp
    3010:	0000                	unimp
    3012:	0040                	addi	s0,sp,4
    3014:	0000                	unimp
    3016:	0000                	unimp
    3018:	0000                	unimp
    301a:	0001                	nop
    301c:	845a                	mv	s0,s6
    301e:	0000                	unimp
    3020:	0000                	unimp
    3022:	0000                	unimp
    3024:	8800                	0x8800
    3026:	0000                	unimp
    3028:	0000                	unimp
    302a:	0000                	unimp
    302c:	0100                	addi	s0,sp,128
    302e:	5a00                	lw	s0,48(a2)
    3030:	0088                	addi	a0,sp,64
    3032:	0000                	unimp
    3034:	0000                	unimp
    3036:	0000                	unimp
    3038:	00a4                	addi	s1,sp,72
    303a:	0000                	unimp
    303c:	0000                	unimp
    303e:	0000                	unimp
    3040:	0004                	0x4
    3042:	ff0a                	sd	sp,440(sp)
    3044:	00009f07          	0x9f07
	...
    3054:	0000                	unimp
    3056:	002c                	addi	a1,sp,8
    3058:	0000                	unimp
    305a:	0000                	unimp
    305c:	0000                	unimp
    305e:	003c                	addi	a5,sp,8
    3060:	0000                	unimp
    3062:	0000                	unimp
    3064:	0000                	unimp
    3066:	0001                	nop
    3068:	6458                	ld	a4,136(s0)
    306a:	0000                	unimp
    306c:	0000                	unimp
    306e:	0000                	unimp
    3070:	a400                	fsd	fs0,8(s0)
    3072:	0000                	unimp
    3074:	0000                	unimp
    3076:	0000                	unimp
    3078:	0100                	addi	s0,sp,128
    307a:	5800                	lw	s0,48(s0)
	...
    308c:	004c                	addi	a1,sp,4
    308e:	0000                	unimp
    3090:	0000                	unimp
    3092:	0000                	unimp
    3094:	0054                	addi	a3,sp,4
    3096:	0000                	unimp
    3098:	0000                	unimp
    309a:	0000                	unimp
    309c:	0008                	0x8
    309e:	0078                	addi	a4,sp,12
    30a0:	007a                	c.slli	zero,0x1e
    30a2:	f921                	bnez	a0,2ff2 <register_fini-0xd0be>
    30a4:	9f2d                	addw	a4,a4,a1
    30a6:	0054                	addi	a3,sp,4
    30a8:	0000                	unimp
    30aa:	0000                	unimp
    30ac:	0000                	unimp
    30ae:	0064                	addi	s1,sp,12
    30b0:	0000                	unimp
    30b2:	0000                	unimp
    30b4:	0000                	unimp
    30b6:	0001                	nop
    30b8:	005a                	c.slli	zero,0x16
	...
    30c6:	0000                	unimp
    30c8:	7400                	ld	s0,40(s0)
    30ca:	0000                	unimp
    30cc:	0000                	unimp
    30ce:	0000                	unimp
    30d0:	8400                	0x8400
    30d2:	0000                	unimp
    30d4:	0000                	unimp
    30d6:	0000                	unimp
    30d8:	0100                	addi	s0,sp,128
    30da:	5a00                	lw	s0,48(a2)
	...
    30f4:	001c                	0x1c
    30f6:	0000                	unimp
    30f8:	0000                	unimp
    30fa:	0000                	unimp
    30fc:	0001                	nop
    30fe:	1c5a                	slli	s8,s8,0x36
    3100:	0000                	unimp
    3102:	0000                	unimp
    3104:	0000                	unimp
    3106:	3000                	fld	fs0,32(s0)
    3108:	0001                	nop
    310a:	0000                	unimp
    310c:	0000                	unimp
    310e:	0600                	addi	s0,sp,768
    3110:	f300                	sd	s0,32(a4)
    3112:	2d0af503          	0x2d0af503
    3116:	009f 0000 0000      	0x9f
	...
    312c:	0000                	unimp
    312e:	6800                	ld	s0,16(s0)
    3130:	0000                	unimp
    3132:	0000                	unimp
    3134:	0000                	unimp
    3136:	0200                	addi	s0,sp,256
    3138:	3000                	fld	fs0,32(s0)
    313a:	749f 0000 0000      	0x749f
    3140:	0000                	unimp
    3142:	8000                	0x8000
    3144:	0000                	unimp
    3146:	0000                	unimp
    3148:	0000                	unimp
    314a:	0200                	addi	s0,sp,256
    314c:	3000                	fld	fs0,32(s0)
    314e:	889f 0000 0000      	0x889f
    3154:	0000                	unimp
    3156:	9c00                	0x9c00
    3158:	0000                	unimp
    315a:	0000                	unimp
    315c:	0000                	unimp
    315e:	0200                	addi	s0,sp,256
    3160:	3000                	fld	fs0,32(s0)
    3162:	ac9f 0000 0000      	0xac9f
    3168:	0000                	unimp
    316a:	b400                	fsd	fs0,40(s0)
    316c:	0000                	unimp
    316e:	0000                	unimp
    3170:	0000                	unimp
    3172:	0200                	addi	s0,sp,256
    3174:	3000                	fld	fs0,32(s0)
    3176:	0c9f 0001 0000      	0x10c9f
    317c:	0000                	unimp
    317e:	1400                	addi	s0,sp,544
    3180:	0001                	nop
    3182:	0000                	unimp
    3184:	0000                	unimp
    3186:	0200                	addi	s0,sp,256
    3188:	3000                	fld	fs0,32(s0)
    318a:	009f 0000 0000      	0x9f
	...
    3198:	0000                	unimp
    319a:	1c00                	addi	s0,sp,560
    319c:	0000                	unimp
    319e:	0000                	unimp
    31a0:	0000                	unimp
    31a2:	e800                	sd	s0,16(s0)
    31a4:	0000                	unimp
    31a6:	0000                	unimp
    31a8:	0000                	unimp
    31aa:	0100                	addi	s0,sp,128
    31ac:	5a00                	lw	s0,48(a2)
    31ae:	00e8                	addi	a0,sp,76
    31b0:	0000                	unimp
    31b2:	0000                	unimp
    31b4:	0000                	unimp
    31b6:	00ec                	addi	a1,sp,76
    31b8:	0000                	unimp
    31ba:	0000                	unimp
    31bc:	0000                	unimp
    31be:	0002                	c.slli64	zero
    31c0:	9f30                	0x9f30
    31c2:	010c                	addi	a1,sp,128
    31c4:	0000                	unimp
    31c6:	0000                	unimp
    31c8:	0000                	unimp
    31ca:	0130                	addi	a2,sp,136
    31cc:	0000                	unimp
    31ce:	0000                	unimp
    31d0:	0000                	unimp
    31d2:	0001                	nop
    31d4:	005a                	c.slli	zero,0x16
	...
    31e2:	0000                	unimp
    31e4:	1800                	addi	s0,sp,48
    31e6:	0000                	unimp
    31e8:	0000                	unimp
    31ea:	0000                	unimp
    31ec:	2800                	fld	fs0,16(s0)
    31ee:	0000                	unimp
    31f0:	0000                	unimp
    31f2:	0000                	unimp
    31f4:	0100                	addi	s0,sp,128
    31f6:	5e00                	lw	s0,56(a2)
    31f8:	0028                	addi	a0,sp,8
    31fa:	0000                	unimp
    31fc:	0000                	unimp
    31fe:	0000                	unimp
    3200:	0054                	addi	a3,sp,4
    3202:	0000                	unimp
    3204:	0000                	unimp
    3206:	0000                	unimp
    3208:	0004                	0x4
    320a:	807e                	c.mv	zero,t6
    320c:	00749f07          	0x749f07
    3210:	0000                	unimp
    3212:	0000                	unimp
    3214:	0000                	unimp
    3216:	0080                	addi	s0,sp,64
    3218:	0000                	unimp
    321a:	0000                	unimp
    321c:	0000                	unimp
    321e:	0004                	0x4
    3220:	807e                	c.mv	zero,t6
    3222:	00889f07          	0x889f07
    3226:	0000                	unimp
    3228:	0000                	unimp
    322a:	0000                	unimp
    322c:	0098                	addi	a4,sp,64
    322e:	0000                	unimp
    3230:	0000                	unimp
    3232:	0000                	unimp
    3234:	0001                	nop
    3236:	ac5e                	fsd	fs7,24(sp)
    3238:	0000                	unimp
    323a:	0000                	unimp
    323c:	0000                	unimp
    323e:	b400                	fsd	fs0,40(s0)
    3240:	0000                	unimp
    3242:	0000                	unimp
    3244:	0000                	unimp
    3246:	0400                	addi	s0,sp,512
    3248:	7e00                	ld	s0,56(a2)
    324a:	0780                	addi	s0,sp,960
    324c:	0c9f 0001 0000      	0x10c9f
    3252:	0000                	unimp
    3254:	1400                	addi	s0,sp,544
    3256:	0001                	nop
    3258:	0000                	unimp
    325a:	0000                	unimp
    325c:	0400                	addi	s0,sp,512
    325e:	7e00                	ld	s0,56(a2)
    3260:	0780                	addi	s0,sp,960
    3262:	009f 0000 0000      	0x9f
	...
    3270:	0000                	unimp
    3272:	1800                	addi	s0,sp,48
    3274:	0000                	unimp
    3276:	0000                	unimp
    3278:	0000                	unimp
    327a:	2000                	fld	fs0,0(s0)
    327c:	0000                	unimp
    327e:	0000                	unimp
    3280:	0000                	unimp
    3282:	0100                	addi	s0,sp,128
    3284:	5d00                	lw	s0,56(a0)
    3286:	0020                	addi	s0,sp,8
    3288:	0000                	unimp
    328a:	0000                	unimp
    328c:	0000                	unimp
    328e:	005c                	addi	a5,sp,4
    3290:	0000                	unimp
    3292:	0000                	unimp
    3294:	0000                	unimp
    3296:	0001                	nop
    3298:	645f 0000 0000      	0x645f
    329e:	0000                	unimp
    32a0:	6800                	ld	s0,16(s0)
    32a2:	0000                	unimp
    32a4:	0000                	unimp
    32a6:	0000                	unimp
    32a8:	0100                	addi	s0,sp,128
    32aa:	5f00                	lw	s0,56(a4)
    32ac:	0074                	addi	a3,sp,12
    32ae:	0000                	unimp
    32b0:	0000                	unimp
    32b2:	0000                	unimp
    32b4:	007c                	addi	a5,sp,12
    32b6:	0000                	unimp
    32b8:	0000                	unimp
    32ba:	0000                	unimp
    32bc:	0001                	nop
    32be:	885f 0000 0000      	0x885f
    32c4:	0000                	unimp
    32c6:	9000                	0x9000
    32c8:	0000                	unimp
    32ca:	0000                	unimp
    32cc:	0000                	unimp
    32ce:	0100                	addi	s0,sp,128
    32d0:	5f00                	lw	s0,56(a4)
    32d2:	0094                	addi	a3,sp,64
    32d4:	0000                	unimp
    32d6:	0000                	unimp
    32d8:	0000                	unimp
    32da:	009c                	addi	a5,sp,64
    32dc:	0000                	unimp
    32de:	0000                	unimp
    32e0:	0000                	unimp
    32e2:	0001                	nop
    32e4:	9c5f 0000 0000      	0x9c5f
    32ea:	0000                	unimp
    32ec:	a000                	fsd	fs0,0(s0)
    32ee:	0000                	unimp
    32f0:	0000                	unimp
    32f2:	0000                	unimp
    32f4:	0500                	addi	s0,sp,640
    32f6:	7f00                	ld	s0,56(a4)
    32f8:	4d00                	lw	s0,24(a0)
    32fa:	9f25                	addw	a4,a4,s1
    32fc:	00a0                	addi	s0,sp,72
    32fe:	0000                	unimp
    3300:	0000                	unimp
    3302:	0000                	unimp
    3304:	00a4                	addi	s1,sp,72
    3306:	0000                	unimp
    3308:	0000                	unimp
    330a:	0000                	unimp
    330c:	0001                	nop
    330e:	ac5f 0000 0000      	0xac5f
    3314:	0000                	unimp
    3316:	b000                	fsd	fs0,32(s0)
    3318:	0000                	unimp
    331a:	0000                	unimp
    331c:	0000                	unimp
    331e:	0100                	addi	s0,sp,128
    3320:	5f00                	lw	s0,56(a4)
    3322:	010c                	addi	a1,sp,128
    3324:	0000                	unimp
    3326:	0000                	unimp
    3328:	0000                	unimp
    332a:	0110                	addi	a2,sp,128
    332c:	0000                	unimp
    332e:	0000                	unimp
    3330:	0000                	unimp
    3332:	0001                	nop
    3334:	005f 0000 0000      	0x5f
	...
    3342:	0000                	unimp
    3344:	2000                	fld	fs0,0(s0)
    3346:	0000                	unimp
    3348:	0000                	unimp
    334a:	0000                	unimp
    334c:	e800                	sd	s0,16(s0)
    334e:	0000                	unimp
    3350:	0000                	unimp
    3352:	0000                	unimp
    3354:	0100                	addi	s0,sp,128
    3356:	5a00                	lw	s0,48(a2)
    3358:	00e8                	addi	a0,sp,76
    335a:	0000                	unimp
    335c:	0000                	unimp
    335e:	0000                	unimp
    3360:	00ec                	addi	a1,sp,76
    3362:	0000                	unimp
    3364:	0000                	unimp
    3366:	0000                	unimp
    3368:	0002                	c.slli64	zero
    336a:	9f30                	0x9f30
    336c:	010c                	addi	a1,sp,128
    336e:	0000                	unimp
    3370:	0000                	unimp
    3372:	0000                	unimp
    3374:	0130                	addi	a2,sp,136
    3376:	0000                	unimp
    3378:	0000                	unimp
    337a:	0000                	unimp
    337c:	0001                	nop
    337e:	005a                	c.slli	zero,0x16
	...
    338c:	0000                	unimp
    338e:	2800                	fld	fs0,16(s0)
    3390:	0000                	unimp
    3392:	0000                	unimp
    3394:	0000                	unimp
    3396:	5400                	lw	s0,40(s0)
    3398:	0000                	unimp
    339a:	0000                	unimp
    339c:	0000                	unimp
    339e:	0100                	addi	s0,sp,128
    33a0:	5e00                	lw	s0,56(a2)
    33a2:	0068                	addi	a0,sp,12
    33a4:	0000                	unimp
    33a6:	0000                	unimp
    33a8:	0000                	unimp
    33aa:	0080                	addi	s0,sp,64
    33ac:	0000                	unimp
    33ae:	0000                	unimp
    33b0:	0000                	unimp
    33b2:	0001                	nop
    33b4:	8c5e                	mv	s8,s7
    33b6:	0000                	unimp
    33b8:	0000                	unimp
    33ba:	0000                	unimp
    33bc:	9400                	0x9400
    33be:	0000                	unimp
    33c0:	0000                	unimp
    33c2:	0000                	unimp
    33c4:	0200                	addi	s0,sp,256
    33c6:	3000                	fld	fs0,32(s0)
    33c8:	949f 0000 0000      	0x949f
    33ce:	0000                	unimp
    33d0:	ac00                	fsd	fs0,24(s0)
    33d2:	0000                	unimp
    33d4:	0000                	unimp
    33d6:	0000                	unimp
    33d8:	0300                	addi	s0,sp,384
    33da:	0800                	addi	s0,sp,16
    33dc:	9fff                	0x9fff
    33de:	00ac                	addi	a1,sp,72
    33e0:	0000                	unimp
    33e2:	0000                	unimp
    33e4:	0000                	unimp
    33e6:	00b4                	addi	a3,sp,72
    33e8:	0000                	unimp
    33ea:	0000                	unimp
    33ec:	0000                	unimp
    33ee:	0001                	nop
    33f0:	c05e                	sw	s7,0(sp)
    33f2:	0000                	unimp
    33f4:	0000                	unimp
    33f6:	0000                	unimp
    33f8:	e000                	sd	s0,0(s0)
    33fa:	0000                	unimp
    33fc:	0000                	unimp
    33fe:	0000                	unimp
    3400:	0100                	addi	s0,sp,128
    3402:	5e00                	lw	s0,56(a2)
    3404:	00e0                	addi	s0,sp,76
    3406:	0000                	unimp
    3408:	0000                	unimp
    340a:	0000                	unimp
    340c:	00ec                	addi	a1,sp,76
    340e:	0000                	unimp
    3410:	0000                	unimp
    3412:	0000                	unimp
    3414:	ff080003          	lb	zero,-16(a6) # 15ff0 <__BSS_END__+0x37c0>
    3418:	0c9f 0001 0000      	0x10c9f
    341e:	0000                	unimp
    3420:	3000                	fld	fs0,32(s0)
    3422:	0001                	nop
    3424:	0000                	unimp
    3426:	0000                	unimp
    3428:	0100                	addi	s0,sp,128
    342a:	5e00                	lw	s0,56(a2)
	...
    343c:	0068                	addi	a0,sp,12
    343e:	0000                	unimp
    3440:	0000                	unimp
    3442:	0000                	unimp
    3444:	0074                	addi	a3,sp,12
    3446:	0000                	unimp
    3448:	0000                	unimp
    344a:	0000                	unimp
    344c:	0001                	nop
    344e:	845f 0000 0000      	0x845f
    3454:	0000                	unimp
    3456:	8800                	0x8800
    3458:	0000                	unimp
    345a:	0000                	unimp
    345c:	0000                	unimp
    345e:	0100                	addi	s0,sp,128
    3460:	5f00                	lw	s0,56(a4)
    3462:	009c                	addi	a5,sp,64
    3464:	0000                	unimp
    3466:	0000                	unimp
    3468:	0000                	unimp
    346a:	00a0                	addi	s0,sp,72
    346c:	0000                	unimp
    346e:	0000                	unimp
    3470:	0000                	unimp
    3472:	0005                	c.nop	1
    3474:	007f                	0x7f
    3476:	254d                	addiw	a0,a0,19
    3478:	a09f 0000 0000      	0xa09f
    347e:	0000                	unimp
    3480:	ac00                	fsd	fs0,24(s0)
    3482:	0000                	unimp
    3484:	0000                	unimp
    3486:	0000                	unimp
    3488:	0100                	addi	s0,sp,128
    348a:	5f00                	lw	s0,56(a4)
    348c:	00b4                	addi	a3,sp,72
    348e:	0000                	unimp
    3490:	0000                	unimp
    3492:	0000                	unimp
    3494:	00bc                	addi	a5,sp,72
    3496:	0000                	unimp
    3498:	0000                	unimp
    349a:	0000                	unimp
    349c:	0001                	nop
    349e:	bc5f 0000 0000      	0xbc5f
    34a4:	0000                	unimp
    34a6:	d400                	sw	s0,40(s0)
    34a8:	0000                	unimp
    34aa:	0000                	unimp
    34ac:	0000                	unimp
    34ae:	0900                	addi	s0,sp,144
    34b0:	7f00                	ld	s0,56(a4)
    34b2:	1100                	addi	s0,sp,160
    34b4:	ffff                	0xffff
    34b6:	5fff                	0x5fff
    34b8:	9f1a                	add	t5,t5,t1
    34ba:	00d4                	addi	a3,sp,68
    34bc:	0000                	unimp
    34be:	0000                	unimp
    34c0:	0000                	unimp
    34c2:	00e8                	addi	a0,sp,76
    34c4:	0000                	unimp
    34c6:	0000                	unimp
    34c8:	0000                	unimp
    34ca:	0001                	nop
    34cc:	ec5f 0000 0000      	0xec5f
    34d2:	0000                	unimp
    34d4:	f400                	sd	s0,40(s0)
    34d6:	0000                	unimp
    34d8:	0000                	unimp
    34da:	0000                	unimp
    34dc:	0100                	addi	s0,sp,128
    34de:	5f00                	lw	s0,56(a4)
    34e0:	0114                	addi	a3,sp,128
    34e2:	0000                	unimp
    34e4:	0000                	unimp
    34e6:	0000                	unimp
    34e8:	0128                	addi	a0,sp,136
    34ea:	0000                	unimp
    34ec:	0000                	unimp
    34ee:	0000                	unimp
    34f0:	0001                	nop
    34f2:	285f 0001 0000      	0x1285f
    34f8:	0000                	unimp
    34fa:	2c00                	fld	fs0,24(s0)
    34fc:	0001                	nop
    34fe:	0000                	unimp
    3500:	0000                	unimp
    3502:	0900                	addi	s0,sp,144
    3504:	7f00                	ld	s0,56(a4)
    3506:	1100                	addi	s0,sp,160
    3508:	ffff                	0xffff
    350a:	5fff                	0x5fff
    350c:	9f1a                	add	t5,t5,t1
	...
    351e:	0104                	addi	s1,sp,128
    3520:	0000                	unimp
    3522:	0000                	unimp
    3524:	0000                	unimp
    3526:	0108                	addi	a0,sp,128
    3528:	0000                	unimp
    352a:	0000                	unimp
    352c:	0000                	unimp
    352e:	0001                	nop
    3530:	005a                	c.slli	zero,0x16
	...
    3546:	0000                	unimp
    3548:	2800                	fld	fs0,16(s0)
    354a:	0000                	unimp
    354c:	0000                	unimp
    354e:	0000                	unimp
    3550:	0100                	addi	s0,sp,128
    3552:	5a00                	lw	s0,48(a2)
    3554:	0028                	addi	a0,sp,8
    3556:	0000                	unimp
    3558:	0000                	unimp
    355a:	0000                	unimp
    355c:	003c                	addi	a5,sp,8
    355e:	0000                	unimp
    3560:	0000                	unimp
    3562:	0000                	unimp
    3564:	0004                	0x4
    3566:	9f5a01f3          	0x9f5a01f3
	...
    3582:	0028                	addi	a0,sp,8
    3584:	0000                	unimp
    3586:	0000                	unimp
    3588:	0000                	unimp
    358a:	0001                	nop
    358c:	285a                	fld	fa6,400(sp)
    358e:	0000                	unimp
    3590:	0000                	unimp
    3592:	0000                	unimp
    3594:	3c00                	fld	fs0,56(s0)
    3596:	0000                	unimp
    3598:	0000                	unimp
    359a:	0000                	unimp
    359c:	0400                	addi	s0,sp,512
    359e:	f300                	sd	s0,32(a4)
    35a0:	5a01                	li	s4,-32
    35a2:	009f 0000 0000      	0x9f
	...
    35b8:	0000                	unimp
    35ba:	0400                	addi	s0,sp,512
    35bc:	0000                	unimp
    35be:	0000                	unimp
    35c0:	0000                	unimp
    35c2:	0300                	addi	s0,sp,384
    35c4:	0800                	addi	s0,sp,16
    35c6:	9f38                	0x9f38
    35c8:	0004                	0x4
    35ca:	0000                	unimp
    35cc:	0000                	unimp
    35ce:	0000                	unimp
    35d0:	002c                	addi	a1,sp,8
    35d2:	0000                	unimp
    35d4:	0000                	unimp
    35d6:	0000                	unimp
    35d8:	0001                	nop
    35da:	005f 0000 0000      	0x5f
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
 2d0:	0240                	addi	s0,sp,260
 2d2:	0000                	unimp
 2d4:	0000                	unimp
 2d6:	0000                	unimp
 2d8:	0244                	addi	s1,sp,260
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
 340:	0270                	addi	a2,sp,268
 342:	0000                	unimp
 344:	0000                	unimp
 346:	0000                	unimp
 348:	0274                	addi	a3,sp,268
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
 398:	01b8                	addi	a4,sp,200
 39a:	0000                	unimp
 39c:	0000                	unimp
 39e:	0000                	unimp
 3a0:	01bc                	addi	a5,sp,200
 3a2:	0000                	unimp
 3a4:	0000                	unimp
 3a6:	0000                	unimp
 3a8:	01c0                	addi	s0,sp,196
 3aa:	0000                	unimp
 3ac:	0000                	unimp
 3ae:	0000                	unimp
 3b0:	01c8                	addi	a0,sp,196
 3b2:	0000                	unimp
 3b4:	0000                	unimp
 3b6:	0000                	unimp
 3b8:	01d0                	addi	a2,sp,196
	...
 3ce:	0000                	unimp
 3d0:	0264                	addi	s1,sp,268
 3d2:	0000                	unimp
 3d4:	0000                	unimp
 3d6:	0000                	unimp
 3d8:	0270                	addi	a2,sp,268
 3da:	0000                	unimp
 3dc:	0000                	unimp
 3de:	0000                	unimp
 3e0:	0280                	addi	s0,sp,320
 3e2:	0000                	unimp
 3e4:	0000                	unimp
 3e6:	0000                	unimp
 3e8:	02d8                	addi	a4,sp,324
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


obj/__user_forktree.out:     file format elf64-littleriscv


Disassembly of section .text:

0000000000800020 <open>:
  800020:	1582                	slli	a1,a1,0x20
  800022:	9181                	srli	a1,a1,0x20
  800024:	a215                	j	800148 <sys_open>

0000000000800026 <close>:
  800026:	a235                	j	800152 <sys_close>

0000000000800028 <dup2>:
  800028:	aa0d                	j	80015a <sys_dup>

000000000080002a <_start>:
  80002a:	19c000ef          	jal	ra,8001c6 <umain>
  80002e:	a001                	j	80002e <_start+0x4>

0000000000800030 <__warn>:
  800030:	715d                	addi	sp,sp,-80
  800032:	832e                	mv	t1,a1
  800034:	e822                	sd	s0,16(sp)
  800036:	85aa                	mv	a1,a0
  800038:	8432                	mv	s0,a2
  80003a:	fc3e                	sd	a5,56(sp)
  80003c:	861a                	mv	a2,t1
  80003e:	103c                	addi	a5,sp,40
  800040:	00000517          	auipc	a0,0x0
  800044:	79850513          	addi	a0,a0,1944 # 8007d8 <main+0x3c>
  800048:	ec06                	sd	ra,24(sp)
  80004a:	f436                	sd	a3,40(sp)
  80004c:	f83a                	sd	a4,48(sp)
  80004e:	e0c2                	sd	a6,64(sp)
  800050:	e4c6                	sd	a7,72(sp)
  800052:	e43e                	sd	a5,8(sp)
  800054:	060000ef          	jal	ra,8000b4 <cprintf>
  800058:	65a2                	ld	a1,8(sp)
  80005a:	8522                	mv	a0,s0
  80005c:	032000ef          	jal	ra,80008e <vcprintf>
  800060:	00000517          	auipc	a0,0x0
  800064:	7d050513          	addi	a0,a0,2000 # 800830 <main+0x94>
  800068:	04c000ef          	jal	ra,8000b4 <cprintf>
  80006c:	60e2                	ld	ra,24(sp)
  80006e:	6442                	ld	s0,16(sp)
  800070:	6161                	addi	sp,sp,80
  800072:	8082                	ret

0000000000800074 <cputch>:
  800074:	1141                	addi	sp,sp,-16
  800076:	e022                	sd	s0,0(sp)
  800078:	e406                	sd	ra,8(sp)
  80007a:	842e                	mv	s0,a1
  80007c:	0c6000ef          	jal	ra,800142 <sys_putc>
  800080:	401c                	lw	a5,0(s0)
  800082:	60a2                	ld	ra,8(sp)
  800084:	2785                	addiw	a5,a5,1
  800086:	c01c                	sw	a5,0(s0)
  800088:	6402                	ld	s0,0(sp)
  80008a:	0141                	addi	sp,sp,16
  80008c:	8082                	ret

000000000080008e <vcprintf>:
  80008e:	1101                	addi	sp,sp,-32
  800090:	872e                	mv	a4,a1
  800092:	75dd                	lui	a1,0xffff7
  800094:	86aa                	mv	a3,a0
  800096:	0070                	addi	a2,sp,12
  800098:	00000517          	auipc	a0,0x0
  80009c:	fdc50513          	addi	a0,a0,-36 # 800074 <cputch>
  8000a0:	ad958593          	addi	a1,a1,-1319 # ffffffffffff6ad9 <error_string+0xffffffffff7f5ef9>
  8000a4:	ec06                	sd	ra,24(sp)
  8000a6:	c602                	sw	zero,12(sp)
  8000a8:	222000ef          	jal	ra,8002ca <vprintfmt>
  8000ac:	60e2                	ld	ra,24(sp)
  8000ae:	4532                	lw	a0,12(sp)
  8000b0:	6105                	addi	sp,sp,32
  8000b2:	8082                	ret

00000000008000b4 <cprintf>:
  8000b4:	711d                	addi	sp,sp,-96
  8000b6:	02810313          	addi	t1,sp,40
  8000ba:	8e2a                	mv	t3,a0
  8000bc:	f42e                	sd	a1,40(sp)
  8000be:	75dd                	lui	a1,0xffff7
  8000c0:	f832                	sd	a2,48(sp)
  8000c2:	fc36                	sd	a3,56(sp)
  8000c4:	e0ba                	sd	a4,64(sp)
  8000c6:	00000517          	auipc	a0,0x0
  8000ca:	fae50513          	addi	a0,a0,-82 # 800074 <cputch>
  8000ce:	0050                	addi	a2,sp,4
  8000d0:	871a                	mv	a4,t1
  8000d2:	86f2                	mv	a3,t3
  8000d4:	ad958593          	addi	a1,a1,-1319 # ffffffffffff6ad9 <error_string+0xffffffffff7f5ef9>
  8000d8:	ec06                	sd	ra,24(sp)
  8000da:	e4be                	sd	a5,72(sp)
  8000dc:	e8c2                	sd	a6,80(sp)
  8000de:	ecc6                	sd	a7,88(sp)
  8000e0:	e41a                	sd	t1,8(sp)
  8000e2:	c202                	sw	zero,4(sp)
  8000e4:	1e6000ef          	jal	ra,8002ca <vprintfmt>
  8000e8:	60e2                	ld	ra,24(sp)
  8000ea:	4512                	lw	a0,4(sp)
  8000ec:	6125                	addi	sp,sp,96
  8000ee:	8082                	ret

00000000008000f0 <syscall>:
  8000f0:	7175                	addi	sp,sp,-144
  8000f2:	f8ba                	sd	a4,112(sp)
  8000f4:	e0ba                	sd	a4,64(sp)
  8000f6:	0118                	addi	a4,sp,128
  8000f8:	e42a                	sd	a0,8(sp)
  8000fa:	ecae                	sd	a1,88(sp)
  8000fc:	f0b2                	sd	a2,96(sp)
  8000fe:	f4b6                	sd	a3,104(sp)
  800100:	fcbe                	sd	a5,120(sp)
  800102:	e142                	sd	a6,128(sp)
  800104:	e546                	sd	a7,136(sp)
  800106:	f42e                	sd	a1,40(sp)
  800108:	f832                	sd	a2,48(sp)
  80010a:	fc36                	sd	a3,56(sp)
  80010c:	f03a                	sd	a4,32(sp)
  80010e:	e4be                	sd	a5,72(sp)
  800110:	4522                	lw	a0,8(sp)
  800112:	55a2                	lw	a1,40(sp)
  800114:	5642                	lw	a2,48(sp)
  800116:	56e2                	lw	a3,56(sp)
  800118:	4706                	lw	a4,64(sp)
  80011a:	47a6                	lw	a5,72(sp)
  80011c:	00000073          	ecall
  800120:	ce2a                	sw	a0,28(sp)
  800122:	4572                	lw	a0,28(sp)
  800124:	6149                	addi	sp,sp,144
  800126:	8082                	ret

0000000000800128 <sys_exit>:
  800128:	85aa                	mv	a1,a0
  80012a:	4505                	li	a0,1
  80012c:	b7d1                	j	8000f0 <syscall>

000000000080012e <sys_fork>:
  80012e:	4509                	li	a0,2
  800130:	b7c1                	j	8000f0 <syscall>

0000000000800132 <sys_wait>:
  800132:	862e                	mv	a2,a1
  800134:	85aa                	mv	a1,a0
  800136:	450d                	li	a0,3
  800138:	bf65                	j	8000f0 <syscall>

000000000080013a <sys_yield>:
  80013a:	4529                	li	a0,10
  80013c:	bf55                	j	8000f0 <syscall>

000000000080013e <sys_getpid>:
  80013e:	4549                	li	a0,18
  800140:	bf45                	j	8000f0 <syscall>

0000000000800142 <sys_putc>:
  800142:	85aa                	mv	a1,a0
  800144:	4579                	li	a0,30
  800146:	b76d                	j	8000f0 <syscall>

0000000000800148 <sys_open>:
  800148:	862e                	mv	a2,a1
  80014a:	85aa                	mv	a1,a0
  80014c:	06400513          	li	a0,100
  800150:	b745                	j	8000f0 <syscall>

0000000000800152 <sys_close>:
  800152:	85aa                	mv	a1,a0
  800154:	06500513          	li	a0,101
  800158:	bf61                	j	8000f0 <syscall>

000000000080015a <sys_dup>:
  80015a:	862e                	mv	a2,a1
  80015c:	85aa                	mv	a1,a0
  80015e:	08200513          	li	a0,130
  800162:	b779                	j	8000f0 <syscall>

0000000000800164 <exit>:
  800164:	1141                	addi	sp,sp,-16
  800166:	e406                	sd	ra,8(sp)
  800168:	fc1ff0ef          	jal	ra,800128 <sys_exit>
  80016c:	00000517          	auipc	a0,0x0
  800170:	68c50513          	addi	a0,a0,1676 # 8007f8 <main+0x5c>
  800174:	f41ff0ef          	jal	ra,8000b4 <cprintf>
  800178:	a001                	j	800178 <exit+0x14>

000000000080017a <fork>:
  80017a:	bf55                	j	80012e <sys_fork>

000000000080017c <waitpid>:
  80017c:	bf5d                	j	800132 <sys_wait>

000000000080017e <yield>:
  80017e:	bf75                	j	80013a <sys_yield>

0000000000800180 <getpid>:
  800180:	bf7d                	j	80013e <sys_getpid>

0000000000800182 <initfd>:
  800182:	1101                	addi	sp,sp,-32
  800184:	87ae                	mv	a5,a1
  800186:	e426                	sd	s1,8(sp)
  800188:	85b2                	mv	a1,a2
  80018a:	84aa                	mv	s1,a0
  80018c:	853e                	mv	a0,a5
  80018e:	e822                	sd	s0,16(sp)
  800190:	ec06                	sd	ra,24(sp)
  800192:	e8fff0ef          	jal	ra,800020 <open>
  800196:	842a                	mv	s0,a0
  800198:	00054463          	bltz	a0,8001a0 <initfd+0x1e>
  80019c:	00951863          	bne	a0,s1,8001ac <initfd+0x2a>
  8001a0:	60e2                	ld	ra,24(sp)
  8001a2:	8522                	mv	a0,s0
  8001a4:	6442                	ld	s0,16(sp)
  8001a6:	64a2                	ld	s1,8(sp)
  8001a8:	6105                	addi	sp,sp,32
  8001aa:	8082                	ret
  8001ac:	8526                	mv	a0,s1
  8001ae:	e79ff0ef          	jal	ra,800026 <close>
  8001b2:	85a6                	mv	a1,s1
  8001b4:	8522                	mv	a0,s0
  8001b6:	e73ff0ef          	jal	ra,800028 <dup2>
  8001ba:	84aa                	mv	s1,a0
  8001bc:	8522                	mv	a0,s0
  8001be:	e69ff0ef          	jal	ra,800026 <close>
  8001c2:	8426                	mv	s0,s1
  8001c4:	bff1                	j	8001a0 <initfd+0x1e>

00000000008001c6 <umain>:
  8001c6:	1101                	addi	sp,sp,-32
  8001c8:	e822                	sd	s0,16(sp)
  8001ca:	e426                	sd	s1,8(sp)
  8001cc:	842a                	mv	s0,a0
  8001ce:	84ae                	mv	s1,a1
  8001d0:	4601                	li	a2,0
  8001d2:	00000597          	auipc	a1,0x0
  8001d6:	63e58593          	addi	a1,a1,1598 # 800810 <main+0x74>
  8001da:	4501                	li	a0,0
  8001dc:	ec06                	sd	ra,24(sp)
  8001de:	fa5ff0ef          	jal	ra,800182 <initfd>
  8001e2:	02054263          	bltz	a0,800206 <umain+0x40>
  8001e6:	4605                	li	a2,1
  8001e8:	00000597          	auipc	a1,0x0
  8001ec:	66858593          	addi	a1,a1,1640 # 800850 <main+0xb4>
  8001f0:	4505                	li	a0,1
  8001f2:	f91ff0ef          	jal	ra,800182 <initfd>
  8001f6:	02054563          	bltz	a0,800220 <umain+0x5a>
  8001fa:	85a6                	mv	a1,s1
  8001fc:	8522                	mv	a0,s0
  8001fe:	59e000ef          	jal	ra,80079c <main>
  800202:	f63ff0ef          	jal	ra,800164 <exit>
  800206:	86aa                	mv	a3,a0
  800208:	00000617          	auipc	a2,0x0
  80020c:	61060613          	addi	a2,a2,1552 # 800818 <main+0x7c>
  800210:	45e9                	li	a1,26
  800212:	00000517          	auipc	a0,0x0
  800216:	62650513          	addi	a0,a0,1574 # 800838 <main+0x9c>
  80021a:	e17ff0ef          	jal	ra,800030 <__warn>
  80021e:	b7e1                	j	8001e6 <umain+0x20>
  800220:	86aa                	mv	a3,a0
  800222:	00000617          	auipc	a2,0x0
  800226:	63660613          	addi	a2,a2,1590 # 800858 <main+0xbc>
  80022a:	45f5                	li	a1,29
  80022c:	00000517          	auipc	a0,0x0
  800230:	60c50513          	addi	a0,a0,1548 # 800838 <main+0x9c>
  800234:	dfdff0ef          	jal	ra,800030 <__warn>
  800238:	b7c9                	j	8001fa <umain+0x34>

000000000080023a <printnum>:
  80023a:	02071893          	slli	a7,a4,0x20
  80023e:	7139                	addi	sp,sp,-64
  800240:	0208d893          	srli	a7,a7,0x20
  800244:	e456                	sd	s5,8(sp)
  800246:	0316fab3          	remu	s5,a3,a7
  80024a:	f822                	sd	s0,48(sp)
  80024c:	f426                	sd	s1,40(sp)
  80024e:	f04a                	sd	s2,32(sp)
  800250:	ec4e                	sd	s3,24(sp)
  800252:	fc06                	sd	ra,56(sp)
  800254:	e852                	sd	s4,16(sp)
  800256:	84aa                	mv	s1,a0
  800258:	89ae                	mv	s3,a1
  80025a:	8932                	mv	s2,a2
  80025c:	fff7841b          	addiw	s0,a5,-1
  800260:	2a81                	sext.w	s5,s5
  800262:	0516f163          	bgeu	a3,a7,8002a4 <printnum+0x6a>
  800266:	8a42                	mv	s4,a6
  800268:	00805863          	blez	s0,800278 <printnum+0x3e>
  80026c:	347d                	addiw	s0,s0,-1
  80026e:	864e                	mv	a2,s3
  800270:	85ca                	mv	a1,s2
  800272:	8552                	mv	a0,s4
  800274:	9482                	jalr	s1
  800276:	f87d                	bnez	s0,80026c <printnum+0x32>
  800278:	1a82                	slli	s5,s5,0x20
  80027a:	00000797          	auipc	a5,0x0
  80027e:	5fe78793          	addi	a5,a5,1534 # 800878 <main+0xdc>
  800282:	020ada93          	srli	s5,s5,0x20
  800286:	9abe                	add	s5,s5,a5
  800288:	7442                	ld	s0,48(sp)
  80028a:	000ac503          	lbu	a0,0(s5)
  80028e:	70e2                	ld	ra,56(sp)
  800290:	6a42                	ld	s4,16(sp)
  800292:	6aa2                	ld	s5,8(sp)
  800294:	864e                	mv	a2,s3
  800296:	85ca                	mv	a1,s2
  800298:	69e2                	ld	s3,24(sp)
  80029a:	7902                	ld	s2,32(sp)
  80029c:	87a6                	mv	a5,s1
  80029e:	74a2                	ld	s1,40(sp)
  8002a0:	6121                	addi	sp,sp,64
  8002a2:	8782                	jr	a5
  8002a4:	0316d6b3          	divu	a3,a3,a7
  8002a8:	87a2                	mv	a5,s0
  8002aa:	f91ff0ef          	jal	ra,80023a <printnum>
  8002ae:	b7e9                	j	800278 <printnum+0x3e>

00000000008002b0 <sprintputch>:
  8002b0:	499c                	lw	a5,16(a1)
  8002b2:	6198                	ld	a4,0(a1)
  8002b4:	6594                	ld	a3,8(a1)
  8002b6:	2785                	addiw	a5,a5,1
  8002b8:	c99c                	sw	a5,16(a1)
  8002ba:	00d77763          	bgeu	a4,a3,8002c8 <sprintputch+0x18>
  8002be:	00170793          	addi	a5,a4,1
  8002c2:	e19c                	sd	a5,0(a1)
  8002c4:	00a70023          	sb	a0,0(a4)
  8002c8:	8082                	ret

00000000008002ca <vprintfmt>:
  8002ca:	7119                	addi	sp,sp,-128
  8002cc:	f4a6                	sd	s1,104(sp)
  8002ce:	f0ca                	sd	s2,96(sp)
  8002d0:	ecce                	sd	s3,88(sp)
  8002d2:	e8d2                	sd	s4,80(sp)
  8002d4:	e4d6                	sd	s5,72(sp)
  8002d6:	e0da                	sd	s6,64(sp)
  8002d8:	fc5e                	sd	s7,56(sp)
  8002da:	ec6e                	sd	s11,24(sp)
  8002dc:	fc86                	sd	ra,120(sp)
  8002de:	f8a2                	sd	s0,112(sp)
  8002e0:	f862                	sd	s8,48(sp)
  8002e2:	f466                	sd	s9,40(sp)
  8002e4:	f06a                	sd	s10,32(sp)
  8002e6:	89aa                	mv	s3,a0
  8002e8:	892e                	mv	s2,a1
  8002ea:	84b2                	mv	s1,a2
  8002ec:	8db6                	mv	s11,a3
  8002ee:	8aba                	mv	s5,a4
  8002f0:	02500a13          	li	s4,37
  8002f4:	5bfd                	li	s7,-1
  8002f6:	00000b17          	auipc	s6,0x0
  8002fa:	5b6b0b13          	addi	s6,s6,1462 # 8008ac <main+0x110>
  8002fe:	000dc503          	lbu	a0,0(s11)
  800302:	001d8413          	addi	s0,s11,1
  800306:	01450b63          	beq	a0,s4,80031c <vprintfmt+0x52>
  80030a:	c129                	beqz	a0,80034c <vprintfmt+0x82>
  80030c:	864a                	mv	a2,s2
  80030e:	85a6                	mv	a1,s1
  800310:	0405                	addi	s0,s0,1
  800312:	9982                	jalr	s3
  800314:	fff44503          	lbu	a0,-1(s0)
  800318:	ff4519e3          	bne	a0,s4,80030a <vprintfmt+0x40>
  80031c:	00044583          	lbu	a1,0(s0)
  800320:	02000813          	li	a6,32
  800324:	4d01                	li	s10,0
  800326:	4301                	li	t1,0
  800328:	5cfd                	li	s9,-1
  80032a:	5c7d                	li	s8,-1
  80032c:	05500513          	li	a0,85
  800330:	48a5                	li	a7,9
  800332:	fdd5861b          	addiw	a2,a1,-35
  800336:	0ff67613          	zext.b	a2,a2
  80033a:	00140d93          	addi	s11,s0,1
  80033e:	04c56263          	bltu	a0,a2,800382 <vprintfmt+0xb8>
  800342:	060a                	slli	a2,a2,0x2
  800344:	965a                	add	a2,a2,s6
  800346:	4214                	lw	a3,0(a2)
  800348:	96da                	add	a3,a3,s6
  80034a:	8682                	jr	a3
  80034c:	70e6                	ld	ra,120(sp)
  80034e:	7446                	ld	s0,112(sp)
  800350:	74a6                	ld	s1,104(sp)
  800352:	7906                	ld	s2,96(sp)
  800354:	69e6                	ld	s3,88(sp)
  800356:	6a46                	ld	s4,80(sp)
  800358:	6aa6                	ld	s5,72(sp)
  80035a:	6b06                	ld	s6,64(sp)
  80035c:	7be2                	ld	s7,56(sp)
  80035e:	7c42                	ld	s8,48(sp)
  800360:	7ca2                	ld	s9,40(sp)
  800362:	7d02                	ld	s10,32(sp)
  800364:	6de2                	ld	s11,24(sp)
  800366:	6109                	addi	sp,sp,128
  800368:	8082                	ret
  80036a:	882e                	mv	a6,a1
  80036c:	00144583          	lbu	a1,1(s0)
  800370:	846e                	mv	s0,s11
  800372:	00140d93          	addi	s11,s0,1
  800376:	fdd5861b          	addiw	a2,a1,-35
  80037a:	0ff67613          	zext.b	a2,a2
  80037e:	fcc572e3          	bgeu	a0,a2,800342 <vprintfmt+0x78>
  800382:	864a                	mv	a2,s2
  800384:	85a6                	mv	a1,s1
  800386:	02500513          	li	a0,37
  80038a:	9982                	jalr	s3
  80038c:	fff44783          	lbu	a5,-1(s0)
  800390:	8da2                	mv	s11,s0
  800392:	f74786e3          	beq	a5,s4,8002fe <vprintfmt+0x34>
  800396:	ffedc783          	lbu	a5,-2(s11)
  80039a:	1dfd                	addi	s11,s11,-1
  80039c:	ff479de3          	bne	a5,s4,800396 <vprintfmt+0xcc>
  8003a0:	bfb9                	j	8002fe <vprintfmt+0x34>
  8003a2:	fd058c9b          	addiw	s9,a1,-48
  8003a6:	00144583          	lbu	a1,1(s0)
  8003aa:	846e                	mv	s0,s11
  8003ac:	fd05869b          	addiw	a3,a1,-48
  8003b0:	0005861b          	sext.w	a2,a1
  8003b4:	02d8e463          	bltu	a7,a3,8003dc <vprintfmt+0x112>
  8003b8:	00144583          	lbu	a1,1(s0)
  8003bc:	002c969b          	slliw	a3,s9,0x2
  8003c0:	0196873b          	addw	a4,a3,s9
  8003c4:	0017171b          	slliw	a4,a4,0x1
  8003c8:	9f31                	addw	a4,a4,a2
  8003ca:	fd05869b          	addiw	a3,a1,-48
  8003ce:	0405                	addi	s0,s0,1
  8003d0:	fd070c9b          	addiw	s9,a4,-48
  8003d4:	0005861b          	sext.w	a2,a1
  8003d8:	fed8f0e3          	bgeu	a7,a3,8003b8 <vprintfmt+0xee>
  8003dc:	f40c5be3          	bgez	s8,800332 <vprintfmt+0x68>
  8003e0:	8c66                	mv	s8,s9
  8003e2:	5cfd                	li	s9,-1
  8003e4:	b7b9                	j	800332 <vprintfmt+0x68>
  8003e6:	fffc4693          	not	a3,s8
  8003ea:	96fd                	srai	a3,a3,0x3f
  8003ec:	00dc77b3          	and	a5,s8,a3
  8003f0:	00144583          	lbu	a1,1(s0)
  8003f4:	00078c1b          	sext.w	s8,a5
  8003f8:	846e                	mv	s0,s11
  8003fa:	bf25                	j	800332 <vprintfmt+0x68>
  8003fc:	000aac83          	lw	s9,0(s5)
  800400:	00144583          	lbu	a1,1(s0)
  800404:	0aa1                	addi	s5,s5,8
  800406:	846e                	mv	s0,s11
  800408:	bfd1                	j	8003dc <vprintfmt+0x112>
  80040a:	4705                	li	a4,1
  80040c:	008a8613          	addi	a2,s5,8
  800410:	00674463          	blt	a4,t1,800418 <vprintfmt+0x14e>
  800414:	1c030c63          	beqz	t1,8005ec <vprintfmt+0x322>
  800418:	000ab683          	ld	a3,0(s5)
  80041c:	4741                	li	a4,16
  80041e:	8ab2                	mv	s5,a2
  800420:	2801                	sext.w	a6,a6
  800422:	87e2                	mv	a5,s8
  800424:	8626                	mv	a2,s1
  800426:	85ca                	mv	a1,s2
  800428:	854e                	mv	a0,s3
  80042a:	e11ff0ef          	jal	ra,80023a <printnum>
  80042e:	bdc1                	j	8002fe <vprintfmt+0x34>
  800430:	000aa503          	lw	a0,0(s5)
  800434:	864a                	mv	a2,s2
  800436:	85a6                	mv	a1,s1
  800438:	0aa1                	addi	s5,s5,8
  80043a:	9982                	jalr	s3
  80043c:	b5c9                	j	8002fe <vprintfmt+0x34>
  80043e:	4705                	li	a4,1
  800440:	008a8613          	addi	a2,s5,8
  800444:	00674463          	blt	a4,t1,80044c <vprintfmt+0x182>
  800448:	18030d63          	beqz	t1,8005e2 <vprintfmt+0x318>
  80044c:	000ab683          	ld	a3,0(s5)
  800450:	4729                	li	a4,10
  800452:	8ab2                	mv	s5,a2
  800454:	b7f1                	j	800420 <vprintfmt+0x156>
  800456:	00144583          	lbu	a1,1(s0)
  80045a:	4d05                	li	s10,1
  80045c:	846e                	mv	s0,s11
  80045e:	bdd1                	j	800332 <vprintfmt+0x68>
  800460:	864a                	mv	a2,s2
  800462:	85a6                	mv	a1,s1
  800464:	02500513          	li	a0,37
  800468:	9982                	jalr	s3
  80046a:	bd51                	j	8002fe <vprintfmt+0x34>
  80046c:	00144583          	lbu	a1,1(s0)
  800470:	2305                	addiw	t1,t1,1
  800472:	846e                	mv	s0,s11
  800474:	bd7d                	j	800332 <vprintfmt+0x68>
  800476:	4705                	li	a4,1
  800478:	008a8613          	addi	a2,s5,8
  80047c:	00674463          	blt	a4,t1,800484 <vprintfmt+0x1ba>
  800480:	14030c63          	beqz	t1,8005d8 <vprintfmt+0x30e>
  800484:	000ab683          	ld	a3,0(s5)
  800488:	4721                	li	a4,8
  80048a:	8ab2                	mv	s5,a2
  80048c:	bf51                	j	800420 <vprintfmt+0x156>
  80048e:	03000513          	li	a0,48
  800492:	864a                	mv	a2,s2
  800494:	85a6                	mv	a1,s1
  800496:	e042                	sd	a6,0(sp)
  800498:	9982                	jalr	s3
  80049a:	864a                	mv	a2,s2
  80049c:	85a6                	mv	a1,s1
  80049e:	07800513          	li	a0,120
  8004a2:	9982                	jalr	s3
  8004a4:	0aa1                	addi	s5,s5,8
  8004a6:	6802                	ld	a6,0(sp)
  8004a8:	4741                	li	a4,16
  8004aa:	ff8ab683          	ld	a3,-8(s5)
  8004ae:	bf8d                	j	800420 <vprintfmt+0x156>
  8004b0:	000ab403          	ld	s0,0(s5)
  8004b4:	008a8793          	addi	a5,s5,8
  8004b8:	e03e                	sd	a5,0(sp)
  8004ba:	14040c63          	beqz	s0,800612 <vprintfmt+0x348>
  8004be:	11805063          	blez	s8,8005be <vprintfmt+0x2f4>
  8004c2:	02d00693          	li	a3,45
  8004c6:	0cd81963          	bne	a6,a3,800598 <vprintfmt+0x2ce>
  8004ca:	00044683          	lbu	a3,0(s0)
  8004ce:	0006851b          	sext.w	a0,a3
  8004d2:	ce8d                	beqz	a3,80050c <vprintfmt+0x242>
  8004d4:	00140a93          	addi	s5,s0,1
  8004d8:	05e00413          	li	s0,94
  8004dc:	000cc563          	bltz	s9,8004e6 <vprintfmt+0x21c>
  8004e0:	3cfd                	addiw	s9,s9,-1
  8004e2:	037c8363          	beq	s9,s7,800508 <vprintfmt+0x23e>
  8004e6:	864a                	mv	a2,s2
  8004e8:	85a6                	mv	a1,s1
  8004ea:	100d0663          	beqz	s10,8005f6 <vprintfmt+0x32c>
  8004ee:	3681                	addiw	a3,a3,-32
  8004f0:	10d47363          	bgeu	s0,a3,8005f6 <vprintfmt+0x32c>
  8004f4:	03f00513          	li	a0,63
  8004f8:	9982                	jalr	s3
  8004fa:	000ac683          	lbu	a3,0(s5)
  8004fe:	3c7d                	addiw	s8,s8,-1
  800500:	0a85                	addi	s5,s5,1
  800502:	0006851b          	sext.w	a0,a3
  800506:	faf9                	bnez	a3,8004dc <vprintfmt+0x212>
  800508:	01805a63          	blez	s8,80051c <vprintfmt+0x252>
  80050c:	3c7d                	addiw	s8,s8,-1
  80050e:	864a                	mv	a2,s2
  800510:	85a6                	mv	a1,s1
  800512:	02000513          	li	a0,32
  800516:	9982                	jalr	s3
  800518:	fe0c1ae3          	bnez	s8,80050c <vprintfmt+0x242>
  80051c:	6a82                	ld	s5,0(sp)
  80051e:	b3c5                	j	8002fe <vprintfmt+0x34>
  800520:	4705                	li	a4,1
  800522:	008a8d13          	addi	s10,s5,8
  800526:	00674463          	blt	a4,t1,80052e <vprintfmt+0x264>
  80052a:	0a030463          	beqz	t1,8005d2 <vprintfmt+0x308>
  80052e:	000ab403          	ld	s0,0(s5)
  800532:	0c044463          	bltz	s0,8005fa <vprintfmt+0x330>
  800536:	86a2                	mv	a3,s0
  800538:	8aea                	mv	s5,s10
  80053a:	4729                	li	a4,10
  80053c:	b5d5                	j	800420 <vprintfmt+0x156>
  80053e:	000aa783          	lw	a5,0(s5)
  800542:	46e1                	li	a3,24
  800544:	0aa1                	addi	s5,s5,8
  800546:	41f7d71b          	sraiw	a4,a5,0x1f
  80054a:	8fb9                	xor	a5,a5,a4
  80054c:	40e7873b          	subw	a4,a5,a4
  800550:	02e6c663          	blt	a3,a4,80057c <vprintfmt+0x2b2>
  800554:	00371793          	slli	a5,a4,0x3
  800558:	00000697          	auipc	a3,0x0
  80055c:	68868693          	addi	a3,a3,1672 # 800be0 <error_string>
  800560:	97b6                	add	a5,a5,a3
  800562:	639c                	ld	a5,0(a5)
  800564:	cf81                	beqz	a5,80057c <vprintfmt+0x2b2>
  800566:	873e                	mv	a4,a5
  800568:	00000697          	auipc	a3,0x0
  80056c:	34068693          	addi	a3,a3,832 # 8008a8 <main+0x10c>
  800570:	8626                	mv	a2,s1
  800572:	85ca                	mv	a1,s2
  800574:	854e                	mv	a0,s3
  800576:	0d4000ef          	jal	ra,80064a <printfmt>
  80057a:	b351                	j	8002fe <vprintfmt+0x34>
  80057c:	00000697          	auipc	a3,0x0
  800580:	31c68693          	addi	a3,a3,796 # 800898 <main+0xfc>
  800584:	8626                	mv	a2,s1
  800586:	85ca                	mv	a1,s2
  800588:	854e                	mv	a0,s3
  80058a:	0c0000ef          	jal	ra,80064a <printfmt>
  80058e:	bb85                	j	8002fe <vprintfmt+0x34>
  800590:	00000417          	auipc	s0,0x0
  800594:	30040413          	addi	s0,s0,768 # 800890 <main+0xf4>
  800598:	85e6                	mv	a1,s9
  80059a:	8522                	mv	a0,s0
  80059c:	e442                	sd	a6,8(sp)
  80059e:	132000ef          	jal	ra,8006d0 <strnlen>
  8005a2:	40ac0c3b          	subw	s8,s8,a0
  8005a6:	01805c63          	blez	s8,8005be <vprintfmt+0x2f4>
  8005aa:	6822                	ld	a6,8(sp)
  8005ac:	00080a9b          	sext.w	s5,a6
  8005b0:	3c7d                	addiw	s8,s8,-1
  8005b2:	864a                	mv	a2,s2
  8005b4:	85a6                	mv	a1,s1
  8005b6:	8556                	mv	a0,s5
  8005b8:	9982                	jalr	s3
  8005ba:	fe0c1be3          	bnez	s8,8005b0 <vprintfmt+0x2e6>
  8005be:	00044683          	lbu	a3,0(s0)
  8005c2:	00140a93          	addi	s5,s0,1
  8005c6:	0006851b          	sext.w	a0,a3
  8005ca:	daa9                	beqz	a3,80051c <vprintfmt+0x252>
  8005cc:	05e00413          	li	s0,94
  8005d0:	b731                	j	8004dc <vprintfmt+0x212>
  8005d2:	000aa403          	lw	s0,0(s5)
  8005d6:	bfb1                	j	800532 <vprintfmt+0x268>
  8005d8:	000ae683          	lwu	a3,0(s5)
  8005dc:	4721                	li	a4,8
  8005de:	8ab2                	mv	s5,a2
  8005e0:	b581                	j	800420 <vprintfmt+0x156>
  8005e2:	000ae683          	lwu	a3,0(s5)
  8005e6:	4729                	li	a4,10
  8005e8:	8ab2                	mv	s5,a2
  8005ea:	bd1d                	j	800420 <vprintfmt+0x156>
  8005ec:	000ae683          	lwu	a3,0(s5)
  8005f0:	4741                	li	a4,16
  8005f2:	8ab2                	mv	s5,a2
  8005f4:	b535                	j	800420 <vprintfmt+0x156>
  8005f6:	9982                	jalr	s3
  8005f8:	b709                	j	8004fa <vprintfmt+0x230>
  8005fa:	864a                	mv	a2,s2
  8005fc:	85a6                	mv	a1,s1
  8005fe:	02d00513          	li	a0,45
  800602:	e042                	sd	a6,0(sp)
  800604:	9982                	jalr	s3
  800606:	6802                	ld	a6,0(sp)
  800608:	8aea                	mv	s5,s10
  80060a:	408006b3          	neg	a3,s0
  80060e:	4729                	li	a4,10
  800610:	bd01                	j	800420 <vprintfmt+0x156>
  800612:	03805163          	blez	s8,800634 <vprintfmt+0x36a>
  800616:	02d00693          	li	a3,45
  80061a:	f6d81be3          	bne	a6,a3,800590 <vprintfmt+0x2c6>
  80061e:	00000417          	auipc	s0,0x0
  800622:	27240413          	addi	s0,s0,626 # 800890 <main+0xf4>
  800626:	02800693          	li	a3,40
  80062a:	02800513          	li	a0,40
  80062e:	00140a93          	addi	s5,s0,1
  800632:	b55d                	j	8004d8 <vprintfmt+0x20e>
  800634:	00000a97          	auipc	s5,0x0
  800638:	25da8a93          	addi	s5,s5,605 # 800891 <main+0xf5>
  80063c:	02800513          	li	a0,40
  800640:	02800693          	li	a3,40
  800644:	05e00413          	li	s0,94
  800648:	bd51                	j	8004dc <vprintfmt+0x212>

000000000080064a <printfmt>:
  80064a:	7139                	addi	sp,sp,-64
  80064c:	02010313          	addi	t1,sp,32
  800650:	f03a                	sd	a4,32(sp)
  800652:	871a                	mv	a4,t1
  800654:	ec06                	sd	ra,24(sp)
  800656:	f43e                	sd	a5,40(sp)
  800658:	f842                	sd	a6,48(sp)
  80065a:	fc46                	sd	a7,56(sp)
  80065c:	e41a                	sd	t1,8(sp)
  80065e:	c6dff0ef          	jal	ra,8002ca <vprintfmt>
  800662:	60e2                	ld	ra,24(sp)
  800664:	6121                	addi	sp,sp,64
  800666:	8082                	ret

0000000000800668 <snprintf>:
  800668:	711d                	addi	sp,sp,-96
  80066a:	15fd                	addi	a1,a1,-1
  80066c:	03810313          	addi	t1,sp,56
  800670:	95aa                	add	a1,a1,a0
  800672:	f406                	sd	ra,40(sp)
  800674:	fc36                	sd	a3,56(sp)
  800676:	e0ba                	sd	a4,64(sp)
  800678:	e4be                	sd	a5,72(sp)
  80067a:	e8c2                	sd	a6,80(sp)
  80067c:	ecc6                	sd	a7,88(sp)
  80067e:	e01a                	sd	t1,0(sp)
  800680:	e42a                	sd	a0,8(sp)
  800682:	e82e                	sd	a1,16(sp)
  800684:	cc02                	sw	zero,24(sp)
  800686:	c515                	beqz	a0,8006b2 <snprintf+0x4a>
  800688:	02a5e563          	bltu	a1,a0,8006b2 <snprintf+0x4a>
  80068c:	75dd                	lui	a1,0xffff7
  80068e:	86b2                	mv	a3,a2
  800690:	00000517          	auipc	a0,0x0
  800694:	c2050513          	addi	a0,a0,-992 # 8002b0 <sprintputch>
  800698:	871a                	mv	a4,t1
  80069a:	0030                	addi	a2,sp,8
  80069c:	ad958593          	addi	a1,a1,-1319 # ffffffffffff6ad9 <error_string+0xffffffffff7f5ef9>
  8006a0:	c2bff0ef          	jal	ra,8002ca <vprintfmt>
  8006a4:	67a2                	ld	a5,8(sp)
  8006a6:	00078023          	sb	zero,0(a5)
  8006aa:	4562                	lw	a0,24(sp)
  8006ac:	70a2                	ld	ra,40(sp)
  8006ae:	6125                	addi	sp,sp,96
  8006b0:	8082                	ret
  8006b2:	5575                	li	a0,-3
  8006b4:	bfe5                	j	8006ac <snprintf+0x44>

00000000008006b6 <strlen>:
  8006b6:	00054783          	lbu	a5,0(a0)
  8006ba:	872a                	mv	a4,a0
  8006bc:	4501                	li	a0,0
  8006be:	cb81                	beqz	a5,8006ce <strlen+0x18>
  8006c0:	0505                	addi	a0,a0,1
  8006c2:	00a707b3          	add	a5,a4,a0
  8006c6:	0007c783          	lbu	a5,0(a5)
  8006ca:	fbfd                	bnez	a5,8006c0 <strlen+0xa>
  8006cc:	8082                	ret
  8006ce:	8082                	ret

00000000008006d0 <strnlen>:
  8006d0:	4781                	li	a5,0
  8006d2:	e589                	bnez	a1,8006dc <strnlen+0xc>
  8006d4:	a811                	j	8006e8 <strnlen+0x18>
  8006d6:	0785                	addi	a5,a5,1
  8006d8:	00f58863          	beq	a1,a5,8006e8 <strnlen+0x18>
  8006dc:	00f50733          	add	a4,a0,a5
  8006e0:	00074703          	lbu	a4,0(a4)
  8006e4:	fb6d                	bnez	a4,8006d6 <strnlen+0x6>
  8006e6:	85be                	mv	a1,a5
  8006e8:	852e                	mv	a0,a1
  8006ea:	8082                	ret

00000000008006ec <forktree>:
  8006ec:	1101                	addi	sp,sp,-32
  8006ee:	ec06                	sd	ra,24(sp)
  8006f0:	e822                	sd	s0,16(sp)
  8006f2:	e426                	sd	s1,8(sp)
  8006f4:	842a                	mv	s0,a0
  8006f6:	a8bff0ef          	jal	ra,800180 <getpid>
  8006fa:	8622                	mv	a2,s0
  8006fc:	85aa                	mv	a1,a0
  8006fe:	00000517          	auipc	a0,0x0
  800702:	5aa50513          	addi	a0,a0,1450 # 800ca8 <error_string+0xc8>
  800706:	9afff0ef          	jal	ra,8000b4 <cprintf>
  80070a:	03000593          	li	a1,48
  80070e:	8522                	mv	a0,s0
  800710:	03e000ef          	jal	ra,80074e <forkchild>
  800714:	84aa                	mv	s1,a0
  800716:	03100593          	li	a1,49
  80071a:	8522                	mv	a0,s0
  80071c:	032000ef          	jal	ra,80074e <forkchild>
  800720:	842a                	mv	s0,a0
  800722:	00904963          	bgtz	s1,800734 <forktree+0x48>
  800726:	00804d63          	bgtz	s0,800740 <forktree+0x54>
  80072a:	60e2                	ld	ra,24(sp)
  80072c:	6442                	ld	s0,16(sp)
  80072e:	64a2                	ld	s1,8(sp)
  800730:	6105                	addi	sp,sp,32
  800732:	8082                	ret
  800734:	4581                	li	a1,0
  800736:	8526                	mv	a0,s1
  800738:	a45ff0ef          	jal	ra,80017c <waitpid>
  80073c:	fe8057e3          	blez	s0,80072a <forktree+0x3e>
  800740:	8522                	mv	a0,s0
  800742:	6442                	ld	s0,16(sp)
  800744:	60e2                	ld	ra,24(sp)
  800746:	64a2                	ld	s1,8(sp)
  800748:	4581                	li	a1,0
  80074a:	6105                	addi	sp,sp,32
  80074c:	bc05                	j	80017c <waitpid>

000000000080074e <forkchild>:
  80074e:	7179                	addi	sp,sp,-48
  800750:	f022                	sd	s0,32(sp)
  800752:	ec26                	sd	s1,24(sp)
  800754:	f406                	sd	ra,40(sp)
  800756:	842a                	mv	s0,a0
  800758:	84ae                	mv	s1,a1
  80075a:	f5dff0ef          	jal	ra,8006b6 <strlen>
  80075e:	4789                	li	a5,2
  800760:	02a7e463          	bltu	a5,a0,800788 <forkchild+0x3a>
  800764:	8726                	mv	a4,s1
  800766:	86a2                	mv	a3,s0
  800768:	00000617          	auipc	a2,0x0
  80076c:	55860613          	addi	a2,a2,1368 # 800cc0 <error_string+0xe0>
  800770:	4591                	li	a1,4
  800772:	0028                	addi	a0,sp,8
  800774:	ef5ff0ef          	jal	ra,800668 <snprintf>
  800778:	a03ff0ef          	jal	ra,80017a <fork>
  80077c:	c901                	beqz	a0,80078c <forkchild+0x3e>
  80077e:	70a2                	ld	ra,40(sp)
  800780:	7402                	ld	s0,32(sp)
  800782:	64e2                	ld	s1,24(sp)
  800784:	6145                	addi	sp,sp,48
  800786:	8082                	ret
  800788:	557d                	li	a0,-1
  80078a:	bfd5                	j	80077e <forkchild+0x30>
  80078c:	0028                	addi	a0,sp,8
  80078e:	f5fff0ef          	jal	ra,8006ec <forktree>
  800792:	9edff0ef          	jal	ra,80017e <yield>
  800796:	4501                	li	a0,0
  800798:	9cdff0ef          	jal	ra,800164 <exit>

000000000080079c <main>:
  80079c:	1141                	addi	sp,sp,-16
  80079e:	00000517          	auipc	a0,0x0
  8007a2:	51a50513          	addi	a0,a0,1306 # 800cb8 <error_string+0xd8>
  8007a6:	e406                	sd	ra,8(sp)
  8007a8:	f45ff0ef          	jal	ra,8006ec <forktree>
  8007ac:	60a2                	ld	ra,8(sp)
  8007ae:	4501                	li	a0,0
  8007b0:	0141                	addi	sp,sp,16
  8007b2:	8082                	ret

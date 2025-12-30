
obj/__user_badsegment.out:     file format elf64-littleriscv


Disassembly of section .text:

0000000000800020 <open>:
  800020:	1582                	slli	a1,a1,0x20
  800022:	9181                	srli	a1,a1,0x20
  800024:	aab9                	j	800182 <sys_open>

0000000000800026 <close>:
  800026:	a29d                	j	80018c <sys_close>

0000000000800028 <dup2>:
  800028:	a2b5                	j	800194 <sys_dup>

000000000080002a <_start>:
  80002a:	1d2000ef          	jal	ra,8001fc <umain>
  80002e:	a001                	j	80002e <_start+0x4>

0000000000800030 <__panic>:
  800030:	715d                	addi	sp,sp,-80
  800032:	8e2e                	mv	t3,a1
  800034:	e822                	sd	s0,16(sp)
  800036:	85aa                	mv	a1,a0
  800038:	8432                	mv	s0,a2
  80003a:	fc3e                	sd	a5,56(sp)
  80003c:	8672                	mv	a2,t3
  80003e:	103c                	addi	a5,sp,40
  800040:	00000517          	auipc	a0,0x0
  800044:	6f850513          	addi	a0,a0,1784 # 800738 <main+0x98>
  800048:	ec06                	sd	ra,24(sp)
  80004a:	f436                	sd	a3,40(sp)
  80004c:	f83a                	sd	a4,48(sp)
  80004e:	e0c2                	sd	a6,64(sp)
  800050:	e4c6                	sd	a7,72(sp)
  800052:	e43e                	sd	a5,8(sp)
  800054:	0a2000ef          	jal	ra,8000f6 <cprintf>
  800058:	65a2                	ld	a1,8(sp)
  80005a:	8522                	mv	a0,s0
  80005c:	074000ef          	jal	ra,8000d0 <vcprintf>
  800060:	00000517          	auipc	a0,0x0
  800064:	75050513          	addi	a0,a0,1872 # 8007b0 <main+0x110>
  800068:	08e000ef          	jal	ra,8000f6 <cprintf>
  80006c:	5559                	li	a0,-10
  80006e:	130000ef          	jal	ra,80019e <exit>

0000000000800072 <__warn>:
  800072:	715d                	addi	sp,sp,-80
  800074:	832e                	mv	t1,a1
  800076:	e822                	sd	s0,16(sp)
  800078:	85aa                	mv	a1,a0
  80007a:	8432                	mv	s0,a2
  80007c:	fc3e                	sd	a5,56(sp)
  80007e:	861a                	mv	a2,t1
  800080:	103c                	addi	a5,sp,40
  800082:	00000517          	auipc	a0,0x0
  800086:	6d650513          	addi	a0,a0,1750 # 800758 <main+0xb8>
  80008a:	ec06                	sd	ra,24(sp)
  80008c:	f436                	sd	a3,40(sp)
  80008e:	f83a                	sd	a4,48(sp)
  800090:	e0c2                	sd	a6,64(sp)
  800092:	e4c6                	sd	a7,72(sp)
  800094:	e43e                	sd	a5,8(sp)
  800096:	060000ef          	jal	ra,8000f6 <cprintf>
  80009a:	65a2                	ld	a1,8(sp)
  80009c:	8522                	mv	a0,s0
  80009e:	032000ef          	jal	ra,8000d0 <vcprintf>
  8000a2:	00000517          	auipc	a0,0x0
  8000a6:	70e50513          	addi	a0,a0,1806 # 8007b0 <main+0x110>
  8000aa:	04c000ef          	jal	ra,8000f6 <cprintf>
  8000ae:	60e2                	ld	ra,24(sp)
  8000b0:	6442                	ld	s0,16(sp)
  8000b2:	6161                	addi	sp,sp,80
  8000b4:	8082                	ret

00000000008000b6 <cputch>:
  8000b6:	1141                	addi	sp,sp,-16
  8000b8:	e022                	sd	s0,0(sp)
  8000ba:	e406                	sd	ra,8(sp)
  8000bc:	842e                	mv	s0,a1
  8000be:	0be000ef          	jal	ra,80017c <sys_putc>
  8000c2:	401c                	lw	a5,0(s0)
  8000c4:	60a2                	ld	ra,8(sp)
  8000c6:	2785                	addiw	a5,a5,1
  8000c8:	c01c                	sw	a5,0(s0)
  8000ca:	6402                	ld	s0,0(sp)
  8000cc:	0141                	addi	sp,sp,16
  8000ce:	8082                	ret

00000000008000d0 <vcprintf>:
  8000d0:	1101                	addi	sp,sp,-32
  8000d2:	872e                	mv	a4,a1
  8000d4:	75dd                	lui	a1,0xffff7
  8000d6:	86aa                	mv	a3,a0
  8000d8:	0070                	addi	a2,sp,12
  8000da:	00000517          	auipc	a0,0x0
  8000de:	fdc50513          	addi	a0,a0,-36 # 8000b6 <cputch>
  8000e2:	ad958593          	addi	a1,a1,-1319 # ffffffffffff6ad9 <error_string+0xffffffffff7f5f79>
  8000e6:	ec06                	sd	ra,24(sp)
  8000e8:	c602                	sw	zero,12(sp)
  8000ea:	1fc000ef          	jal	ra,8002e6 <vprintfmt>
  8000ee:	60e2                	ld	ra,24(sp)
  8000f0:	4532                	lw	a0,12(sp)
  8000f2:	6105                	addi	sp,sp,32
  8000f4:	8082                	ret

00000000008000f6 <cprintf>:
  8000f6:	711d                	addi	sp,sp,-96
  8000f8:	02810313          	addi	t1,sp,40
  8000fc:	8e2a                	mv	t3,a0
  8000fe:	f42e                	sd	a1,40(sp)
  800100:	75dd                	lui	a1,0xffff7
  800102:	f832                	sd	a2,48(sp)
  800104:	fc36                	sd	a3,56(sp)
  800106:	e0ba                	sd	a4,64(sp)
  800108:	00000517          	auipc	a0,0x0
  80010c:	fae50513          	addi	a0,a0,-82 # 8000b6 <cputch>
  800110:	0050                	addi	a2,sp,4
  800112:	871a                	mv	a4,t1
  800114:	86f2                	mv	a3,t3
  800116:	ad958593          	addi	a1,a1,-1319 # ffffffffffff6ad9 <error_string+0xffffffffff7f5f79>
  80011a:	ec06                	sd	ra,24(sp)
  80011c:	e4be                	sd	a5,72(sp)
  80011e:	e8c2                	sd	a6,80(sp)
  800120:	ecc6                	sd	a7,88(sp)
  800122:	e41a                	sd	t1,8(sp)
  800124:	c202                	sw	zero,4(sp)
  800126:	1c0000ef          	jal	ra,8002e6 <vprintfmt>
  80012a:	60e2                	ld	ra,24(sp)
  80012c:	4512                	lw	a0,4(sp)
  80012e:	6125                	addi	sp,sp,96
  800130:	8082                	ret

0000000000800132 <syscall>:
  800132:	7175                	addi	sp,sp,-144
  800134:	f8ba                	sd	a4,112(sp)
  800136:	e0ba                	sd	a4,64(sp)
  800138:	0118                	addi	a4,sp,128
  80013a:	e42a                	sd	a0,8(sp)
  80013c:	ecae                	sd	a1,88(sp)
  80013e:	f0b2                	sd	a2,96(sp)
  800140:	f4b6                	sd	a3,104(sp)
  800142:	fcbe                	sd	a5,120(sp)
  800144:	e142                	sd	a6,128(sp)
  800146:	e546                	sd	a7,136(sp)
  800148:	f42e                	sd	a1,40(sp)
  80014a:	f832                	sd	a2,48(sp)
  80014c:	fc36                	sd	a3,56(sp)
  80014e:	f03a                	sd	a4,32(sp)
  800150:	e4be                	sd	a5,72(sp)
  800152:	4522                	lw	a0,8(sp)
  800154:	55a2                	lw	a1,40(sp)
  800156:	5642                	lw	a2,48(sp)
  800158:	56e2                	lw	a3,56(sp)
  80015a:	4706                	lw	a4,64(sp)
  80015c:	47a6                	lw	a5,72(sp)
  80015e:	00000073          	ecall
  800162:	ce2a                	sw	a0,28(sp)
  800164:	4572                	lw	a0,28(sp)
  800166:	6149                	addi	sp,sp,144
  800168:	8082                	ret

000000000080016a <sys_exit>:
  80016a:	85aa                	mv	a1,a0
  80016c:	4505                	li	a0,1
  80016e:	b7d1                	j	800132 <syscall>

0000000000800170 <sys_fork>:
  800170:	4509                	li	a0,2
  800172:	b7c1                	j	800132 <syscall>

0000000000800174 <sys_wait>:
  800174:	862e                	mv	a2,a1
  800176:	85aa                	mv	a1,a0
  800178:	450d                	li	a0,3
  80017a:	bf65                	j	800132 <syscall>

000000000080017c <sys_putc>:
  80017c:	85aa                	mv	a1,a0
  80017e:	4579                	li	a0,30
  800180:	bf4d                	j	800132 <syscall>

0000000000800182 <sys_open>:
  800182:	862e                	mv	a2,a1
  800184:	85aa                	mv	a1,a0
  800186:	06400513          	li	a0,100
  80018a:	b765                	j	800132 <syscall>

000000000080018c <sys_close>:
  80018c:	85aa                	mv	a1,a0
  80018e:	06500513          	li	a0,101
  800192:	b745                	j	800132 <syscall>

0000000000800194 <sys_dup>:
  800194:	862e                	mv	a2,a1
  800196:	85aa                	mv	a1,a0
  800198:	08200513          	li	a0,130
  80019c:	bf59                	j	800132 <syscall>

000000000080019e <exit>:
  80019e:	1141                	addi	sp,sp,-16
  8001a0:	e406                	sd	ra,8(sp)
  8001a2:	fc9ff0ef          	jal	ra,80016a <sys_exit>
  8001a6:	00000517          	auipc	a0,0x0
  8001aa:	5d250513          	addi	a0,a0,1490 # 800778 <main+0xd8>
  8001ae:	f49ff0ef          	jal	ra,8000f6 <cprintf>
  8001b2:	a001                	j	8001b2 <exit+0x14>

00000000008001b4 <fork>:
  8001b4:	bf75                	j	800170 <sys_fork>

00000000008001b6 <waitpid>:
  8001b6:	bf7d                	j	800174 <sys_wait>

00000000008001b8 <initfd>:
  8001b8:	1101                	addi	sp,sp,-32
  8001ba:	87ae                	mv	a5,a1
  8001bc:	e426                	sd	s1,8(sp)
  8001be:	85b2                	mv	a1,a2
  8001c0:	84aa                	mv	s1,a0
  8001c2:	853e                	mv	a0,a5
  8001c4:	e822                	sd	s0,16(sp)
  8001c6:	ec06                	sd	ra,24(sp)
  8001c8:	e59ff0ef          	jal	ra,800020 <open>
  8001cc:	842a                	mv	s0,a0
  8001ce:	00054463          	bltz	a0,8001d6 <initfd+0x1e>
  8001d2:	00951863          	bne	a0,s1,8001e2 <initfd+0x2a>
  8001d6:	60e2                	ld	ra,24(sp)
  8001d8:	8522                	mv	a0,s0
  8001da:	6442                	ld	s0,16(sp)
  8001dc:	64a2                	ld	s1,8(sp)
  8001de:	6105                	addi	sp,sp,32
  8001e0:	8082                	ret
  8001e2:	8526                	mv	a0,s1
  8001e4:	e43ff0ef          	jal	ra,800026 <close>
  8001e8:	85a6                	mv	a1,s1
  8001ea:	8522                	mv	a0,s0
  8001ec:	e3dff0ef          	jal	ra,800028 <dup2>
  8001f0:	84aa                	mv	s1,a0
  8001f2:	8522                	mv	a0,s0
  8001f4:	e33ff0ef          	jal	ra,800026 <close>
  8001f8:	8426                	mv	s0,s1
  8001fa:	bff1                	j	8001d6 <initfd+0x1e>

00000000008001fc <umain>:
  8001fc:	1101                	addi	sp,sp,-32
  8001fe:	e822                	sd	s0,16(sp)
  800200:	e426                	sd	s1,8(sp)
  800202:	842a                	mv	s0,a0
  800204:	84ae                	mv	s1,a1
  800206:	4601                	li	a2,0
  800208:	00000597          	auipc	a1,0x0
  80020c:	58858593          	addi	a1,a1,1416 # 800790 <main+0xf0>
  800210:	4501                	li	a0,0
  800212:	ec06                	sd	ra,24(sp)
  800214:	fa5ff0ef          	jal	ra,8001b8 <initfd>
  800218:	02054263          	bltz	a0,80023c <umain+0x40>
  80021c:	4605                	li	a2,1
  80021e:	00000597          	auipc	a1,0x0
  800222:	5b258593          	addi	a1,a1,1458 # 8007d0 <main+0x130>
  800226:	4505                	li	a0,1
  800228:	f91ff0ef          	jal	ra,8001b8 <initfd>
  80022c:	02054563          	bltz	a0,800256 <umain+0x5a>
  800230:	85a6                	mv	a1,s1
  800232:	8522                	mv	a0,s0
  800234:	46c000ef          	jal	ra,8006a0 <main>
  800238:	f67ff0ef          	jal	ra,80019e <exit>
  80023c:	86aa                	mv	a3,a0
  80023e:	00000617          	auipc	a2,0x0
  800242:	55a60613          	addi	a2,a2,1370 # 800798 <main+0xf8>
  800246:	45e9                	li	a1,26
  800248:	00000517          	auipc	a0,0x0
  80024c:	57050513          	addi	a0,a0,1392 # 8007b8 <main+0x118>
  800250:	e23ff0ef          	jal	ra,800072 <__warn>
  800254:	b7e1                	j	80021c <umain+0x20>
  800256:	86aa                	mv	a3,a0
  800258:	00000617          	auipc	a2,0x0
  80025c:	58060613          	addi	a2,a2,1408 # 8007d8 <main+0x138>
  800260:	45f5                	li	a1,29
  800262:	00000517          	auipc	a0,0x0
  800266:	55650513          	addi	a0,a0,1366 # 8007b8 <main+0x118>
  80026a:	e09ff0ef          	jal	ra,800072 <__warn>
  80026e:	b7c9                	j	800230 <umain+0x34>

0000000000800270 <printnum>:
  800270:	02071893          	slli	a7,a4,0x20
  800274:	7139                	addi	sp,sp,-64
  800276:	0208d893          	srli	a7,a7,0x20
  80027a:	e456                	sd	s5,8(sp)
  80027c:	0316fab3          	remu	s5,a3,a7
  800280:	f822                	sd	s0,48(sp)
  800282:	f426                	sd	s1,40(sp)
  800284:	f04a                	sd	s2,32(sp)
  800286:	ec4e                	sd	s3,24(sp)
  800288:	fc06                	sd	ra,56(sp)
  80028a:	e852                	sd	s4,16(sp)
  80028c:	84aa                	mv	s1,a0
  80028e:	89ae                	mv	s3,a1
  800290:	8932                	mv	s2,a2
  800292:	fff7841b          	addiw	s0,a5,-1
  800296:	2a81                	sext.w	s5,s5
  800298:	0516f163          	bgeu	a3,a7,8002da <printnum+0x6a>
  80029c:	8a42                	mv	s4,a6
  80029e:	00805863          	blez	s0,8002ae <printnum+0x3e>
  8002a2:	347d                	addiw	s0,s0,-1
  8002a4:	864e                	mv	a2,s3
  8002a6:	85ca                	mv	a1,s2
  8002a8:	8552                	mv	a0,s4
  8002aa:	9482                	jalr	s1
  8002ac:	f87d                	bnez	s0,8002a2 <printnum+0x32>
  8002ae:	1a82                	slli	s5,s5,0x20
  8002b0:	00000797          	auipc	a5,0x0
  8002b4:	54878793          	addi	a5,a5,1352 # 8007f8 <main+0x158>
  8002b8:	020ada93          	srli	s5,s5,0x20
  8002bc:	9abe                	add	s5,s5,a5
  8002be:	7442                	ld	s0,48(sp)
  8002c0:	000ac503          	lbu	a0,0(s5)
  8002c4:	70e2                	ld	ra,56(sp)
  8002c6:	6a42                	ld	s4,16(sp)
  8002c8:	6aa2                	ld	s5,8(sp)
  8002ca:	864e                	mv	a2,s3
  8002cc:	85ca                	mv	a1,s2
  8002ce:	69e2                	ld	s3,24(sp)
  8002d0:	7902                	ld	s2,32(sp)
  8002d2:	87a6                	mv	a5,s1
  8002d4:	74a2                	ld	s1,40(sp)
  8002d6:	6121                	addi	sp,sp,64
  8002d8:	8782                	jr	a5
  8002da:	0316d6b3          	divu	a3,a3,a7
  8002de:	87a2                	mv	a5,s0
  8002e0:	f91ff0ef          	jal	ra,800270 <printnum>
  8002e4:	b7e9                	j	8002ae <printnum+0x3e>

00000000008002e6 <vprintfmt>:
  8002e6:	7119                	addi	sp,sp,-128
  8002e8:	f4a6                	sd	s1,104(sp)
  8002ea:	f0ca                	sd	s2,96(sp)
  8002ec:	ecce                	sd	s3,88(sp)
  8002ee:	e8d2                	sd	s4,80(sp)
  8002f0:	e4d6                	sd	s5,72(sp)
  8002f2:	e0da                	sd	s6,64(sp)
  8002f4:	fc5e                	sd	s7,56(sp)
  8002f6:	ec6e                	sd	s11,24(sp)
  8002f8:	fc86                	sd	ra,120(sp)
  8002fa:	f8a2                	sd	s0,112(sp)
  8002fc:	f862                	sd	s8,48(sp)
  8002fe:	f466                	sd	s9,40(sp)
  800300:	f06a                	sd	s10,32(sp)
  800302:	89aa                	mv	s3,a0
  800304:	892e                	mv	s2,a1
  800306:	84b2                	mv	s1,a2
  800308:	8db6                	mv	s11,a3
  80030a:	8aba                	mv	s5,a4
  80030c:	02500a13          	li	s4,37
  800310:	5bfd                	li	s7,-1
  800312:	00000b17          	auipc	s6,0x0
  800316:	51ab0b13          	addi	s6,s6,1306 # 80082c <main+0x18c>
  80031a:	000dc503          	lbu	a0,0(s11)
  80031e:	001d8413          	addi	s0,s11,1
  800322:	01450b63          	beq	a0,s4,800338 <vprintfmt+0x52>
  800326:	c129                	beqz	a0,800368 <vprintfmt+0x82>
  800328:	864a                	mv	a2,s2
  80032a:	85a6                	mv	a1,s1
  80032c:	0405                	addi	s0,s0,1
  80032e:	9982                	jalr	s3
  800330:	fff44503          	lbu	a0,-1(s0)
  800334:	ff4519e3          	bne	a0,s4,800326 <vprintfmt+0x40>
  800338:	00044583          	lbu	a1,0(s0)
  80033c:	02000813          	li	a6,32
  800340:	4d01                	li	s10,0
  800342:	4301                	li	t1,0
  800344:	5cfd                	li	s9,-1
  800346:	5c7d                	li	s8,-1
  800348:	05500513          	li	a0,85
  80034c:	48a5                	li	a7,9
  80034e:	fdd5861b          	addiw	a2,a1,-35
  800352:	0ff67613          	zext.b	a2,a2
  800356:	00140d93          	addi	s11,s0,1
  80035a:	04c56263          	bltu	a0,a2,80039e <vprintfmt+0xb8>
  80035e:	060a                	slli	a2,a2,0x2
  800360:	965a                	add	a2,a2,s6
  800362:	4214                	lw	a3,0(a2)
  800364:	96da                	add	a3,a3,s6
  800366:	8682                	jr	a3
  800368:	70e6                	ld	ra,120(sp)
  80036a:	7446                	ld	s0,112(sp)
  80036c:	74a6                	ld	s1,104(sp)
  80036e:	7906                	ld	s2,96(sp)
  800370:	69e6                	ld	s3,88(sp)
  800372:	6a46                	ld	s4,80(sp)
  800374:	6aa6                	ld	s5,72(sp)
  800376:	6b06                	ld	s6,64(sp)
  800378:	7be2                	ld	s7,56(sp)
  80037a:	7c42                	ld	s8,48(sp)
  80037c:	7ca2                	ld	s9,40(sp)
  80037e:	7d02                	ld	s10,32(sp)
  800380:	6de2                	ld	s11,24(sp)
  800382:	6109                	addi	sp,sp,128
  800384:	8082                	ret
  800386:	882e                	mv	a6,a1
  800388:	00144583          	lbu	a1,1(s0)
  80038c:	846e                	mv	s0,s11
  80038e:	00140d93          	addi	s11,s0,1
  800392:	fdd5861b          	addiw	a2,a1,-35
  800396:	0ff67613          	zext.b	a2,a2
  80039a:	fcc572e3          	bgeu	a0,a2,80035e <vprintfmt+0x78>
  80039e:	864a                	mv	a2,s2
  8003a0:	85a6                	mv	a1,s1
  8003a2:	02500513          	li	a0,37
  8003a6:	9982                	jalr	s3
  8003a8:	fff44783          	lbu	a5,-1(s0)
  8003ac:	8da2                	mv	s11,s0
  8003ae:	f74786e3          	beq	a5,s4,80031a <vprintfmt+0x34>
  8003b2:	ffedc783          	lbu	a5,-2(s11)
  8003b6:	1dfd                	addi	s11,s11,-1
  8003b8:	ff479de3          	bne	a5,s4,8003b2 <vprintfmt+0xcc>
  8003bc:	bfb9                	j	80031a <vprintfmt+0x34>
  8003be:	fd058c9b          	addiw	s9,a1,-48
  8003c2:	00144583          	lbu	a1,1(s0)
  8003c6:	846e                	mv	s0,s11
  8003c8:	fd05869b          	addiw	a3,a1,-48
  8003cc:	0005861b          	sext.w	a2,a1
  8003d0:	02d8e463          	bltu	a7,a3,8003f8 <vprintfmt+0x112>
  8003d4:	00144583          	lbu	a1,1(s0)
  8003d8:	002c969b          	slliw	a3,s9,0x2
  8003dc:	0196873b          	addw	a4,a3,s9
  8003e0:	0017171b          	slliw	a4,a4,0x1
  8003e4:	9f31                	addw	a4,a4,a2
  8003e6:	fd05869b          	addiw	a3,a1,-48
  8003ea:	0405                	addi	s0,s0,1
  8003ec:	fd070c9b          	addiw	s9,a4,-48
  8003f0:	0005861b          	sext.w	a2,a1
  8003f4:	fed8f0e3          	bgeu	a7,a3,8003d4 <vprintfmt+0xee>
  8003f8:	f40c5be3          	bgez	s8,80034e <vprintfmt+0x68>
  8003fc:	8c66                	mv	s8,s9
  8003fe:	5cfd                	li	s9,-1
  800400:	b7b9                	j	80034e <vprintfmt+0x68>
  800402:	fffc4693          	not	a3,s8
  800406:	96fd                	srai	a3,a3,0x3f
  800408:	00dc77b3          	and	a5,s8,a3
  80040c:	00144583          	lbu	a1,1(s0)
  800410:	00078c1b          	sext.w	s8,a5
  800414:	846e                	mv	s0,s11
  800416:	bf25                	j	80034e <vprintfmt+0x68>
  800418:	000aac83          	lw	s9,0(s5)
  80041c:	00144583          	lbu	a1,1(s0)
  800420:	0aa1                	addi	s5,s5,8
  800422:	846e                	mv	s0,s11
  800424:	bfd1                	j	8003f8 <vprintfmt+0x112>
  800426:	4705                	li	a4,1
  800428:	008a8613          	addi	a2,s5,8
  80042c:	00674463          	blt	a4,t1,800434 <vprintfmt+0x14e>
  800430:	1c030c63          	beqz	t1,800608 <vprintfmt+0x322>
  800434:	000ab683          	ld	a3,0(s5)
  800438:	4741                	li	a4,16
  80043a:	8ab2                	mv	s5,a2
  80043c:	2801                	sext.w	a6,a6
  80043e:	87e2                	mv	a5,s8
  800440:	8626                	mv	a2,s1
  800442:	85ca                	mv	a1,s2
  800444:	854e                	mv	a0,s3
  800446:	e2bff0ef          	jal	ra,800270 <printnum>
  80044a:	bdc1                	j	80031a <vprintfmt+0x34>
  80044c:	000aa503          	lw	a0,0(s5)
  800450:	864a                	mv	a2,s2
  800452:	85a6                	mv	a1,s1
  800454:	0aa1                	addi	s5,s5,8
  800456:	9982                	jalr	s3
  800458:	b5c9                	j	80031a <vprintfmt+0x34>
  80045a:	4705                	li	a4,1
  80045c:	008a8613          	addi	a2,s5,8
  800460:	00674463          	blt	a4,t1,800468 <vprintfmt+0x182>
  800464:	18030d63          	beqz	t1,8005fe <vprintfmt+0x318>
  800468:	000ab683          	ld	a3,0(s5)
  80046c:	4729                	li	a4,10
  80046e:	8ab2                	mv	s5,a2
  800470:	b7f1                	j	80043c <vprintfmt+0x156>
  800472:	00144583          	lbu	a1,1(s0)
  800476:	4d05                	li	s10,1
  800478:	846e                	mv	s0,s11
  80047a:	bdd1                	j	80034e <vprintfmt+0x68>
  80047c:	864a                	mv	a2,s2
  80047e:	85a6                	mv	a1,s1
  800480:	02500513          	li	a0,37
  800484:	9982                	jalr	s3
  800486:	bd51                	j	80031a <vprintfmt+0x34>
  800488:	00144583          	lbu	a1,1(s0)
  80048c:	2305                	addiw	t1,t1,1
  80048e:	846e                	mv	s0,s11
  800490:	bd7d                	j	80034e <vprintfmt+0x68>
  800492:	4705                	li	a4,1
  800494:	008a8613          	addi	a2,s5,8
  800498:	00674463          	blt	a4,t1,8004a0 <vprintfmt+0x1ba>
  80049c:	14030c63          	beqz	t1,8005f4 <vprintfmt+0x30e>
  8004a0:	000ab683          	ld	a3,0(s5)
  8004a4:	4721                	li	a4,8
  8004a6:	8ab2                	mv	s5,a2
  8004a8:	bf51                	j	80043c <vprintfmt+0x156>
  8004aa:	03000513          	li	a0,48
  8004ae:	864a                	mv	a2,s2
  8004b0:	85a6                	mv	a1,s1
  8004b2:	e042                	sd	a6,0(sp)
  8004b4:	9982                	jalr	s3
  8004b6:	864a                	mv	a2,s2
  8004b8:	85a6                	mv	a1,s1
  8004ba:	07800513          	li	a0,120
  8004be:	9982                	jalr	s3
  8004c0:	0aa1                	addi	s5,s5,8
  8004c2:	6802                	ld	a6,0(sp)
  8004c4:	4741                	li	a4,16
  8004c6:	ff8ab683          	ld	a3,-8(s5)
  8004ca:	bf8d                	j	80043c <vprintfmt+0x156>
  8004cc:	000ab403          	ld	s0,0(s5)
  8004d0:	008a8793          	addi	a5,s5,8
  8004d4:	e03e                	sd	a5,0(sp)
  8004d6:	14040c63          	beqz	s0,80062e <vprintfmt+0x348>
  8004da:	11805063          	blez	s8,8005da <vprintfmt+0x2f4>
  8004de:	02d00693          	li	a3,45
  8004e2:	0cd81963          	bne	a6,a3,8005b4 <vprintfmt+0x2ce>
  8004e6:	00044683          	lbu	a3,0(s0)
  8004ea:	0006851b          	sext.w	a0,a3
  8004ee:	ce8d                	beqz	a3,800528 <vprintfmt+0x242>
  8004f0:	00140a93          	addi	s5,s0,1
  8004f4:	05e00413          	li	s0,94
  8004f8:	000cc563          	bltz	s9,800502 <vprintfmt+0x21c>
  8004fc:	3cfd                	addiw	s9,s9,-1
  8004fe:	037c8363          	beq	s9,s7,800524 <vprintfmt+0x23e>
  800502:	864a                	mv	a2,s2
  800504:	85a6                	mv	a1,s1
  800506:	100d0663          	beqz	s10,800612 <vprintfmt+0x32c>
  80050a:	3681                	addiw	a3,a3,-32
  80050c:	10d47363          	bgeu	s0,a3,800612 <vprintfmt+0x32c>
  800510:	03f00513          	li	a0,63
  800514:	9982                	jalr	s3
  800516:	000ac683          	lbu	a3,0(s5)
  80051a:	3c7d                	addiw	s8,s8,-1
  80051c:	0a85                	addi	s5,s5,1
  80051e:	0006851b          	sext.w	a0,a3
  800522:	faf9                	bnez	a3,8004f8 <vprintfmt+0x212>
  800524:	01805a63          	blez	s8,800538 <vprintfmt+0x252>
  800528:	3c7d                	addiw	s8,s8,-1
  80052a:	864a                	mv	a2,s2
  80052c:	85a6                	mv	a1,s1
  80052e:	02000513          	li	a0,32
  800532:	9982                	jalr	s3
  800534:	fe0c1ae3          	bnez	s8,800528 <vprintfmt+0x242>
  800538:	6a82                	ld	s5,0(sp)
  80053a:	b3c5                	j	80031a <vprintfmt+0x34>
  80053c:	4705                	li	a4,1
  80053e:	008a8d13          	addi	s10,s5,8
  800542:	00674463          	blt	a4,t1,80054a <vprintfmt+0x264>
  800546:	0a030463          	beqz	t1,8005ee <vprintfmt+0x308>
  80054a:	000ab403          	ld	s0,0(s5)
  80054e:	0c044463          	bltz	s0,800616 <vprintfmt+0x330>
  800552:	86a2                	mv	a3,s0
  800554:	8aea                	mv	s5,s10
  800556:	4729                	li	a4,10
  800558:	b5d5                	j	80043c <vprintfmt+0x156>
  80055a:	000aa783          	lw	a5,0(s5)
  80055e:	46e1                	li	a3,24
  800560:	0aa1                	addi	s5,s5,8
  800562:	41f7d71b          	sraiw	a4,a5,0x1f
  800566:	8fb9                	xor	a5,a5,a4
  800568:	40e7873b          	subw	a4,a5,a4
  80056c:	02e6c663          	blt	a3,a4,800598 <vprintfmt+0x2b2>
  800570:	00371793          	slli	a5,a4,0x3
  800574:	00000697          	auipc	a3,0x0
  800578:	5ec68693          	addi	a3,a3,1516 # 800b60 <error_string>
  80057c:	97b6                	add	a5,a5,a3
  80057e:	639c                	ld	a5,0(a5)
  800580:	cf81                	beqz	a5,800598 <vprintfmt+0x2b2>
  800582:	873e                	mv	a4,a5
  800584:	00000697          	auipc	a3,0x0
  800588:	2a468693          	addi	a3,a3,676 # 800828 <main+0x188>
  80058c:	8626                	mv	a2,s1
  80058e:	85ca                	mv	a1,s2
  800590:	854e                	mv	a0,s3
  800592:	0d4000ef          	jal	ra,800666 <printfmt>
  800596:	b351                	j	80031a <vprintfmt+0x34>
  800598:	00000697          	auipc	a3,0x0
  80059c:	28068693          	addi	a3,a3,640 # 800818 <main+0x178>
  8005a0:	8626                	mv	a2,s1
  8005a2:	85ca                	mv	a1,s2
  8005a4:	854e                	mv	a0,s3
  8005a6:	0c0000ef          	jal	ra,800666 <printfmt>
  8005aa:	bb85                	j	80031a <vprintfmt+0x34>
  8005ac:	00000417          	auipc	s0,0x0
  8005b0:	26440413          	addi	s0,s0,612 # 800810 <main+0x170>
  8005b4:	85e6                	mv	a1,s9
  8005b6:	8522                	mv	a0,s0
  8005b8:	e442                	sd	a6,8(sp)
  8005ba:	0ca000ef          	jal	ra,800684 <strnlen>
  8005be:	40ac0c3b          	subw	s8,s8,a0
  8005c2:	01805c63          	blez	s8,8005da <vprintfmt+0x2f4>
  8005c6:	6822                	ld	a6,8(sp)
  8005c8:	00080a9b          	sext.w	s5,a6
  8005cc:	3c7d                	addiw	s8,s8,-1
  8005ce:	864a                	mv	a2,s2
  8005d0:	85a6                	mv	a1,s1
  8005d2:	8556                	mv	a0,s5
  8005d4:	9982                	jalr	s3
  8005d6:	fe0c1be3          	bnez	s8,8005cc <vprintfmt+0x2e6>
  8005da:	00044683          	lbu	a3,0(s0)
  8005de:	00140a93          	addi	s5,s0,1
  8005e2:	0006851b          	sext.w	a0,a3
  8005e6:	daa9                	beqz	a3,800538 <vprintfmt+0x252>
  8005e8:	05e00413          	li	s0,94
  8005ec:	b731                	j	8004f8 <vprintfmt+0x212>
  8005ee:	000aa403          	lw	s0,0(s5)
  8005f2:	bfb1                	j	80054e <vprintfmt+0x268>
  8005f4:	000ae683          	lwu	a3,0(s5)
  8005f8:	4721                	li	a4,8
  8005fa:	8ab2                	mv	s5,a2
  8005fc:	b581                	j	80043c <vprintfmt+0x156>
  8005fe:	000ae683          	lwu	a3,0(s5)
  800602:	4729                	li	a4,10
  800604:	8ab2                	mv	s5,a2
  800606:	bd1d                	j	80043c <vprintfmt+0x156>
  800608:	000ae683          	lwu	a3,0(s5)
  80060c:	4741                	li	a4,16
  80060e:	8ab2                	mv	s5,a2
  800610:	b535                	j	80043c <vprintfmt+0x156>
  800612:	9982                	jalr	s3
  800614:	b709                	j	800516 <vprintfmt+0x230>
  800616:	864a                	mv	a2,s2
  800618:	85a6                	mv	a1,s1
  80061a:	02d00513          	li	a0,45
  80061e:	e042                	sd	a6,0(sp)
  800620:	9982                	jalr	s3
  800622:	6802                	ld	a6,0(sp)
  800624:	8aea                	mv	s5,s10
  800626:	408006b3          	neg	a3,s0
  80062a:	4729                	li	a4,10
  80062c:	bd01                	j	80043c <vprintfmt+0x156>
  80062e:	03805163          	blez	s8,800650 <vprintfmt+0x36a>
  800632:	02d00693          	li	a3,45
  800636:	f6d81be3          	bne	a6,a3,8005ac <vprintfmt+0x2c6>
  80063a:	00000417          	auipc	s0,0x0
  80063e:	1d640413          	addi	s0,s0,470 # 800810 <main+0x170>
  800642:	02800693          	li	a3,40
  800646:	02800513          	li	a0,40
  80064a:	00140a93          	addi	s5,s0,1
  80064e:	b55d                	j	8004f4 <vprintfmt+0x20e>
  800650:	00000a97          	auipc	s5,0x0
  800654:	1c1a8a93          	addi	s5,s5,449 # 800811 <main+0x171>
  800658:	02800513          	li	a0,40
  80065c:	02800693          	li	a3,40
  800660:	05e00413          	li	s0,94
  800664:	bd51                	j	8004f8 <vprintfmt+0x212>

0000000000800666 <printfmt>:
  800666:	7139                	addi	sp,sp,-64
  800668:	02010313          	addi	t1,sp,32
  80066c:	f03a                	sd	a4,32(sp)
  80066e:	871a                	mv	a4,t1
  800670:	ec06                	sd	ra,24(sp)
  800672:	f43e                	sd	a5,40(sp)
  800674:	f842                	sd	a6,48(sp)
  800676:	fc46                	sd	a7,56(sp)
  800678:	e41a                	sd	t1,8(sp)
  80067a:	c6dff0ef          	jal	ra,8002e6 <vprintfmt>
  80067e:	60e2                	ld	ra,24(sp)
  800680:	6121                	addi	sp,sp,64
  800682:	8082                	ret

0000000000800684 <strnlen>:
  800684:	4781                	li	a5,0
  800686:	e589                	bnez	a1,800690 <strnlen+0xc>
  800688:	a811                	j	80069c <strnlen+0x18>
  80068a:	0785                	addi	a5,a5,1
  80068c:	00f58863          	beq	a1,a5,80069c <strnlen+0x18>
  800690:	00f50733          	add	a4,a0,a5
  800694:	00074703          	lbu	a4,0(a4)
  800698:	fb6d                	bnez	a4,80068a <strnlen+0x6>
  80069a:	85be                	mv	a1,a5
  80069c:	852e                	mv	a0,a1
  80069e:	8082                	ret

00000000008006a0 <main>:
  8006a0:	1101                	addi	sp,sp,-32
  8006a2:	ec06                	sd	ra,24(sp)
  8006a4:	b11ff0ef          	jal	ra,8001b4 <fork>
  8006a8:	86aa                	mv	a3,a0
  8006aa:	02054663          	bltz	a0,8006d6 <main+0x36>
  8006ae:	c535                	beqz	a0,80071a <main+0x7a>
  8006b0:	006c                	addi	a1,sp,12
  8006b2:	c602                	sw	zero,12(sp)
  8006b4:	b03ff0ef          	jal	ra,8001b6 <waitpid>
  8006b8:	e529                	bnez	a0,800702 <main+0x62>
  8006ba:	46b2                	lw	a3,12(sp)
  8006bc:	57dd                	li	a5,-9
  8006be:	02f69763          	bne	a3,a5,8006ec <main+0x4c>
  8006c2:	00000517          	auipc	a0,0x0
  8006c6:	5be50513          	addi	a0,a0,1470 # 800c80 <error_string+0x120>
  8006ca:	a2dff0ef          	jal	ra,8000f6 <cprintf>
  8006ce:	60e2                	ld	ra,24(sp)
  8006d0:	4501                	li	a0,0
  8006d2:	6105                	addi	sp,sp,32
  8006d4:	8082                	ret
  8006d6:	00000617          	auipc	a2,0x0
  8006da:	55260613          	addi	a2,a2,1362 # 800c28 <error_string+0xc8>
  8006de:	45b5                	li	a1,13
  8006e0:	00000517          	auipc	a0,0x0
  8006e4:	56050513          	addi	a0,a0,1376 # 800c40 <error_string+0xe0>
  8006e8:	949ff0ef          	jal	ra,800030 <__panic>
  8006ec:	00000617          	auipc	a2,0x0
  8006f0:	5ac60613          	addi	a2,a2,1452 # 800c98 <error_string+0x138>
  8006f4:	45f5                	li	a1,29
  8006f6:	00000517          	auipc	a0,0x0
  8006fa:	54a50513          	addi	a0,a0,1354 # 800c40 <error_string+0xe0>
  8006fe:	933ff0ef          	jal	ra,800030 <__panic>
  800702:	86aa                	mv	a3,a0
  800704:	00000617          	auipc	a2,0x0
  800708:	56460613          	addi	a2,a2,1380 # 800c68 <error_string+0x108>
  80070c:	45dd                	li	a1,23
  80070e:	00000517          	auipc	a0,0x0
  800712:	53250513          	addi	a0,a0,1330 # 800c40 <error_string+0xe0>
  800716:	91bff0ef          	jal	ra,800030 <__panic>
  80071a:	9502                	jalr	a0
  80071c:	00000617          	auipc	a2,0x0
  800720:	53c60613          	addi	a2,a2,1340 # 800c58 <error_string+0xf8>
  800724:	45c9                	li	a1,18
  800726:	00000517          	auipc	a0,0x0
  80072a:	51a50513          	addi	a0,a0,1306 # 800c40 <error_string+0xe0>
  80072e:	903ff0ef          	jal	ra,800030 <__panic>

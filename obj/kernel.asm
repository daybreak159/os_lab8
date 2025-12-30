
bin/kernel:     file format elf64-littleriscv


Disassembly of section .text:

ffffffffc0200000 <kern_entry>:
ffffffffc0200000:	00014297          	auipc	t0,0x14
ffffffffc0200004:	00028293          	mv	t0,t0
ffffffffc0200008:	00a2b023          	sd	a0,0(t0) # ffffffffc0214000 <boot_hartid>
ffffffffc020000c:	00014297          	auipc	t0,0x14
ffffffffc0200010:	ffc28293          	addi	t0,t0,-4 # ffffffffc0214008 <boot_dtb>
ffffffffc0200014:	00b2b023          	sd	a1,0(t0)
ffffffffc0200018:	c02132b7          	lui	t0,0xc0213
ffffffffc020001c:	ffd0031b          	addiw	t1,zero,-3
ffffffffc0200020:	037a                	slli	t1,t1,0x1e
ffffffffc0200022:	406282b3          	sub	t0,t0,t1
ffffffffc0200026:	00c2d293          	srli	t0,t0,0xc
ffffffffc020002a:	fff0031b          	addiw	t1,zero,-1
ffffffffc020002e:	137e                	slli	t1,t1,0x3f
ffffffffc0200030:	0062e2b3          	or	t0,t0,t1
ffffffffc0200034:	18029073          	csrw	satp,t0
ffffffffc0200038:	12000073          	sfence.vma
ffffffffc020003c:	c0213137          	lui	sp,0xc0213
ffffffffc0200040:	c02002b7          	lui	t0,0xc0200
ffffffffc0200044:	04a28293          	addi	t0,t0,74 # ffffffffc020004a <kern_init>
ffffffffc0200048:	8282                	jr	t0

ffffffffc020004a <kern_init>:
ffffffffc020004a:	00091517          	auipc	a0,0x91
ffffffffc020004e:	01650513          	addi	a0,a0,22 # ffffffffc0291060 <buf>
ffffffffc0200052:	00097617          	auipc	a2,0x97
ffffffffc0200056:	8be60613          	addi	a2,a2,-1858 # ffffffffc0296910 <end>
ffffffffc020005a:	1141                	addi	sp,sp,-16
ffffffffc020005c:	8e09                	sub	a2,a2,a0
ffffffffc020005e:	4581                	li	a1,0
ffffffffc0200060:	e406                	sd	ra,8(sp)
ffffffffc0200062:	5cc0b0ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc0200066:	52c000ef          	jal	ra,ffffffffc0200592 <cons_init>
ffffffffc020006a:	0000b597          	auipc	a1,0xb
ffffffffc020006e:	62e58593          	addi	a1,a1,1582 # ffffffffc020b698 <etext>
ffffffffc0200072:	0000b517          	auipc	a0,0xb
ffffffffc0200076:	64650513          	addi	a0,a0,1606 # ffffffffc020b6b8 <etext+0x20>
ffffffffc020007a:	12c000ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020007e:	1ae000ef          	jal	ra,ffffffffc020022c <print_kerninfo>
ffffffffc0200082:	62a000ef          	jal	ra,ffffffffc02006ac <dtb_init>
ffffffffc0200086:	367020ef          	jal	ra,ffffffffc0202bec <pmm_init>
ffffffffc020008a:	3ef000ef          	jal	ra,ffffffffc0200c78 <pic_init>
ffffffffc020008e:	515000ef          	jal	ra,ffffffffc0200da2 <idt_init>
ffffffffc0200092:	7ff030ef          	jal	ra,ffffffffc0204090 <vmm_init>
ffffffffc0200096:	2c2070ef          	jal	ra,ffffffffc0207358 <sched_init>
ffffffffc020009a:	6c9060ef          	jal	ra,ffffffffc0206f62 <proc_init>
ffffffffc020009e:	1bf000ef          	jal	ra,ffffffffc0200a5c <ide_init>
ffffffffc02000a2:	230050ef          	jal	ra,ffffffffc02052d2 <fs_init>
ffffffffc02000a6:	4a4000ef          	jal	ra,ffffffffc020054a <clock_init>
ffffffffc02000aa:	3c3000ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02000ae:	080070ef          	jal	ra,ffffffffc020712e <cpu_idle>

ffffffffc02000b2 <readline>:
ffffffffc02000b2:	715d                	addi	sp,sp,-80
ffffffffc02000b4:	e486                	sd	ra,72(sp)
ffffffffc02000b6:	e0a6                	sd	s1,64(sp)
ffffffffc02000b8:	fc4a                	sd	s2,56(sp)
ffffffffc02000ba:	f84e                	sd	s3,48(sp)
ffffffffc02000bc:	f452                	sd	s4,40(sp)
ffffffffc02000be:	f056                	sd	s5,32(sp)
ffffffffc02000c0:	ec5a                	sd	s6,24(sp)
ffffffffc02000c2:	e85e                	sd	s7,16(sp)
ffffffffc02000c4:	c901                	beqz	a0,ffffffffc02000d4 <readline+0x22>
ffffffffc02000c6:	85aa                	mv	a1,a0
ffffffffc02000c8:	0000b517          	auipc	a0,0xb
ffffffffc02000cc:	5f850513          	addi	a0,a0,1528 # ffffffffc020b6c0 <etext+0x28>
ffffffffc02000d0:	0d6000ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02000d4:	4481                	li	s1,0
ffffffffc02000d6:	497d                	li	s2,31
ffffffffc02000d8:	49a1                	li	s3,8
ffffffffc02000da:	4aa9                	li	s5,10
ffffffffc02000dc:	4b35                	li	s6,13
ffffffffc02000de:	00091b97          	auipc	s7,0x91
ffffffffc02000e2:	f82b8b93          	addi	s7,s7,-126 # ffffffffc0291060 <buf>
ffffffffc02000e6:	3fe00a13          	li	s4,1022
ffffffffc02000ea:	0fa000ef          	jal	ra,ffffffffc02001e4 <getchar>
ffffffffc02000ee:	00054a63          	bltz	a0,ffffffffc0200102 <readline+0x50>
ffffffffc02000f2:	00a95a63          	bge	s2,a0,ffffffffc0200106 <readline+0x54>
ffffffffc02000f6:	029a5263          	bge	s4,s1,ffffffffc020011a <readline+0x68>
ffffffffc02000fa:	0ea000ef          	jal	ra,ffffffffc02001e4 <getchar>
ffffffffc02000fe:	fe055ae3          	bgez	a0,ffffffffc02000f2 <readline+0x40>
ffffffffc0200102:	4501                	li	a0,0
ffffffffc0200104:	a091                	j	ffffffffc0200148 <readline+0x96>
ffffffffc0200106:	03351463          	bne	a0,s3,ffffffffc020012e <readline+0x7c>
ffffffffc020010a:	e8a9                	bnez	s1,ffffffffc020015c <readline+0xaa>
ffffffffc020010c:	0d8000ef          	jal	ra,ffffffffc02001e4 <getchar>
ffffffffc0200110:	fe0549e3          	bltz	a0,ffffffffc0200102 <readline+0x50>
ffffffffc0200114:	fea959e3          	bge	s2,a0,ffffffffc0200106 <readline+0x54>
ffffffffc0200118:	4481                	li	s1,0
ffffffffc020011a:	e42a                	sd	a0,8(sp)
ffffffffc020011c:	0c6000ef          	jal	ra,ffffffffc02001e2 <cputchar>
ffffffffc0200120:	6522                	ld	a0,8(sp)
ffffffffc0200122:	009b87b3          	add	a5,s7,s1
ffffffffc0200126:	2485                	addiw	s1,s1,1
ffffffffc0200128:	00a78023          	sb	a0,0(a5)
ffffffffc020012c:	bf7d                	j	ffffffffc02000ea <readline+0x38>
ffffffffc020012e:	01550463          	beq	a0,s5,ffffffffc0200136 <readline+0x84>
ffffffffc0200132:	fb651ce3          	bne	a0,s6,ffffffffc02000ea <readline+0x38>
ffffffffc0200136:	0ac000ef          	jal	ra,ffffffffc02001e2 <cputchar>
ffffffffc020013a:	00091517          	auipc	a0,0x91
ffffffffc020013e:	f2650513          	addi	a0,a0,-218 # ffffffffc0291060 <buf>
ffffffffc0200142:	94aa                	add	s1,s1,a0
ffffffffc0200144:	00048023          	sb	zero,0(s1)
ffffffffc0200148:	60a6                	ld	ra,72(sp)
ffffffffc020014a:	6486                	ld	s1,64(sp)
ffffffffc020014c:	7962                	ld	s2,56(sp)
ffffffffc020014e:	79c2                	ld	s3,48(sp)
ffffffffc0200150:	7a22                	ld	s4,40(sp)
ffffffffc0200152:	7a82                	ld	s5,32(sp)
ffffffffc0200154:	6b62                	ld	s6,24(sp)
ffffffffc0200156:	6bc2                	ld	s7,16(sp)
ffffffffc0200158:	6161                	addi	sp,sp,80
ffffffffc020015a:	8082                	ret
ffffffffc020015c:	4521                	li	a0,8
ffffffffc020015e:	084000ef          	jal	ra,ffffffffc02001e2 <cputchar>
ffffffffc0200162:	34fd                	addiw	s1,s1,-1
ffffffffc0200164:	b759                	j	ffffffffc02000ea <readline+0x38>

ffffffffc0200166 <cputch>:
ffffffffc0200166:	1141                	addi	sp,sp,-16
ffffffffc0200168:	e022                	sd	s0,0(sp)
ffffffffc020016a:	e406                	sd	ra,8(sp)
ffffffffc020016c:	842e                	mv	s0,a1
ffffffffc020016e:	432000ef          	jal	ra,ffffffffc02005a0 <cons_putc>
ffffffffc0200172:	401c                	lw	a5,0(s0)
ffffffffc0200174:	60a2                	ld	ra,8(sp)
ffffffffc0200176:	2785                	addiw	a5,a5,1
ffffffffc0200178:	c01c                	sw	a5,0(s0)
ffffffffc020017a:	6402                	ld	s0,0(sp)
ffffffffc020017c:	0141                	addi	sp,sp,16
ffffffffc020017e:	8082                	ret

ffffffffc0200180 <vcprintf>:
ffffffffc0200180:	1101                	addi	sp,sp,-32
ffffffffc0200182:	872e                	mv	a4,a1
ffffffffc0200184:	75dd                	lui	a1,0xffff7
ffffffffc0200186:	86aa                	mv	a3,a0
ffffffffc0200188:	0070                	addi	a2,sp,12
ffffffffc020018a:	00000517          	auipc	a0,0x0
ffffffffc020018e:	fdc50513          	addi	a0,a0,-36 # ffffffffc0200166 <cputch>
ffffffffc0200192:	ad958593          	addi	a1,a1,-1319 # ffffffffffff6ad9 <end+0x3fd601c9>
ffffffffc0200196:	ec06                	sd	ra,24(sp)
ffffffffc0200198:	c602                	sw	zero,12(sp)
ffffffffc020019a:	0060b0ef          	jal	ra,ffffffffc020b1a0 <vprintfmt>
ffffffffc020019e:	60e2                	ld	ra,24(sp)
ffffffffc02001a0:	4532                	lw	a0,12(sp)
ffffffffc02001a2:	6105                	addi	sp,sp,32
ffffffffc02001a4:	8082                	ret

ffffffffc02001a6 <cprintf>:
ffffffffc02001a6:	711d                	addi	sp,sp,-96
ffffffffc02001a8:	02810313          	addi	t1,sp,40 # ffffffffc0213028 <boot_page_table_sv39+0x28>
ffffffffc02001ac:	8e2a                	mv	t3,a0
ffffffffc02001ae:	f42e                	sd	a1,40(sp)
ffffffffc02001b0:	75dd                	lui	a1,0xffff7
ffffffffc02001b2:	f832                	sd	a2,48(sp)
ffffffffc02001b4:	fc36                	sd	a3,56(sp)
ffffffffc02001b6:	e0ba                	sd	a4,64(sp)
ffffffffc02001b8:	00000517          	auipc	a0,0x0
ffffffffc02001bc:	fae50513          	addi	a0,a0,-82 # ffffffffc0200166 <cputch>
ffffffffc02001c0:	0050                	addi	a2,sp,4
ffffffffc02001c2:	871a                	mv	a4,t1
ffffffffc02001c4:	86f2                	mv	a3,t3
ffffffffc02001c6:	ad958593          	addi	a1,a1,-1319 # ffffffffffff6ad9 <end+0x3fd601c9>
ffffffffc02001ca:	ec06                	sd	ra,24(sp)
ffffffffc02001cc:	e4be                	sd	a5,72(sp)
ffffffffc02001ce:	e8c2                	sd	a6,80(sp)
ffffffffc02001d0:	ecc6                	sd	a7,88(sp)
ffffffffc02001d2:	e41a                	sd	t1,8(sp)
ffffffffc02001d4:	c202                	sw	zero,4(sp)
ffffffffc02001d6:	7cb0a0ef          	jal	ra,ffffffffc020b1a0 <vprintfmt>
ffffffffc02001da:	60e2                	ld	ra,24(sp)
ffffffffc02001dc:	4512                	lw	a0,4(sp)
ffffffffc02001de:	6125                	addi	sp,sp,96
ffffffffc02001e0:	8082                	ret

ffffffffc02001e2 <cputchar>:
ffffffffc02001e2:	ae7d                	j	ffffffffc02005a0 <cons_putc>

ffffffffc02001e4 <getchar>:
ffffffffc02001e4:	1141                	addi	sp,sp,-16
ffffffffc02001e6:	e406                	sd	ra,8(sp)
ffffffffc02001e8:	40c000ef          	jal	ra,ffffffffc02005f4 <cons_getc>
ffffffffc02001ec:	dd75                	beqz	a0,ffffffffc02001e8 <getchar+0x4>
ffffffffc02001ee:	60a2                	ld	ra,8(sp)
ffffffffc02001f0:	0141                	addi	sp,sp,16
ffffffffc02001f2:	8082                	ret

ffffffffc02001f4 <strdup>:
ffffffffc02001f4:	1101                	addi	sp,sp,-32
ffffffffc02001f6:	ec06                	sd	ra,24(sp)
ffffffffc02001f8:	e822                	sd	s0,16(sp)
ffffffffc02001fa:	e426                	sd	s1,8(sp)
ffffffffc02001fc:	e04a                	sd	s2,0(sp)
ffffffffc02001fe:	892a                	mv	s2,a0
ffffffffc0200200:	38c0b0ef          	jal	ra,ffffffffc020b58c <strlen>
ffffffffc0200204:	842a                	mv	s0,a0
ffffffffc0200206:	0505                	addi	a0,a0,1
ffffffffc0200208:	6a3010ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc020020c:	84aa                	mv	s1,a0
ffffffffc020020e:	c901                	beqz	a0,ffffffffc020021e <strdup+0x2a>
ffffffffc0200210:	8622                	mv	a2,s0
ffffffffc0200212:	85ca                	mv	a1,s2
ffffffffc0200214:	9426                	add	s0,s0,s1
ffffffffc0200216:	46a0b0ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc020021a:	00040023          	sb	zero,0(s0)
ffffffffc020021e:	60e2                	ld	ra,24(sp)
ffffffffc0200220:	6442                	ld	s0,16(sp)
ffffffffc0200222:	6902                	ld	s2,0(sp)
ffffffffc0200224:	8526                	mv	a0,s1
ffffffffc0200226:	64a2                	ld	s1,8(sp)
ffffffffc0200228:	6105                	addi	sp,sp,32
ffffffffc020022a:	8082                	ret

ffffffffc020022c <print_kerninfo>:
ffffffffc020022c:	1141                	addi	sp,sp,-16
ffffffffc020022e:	0000b517          	auipc	a0,0xb
ffffffffc0200232:	49a50513          	addi	a0,a0,1178 # ffffffffc020b6c8 <etext+0x30>
ffffffffc0200236:	e406                	sd	ra,8(sp)
ffffffffc0200238:	f6fff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020023c:	00000597          	auipc	a1,0x0
ffffffffc0200240:	e0e58593          	addi	a1,a1,-498 # ffffffffc020004a <kern_init>
ffffffffc0200244:	0000b517          	auipc	a0,0xb
ffffffffc0200248:	4a450513          	addi	a0,a0,1188 # ffffffffc020b6e8 <etext+0x50>
ffffffffc020024c:	f5bff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200250:	0000b597          	auipc	a1,0xb
ffffffffc0200254:	44858593          	addi	a1,a1,1096 # ffffffffc020b698 <etext>
ffffffffc0200258:	0000b517          	auipc	a0,0xb
ffffffffc020025c:	4b050513          	addi	a0,a0,1200 # ffffffffc020b708 <etext+0x70>
ffffffffc0200260:	f47ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200264:	00091597          	auipc	a1,0x91
ffffffffc0200268:	dfc58593          	addi	a1,a1,-516 # ffffffffc0291060 <buf>
ffffffffc020026c:	0000b517          	auipc	a0,0xb
ffffffffc0200270:	4bc50513          	addi	a0,a0,1212 # ffffffffc020b728 <etext+0x90>
ffffffffc0200274:	f33ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200278:	00096597          	auipc	a1,0x96
ffffffffc020027c:	69858593          	addi	a1,a1,1688 # ffffffffc0296910 <end>
ffffffffc0200280:	0000b517          	auipc	a0,0xb
ffffffffc0200284:	4c850513          	addi	a0,a0,1224 # ffffffffc020b748 <etext+0xb0>
ffffffffc0200288:	f1fff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020028c:	00097597          	auipc	a1,0x97
ffffffffc0200290:	a8358593          	addi	a1,a1,-1405 # ffffffffc0296d0f <end+0x3ff>
ffffffffc0200294:	00000797          	auipc	a5,0x0
ffffffffc0200298:	db678793          	addi	a5,a5,-586 # ffffffffc020004a <kern_init>
ffffffffc020029c:	40f587b3          	sub	a5,a1,a5
ffffffffc02002a0:	43f7d593          	srai	a1,a5,0x3f
ffffffffc02002a4:	60a2                	ld	ra,8(sp)
ffffffffc02002a6:	3ff5f593          	andi	a1,a1,1023
ffffffffc02002aa:	95be                	add	a1,a1,a5
ffffffffc02002ac:	85a9                	srai	a1,a1,0xa
ffffffffc02002ae:	0000b517          	auipc	a0,0xb
ffffffffc02002b2:	4ba50513          	addi	a0,a0,1210 # ffffffffc020b768 <etext+0xd0>
ffffffffc02002b6:	0141                	addi	sp,sp,16
ffffffffc02002b8:	b5fd                	j	ffffffffc02001a6 <cprintf>

ffffffffc02002ba <print_stackframe>:
ffffffffc02002ba:	1141                	addi	sp,sp,-16
ffffffffc02002bc:	0000b617          	auipc	a2,0xb
ffffffffc02002c0:	4dc60613          	addi	a2,a2,1244 # ffffffffc020b798 <etext+0x100>
ffffffffc02002c4:	04e00593          	li	a1,78
ffffffffc02002c8:	0000b517          	auipc	a0,0xb
ffffffffc02002cc:	4e850513          	addi	a0,a0,1256 # ffffffffc020b7b0 <etext+0x118>
ffffffffc02002d0:	e406                	sd	ra,8(sp)
ffffffffc02002d2:	1cc000ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02002d6 <mon_help>:
ffffffffc02002d6:	1141                	addi	sp,sp,-16
ffffffffc02002d8:	0000b617          	auipc	a2,0xb
ffffffffc02002dc:	4f060613          	addi	a2,a2,1264 # ffffffffc020b7c8 <etext+0x130>
ffffffffc02002e0:	0000b597          	auipc	a1,0xb
ffffffffc02002e4:	50858593          	addi	a1,a1,1288 # ffffffffc020b7e8 <etext+0x150>
ffffffffc02002e8:	0000b517          	auipc	a0,0xb
ffffffffc02002ec:	50850513          	addi	a0,a0,1288 # ffffffffc020b7f0 <etext+0x158>
ffffffffc02002f0:	e406                	sd	ra,8(sp)
ffffffffc02002f2:	eb5ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02002f6:	0000b617          	auipc	a2,0xb
ffffffffc02002fa:	50a60613          	addi	a2,a2,1290 # ffffffffc020b800 <etext+0x168>
ffffffffc02002fe:	0000b597          	auipc	a1,0xb
ffffffffc0200302:	52a58593          	addi	a1,a1,1322 # ffffffffc020b828 <etext+0x190>
ffffffffc0200306:	0000b517          	auipc	a0,0xb
ffffffffc020030a:	4ea50513          	addi	a0,a0,1258 # ffffffffc020b7f0 <etext+0x158>
ffffffffc020030e:	e99ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200312:	0000b617          	auipc	a2,0xb
ffffffffc0200316:	52660613          	addi	a2,a2,1318 # ffffffffc020b838 <etext+0x1a0>
ffffffffc020031a:	0000b597          	auipc	a1,0xb
ffffffffc020031e:	53e58593          	addi	a1,a1,1342 # ffffffffc020b858 <etext+0x1c0>
ffffffffc0200322:	0000b517          	auipc	a0,0xb
ffffffffc0200326:	4ce50513          	addi	a0,a0,1230 # ffffffffc020b7f0 <etext+0x158>
ffffffffc020032a:	e7dff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020032e:	60a2                	ld	ra,8(sp)
ffffffffc0200330:	4501                	li	a0,0
ffffffffc0200332:	0141                	addi	sp,sp,16
ffffffffc0200334:	8082                	ret

ffffffffc0200336 <mon_kerninfo>:
ffffffffc0200336:	1141                	addi	sp,sp,-16
ffffffffc0200338:	e406                	sd	ra,8(sp)
ffffffffc020033a:	ef3ff0ef          	jal	ra,ffffffffc020022c <print_kerninfo>
ffffffffc020033e:	60a2                	ld	ra,8(sp)
ffffffffc0200340:	4501                	li	a0,0
ffffffffc0200342:	0141                	addi	sp,sp,16
ffffffffc0200344:	8082                	ret

ffffffffc0200346 <mon_backtrace>:
ffffffffc0200346:	1141                	addi	sp,sp,-16
ffffffffc0200348:	e406                	sd	ra,8(sp)
ffffffffc020034a:	f71ff0ef          	jal	ra,ffffffffc02002ba <print_stackframe>
ffffffffc020034e:	60a2                	ld	ra,8(sp)
ffffffffc0200350:	4501                	li	a0,0
ffffffffc0200352:	0141                	addi	sp,sp,16
ffffffffc0200354:	8082                	ret

ffffffffc0200356 <kmonitor>:
ffffffffc0200356:	7115                	addi	sp,sp,-224
ffffffffc0200358:	ed5e                	sd	s7,152(sp)
ffffffffc020035a:	8baa                	mv	s7,a0
ffffffffc020035c:	0000b517          	auipc	a0,0xb
ffffffffc0200360:	50c50513          	addi	a0,a0,1292 # ffffffffc020b868 <etext+0x1d0>
ffffffffc0200364:	ed86                	sd	ra,216(sp)
ffffffffc0200366:	e9a2                	sd	s0,208(sp)
ffffffffc0200368:	e5a6                	sd	s1,200(sp)
ffffffffc020036a:	e1ca                	sd	s2,192(sp)
ffffffffc020036c:	fd4e                	sd	s3,184(sp)
ffffffffc020036e:	f952                	sd	s4,176(sp)
ffffffffc0200370:	f556                	sd	s5,168(sp)
ffffffffc0200372:	f15a                	sd	s6,160(sp)
ffffffffc0200374:	e962                	sd	s8,144(sp)
ffffffffc0200376:	e566                	sd	s9,136(sp)
ffffffffc0200378:	e16a                	sd	s10,128(sp)
ffffffffc020037a:	e2dff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020037e:	0000b517          	auipc	a0,0xb
ffffffffc0200382:	51250513          	addi	a0,a0,1298 # ffffffffc020b890 <etext+0x1f8>
ffffffffc0200386:	e21ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020038a:	000b8563          	beqz	s7,ffffffffc0200394 <kmonitor+0x3e>
ffffffffc020038e:	855e                	mv	a0,s7
ffffffffc0200390:	3fb000ef          	jal	ra,ffffffffc0200f8a <print_trapframe>
ffffffffc0200394:	0000bc17          	auipc	s8,0xb
ffffffffc0200398:	56cc0c13          	addi	s8,s8,1388 # ffffffffc020b900 <commands>
ffffffffc020039c:	0000b917          	auipc	s2,0xb
ffffffffc02003a0:	51c90913          	addi	s2,s2,1308 # ffffffffc020b8b8 <etext+0x220>
ffffffffc02003a4:	0000b497          	auipc	s1,0xb
ffffffffc02003a8:	51c48493          	addi	s1,s1,1308 # ffffffffc020b8c0 <etext+0x228>
ffffffffc02003ac:	49bd                	li	s3,15
ffffffffc02003ae:	0000bb17          	auipc	s6,0xb
ffffffffc02003b2:	51ab0b13          	addi	s6,s6,1306 # ffffffffc020b8c8 <etext+0x230>
ffffffffc02003b6:	0000ba17          	auipc	s4,0xb
ffffffffc02003ba:	432a0a13          	addi	s4,s4,1074 # ffffffffc020b7e8 <etext+0x150>
ffffffffc02003be:	4a8d                	li	s5,3
ffffffffc02003c0:	854a                	mv	a0,s2
ffffffffc02003c2:	cf1ff0ef          	jal	ra,ffffffffc02000b2 <readline>
ffffffffc02003c6:	842a                	mv	s0,a0
ffffffffc02003c8:	dd65                	beqz	a0,ffffffffc02003c0 <kmonitor+0x6a>
ffffffffc02003ca:	00054583          	lbu	a1,0(a0)
ffffffffc02003ce:	4c81                	li	s9,0
ffffffffc02003d0:	e1bd                	bnez	a1,ffffffffc0200436 <kmonitor+0xe0>
ffffffffc02003d2:	fe0c87e3          	beqz	s9,ffffffffc02003c0 <kmonitor+0x6a>
ffffffffc02003d6:	6582                	ld	a1,0(sp)
ffffffffc02003d8:	0000bd17          	auipc	s10,0xb
ffffffffc02003dc:	528d0d13          	addi	s10,s10,1320 # ffffffffc020b900 <commands>
ffffffffc02003e0:	8552                	mv	a0,s4
ffffffffc02003e2:	4401                	li	s0,0
ffffffffc02003e4:	0d61                	addi	s10,s10,24
ffffffffc02003e6:	1ee0b0ef          	jal	ra,ffffffffc020b5d4 <strcmp>
ffffffffc02003ea:	c919                	beqz	a0,ffffffffc0200400 <kmonitor+0xaa>
ffffffffc02003ec:	2405                	addiw	s0,s0,1
ffffffffc02003ee:	0b540063          	beq	s0,s5,ffffffffc020048e <kmonitor+0x138>
ffffffffc02003f2:	000d3503          	ld	a0,0(s10)
ffffffffc02003f6:	6582                	ld	a1,0(sp)
ffffffffc02003f8:	0d61                	addi	s10,s10,24
ffffffffc02003fa:	1da0b0ef          	jal	ra,ffffffffc020b5d4 <strcmp>
ffffffffc02003fe:	f57d                	bnez	a0,ffffffffc02003ec <kmonitor+0x96>
ffffffffc0200400:	00141793          	slli	a5,s0,0x1
ffffffffc0200404:	97a2                	add	a5,a5,s0
ffffffffc0200406:	078e                	slli	a5,a5,0x3
ffffffffc0200408:	97e2                	add	a5,a5,s8
ffffffffc020040a:	6b9c                	ld	a5,16(a5)
ffffffffc020040c:	865e                	mv	a2,s7
ffffffffc020040e:	002c                	addi	a1,sp,8
ffffffffc0200410:	fffc851b          	addiw	a0,s9,-1
ffffffffc0200414:	9782                	jalr	a5
ffffffffc0200416:	fa0555e3          	bgez	a0,ffffffffc02003c0 <kmonitor+0x6a>
ffffffffc020041a:	60ee                	ld	ra,216(sp)
ffffffffc020041c:	644e                	ld	s0,208(sp)
ffffffffc020041e:	64ae                	ld	s1,200(sp)
ffffffffc0200420:	690e                	ld	s2,192(sp)
ffffffffc0200422:	79ea                	ld	s3,184(sp)
ffffffffc0200424:	7a4a                	ld	s4,176(sp)
ffffffffc0200426:	7aaa                	ld	s5,168(sp)
ffffffffc0200428:	7b0a                	ld	s6,160(sp)
ffffffffc020042a:	6bea                	ld	s7,152(sp)
ffffffffc020042c:	6c4a                	ld	s8,144(sp)
ffffffffc020042e:	6caa                	ld	s9,136(sp)
ffffffffc0200430:	6d0a                	ld	s10,128(sp)
ffffffffc0200432:	612d                	addi	sp,sp,224
ffffffffc0200434:	8082                	ret
ffffffffc0200436:	8526                	mv	a0,s1
ffffffffc0200438:	1e00b0ef          	jal	ra,ffffffffc020b618 <strchr>
ffffffffc020043c:	c901                	beqz	a0,ffffffffc020044c <kmonitor+0xf6>
ffffffffc020043e:	00144583          	lbu	a1,1(s0)
ffffffffc0200442:	00040023          	sb	zero,0(s0)
ffffffffc0200446:	0405                	addi	s0,s0,1
ffffffffc0200448:	d5c9                	beqz	a1,ffffffffc02003d2 <kmonitor+0x7c>
ffffffffc020044a:	b7f5                	j	ffffffffc0200436 <kmonitor+0xe0>
ffffffffc020044c:	00044783          	lbu	a5,0(s0)
ffffffffc0200450:	d3c9                	beqz	a5,ffffffffc02003d2 <kmonitor+0x7c>
ffffffffc0200452:	033c8963          	beq	s9,s3,ffffffffc0200484 <kmonitor+0x12e>
ffffffffc0200456:	003c9793          	slli	a5,s9,0x3
ffffffffc020045a:	0118                	addi	a4,sp,128
ffffffffc020045c:	97ba                	add	a5,a5,a4
ffffffffc020045e:	f887b023          	sd	s0,-128(a5)
ffffffffc0200462:	00044583          	lbu	a1,0(s0)
ffffffffc0200466:	2c85                	addiw	s9,s9,1
ffffffffc0200468:	e591                	bnez	a1,ffffffffc0200474 <kmonitor+0x11e>
ffffffffc020046a:	b7b5                	j	ffffffffc02003d6 <kmonitor+0x80>
ffffffffc020046c:	00144583          	lbu	a1,1(s0)
ffffffffc0200470:	0405                	addi	s0,s0,1
ffffffffc0200472:	d1a5                	beqz	a1,ffffffffc02003d2 <kmonitor+0x7c>
ffffffffc0200474:	8526                	mv	a0,s1
ffffffffc0200476:	1a20b0ef          	jal	ra,ffffffffc020b618 <strchr>
ffffffffc020047a:	d96d                	beqz	a0,ffffffffc020046c <kmonitor+0x116>
ffffffffc020047c:	00044583          	lbu	a1,0(s0)
ffffffffc0200480:	d9a9                	beqz	a1,ffffffffc02003d2 <kmonitor+0x7c>
ffffffffc0200482:	bf55                	j	ffffffffc0200436 <kmonitor+0xe0>
ffffffffc0200484:	45c1                	li	a1,16
ffffffffc0200486:	855a                	mv	a0,s6
ffffffffc0200488:	d1fff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020048c:	b7e9                	j	ffffffffc0200456 <kmonitor+0x100>
ffffffffc020048e:	6582                	ld	a1,0(sp)
ffffffffc0200490:	0000b517          	auipc	a0,0xb
ffffffffc0200494:	45850513          	addi	a0,a0,1112 # ffffffffc020b8e8 <etext+0x250>
ffffffffc0200498:	d0fff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020049c:	b715                	j	ffffffffc02003c0 <kmonitor+0x6a>

ffffffffc020049e <__panic>:
ffffffffc020049e:	00096317          	auipc	t1,0x96
ffffffffc02004a2:	3ca30313          	addi	t1,t1,970 # ffffffffc0296868 <is_panic>
ffffffffc02004a6:	00033e03          	ld	t3,0(t1)
ffffffffc02004aa:	715d                	addi	sp,sp,-80
ffffffffc02004ac:	ec06                	sd	ra,24(sp)
ffffffffc02004ae:	e822                	sd	s0,16(sp)
ffffffffc02004b0:	f436                	sd	a3,40(sp)
ffffffffc02004b2:	f83a                	sd	a4,48(sp)
ffffffffc02004b4:	fc3e                	sd	a5,56(sp)
ffffffffc02004b6:	e0c2                	sd	a6,64(sp)
ffffffffc02004b8:	e4c6                	sd	a7,72(sp)
ffffffffc02004ba:	020e1a63          	bnez	t3,ffffffffc02004ee <__panic+0x50>
ffffffffc02004be:	4785                	li	a5,1
ffffffffc02004c0:	00f33023          	sd	a5,0(t1)
ffffffffc02004c4:	8432                	mv	s0,a2
ffffffffc02004c6:	103c                	addi	a5,sp,40
ffffffffc02004c8:	862e                	mv	a2,a1
ffffffffc02004ca:	85aa                	mv	a1,a0
ffffffffc02004cc:	0000b517          	auipc	a0,0xb
ffffffffc02004d0:	47c50513          	addi	a0,a0,1148 # ffffffffc020b948 <commands+0x48>
ffffffffc02004d4:	e43e                	sd	a5,8(sp)
ffffffffc02004d6:	cd1ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02004da:	65a2                	ld	a1,8(sp)
ffffffffc02004dc:	8522                	mv	a0,s0
ffffffffc02004de:	ca3ff0ef          	jal	ra,ffffffffc0200180 <vcprintf>
ffffffffc02004e2:	0000d517          	auipc	a0,0xd
ffffffffc02004e6:	8de50513          	addi	a0,a0,-1826 # ffffffffc020cdc0 <default_pmm_manager+0x610>
ffffffffc02004ea:	cbdff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02004ee:	4501                	li	a0,0
ffffffffc02004f0:	4581                	li	a1,0
ffffffffc02004f2:	4601                	li	a2,0
ffffffffc02004f4:	48a1                	li	a7,8
ffffffffc02004f6:	00000073          	ecall
ffffffffc02004fa:	778000ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02004fe:	4501                	li	a0,0
ffffffffc0200500:	e57ff0ef          	jal	ra,ffffffffc0200356 <kmonitor>
ffffffffc0200504:	bfed                	j	ffffffffc02004fe <__panic+0x60>

ffffffffc0200506 <__warn>:
ffffffffc0200506:	715d                	addi	sp,sp,-80
ffffffffc0200508:	832e                	mv	t1,a1
ffffffffc020050a:	e822                	sd	s0,16(sp)
ffffffffc020050c:	85aa                	mv	a1,a0
ffffffffc020050e:	8432                	mv	s0,a2
ffffffffc0200510:	fc3e                	sd	a5,56(sp)
ffffffffc0200512:	861a                	mv	a2,t1
ffffffffc0200514:	103c                	addi	a5,sp,40
ffffffffc0200516:	0000b517          	auipc	a0,0xb
ffffffffc020051a:	45250513          	addi	a0,a0,1106 # ffffffffc020b968 <commands+0x68>
ffffffffc020051e:	ec06                	sd	ra,24(sp)
ffffffffc0200520:	f436                	sd	a3,40(sp)
ffffffffc0200522:	f83a                	sd	a4,48(sp)
ffffffffc0200524:	e0c2                	sd	a6,64(sp)
ffffffffc0200526:	e4c6                	sd	a7,72(sp)
ffffffffc0200528:	e43e                	sd	a5,8(sp)
ffffffffc020052a:	c7dff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020052e:	65a2                	ld	a1,8(sp)
ffffffffc0200530:	8522                	mv	a0,s0
ffffffffc0200532:	c4fff0ef          	jal	ra,ffffffffc0200180 <vcprintf>
ffffffffc0200536:	0000d517          	auipc	a0,0xd
ffffffffc020053a:	88a50513          	addi	a0,a0,-1910 # ffffffffc020cdc0 <default_pmm_manager+0x610>
ffffffffc020053e:	c69ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200542:	60e2                	ld	ra,24(sp)
ffffffffc0200544:	6442                	ld	s0,16(sp)
ffffffffc0200546:	6161                	addi	sp,sp,80
ffffffffc0200548:	8082                	ret

ffffffffc020054a <clock_init>:
ffffffffc020054a:	02000793          	li	a5,32
ffffffffc020054e:	1047a7f3          	csrrs	a5,sie,a5
ffffffffc0200552:	c0102573          	rdtime	a0
ffffffffc0200556:	67e1                	lui	a5,0x18
ffffffffc0200558:	6a078793          	addi	a5,a5,1696 # 186a0 <_binary_bin_swap_img_size+0x109a0>
ffffffffc020055c:	953e                	add	a0,a0,a5
ffffffffc020055e:	4581                	li	a1,0
ffffffffc0200560:	4601                	li	a2,0
ffffffffc0200562:	4881                	li	a7,0
ffffffffc0200564:	00000073          	ecall
ffffffffc0200568:	0000b517          	auipc	a0,0xb
ffffffffc020056c:	42050513          	addi	a0,a0,1056 # ffffffffc020b988 <commands+0x88>
ffffffffc0200570:	00096797          	auipc	a5,0x96
ffffffffc0200574:	3007b023          	sd	zero,768(a5) # ffffffffc0296870 <ticks>
ffffffffc0200578:	b13d                	j	ffffffffc02001a6 <cprintf>

ffffffffc020057a <clock_set_next_event>:
ffffffffc020057a:	c0102573          	rdtime	a0
ffffffffc020057e:	67e1                	lui	a5,0x18
ffffffffc0200580:	6a078793          	addi	a5,a5,1696 # 186a0 <_binary_bin_swap_img_size+0x109a0>
ffffffffc0200584:	953e                	add	a0,a0,a5
ffffffffc0200586:	4581                	li	a1,0
ffffffffc0200588:	4601                	li	a2,0
ffffffffc020058a:	4881                	li	a7,0
ffffffffc020058c:	00000073          	ecall
ffffffffc0200590:	8082                	ret

ffffffffc0200592 <cons_init>:
ffffffffc0200592:	4501                	li	a0,0
ffffffffc0200594:	4581                	li	a1,0
ffffffffc0200596:	4601                	li	a2,0
ffffffffc0200598:	4889                	li	a7,2
ffffffffc020059a:	00000073          	ecall
ffffffffc020059e:	8082                	ret

ffffffffc02005a0 <cons_putc>:
ffffffffc02005a0:	1101                	addi	sp,sp,-32
ffffffffc02005a2:	ec06                	sd	ra,24(sp)
ffffffffc02005a4:	100027f3          	csrr	a5,sstatus
ffffffffc02005a8:	8b89                	andi	a5,a5,2
ffffffffc02005aa:	4701                	li	a4,0
ffffffffc02005ac:	ef95                	bnez	a5,ffffffffc02005e8 <cons_putc+0x48>
ffffffffc02005ae:	47a1                	li	a5,8
ffffffffc02005b0:	00f50b63          	beq	a0,a5,ffffffffc02005c6 <cons_putc+0x26>
ffffffffc02005b4:	4581                	li	a1,0
ffffffffc02005b6:	4601                	li	a2,0
ffffffffc02005b8:	4885                	li	a7,1
ffffffffc02005ba:	00000073          	ecall
ffffffffc02005be:	e315                	bnez	a4,ffffffffc02005e2 <cons_putc+0x42>
ffffffffc02005c0:	60e2                	ld	ra,24(sp)
ffffffffc02005c2:	6105                	addi	sp,sp,32
ffffffffc02005c4:	8082                	ret
ffffffffc02005c6:	4521                	li	a0,8
ffffffffc02005c8:	4581                	li	a1,0
ffffffffc02005ca:	4601                	li	a2,0
ffffffffc02005cc:	4885                	li	a7,1
ffffffffc02005ce:	00000073          	ecall
ffffffffc02005d2:	02000513          	li	a0,32
ffffffffc02005d6:	00000073          	ecall
ffffffffc02005da:	4521                	li	a0,8
ffffffffc02005dc:	00000073          	ecall
ffffffffc02005e0:	d365                	beqz	a4,ffffffffc02005c0 <cons_putc+0x20>
ffffffffc02005e2:	60e2                	ld	ra,24(sp)
ffffffffc02005e4:	6105                	addi	sp,sp,32
ffffffffc02005e6:	a559                	j	ffffffffc0200c6c <intr_enable>
ffffffffc02005e8:	e42a                	sd	a0,8(sp)
ffffffffc02005ea:	688000ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02005ee:	6522                	ld	a0,8(sp)
ffffffffc02005f0:	4705                	li	a4,1
ffffffffc02005f2:	bf75                	j	ffffffffc02005ae <cons_putc+0xe>

ffffffffc02005f4 <cons_getc>:
ffffffffc02005f4:	1101                	addi	sp,sp,-32
ffffffffc02005f6:	ec06                	sd	ra,24(sp)
ffffffffc02005f8:	100027f3          	csrr	a5,sstatus
ffffffffc02005fc:	8b89                	andi	a5,a5,2
ffffffffc02005fe:	4801                	li	a6,0
ffffffffc0200600:	e3d5                	bnez	a5,ffffffffc02006a4 <cons_getc+0xb0>
ffffffffc0200602:	00091697          	auipc	a3,0x91
ffffffffc0200606:	e5e68693          	addi	a3,a3,-418 # ffffffffc0291460 <cons>
ffffffffc020060a:	07f00713          	li	a4,127
ffffffffc020060e:	20000313          	li	t1,512
ffffffffc0200612:	a021                	j	ffffffffc020061a <cons_getc+0x26>
ffffffffc0200614:	0ff57513          	zext.b	a0,a0
ffffffffc0200618:	ef91                	bnez	a5,ffffffffc0200634 <cons_getc+0x40>
ffffffffc020061a:	4501                	li	a0,0
ffffffffc020061c:	4581                	li	a1,0
ffffffffc020061e:	4601                	li	a2,0
ffffffffc0200620:	4889                	li	a7,2
ffffffffc0200622:	00000073          	ecall
ffffffffc0200626:	0005079b          	sext.w	a5,a0
ffffffffc020062a:	0207c763          	bltz	a5,ffffffffc0200658 <cons_getc+0x64>
ffffffffc020062e:	fee793e3          	bne	a5,a4,ffffffffc0200614 <cons_getc+0x20>
ffffffffc0200632:	4521                	li	a0,8
ffffffffc0200634:	2046a783          	lw	a5,516(a3)
ffffffffc0200638:	02079613          	slli	a2,a5,0x20
ffffffffc020063c:	9201                	srli	a2,a2,0x20
ffffffffc020063e:	2785                	addiw	a5,a5,1
ffffffffc0200640:	9636                	add	a2,a2,a3
ffffffffc0200642:	20f6a223          	sw	a5,516(a3)
ffffffffc0200646:	00a60023          	sb	a0,0(a2)
ffffffffc020064a:	fc6798e3          	bne	a5,t1,ffffffffc020061a <cons_getc+0x26>
ffffffffc020064e:	00091797          	auipc	a5,0x91
ffffffffc0200652:	0007ab23          	sw	zero,22(a5) # ffffffffc0291664 <cons+0x204>
ffffffffc0200656:	b7d1                	j	ffffffffc020061a <cons_getc+0x26>
ffffffffc0200658:	2006a783          	lw	a5,512(a3)
ffffffffc020065c:	2046a703          	lw	a4,516(a3)
ffffffffc0200660:	4501                	li	a0,0
ffffffffc0200662:	00f70f63          	beq	a4,a5,ffffffffc0200680 <cons_getc+0x8c>
ffffffffc0200666:	0017861b          	addiw	a2,a5,1
ffffffffc020066a:	1782                	slli	a5,a5,0x20
ffffffffc020066c:	9381                	srli	a5,a5,0x20
ffffffffc020066e:	97b6                	add	a5,a5,a3
ffffffffc0200670:	20c6a023          	sw	a2,512(a3)
ffffffffc0200674:	20000713          	li	a4,512
ffffffffc0200678:	0007c503          	lbu	a0,0(a5)
ffffffffc020067c:	00e60763          	beq	a2,a4,ffffffffc020068a <cons_getc+0x96>
ffffffffc0200680:	00081b63          	bnez	a6,ffffffffc0200696 <cons_getc+0xa2>
ffffffffc0200684:	60e2                	ld	ra,24(sp)
ffffffffc0200686:	6105                	addi	sp,sp,32
ffffffffc0200688:	8082                	ret
ffffffffc020068a:	00091797          	auipc	a5,0x91
ffffffffc020068e:	fc07ab23          	sw	zero,-42(a5) # ffffffffc0291660 <cons+0x200>
ffffffffc0200692:	fe0809e3          	beqz	a6,ffffffffc0200684 <cons_getc+0x90>
ffffffffc0200696:	e42a                	sd	a0,8(sp)
ffffffffc0200698:	5d4000ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc020069c:	60e2                	ld	ra,24(sp)
ffffffffc020069e:	6522                	ld	a0,8(sp)
ffffffffc02006a0:	6105                	addi	sp,sp,32
ffffffffc02006a2:	8082                	ret
ffffffffc02006a4:	5ce000ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02006a8:	4805                	li	a6,1
ffffffffc02006aa:	bfa1                	j	ffffffffc0200602 <cons_getc+0xe>

ffffffffc02006ac <dtb_init>:
ffffffffc02006ac:	7119                	addi	sp,sp,-128
ffffffffc02006ae:	0000b517          	auipc	a0,0xb
ffffffffc02006b2:	2fa50513          	addi	a0,a0,762 # ffffffffc020b9a8 <commands+0xa8>
ffffffffc02006b6:	fc86                	sd	ra,120(sp)
ffffffffc02006b8:	f8a2                	sd	s0,112(sp)
ffffffffc02006ba:	e8d2                	sd	s4,80(sp)
ffffffffc02006bc:	f4a6                	sd	s1,104(sp)
ffffffffc02006be:	f0ca                	sd	s2,96(sp)
ffffffffc02006c0:	ecce                	sd	s3,88(sp)
ffffffffc02006c2:	e4d6                	sd	s5,72(sp)
ffffffffc02006c4:	e0da                	sd	s6,64(sp)
ffffffffc02006c6:	fc5e                	sd	s7,56(sp)
ffffffffc02006c8:	f862                	sd	s8,48(sp)
ffffffffc02006ca:	f466                	sd	s9,40(sp)
ffffffffc02006cc:	f06a                	sd	s10,32(sp)
ffffffffc02006ce:	ec6e                	sd	s11,24(sp)
ffffffffc02006d0:	ad7ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02006d4:	00014597          	auipc	a1,0x14
ffffffffc02006d8:	92c5b583          	ld	a1,-1748(a1) # ffffffffc0214000 <boot_hartid>
ffffffffc02006dc:	0000b517          	auipc	a0,0xb
ffffffffc02006e0:	2dc50513          	addi	a0,a0,732 # ffffffffc020b9b8 <commands+0xb8>
ffffffffc02006e4:	ac3ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02006e8:	00014417          	auipc	s0,0x14
ffffffffc02006ec:	92040413          	addi	s0,s0,-1760 # ffffffffc0214008 <boot_dtb>
ffffffffc02006f0:	600c                	ld	a1,0(s0)
ffffffffc02006f2:	0000b517          	auipc	a0,0xb
ffffffffc02006f6:	2d650513          	addi	a0,a0,726 # ffffffffc020b9c8 <commands+0xc8>
ffffffffc02006fa:	aadff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02006fe:	00043a03          	ld	s4,0(s0)
ffffffffc0200702:	0000b517          	auipc	a0,0xb
ffffffffc0200706:	2de50513          	addi	a0,a0,734 # ffffffffc020b9e0 <commands+0xe0>
ffffffffc020070a:	120a0463          	beqz	s4,ffffffffc0200832 <dtb_init+0x186>
ffffffffc020070e:	57f5                	li	a5,-3
ffffffffc0200710:	07fa                	slli	a5,a5,0x1e
ffffffffc0200712:	00fa0733          	add	a4,s4,a5
ffffffffc0200716:	431c                	lw	a5,0(a4)
ffffffffc0200718:	00ff0637          	lui	a2,0xff0
ffffffffc020071c:	6b41                	lui	s6,0x10
ffffffffc020071e:	0087d59b          	srliw	a1,a5,0x8
ffffffffc0200722:	0187969b          	slliw	a3,a5,0x18
ffffffffc0200726:	0187d51b          	srliw	a0,a5,0x18
ffffffffc020072a:	0105959b          	slliw	a1,a1,0x10
ffffffffc020072e:	0107d79b          	srliw	a5,a5,0x10
ffffffffc0200732:	8df1                	and	a1,a1,a2
ffffffffc0200734:	8ec9                	or	a3,a3,a0
ffffffffc0200736:	0087979b          	slliw	a5,a5,0x8
ffffffffc020073a:	1b7d                	addi	s6,s6,-1
ffffffffc020073c:	0167f7b3          	and	a5,a5,s6
ffffffffc0200740:	8dd5                	or	a1,a1,a3
ffffffffc0200742:	8ddd                	or	a1,a1,a5
ffffffffc0200744:	d00e07b7          	lui	a5,0xd00e0
ffffffffc0200748:	2581                	sext.w	a1,a1
ffffffffc020074a:	eed78793          	addi	a5,a5,-275 # ffffffffd00dfeed <end+0xfe495dd>
ffffffffc020074e:	10f59163          	bne	a1,a5,ffffffffc0200850 <dtb_init+0x1a4>
ffffffffc0200752:	471c                	lw	a5,8(a4)
ffffffffc0200754:	4754                	lw	a3,12(a4)
ffffffffc0200756:	4c81                	li	s9,0
ffffffffc0200758:	0087d59b          	srliw	a1,a5,0x8
ffffffffc020075c:	0086d51b          	srliw	a0,a3,0x8
ffffffffc0200760:	0186941b          	slliw	s0,a3,0x18
ffffffffc0200764:	0186d89b          	srliw	a7,a3,0x18
ffffffffc0200768:	01879a1b          	slliw	s4,a5,0x18
ffffffffc020076c:	0187d81b          	srliw	a6,a5,0x18
ffffffffc0200770:	0105151b          	slliw	a0,a0,0x10
ffffffffc0200774:	0106d69b          	srliw	a3,a3,0x10
ffffffffc0200778:	0105959b          	slliw	a1,a1,0x10
ffffffffc020077c:	0107d79b          	srliw	a5,a5,0x10
ffffffffc0200780:	8d71                	and	a0,a0,a2
ffffffffc0200782:	01146433          	or	s0,s0,a7
ffffffffc0200786:	0086969b          	slliw	a3,a3,0x8
ffffffffc020078a:	010a6a33          	or	s4,s4,a6
ffffffffc020078e:	8e6d                	and	a2,a2,a1
ffffffffc0200790:	0087979b          	slliw	a5,a5,0x8
ffffffffc0200794:	8c49                	or	s0,s0,a0
ffffffffc0200796:	0166f6b3          	and	a3,a3,s6
ffffffffc020079a:	00ca6a33          	or	s4,s4,a2
ffffffffc020079e:	0167f7b3          	and	a5,a5,s6
ffffffffc02007a2:	8c55                	or	s0,s0,a3
ffffffffc02007a4:	00fa6a33          	or	s4,s4,a5
ffffffffc02007a8:	1402                	slli	s0,s0,0x20
ffffffffc02007aa:	1a02                	slli	s4,s4,0x20
ffffffffc02007ac:	9001                	srli	s0,s0,0x20
ffffffffc02007ae:	020a5a13          	srli	s4,s4,0x20
ffffffffc02007b2:	943a                	add	s0,s0,a4
ffffffffc02007b4:	9a3a                	add	s4,s4,a4
ffffffffc02007b6:	00ff0c37          	lui	s8,0xff0
ffffffffc02007ba:	4b8d                	li	s7,3
ffffffffc02007bc:	0000b917          	auipc	s2,0xb
ffffffffc02007c0:	27490913          	addi	s2,s2,628 # ffffffffc020ba30 <commands+0x130>
ffffffffc02007c4:	49bd                	li	s3,15
ffffffffc02007c6:	4d91                	li	s11,4
ffffffffc02007c8:	4d05                	li	s10,1
ffffffffc02007ca:	0000b497          	auipc	s1,0xb
ffffffffc02007ce:	25e48493          	addi	s1,s1,606 # ffffffffc020ba28 <commands+0x128>
ffffffffc02007d2:	000a2703          	lw	a4,0(s4)
ffffffffc02007d6:	004a0a93          	addi	s5,s4,4
ffffffffc02007da:	0087569b          	srliw	a3,a4,0x8
ffffffffc02007de:	0187179b          	slliw	a5,a4,0x18
ffffffffc02007e2:	0187561b          	srliw	a2,a4,0x18
ffffffffc02007e6:	0106969b          	slliw	a3,a3,0x10
ffffffffc02007ea:	0107571b          	srliw	a4,a4,0x10
ffffffffc02007ee:	8fd1                	or	a5,a5,a2
ffffffffc02007f0:	0186f6b3          	and	a3,a3,s8
ffffffffc02007f4:	0087171b          	slliw	a4,a4,0x8
ffffffffc02007f8:	8fd5                	or	a5,a5,a3
ffffffffc02007fa:	00eb7733          	and	a4,s6,a4
ffffffffc02007fe:	8fd9                	or	a5,a5,a4
ffffffffc0200800:	2781                	sext.w	a5,a5
ffffffffc0200802:	09778c63          	beq	a5,s7,ffffffffc020089a <dtb_init+0x1ee>
ffffffffc0200806:	00fbea63          	bltu	s7,a5,ffffffffc020081a <dtb_init+0x16e>
ffffffffc020080a:	07a78663          	beq	a5,s10,ffffffffc0200876 <dtb_init+0x1ca>
ffffffffc020080e:	4709                	li	a4,2
ffffffffc0200810:	00e79763          	bne	a5,a4,ffffffffc020081e <dtb_init+0x172>
ffffffffc0200814:	4c81                	li	s9,0
ffffffffc0200816:	8a56                	mv	s4,s5
ffffffffc0200818:	bf6d                	j	ffffffffc02007d2 <dtb_init+0x126>
ffffffffc020081a:	ffb78ee3          	beq	a5,s11,ffffffffc0200816 <dtb_init+0x16a>
ffffffffc020081e:	0000b517          	auipc	a0,0xb
ffffffffc0200822:	28a50513          	addi	a0,a0,650 # ffffffffc020baa8 <commands+0x1a8>
ffffffffc0200826:	981ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020082a:	0000b517          	auipc	a0,0xb
ffffffffc020082e:	2b650513          	addi	a0,a0,694 # ffffffffc020bae0 <commands+0x1e0>
ffffffffc0200832:	7446                	ld	s0,112(sp)
ffffffffc0200834:	70e6                	ld	ra,120(sp)
ffffffffc0200836:	74a6                	ld	s1,104(sp)
ffffffffc0200838:	7906                	ld	s2,96(sp)
ffffffffc020083a:	69e6                	ld	s3,88(sp)
ffffffffc020083c:	6a46                	ld	s4,80(sp)
ffffffffc020083e:	6aa6                	ld	s5,72(sp)
ffffffffc0200840:	6b06                	ld	s6,64(sp)
ffffffffc0200842:	7be2                	ld	s7,56(sp)
ffffffffc0200844:	7c42                	ld	s8,48(sp)
ffffffffc0200846:	7ca2                	ld	s9,40(sp)
ffffffffc0200848:	7d02                	ld	s10,32(sp)
ffffffffc020084a:	6de2                	ld	s11,24(sp)
ffffffffc020084c:	6109                	addi	sp,sp,128
ffffffffc020084e:	baa1                	j	ffffffffc02001a6 <cprintf>
ffffffffc0200850:	7446                	ld	s0,112(sp)
ffffffffc0200852:	70e6                	ld	ra,120(sp)
ffffffffc0200854:	74a6                	ld	s1,104(sp)
ffffffffc0200856:	7906                	ld	s2,96(sp)
ffffffffc0200858:	69e6                	ld	s3,88(sp)
ffffffffc020085a:	6a46                	ld	s4,80(sp)
ffffffffc020085c:	6aa6                	ld	s5,72(sp)
ffffffffc020085e:	6b06                	ld	s6,64(sp)
ffffffffc0200860:	7be2                	ld	s7,56(sp)
ffffffffc0200862:	7c42                	ld	s8,48(sp)
ffffffffc0200864:	7ca2                	ld	s9,40(sp)
ffffffffc0200866:	7d02                	ld	s10,32(sp)
ffffffffc0200868:	6de2                	ld	s11,24(sp)
ffffffffc020086a:	0000b517          	auipc	a0,0xb
ffffffffc020086e:	19650513          	addi	a0,a0,406 # ffffffffc020ba00 <commands+0x100>
ffffffffc0200872:	6109                	addi	sp,sp,128
ffffffffc0200874:	ba0d                	j	ffffffffc02001a6 <cprintf>
ffffffffc0200876:	8556                	mv	a0,s5
ffffffffc0200878:	5150a0ef          	jal	ra,ffffffffc020b58c <strlen>
ffffffffc020087c:	8a2a                	mv	s4,a0
ffffffffc020087e:	4619                	li	a2,6
ffffffffc0200880:	85a6                	mv	a1,s1
ffffffffc0200882:	8556                	mv	a0,s5
ffffffffc0200884:	2a01                	sext.w	s4,s4
ffffffffc0200886:	56d0a0ef          	jal	ra,ffffffffc020b5f2 <strncmp>
ffffffffc020088a:	e111                	bnez	a0,ffffffffc020088e <dtb_init+0x1e2>
ffffffffc020088c:	4c85                	li	s9,1
ffffffffc020088e:	0a91                	addi	s5,s5,4
ffffffffc0200890:	9ad2                	add	s5,s5,s4
ffffffffc0200892:	ffcafa93          	andi	s5,s5,-4
ffffffffc0200896:	8a56                	mv	s4,s5
ffffffffc0200898:	bf2d                	j	ffffffffc02007d2 <dtb_init+0x126>
ffffffffc020089a:	004a2783          	lw	a5,4(s4)
ffffffffc020089e:	00ca0693          	addi	a3,s4,12
ffffffffc02008a2:	0087d71b          	srliw	a4,a5,0x8
ffffffffc02008a6:	01879a9b          	slliw	s5,a5,0x18
ffffffffc02008aa:	0187d61b          	srliw	a2,a5,0x18
ffffffffc02008ae:	0107171b          	slliw	a4,a4,0x10
ffffffffc02008b2:	0107d79b          	srliw	a5,a5,0x10
ffffffffc02008b6:	00caeab3          	or	s5,s5,a2
ffffffffc02008ba:	01877733          	and	a4,a4,s8
ffffffffc02008be:	0087979b          	slliw	a5,a5,0x8
ffffffffc02008c2:	00eaeab3          	or	s5,s5,a4
ffffffffc02008c6:	00fb77b3          	and	a5,s6,a5
ffffffffc02008ca:	00faeab3          	or	s5,s5,a5
ffffffffc02008ce:	2a81                	sext.w	s5,s5
ffffffffc02008d0:	000c9c63          	bnez	s9,ffffffffc02008e8 <dtb_init+0x23c>
ffffffffc02008d4:	1a82                	slli	s5,s5,0x20
ffffffffc02008d6:	00368793          	addi	a5,a3,3
ffffffffc02008da:	020ada93          	srli	s5,s5,0x20
ffffffffc02008de:	9abe                	add	s5,s5,a5
ffffffffc02008e0:	ffcafa93          	andi	s5,s5,-4
ffffffffc02008e4:	8a56                	mv	s4,s5
ffffffffc02008e6:	b5f5                	j	ffffffffc02007d2 <dtb_init+0x126>
ffffffffc02008e8:	008a2783          	lw	a5,8(s4)
ffffffffc02008ec:	85ca                	mv	a1,s2
ffffffffc02008ee:	e436                	sd	a3,8(sp)
ffffffffc02008f0:	0087d51b          	srliw	a0,a5,0x8
ffffffffc02008f4:	0187d61b          	srliw	a2,a5,0x18
ffffffffc02008f8:	0187971b          	slliw	a4,a5,0x18
ffffffffc02008fc:	0105151b          	slliw	a0,a0,0x10
ffffffffc0200900:	0107d79b          	srliw	a5,a5,0x10
ffffffffc0200904:	8f51                	or	a4,a4,a2
ffffffffc0200906:	01857533          	and	a0,a0,s8
ffffffffc020090a:	0087979b          	slliw	a5,a5,0x8
ffffffffc020090e:	8d59                	or	a0,a0,a4
ffffffffc0200910:	00fb77b3          	and	a5,s6,a5
ffffffffc0200914:	8d5d                	or	a0,a0,a5
ffffffffc0200916:	1502                	slli	a0,a0,0x20
ffffffffc0200918:	9101                	srli	a0,a0,0x20
ffffffffc020091a:	9522                	add	a0,a0,s0
ffffffffc020091c:	4b90a0ef          	jal	ra,ffffffffc020b5d4 <strcmp>
ffffffffc0200920:	66a2                	ld	a3,8(sp)
ffffffffc0200922:	f94d                	bnez	a0,ffffffffc02008d4 <dtb_init+0x228>
ffffffffc0200924:	fb59f8e3          	bgeu	s3,s5,ffffffffc02008d4 <dtb_init+0x228>
ffffffffc0200928:	00ca3783          	ld	a5,12(s4)
ffffffffc020092c:	014a3703          	ld	a4,20(s4)
ffffffffc0200930:	0000b517          	auipc	a0,0xb
ffffffffc0200934:	10850513          	addi	a0,a0,264 # ffffffffc020ba38 <commands+0x138>
ffffffffc0200938:	4207d613          	srai	a2,a5,0x20
ffffffffc020093c:	0087d31b          	srliw	t1,a5,0x8
ffffffffc0200940:	42075593          	srai	a1,a4,0x20
ffffffffc0200944:	0187de1b          	srliw	t3,a5,0x18
ffffffffc0200948:	0186581b          	srliw	a6,a2,0x18
ffffffffc020094c:	0187941b          	slliw	s0,a5,0x18
ffffffffc0200950:	0107d89b          	srliw	a7,a5,0x10
ffffffffc0200954:	0187d693          	srli	a3,a5,0x18
ffffffffc0200958:	01861f1b          	slliw	t5,a2,0x18
ffffffffc020095c:	0087579b          	srliw	a5,a4,0x8
ffffffffc0200960:	0103131b          	slliw	t1,t1,0x10
ffffffffc0200964:	0106561b          	srliw	a2,a2,0x10
ffffffffc0200968:	010f6f33          	or	t5,t5,a6
ffffffffc020096c:	0187529b          	srliw	t0,a4,0x18
ffffffffc0200970:	0185df9b          	srliw	t6,a1,0x18
ffffffffc0200974:	01837333          	and	t1,t1,s8
ffffffffc0200978:	01c46433          	or	s0,s0,t3
ffffffffc020097c:	0186f6b3          	and	a3,a3,s8
ffffffffc0200980:	01859e1b          	slliw	t3,a1,0x18
ffffffffc0200984:	01871e9b          	slliw	t4,a4,0x18
ffffffffc0200988:	0107581b          	srliw	a6,a4,0x10
ffffffffc020098c:	0086161b          	slliw	a2,a2,0x8
ffffffffc0200990:	8361                	srli	a4,a4,0x18
ffffffffc0200992:	0107979b          	slliw	a5,a5,0x10
ffffffffc0200996:	0105d59b          	srliw	a1,a1,0x10
ffffffffc020099a:	01e6e6b3          	or	a3,a3,t5
ffffffffc020099e:	00cb7633          	and	a2,s6,a2
ffffffffc02009a2:	0088181b          	slliw	a6,a6,0x8
ffffffffc02009a6:	0085959b          	slliw	a1,a1,0x8
ffffffffc02009aa:	00646433          	or	s0,s0,t1
ffffffffc02009ae:	0187f7b3          	and	a5,a5,s8
ffffffffc02009b2:	01fe6333          	or	t1,t3,t6
ffffffffc02009b6:	01877c33          	and	s8,a4,s8
ffffffffc02009ba:	0088989b          	slliw	a7,a7,0x8
ffffffffc02009be:	011b78b3          	and	a7,s6,a7
ffffffffc02009c2:	005eeeb3          	or	t4,t4,t0
ffffffffc02009c6:	00c6e733          	or	a4,a3,a2
ffffffffc02009ca:	006c6c33          	or	s8,s8,t1
ffffffffc02009ce:	010b76b3          	and	a3,s6,a6
ffffffffc02009d2:	00bb7b33          	and	s6,s6,a1
ffffffffc02009d6:	01d7e7b3          	or	a5,a5,t4
ffffffffc02009da:	016c6b33          	or	s6,s8,s6
ffffffffc02009de:	01146433          	or	s0,s0,a7
ffffffffc02009e2:	8fd5                	or	a5,a5,a3
ffffffffc02009e4:	1702                	slli	a4,a4,0x20
ffffffffc02009e6:	1b02                	slli	s6,s6,0x20
ffffffffc02009e8:	1782                	slli	a5,a5,0x20
ffffffffc02009ea:	9301                	srli	a4,a4,0x20
ffffffffc02009ec:	1402                	slli	s0,s0,0x20
ffffffffc02009ee:	020b5b13          	srli	s6,s6,0x20
ffffffffc02009f2:	0167eb33          	or	s6,a5,s6
ffffffffc02009f6:	8c59                	or	s0,s0,a4
ffffffffc02009f8:	faeff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02009fc:	85a2                	mv	a1,s0
ffffffffc02009fe:	0000b517          	auipc	a0,0xb
ffffffffc0200a02:	05a50513          	addi	a0,a0,90 # ffffffffc020ba58 <commands+0x158>
ffffffffc0200a06:	fa0ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200a0a:	014b5613          	srli	a2,s6,0x14
ffffffffc0200a0e:	85da                	mv	a1,s6
ffffffffc0200a10:	0000b517          	auipc	a0,0xb
ffffffffc0200a14:	06050513          	addi	a0,a0,96 # ffffffffc020ba70 <commands+0x170>
ffffffffc0200a18:	f8eff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200a1c:	008b05b3          	add	a1,s6,s0
ffffffffc0200a20:	15fd                	addi	a1,a1,-1
ffffffffc0200a22:	0000b517          	auipc	a0,0xb
ffffffffc0200a26:	06e50513          	addi	a0,a0,110 # ffffffffc020ba90 <commands+0x190>
ffffffffc0200a2a:	f7cff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200a2e:	0000b517          	auipc	a0,0xb
ffffffffc0200a32:	0b250513          	addi	a0,a0,178 # ffffffffc020bae0 <commands+0x1e0>
ffffffffc0200a36:	00096797          	auipc	a5,0x96
ffffffffc0200a3a:	e487b123          	sd	s0,-446(a5) # ffffffffc0296878 <memory_base>
ffffffffc0200a3e:	00096797          	auipc	a5,0x96
ffffffffc0200a42:	e567b123          	sd	s6,-446(a5) # ffffffffc0296880 <memory_size>
ffffffffc0200a46:	b3f5                	j	ffffffffc0200832 <dtb_init+0x186>

ffffffffc0200a48 <get_memory_base>:
ffffffffc0200a48:	00096517          	auipc	a0,0x96
ffffffffc0200a4c:	e3053503          	ld	a0,-464(a0) # ffffffffc0296878 <memory_base>
ffffffffc0200a50:	8082                	ret

ffffffffc0200a52 <get_memory_size>:
ffffffffc0200a52:	00096517          	auipc	a0,0x96
ffffffffc0200a56:	e2e53503          	ld	a0,-466(a0) # ffffffffc0296880 <memory_size>
ffffffffc0200a5a:	8082                	ret

ffffffffc0200a5c <ide_init>:
ffffffffc0200a5c:	1141                	addi	sp,sp,-16
ffffffffc0200a5e:	00091597          	auipc	a1,0x91
ffffffffc0200a62:	c5a58593          	addi	a1,a1,-934 # ffffffffc02916b8 <ide_devices+0x50>
ffffffffc0200a66:	4505                	li	a0,1
ffffffffc0200a68:	e022                	sd	s0,0(sp)
ffffffffc0200a6a:	00091797          	auipc	a5,0x91
ffffffffc0200a6e:	be07af23          	sw	zero,-1026(a5) # ffffffffc0291668 <ide_devices>
ffffffffc0200a72:	00091797          	auipc	a5,0x91
ffffffffc0200a76:	c407a323          	sw	zero,-954(a5) # ffffffffc02916b8 <ide_devices+0x50>
ffffffffc0200a7a:	00091797          	auipc	a5,0x91
ffffffffc0200a7e:	c807a723          	sw	zero,-882(a5) # ffffffffc0291708 <ide_devices+0xa0>
ffffffffc0200a82:	00091797          	auipc	a5,0x91
ffffffffc0200a86:	cc07ab23          	sw	zero,-810(a5) # ffffffffc0291758 <ide_devices+0xf0>
ffffffffc0200a8a:	e406                	sd	ra,8(sp)
ffffffffc0200a8c:	00091417          	auipc	s0,0x91
ffffffffc0200a90:	bdc40413          	addi	s0,s0,-1060 # ffffffffc0291668 <ide_devices>
ffffffffc0200a94:	23a000ef          	jal	ra,ffffffffc0200cce <ramdisk_init>
ffffffffc0200a98:	483c                	lw	a5,80(s0)
ffffffffc0200a9a:	cf99                	beqz	a5,ffffffffc0200ab8 <ide_init+0x5c>
ffffffffc0200a9c:	00091597          	auipc	a1,0x91
ffffffffc0200aa0:	c6c58593          	addi	a1,a1,-916 # ffffffffc0291708 <ide_devices+0xa0>
ffffffffc0200aa4:	4509                	li	a0,2
ffffffffc0200aa6:	228000ef          	jal	ra,ffffffffc0200cce <ramdisk_init>
ffffffffc0200aaa:	0a042783          	lw	a5,160(s0)
ffffffffc0200aae:	c785                	beqz	a5,ffffffffc0200ad6 <ide_init+0x7a>
ffffffffc0200ab0:	60a2                	ld	ra,8(sp)
ffffffffc0200ab2:	6402                	ld	s0,0(sp)
ffffffffc0200ab4:	0141                	addi	sp,sp,16
ffffffffc0200ab6:	8082                	ret
ffffffffc0200ab8:	0000b697          	auipc	a3,0xb
ffffffffc0200abc:	04068693          	addi	a3,a3,64 # ffffffffc020baf8 <commands+0x1f8>
ffffffffc0200ac0:	0000b617          	auipc	a2,0xb
ffffffffc0200ac4:	05060613          	addi	a2,a2,80 # ffffffffc020bb10 <commands+0x210>
ffffffffc0200ac8:	45c5                	li	a1,17
ffffffffc0200aca:	0000b517          	auipc	a0,0xb
ffffffffc0200ace:	05e50513          	addi	a0,a0,94 # ffffffffc020bb28 <commands+0x228>
ffffffffc0200ad2:	9cdff0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0200ad6:	0000b697          	auipc	a3,0xb
ffffffffc0200ada:	06a68693          	addi	a3,a3,106 # ffffffffc020bb40 <commands+0x240>
ffffffffc0200ade:	0000b617          	auipc	a2,0xb
ffffffffc0200ae2:	03260613          	addi	a2,a2,50 # ffffffffc020bb10 <commands+0x210>
ffffffffc0200ae6:	45d1                	li	a1,20
ffffffffc0200ae8:	0000b517          	auipc	a0,0xb
ffffffffc0200aec:	04050513          	addi	a0,a0,64 # ffffffffc020bb28 <commands+0x228>
ffffffffc0200af0:	9afff0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0200af4 <ide_device_valid>:
ffffffffc0200af4:	478d                	li	a5,3
ffffffffc0200af6:	00a7ef63          	bltu	a5,a0,ffffffffc0200b14 <ide_device_valid+0x20>
ffffffffc0200afa:	00251793          	slli	a5,a0,0x2
ffffffffc0200afe:	953e                	add	a0,a0,a5
ffffffffc0200b00:	0512                	slli	a0,a0,0x4
ffffffffc0200b02:	00091797          	auipc	a5,0x91
ffffffffc0200b06:	b6678793          	addi	a5,a5,-1178 # ffffffffc0291668 <ide_devices>
ffffffffc0200b0a:	953e                	add	a0,a0,a5
ffffffffc0200b0c:	4108                	lw	a0,0(a0)
ffffffffc0200b0e:	00a03533          	snez	a0,a0
ffffffffc0200b12:	8082                	ret
ffffffffc0200b14:	4501                	li	a0,0
ffffffffc0200b16:	8082                	ret

ffffffffc0200b18 <ide_device_size>:
ffffffffc0200b18:	478d                	li	a5,3
ffffffffc0200b1a:	02a7e163          	bltu	a5,a0,ffffffffc0200b3c <ide_device_size+0x24>
ffffffffc0200b1e:	00251793          	slli	a5,a0,0x2
ffffffffc0200b22:	953e                	add	a0,a0,a5
ffffffffc0200b24:	0512                	slli	a0,a0,0x4
ffffffffc0200b26:	00091797          	auipc	a5,0x91
ffffffffc0200b2a:	b4278793          	addi	a5,a5,-1214 # ffffffffc0291668 <ide_devices>
ffffffffc0200b2e:	97aa                	add	a5,a5,a0
ffffffffc0200b30:	4398                	lw	a4,0(a5)
ffffffffc0200b32:	4501                	li	a0,0
ffffffffc0200b34:	c709                	beqz	a4,ffffffffc0200b3e <ide_device_size+0x26>
ffffffffc0200b36:	0087e503          	lwu	a0,8(a5)
ffffffffc0200b3a:	8082                	ret
ffffffffc0200b3c:	4501                	li	a0,0
ffffffffc0200b3e:	8082                	ret

ffffffffc0200b40 <ide_read_secs>:
ffffffffc0200b40:	1141                	addi	sp,sp,-16
ffffffffc0200b42:	e406                	sd	ra,8(sp)
ffffffffc0200b44:	08000793          	li	a5,128
ffffffffc0200b48:	04d7e763          	bltu	a5,a3,ffffffffc0200b96 <ide_read_secs+0x56>
ffffffffc0200b4c:	478d                	li	a5,3
ffffffffc0200b4e:	0005081b          	sext.w	a6,a0
ffffffffc0200b52:	04a7e263          	bltu	a5,a0,ffffffffc0200b96 <ide_read_secs+0x56>
ffffffffc0200b56:	00281793          	slli	a5,a6,0x2
ffffffffc0200b5a:	97c2                	add	a5,a5,a6
ffffffffc0200b5c:	0792                	slli	a5,a5,0x4
ffffffffc0200b5e:	00091817          	auipc	a6,0x91
ffffffffc0200b62:	b0a80813          	addi	a6,a6,-1270 # ffffffffc0291668 <ide_devices>
ffffffffc0200b66:	97c2                	add	a5,a5,a6
ffffffffc0200b68:	0007a883          	lw	a7,0(a5)
ffffffffc0200b6c:	02088563          	beqz	a7,ffffffffc0200b96 <ide_read_secs+0x56>
ffffffffc0200b70:	100008b7          	lui	a7,0x10000
ffffffffc0200b74:	0515f163          	bgeu	a1,a7,ffffffffc0200bb6 <ide_read_secs+0x76>
ffffffffc0200b78:	1582                	slli	a1,a1,0x20
ffffffffc0200b7a:	9181                	srli	a1,a1,0x20
ffffffffc0200b7c:	00d58733          	add	a4,a1,a3
ffffffffc0200b80:	02e8eb63          	bltu	a7,a4,ffffffffc0200bb6 <ide_read_secs+0x76>
ffffffffc0200b84:	00251713          	slli	a4,a0,0x2
ffffffffc0200b88:	60a2                	ld	ra,8(sp)
ffffffffc0200b8a:	63bc                	ld	a5,64(a5)
ffffffffc0200b8c:	953a                	add	a0,a0,a4
ffffffffc0200b8e:	0512                	slli	a0,a0,0x4
ffffffffc0200b90:	9542                	add	a0,a0,a6
ffffffffc0200b92:	0141                	addi	sp,sp,16
ffffffffc0200b94:	8782                	jr	a5
ffffffffc0200b96:	0000b697          	auipc	a3,0xb
ffffffffc0200b9a:	fc268693          	addi	a3,a3,-62 # ffffffffc020bb58 <commands+0x258>
ffffffffc0200b9e:	0000b617          	auipc	a2,0xb
ffffffffc0200ba2:	f7260613          	addi	a2,a2,-142 # ffffffffc020bb10 <commands+0x210>
ffffffffc0200ba6:	02200593          	li	a1,34
ffffffffc0200baa:	0000b517          	auipc	a0,0xb
ffffffffc0200bae:	f7e50513          	addi	a0,a0,-130 # ffffffffc020bb28 <commands+0x228>
ffffffffc0200bb2:	8edff0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0200bb6:	0000b697          	auipc	a3,0xb
ffffffffc0200bba:	fca68693          	addi	a3,a3,-54 # ffffffffc020bb80 <commands+0x280>
ffffffffc0200bbe:	0000b617          	auipc	a2,0xb
ffffffffc0200bc2:	f5260613          	addi	a2,a2,-174 # ffffffffc020bb10 <commands+0x210>
ffffffffc0200bc6:	02300593          	li	a1,35
ffffffffc0200bca:	0000b517          	auipc	a0,0xb
ffffffffc0200bce:	f5e50513          	addi	a0,a0,-162 # ffffffffc020bb28 <commands+0x228>
ffffffffc0200bd2:	8cdff0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0200bd6 <ide_write_secs>:
ffffffffc0200bd6:	1141                	addi	sp,sp,-16
ffffffffc0200bd8:	e406                	sd	ra,8(sp)
ffffffffc0200bda:	08000793          	li	a5,128
ffffffffc0200bde:	04d7e763          	bltu	a5,a3,ffffffffc0200c2c <ide_write_secs+0x56>
ffffffffc0200be2:	478d                	li	a5,3
ffffffffc0200be4:	0005081b          	sext.w	a6,a0
ffffffffc0200be8:	04a7e263          	bltu	a5,a0,ffffffffc0200c2c <ide_write_secs+0x56>
ffffffffc0200bec:	00281793          	slli	a5,a6,0x2
ffffffffc0200bf0:	97c2                	add	a5,a5,a6
ffffffffc0200bf2:	0792                	slli	a5,a5,0x4
ffffffffc0200bf4:	00091817          	auipc	a6,0x91
ffffffffc0200bf8:	a7480813          	addi	a6,a6,-1420 # ffffffffc0291668 <ide_devices>
ffffffffc0200bfc:	97c2                	add	a5,a5,a6
ffffffffc0200bfe:	0007a883          	lw	a7,0(a5)
ffffffffc0200c02:	02088563          	beqz	a7,ffffffffc0200c2c <ide_write_secs+0x56>
ffffffffc0200c06:	100008b7          	lui	a7,0x10000
ffffffffc0200c0a:	0515f163          	bgeu	a1,a7,ffffffffc0200c4c <ide_write_secs+0x76>
ffffffffc0200c0e:	1582                	slli	a1,a1,0x20
ffffffffc0200c10:	9181                	srli	a1,a1,0x20
ffffffffc0200c12:	00d58733          	add	a4,a1,a3
ffffffffc0200c16:	02e8eb63          	bltu	a7,a4,ffffffffc0200c4c <ide_write_secs+0x76>
ffffffffc0200c1a:	00251713          	slli	a4,a0,0x2
ffffffffc0200c1e:	60a2                	ld	ra,8(sp)
ffffffffc0200c20:	67bc                	ld	a5,72(a5)
ffffffffc0200c22:	953a                	add	a0,a0,a4
ffffffffc0200c24:	0512                	slli	a0,a0,0x4
ffffffffc0200c26:	9542                	add	a0,a0,a6
ffffffffc0200c28:	0141                	addi	sp,sp,16
ffffffffc0200c2a:	8782                	jr	a5
ffffffffc0200c2c:	0000b697          	auipc	a3,0xb
ffffffffc0200c30:	f2c68693          	addi	a3,a3,-212 # ffffffffc020bb58 <commands+0x258>
ffffffffc0200c34:	0000b617          	auipc	a2,0xb
ffffffffc0200c38:	edc60613          	addi	a2,a2,-292 # ffffffffc020bb10 <commands+0x210>
ffffffffc0200c3c:	02900593          	li	a1,41
ffffffffc0200c40:	0000b517          	auipc	a0,0xb
ffffffffc0200c44:	ee850513          	addi	a0,a0,-280 # ffffffffc020bb28 <commands+0x228>
ffffffffc0200c48:	857ff0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0200c4c:	0000b697          	auipc	a3,0xb
ffffffffc0200c50:	f3468693          	addi	a3,a3,-204 # ffffffffc020bb80 <commands+0x280>
ffffffffc0200c54:	0000b617          	auipc	a2,0xb
ffffffffc0200c58:	ebc60613          	addi	a2,a2,-324 # ffffffffc020bb10 <commands+0x210>
ffffffffc0200c5c:	02a00593          	li	a1,42
ffffffffc0200c60:	0000b517          	auipc	a0,0xb
ffffffffc0200c64:	ec850513          	addi	a0,a0,-312 # ffffffffc020bb28 <commands+0x228>
ffffffffc0200c68:	837ff0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0200c6c <intr_enable>:
ffffffffc0200c6c:	100167f3          	csrrsi	a5,sstatus,2
ffffffffc0200c70:	8082                	ret

ffffffffc0200c72 <intr_disable>:
ffffffffc0200c72:	100177f3          	csrrci	a5,sstatus,2
ffffffffc0200c76:	8082                	ret

ffffffffc0200c78 <pic_init>:
ffffffffc0200c78:	8082                	ret

ffffffffc0200c7a <ramdisk_write>:
ffffffffc0200c7a:	00856703          	lwu	a4,8(a0)
ffffffffc0200c7e:	1141                	addi	sp,sp,-16
ffffffffc0200c80:	e406                	sd	ra,8(sp)
ffffffffc0200c82:	8f0d                	sub	a4,a4,a1
ffffffffc0200c84:	87ae                	mv	a5,a1
ffffffffc0200c86:	85b2                	mv	a1,a2
ffffffffc0200c88:	00e6f363          	bgeu	a3,a4,ffffffffc0200c8e <ramdisk_write+0x14>
ffffffffc0200c8c:	8736                	mv	a4,a3
ffffffffc0200c8e:	6908                	ld	a0,16(a0)
ffffffffc0200c90:	07a6                	slli	a5,a5,0x9
ffffffffc0200c92:	00971613          	slli	a2,a4,0x9
ffffffffc0200c96:	953e                	add	a0,a0,a5
ffffffffc0200c98:	1e90a0ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc0200c9c:	60a2                	ld	ra,8(sp)
ffffffffc0200c9e:	4501                	li	a0,0
ffffffffc0200ca0:	0141                	addi	sp,sp,16
ffffffffc0200ca2:	8082                	ret

ffffffffc0200ca4 <ramdisk_read>:
ffffffffc0200ca4:	00856783          	lwu	a5,8(a0)
ffffffffc0200ca8:	1141                	addi	sp,sp,-16
ffffffffc0200caa:	e406                	sd	ra,8(sp)
ffffffffc0200cac:	8f8d                	sub	a5,a5,a1
ffffffffc0200cae:	872a                	mv	a4,a0
ffffffffc0200cb0:	8532                	mv	a0,a2
ffffffffc0200cb2:	00f6f363          	bgeu	a3,a5,ffffffffc0200cb8 <ramdisk_read+0x14>
ffffffffc0200cb6:	87b6                	mv	a5,a3
ffffffffc0200cb8:	6b18                	ld	a4,16(a4)
ffffffffc0200cba:	05a6                	slli	a1,a1,0x9
ffffffffc0200cbc:	00979613          	slli	a2,a5,0x9
ffffffffc0200cc0:	95ba                	add	a1,a1,a4
ffffffffc0200cc2:	1bf0a0ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc0200cc6:	60a2                	ld	ra,8(sp)
ffffffffc0200cc8:	4501                	li	a0,0
ffffffffc0200cca:	0141                	addi	sp,sp,16
ffffffffc0200ccc:	8082                	ret

ffffffffc0200cce <ramdisk_init>:
ffffffffc0200cce:	1101                	addi	sp,sp,-32
ffffffffc0200cd0:	e822                	sd	s0,16(sp)
ffffffffc0200cd2:	842e                	mv	s0,a1
ffffffffc0200cd4:	e426                	sd	s1,8(sp)
ffffffffc0200cd6:	05000613          	li	a2,80
ffffffffc0200cda:	84aa                	mv	s1,a0
ffffffffc0200cdc:	4581                	li	a1,0
ffffffffc0200cde:	8522                	mv	a0,s0
ffffffffc0200ce0:	ec06                	sd	ra,24(sp)
ffffffffc0200ce2:	e04a                	sd	s2,0(sp)
ffffffffc0200ce4:	14b0a0ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc0200ce8:	4785                	li	a5,1
ffffffffc0200cea:	06f48b63          	beq	s1,a5,ffffffffc0200d60 <ramdisk_init+0x92>
ffffffffc0200cee:	4789                	li	a5,2
ffffffffc0200cf0:	00090617          	auipc	a2,0x90
ffffffffc0200cf4:	32060613          	addi	a2,a2,800 # ffffffffc0291010 <arena>
ffffffffc0200cf8:	0001b917          	auipc	s2,0x1b
ffffffffc0200cfc:	01890913          	addi	s2,s2,24 # ffffffffc021bd10 <_binary_bin_sfs_img_start>
ffffffffc0200d00:	08f49563          	bne	s1,a5,ffffffffc0200d8a <ramdisk_init+0xbc>
ffffffffc0200d04:	06c90863          	beq	s2,a2,ffffffffc0200d74 <ramdisk_init+0xa6>
ffffffffc0200d08:	412604b3          	sub	s1,a2,s2
ffffffffc0200d0c:	86a6                	mv	a3,s1
ffffffffc0200d0e:	85ca                	mv	a1,s2
ffffffffc0200d10:	167d                	addi	a2,a2,-1
ffffffffc0200d12:	0000b517          	auipc	a0,0xb
ffffffffc0200d16:	ec650513          	addi	a0,a0,-314 # ffffffffc020bbd8 <commands+0x2d8>
ffffffffc0200d1a:	c8cff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200d1e:	57fd                	li	a5,-1
ffffffffc0200d20:	1782                	slli	a5,a5,0x20
ffffffffc0200d22:	0785                	addi	a5,a5,1
ffffffffc0200d24:	0094d49b          	srliw	s1,s1,0x9
ffffffffc0200d28:	e01c                	sd	a5,0(s0)
ffffffffc0200d2a:	c404                	sw	s1,8(s0)
ffffffffc0200d2c:	01243823          	sd	s2,16(s0)
ffffffffc0200d30:	02040513          	addi	a0,s0,32
ffffffffc0200d34:	0000b597          	auipc	a1,0xb
ffffffffc0200d38:	efc58593          	addi	a1,a1,-260 # ffffffffc020bc30 <commands+0x330>
ffffffffc0200d3c:	0870a0ef          	jal	ra,ffffffffc020b5c2 <strcpy>
ffffffffc0200d40:	00000797          	auipc	a5,0x0
ffffffffc0200d44:	f6478793          	addi	a5,a5,-156 # ffffffffc0200ca4 <ramdisk_read>
ffffffffc0200d48:	e03c                	sd	a5,64(s0)
ffffffffc0200d4a:	00000797          	auipc	a5,0x0
ffffffffc0200d4e:	f3078793          	addi	a5,a5,-208 # ffffffffc0200c7a <ramdisk_write>
ffffffffc0200d52:	60e2                	ld	ra,24(sp)
ffffffffc0200d54:	e43c                	sd	a5,72(s0)
ffffffffc0200d56:	6442                	ld	s0,16(sp)
ffffffffc0200d58:	64a2                	ld	s1,8(sp)
ffffffffc0200d5a:	6902                	ld	s2,0(sp)
ffffffffc0200d5c:	6105                	addi	sp,sp,32
ffffffffc0200d5e:	8082                	ret
ffffffffc0200d60:	0001b617          	auipc	a2,0x1b
ffffffffc0200d64:	fb060613          	addi	a2,a2,-80 # ffffffffc021bd10 <_binary_bin_sfs_img_start>
ffffffffc0200d68:	00013917          	auipc	s2,0x13
ffffffffc0200d6c:	2a890913          	addi	s2,s2,680 # ffffffffc0214010 <_binary_bin_swap_img_start>
ffffffffc0200d70:	f8c91ce3          	bne	s2,a2,ffffffffc0200d08 <ramdisk_init+0x3a>
ffffffffc0200d74:	6442                	ld	s0,16(sp)
ffffffffc0200d76:	60e2                	ld	ra,24(sp)
ffffffffc0200d78:	64a2                	ld	s1,8(sp)
ffffffffc0200d7a:	6902                	ld	s2,0(sp)
ffffffffc0200d7c:	0000b517          	auipc	a0,0xb
ffffffffc0200d80:	e4450513          	addi	a0,a0,-444 # ffffffffc020bbc0 <commands+0x2c0>
ffffffffc0200d84:	6105                	addi	sp,sp,32
ffffffffc0200d86:	c20ff06f          	j	ffffffffc02001a6 <cprintf>
ffffffffc0200d8a:	0000b617          	auipc	a2,0xb
ffffffffc0200d8e:	e7660613          	addi	a2,a2,-394 # ffffffffc020bc00 <commands+0x300>
ffffffffc0200d92:	03200593          	li	a1,50
ffffffffc0200d96:	0000b517          	auipc	a0,0xb
ffffffffc0200d9a:	e8250513          	addi	a0,a0,-382 # ffffffffc020bc18 <commands+0x318>
ffffffffc0200d9e:	f00ff0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0200da2 <idt_init>:
ffffffffc0200da2:	14005073          	csrwi	sscratch,0
ffffffffc0200da6:	00000797          	auipc	a5,0x0
ffffffffc0200daa:	55678793          	addi	a5,a5,1366 # ffffffffc02012fc <__alltraps>
ffffffffc0200dae:	10579073          	csrw	stvec,a5
ffffffffc0200db2:	000407b7          	lui	a5,0x40
ffffffffc0200db6:	1007a7f3          	csrrs	a5,sstatus,a5
ffffffffc0200dba:	8082                	ret

ffffffffc0200dbc <print_regs>:
ffffffffc0200dbc:	610c                	ld	a1,0(a0)
ffffffffc0200dbe:	1141                	addi	sp,sp,-16
ffffffffc0200dc0:	e022                	sd	s0,0(sp)
ffffffffc0200dc2:	842a                	mv	s0,a0
ffffffffc0200dc4:	0000b517          	auipc	a0,0xb
ffffffffc0200dc8:	e7c50513          	addi	a0,a0,-388 # ffffffffc020bc40 <commands+0x340>
ffffffffc0200dcc:	e406                	sd	ra,8(sp)
ffffffffc0200dce:	bd8ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200dd2:	640c                	ld	a1,8(s0)
ffffffffc0200dd4:	0000b517          	auipc	a0,0xb
ffffffffc0200dd8:	e8450513          	addi	a0,a0,-380 # ffffffffc020bc58 <commands+0x358>
ffffffffc0200ddc:	bcaff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200de0:	680c                	ld	a1,16(s0)
ffffffffc0200de2:	0000b517          	auipc	a0,0xb
ffffffffc0200de6:	e8e50513          	addi	a0,a0,-370 # ffffffffc020bc70 <commands+0x370>
ffffffffc0200dea:	bbcff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200dee:	6c0c                	ld	a1,24(s0)
ffffffffc0200df0:	0000b517          	auipc	a0,0xb
ffffffffc0200df4:	e9850513          	addi	a0,a0,-360 # ffffffffc020bc88 <commands+0x388>
ffffffffc0200df8:	baeff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200dfc:	700c                	ld	a1,32(s0)
ffffffffc0200dfe:	0000b517          	auipc	a0,0xb
ffffffffc0200e02:	ea250513          	addi	a0,a0,-350 # ffffffffc020bca0 <commands+0x3a0>
ffffffffc0200e06:	ba0ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e0a:	740c                	ld	a1,40(s0)
ffffffffc0200e0c:	0000b517          	auipc	a0,0xb
ffffffffc0200e10:	eac50513          	addi	a0,a0,-340 # ffffffffc020bcb8 <commands+0x3b8>
ffffffffc0200e14:	b92ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e18:	780c                	ld	a1,48(s0)
ffffffffc0200e1a:	0000b517          	auipc	a0,0xb
ffffffffc0200e1e:	eb650513          	addi	a0,a0,-330 # ffffffffc020bcd0 <commands+0x3d0>
ffffffffc0200e22:	b84ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e26:	7c0c                	ld	a1,56(s0)
ffffffffc0200e28:	0000b517          	auipc	a0,0xb
ffffffffc0200e2c:	ec050513          	addi	a0,a0,-320 # ffffffffc020bce8 <commands+0x3e8>
ffffffffc0200e30:	b76ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e34:	602c                	ld	a1,64(s0)
ffffffffc0200e36:	0000b517          	auipc	a0,0xb
ffffffffc0200e3a:	eca50513          	addi	a0,a0,-310 # ffffffffc020bd00 <commands+0x400>
ffffffffc0200e3e:	b68ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e42:	642c                	ld	a1,72(s0)
ffffffffc0200e44:	0000b517          	auipc	a0,0xb
ffffffffc0200e48:	ed450513          	addi	a0,a0,-300 # ffffffffc020bd18 <commands+0x418>
ffffffffc0200e4c:	b5aff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e50:	682c                	ld	a1,80(s0)
ffffffffc0200e52:	0000b517          	auipc	a0,0xb
ffffffffc0200e56:	ede50513          	addi	a0,a0,-290 # ffffffffc020bd30 <commands+0x430>
ffffffffc0200e5a:	b4cff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e5e:	6c2c                	ld	a1,88(s0)
ffffffffc0200e60:	0000b517          	auipc	a0,0xb
ffffffffc0200e64:	ee850513          	addi	a0,a0,-280 # ffffffffc020bd48 <commands+0x448>
ffffffffc0200e68:	b3eff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e6c:	702c                	ld	a1,96(s0)
ffffffffc0200e6e:	0000b517          	auipc	a0,0xb
ffffffffc0200e72:	ef250513          	addi	a0,a0,-270 # ffffffffc020bd60 <commands+0x460>
ffffffffc0200e76:	b30ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e7a:	742c                	ld	a1,104(s0)
ffffffffc0200e7c:	0000b517          	auipc	a0,0xb
ffffffffc0200e80:	efc50513          	addi	a0,a0,-260 # ffffffffc020bd78 <commands+0x478>
ffffffffc0200e84:	b22ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e88:	782c                	ld	a1,112(s0)
ffffffffc0200e8a:	0000b517          	auipc	a0,0xb
ffffffffc0200e8e:	f0650513          	addi	a0,a0,-250 # ffffffffc020bd90 <commands+0x490>
ffffffffc0200e92:	b14ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e96:	7c2c                	ld	a1,120(s0)
ffffffffc0200e98:	0000b517          	auipc	a0,0xb
ffffffffc0200e9c:	f1050513          	addi	a0,a0,-240 # ffffffffc020bda8 <commands+0x4a8>
ffffffffc0200ea0:	b06ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200ea4:	604c                	ld	a1,128(s0)
ffffffffc0200ea6:	0000b517          	auipc	a0,0xb
ffffffffc0200eaa:	f1a50513          	addi	a0,a0,-230 # ffffffffc020bdc0 <commands+0x4c0>
ffffffffc0200eae:	af8ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200eb2:	644c                	ld	a1,136(s0)
ffffffffc0200eb4:	0000b517          	auipc	a0,0xb
ffffffffc0200eb8:	f2450513          	addi	a0,a0,-220 # ffffffffc020bdd8 <commands+0x4d8>
ffffffffc0200ebc:	aeaff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200ec0:	684c                	ld	a1,144(s0)
ffffffffc0200ec2:	0000b517          	auipc	a0,0xb
ffffffffc0200ec6:	f2e50513          	addi	a0,a0,-210 # ffffffffc020bdf0 <commands+0x4f0>
ffffffffc0200eca:	adcff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200ece:	6c4c                	ld	a1,152(s0)
ffffffffc0200ed0:	0000b517          	auipc	a0,0xb
ffffffffc0200ed4:	f3850513          	addi	a0,a0,-200 # ffffffffc020be08 <commands+0x508>
ffffffffc0200ed8:	aceff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200edc:	704c                	ld	a1,160(s0)
ffffffffc0200ede:	0000b517          	auipc	a0,0xb
ffffffffc0200ee2:	f4250513          	addi	a0,a0,-190 # ffffffffc020be20 <commands+0x520>
ffffffffc0200ee6:	ac0ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200eea:	744c                	ld	a1,168(s0)
ffffffffc0200eec:	0000b517          	auipc	a0,0xb
ffffffffc0200ef0:	f4c50513          	addi	a0,a0,-180 # ffffffffc020be38 <commands+0x538>
ffffffffc0200ef4:	ab2ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200ef8:	784c                	ld	a1,176(s0)
ffffffffc0200efa:	0000b517          	auipc	a0,0xb
ffffffffc0200efe:	f5650513          	addi	a0,a0,-170 # ffffffffc020be50 <commands+0x550>
ffffffffc0200f02:	aa4ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f06:	7c4c                	ld	a1,184(s0)
ffffffffc0200f08:	0000b517          	auipc	a0,0xb
ffffffffc0200f0c:	f6050513          	addi	a0,a0,-160 # ffffffffc020be68 <commands+0x568>
ffffffffc0200f10:	a96ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f14:	606c                	ld	a1,192(s0)
ffffffffc0200f16:	0000b517          	auipc	a0,0xb
ffffffffc0200f1a:	f6a50513          	addi	a0,a0,-150 # ffffffffc020be80 <commands+0x580>
ffffffffc0200f1e:	a88ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f22:	646c                	ld	a1,200(s0)
ffffffffc0200f24:	0000b517          	auipc	a0,0xb
ffffffffc0200f28:	f7450513          	addi	a0,a0,-140 # ffffffffc020be98 <commands+0x598>
ffffffffc0200f2c:	a7aff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f30:	686c                	ld	a1,208(s0)
ffffffffc0200f32:	0000b517          	auipc	a0,0xb
ffffffffc0200f36:	f7e50513          	addi	a0,a0,-130 # ffffffffc020beb0 <commands+0x5b0>
ffffffffc0200f3a:	a6cff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f3e:	6c6c                	ld	a1,216(s0)
ffffffffc0200f40:	0000b517          	auipc	a0,0xb
ffffffffc0200f44:	f8850513          	addi	a0,a0,-120 # ffffffffc020bec8 <commands+0x5c8>
ffffffffc0200f48:	a5eff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f4c:	706c                	ld	a1,224(s0)
ffffffffc0200f4e:	0000b517          	auipc	a0,0xb
ffffffffc0200f52:	f9250513          	addi	a0,a0,-110 # ffffffffc020bee0 <commands+0x5e0>
ffffffffc0200f56:	a50ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f5a:	746c                	ld	a1,232(s0)
ffffffffc0200f5c:	0000b517          	auipc	a0,0xb
ffffffffc0200f60:	f9c50513          	addi	a0,a0,-100 # ffffffffc020bef8 <commands+0x5f8>
ffffffffc0200f64:	a42ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f68:	786c                	ld	a1,240(s0)
ffffffffc0200f6a:	0000b517          	auipc	a0,0xb
ffffffffc0200f6e:	fa650513          	addi	a0,a0,-90 # ffffffffc020bf10 <commands+0x610>
ffffffffc0200f72:	a34ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f76:	7c6c                	ld	a1,248(s0)
ffffffffc0200f78:	6402                	ld	s0,0(sp)
ffffffffc0200f7a:	60a2                	ld	ra,8(sp)
ffffffffc0200f7c:	0000b517          	auipc	a0,0xb
ffffffffc0200f80:	fac50513          	addi	a0,a0,-84 # ffffffffc020bf28 <commands+0x628>
ffffffffc0200f84:	0141                	addi	sp,sp,16
ffffffffc0200f86:	a20ff06f          	j	ffffffffc02001a6 <cprintf>

ffffffffc0200f8a <print_trapframe>:
ffffffffc0200f8a:	1141                	addi	sp,sp,-16
ffffffffc0200f8c:	e022                	sd	s0,0(sp)
ffffffffc0200f8e:	85aa                	mv	a1,a0
ffffffffc0200f90:	842a                	mv	s0,a0
ffffffffc0200f92:	0000b517          	auipc	a0,0xb
ffffffffc0200f96:	fae50513          	addi	a0,a0,-82 # ffffffffc020bf40 <commands+0x640>
ffffffffc0200f9a:	e406                	sd	ra,8(sp)
ffffffffc0200f9c:	a0aff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200fa0:	8522                	mv	a0,s0
ffffffffc0200fa2:	e1bff0ef          	jal	ra,ffffffffc0200dbc <print_regs>
ffffffffc0200fa6:	10043583          	ld	a1,256(s0)
ffffffffc0200faa:	0000b517          	auipc	a0,0xb
ffffffffc0200fae:	fae50513          	addi	a0,a0,-82 # ffffffffc020bf58 <commands+0x658>
ffffffffc0200fb2:	9f4ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200fb6:	10843583          	ld	a1,264(s0)
ffffffffc0200fba:	0000b517          	auipc	a0,0xb
ffffffffc0200fbe:	fb650513          	addi	a0,a0,-74 # ffffffffc020bf70 <commands+0x670>
ffffffffc0200fc2:	9e4ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200fc6:	11043583          	ld	a1,272(s0)
ffffffffc0200fca:	0000b517          	auipc	a0,0xb
ffffffffc0200fce:	fbe50513          	addi	a0,a0,-66 # ffffffffc020bf88 <commands+0x688>
ffffffffc0200fd2:	9d4ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200fd6:	11843583          	ld	a1,280(s0)
ffffffffc0200fda:	6402                	ld	s0,0(sp)
ffffffffc0200fdc:	60a2                	ld	ra,8(sp)
ffffffffc0200fde:	0000b517          	auipc	a0,0xb
ffffffffc0200fe2:	fc250513          	addi	a0,a0,-62 # ffffffffc020bfa0 <commands+0x6a0>
ffffffffc0200fe6:	0141                	addi	sp,sp,16
ffffffffc0200fe8:	9beff06f          	j	ffffffffc02001a6 <cprintf>

ffffffffc0200fec <interrupt_handler>:
ffffffffc0200fec:	11853783          	ld	a5,280(a0)
ffffffffc0200ff0:	472d                	li	a4,11
ffffffffc0200ff2:	0786                	slli	a5,a5,0x1
ffffffffc0200ff4:	8385                	srli	a5,a5,0x1
ffffffffc0200ff6:	06f76c63          	bltu	a4,a5,ffffffffc020106e <interrupt_handler+0x82>
ffffffffc0200ffa:	0000b717          	auipc	a4,0xb
ffffffffc0200ffe:	05e70713          	addi	a4,a4,94 # ffffffffc020c058 <commands+0x758>
ffffffffc0201002:	078a                	slli	a5,a5,0x2
ffffffffc0201004:	97ba                	add	a5,a5,a4
ffffffffc0201006:	439c                	lw	a5,0(a5)
ffffffffc0201008:	97ba                	add	a5,a5,a4
ffffffffc020100a:	8782                	jr	a5
ffffffffc020100c:	0000b517          	auipc	a0,0xb
ffffffffc0201010:	00c50513          	addi	a0,a0,12 # ffffffffc020c018 <commands+0x718>
ffffffffc0201014:	992ff06f          	j	ffffffffc02001a6 <cprintf>
ffffffffc0201018:	0000b517          	auipc	a0,0xb
ffffffffc020101c:	fe050513          	addi	a0,a0,-32 # ffffffffc020bff8 <commands+0x6f8>
ffffffffc0201020:	986ff06f          	j	ffffffffc02001a6 <cprintf>
ffffffffc0201024:	0000b517          	auipc	a0,0xb
ffffffffc0201028:	f9450513          	addi	a0,a0,-108 # ffffffffc020bfb8 <commands+0x6b8>
ffffffffc020102c:	97aff06f          	j	ffffffffc02001a6 <cprintf>
ffffffffc0201030:	0000b517          	auipc	a0,0xb
ffffffffc0201034:	fa850513          	addi	a0,a0,-88 # ffffffffc020bfd8 <commands+0x6d8>
ffffffffc0201038:	96eff06f          	j	ffffffffc02001a6 <cprintf>
ffffffffc020103c:	1141                	addi	sp,sp,-16
ffffffffc020103e:	e406                	sd	ra,8(sp)
ffffffffc0201040:	d3aff0ef          	jal	ra,ffffffffc020057a <clock_set_next_event>
ffffffffc0201044:	00096717          	auipc	a4,0x96
ffffffffc0201048:	82c70713          	addi	a4,a4,-2004 # ffffffffc0296870 <ticks>
ffffffffc020104c:	631c                	ld	a5,0(a4)
ffffffffc020104e:	0785                	addi	a5,a5,1
ffffffffc0201050:	e31c                	sd	a5,0(a4)
ffffffffc0201052:	616060ef          	jal	ra,ffffffffc0207668 <run_timer_list>
ffffffffc0201056:	d9eff0ef          	jal	ra,ffffffffc02005f4 <cons_getc>
ffffffffc020105a:	60a2                	ld	ra,8(sp)
ffffffffc020105c:	0141                	addi	sp,sp,16
ffffffffc020105e:	4db0706f          	j	ffffffffc0208d38 <dev_stdin_write>
ffffffffc0201062:	0000b517          	auipc	a0,0xb
ffffffffc0201066:	fd650513          	addi	a0,a0,-42 # ffffffffc020c038 <commands+0x738>
ffffffffc020106a:	93cff06f          	j	ffffffffc02001a6 <cprintf>
ffffffffc020106e:	bf31                	j	ffffffffc0200f8a <print_trapframe>

ffffffffc0201070 <exception_handler>:
ffffffffc0201070:	11853783          	ld	a5,280(a0)
ffffffffc0201074:	1101                	addi	sp,sp,-32
ffffffffc0201076:	e822                	sd	s0,16(sp)
ffffffffc0201078:	ec06                	sd	ra,24(sp)
ffffffffc020107a:	e426                	sd	s1,8(sp)
ffffffffc020107c:	473d                	li	a4,15
ffffffffc020107e:	842a                	mv	s0,a0
ffffffffc0201080:	14f76263          	bltu	a4,a5,ffffffffc02011c4 <exception_handler+0x154>
ffffffffc0201084:	0000b717          	auipc	a4,0xb
ffffffffc0201088:	34070713          	addi	a4,a4,832 # ffffffffc020c3c4 <commands+0xac4>
ffffffffc020108c:	078a                	slli	a5,a5,0x2
ffffffffc020108e:	97ba                	add	a5,a5,a4
ffffffffc0201090:	439c                	lw	a5,0(a5)
ffffffffc0201092:	97ba                	add	a5,a5,a4
ffffffffc0201094:	8782                	jr	a5
ffffffffc0201096:	0000b517          	auipc	a0,0xb
ffffffffc020109a:	0da50513          	addi	a0,a0,218 # ffffffffc020c170 <commands+0x870>
ffffffffc020109e:	908ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02010a2:	10843783          	ld	a5,264(s0)
ffffffffc02010a6:	60e2                	ld	ra,24(sp)
ffffffffc02010a8:	64a2                	ld	s1,8(sp)
ffffffffc02010aa:	0791                	addi	a5,a5,4
ffffffffc02010ac:	10f43423          	sd	a5,264(s0)
ffffffffc02010b0:	6442                	ld	s0,16(sp)
ffffffffc02010b2:	6105                	addi	sp,sp,32
ffffffffc02010b4:	7ca0606f          	j	ffffffffc020787e <syscall>
ffffffffc02010b8:	0000b517          	auipc	a0,0xb
ffffffffc02010bc:	0d850513          	addi	a0,a0,216 # ffffffffc020c190 <commands+0x890>
ffffffffc02010c0:	6442                	ld	s0,16(sp)
ffffffffc02010c2:	60e2                	ld	ra,24(sp)
ffffffffc02010c4:	64a2                	ld	s1,8(sp)
ffffffffc02010c6:	6105                	addi	sp,sp,32
ffffffffc02010c8:	8deff06f          	j	ffffffffc02001a6 <cprintf>
ffffffffc02010cc:	0000b517          	auipc	a0,0xb
ffffffffc02010d0:	0e450513          	addi	a0,a0,228 # ffffffffc020c1b0 <commands+0x8b0>
ffffffffc02010d4:	b7f5                	j	ffffffffc02010c0 <exception_handler+0x50>
ffffffffc02010d6:	10053783          	ld	a5,256(a0)
ffffffffc02010da:	10853683          	ld	a3,264(a0)
ffffffffc02010de:	11053703          	ld	a4,272(a0)
ffffffffc02010e2:	1007f793          	andi	a5,a5,256
ffffffffc02010e6:	14079f63          	bnez	a5,ffffffffc0201244 <exception_handler+0x1d4>
ffffffffc02010ea:	00095497          	auipc	s1,0x95
ffffffffc02010ee:	7d648493          	addi	s1,s1,2006 # ffffffffc02968c0 <current>
ffffffffc02010f2:	6090                	ld	a2,0(s1)
ffffffffc02010f4:	14060863          	beqz	a2,ffffffffc0201244 <exception_handler+0x1d4>
ffffffffc02010f8:	424c                	lw	a1,4(a2)
ffffffffc02010fa:	0000b517          	auipc	a0,0xb
ffffffffc02010fe:	13e50513          	addi	a0,a0,318 # ffffffffc020c238 <commands+0x938>
ffffffffc0201102:	0b460613          	addi	a2,a2,180
ffffffffc0201106:	8a0ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020110a:	6098                	ld	a4,0(s1)
ffffffffc020110c:	60e2                	ld	ra,24(sp)
ffffffffc020110e:	6442                	ld	s0,16(sp)
ffffffffc0201110:	0b072783          	lw	a5,176(a4)
ffffffffc0201114:	64a2                	ld	s1,8(sp)
ffffffffc0201116:	0017e793          	ori	a5,a5,1
ffffffffc020111a:	0af72823          	sw	a5,176(a4)
ffffffffc020111e:	6105                	addi	sp,sp,32
ffffffffc0201120:	8082                	ret
ffffffffc0201122:	10053783          	ld	a5,256(a0)
ffffffffc0201126:	10853683          	ld	a3,264(a0)
ffffffffc020112a:	11053703          	ld	a4,272(a0)
ffffffffc020112e:	1007f793          	andi	a5,a5,256
ffffffffc0201132:	e3f5                	bnez	a5,ffffffffc0201216 <exception_handler+0x1a6>
ffffffffc0201134:	00095497          	auipc	s1,0x95
ffffffffc0201138:	78c48493          	addi	s1,s1,1932 # ffffffffc02968c0 <current>
ffffffffc020113c:	6090                	ld	a2,0(s1)
ffffffffc020113e:	ce61                	beqz	a2,ffffffffc0201216 <exception_handler+0x1a6>
ffffffffc0201140:	424c                	lw	a1,4(a2)
ffffffffc0201142:	0000b517          	auipc	a0,0xb
ffffffffc0201146:	19650513          	addi	a0,a0,406 # ffffffffc020c2d8 <commands+0x9d8>
ffffffffc020114a:	0b460613          	addi	a2,a2,180
ffffffffc020114e:	bf65                	j	ffffffffc0201106 <exception_handler+0x96>
ffffffffc0201150:	10053783          	ld	a5,256(a0)
ffffffffc0201154:	10853683          	ld	a3,264(a0)
ffffffffc0201158:	11053703          	ld	a4,272(a0)
ffffffffc020115c:	1007f793          	andi	a5,a5,256
ffffffffc0201160:	e7c1                	bnez	a5,ffffffffc02011e8 <exception_handler+0x178>
ffffffffc0201162:	00095497          	auipc	s1,0x95
ffffffffc0201166:	75e48493          	addi	s1,s1,1886 # ffffffffc02968c0 <current>
ffffffffc020116a:	6090                	ld	a2,0(s1)
ffffffffc020116c:	ce35                	beqz	a2,ffffffffc02011e8 <exception_handler+0x178>
ffffffffc020116e:	424c                	lw	a1,4(a2)
ffffffffc0201170:	0000b517          	auipc	a0,0xb
ffffffffc0201174:	21050513          	addi	a0,a0,528 # ffffffffc020c380 <commands+0xa80>
ffffffffc0201178:	0b460613          	addi	a2,a2,180
ffffffffc020117c:	b769                	j	ffffffffc0201106 <exception_handler+0x96>
ffffffffc020117e:	0000b517          	auipc	a0,0xb
ffffffffc0201182:	f0a50513          	addi	a0,a0,-246 # ffffffffc020c088 <commands+0x788>
ffffffffc0201186:	bf2d                	j	ffffffffc02010c0 <exception_handler+0x50>
ffffffffc0201188:	0000b517          	auipc	a0,0xb
ffffffffc020118c:	f2050513          	addi	a0,a0,-224 # ffffffffc020c0a8 <commands+0x7a8>
ffffffffc0201190:	bf05                	j	ffffffffc02010c0 <exception_handler+0x50>
ffffffffc0201192:	0000b517          	auipc	a0,0xb
ffffffffc0201196:	f3650513          	addi	a0,a0,-202 # ffffffffc020c0c8 <commands+0x7c8>
ffffffffc020119a:	b71d                	j	ffffffffc02010c0 <exception_handler+0x50>
ffffffffc020119c:	0000b517          	auipc	a0,0xb
ffffffffc02011a0:	f4450513          	addi	a0,a0,-188 # ffffffffc020c0e0 <commands+0x7e0>
ffffffffc02011a4:	bf31                	j	ffffffffc02010c0 <exception_handler+0x50>
ffffffffc02011a6:	0000b517          	auipc	a0,0xb
ffffffffc02011aa:	f4a50513          	addi	a0,a0,-182 # ffffffffc020c0f0 <commands+0x7f0>
ffffffffc02011ae:	bf09                	j	ffffffffc02010c0 <exception_handler+0x50>
ffffffffc02011b0:	0000b517          	auipc	a0,0xb
ffffffffc02011b4:	f6050513          	addi	a0,a0,-160 # ffffffffc020c110 <commands+0x810>
ffffffffc02011b8:	b721                	j	ffffffffc02010c0 <exception_handler+0x50>
ffffffffc02011ba:	0000b517          	auipc	a0,0xb
ffffffffc02011be:	f9e50513          	addi	a0,a0,-98 # ffffffffc020c158 <commands+0x858>
ffffffffc02011c2:	bdfd                	j	ffffffffc02010c0 <exception_handler+0x50>
ffffffffc02011c4:	8522                	mv	a0,s0
ffffffffc02011c6:	6442                	ld	s0,16(sp)
ffffffffc02011c8:	60e2                	ld	ra,24(sp)
ffffffffc02011ca:	64a2                	ld	s1,8(sp)
ffffffffc02011cc:	6105                	addi	sp,sp,32
ffffffffc02011ce:	bb75                	j	ffffffffc0200f8a <print_trapframe>
ffffffffc02011d0:	0000b617          	auipc	a2,0xb
ffffffffc02011d4:	f5860613          	addi	a2,a2,-168 # ffffffffc020c128 <commands+0x828>
ffffffffc02011d8:	0b200593          	li	a1,178
ffffffffc02011dc:	0000b517          	auipc	a0,0xb
ffffffffc02011e0:	f6450513          	addi	a0,a0,-156 # ffffffffc020c140 <commands+0x840>
ffffffffc02011e4:	abaff0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02011e8:	863a                	mv	a2,a4
ffffffffc02011ea:	85b6                	mv	a1,a3
ffffffffc02011ec:	0000b517          	auipc	a0,0xb
ffffffffc02011f0:	12c50513          	addi	a0,a0,300 # ffffffffc020c318 <commands+0xa18>
ffffffffc02011f4:	fb3fe0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02011f8:	8522                	mv	a0,s0
ffffffffc02011fa:	d91ff0ef          	jal	ra,ffffffffc0200f8a <print_trapframe>
ffffffffc02011fe:	0000b617          	auipc	a2,0xb
ffffffffc0201202:	15a60613          	addi	a2,a2,346 # ffffffffc020c358 <commands+0xa58>
ffffffffc0201206:	0e500593          	li	a1,229
ffffffffc020120a:	0000b517          	auipc	a0,0xb
ffffffffc020120e:	f3650513          	addi	a0,a0,-202 # ffffffffc020c140 <commands+0x840>
ffffffffc0201212:	a8cff0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201216:	863a                	mv	a2,a4
ffffffffc0201218:	85b6                	mv	a1,a3
ffffffffc020121a:	0000b517          	auipc	a0,0xb
ffffffffc020121e:	06650513          	addi	a0,a0,102 # ffffffffc020c280 <commands+0x980>
ffffffffc0201222:	f85fe0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0201226:	8522                	mv	a0,s0
ffffffffc0201228:	d63ff0ef          	jal	ra,ffffffffc0200f8a <print_trapframe>
ffffffffc020122c:	0000b617          	auipc	a2,0xb
ffffffffc0201230:	08c60613          	addi	a2,a2,140 # ffffffffc020c2b8 <commands+0x9b8>
ffffffffc0201234:	0d900593          	li	a1,217
ffffffffc0201238:	0000b517          	auipc	a0,0xb
ffffffffc020123c:	f0850513          	addi	a0,a0,-248 # ffffffffc020c140 <commands+0x840>
ffffffffc0201240:	a5eff0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201244:	863a                	mv	a2,a4
ffffffffc0201246:	85b6                	mv	a1,a3
ffffffffc0201248:	0000b517          	auipc	a0,0xb
ffffffffc020124c:	f8850513          	addi	a0,a0,-120 # ffffffffc020c1d0 <commands+0x8d0>
ffffffffc0201250:	f57fe0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0201254:	8522                	mv	a0,s0
ffffffffc0201256:	d35ff0ef          	jal	ra,ffffffffc0200f8a <print_trapframe>
ffffffffc020125a:	0000b617          	auipc	a2,0xb
ffffffffc020125e:	fb660613          	addi	a2,a2,-74 # ffffffffc020c210 <commands+0x910>
ffffffffc0201262:	0cd00593          	li	a1,205
ffffffffc0201266:	0000b517          	auipc	a0,0xb
ffffffffc020126a:	eda50513          	addi	a0,a0,-294 # ffffffffc020c140 <commands+0x840>
ffffffffc020126e:	a30ff0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0201272 <trap>:
ffffffffc0201272:	1101                	addi	sp,sp,-32
ffffffffc0201274:	e822                	sd	s0,16(sp)
ffffffffc0201276:	00095417          	auipc	s0,0x95
ffffffffc020127a:	64a40413          	addi	s0,s0,1610 # ffffffffc02968c0 <current>
ffffffffc020127e:	6018                	ld	a4,0(s0)
ffffffffc0201280:	ec06                	sd	ra,24(sp)
ffffffffc0201282:	e426                	sd	s1,8(sp)
ffffffffc0201284:	e04a                	sd	s2,0(sp)
ffffffffc0201286:	11853683          	ld	a3,280(a0)
ffffffffc020128a:	cf1d                	beqz	a4,ffffffffc02012c8 <trap+0x56>
ffffffffc020128c:	10053483          	ld	s1,256(a0)
ffffffffc0201290:	0a073903          	ld	s2,160(a4)
ffffffffc0201294:	f348                	sd	a0,160(a4)
ffffffffc0201296:	1004f493          	andi	s1,s1,256
ffffffffc020129a:	0206c463          	bltz	a3,ffffffffc02012c2 <trap+0x50>
ffffffffc020129e:	dd3ff0ef          	jal	ra,ffffffffc0201070 <exception_handler>
ffffffffc02012a2:	601c                	ld	a5,0(s0)
ffffffffc02012a4:	0b27b023          	sd	s2,160(a5) # 400a0 <_binary_bin_swap_img_size+0x383a0>
ffffffffc02012a8:	e499                	bnez	s1,ffffffffc02012b6 <trap+0x44>
ffffffffc02012aa:	0b07a703          	lw	a4,176(a5)
ffffffffc02012ae:	8b05                	andi	a4,a4,1
ffffffffc02012b0:	e329                	bnez	a4,ffffffffc02012f2 <trap+0x80>
ffffffffc02012b2:	6f9c                	ld	a5,24(a5)
ffffffffc02012b4:	eb85                	bnez	a5,ffffffffc02012e4 <trap+0x72>
ffffffffc02012b6:	60e2                	ld	ra,24(sp)
ffffffffc02012b8:	6442                	ld	s0,16(sp)
ffffffffc02012ba:	64a2                	ld	s1,8(sp)
ffffffffc02012bc:	6902                	ld	s2,0(sp)
ffffffffc02012be:	6105                	addi	sp,sp,32
ffffffffc02012c0:	8082                	ret
ffffffffc02012c2:	d2bff0ef          	jal	ra,ffffffffc0200fec <interrupt_handler>
ffffffffc02012c6:	bff1                	j	ffffffffc02012a2 <trap+0x30>
ffffffffc02012c8:	0006c863          	bltz	a3,ffffffffc02012d8 <trap+0x66>
ffffffffc02012cc:	6442                	ld	s0,16(sp)
ffffffffc02012ce:	60e2                	ld	ra,24(sp)
ffffffffc02012d0:	64a2                	ld	s1,8(sp)
ffffffffc02012d2:	6902                	ld	s2,0(sp)
ffffffffc02012d4:	6105                	addi	sp,sp,32
ffffffffc02012d6:	bb69                	j	ffffffffc0201070 <exception_handler>
ffffffffc02012d8:	6442                	ld	s0,16(sp)
ffffffffc02012da:	60e2                	ld	ra,24(sp)
ffffffffc02012dc:	64a2                	ld	s1,8(sp)
ffffffffc02012de:	6902                	ld	s2,0(sp)
ffffffffc02012e0:	6105                	addi	sp,sp,32
ffffffffc02012e2:	b329                	j	ffffffffc0200fec <interrupt_handler>
ffffffffc02012e4:	6442                	ld	s0,16(sp)
ffffffffc02012e6:	60e2                	ld	ra,24(sp)
ffffffffc02012e8:	64a2                	ld	s1,8(sp)
ffffffffc02012ea:	6902                	ld	s2,0(sp)
ffffffffc02012ec:	6105                	addi	sp,sp,32
ffffffffc02012ee:	16e0606f          	j	ffffffffc020745c <schedule>
ffffffffc02012f2:	555d                	li	a0,-9
ffffffffc02012f4:	695040ef          	jal	ra,ffffffffc0206188 <do_exit>
ffffffffc02012f8:	601c                	ld	a5,0(s0)
ffffffffc02012fa:	bf65                	j	ffffffffc02012b2 <trap+0x40>

ffffffffc02012fc <__alltraps>:
ffffffffc02012fc:	14011173          	csrrw	sp,sscratch,sp
ffffffffc0201300:	00011463          	bnez	sp,ffffffffc0201308 <__alltraps+0xc>
ffffffffc0201304:	14002173          	csrr	sp,sscratch
ffffffffc0201308:	712d                	addi	sp,sp,-288
ffffffffc020130a:	e002                	sd	zero,0(sp)
ffffffffc020130c:	e406                	sd	ra,8(sp)
ffffffffc020130e:	ec0e                	sd	gp,24(sp)
ffffffffc0201310:	f012                	sd	tp,32(sp)
ffffffffc0201312:	f416                	sd	t0,40(sp)
ffffffffc0201314:	f81a                	sd	t1,48(sp)
ffffffffc0201316:	fc1e                	sd	t2,56(sp)
ffffffffc0201318:	e0a2                	sd	s0,64(sp)
ffffffffc020131a:	e4a6                	sd	s1,72(sp)
ffffffffc020131c:	e8aa                	sd	a0,80(sp)
ffffffffc020131e:	ecae                	sd	a1,88(sp)
ffffffffc0201320:	f0b2                	sd	a2,96(sp)
ffffffffc0201322:	f4b6                	sd	a3,104(sp)
ffffffffc0201324:	f8ba                	sd	a4,112(sp)
ffffffffc0201326:	fcbe                	sd	a5,120(sp)
ffffffffc0201328:	e142                	sd	a6,128(sp)
ffffffffc020132a:	e546                	sd	a7,136(sp)
ffffffffc020132c:	e94a                	sd	s2,144(sp)
ffffffffc020132e:	ed4e                	sd	s3,152(sp)
ffffffffc0201330:	f152                	sd	s4,160(sp)
ffffffffc0201332:	f556                	sd	s5,168(sp)
ffffffffc0201334:	f95a                	sd	s6,176(sp)
ffffffffc0201336:	fd5e                	sd	s7,184(sp)
ffffffffc0201338:	e1e2                	sd	s8,192(sp)
ffffffffc020133a:	e5e6                	sd	s9,200(sp)
ffffffffc020133c:	e9ea                	sd	s10,208(sp)
ffffffffc020133e:	edee                	sd	s11,216(sp)
ffffffffc0201340:	f1f2                	sd	t3,224(sp)
ffffffffc0201342:	f5f6                	sd	t4,232(sp)
ffffffffc0201344:	f9fa                	sd	t5,240(sp)
ffffffffc0201346:	fdfe                	sd	t6,248(sp)
ffffffffc0201348:	14001473          	csrrw	s0,sscratch,zero
ffffffffc020134c:	100024f3          	csrr	s1,sstatus
ffffffffc0201350:	14102973          	csrr	s2,sepc
ffffffffc0201354:	143029f3          	csrr	s3,stval
ffffffffc0201358:	14202a73          	csrr	s4,scause
ffffffffc020135c:	e822                	sd	s0,16(sp)
ffffffffc020135e:	e226                	sd	s1,256(sp)
ffffffffc0201360:	e64a                	sd	s2,264(sp)
ffffffffc0201362:	ea4e                	sd	s3,272(sp)
ffffffffc0201364:	ee52                	sd	s4,280(sp)
ffffffffc0201366:	850a                	mv	a0,sp
ffffffffc0201368:	f0bff0ef          	jal	ra,ffffffffc0201272 <trap>

ffffffffc020136c <__trapret>:
ffffffffc020136c:	6492                	ld	s1,256(sp)
ffffffffc020136e:	6932                	ld	s2,264(sp)
ffffffffc0201370:	1004f413          	andi	s0,s1,256
ffffffffc0201374:	e401                	bnez	s0,ffffffffc020137c <__trapret+0x10>
ffffffffc0201376:	1200                	addi	s0,sp,288
ffffffffc0201378:	14041073          	csrw	sscratch,s0
ffffffffc020137c:	10049073          	csrw	sstatus,s1
ffffffffc0201380:	14191073          	csrw	sepc,s2
ffffffffc0201384:	60a2                	ld	ra,8(sp)
ffffffffc0201386:	61e2                	ld	gp,24(sp)
ffffffffc0201388:	7202                	ld	tp,32(sp)
ffffffffc020138a:	72a2                	ld	t0,40(sp)
ffffffffc020138c:	7342                	ld	t1,48(sp)
ffffffffc020138e:	73e2                	ld	t2,56(sp)
ffffffffc0201390:	6406                	ld	s0,64(sp)
ffffffffc0201392:	64a6                	ld	s1,72(sp)
ffffffffc0201394:	6546                	ld	a0,80(sp)
ffffffffc0201396:	65e6                	ld	a1,88(sp)
ffffffffc0201398:	7606                	ld	a2,96(sp)
ffffffffc020139a:	76a6                	ld	a3,104(sp)
ffffffffc020139c:	7746                	ld	a4,112(sp)
ffffffffc020139e:	77e6                	ld	a5,120(sp)
ffffffffc02013a0:	680a                	ld	a6,128(sp)
ffffffffc02013a2:	68aa                	ld	a7,136(sp)
ffffffffc02013a4:	694a                	ld	s2,144(sp)
ffffffffc02013a6:	69ea                	ld	s3,152(sp)
ffffffffc02013a8:	7a0a                	ld	s4,160(sp)
ffffffffc02013aa:	7aaa                	ld	s5,168(sp)
ffffffffc02013ac:	7b4a                	ld	s6,176(sp)
ffffffffc02013ae:	7bea                	ld	s7,184(sp)
ffffffffc02013b0:	6c0e                	ld	s8,192(sp)
ffffffffc02013b2:	6cae                	ld	s9,200(sp)
ffffffffc02013b4:	6d4e                	ld	s10,208(sp)
ffffffffc02013b6:	6dee                	ld	s11,216(sp)
ffffffffc02013b8:	7e0e                	ld	t3,224(sp)
ffffffffc02013ba:	7eae                	ld	t4,232(sp)
ffffffffc02013bc:	7f4e                	ld	t5,240(sp)
ffffffffc02013be:	7fee                	ld	t6,248(sp)
ffffffffc02013c0:	6142                	ld	sp,16(sp)
ffffffffc02013c2:	10200073          	sret

ffffffffc02013c6 <forkrets>:
ffffffffc02013c6:	812a                	mv	sp,a0
ffffffffc02013c8:	b755                	j	ffffffffc020136c <__trapret>

ffffffffc02013ca <default_init>:
ffffffffc02013ca:	00090797          	auipc	a5,0x90
ffffffffc02013ce:	3de78793          	addi	a5,a5,990 # ffffffffc02917a8 <free_area>
ffffffffc02013d2:	e79c                	sd	a5,8(a5)
ffffffffc02013d4:	e39c                	sd	a5,0(a5)
ffffffffc02013d6:	0007a823          	sw	zero,16(a5)
ffffffffc02013da:	8082                	ret

ffffffffc02013dc <default_nr_free_pages>:
ffffffffc02013dc:	00090517          	auipc	a0,0x90
ffffffffc02013e0:	3dc56503          	lwu	a0,988(a0) # ffffffffc02917b8 <free_area+0x10>
ffffffffc02013e4:	8082                	ret

ffffffffc02013e6 <default_check>:
ffffffffc02013e6:	715d                	addi	sp,sp,-80
ffffffffc02013e8:	e0a2                	sd	s0,64(sp)
ffffffffc02013ea:	00090417          	auipc	s0,0x90
ffffffffc02013ee:	3be40413          	addi	s0,s0,958 # ffffffffc02917a8 <free_area>
ffffffffc02013f2:	641c                	ld	a5,8(s0)
ffffffffc02013f4:	e486                	sd	ra,72(sp)
ffffffffc02013f6:	fc26                	sd	s1,56(sp)
ffffffffc02013f8:	f84a                	sd	s2,48(sp)
ffffffffc02013fa:	f44e                	sd	s3,40(sp)
ffffffffc02013fc:	f052                	sd	s4,32(sp)
ffffffffc02013fe:	ec56                	sd	s5,24(sp)
ffffffffc0201400:	e85a                	sd	s6,16(sp)
ffffffffc0201402:	e45e                	sd	s7,8(sp)
ffffffffc0201404:	e062                	sd	s8,0(sp)
ffffffffc0201406:	2a878d63          	beq	a5,s0,ffffffffc02016c0 <default_check+0x2da>
ffffffffc020140a:	4481                	li	s1,0
ffffffffc020140c:	4901                	li	s2,0
ffffffffc020140e:	ff07b703          	ld	a4,-16(a5)
ffffffffc0201412:	8b09                	andi	a4,a4,2
ffffffffc0201414:	2a070a63          	beqz	a4,ffffffffc02016c8 <default_check+0x2e2>
ffffffffc0201418:	ff87a703          	lw	a4,-8(a5)
ffffffffc020141c:	679c                	ld	a5,8(a5)
ffffffffc020141e:	2905                	addiw	s2,s2,1
ffffffffc0201420:	9cb9                	addw	s1,s1,a4
ffffffffc0201422:	fe8796e3          	bne	a5,s0,ffffffffc020140e <default_check+0x28>
ffffffffc0201426:	89a6                	mv	s3,s1
ffffffffc0201428:	6df000ef          	jal	ra,ffffffffc0202306 <nr_free_pages>
ffffffffc020142c:	6f351e63          	bne	a0,s3,ffffffffc0201b28 <default_check+0x742>
ffffffffc0201430:	4505                	li	a0,1
ffffffffc0201432:	657000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc0201436:	8aaa                	mv	s5,a0
ffffffffc0201438:	42050863          	beqz	a0,ffffffffc0201868 <default_check+0x482>
ffffffffc020143c:	4505                	li	a0,1
ffffffffc020143e:	64b000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc0201442:	89aa                	mv	s3,a0
ffffffffc0201444:	70050263          	beqz	a0,ffffffffc0201b48 <default_check+0x762>
ffffffffc0201448:	4505                	li	a0,1
ffffffffc020144a:	63f000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc020144e:	8a2a                	mv	s4,a0
ffffffffc0201450:	48050c63          	beqz	a0,ffffffffc02018e8 <default_check+0x502>
ffffffffc0201454:	293a8a63          	beq	s5,s3,ffffffffc02016e8 <default_check+0x302>
ffffffffc0201458:	28aa8863          	beq	s5,a0,ffffffffc02016e8 <default_check+0x302>
ffffffffc020145c:	28a98663          	beq	s3,a0,ffffffffc02016e8 <default_check+0x302>
ffffffffc0201460:	000aa783          	lw	a5,0(s5)
ffffffffc0201464:	2a079263          	bnez	a5,ffffffffc0201708 <default_check+0x322>
ffffffffc0201468:	0009a783          	lw	a5,0(s3)
ffffffffc020146c:	28079e63          	bnez	a5,ffffffffc0201708 <default_check+0x322>
ffffffffc0201470:	411c                	lw	a5,0(a0)
ffffffffc0201472:	28079b63          	bnez	a5,ffffffffc0201708 <default_check+0x322>
ffffffffc0201476:	00095797          	auipc	a5,0x95
ffffffffc020147a:	4327b783          	ld	a5,1074(a5) # ffffffffc02968a8 <pages>
ffffffffc020147e:	40fa8733          	sub	a4,s5,a5
ffffffffc0201482:	0000e617          	auipc	a2,0xe
ffffffffc0201486:	54663603          	ld	a2,1350(a2) # ffffffffc020f9c8 <nbase>
ffffffffc020148a:	8719                	srai	a4,a4,0x6
ffffffffc020148c:	9732                	add	a4,a4,a2
ffffffffc020148e:	00095697          	auipc	a3,0x95
ffffffffc0201492:	4126b683          	ld	a3,1042(a3) # ffffffffc02968a0 <npage>
ffffffffc0201496:	06b2                	slli	a3,a3,0xc
ffffffffc0201498:	0732                	slli	a4,a4,0xc
ffffffffc020149a:	28d77763          	bgeu	a4,a3,ffffffffc0201728 <default_check+0x342>
ffffffffc020149e:	40f98733          	sub	a4,s3,a5
ffffffffc02014a2:	8719                	srai	a4,a4,0x6
ffffffffc02014a4:	9732                	add	a4,a4,a2
ffffffffc02014a6:	0732                	slli	a4,a4,0xc
ffffffffc02014a8:	4cd77063          	bgeu	a4,a3,ffffffffc0201968 <default_check+0x582>
ffffffffc02014ac:	40f507b3          	sub	a5,a0,a5
ffffffffc02014b0:	8799                	srai	a5,a5,0x6
ffffffffc02014b2:	97b2                	add	a5,a5,a2
ffffffffc02014b4:	07b2                	slli	a5,a5,0xc
ffffffffc02014b6:	30d7f963          	bgeu	a5,a3,ffffffffc02017c8 <default_check+0x3e2>
ffffffffc02014ba:	4505                	li	a0,1
ffffffffc02014bc:	00043c03          	ld	s8,0(s0)
ffffffffc02014c0:	00843b83          	ld	s7,8(s0)
ffffffffc02014c4:	01042b03          	lw	s6,16(s0)
ffffffffc02014c8:	e400                	sd	s0,8(s0)
ffffffffc02014ca:	e000                	sd	s0,0(s0)
ffffffffc02014cc:	00090797          	auipc	a5,0x90
ffffffffc02014d0:	2e07a623          	sw	zero,748(a5) # ffffffffc02917b8 <free_area+0x10>
ffffffffc02014d4:	5b5000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc02014d8:	2c051863          	bnez	a0,ffffffffc02017a8 <default_check+0x3c2>
ffffffffc02014dc:	4585                	li	a1,1
ffffffffc02014de:	8556                	mv	a0,s5
ffffffffc02014e0:	5e7000ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc02014e4:	4585                	li	a1,1
ffffffffc02014e6:	854e                	mv	a0,s3
ffffffffc02014e8:	5df000ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc02014ec:	4585                	li	a1,1
ffffffffc02014ee:	8552                	mv	a0,s4
ffffffffc02014f0:	5d7000ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc02014f4:	4818                	lw	a4,16(s0)
ffffffffc02014f6:	478d                	li	a5,3
ffffffffc02014f8:	28f71863          	bne	a4,a5,ffffffffc0201788 <default_check+0x3a2>
ffffffffc02014fc:	4505                	li	a0,1
ffffffffc02014fe:	58b000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc0201502:	89aa                	mv	s3,a0
ffffffffc0201504:	26050263          	beqz	a0,ffffffffc0201768 <default_check+0x382>
ffffffffc0201508:	4505                	li	a0,1
ffffffffc020150a:	57f000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc020150e:	8aaa                	mv	s5,a0
ffffffffc0201510:	3a050c63          	beqz	a0,ffffffffc02018c8 <default_check+0x4e2>
ffffffffc0201514:	4505                	li	a0,1
ffffffffc0201516:	573000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc020151a:	8a2a                	mv	s4,a0
ffffffffc020151c:	38050663          	beqz	a0,ffffffffc02018a8 <default_check+0x4c2>
ffffffffc0201520:	4505                	li	a0,1
ffffffffc0201522:	567000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc0201526:	36051163          	bnez	a0,ffffffffc0201888 <default_check+0x4a2>
ffffffffc020152a:	4585                	li	a1,1
ffffffffc020152c:	854e                	mv	a0,s3
ffffffffc020152e:	599000ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc0201532:	641c                	ld	a5,8(s0)
ffffffffc0201534:	20878a63          	beq	a5,s0,ffffffffc0201748 <default_check+0x362>
ffffffffc0201538:	4505                	li	a0,1
ffffffffc020153a:	54f000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc020153e:	30a99563          	bne	s3,a0,ffffffffc0201848 <default_check+0x462>
ffffffffc0201542:	4505                	li	a0,1
ffffffffc0201544:	545000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc0201548:	2e051063          	bnez	a0,ffffffffc0201828 <default_check+0x442>
ffffffffc020154c:	481c                	lw	a5,16(s0)
ffffffffc020154e:	2a079d63          	bnez	a5,ffffffffc0201808 <default_check+0x422>
ffffffffc0201552:	854e                	mv	a0,s3
ffffffffc0201554:	4585                	li	a1,1
ffffffffc0201556:	01843023          	sd	s8,0(s0)
ffffffffc020155a:	01743423          	sd	s7,8(s0)
ffffffffc020155e:	01642823          	sw	s6,16(s0)
ffffffffc0201562:	565000ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc0201566:	4585                	li	a1,1
ffffffffc0201568:	8556                	mv	a0,s5
ffffffffc020156a:	55d000ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc020156e:	4585                	li	a1,1
ffffffffc0201570:	8552                	mv	a0,s4
ffffffffc0201572:	555000ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc0201576:	4515                	li	a0,5
ffffffffc0201578:	511000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc020157c:	89aa                	mv	s3,a0
ffffffffc020157e:	26050563          	beqz	a0,ffffffffc02017e8 <default_check+0x402>
ffffffffc0201582:	651c                	ld	a5,8(a0)
ffffffffc0201584:	8385                	srli	a5,a5,0x1
ffffffffc0201586:	8b85                	andi	a5,a5,1
ffffffffc0201588:	54079063          	bnez	a5,ffffffffc0201ac8 <default_check+0x6e2>
ffffffffc020158c:	4505                	li	a0,1
ffffffffc020158e:	00043b03          	ld	s6,0(s0)
ffffffffc0201592:	00843a83          	ld	s5,8(s0)
ffffffffc0201596:	e000                	sd	s0,0(s0)
ffffffffc0201598:	e400                	sd	s0,8(s0)
ffffffffc020159a:	4ef000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc020159e:	50051563          	bnez	a0,ffffffffc0201aa8 <default_check+0x6c2>
ffffffffc02015a2:	08098a13          	addi	s4,s3,128
ffffffffc02015a6:	8552                	mv	a0,s4
ffffffffc02015a8:	458d                	li	a1,3
ffffffffc02015aa:	01042b83          	lw	s7,16(s0)
ffffffffc02015ae:	00090797          	auipc	a5,0x90
ffffffffc02015b2:	2007a523          	sw	zero,522(a5) # ffffffffc02917b8 <free_area+0x10>
ffffffffc02015b6:	511000ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc02015ba:	4511                	li	a0,4
ffffffffc02015bc:	4cd000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc02015c0:	4c051463          	bnez	a0,ffffffffc0201a88 <default_check+0x6a2>
ffffffffc02015c4:	0889b783          	ld	a5,136(s3)
ffffffffc02015c8:	8385                	srli	a5,a5,0x1
ffffffffc02015ca:	8b85                	andi	a5,a5,1
ffffffffc02015cc:	48078e63          	beqz	a5,ffffffffc0201a68 <default_check+0x682>
ffffffffc02015d0:	0909a703          	lw	a4,144(s3)
ffffffffc02015d4:	478d                	li	a5,3
ffffffffc02015d6:	48f71963          	bne	a4,a5,ffffffffc0201a68 <default_check+0x682>
ffffffffc02015da:	450d                	li	a0,3
ffffffffc02015dc:	4ad000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc02015e0:	8c2a                	mv	s8,a0
ffffffffc02015e2:	46050363          	beqz	a0,ffffffffc0201a48 <default_check+0x662>
ffffffffc02015e6:	4505                	li	a0,1
ffffffffc02015e8:	4a1000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc02015ec:	42051e63          	bnez	a0,ffffffffc0201a28 <default_check+0x642>
ffffffffc02015f0:	418a1c63          	bne	s4,s8,ffffffffc0201a08 <default_check+0x622>
ffffffffc02015f4:	4585                	li	a1,1
ffffffffc02015f6:	854e                	mv	a0,s3
ffffffffc02015f8:	4cf000ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc02015fc:	458d                	li	a1,3
ffffffffc02015fe:	8552                	mv	a0,s4
ffffffffc0201600:	4c7000ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc0201604:	0089b783          	ld	a5,8(s3)
ffffffffc0201608:	04098c13          	addi	s8,s3,64
ffffffffc020160c:	8385                	srli	a5,a5,0x1
ffffffffc020160e:	8b85                	andi	a5,a5,1
ffffffffc0201610:	3c078c63          	beqz	a5,ffffffffc02019e8 <default_check+0x602>
ffffffffc0201614:	0109a703          	lw	a4,16(s3)
ffffffffc0201618:	4785                	li	a5,1
ffffffffc020161a:	3cf71763          	bne	a4,a5,ffffffffc02019e8 <default_check+0x602>
ffffffffc020161e:	008a3783          	ld	a5,8(s4)
ffffffffc0201622:	8385                	srli	a5,a5,0x1
ffffffffc0201624:	8b85                	andi	a5,a5,1
ffffffffc0201626:	3a078163          	beqz	a5,ffffffffc02019c8 <default_check+0x5e2>
ffffffffc020162a:	010a2703          	lw	a4,16(s4)
ffffffffc020162e:	478d                	li	a5,3
ffffffffc0201630:	38f71c63          	bne	a4,a5,ffffffffc02019c8 <default_check+0x5e2>
ffffffffc0201634:	4505                	li	a0,1
ffffffffc0201636:	453000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc020163a:	36a99763          	bne	s3,a0,ffffffffc02019a8 <default_check+0x5c2>
ffffffffc020163e:	4585                	li	a1,1
ffffffffc0201640:	487000ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc0201644:	4509                	li	a0,2
ffffffffc0201646:	443000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc020164a:	32aa1f63          	bne	s4,a0,ffffffffc0201988 <default_check+0x5a2>
ffffffffc020164e:	4589                	li	a1,2
ffffffffc0201650:	477000ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc0201654:	4585                	li	a1,1
ffffffffc0201656:	8562                	mv	a0,s8
ffffffffc0201658:	46f000ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc020165c:	4515                	li	a0,5
ffffffffc020165e:	42b000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc0201662:	89aa                	mv	s3,a0
ffffffffc0201664:	48050263          	beqz	a0,ffffffffc0201ae8 <default_check+0x702>
ffffffffc0201668:	4505                	li	a0,1
ffffffffc020166a:	41f000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc020166e:	2c051d63          	bnez	a0,ffffffffc0201948 <default_check+0x562>
ffffffffc0201672:	481c                	lw	a5,16(s0)
ffffffffc0201674:	2a079a63          	bnez	a5,ffffffffc0201928 <default_check+0x542>
ffffffffc0201678:	4595                	li	a1,5
ffffffffc020167a:	854e                	mv	a0,s3
ffffffffc020167c:	01742823          	sw	s7,16(s0)
ffffffffc0201680:	01643023          	sd	s6,0(s0)
ffffffffc0201684:	01543423          	sd	s5,8(s0)
ffffffffc0201688:	43f000ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc020168c:	641c                	ld	a5,8(s0)
ffffffffc020168e:	00878963          	beq	a5,s0,ffffffffc02016a0 <default_check+0x2ba>
ffffffffc0201692:	ff87a703          	lw	a4,-8(a5)
ffffffffc0201696:	679c                	ld	a5,8(a5)
ffffffffc0201698:	397d                	addiw	s2,s2,-1
ffffffffc020169a:	9c99                	subw	s1,s1,a4
ffffffffc020169c:	fe879be3          	bne	a5,s0,ffffffffc0201692 <default_check+0x2ac>
ffffffffc02016a0:	26091463          	bnez	s2,ffffffffc0201908 <default_check+0x522>
ffffffffc02016a4:	46049263          	bnez	s1,ffffffffc0201b08 <default_check+0x722>
ffffffffc02016a8:	60a6                	ld	ra,72(sp)
ffffffffc02016aa:	6406                	ld	s0,64(sp)
ffffffffc02016ac:	74e2                	ld	s1,56(sp)
ffffffffc02016ae:	7942                	ld	s2,48(sp)
ffffffffc02016b0:	79a2                	ld	s3,40(sp)
ffffffffc02016b2:	7a02                	ld	s4,32(sp)
ffffffffc02016b4:	6ae2                	ld	s5,24(sp)
ffffffffc02016b6:	6b42                	ld	s6,16(sp)
ffffffffc02016b8:	6ba2                	ld	s7,8(sp)
ffffffffc02016ba:	6c02                	ld	s8,0(sp)
ffffffffc02016bc:	6161                	addi	sp,sp,80
ffffffffc02016be:	8082                	ret
ffffffffc02016c0:	4981                	li	s3,0
ffffffffc02016c2:	4481                	li	s1,0
ffffffffc02016c4:	4901                	li	s2,0
ffffffffc02016c6:	b38d                	j	ffffffffc0201428 <default_check+0x42>
ffffffffc02016c8:	0000b697          	auipc	a3,0xb
ffffffffc02016cc:	d4068693          	addi	a3,a3,-704 # ffffffffc020c408 <commands+0xb08>
ffffffffc02016d0:	0000a617          	auipc	a2,0xa
ffffffffc02016d4:	44060613          	addi	a2,a2,1088 # ffffffffc020bb10 <commands+0x210>
ffffffffc02016d8:	0ef00593          	li	a1,239
ffffffffc02016dc:	0000b517          	auipc	a0,0xb
ffffffffc02016e0:	d3c50513          	addi	a0,a0,-708 # ffffffffc020c418 <commands+0xb18>
ffffffffc02016e4:	dbbfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02016e8:	0000b697          	auipc	a3,0xb
ffffffffc02016ec:	dc868693          	addi	a3,a3,-568 # ffffffffc020c4b0 <commands+0xbb0>
ffffffffc02016f0:	0000a617          	auipc	a2,0xa
ffffffffc02016f4:	42060613          	addi	a2,a2,1056 # ffffffffc020bb10 <commands+0x210>
ffffffffc02016f8:	0bc00593          	li	a1,188
ffffffffc02016fc:	0000b517          	auipc	a0,0xb
ffffffffc0201700:	d1c50513          	addi	a0,a0,-740 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201704:	d9bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201708:	0000b697          	auipc	a3,0xb
ffffffffc020170c:	dd068693          	addi	a3,a3,-560 # ffffffffc020c4d8 <commands+0xbd8>
ffffffffc0201710:	0000a617          	auipc	a2,0xa
ffffffffc0201714:	40060613          	addi	a2,a2,1024 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201718:	0bd00593          	li	a1,189
ffffffffc020171c:	0000b517          	auipc	a0,0xb
ffffffffc0201720:	cfc50513          	addi	a0,a0,-772 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201724:	d7bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201728:	0000b697          	auipc	a3,0xb
ffffffffc020172c:	df068693          	addi	a3,a3,-528 # ffffffffc020c518 <commands+0xc18>
ffffffffc0201730:	0000a617          	auipc	a2,0xa
ffffffffc0201734:	3e060613          	addi	a2,a2,992 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201738:	0bf00593          	li	a1,191
ffffffffc020173c:	0000b517          	auipc	a0,0xb
ffffffffc0201740:	cdc50513          	addi	a0,a0,-804 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201744:	d5bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201748:	0000b697          	auipc	a3,0xb
ffffffffc020174c:	e5868693          	addi	a3,a3,-424 # ffffffffc020c5a0 <commands+0xca0>
ffffffffc0201750:	0000a617          	auipc	a2,0xa
ffffffffc0201754:	3c060613          	addi	a2,a2,960 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201758:	0d800593          	li	a1,216
ffffffffc020175c:	0000b517          	auipc	a0,0xb
ffffffffc0201760:	cbc50513          	addi	a0,a0,-836 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201764:	d3bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201768:	0000b697          	auipc	a3,0xb
ffffffffc020176c:	ce868693          	addi	a3,a3,-792 # ffffffffc020c450 <commands+0xb50>
ffffffffc0201770:	0000a617          	auipc	a2,0xa
ffffffffc0201774:	3a060613          	addi	a2,a2,928 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201778:	0d100593          	li	a1,209
ffffffffc020177c:	0000b517          	auipc	a0,0xb
ffffffffc0201780:	c9c50513          	addi	a0,a0,-868 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201784:	d1bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201788:	0000b697          	auipc	a3,0xb
ffffffffc020178c:	e0868693          	addi	a3,a3,-504 # ffffffffc020c590 <commands+0xc90>
ffffffffc0201790:	0000a617          	auipc	a2,0xa
ffffffffc0201794:	38060613          	addi	a2,a2,896 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201798:	0cf00593          	li	a1,207
ffffffffc020179c:	0000b517          	auipc	a0,0xb
ffffffffc02017a0:	c7c50513          	addi	a0,a0,-900 # ffffffffc020c418 <commands+0xb18>
ffffffffc02017a4:	cfbfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02017a8:	0000b697          	auipc	a3,0xb
ffffffffc02017ac:	dd068693          	addi	a3,a3,-560 # ffffffffc020c578 <commands+0xc78>
ffffffffc02017b0:	0000a617          	auipc	a2,0xa
ffffffffc02017b4:	36060613          	addi	a2,a2,864 # ffffffffc020bb10 <commands+0x210>
ffffffffc02017b8:	0ca00593          	li	a1,202
ffffffffc02017bc:	0000b517          	auipc	a0,0xb
ffffffffc02017c0:	c5c50513          	addi	a0,a0,-932 # ffffffffc020c418 <commands+0xb18>
ffffffffc02017c4:	cdbfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02017c8:	0000b697          	auipc	a3,0xb
ffffffffc02017cc:	d9068693          	addi	a3,a3,-624 # ffffffffc020c558 <commands+0xc58>
ffffffffc02017d0:	0000a617          	auipc	a2,0xa
ffffffffc02017d4:	34060613          	addi	a2,a2,832 # ffffffffc020bb10 <commands+0x210>
ffffffffc02017d8:	0c100593          	li	a1,193
ffffffffc02017dc:	0000b517          	auipc	a0,0xb
ffffffffc02017e0:	c3c50513          	addi	a0,a0,-964 # ffffffffc020c418 <commands+0xb18>
ffffffffc02017e4:	cbbfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02017e8:	0000b697          	auipc	a3,0xb
ffffffffc02017ec:	e0068693          	addi	a3,a3,-512 # ffffffffc020c5e8 <commands+0xce8>
ffffffffc02017f0:	0000a617          	auipc	a2,0xa
ffffffffc02017f4:	32060613          	addi	a2,a2,800 # ffffffffc020bb10 <commands+0x210>
ffffffffc02017f8:	0f700593          	li	a1,247
ffffffffc02017fc:	0000b517          	auipc	a0,0xb
ffffffffc0201800:	c1c50513          	addi	a0,a0,-996 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201804:	c9bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201808:	0000b697          	auipc	a3,0xb
ffffffffc020180c:	dd068693          	addi	a3,a3,-560 # ffffffffc020c5d8 <commands+0xcd8>
ffffffffc0201810:	0000a617          	auipc	a2,0xa
ffffffffc0201814:	30060613          	addi	a2,a2,768 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201818:	0de00593          	li	a1,222
ffffffffc020181c:	0000b517          	auipc	a0,0xb
ffffffffc0201820:	bfc50513          	addi	a0,a0,-1028 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201824:	c7bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201828:	0000b697          	auipc	a3,0xb
ffffffffc020182c:	d5068693          	addi	a3,a3,-688 # ffffffffc020c578 <commands+0xc78>
ffffffffc0201830:	0000a617          	auipc	a2,0xa
ffffffffc0201834:	2e060613          	addi	a2,a2,736 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201838:	0dc00593          	li	a1,220
ffffffffc020183c:	0000b517          	auipc	a0,0xb
ffffffffc0201840:	bdc50513          	addi	a0,a0,-1060 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201844:	c5bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201848:	0000b697          	auipc	a3,0xb
ffffffffc020184c:	d7068693          	addi	a3,a3,-656 # ffffffffc020c5b8 <commands+0xcb8>
ffffffffc0201850:	0000a617          	auipc	a2,0xa
ffffffffc0201854:	2c060613          	addi	a2,a2,704 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201858:	0db00593          	li	a1,219
ffffffffc020185c:	0000b517          	auipc	a0,0xb
ffffffffc0201860:	bbc50513          	addi	a0,a0,-1092 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201864:	c3bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201868:	0000b697          	auipc	a3,0xb
ffffffffc020186c:	be868693          	addi	a3,a3,-1048 # ffffffffc020c450 <commands+0xb50>
ffffffffc0201870:	0000a617          	auipc	a2,0xa
ffffffffc0201874:	2a060613          	addi	a2,a2,672 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201878:	0b800593          	li	a1,184
ffffffffc020187c:	0000b517          	auipc	a0,0xb
ffffffffc0201880:	b9c50513          	addi	a0,a0,-1124 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201884:	c1bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201888:	0000b697          	auipc	a3,0xb
ffffffffc020188c:	cf068693          	addi	a3,a3,-784 # ffffffffc020c578 <commands+0xc78>
ffffffffc0201890:	0000a617          	auipc	a2,0xa
ffffffffc0201894:	28060613          	addi	a2,a2,640 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201898:	0d500593          	li	a1,213
ffffffffc020189c:	0000b517          	auipc	a0,0xb
ffffffffc02018a0:	b7c50513          	addi	a0,a0,-1156 # ffffffffc020c418 <commands+0xb18>
ffffffffc02018a4:	bfbfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02018a8:	0000b697          	auipc	a3,0xb
ffffffffc02018ac:	be868693          	addi	a3,a3,-1048 # ffffffffc020c490 <commands+0xb90>
ffffffffc02018b0:	0000a617          	auipc	a2,0xa
ffffffffc02018b4:	26060613          	addi	a2,a2,608 # ffffffffc020bb10 <commands+0x210>
ffffffffc02018b8:	0d300593          	li	a1,211
ffffffffc02018bc:	0000b517          	auipc	a0,0xb
ffffffffc02018c0:	b5c50513          	addi	a0,a0,-1188 # ffffffffc020c418 <commands+0xb18>
ffffffffc02018c4:	bdbfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02018c8:	0000b697          	auipc	a3,0xb
ffffffffc02018cc:	ba868693          	addi	a3,a3,-1112 # ffffffffc020c470 <commands+0xb70>
ffffffffc02018d0:	0000a617          	auipc	a2,0xa
ffffffffc02018d4:	24060613          	addi	a2,a2,576 # ffffffffc020bb10 <commands+0x210>
ffffffffc02018d8:	0d200593          	li	a1,210
ffffffffc02018dc:	0000b517          	auipc	a0,0xb
ffffffffc02018e0:	b3c50513          	addi	a0,a0,-1220 # ffffffffc020c418 <commands+0xb18>
ffffffffc02018e4:	bbbfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02018e8:	0000b697          	auipc	a3,0xb
ffffffffc02018ec:	ba868693          	addi	a3,a3,-1112 # ffffffffc020c490 <commands+0xb90>
ffffffffc02018f0:	0000a617          	auipc	a2,0xa
ffffffffc02018f4:	22060613          	addi	a2,a2,544 # ffffffffc020bb10 <commands+0x210>
ffffffffc02018f8:	0ba00593          	li	a1,186
ffffffffc02018fc:	0000b517          	auipc	a0,0xb
ffffffffc0201900:	b1c50513          	addi	a0,a0,-1252 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201904:	b9bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201908:	0000b697          	auipc	a3,0xb
ffffffffc020190c:	e3068693          	addi	a3,a3,-464 # ffffffffc020c738 <commands+0xe38>
ffffffffc0201910:	0000a617          	auipc	a2,0xa
ffffffffc0201914:	20060613          	addi	a2,a2,512 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201918:	12400593          	li	a1,292
ffffffffc020191c:	0000b517          	auipc	a0,0xb
ffffffffc0201920:	afc50513          	addi	a0,a0,-1284 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201924:	b7bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201928:	0000b697          	auipc	a3,0xb
ffffffffc020192c:	cb068693          	addi	a3,a3,-848 # ffffffffc020c5d8 <commands+0xcd8>
ffffffffc0201930:	0000a617          	auipc	a2,0xa
ffffffffc0201934:	1e060613          	addi	a2,a2,480 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201938:	11900593          	li	a1,281
ffffffffc020193c:	0000b517          	auipc	a0,0xb
ffffffffc0201940:	adc50513          	addi	a0,a0,-1316 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201944:	b5bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201948:	0000b697          	auipc	a3,0xb
ffffffffc020194c:	c3068693          	addi	a3,a3,-976 # ffffffffc020c578 <commands+0xc78>
ffffffffc0201950:	0000a617          	auipc	a2,0xa
ffffffffc0201954:	1c060613          	addi	a2,a2,448 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201958:	11700593          	li	a1,279
ffffffffc020195c:	0000b517          	auipc	a0,0xb
ffffffffc0201960:	abc50513          	addi	a0,a0,-1348 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201964:	b3bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201968:	0000b697          	auipc	a3,0xb
ffffffffc020196c:	bd068693          	addi	a3,a3,-1072 # ffffffffc020c538 <commands+0xc38>
ffffffffc0201970:	0000a617          	auipc	a2,0xa
ffffffffc0201974:	1a060613          	addi	a2,a2,416 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201978:	0c000593          	li	a1,192
ffffffffc020197c:	0000b517          	auipc	a0,0xb
ffffffffc0201980:	a9c50513          	addi	a0,a0,-1380 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201984:	b1bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201988:	0000b697          	auipc	a3,0xb
ffffffffc020198c:	d7068693          	addi	a3,a3,-656 # ffffffffc020c6f8 <commands+0xdf8>
ffffffffc0201990:	0000a617          	auipc	a2,0xa
ffffffffc0201994:	18060613          	addi	a2,a2,384 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201998:	11100593          	li	a1,273
ffffffffc020199c:	0000b517          	auipc	a0,0xb
ffffffffc02019a0:	a7c50513          	addi	a0,a0,-1412 # ffffffffc020c418 <commands+0xb18>
ffffffffc02019a4:	afbfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02019a8:	0000b697          	auipc	a3,0xb
ffffffffc02019ac:	d3068693          	addi	a3,a3,-720 # ffffffffc020c6d8 <commands+0xdd8>
ffffffffc02019b0:	0000a617          	auipc	a2,0xa
ffffffffc02019b4:	16060613          	addi	a2,a2,352 # ffffffffc020bb10 <commands+0x210>
ffffffffc02019b8:	10f00593          	li	a1,271
ffffffffc02019bc:	0000b517          	auipc	a0,0xb
ffffffffc02019c0:	a5c50513          	addi	a0,a0,-1444 # ffffffffc020c418 <commands+0xb18>
ffffffffc02019c4:	adbfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02019c8:	0000b697          	auipc	a3,0xb
ffffffffc02019cc:	ce868693          	addi	a3,a3,-792 # ffffffffc020c6b0 <commands+0xdb0>
ffffffffc02019d0:	0000a617          	auipc	a2,0xa
ffffffffc02019d4:	14060613          	addi	a2,a2,320 # ffffffffc020bb10 <commands+0x210>
ffffffffc02019d8:	10d00593          	li	a1,269
ffffffffc02019dc:	0000b517          	auipc	a0,0xb
ffffffffc02019e0:	a3c50513          	addi	a0,a0,-1476 # ffffffffc020c418 <commands+0xb18>
ffffffffc02019e4:	abbfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02019e8:	0000b697          	auipc	a3,0xb
ffffffffc02019ec:	ca068693          	addi	a3,a3,-864 # ffffffffc020c688 <commands+0xd88>
ffffffffc02019f0:	0000a617          	auipc	a2,0xa
ffffffffc02019f4:	12060613          	addi	a2,a2,288 # ffffffffc020bb10 <commands+0x210>
ffffffffc02019f8:	10c00593          	li	a1,268
ffffffffc02019fc:	0000b517          	auipc	a0,0xb
ffffffffc0201a00:	a1c50513          	addi	a0,a0,-1508 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201a04:	a9bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201a08:	0000b697          	auipc	a3,0xb
ffffffffc0201a0c:	c7068693          	addi	a3,a3,-912 # ffffffffc020c678 <commands+0xd78>
ffffffffc0201a10:	0000a617          	auipc	a2,0xa
ffffffffc0201a14:	10060613          	addi	a2,a2,256 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201a18:	10700593          	li	a1,263
ffffffffc0201a1c:	0000b517          	auipc	a0,0xb
ffffffffc0201a20:	9fc50513          	addi	a0,a0,-1540 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201a24:	a7bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201a28:	0000b697          	auipc	a3,0xb
ffffffffc0201a2c:	b5068693          	addi	a3,a3,-1200 # ffffffffc020c578 <commands+0xc78>
ffffffffc0201a30:	0000a617          	auipc	a2,0xa
ffffffffc0201a34:	0e060613          	addi	a2,a2,224 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201a38:	10600593          	li	a1,262
ffffffffc0201a3c:	0000b517          	auipc	a0,0xb
ffffffffc0201a40:	9dc50513          	addi	a0,a0,-1572 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201a44:	a5bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201a48:	0000b697          	auipc	a3,0xb
ffffffffc0201a4c:	c1068693          	addi	a3,a3,-1008 # ffffffffc020c658 <commands+0xd58>
ffffffffc0201a50:	0000a617          	auipc	a2,0xa
ffffffffc0201a54:	0c060613          	addi	a2,a2,192 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201a58:	10500593          	li	a1,261
ffffffffc0201a5c:	0000b517          	auipc	a0,0xb
ffffffffc0201a60:	9bc50513          	addi	a0,a0,-1604 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201a64:	a3bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201a68:	0000b697          	auipc	a3,0xb
ffffffffc0201a6c:	bc068693          	addi	a3,a3,-1088 # ffffffffc020c628 <commands+0xd28>
ffffffffc0201a70:	0000a617          	auipc	a2,0xa
ffffffffc0201a74:	0a060613          	addi	a2,a2,160 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201a78:	10400593          	li	a1,260
ffffffffc0201a7c:	0000b517          	auipc	a0,0xb
ffffffffc0201a80:	99c50513          	addi	a0,a0,-1636 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201a84:	a1bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201a88:	0000b697          	auipc	a3,0xb
ffffffffc0201a8c:	b8868693          	addi	a3,a3,-1144 # ffffffffc020c610 <commands+0xd10>
ffffffffc0201a90:	0000a617          	auipc	a2,0xa
ffffffffc0201a94:	08060613          	addi	a2,a2,128 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201a98:	10300593          	li	a1,259
ffffffffc0201a9c:	0000b517          	auipc	a0,0xb
ffffffffc0201aa0:	97c50513          	addi	a0,a0,-1668 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201aa4:	9fbfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201aa8:	0000b697          	auipc	a3,0xb
ffffffffc0201aac:	ad068693          	addi	a3,a3,-1328 # ffffffffc020c578 <commands+0xc78>
ffffffffc0201ab0:	0000a617          	auipc	a2,0xa
ffffffffc0201ab4:	06060613          	addi	a2,a2,96 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201ab8:	0fd00593          	li	a1,253
ffffffffc0201abc:	0000b517          	auipc	a0,0xb
ffffffffc0201ac0:	95c50513          	addi	a0,a0,-1700 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201ac4:	9dbfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201ac8:	0000b697          	auipc	a3,0xb
ffffffffc0201acc:	b3068693          	addi	a3,a3,-1232 # ffffffffc020c5f8 <commands+0xcf8>
ffffffffc0201ad0:	0000a617          	auipc	a2,0xa
ffffffffc0201ad4:	04060613          	addi	a2,a2,64 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201ad8:	0f800593          	li	a1,248
ffffffffc0201adc:	0000b517          	auipc	a0,0xb
ffffffffc0201ae0:	93c50513          	addi	a0,a0,-1732 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201ae4:	9bbfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201ae8:	0000b697          	auipc	a3,0xb
ffffffffc0201aec:	c3068693          	addi	a3,a3,-976 # ffffffffc020c718 <commands+0xe18>
ffffffffc0201af0:	0000a617          	auipc	a2,0xa
ffffffffc0201af4:	02060613          	addi	a2,a2,32 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201af8:	11600593          	li	a1,278
ffffffffc0201afc:	0000b517          	auipc	a0,0xb
ffffffffc0201b00:	91c50513          	addi	a0,a0,-1764 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201b04:	99bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201b08:	0000b697          	auipc	a3,0xb
ffffffffc0201b0c:	c4068693          	addi	a3,a3,-960 # ffffffffc020c748 <commands+0xe48>
ffffffffc0201b10:	0000a617          	auipc	a2,0xa
ffffffffc0201b14:	00060613          	mv	a2,a2
ffffffffc0201b18:	12500593          	li	a1,293
ffffffffc0201b1c:	0000b517          	auipc	a0,0xb
ffffffffc0201b20:	8fc50513          	addi	a0,a0,-1796 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201b24:	97bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201b28:	0000b697          	auipc	a3,0xb
ffffffffc0201b2c:	90868693          	addi	a3,a3,-1784 # ffffffffc020c430 <commands+0xb30>
ffffffffc0201b30:	0000a617          	auipc	a2,0xa
ffffffffc0201b34:	fe060613          	addi	a2,a2,-32 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201b38:	0f200593          	li	a1,242
ffffffffc0201b3c:	0000b517          	auipc	a0,0xb
ffffffffc0201b40:	8dc50513          	addi	a0,a0,-1828 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201b44:	95bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201b48:	0000b697          	auipc	a3,0xb
ffffffffc0201b4c:	92868693          	addi	a3,a3,-1752 # ffffffffc020c470 <commands+0xb70>
ffffffffc0201b50:	0000a617          	auipc	a2,0xa
ffffffffc0201b54:	fc060613          	addi	a2,a2,-64 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201b58:	0b900593          	li	a1,185
ffffffffc0201b5c:	0000b517          	auipc	a0,0xb
ffffffffc0201b60:	8bc50513          	addi	a0,a0,-1860 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201b64:	93bfe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0201b68 <default_free_pages>:
ffffffffc0201b68:	1141                	addi	sp,sp,-16
ffffffffc0201b6a:	e406                	sd	ra,8(sp)
ffffffffc0201b6c:	14058463          	beqz	a1,ffffffffc0201cb4 <default_free_pages+0x14c>
ffffffffc0201b70:	00659693          	slli	a3,a1,0x6
ffffffffc0201b74:	96aa                	add	a3,a3,a0
ffffffffc0201b76:	87aa                	mv	a5,a0
ffffffffc0201b78:	02d50263          	beq	a0,a3,ffffffffc0201b9c <default_free_pages+0x34>
ffffffffc0201b7c:	6798                	ld	a4,8(a5)
ffffffffc0201b7e:	8b05                	andi	a4,a4,1
ffffffffc0201b80:	10071a63          	bnez	a4,ffffffffc0201c94 <default_free_pages+0x12c>
ffffffffc0201b84:	6798                	ld	a4,8(a5)
ffffffffc0201b86:	8b09                	andi	a4,a4,2
ffffffffc0201b88:	10071663          	bnez	a4,ffffffffc0201c94 <default_free_pages+0x12c>
ffffffffc0201b8c:	0007b423          	sd	zero,8(a5)
ffffffffc0201b90:	0007a023          	sw	zero,0(a5)
ffffffffc0201b94:	04078793          	addi	a5,a5,64
ffffffffc0201b98:	fed792e3          	bne	a5,a3,ffffffffc0201b7c <default_free_pages+0x14>
ffffffffc0201b9c:	2581                	sext.w	a1,a1
ffffffffc0201b9e:	c90c                	sw	a1,16(a0)
ffffffffc0201ba0:	00850893          	addi	a7,a0,8
ffffffffc0201ba4:	4789                	li	a5,2
ffffffffc0201ba6:	40f8b02f          	amoor.d	zero,a5,(a7)
ffffffffc0201baa:	00090697          	auipc	a3,0x90
ffffffffc0201bae:	bfe68693          	addi	a3,a3,-1026 # ffffffffc02917a8 <free_area>
ffffffffc0201bb2:	4a98                	lw	a4,16(a3)
ffffffffc0201bb4:	669c                	ld	a5,8(a3)
ffffffffc0201bb6:	01850613          	addi	a2,a0,24
ffffffffc0201bba:	9db9                	addw	a1,a1,a4
ffffffffc0201bbc:	ca8c                	sw	a1,16(a3)
ffffffffc0201bbe:	0ad78463          	beq	a5,a3,ffffffffc0201c66 <default_free_pages+0xfe>
ffffffffc0201bc2:	fe878713          	addi	a4,a5,-24
ffffffffc0201bc6:	0006b803          	ld	a6,0(a3)
ffffffffc0201bca:	4581                	li	a1,0
ffffffffc0201bcc:	00e56a63          	bltu	a0,a4,ffffffffc0201be0 <default_free_pages+0x78>
ffffffffc0201bd0:	6798                	ld	a4,8(a5)
ffffffffc0201bd2:	04d70c63          	beq	a4,a3,ffffffffc0201c2a <default_free_pages+0xc2>
ffffffffc0201bd6:	87ba                	mv	a5,a4
ffffffffc0201bd8:	fe878713          	addi	a4,a5,-24
ffffffffc0201bdc:	fee57ae3          	bgeu	a0,a4,ffffffffc0201bd0 <default_free_pages+0x68>
ffffffffc0201be0:	c199                	beqz	a1,ffffffffc0201be6 <default_free_pages+0x7e>
ffffffffc0201be2:	0106b023          	sd	a6,0(a3)
ffffffffc0201be6:	6398                	ld	a4,0(a5)
ffffffffc0201be8:	e390                	sd	a2,0(a5)
ffffffffc0201bea:	e710                	sd	a2,8(a4)
ffffffffc0201bec:	f11c                	sd	a5,32(a0)
ffffffffc0201bee:	ed18                	sd	a4,24(a0)
ffffffffc0201bf0:	00d70d63          	beq	a4,a3,ffffffffc0201c0a <default_free_pages+0xa2>
ffffffffc0201bf4:	ff872583          	lw	a1,-8(a4)
ffffffffc0201bf8:	fe870613          	addi	a2,a4,-24
ffffffffc0201bfc:	02059813          	slli	a6,a1,0x20
ffffffffc0201c00:	01a85793          	srli	a5,a6,0x1a
ffffffffc0201c04:	97b2                	add	a5,a5,a2
ffffffffc0201c06:	02f50c63          	beq	a0,a5,ffffffffc0201c3e <default_free_pages+0xd6>
ffffffffc0201c0a:	711c                	ld	a5,32(a0)
ffffffffc0201c0c:	00d78c63          	beq	a5,a3,ffffffffc0201c24 <default_free_pages+0xbc>
ffffffffc0201c10:	4910                	lw	a2,16(a0)
ffffffffc0201c12:	fe878693          	addi	a3,a5,-24
ffffffffc0201c16:	02061593          	slli	a1,a2,0x20
ffffffffc0201c1a:	01a5d713          	srli	a4,a1,0x1a
ffffffffc0201c1e:	972a                	add	a4,a4,a0
ffffffffc0201c20:	04e68a63          	beq	a3,a4,ffffffffc0201c74 <default_free_pages+0x10c>
ffffffffc0201c24:	60a2                	ld	ra,8(sp)
ffffffffc0201c26:	0141                	addi	sp,sp,16
ffffffffc0201c28:	8082                	ret
ffffffffc0201c2a:	e790                	sd	a2,8(a5)
ffffffffc0201c2c:	f114                	sd	a3,32(a0)
ffffffffc0201c2e:	6798                	ld	a4,8(a5)
ffffffffc0201c30:	ed1c                	sd	a5,24(a0)
ffffffffc0201c32:	02d70763          	beq	a4,a3,ffffffffc0201c60 <default_free_pages+0xf8>
ffffffffc0201c36:	8832                	mv	a6,a2
ffffffffc0201c38:	4585                	li	a1,1
ffffffffc0201c3a:	87ba                	mv	a5,a4
ffffffffc0201c3c:	bf71                	j	ffffffffc0201bd8 <default_free_pages+0x70>
ffffffffc0201c3e:	491c                	lw	a5,16(a0)
ffffffffc0201c40:	9dbd                	addw	a1,a1,a5
ffffffffc0201c42:	feb72c23          	sw	a1,-8(a4)
ffffffffc0201c46:	57f5                	li	a5,-3
ffffffffc0201c48:	60f8b02f          	amoand.d	zero,a5,(a7)
ffffffffc0201c4c:	01853803          	ld	a6,24(a0)
ffffffffc0201c50:	710c                	ld	a1,32(a0)
ffffffffc0201c52:	8532                	mv	a0,a2
ffffffffc0201c54:	00b83423          	sd	a1,8(a6)
ffffffffc0201c58:	671c                	ld	a5,8(a4)
ffffffffc0201c5a:	0105b023          	sd	a6,0(a1)
ffffffffc0201c5e:	b77d                	j	ffffffffc0201c0c <default_free_pages+0xa4>
ffffffffc0201c60:	e290                	sd	a2,0(a3)
ffffffffc0201c62:	873e                	mv	a4,a5
ffffffffc0201c64:	bf41                	j	ffffffffc0201bf4 <default_free_pages+0x8c>
ffffffffc0201c66:	60a2                	ld	ra,8(sp)
ffffffffc0201c68:	e390                	sd	a2,0(a5)
ffffffffc0201c6a:	e790                	sd	a2,8(a5)
ffffffffc0201c6c:	f11c                	sd	a5,32(a0)
ffffffffc0201c6e:	ed1c                	sd	a5,24(a0)
ffffffffc0201c70:	0141                	addi	sp,sp,16
ffffffffc0201c72:	8082                	ret
ffffffffc0201c74:	ff87a703          	lw	a4,-8(a5)
ffffffffc0201c78:	ff078693          	addi	a3,a5,-16
ffffffffc0201c7c:	9e39                	addw	a2,a2,a4
ffffffffc0201c7e:	c910                	sw	a2,16(a0)
ffffffffc0201c80:	5775                	li	a4,-3
ffffffffc0201c82:	60e6b02f          	amoand.d	zero,a4,(a3)
ffffffffc0201c86:	6398                	ld	a4,0(a5)
ffffffffc0201c88:	679c                	ld	a5,8(a5)
ffffffffc0201c8a:	60a2                	ld	ra,8(sp)
ffffffffc0201c8c:	e71c                	sd	a5,8(a4)
ffffffffc0201c8e:	e398                	sd	a4,0(a5)
ffffffffc0201c90:	0141                	addi	sp,sp,16
ffffffffc0201c92:	8082                	ret
ffffffffc0201c94:	0000b697          	auipc	a3,0xb
ffffffffc0201c98:	acc68693          	addi	a3,a3,-1332 # ffffffffc020c760 <commands+0xe60>
ffffffffc0201c9c:	0000a617          	auipc	a2,0xa
ffffffffc0201ca0:	e7460613          	addi	a2,a2,-396 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201ca4:	08200593          	li	a1,130
ffffffffc0201ca8:	0000a517          	auipc	a0,0xa
ffffffffc0201cac:	77050513          	addi	a0,a0,1904 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201cb0:	feefe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201cb4:	0000b697          	auipc	a3,0xb
ffffffffc0201cb8:	aa468693          	addi	a3,a3,-1372 # ffffffffc020c758 <commands+0xe58>
ffffffffc0201cbc:	0000a617          	auipc	a2,0xa
ffffffffc0201cc0:	e5460613          	addi	a2,a2,-428 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201cc4:	07f00593          	li	a1,127
ffffffffc0201cc8:	0000a517          	auipc	a0,0xa
ffffffffc0201ccc:	75050513          	addi	a0,a0,1872 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201cd0:	fcefe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0201cd4 <default_alloc_pages>:
ffffffffc0201cd4:	c941                	beqz	a0,ffffffffc0201d64 <default_alloc_pages+0x90>
ffffffffc0201cd6:	00090597          	auipc	a1,0x90
ffffffffc0201cda:	ad258593          	addi	a1,a1,-1326 # ffffffffc02917a8 <free_area>
ffffffffc0201cde:	0105a803          	lw	a6,16(a1)
ffffffffc0201ce2:	872a                	mv	a4,a0
ffffffffc0201ce4:	02081793          	slli	a5,a6,0x20
ffffffffc0201ce8:	9381                	srli	a5,a5,0x20
ffffffffc0201cea:	00a7ee63          	bltu	a5,a0,ffffffffc0201d06 <default_alloc_pages+0x32>
ffffffffc0201cee:	87ae                	mv	a5,a1
ffffffffc0201cf0:	a801                	j	ffffffffc0201d00 <default_alloc_pages+0x2c>
ffffffffc0201cf2:	ff87a683          	lw	a3,-8(a5)
ffffffffc0201cf6:	02069613          	slli	a2,a3,0x20
ffffffffc0201cfa:	9201                	srli	a2,a2,0x20
ffffffffc0201cfc:	00e67763          	bgeu	a2,a4,ffffffffc0201d0a <default_alloc_pages+0x36>
ffffffffc0201d00:	679c                	ld	a5,8(a5)
ffffffffc0201d02:	feb798e3          	bne	a5,a1,ffffffffc0201cf2 <default_alloc_pages+0x1e>
ffffffffc0201d06:	4501                	li	a0,0
ffffffffc0201d08:	8082                	ret
ffffffffc0201d0a:	0007b883          	ld	a7,0(a5)
ffffffffc0201d0e:	0087b303          	ld	t1,8(a5)
ffffffffc0201d12:	fe878513          	addi	a0,a5,-24
ffffffffc0201d16:	00070e1b          	sext.w	t3,a4
ffffffffc0201d1a:	0068b423          	sd	t1,8(a7) # 10000008 <_binary_bin_sfs_img_size+0xff8ad08>
ffffffffc0201d1e:	01133023          	sd	a7,0(t1)
ffffffffc0201d22:	02c77863          	bgeu	a4,a2,ffffffffc0201d52 <default_alloc_pages+0x7e>
ffffffffc0201d26:	071a                	slli	a4,a4,0x6
ffffffffc0201d28:	972a                	add	a4,a4,a0
ffffffffc0201d2a:	41c686bb          	subw	a3,a3,t3
ffffffffc0201d2e:	cb14                	sw	a3,16(a4)
ffffffffc0201d30:	00870613          	addi	a2,a4,8
ffffffffc0201d34:	4689                	li	a3,2
ffffffffc0201d36:	40d6302f          	amoor.d	zero,a3,(a2)
ffffffffc0201d3a:	0088b683          	ld	a3,8(a7)
ffffffffc0201d3e:	01870613          	addi	a2,a4,24
ffffffffc0201d42:	0105a803          	lw	a6,16(a1)
ffffffffc0201d46:	e290                	sd	a2,0(a3)
ffffffffc0201d48:	00c8b423          	sd	a2,8(a7)
ffffffffc0201d4c:	f314                	sd	a3,32(a4)
ffffffffc0201d4e:	01173c23          	sd	a7,24(a4)
ffffffffc0201d52:	41c8083b          	subw	a6,a6,t3
ffffffffc0201d56:	0105a823          	sw	a6,16(a1)
ffffffffc0201d5a:	5775                	li	a4,-3
ffffffffc0201d5c:	17c1                	addi	a5,a5,-16
ffffffffc0201d5e:	60e7b02f          	amoand.d	zero,a4,(a5)
ffffffffc0201d62:	8082                	ret
ffffffffc0201d64:	1141                	addi	sp,sp,-16
ffffffffc0201d66:	0000b697          	auipc	a3,0xb
ffffffffc0201d6a:	9f268693          	addi	a3,a3,-1550 # ffffffffc020c758 <commands+0xe58>
ffffffffc0201d6e:	0000a617          	auipc	a2,0xa
ffffffffc0201d72:	da260613          	addi	a2,a2,-606 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201d76:	06100593          	li	a1,97
ffffffffc0201d7a:	0000a517          	auipc	a0,0xa
ffffffffc0201d7e:	69e50513          	addi	a0,a0,1694 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201d82:	e406                	sd	ra,8(sp)
ffffffffc0201d84:	f1afe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0201d88 <default_init_memmap>:
ffffffffc0201d88:	1141                	addi	sp,sp,-16
ffffffffc0201d8a:	e406                	sd	ra,8(sp)
ffffffffc0201d8c:	c5f1                	beqz	a1,ffffffffc0201e58 <default_init_memmap+0xd0>
ffffffffc0201d8e:	00659693          	slli	a3,a1,0x6
ffffffffc0201d92:	96aa                	add	a3,a3,a0
ffffffffc0201d94:	87aa                	mv	a5,a0
ffffffffc0201d96:	00d50f63          	beq	a0,a3,ffffffffc0201db4 <default_init_memmap+0x2c>
ffffffffc0201d9a:	6798                	ld	a4,8(a5)
ffffffffc0201d9c:	8b05                	andi	a4,a4,1
ffffffffc0201d9e:	cf49                	beqz	a4,ffffffffc0201e38 <default_init_memmap+0xb0>
ffffffffc0201da0:	0007a823          	sw	zero,16(a5)
ffffffffc0201da4:	0007b423          	sd	zero,8(a5)
ffffffffc0201da8:	0007a023          	sw	zero,0(a5)
ffffffffc0201dac:	04078793          	addi	a5,a5,64
ffffffffc0201db0:	fed795e3          	bne	a5,a3,ffffffffc0201d9a <default_init_memmap+0x12>
ffffffffc0201db4:	2581                	sext.w	a1,a1
ffffffffc0201db6:	c90c                	sw	a1,16(a0)
ffffffffc0201db8:	4789                	li	a5,2
ffffffffc0201dba:	00850713          	addi	a4,a0,8
ffffffffc0201dbe:	40f7302f          	amoor.d	zero,a5,(a4)
ffffffffc0201dc2:	00090697          	auipc	a3,0x90
ffffffffc0201dc6:	9e668693          	addi	a3,a3,-1562 # ffffffffc02917a8 <free_area>
ffffffffc0201dca:	4a98                	lw	a4,16(a3)
ffffffffc0201dcc:	669c                	ld	a5,8(a3)
ffffffffc0201dce:	01850613          	addi	a2,a0,24
ffffffffc0201dd2:	9db9                	addw	a1,a1,a4
ffffffffc0201dd4:	ca8c                	sw	a1,16(a3)
ffffffffc0201dd6:	04d78a63          	beq	a5,a3,ffffffffc0201e2a <default_init_memmap+0xa2>
ffffffffc0201dda:	fe878713          	addi	a4,a5,-24
ffffffffc0201dde:	0006b803          	ld	a6,0(a3)
ffffffffc0201de2:	4581                	li	a1,0
ffffffffc0201de4:	00e56a63          	bltu	a0,a4,ffffffffc0201df8 <default_init_memmap+0x70>
ffffffffc0201de8:	6798                	ld	a4,8(a5)
ffffffffc0201dea:	02d70263          	beq	a4,a3,ffffffffc0201e0e <default_init_memmap+0x86>
ffffffffc0201dee:	87ba                	mv	a5,a4
ffffffffc0201df0:	fe878713          	addi	a4,a5,-24
ffffffffc0201df4:	fee57ae3          	bgeu	a0,a4,ffffffffc0201de8 <default_init_memmap+0x60>
ffffffffc0201df8:	c199                	beqz	a1,ffffffffc0201dfe <default_init_memmap+0x76>
ffffffffc0201dfa:	0106b023          	sd	a6,0(a3)
ffffffffc0201dfe:	6398                	ld	a4,0(a5)
ffffffffc0201e00:	60a2                	ld	ra,8(sp)
ffffffffc0201e02:	e390                	sd	a2,0(a5)
ffffffffc0201e04:	e710                	sd	a2,8(a4)
ffffffffc0201e06:	f11c                	sd	a5,32(a0)
ffffffffc0201e08:	ed18                	sd	a4,24(a0)
ffffffffc0201e0a:	0141                	addi	sp,sp,16
ffffffffc0201e0c:	8082                	ret
ffffffffc0201e0e:	e790                	sd	a2,8(a5)
ffffffffc0201e10:	f114                	sd	a3,32(a0)
ffffffffc0201e12:	6798                	ld	a4,8(a5)
ffffffffc0201e14:	ed1c                	sd	a5,24(a0)
ffffffffc0201e16:	00d70663          	beq	a4,a3,ffffffffc0201e22 <default_init_memmap+0x9a>
ffffffffc0201e1a:	8832                	mv	a6,a2
ffffffffc0201e1c:	4585                	li	a1,1
ffffffffc0201e1e:	87ba                	mv	a5,a4
ffffffffc0201e20:	bfc1                	j	ffffffffc0201df0 <default_init_memmap+0x68>
ffffffffc0201e22:	60a2                	ld	ra,8(sp)
ffffffffc0201e24:	e290                	sd	a2,0(a3)
ffffffffc0201e26:	0141                	addi	sp,sp,16
ffffffffc0201e28:	8082                	ret
ffffffffc0201e2a:	60a2                	ld	ra,8(sp)
ffffffffc0201e2c:	e390                	sd	a2,0(a5)
ffffffffc0201e2e:	e790                	sd	a2,8(a5)
ffffffffc0201e30:	f11c                	sd	a5,32(a0)
ffffffffc0201e32:	ed1c                	sd	a5,24(a0)
ffffffffc0201e34:	0141                	addi	sp,sp,16
ffffffffc0201e36:	8082                	ret
ffffffffc0201e38:	0000b697          	auipc	a3,0xb
ffffffffc0201e3c:	95068693          	addi	a3,a3,-1712 # ffffffffc020c788 <commands+0xe88>
ffffffffc0201e40:	0000a617          	auipc	a2,0xa
ffffffffc0201e44:	cd060613          	addi	a2,a2,-816 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201e48:	04800593          	li	a1,72
ffffffffc0201e4c:	0000a517          	auipc	a0,0xa
ffffffffc0201e50:	5cc50513          	addi	a0,a0,1484 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201e54:	e4afe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201e58:	0000b697          	auipc	a3,0xb
ffffffffc0201e5c:	90068693          	addi	a3,a3,-1792 # ffffffffc020c758 <commands+0xe58>
ffffffffc0201e60:	0000a617          	auipc	a2,0xa
ffffffffc0201e64:	cb060613          	addi	a2,a2,-848 # ffffffffc020bb10 <commands+0x210>
ffffffffc0201e68:	04500593          	li	a1,69
ffffffffc0201e6c:	0000a517          	auipc	a0,0xa
ffffffffc0201e70:	5ac50513          	addi	a0,a0,1452 # ffffffffc020c418 <commands+0xb18>
ffffffffc0201e74:	e2afe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0201e78 <slob_free>:
ffffffffc0201e78:	c94d                	beqz	a0,ffffffffc0201f2a <slob_free+0xb2>
ffffffffc0201e7a:	1141                	addi	sp,sp,-16
ffffffffc0201e7c:	e022                	sd	s0,0(sp)
ffffffffc0201e7e:	e406                	sd	ra,8(sp)
ffffffffc0201e80:	842a                	mv	s0,a0
ffffffffc0201e82:	e9c1                	bnez	a1,ffffffffc0201f12 <slob_free+0x9a>
ffffffffc0201e84:	100027f3          	csrr	a5,sstatus
ffffffffc0201e88:	8b89                	andi	a5,a5,2
ffffffffc0201e8a:	4501                	li	a0,0
ffffffffc0201e8c:	ebd9                	bnez	a5,ffffffffc0201f22 <slob_free+0xaa>
ffffffffc0201e8e:	0008f617          	auipc	a2,0x8f
ffffffffc0201e92:	1c260613          	addi	a2,a2,450 # ffffffffc0291050 <slobfree>
ffffffffc0201e96:	621c                	ld	a5,0(a2)
ffffffffc0201e98:	873e                	mv	a4,a5
ffffffffc0201e9a:	679c                	ld	a5,8(a5)
ffffffffc0201e9c:	02877a63          	bgeu	a4,s0,ffffffffc0201ed0 <slob_free+0x58>
ffffffffc0201ea0:	00f46463          	bltu	s0,a5,ffffffffc0201ea8 <slob_free+0x30>
ffffffffc0201ea4:	fef76ae3          	bltu	a4,a5,ffffffffc0201e98 <slob_free+0x20>
ffffffffc0201ea8:	400c                	lw	a1,0(s0)
ffffffffc0201eaa:	00459693          	slli	a3,a1,0x4
ffffffffc0201eae:	96a2                	add	a3,a3,s0
ffffffffc0201eb0:	02d78a63          	beq	a5,a3,ffffffffc0201ee4 <slob_free+0x6c>
ffffffffc0201eb4:	4314                	lw	a3,0(a4)
ffffffffc0201eb6:	e41c                	sd	a5,8(s0)
ffffffffc0201eb8:	00469793          	slli	a5,a3,0x4
ffffffffc0201ebc:	97ba                	add	a5,a5,a4
ffffffffc0201ebe:	02f40e63          	beq	s0,a5,ffffffffc0201efa <slob_free+0x82>
ffffffffc0201ec2:	e700                	sd	s0,8(a4)
ffffffffc0201ec4:	e218                	sd	a4,0(a2)
ffffffffc0201ec6:	e129                	bnez	a0,ffffffffc0201f08 <slob_free+0x90>
ffffffffc0201ec8:	60a2                	ld	ra,8(sp)
ffffffffc0201eca:	6402                	ld	s0,0(sp)
ffffffffc0201ecc:	0141                	addi	sp,sp,16
ffffffffc0201ece:	8082                	ret
ffffffffc0201ed0:	fcf764e3          	bltu	a4,a5,ffffffffc0201e98 <slob_free+0x20>
ffffffffc0201ed4:	fcf472e3          	bgeu	s0,a5,ffffffffc0201e98 <slob_free+0x20>
ffffffffc0201ed8:	400c                	lw	a1,0(s0)
ffffffffc0201eda:	00459693          	slli	a3,a1,0x4
ffffffffc0201ede:	96a2                	add	a3,a3,s0
ffffffffc0201ee0:	fcd79ae3          	bne	a5,a3,ffffffffc0201eb4 <slob_free+0x3c>
ffffffffc0201ee4:	4394                	lw	a3,0(a5)
ffffffffc0201ee6:	679c                	ld	a5,8(a5)
ffffffffc0201ee8:	9db5                	addw	a1,a1,a3
ffffffffc0201eea:	c00c                	sw	a1,0(s0)
ffffffffc0201eec:	4314                	lw	a3,0(a4)
ffffffffc0201eee:	e41c                	sd	a5,8(s0)
ffffffffc0201ef0:	00469793          	slli	a5,a3,0x4
ffffffffc0201ef4:	97ba                	add	a5,a5,a4
ffffffffc0201ef6:	fcf416e3          	bne	s0,a5,ffffffffc0201ec2 <slob_free+0x4a>
ffffffffc0201efa:	401c                	lw	a5,0(s0)
ffffffffc0201efc:	640c                	ld	a1,8(s0)
ffffffffc0201efe:	e218                	sd	a4,0(a2)
ffffffffc0201f00:	9ebd                	addw	a3,a3,a5
ffffffffc0201f02:	c314                	sw	a3,0(a4)
ffffffffc0201f04:	e70c                	sd	a1,8(a4)
ffffffffc0201f06:	d169                	beqz	a0,ffffffffc0201ec8 <slob_free+0x50>
ffffffffc0201f08:	6402                	ld	s0,0(sp)
ffffffffc0201f0a:	60a2                	ld	ra,8(sp)
ffffffffc0201f0c:	0141                	addi	sp,sp,16
ffffffffc0201f0e:	d5ffe06f          	j	ffffffffc0200c6c <intr_enable>
ffffffffc0201f12:	25bd                	addiw	a1,a1,15
ffffffffc0201f14:	8191                	srli	a1,a1,0x4
ffffffffc0201f16:	c10c                	sw	a1,0(a0)
ffffffffc0201f18:	100027f3          	csrr	a5,sstatus
ffffffffc0201f1c:	8b89                	andi	a5,a5,2
ffffffffc0201f1e:	4501                	li	a0,0
ffffffffc0201f20:	d7bd                	beqz	a5,ffffffffc0201e8e <slob_free+0x16>
ffffffffc0201f22:	d51fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0201f26:	4505                	li	a0,1
ffffffffc0201f28:	b79d                	j	ffffffffc0201e8e <slob_free+0x16>
ffffffffc0201f2a:	8082                	ret

ffffffffc0201f2c <__slob_get_free_pages.constprop.0>:
ffffffffc0201f2c:	4785                	li	a5,1
ffffffffc0201f2e:	1141                	addi	sp,sp,-16
ffffffffc0201f30:	00a7953b          	sllw	a0,a5,a0
ffffffffc0201f34:	e406                	sd	ra,8(sp)
ffffffffc0201f36:	352000ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc0201f3a:	c91d                	beqz	a0,ffffffffc0201f70 <__slob_get_free_pages.constprop.0+0x44>
ffffffffc0201f3c:	00095697          	auipc	a3,0x95
ffffffffc0201f40:	96c6b683          	ld	a3,-1684(a3) # ffffffffc02968a8 <pages>
ffffffffc0201f44:	8d15                	sub	a0,a0,a3
ffffffffc0201f46:	8519                	srai	a0,a0,0x6
ffffffffc0201f48:	0000e697          	auipc	a3,0xe
ffffffffc0201f4c:	a806b683          	ld	a3,-1408(a3) # ffffffffc020f9c8 <nbase>
ffffffffc0201f50:	9536                	add	a0,a0,a3
ffffffffc0201f52:	00c51793          	slli	a5,a0,0xc
ffffffffc0201f56:	83b1                	srli	a5,a5,0xc
ffffffffc0201f58:	00095717          	auipc	a4,0x95
ffffffffc0201f5c:	94873703          	ld	a4,-1720(a4) # ffffffffc02968a0 <npage>
ffffffffc0201f60:	0532                	slli	a0,a0,0xc
ffffffffc0201f62:	00e7fa63          	bgeu	a5,a4,ffffffffc0201f76 <__slob_get_free_pages.constprop.0+0x4a>
ffffffffc0201f66:	00095697          	auipc	a3,0x95
ffffffffc0201f6a:	9526b683          	ld	a3,-1710(a3) # ffffffffc02968b8 <va_pa_offset>
ffffffffc0201f6e:	9536                	add	a0,a0,a3
ffffffffc0201f70:	60a2                	ld	ra,8(sp)
ffffffffc0201f72:	0141                	addi	sp,sp,16
ffffffffc0201f74:	8082                	ret
ffffffffc0201f76:	86aa                	mv	a3,a0
ffffffffc0201f78:	0000b617          	auipc	a2,0xb
ffffffffc0201f7c:	87060613          	addi	a2,a2,-1936 # ffffffffc020c7e8 <default_pmm_manager+0x38>
ffffffffc0201f80:	07100593          	li	a1,113
ffffffffc0201f84:	0000b517          	auipc	a0,0xb
ffffffffc0201f88:	88c50513          	addi	a0,a0,-1908 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc0201f8c:	d12fe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0201f90 <slob_alloc.constprop.0>:
ffffffffc0201f90:	1101                	addi	sp,sp,-32
ffffffffc0201f92:	ec06                	sd	ra,24(sp)
ffffffffc0201f94:	e822                	sd	s0,16(sp)
ffffffffc0201f96:	e426                	sd	s1,8(sp)
ffffffffc0201f98:	e04a                	sd	s2,0(sp)
ffffffffc0201f9a:	01050713          	addi	a4,a0,16
ffffffffc0201f9e:	6785                	lui	a5,0x1
ffffffffc0201fa0:	0cf77363          	bgeu	a4,a5,ffffffffc0202066 <slob_alloc.constprop.0+0xd6>
ffffffffc0201fa4:	00f50493          	addi	s1,a0,15
ffffffffc0201fa8:	8091                	srli	s1,s1,0x4
ffffffffc0201faa:	2481                	sext.w	s1,s1
ffffffffc0201fac:	10002673          	csrr	a2,sstatus
ffffffffc0201fb0:	8a09                	andi	a2,a2,2
ffffffffc0201fb2:	e25d                	bnez	a2,ffffffffc0202058 <slob_alloc.constprop.0+0xc8>
ffffffffc0201fb4:	0008f917          	auipc	s2,0x8f
ffffffffc0201fb8:	09c90913          	addi	s2,s2,156 # ffffffffc0291050 <slobfree>
ffffffffc0201fbc:	00093683          	ld	a3,0(s2)
ffffffffc0201fc0:	669c                	ld	a5,8(a3)
ffffffffc0201fc2:	4398                	lw	a4,0(a5)
ffffffffc0201fc4:	08975e63          	bge	a4,s1,ffffffffc0202060 <slob_alloc.constprop.0+0xd0>
ffffffffc0201fc8:	00f68b63          	beq	a3,a5,ffffffffc0201fde <slob_alloc.constprop.0+0x4e>
ffffffffc0201fcc:	6780                	ld	s0,8(a5)
ffffffffc0201fce:	4018                	lw	a4,0(s0)
ffffffffc0201fd0:	02975a63          	bge	a4,s1,ffffffffc0202004 <slob_alloc.constprop.0+0x74>
ffffffffc0201fd4:	00093683          	ld	a3,0(s2)
ffffffffc0201fd8:	87a2                	mv	a5,s0
ffffffffc0201fda:	fef699e3          	bne	a3,a5,ffffffffc0201fcc <slob_alloc.constprop.0+0x3c>
ffffffffc0201fde:	ee31                	bnez	a2,ffffffffc020203a <slob_alloc.constprop.0+0xaa>
ffffffffc0201fe0:	4501                	li	a0,0
ffffffffc0201fe2:	f4bff0ef          	jal	ra,ffffffffc0201f2c <__slob_get_free_pages.constprop.0>
ffffffffc0201fe6:	842a                	mv	s0,a0
ffffffffc0201fe8:	cd05                	beqz	a0,ffffffffc0202020 <slob_alloc.constprop.0+0x90>
ffffffffc0201fea:	6585                	lui	a1,0x1
ffffffffc0201fec:	e8dff0ef          	jal	ra,ffffffffc0201e78 <slob_free>
ffffffffc0201ff0:	10002673          	csrr	a2,sstatus
ffffffffc0201ff4:	8a09                	andi	a2,a2,2
ffffffffc0201ff6:	ee05                	bnez	a2,ffffffffc020202e <slob_alloc.constprop.0+0x9e>
ffffffffc0201ff8:	00093783          	ld	a5,0(s2)
ffffffffc0201ffc:	6780                	ld	s0,8(a5)
ffffffffc0201ffe:	4018                	lw	a4,0(s0)
ffffffffc0202000:	fc974ae3          	blt	a4,s1,ffffffffc0201fd4 <slob_alloc.constprop.0+0x44>
ffffffffc0202004:	04e48763          	beq	s1,a4,ffffffffc0202052 <slob_alloc.constprop.0+0xc2>
ffffffffc0202008:	00449693          	slli	a3,s1,0x4
ffffffffc020200c:	96a2                	add	a3,a3,s0
ffffffffc020200e:	e794                	sd	a3,8(a5)
ffffffffc0202010:	640c                	ld	a1,8(s0)
ffffffffc0202012:	9f05                	subw	a4,a4,s1
ffffffffc0202014:	c298                	sw	a4,0(a3)
ffffffffc0202016:	e68c                	sd	a1,8(a3)
ffffffffc0202018:	c004                	sw	s1,0(s0)
ffffffffc020201a:	00f93023          	sd	a5,0(s2)
ffffffffc020201e:	e20d                	bnez	a2,ffffffffc0202040 <slob_alloc.constprop.0+0xb0>
ffffffffc0202020:	60e2                	ld	ra,24(sp)
ffffffffc0202022:	8522                	mv	a0,s0
ffffffffc0202024:	6442                	ld	s0,16(sp)
ffffffffc0202026:	64a2                	ld	s1,8(sp)
ffffffffc0202028:	6902                	ld	s2,0(sp)
ffffffffc020202a:	6105                	addi	sp,sp,32
ffffffffc020202c:	8082                	ret
ffffffffc020202e:	c45fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0202032:	00093783          	ld	a5,0(s2)
ffffffffc0202036:	4605                	li	a2,1
ffffffffc0202038:	b7d1                	j	ffffffffc0201ffc <slob_alloc.constprop.0+0x6c>
ffffffffc020203a:	c33fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc020203e:	b74d                	j	ffffffffc0201fe0 <slob_alloc.constprop.0+0x50>
ffffffffc0202040:	c2dfe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0202044:	60e2                	ld	ra,24(sp)
ffffffffc0202046:	8522                	mv	a0,s0
ffffffffc0202048:	6442                	ld	s0,16(sp)
ffffffffc020204a:	64a2                	ld	s1,8(sp)
ffffffffc020204c:	6902                	ld	s2,0(sp)
ffffffffc020204e:	6105                	addi	sp,sp,32
ffffffffc0202050:	8082                	ret
ffffffffc0202052:	6418                	ld	a4,8(s0)
ffffffffc0202054:	e798                	sd	a4,8(a5)
ffffffffc0202056:	b7d1                	j	ffffffffc020201a <slob_alloc.constprop.0+0x8a>
ffffffffc0202058:	c1bfe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc020205c:	4605                	li	a2,1
ffffffffc020205e:	bf99                	j	ffffffffc0201fb4 <slob_alloc.constprop.0+0x24>
ffffffffc0202060:	843e                	mv	s0,a5
ffffffffc0202062:	87b6                	mv	a5,a3
ffffffffc0202064:	b745                	j	ffffffffc0202004 <slob_alloc.constprop.0+0x74>
ffffffffc0202066:	0000a697          	auipc	a3,0xa
ffffffffc020206a:	7ba68693          	addi	a3,a3,1978 # ffffffffc020c820 <default_pmm_manager+0x70>
ffffffffc020206e:	0000a617          	auipc	a2,0xa
ffffffffc0202072:	aa260613          	addi	a2,a2,-1374 # ffffffffc020bb10 <commands+0x210>
ffffffffc0202076:	06300593          	li	a1,99
ffffffffc020207a:	0000a517          	auipc	a0,0xa
ffffffffc020207e:	7c650513          	addi	a0,a0,1990 # ffffffffc020c840 <default_pmm_manager+0x90>
ffffffffc0202082:	c1cfe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0202086 <kmalloc_init>:
ffffffffc0202086:	1141                	addi	sp,sp,-16
ffffffffc0202088:	0000a517          	auipc	a0,0xa
ffffffffc020208c:	7d050513          	addi	a0,a0,2000 # ffffffffc020c858 <default_pmm_manager+0xa8>
ffffffffc0202090:	e406                	sd	ra,8(sp)
ffffffffc0202092:	914fe0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0202096:	60a2                	ld	ra,8(sp)
ffffffffc0202098:	0000a517          	auipc	a0,0xa
ffffffffc020209c:	7d850513          	addi	a0,a0,2008 # ffffffffc020c870 <default_pmm_manager+0xc0>
ffffffffc02020a0:	0141                	addi	sp,sp,16
ffffffffc02020a2:	904fe06f          	j	ffffffffc02001a6 <cprintf>

ffffffffc02020a6 <kallocated>:
ffffffffc02020a6:	4501                	li	a0,0
ffffffffc02020a8:	8082                	ret

ffffffffc02020aa <kmalloc>:
ffffffffc02020aa:	1101                	addi	sp,sp,-32
ffffffffc02020ac:	e04a                	sd	s2,0(sp)
ffffffffc02020ae:	6905                	lui	s2,0x1
ffffffffc02020b0:	e822                	sd	s0,16(sp)
ffffffffc02020b2:	ec06                	sd	ra,24(sp)
ffffffffc02020b4:	e426                	sd	s1,8(sp)
ffffffffc02020b6:	fef90793          	addi	a5,s2,-17 # fef <_binary_bin_swap_img_size-0x6d11>
ffffffffc02020ba:	842a                	mv	s0,a0
ffffffffc02020bc:	04a7f963          	bgeu	a5,a0,ffffffffc020210e <kmalloc+0x64>
ffffffffc02020c0:	4561                	li	a0,24
ffffffffc02020c2:	ecfff0ef          	jal	ra,ffffffffc0201f90 <slob_alloc.constprop.0>
ffffffffc02020c6:	84aa                	mv	s1,a0
ffffffffc02020c8:	c929                	beqz	a0,ffffffffc020211a <kmalloc+0x70>
ffffffffc02020ca:	0004079b          	sext.w	a5,s0
ffffffffc02020ce:	4501                	li	a0,0
ffffffffc02020d0:	00f95763          	bge	s2,a5,ffffffffc02020de <kmalloc+0x34>
ffffffffc02020d4:	6705                	lui	a4,0x1
ffffffffc02020d6:	8785                	srai	a5,a5,0x1
ffffffffc02020d8:	2505                	addiw	a0,a0,1
ffffffffc02020da:	fef74ee3          	blt	a4,a5,ffffffffc02020d6 <kmalloc+0x2c>
ffffffffc02020de:	c088                	sw	a0,0(s1)
ffffffffc02020e0:	e4dff0ef          	jal	ra,ffffffffc0201f2c <__slob_get_free_pages.constprop.0>
ffffffffc02020e4:	e488                	sd	a0,8(s1)
ffffffffc02020e6:	842a                	mv	s0,a0
ffffffffc02020e8:	c525                	beqz	a0,ffffffffc0202150 <kmalloc+0xa6>
ffffffffc02020ea:	100027f3          	csrr	a5,sstatus
ffffffffc02020ee:	8b89                	andi	a5,a5,2
ffffffffc02020f0:	ef8d                	bnez	a5,ffffffffc020212a <kmalloc+0x80>
ffffffffc02020f2:	00094797          	auipc	a5,0x94
ffffffffc02020f6:	79678793          	addi	a5,a5,1942 # ffffffffc0296888 <bigblocks>
ffffffffc02020fa:	6398                	ld	a4,0(a5)
ffffffffc02020fc:	e384                	sd	s1,0(a5)
ffffffffc02020fe:	e898                	sd	a4,16(s1)
ffffffffc0202100:	60e2                	ld	ra,24(sp)
ffffffffc0202102:	8522                	mv	a0,s0
ffffffffc0202104:	6442                	ld	s0,16(sp)
ffffffffc0202106:	64a2                	ld	s1,8(sp)
ffffffffc0202108:	6902                	ld	s2,0(sp)
ffffffffc020210a:	6105                	addi	sp,sp,32
ffffffffc020210c:	8082                	ret
ffffffffc020210e:	0541                	addi	a0,a0,16
ffffffffc0202110:	e81ff0ef          	jal	ra,ffffffffc0201f90 <slob_alloc.constprop.0>
ffffffffc0202114:	01050413          	addi	s0,a0,16
ffffffffc0202118:	f565                	bnez	a0,ffffffffc0202100 <kmalloc+0x56>
ffffffffc020211a:	4401                	li	s0,0
ffffffffc020211c:	60e2                	ld	ra,24(sp)
ffffffffc020211e:	8522                	mv	a0,s0
ffffffffc0202120:	6442                	ld	s0,16(sp)
ffffffffc0202122:	64a2                	ld	s1,8(sp)
ffffffffc0202124:	6902                	ld	s2,0(sp)
ffffffffc0202126:	6105                	addi	sp,sp,32
ffffffffc0202128:	8082                	ret
ffffffffc020212a:	b49fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc020212e:	00094797          	auipc	a5,0x94
ffffffffc0202132:	75a78793          	addi	a5,a5,1882 # ffffffffc0296888 <bigblocks>
ffffffffc0202136:	6398                	ld	a4,0(a5)
ffffffffc0202138:	e384                	sd	s1,0(a5)
ffffffffc020213a:	e898                	sd	a4,16(s1)
ffffffffc020213c:	b31fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0202140:	6480                	ld	s0,8(s1)
ffffffffc0202142:	60e2                	ld	ra,24(sp)
ffffffffc0202144:	64a2                	ld	s1,8(sp)
ffffffffc0202146:	8522                	mv	a0,s0
ffffffffc0202148:	6442                	ld	s0,16(sp)
ffffffffc020214a:	6902                	ld	s2,0(sp)
ffffffffc020214c:	6105                	addi	sp,sp,32
ffffffffc020214e:	8082                	ret
ffffffffc0202150:	45e1                	li	a1,24
ffffffffc0202152:	8526                	mv	a0,s1
ffffffffc0202154:	d25ff0ef          	jal	ra,ffffffffc0201e78 <slob_free>
ffffffffc0202158:	b765                	j	ffffffffc0202100 <kmalloc+0x56>

ffffffffc020215a <kfree>:
ffffffffc020215a:	c169                	beqz	a0,ffffffffc020221c <kfree+0xc2>
ffffffffc020215c:	1101                	addi	sp,sp,-32
ffffffffc020215e:	e822                	sd	s0,16(sp)
ffffffffc0202160:	ec06                	sd	ra,24(sp)
ffffffffc0202162:	e426                	sd	s1,8(sp)
ffffffffc0202164:	03451793          	slli	a5,a0,0x34
ffffffffc0202168:	842a                	mv	s0,a0
ffffffffc020216a:	e3d9                	bnez	a5,ffffffffc02021f0 <kfree+0x96>
ffffffffc020216c:	100027f3          	csrr	a5,sstatus
ffffffffc0202170:	8b89                	andi	a5,a5,2
ffffffffc0202172:	e7d9                	bnez	a5,ffffffffc0202200 <kfree+0xa6>
ffffffffc0202174:	00094797          	auipc	a5,0x94
ffffffffc0202178:	7147b783          	ld	a5,1812(a5) # ffffffffc0296888 <bigblocks>
ffffffffc020217c:	4601                	li	a2,0
ffffffffc020217e:	cbad                	beqz	a5,ffffffffc02021f0 <kfree+0x96>
ffffffffc0202180:	00094697          	auipc	a3,0x94
ffffffffc0202184:	70868693          	addi	a3,a3,1800 # ffffffffc0296888 <bigblocks>
ffffffffc0202188:	a021                	j	ffffffffc0202190 <kfree+0x36>
ffffffffc020218a:	01048693          	addi	a3,s1,16
ffffffffc020218e:	c3a5                	beqz	a5,ffffffffc02021ee <kfree+0x94>
ffffffffc0202190:	6798                	ld	a4,8(a5)
ffffffffc0202192:	84be                	mv	s1,a5
ffffffffc0202194:	6b9c                	ld	a5,16(a5)
ffffffffc0202196:	fe871ae3          	bne	a4,s0,ffffffffc020218a <kfree+0x30>
ffffffffc020219a:	e29c                	sd	a5,0(a3)
ffffffffc020219c:	ee2d                	bnez	a2,ffffffffc0202216 <kfree+0xbc>
ffffffffc020219e:	c02007b7          	lui	a5,0xc0200
ffffffffc02021a2:	4098                	lw	a4,0(s1)
ffffffffc02021a4:	08f46963          	bltu	s0,a5,ffffffffc0202236 <kfree+0xdc>
ffffffffc02021a8:	00094697          	auipc	a3,0x94
ffffffffc02021ac:	7106b683          	ld	a3,1808(a3) # ffffffffc02968b8 <va_pa_offset>
ffffffffc02021b0:	8c15                	sub	s0,s0,a3
ffffffffc02021b2:	8031                	srli	s0,s0,0xc
ffffffffc02021b4:	00094797          	auipc	a5,0x94
ffffffffc02021b8:	6ec7b783          	ld	a5,1772(a5) # ffffffffc02968a0 <npage>
ffffffffc02021bc:	06f47163          	bgeu	s0,a5,ffffffffc020221e <kfree+0xc4>
ffffffffc02021c0:	0000e517          	auipc	a0,0xe
ffffffffc02021c4:	80853503          	ld	a0,-2040(a0) # ffffffffc020f9c8 <nbase>
ffffffffc02021c8:	8c09                	sub	s0,s0,a0
ffffffffc02021ca:	041a                	slli	s0,s0,0x6
ffffffffc02021cc:	00094517          	auipc	a0,0x94
ffffffffc02021d0:	6dc53503          	ld	a0,1756(a0) # ffffffffc02968a8 <pages>
ffffffffc02021d4:	4585                	li	a1,1
ffffffffc02021d6:	9522                	add	a0,a0,s0
ffffffffc02021d8:	00e595bb          	sllw	a1,a1,a4
ffffffffc02021dc:	0ea000ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc02021e0:	6442                	ld	s0,16(sp)
ffffffffc02021e2:	60e2                	ld	ra,24(sp)
ffffffffc02021e4:	8526                	mv	a0,s1
ffffffffc02021e6:	64a2                	ld	s1,8(sp)
ffffffffc02021e8:	45e1                	li	a1,24
ffffffffc02021ea:	6105                	addi	sp,sp,32
ffffffffc02021ec:	b171                	j	ffffffffc0201e78 <slob_free>
ffffffffc02021ee:	e20d                	bnez	a2,ffffffffc0202210 <kfree+0xb6>
ffffffffc02021f0:	ff040513          	addi	a0,s0,-16
ffffffffc02021f4:	6442                	ld	s0,16(sp)
ffffffffc02021f6:	60e2                	ld	ra,24(sp)
ffffffffc02021f8:	64a2                	ld	s1,8(sp)
ffffffffc02021fa:	4581                	li	a1,0
ffffffffc02021fc:	6105                	addi	sp,sp,32
ffffffffc02021fe:	b9ad                	j	ffffffffc0201e78 <slob_free>
ffffffffc0202200:	a73fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0202204:	00094797          	auipc	a5,0x94
ffffffffc0202208:	6847b783          	ld	a5,1668(a5) # ffffffffc0296888 <bigblocks>
ffffffffc020220c:	4605                	li	a2,1
ffffffffc020220e:	fbad                	bnez	a5,ffffffffc0202180 <kfree+0x26>
ffffffffc0202210:	a5dfe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0202214:	bff1                	j	ffffffffc02021f0 <kfree+0x96>
ffffffffc0202216:	a57fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc020221a:	b751                	j	ffffffffc020219e <kfree+0x44>
ffffffffc020221c:	8082                	ret
ffffffffc020221e:	0000a617          	auipc	a2,0xa
ffffffffc0202222:	69a60613          	addi	a2,a2,1690 # ffffffffc020c8b8 <default_pmm_manager+0x108>
ffffffffc0202226:	06900593          	li	a1,105
ffffffffc020222a:	0000a517          	auipc	a0,0xa
ffffffffc020222e:	5e650513          	addi	a0,a0,1510 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc0202232:	a6cfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0202236:	86a2                	mv	a3,s0
ffffffffc0202238:	0000a617          	auipc	a2,0xa
ffffffffc020223c:	65860613          	addi	a2,a2,1624 # ffffffffc020c890 <default_pmm_manager+0xe0>
ffffffffc0202240:	07700593          	li	a1,119
ffffffffc0202244:	0000a517          	auipc	a0,0xa
ffffffffc0202248:	5cc50513          	addi	a0,a0,1484 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc020224c:	a52fe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0202250 <pa2page.part.0>:
ffffffffc0202250:	1141                	addi	sp,sp,-16
ffffffffc0202252:	0000a617          	auipc	a2,0xa
ffffffffc0202256:	66660613          	addi	a2,a2,1638 # ffffffffc020c8b8 <default_pmm_manager+0x108>
ffffffffc020225a:	06900593          	li	a1,105
ffffffffc020225e:	0000a517          	auipc	a0,0xa
ffffffffc0202262:	5b250513          	addi	a0,a0,1458 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc0202266:	e406                	sd	ra,8(sp)
ffffffffc0202268:	a36fe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020226c <pte2page.part.0>:
ffffffffc020226c:	1141                	addi	sp,sp,-16
ffffffffc020226e:	0000a617          	auipc	a2,0xa
ffffffffc0202272:	66a60613          	addi	a2,a2,1642 # ffffffffc020c8d8 <default_pmm_manager+0x128>
ffffffffc0202276:	07f00593          	li	a1,127
ffffffffc020227a:	0000a517          	auipc	a0,0xa
ffffffffc020227e:	59650513          	addi	a0,a0,1430 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc0202282:	e406                	sd	ra,8(sp)
ffffffffc0202284:	a1afe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0202288 <alloc_pages>:
ffffffffc0202288:	100027f3          	csrr	a5,sstatus
ffffffffc020228c:	8b89                	andi	a5,a5,2
ffffffffc020228e:	e799                	bnez	a5,ffffffffc020229c <alloc_pages+0x14>
ffffffffc0202290:	00094797          	auipc	a5,0x94
ffffffffc0202294:	6207b783          	ld	a5,1568(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc0202298:	6f9c                	ld	a5,24(a5)
ffffffffc020229a:	8782                	jr	a5
ffffffffc020229c:	1141                	addi	sp,sp,-16
ffffffffc020229e:	e406                	sd	ra,8(sp)
ffffffffc02022a0:	e022                	sd	s0,0(sp)
ffffffffc02022a2:	842a                	mv	s0,a0
ffffffffc02022a4:	9cffe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02022a8:	00094797          	auipc	a5,0x94
ffffffffc02022ac:	6087b783          	ld	a5,1544(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc02022b0:	6f9c                	ld	a5,24(a5)
ffffffffc02022b2:	8522                	mv	a0,s0
ffffffffc02022b4:	9782                	jalr	a5
ffffffffc02022b6:	842a                	mv	s0,a0
ffffffffc02022b8:	9b5fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02022bc:	60a2                	ld	ra,8(sp)
ffffffffc02022be:	8522                	mv	a0,s0
ffffffffc02022c0:	6402                	ld	s0,0(sp)
ffffffffc02022c2:	0141                	addi	sp,sp,16
ffffffffc02022c4:	8082                	ret

ffffffffc02022c6 <free_pages>:
ffffffffc02022c6:	100027f3          	csrr	a5,sstatus
ffffffffc02022ca:	8b89                	andi	a5,a5,2
ffffffffc02022cc:	e799                	bnez	a5,ffffffffc02022da <free_pages+0x14>
ffffffffc02022ce:	00094797          	auipc	a5,0x94
ffffffffc02022d2:	5e27b783          	ld	a5,1506(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc02022d6:	739c                	ld	a5,32(a5)
ffffffffc02022d8:	8782                	jr	a5
ffffffffc02022da:	1101                	addi	sp,sp,-32
ffffffffc02022dc:	ec06                	sd	ra,24(sp)
ffffffffc02022de:	e822                	sd	s0,16(sp)
ffffffffc02022e0:	e426                	sd	s1,8(sp)
ffffffffc02022e2:	842a                	mv	s0,a0
ffffffffc02022e4:	84ae                	mv	s1,a1
ffffffffc02022e6:	98dfe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02022ea:	00094797          	auipc	a5,0x94
ffffffffc02022ee:	5c67b783          	ld	a5,1478(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc02022f2:	739c                	ld	a5,32(a5)
ffffffffc02022f4:	85a6                	mv	a1,s1
ffffffffc02022f6:	8522                	mv	a0,s0
ffffffffc02022f8:	9782                	jalr	a5
ffffffffc02022fa:	6442                	ld	s0,16(sp)
ffffffffc02022fc:	60e2                	ld	ra,24(sp)
ffffffffc02022fe:	64a2                	ld	s1,8(sp)
ffffffffc0202300:	6105                	addi	sp,sp,32
ffffffffc0202302:	96bfe06f          	j	ffffffffc0200c6c <intr_enable>

ffffffffc0202306 <nr_free_pages>:
ffffffffc0202306:	100027f3          	csrr	a5,sstatus
ffffffffc020230a:	8b89                	andi	a5,a5,2
ffffffffc020230c:	e799                	bnez	a5,ffffffffc020231a <nr_free_pages+0x14>
ffffffffc020230e:	00094797          	auipc	a5,0x94
ffffffffc0202312:	5a27b783          	ld	a5,1442(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc0202316:	779c                	ld	a5,40(a5)
ffffffffc0202318:	8782                	jr	a5
ffffffffc020231a:	1141                	addi	sp,sp,-16
ffffffffc020231c:	e406                	sd	ra,8(sp)
ffffffffc020231e:	e022                	sd	s0,0(sp)
ffffffffc0202320:	953fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0202324:	00094797          	auipc	a5,0x94
ffffffffc0202328:	58c7b783          	ld	a5,1420(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc020232c:	779c                	ld	a5,40(a5)
ffffffffc020232e:	9782                	jalr	a5
ffffffffc0202330:	842a                	mv	s0,a0
ffffffffc0202332:	93bfe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0202336:	60a2                	ld	ra,8(sp)
ffffffffc0202338:	8522                	mv	a0,s0
ffffffffc020233a:	6402                	ld	s0,0(sp)
ffffffffc020233c:	0141                	addi	sp,sp,16
ffffffffc020233e:	8082                	ret

ffffffffc0202340 <get_pte>:
ffffffffc0202340:	01e5d793          	srli	a5,a1,0x1e
ffffffffc0202344:	1ff7f793          	andi	a5,a5,511
ffffffffc0202348:	7139                	addi	sp,sp,-64
ffffffffc020234a:	078e                	slli	a5,a5,0x3
ffffffffc020234c:	f426                	sd	s1,40(sp)
ffffffffc020234e:	00f504b3          	add	s1,a0,a5
ffffffffc0202352:	6094                	ld	a3,0(s1)
ffffffffc0202354:	f04a                	sd	s2,32(sp)
ffffffffc0202356:	ec4e                	sd	s3,24(sp)
ffffffffc0202358:	e852                	sd	s4,16(sp)
ffffffffc020235a:	fc06                	sd	ra,56(sp)
ffffffffc020235c:	f822                	sd	s0,48(sp)
ffffffffc020235e:	e456                	sd	s5,8(sp)
ffffffffc0202360:	e05a                	sd	s6,0(sp)
ffffffffc0202362:	0016f793          	andi	a5,a3,1
ffffffffc0202366:	892e                	mv	s2,a1
ffffffffc0202368:	8a32                	mv	s4,a2
ffffffffc020236a:	00094997          	auipc	s3,0x94
ffffffffc020236e:	53698993          	addi	s3,s3,1334 # ffffffffc02968a0 <npage>
ffffffffc0202372:	efbd                	bnez	a5,ffffffffc02023f0 <get_pte+0xb0>
ffffffffc0202374:	14060c63          	beqz	a2,ffffffffc02024cc <get_pte+0x18c>
ffffffffc0202378:	100027f3          	csrr	a5,sstatus
ffffffffc020237c:	8b89                	andi	a5,a5,2
ffffffffc020237e:	14079963          	bnez	a5,ffffffffc02024d0 <get_pte+0x190>
ffffffffc0202382:	00094797          	auipc	a5,0x94
ffffffffc0202386:	52e7b783          	ld	a5,1326(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc020238a:	6f9c                	ld	a5,24(a5)
ffffffffc020238c:	4505                	li	a0,1
ffffffffc020238e:	9782                	jalr	a5
ffffffffc0202390:	842a                	mv	s0,a0
ffffffffc0202392:	12040d63          	beqz	s0,ffffffffc02024cc <get_pte+0x18c>
ffffffffc0202396:	00094b17          	auipc	s6,0x94
ffffffffc020239a:	512b0b13          	addi	s6,s6,1298 # ffffffffc02968a8 <pages>
ffffffffc020239e:	000b3503          	ld	a0,0(s6)
ffffffffc02023a2:	00080ab7          	lui	s5,0x80
ffffffffc02023a6:	00094997          	auipc	s3,0x94
ffffffffc02023aa:	4fa98993          	addi	s3,s3,1274 # ffffffffc02968a0 <npage>
ffffffffc02023ae:	40a40533          	sub	a0,s0,a0
ffffffffc02023b2:	8519                	srai	a0,a0,0x6
ffffffffc02023b4:	9556                	add	a0,a0,s5
ffffffffc02023b6:	0009b703          	ld	a4,0(s3)
ffffffffc02023ba:	00c51793          	slli	a5,a0,0xc
ffffffffc02023be:	4685                	li	a3,1
ffffffffc02023c0:	c014                	sw	a3,0(s0)
ffffffffc02023c2:	83b1                	srli	a5,a5,0xc
ffffffffc02023c4:	0532                	slli	a0,a0,0xc
ffffffffc02023c6:	16e7f763          	bgeu	a5,a4,ffffffffc0202534 <get_pte+0x1f4>
ffffffffc02023ca:	00094797          	auipc	a5,0x94
ffffffffc02023ce:	4ee7b783          	ld	a5,1262(a5) # ffffffffc02968b8 <va_pa_offset>
ffffffffc02023d2:	6605                	lui	a2,0x1
ffffffffc02023d4:	4581                	li	a1,0
ffffffffc02023d6:	953e                	add	a0,a0,a5
ffffffffc02023d8:	256090ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc02023dc:	000b3683          	ld	a3,0(s6)
ffffffffc02023e0:	40d406b3          	sub	a3,s0,a3
ffffffffc02023e4:	8699                	srai	a3,a3,0x6
ffffffffc02023e6:	96d6                	add	a3,a3,s5
ffffffffc02023e8:	06aa                	slli	a3,a3,0xa
ffffffffc02023ea:	0116e693          	ori	a3,a3,17
ffffffffc02023ee:	e094                	sd	a3,0(s1)
ffffffffc02023f0:	77fd                	lui	a5,0xfffff
ffffffffc02023f2:	068a                	slli	a3,a3,0x2
ffffffffc02023f4:	0009b703          	ld	a4,0(s3)
ffffffffc02023f8:	8efd                	and	a3,a3,a5
ffffffffc02023fa:	00c6d793          	srli	a5,a3,0xc
ffffffffc02023fe:	10e7ff63          	bgeu	a5,a4,ffffffffc020251c <get_pte+0x1dc>
ffffffffc0202402:	00094a97          	auipc	s5,0x94
ffffffffc0202406:	4b6a8a93          	addi	s5,s5,1206 # ffffffffc02968b8 <va_pa_offset>
ffffffffc020240a:	000ab403          	ld	s0,0(s5)
ffffffffc020240e:	01595793          	srli	a5,s2,0x15
ffffffffc0202412:	1ff7f793          	andi	a5,a5,511
ffffffffc0202416:	96a2                	add	a3,a3,s0
ffffffffc0202418:	00379413          	slli	s0,a5,0x3
ffffffffc020241c:	9436                	add	s0,s0,a3
ffffffffc020241e:	6014                	ld	a3,0(s0)
ffffffffc0202420:	0016f793          	andi	a5,a3,1
ffffffffc0202424:	ebad                	bnez	a5,ffffffffc0202496 <get_pte+0x156>
ffffffffc0202426:	0a0a0363          	beqz	s4,ffffffffc02024cc <get_pte+0x18c>
ffffffffc020242a:	100027f3          	csrr	a5,sstatus
ffffffffc020242e:	8b89                	andi	a5,a5,2
ffffffffc0202430:	efcd                	bnez	a5,ffffffffc02024ea <get_pte+0x1aa>
ffffffffc0202432:	00094797          	auipc	a5,0x94
ffffffffc0202436:	47e7b783          	ld	a5,1150(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc020243a:	6f9c                	ld	a5,24(a5)
ffffffffc020243c:	4505                	li	a0,1
ffffffffc020243e:	9782                	jalr	a5
ffffffffc0202440:	84aa                	mv	s1,a0
ffffffffc0202442:	c4c9                	beqz	s1,ffffffffc02024cc <get_pte+0x18c>
ffffffffc0202444:	00094b17          	auipc	s6,0x94
ffffffffc0202448:	464b0b13          	addi	s6,s6,1124 # ffffffffc02968a8 <pages>
ffffffffc020244c:	000b3503          	ld	a0,0(s6)
ffffffffc0202450:	00080a37          	lui	s4,0x80
ffffffffc0202454:	0009b703          	ld	a4,0(s3)
ffffffffc0202458:	40a48533          	sub	a0,s1,a0
ffffffffc020245c:	8519                	srai	a0,a0,0x6
ffffffffc020245e:	9552                	add	a0,a0,s4
ffffffffc0202460:	00c51793          	slli	a5,a0,0xc
ffffffffc0202464:	4685                	li	a3,1
ffffffffc0202466:	c094                	sw	a3,0(s1)
ffffffffc0202468:	83b1                	srli	a5,a5,0xc
ffffffffc020246a:	0532                	slli	a0,a0,0xc
ffffffffc020246c:	0ee7f163          	bgeu	a5,a4,ffffffffc020254e <get_pte+0x20e>
ffffffffc0202470:	000ab783          	ld	a5,0(s5)
ffffffffc0202474:	6605                	lui	a2,0x1
ffffffffc0202476:	4581                	li	a1,0
ffffffffc0202478:	953e                	add	a0,a0,a5
ffffffffc020247a:	1b4090ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc020247e:	000b3683          	ld	a3,0(s6)
ffffffffc0202482:	40d486b3          	sub	a3,s1,a3
ffffffffc0202486:	8699                	srai	a3,a3,0x6
ffffffffc0202488:	96d2                	add	a3,a3,s4
ffffffffc020248a:	06aa                	slli	a3,a3,0xa
ffffffffc020248c:	0116e693          	ori	a3,a3,17
ffffffffc0202490:	e014                	sd	a3,0(s0)
ffffffffc0202492:	0009b703          	ld	a4,0(s3)
ffffffffc0202496:	068a                	slli	a3,a3,0x2
ffffffffc0202498:	757d                	lui	a0,0xfffff
ffffffffc020249a:	8ee9                	and	a3,a3,a0
ffffffffc020249c:	00c6d793          	srli	a5,a3,0xc
ffffffffc02024a0:	06e7f263          	bgeu	a5,a4,ffffffffc0202504 <get_pte+0x1c4>
ffffffffc02024a4:	000ab503          	ld	a0,0(s5)
ffffffffc02024a8:	00c95913          	srli	s2,s2,0xc
ffffffffc02024ac:	1ff97913          	andi	s2,s2,511
ffffffffc02024b0:	96aa                	add	a3,a3,a0
ffffffffc02024b2:	00391513          	slli	a0,s2,0x3
ffffffffc02024b6:	9536                	add	a0,a0,a3
ffffffffc02024b8:	70e2                	ld	ra,56(sp)
ffffffffc02024ba:	7442                	ld	s0,48(sp)
ffffffffc02024bc:	74a2                	ld	s1,40(sp)
ffffffffc02024be:	7902                	ld	s2,32(sp)
ffffffffc02024c0:	69e2                	ld	s3,24(sp)
ffffffffc02024c2:	6a42                	ld	s4,16(sp)
ffffffffc02024c4:	6aa2                	ld	s5,8(sp)
ffffffffc02024c6:	6b02                	ld	s6,0(sp)
ffffffffc02024c8:	6121                	addi	sp,sp,64
ffffffffc02024ca:	8082                	ret
ffffffffc02024cc:	4501                	li	a0,0
ffffffffc02024ce:	b7ed                	j	ffffffffc02024b8 <get_pte+0x178>
ffffffffc02024d0:	fa2fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02024d4:	00094797          	auipc	a5,0x94
ffffffffc02024d8:	3dc7b783          	ld	a5,988(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc02024dc:	6f9c                	ld	a5,24(a5)
ffffffffc02024de:	4505                	li	a0,1
ffffffffc02024e0:	9782                	jalr	a5
ffffffffc02024e2:	842a                	mv	s0,a0
ffffffffc02024e4:	f88fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02024e8:	b56d                	j	ffffffffc0202392 <get_pte+0x52>
ffffffffc02024ea:	f88fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02024ee:	00094797          	auipc	a5,0x94
ffffffffc02024f2:	3c27b783          	ld	a5,962(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc02024f6:	6f9c                	ld	a5,24(a5)
ffffffffc02024f8:	4505                	li	a0,1
ffffffffc02024fa:	9782                	jalr	a5
ffffffffc02024fc:	84aa                	mv	s1,a0
ffffffffc02024fe:	f6efe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0202502:	b781                	j	ffffffffc0202442 <get_pte+0x102>
ffffffffc0202504:	0000a617          	auipc	a2,0xa
ffffffffc0202508:	2e460613          	addi	a2,a2,740 # ffffffffc020c7e8 <default_pmm_manager+0x38>
ffffffffc020250c:	13200593          	li	a1,306
ffffffffc0202510:	0000a517          	auipc	a0,0xa
ffffffffc0202514:	3f050513          	addi	a0,a0,1008 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0202518:	f87fd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020251c:	0000a617          	auipc	a2,0xa
ffffffffc0202520:	2cc60613          	addi	a2,a2,716 # ffffffffc020c7e8 <default_pmm_manager+0x38>
ffffffffc0202524:	12500593          	li	a1,293
ffffffffc0202528:	0000a517          	auipc	a0,0xa
ffffffffc020252c:	3d850513          	addi	a0,a0,984 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0202530:	f6ffd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0202534:	86aa                	mv	a3,a0
ffffffffc0202536:	0000a617          	auipc	a2,0xa
ffffffffc020253a:	2b260613          	addi	a2,a2,690 # ffffffffc020c7e8 <default_pmm_manager+0x38>
ffffffffc020253e:	12100593          	li	a1,289
ffffffffc0202542:	0000a517          	auipc	a0,0xa
ffffffffc0202546:	3be50513          	addi	a0,a0,958 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020254a:	f55fd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020254e:	86aa                	mv	a3,a0
ffffffffc0202550:	0000a617          	auipc	a2,0xa
ffffffffc0202554:	29860613          	addi	a2,a2,664 # ffffffffc020c7e8 <default_pmm_manager+0x38>
ffffffffc0202558:	12f00593          	li	a1,303
ffffffffc020255c:	0000a517          	auipc	a0,0xa
ffffffffc0202560:	3a450513          	addi	a0,a0,932 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0202564:	f3bfd0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0202568 <boot_map_segment>:
ffffffffc0202568:	6785                	lui	a5,0x1
ffffffffc020256a:	7139                	addi	sp,sp,-64
ffffffffc020256c:	00d5c833          	xor	a6,a1,a3
ffffffffc0202570:	17fd                	addi	a5,a5,-1
ffffffffc0202572:	fc06                	sd	ra,56(sp)
ffffffffc0202574:	f822                	sd	s0,48(sp)
ffffffffc0202576:	f426                	sd	s1,40(sp)
ffffffffc0202578:	f04a                	sd	s2,32(sp)
ffffffffc020257a:	ec4e                	sd	s3,24(sp)
ffffffffc020257c:	e852                	sd	s4,16(sp)
ffffffffc020257e:	e456                	sd	s5,8(sp)
ffffffffc0202580:	00f87833          	and	a6,a6,a5
ffffffffc0202584:	08081563          	bnez	a6,ffffffffc020260e <boot_map_segment+0xa6>
ffffffffc0202588:	00f5f4b3          	and	s1,a1,a5
ffffffffc020258c:	963e                	add	a2,a2,a5
ffffffffc020258e:	94b2                	add	s1,s1,a2
ffffffffc0202590:	797d                	lui	s2,0xfffff
ffffffffc0202592:	80b1                	srli	s1,s1,0xc
ffffffffc0202594:	0125f5b3          	and	a1,a1,s2
ffffffffc0202598:	0126f6b3          	and	a3,a3,s2
ffffffffc020259c:	c0a1                	beqz	s1,ffffffffc02025dc <boot_map_segment+0x74>
ffffffffc020259e:	00176713          	ori	a4,a4,1
ffffffffc02025a2:	04b2                	slli	s1,s1,0xc
ffffffffc02025a4:	02071993          	slli	s3,a4,0x20
ffffffffc02025a8:	8a2a                	mv	s4,a0
ffffffffc02025aa:	842e                	mv	s0,a1
ffffffffc02025ac:	94ae                	add	s1,s1,a1
ffffffffc02025ae:	40b68933          	sub	s2,a3,a1
ffffffffc02025b2:	0209d993          	srli	s3,s3,0x20
ffffffffc02025b6:	6a85                	lui	s5,0x1
ffffffffc02025b8:	4605                	li	a2,1
ffffffffc02025ba:	85a2                	mv	a1,s0
ffffffffc02025bc:	8552                	mv	a0,s4
ffffffffc02025be:	d83ff0ef          	jal	ra,ffffffffc0202340 <get_pte>
ffffffffc02025c2:	008907b3          	add	a5,s2,s0
ffffffffc02025c6:	c505                	beqz	a0,ffffffffc02025ee <boot_map_segment+0x86>
ffffffffc02025c8:	83b1                	srli	a5,a5,0xc
ffffffffc02025ca:	07aa                	slli	a5,a5,0xa
ffffffffc02025cc:	0137e7b3          	or	a5,a5,s3
ffffffffc02025d0:	0017e793          	ori	a5,a5,1
ffffffffc02025d4:	e11c                	sd	a5,0(a0)
ffffffffc02025d6:	9456                	add	s0,s0,s5
ffffffffc02025d8:	fe8490e3          	bne	s1,s0,ffffffffc02025b8 <boot_map_segment+0x50>
ffffffffc02025dc:	70e2                	ld	ra,56(sp)
ffffffffc02025de:	7442                	ld	s0,48(sp)
ffffffffc02025e0:	74a2                	ld	s1,40(sp)
ffffffffc02025e2:	7902                	ld	s2,32(sp)
ffffffffc02025e4:	69e2                	ld	s3,24(sp)
ffffffffc02025e6:	6a42                	ld	s4,16(sp)
ffffffffc02025e8:	6aa2                	ld	s5,8(sp)
ffffffffc02025ea:	6121                	addi	sp,sp,64
ffffffffc02025ec:	8082                	ret
ffffffffc02025ee:	0000a697          	auipc	a3,0xa
ffffffffc02025f2:	33a68693          	addi	a3,a3,826 # ffffffffc020c928 <default_pmm_manager+0x178>
ffffffffc02025f6:	00009617          	auipc	a2,0x9
ffffffffc02025fa:	51a60613          	addi	a2,a2,1306 # ffffffffc020bb10 <commands+0x210>
ffffffffc02025fe:	09c00593          	li	a1,156
ffffffffc0202602:	0000a517          	auipc	a0,0xa
ffffffffc0202606:	2fe50513          	addi	a0,a0,766 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020260a:	e95fd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020260e:	0000a697          	auipc	a3,0xa
ffffffffc0202612:	30268693          	addi	a3,a3,770 # ffffffffc020c910 <default_pmm_manager+0x160>
ffffffffc0202616:	00009617          	auipc	a2,0x9
ffffffffc020261a:	4fa60613          	addi	a2,a2,1274 # ffffffffc020bb10 <commands+0x210>
ffffffffc020261e:	09500593          	li	a1,149
ffffffffc0202622:	0000a517          	auipc	a0,0xa
ffffffffc0202626:	2de50513          	addi	a0,a0,734 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020262a:	e75fd0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020262e <get_page>:
ffffffffc020262e:	1141                	addi	sp,sp,-16
ffffffffc0202630:	e022                	sd	s0,0(sp)
ffffffffc0202632:	8432                	mv	s0,a2
ffffffffc0202634:	4601                	li	a2,0
ffffffffc0202636:	e406                	sd	ra,8(sp)
ffffffffc0202638:	d09ff0ef          	jal	ra,ffffffffc0202340 <get_pte>
ffffffffc020263c:	c011                	beqz	s0,ffffffffc0202640 <get_page+0x12>
ffffffffc020263e:	e008                	sd	a0,0(s0)
ffffffffc0202640:	c511                	beqz	a0,ffffffffc020264c <get_page+0x1e>
ffffffffc0202642:	611c                	ld	a5,0(a0)
ffffffffc0202644:	4501                	li	a0,0
ffffffffc0202646:	0017f713          	andi	a4,a5,1
ffffffffc020264a:	e709                	bnez	a4,ffffffffc0202654 <get_page+0x26>
ffffffffc020264c:	60a2                	ld	ra,8(sp)
ffffffffc020264e:	6402                	ld	s0,0(sp)
ffffffffc0202650:	0141                	addi	sp,sp,16
ffffffffc0202652:	8082                	ret
ffffffffc0202654:	078a                	slli	a5,a5,0x2
ffffffffc0202656:	83b1                	srli	a5,a5,0xc
ffffffffc0202658:	00094717          	auipc	a4,0x94
ffffffffc020265c:	24873703          	ld	a4,584(a4) # ffffffffc02968a0 <npage>
ffffffffc0202660:	00e7ff63          	bgeu	a5,a4,ffffffffc020267e <get_page+0x50>
ffffffffc0202664:	60a2                	ld	ra,8(sp)
ffffffffc0202666:	6402                	ld	s0,0(sp)
ffffffffc0202668:	fff80537          	lui	a0,0xfff80
ffffffffc020266c:	97aa                	add	a5,a5,a0
ffffffffc020266e:	079a                	slli	a5,a5,0x6
ffffffffc0202670:	00094517          	auipc	a0,0x94
ffffffffc0202674:	23853503          	ld	a0,568(a0) # ffffffffc02968a8 <pages>
ffffffffc0202678:	953e                	add	a0,a0,a5
ffffffffc020267a:	0141                	addi	sp,sp,16
ffffffffc020267c:	8082                	ret
ffffffffc020267e:	bd3ff0ef          	jal	ra,ffffffffc0202250 <pa2page.part.0>

ffffffffc0202682 <unmap_range>:
ffffffffc0202682:	7159                	addi	sp,sp,-112
ffffffffc0202684:	00c5e7b3          	or	a5,a1,a2
ffffffffc0202688:	f486                	sd	ra,104(sp)
ffffffffc020268a:	f0a2                	sd	s0,96(sp)
ffffffffc020268c:	eca6                	sd	s1,88(sp)
ffffffffc020268e:	e8ca                	sd	s2,80(sp)
ffffffffc0202690:	e4ce                	sd	s3,72(sp)
ffffffffc0202692:	e0d2                	sd	s4,64(sp)
ffffffffc0202694:	fc56                	sd	s5,56(sp)
ffffffffc0202696:	f85a                	sd	s6,48(sp)
ffffffffc0202698:	f45e                	sd	s7,40(sp)
ffffffffc020269a:	f062                	sd	s8,32(sp)
ffffffffc020269c:	ec66                	sd	s9,24(sp)
ffffffffc020269e:	e86a                	sd	s10,16(sp)
ffffffffc02026a0:	17d2                	slli	a5,a5,0x34
ffffffffc02026a2:	e3ed                	bnez	a5,ffffffffc0202784 <unmap_range+0x102>
ffffffffc02026a4:	002007b7          	lui	a5,0x200
ffffffffc02026a8:	842e                	mv	s0,a1
ffffffffc02026aa:	0ef5ed63          	bltu	a1,a5,ffffffffc02027a4 <unmap_range+0x122>
ffffffffc02026ae:	8932                	mv	s2,a2
ffffffffc02026b0:	0ec5fa63          	bgeu	a1,a2,ffffffffc02027a4 <unmap_range+0x122>
ffffffffc02026b4:	4785                	li	a5,1
ffffffffc02026b6:	07fe                	slli	a5,a5,0x1f
ffffffffc02026b8:	0ec7e663          	bltu	a5,a2,ffffffffc02027a4 <unmap_range+0x122>
ffffffffc02026bc:	89aa                	mv	s3,a0
ffffffffc02026be:	6a05                	lui	s4,0x1
ffffffffc02026c0:	00094c97          	auipc	s9,0x94
ffffffffc02026c4:	1e0c8c93          	addi	s9,s9,480 # ffffffffc02968a0 <npage>
ffffffffc02026c8:	00094c17          	auipc	s8,0x94
ffffffffc02026cc:	1e0c0c13          	addi	s8,s8,480 # ffffffffc02968a8 <pages>
ffffffffc02026d0:	fff80bb7          	lui	s7,0xfff80
ffffffffc02026d4:	00094d17          	auipc	s10,0x94
ffffffffc02026d8:	1dcd0d13          	addi	s10,s10,476 # ffffffffc02968b0 <pmm_manager>
ffffffffc02026dc:	00200b37          	lui	s6,0x200
ffffffffc02026e0:	ffe00ab7          	lui	s5,0xffe00
ffffffffc02026e4:	4601                	li	a2,0
ffffffffc02026e6:	85a2                	mv	a1,s0
ffffffffc02026e8:	854e                	mv	a0,s3
ffffffffc02026ea:	c57ff0ef          	jal	ra,ffffffffc0202340 <get_pte>
ffffffffc02026ee:	84aa                	mv	s1,a0
ffffffffc02026f0:	cd29                	beqz	a0,ffffffffc020274a <unmap_range+0xc8>
ffffffffc02026f2:	611c                	ld	a5,0(a0)
ffffffffc02026f4:	e395                	bnez	a5,ffffffffc0202718 <unmap_range+0x96>
ffffffffc02026f6:	9452                	add	s0,s0,s4
ffffffffc02026f8:	ff2466e3          	bltu	s0,s2,ffffffffc02026e4 <unmap_range+0x62>
ffffffffc02026fc:	70a6                	ld	ra,104(sp)
ffffffffc02026fe:	7406                	ld	s0,96(sp)
ffffffffc0202700:	64e6                	ld	s1,88(sp)
ffffffffc0202702:	6946                	ld	s2,80(sp)
ffffffffc0202704:	69a6                	ld	s3,72(sp)
ffffffffc0202706:	6a06                	ld	s4,64(sp)
ffffffffc0202708:	7ae2                	ld	s5,56(sp)
ffffffffc020270a:	7b42                	ld	s6,48(sp)
ffffffffc020270c:	7ba2                	ld	s7,40(sp)
ffffffffc020270e:	7c02                	ld	s8,32(sp)
ffffffffc0202710:	6ce2                	ld	s9,24(sp)
ffffffffc0202712:	6d42                	ld	s10,16(sp)
ffffffffc0202714:	6165                	addi	sp,sp,112
ffffffffc0202716:	8082                	ret
ffffffffc0202718:	0017f713          	andi	a4,a5,1
ffffffffc020271c:	df69                	beqz	a4,ffffffffc02026f6 <unmap_range+0x74>
ffffffffc020271e:	000cb703          	ld	a4,0(s9)
ffffffffc0202722:	078a                	slli	a5,a5,0x2
ffffffffc0202724:	83b1                	srli	a5,a5,0xc
ffffffffc0202726:	08e7ff63          	bgeu	a5,a4,ffffffffc02027c4 <unmap_range+0x142>
ffffffffc020272a:	000c3503          	ld	a0,0(s8)
ffffffffc020272e:	97de                	add	a5,a5,s7
ffffffffc0202730:	079a                	slli	a5,a5,0x6
ffffffffc0202732:	953e                	add	a0,a0,a5
ffffffffc0202734:	411c                	lw	a5,0(a0)
ffffffffc0202736:	fff7871b          	addiw	a4,a5,-1
ffffffffc020273a:	c118                	sw	a4,0(a0)
ffffffffc020273c:	cf11                	beqz	a4,ffffffffc0202758 <unmap_range+0xd6>
ffffffffc020273e:	0004b023          	sd	zero,0(s1)
ffffffffc0202742:	12040073          	sfence.vma	s0
ffffffffc0202746:	9452                	add	s0,s0,s4
ffffffffc0202748:	bf45                	j	ffffffffc02026f8 <unmap_range+0x76>
ffffffffc020274a:	945a                	add	s0,s0,s6
ffffffffc020274c:	01547433          	and	s0,s0,s5
ffffffffc0202750:	d455                	beqz	s0,ffffffffc02026fc <unmap_range+0x7a>
ffffffffc0202752:	f92469e3          	bltu	s0,s2,ffffffffc02026e4 <unmap_range+0x62>
ffffffffc0202756:	b75d                	j	ffffffffc02026fc <unmap_range+0x7a>
ffffffffc0202758:	100027f3          	csrr	a5,sstatus
ffffffffc020275c:	8b89                	andi	a5,a5,2
ffffffffc020275e:	e799                	bnez	a5,ffffffffc020276c <unmap_range+0xea>
ffffffffc0202760:	000d3783          	ld	a5,0(s10)
ffffffffc0202764:	4585                	li	a1,1
ffffffffc0202766:	739c                	ld	a5,32(a5)
ffffffffc0202768:	9782                	jalr	a5
ffffffffc020276a:	bfd1                	j	ffffffffc020273e <unmap_range+0xbc>
ffffffffc020276c:	e42a                	sd	a0,8(sp)
ffffffffc020276e:	d04fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0202772:	000d3783          	ld	a5,0(s10)
ffffffffc0202776:	6522                	ld	a0,8(sp)
ffffffffc0202778:	4585                	li	a1,1
ffffffffc020277a:	739c                	ld	a5,32(a5)
ffffffffc020277c:	9782                	jalr	a5
ffffffffc020277e:	ceefe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0202782:	bf75                	j	ffffffffc020273e <unmap_range+0xbc>
ffffffffc0202784:	0000a697          	auipc	a3,0xa
ffffffffc0202788:	1b468693          	addi	a3,a3,436 # ffffffffc020c938 <default_pmm_manager+0x188>
ffffffffc020278c:	00009617          	auipc	a2,0x9
ffffffffc0202790:	38460613          	addi	a2,a2,900 # ffffffffc020bb10 <commands+0x210>
ffffffffc0202794:	15a00593          	li	a1,346
ffffffffc0202798:	0000a517          	auipc	a0,0xa
ffffffffc020279c:	16850513          	addi	a0,a0,360 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02027a0:	cfffd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02027a4:	0000a697          	auipc	a3,0xa
ffffffffc02027a8:	1c468693          	addi	a3,a3,452 # ffffffffc020c968 <default_pmm_manager+0x1b8>
ffffffffc02027ac:	00009617          	auipc	a2,0x9
ffffffffc02027b0:	36460613          	addi	a2,a2,868 # ffffffffc020bb10 <commands+0x210>
ffffffffc02027b4:	15b00593          	li	a1,347
ffffffffc02027b8:	0000a517          	auipc	a0,0xa
ffffffffc02027bc:	14850513          	addi	a0,a0,328 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02027c0:	cdffd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02027c4:	a8dff0ef          	jal	ra,ffffffffc0202250 <pa2page.part.0>

ffffffffc02027c8 <exit_range>:
ffffffffc02027c8:	7119                	addi	sp,sp,-128
ffffffffc02027ca:	00c5e7b3          	or	a5,a1,a2
ffffffffc02027ce:	fc86                	sd	ra,120(sp)
ffffffffc02027d0:	f8a2                	sd	s0,112(sp)
ffffffffc02027d2:	f4a6                	sd	s1,104(sp)
ffffffffc02027d4:	f0ca                	sd	s2,96(sp)
ffffffffc02027d6:	ecce                	sd	s3,88(sp)
ffffffffc02027d8:	e8d2                	sd	s4,80(sp)
ffffffffc02027da:	e4d6                	sd	s5,72(sp)
ffffffffc02027dc:	e0da                	sd	s6,64(sp)
ffffffffc02027de:	fc5e                	sd	s7,56(sp)
ffffffffc02027e0:	f862                	sd	s8,48(sp)
ffffffffc02027e2:	f466                	sd	s9,40(sp)
ffffffffc02027e4:	f06a                	sd	s10,32(sp)
ffffffffc02027e6:	ec6e                	sd	s11,24(sp)
ffffffffc02027e8:	17d2                	slli	a5,a5,0x34
ffffffffc02027ea:	20079a63          	bnez	a5,ffffffffc02029fe <exit_range+0x236>
ffffffffc02027ee:	002007b7          	lui	a5,0x200
ffffffffc02027f2:	24f5e463          	bltu	a1,a5,ffffffffc0202a3a <exit_range+0x272>
ffffffffc02027f6:	8ab2                	mv	s5,a2
ffffffffc02027f8:	24c5f163          	bgeu	a1,a2,ffffffffc0202a3a <exit_range+0x272>
ffffffffc02027fc:	4785                	li	a5,1
ffffffffc02027fe:	07fe                	slli	a5,a5,0x1f
ffffffffc0202800:	22c7ed63          	bltu	a5,a2,ffffffffc0202a3a <exit_range+0x272>
ffffffffc0202804:	c00009b7          	lui	s3,0xc0000
ffffffffc0202808:	0135f9b3          	and	s3,a1,s3
ffffffffc020280c:	ffe00937          	lui	s2,0xffe00
ffffffffc0202810:	400007b7          	lui	a5,0x40000
ffffffffc0202814:	5cfd                	li	s9,-1
ffffffffc0202816:	8c2a                	mv	s8,a0
ffffffffc0202818:	0125f933          	and	s2,a1,s2
ffffffffc020281c:	99be                	add	s3,s3,a5
ffffffffc020281e:	00094d17          	auipc	s10,0x94
ffffffffc0202822:	082d0d13          	addi	s10,s10,130 # ffffffffc02968a0 <npage>
ffffffffc0202826:	00ccdc93          	srli	s9,s9,0xc
ffffffffc020282a:	00094717          	auipc	a4,0x94
ffffffffc020282e:	07e70713          	addi	a4,a4,126 # ffffffffc02968a8 <pages>
ffffffffc0202832:	00094d97          	auipc	s11,0x94
ffffffffc0202836:	07ed8d93          	addi	s11,s11,126 # ffffffffc02968b0 <pmm_manager>
ffffffffc020283a:	c0000437          	lui	s0,0xc0000
ffffffffc020283e:	944e                	add	s0,s0,s3
ffffffffc0202840:	8079                	srli	s0,s0,0x1e
ffffffffc0202842:	1ff47413          	andi	s0,s0,511
ffffffffc0202846:	040e                	slli	s0,s0,0x3
ffffffffc0202848:	9462                	add	s0,s0,s8
ffffffffc020284a:	00043a03          	ld	s4,0(s0) # ffffffffc0000000 <_binary_bin_sfs_img_size+0xffffffffbff8ad00>
ffffffffc020284e:	001a7793          	andi	a5,s4,1
ffffffffc0202852:	eb99                	bnez	a5,ffffffffc0202868 <exit_range+0xa0>
ffffffffc0202854:	12098463          	beqz	s3,ffffffffc020297c <exit_range+0x1b4>
ffffffffc0202858:	400007b7          	lui	a5,0x40000
ffffffffc020285c:	97ce                	add	a5,a5,s3
ffffffffc020285e:	894e                	mv	s2,s3
ffffffffc0202860:	1159fe63          	bgeu	s3,s5,ffffffffc020297c <exit_range+0x1b4>
ffffffffc0202864:	89be                	mv	s3,a5
ffffffffc0202866:	bfd1                	j	ffffffffc020283a <exit_range+0x72>
ffffffffc0202868:	000d3783          	ld	a5,0(s10)
ffffffffc020286c:	0a0a                	slli	s4,s4,0x2
ffffffffc020286e:	00ca5a13          	srli	s4,s4,0xc
ffffffffc0202872:	1cfa7263          	bgeu	s4,a5,ffffffffc0202a36 <exit_range+0x26e>
ffffffffc0202876:	fff80637          	lui	a2,0xfff80
ffffffffc020287a:	9652                	add	a2,a2,s4
ffffffffc020287c:	000806b7          	lui	a3,0x80
ffffffffc0202880:	96b2                	add	a3,a3,a2
ffffffffc0202882:	0196f5b3          	and	a1,a3,s9
ffffffffc0202886:	061a                	slli	a2,a2,0x6
ffffffffc0202888:	06b2                	slli	a3,a3,0xc
ffffffffc020288a:	18f5fa63          	bgeu	a1,a5,ffffffffc0202a1e <exit_range+0x256>
ffffffffc020288e:	00094817          	auipc	a6,0x94
ffffffffc0202892:	02a80813          	addi	a6,a6,42 # ffffffffc02968b8 <va_pa_offset>
ffffffffc0202896:	00083b03          	ld	s6,0(a6)
ffffffffc020289a:	4b85                	li	s7,1
ffffffffc020289c:	fff80e37          	lui	t3,0xfff80
ffffffffc02028a0:	9b36                	add	s6,s6,a3
ffffffffc02028a2:	00080337          	lui	t1,0x80
ffffffffc02028a6:	6885                	lui	a7,0x1
ffffffffc02028a8:	a819                	j	ffffffffc02028be <exit_range+0xf6>
ffffffffc02028aa:	4b81                	li	s7,0
ffffffffc02028ac:	002007b7          	lui	a5,0x200
ffffffffc02028b0:	993e                	add	s2,s2,a5
ffffffffc02028b2:	08090c63          	beqz	s2,ffffffffc020294a <exit_range+0x182>
ffffffffc02028b6:	09397a63          	bgeu	s2,s3,ffffffffc020294a <exit_range+0x182>
ffffffffc02028ba:	0f597063          	bgeu	s2,s5,ffffffffc020299a <exit_range+0x1d2>
ffffffffc02028be:	01595493          	srli	s1,s2,0x15
ffffffffc02028c2:	1ff4f493          	andi	s1,s1,511
ffffffffc02028c6:	048e                	slli	s1,s1,0x3
ffffffffc02028c8:	94da                	add	s1,s1,s6
ffffffffc02028ca:	609c                	ld	a5,0(s1)
ffffffffc02028cc:	0017f693          	andi	a3,a5,1
ffffffffc02028d0:	dee9                	beqz	a3,ffffffffc02028aa <exit_range+0xe2>
ffffffffc02028d2:	000d3583          	ld	a1,0(s10)
ffffffffc02028d6:	078a                	slli	a5,a5,0x2
ffffffffc02028d8:	83b1                	srli	a5,a5,0xc
ffffffffc02028da:	14b7fe63          	bgeu	a5,a1,ffffffffc0202a36 <exit_range+0x26e>
ffffffffc02028de:	97f2                	add	a5,a5,t3
ffffffffc02028e0:	006786b3          	add	a3,a5,t1
ffffffffc02028e4:	0196feb3          	and	t4,a3,s9
ffffffffc02028e8:	00679513          	slli	a0,a5,0x6
ffffffffc02028ec:	06b2                	slli	a3,a3,0xc
ffffffffc02028ee:	12bef863          	bgeu	t4,a1,ffffffffc0202a1e <exit_range+0x256>
ffffffffc02028f2:	00083783          	ld	a5,0(a6)
ffffffffc02028f6:	96be                	add	a3,a3,a5
ffffffffc02028f8:	011685b3          	add	a1,a3,a7
ffffffffc02028fc:	629c                	ld	a5,0(a3)
ffffffffc02028fe:	8b85                	andi	a5,a5,1
ffffffffc0202900:	f7d5                	bnez	a5,ffffffffc02028ac <exit_range+0xe4>
ffffffffc0202902:	06a1                	addi	a3,a3,8
ffffffffc0202904:	fed59ce3          	bne	a1,a3,ffffffffc02028fc <exit_range+0x134>
ffffffffc0202908:	631c                	ld	a5,0(a4)
ffffffffc020290a:	953e                	add	a0,a0,a5
ffffffffc020290c:	100027f3          	csrr	a5,sstatus
ffffffffc0202910:	8b89                	andi	a5,a5,2
ffffffffc0202912:	e7d9                	bnez	a5,ffffffffc02029a0 <exit_range+0x1d8>
ffffffffc0202914:	000db783          	ld	a5,0(s11)
ffffffffc0202918:	4585                	li	a1,1
ffffffffc020291a:	e032                	sd	a2,0(sp)
ffffffffc020291c:	739c                	ld	a5,32(a5)
ffffffffc020291e:	9782                	jalr	a5
ffffffffc0202920:	6602                	ld	a2,0(sp)
ffffffffc0202922:	00094817          	auipc	a6,0x94
ffffffffc0202926:	f9680813          	addi	a6,a6,-106 # ffffffffc02968b8 <va_pa_offset>
ffffffffc020292a:	fff80e37          	lui	t3,0xfff80
ffffffffc020292e:	00080337          	lui	t1,0x80
ffffffffc0202932:	6885                	lui	a7,0x1
ffffffffc0202934:	00094717          	auipc	a4,0x94
ffffffffc0202938:	f7470713          	addi	a4,a4,-140 # ffffffffc02968a8 <pages>
ffffffffc020293c:	0004b023          	sd	zero,0(s1)
ffffffffc0202940:	002007b7          	lui	a5,0x200
ffffffffc0202944:	993e                	add	s2,s2,a5
ffffffffc0202946:	f60918e3          	bnez	s2,ffffffffc02028b6 <exit_range+0xee>
ffffffffc020294a:	f00b85e3          	beqz	s7,ffffffffc0202854 <exit_range+0x8c>
ffffffffc020294e:	000d3783          	ld	a5,0(s10)
ffffffffc0202952:	0efa7263          	bgeu	s4,a5,ffffffffc0202a36 <exit_range+0x26e>
ffffffffc0202956:	6308                	ld	a0,0(a4)
ffffffffc0202958:	9532                	add	a0,a0,a2
ffffffffc020295a:	100027f3          	csrr	a5,sstatus
ffffffffc020295e:	8b89                	andi	a5,a5,2
ffffffffc0202960:	efad                	bnez	a5,ffffffffc02029da <exit_range+0x212>
ffffffffc0202962:	000db783          	ld	a5,0(s11)
ffffffffc0202966:	4585                	li	a1,1
ffffffffc0202968:	739c                	ld	a5,32(a5)
ffffffffc020296a:	9782                	jalr	a5
ffffffffc020296c:	00094717          	auipc	a4,0x94
ffffffffc0202970:	f3c70713          	addi	a4,a4,-196 # ffffffffc02968a8 <pages>
ffffffffc0202974:	00043023          	sd	zero,0(s0)
ffffffffc0202978:	ee0990e3          	bnez	s3,ffffffffc0202858 <exit_range+0x90>
ffffffffc020297c:	70e6                	ld	ra,120(sp)
ffffffffc020297e:	7446                	ld	s0,112(sp)
ffffffffc0202980:	74a6                	ld	s1,104(sp)
ffffffffc0202982:	7906                	ld	s2,96(sp)
ffffffffc0202984:	69e6                	ld	s3,88(sp)
ffffffffc0202986:	6a46                	ld	s4,80(sp)
ffffffffc0202988:	6aa6                	ld	s5,72(sp)
ffffffffc020298a:	6b06                	ld	s6,64(sp)
ffffffffc020298c:	7be2                	ld	s7,56(sp)
ffffffffc020298e:	7c42                	ld	s8,48(sp)
ffffffffc0202990:	7ca2                	ld	s9,40(sp)
ffffffffc0202992:	7d02                	ld	s10,32(sp)
ffffffffc0202994:	6de2                	ld	s11,24(sp)
ffffffffc0202996:	6109                	addi	sp,sp,128
ffffffffc0202998:	8082                	ret
ffffffffc020299a:	ea0b8fe3          	beqz	s7,ffffffffc0202858 <exit_range+0x90>
ffffffffc020299e:	bf45                	j	ffffffffc020294e <exit_range+0x186>
ffffffffc02029a0:	e032                	sd	a2,0(sp)
ffffffffc02029a2:	e42a                	sd	a0,8(sp)
ffffffffc02029a4:	acefe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02029a8:	000db783          	ld	a5,0(s11)
ffffffffc02029ac:	6522                	ld	a0,8(sp)
ffffffffc02029ae:	4585                	li	a1,1
ffffffffc02029b0:	739c                	ld	a5,32(a5)
ffffffffc02029b2:	9782                	jalr	a5
ffffffffc02029b4:	ab8fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02029b8:	6602                	ld	a2,0(sp)
ffffffffc02029ba:	00094717          	auipc	a4,0x94
ffffffffc02029be:	eee70713          	addi	a4,a4,-274 # ffffffffc02968a8 <pages>
ffffffffc02029c2:	6885                	lui	a7,0x1
ffffffffc02029c4:	00080337          	lui	t1,0x80
ffffffffc02029c8:	fff80e37          	lui	t3,0xfff80
ffffffffc02029cc:	00094817          	auipc	a6,0x94
ffffffffc02029d0:	eec80813          	addi	a6,a6,-276 # ffffffffc02968b8 <va_pa_offset>
ffffffffc02029d4:	0004b023          	sd	zero,0(s1)
ffffffffc02029d8:	b7a5                	j	ffffffffc0202940 <exit_range+0x178>
ffffffffc02029da:	e02a                	sd	a0,0(sp)
ffffffffc02029dc:	a96fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02029e0:	000db783          	ld	a5,0(s11)
ffffffffc02029e4:	6502                	ld	a0,0(sp)
ffffffffc02029e6:	4585                	li	a1,1
ffffffffc02029e8:	739c                	ld	a5,32(a5)
ffffffffc02029ea:	9782                	jalr	a5
ffffffffc02029ec:	a80fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02029f0:	00094717          	auipc	a4,0x94
ffffffffc02029f4:	eb870713          	addi	a4,a4,-328 # ffffffffc02968a8 <pages>
ffffffffc02029f8:	00043023          	sd	zero,0(s0)
ffffffffc02029fc:	bfb5                	j	ffffffffc0202978 <exit_range+0x1b0>
ffffffffc02029fe:	0000a697          	auipc	a3,0xa
ffffffffc0202a02:	f3a68693          	addi	a3,a3,-198 # ffffffffc020c938 <default_pmm_manager+0x188>
ffffffffc0202a06:	00009617          	auipc	a2,0x9
ffffffffc0202a0a:	10a60613          	addi	a2,a2,266 # ffffffffc020bb10 <commands+0x210>
ffffffffc0202a0e:	16f00593          	li	a1,367
ffffffffc0202a12:	0000a517          	auipc	a0,0xa
ffffffffc0202a16:	eee50513          	addi	a0,a0,-274 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0202a1a:	a85fd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0202a1e:	0000a617          	auipc	a2,0xa
ffffffffc0202a22:	dca60613          	addi	a2,a2,-566 # ffffffffc020c7e8 <default_pmm_manager+0x38>
ffffffffc0202a26:	07100593          	li	a1,113
ffffffffc0202a2a:	0000a517          	auipc	a0,0xa
ffffffffc0202a2e:	de650513          	addi	a0,a0,-538 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc0202a32:	a6dfd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0202a36:	81bff0ef          	jal	ra,ffffffffc0202250 <pa2page.part.0>
ffffffffc0202a3a:	0000a697          	auipc	a3,0xa
ffffffffc0202a3e:	f2e68693          	addi	a3,a3,-210 # ffffffffc020c968 <default_pmm_manager+0x1b8>
ffffffffc0202a42:	00009617          	auipc	a2,0x9
ffffffffc0202a46:	0ce60613          	addi	a2,a2,206 # ffffffffc020bb10 <commands+0x210>
ffffffffc0202a4a:	17000593          	li	a1,368
ffffffffc0202a4e:	0000a517          	auipc	a0,0xa
ffffffffc0202a52:	eb250513          	addi	a0,a0,-334 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0202a56:	a49fd0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0202a5a <page_remove>:
ffffffffc0202a5a:	7179                	addi	sp,sp,-48
ffffffffc0202a5c:	4601                	li	a2,0
ffffffffc0202a5e:	ec26                	sd	s1,24(sp)
ffffffffc0202a60:	f406                	sd	ra,40(sp)
ffffffffc0202a62:	f022                	sd	s0,32(sp)
ffffffffc0202a64:	84ae                	mv	s1,a1
ffffffffc0202a66:	8dbff0ef          	jal	ra,ffffffffc0202340 <get_pte>
ffffffffc0202a6a:	c511                	beqz	a0,ffffffffc0202a76 <page_remove+0x1c>
ffffffffc0202a6c:	611c                	ld	a5,0(a0)
ffffffffc0202a6e:	842a                	mv	s0,a0
ffffffffc0202a70:	0017f713          	andi	a4,a5,1
ffffffffc0202a74:	e711                	bnez	a4,ffffffffc0202a80 <page_remove+0x26>
ffffffffc0202a76:	70a2                	ld	ra,40(sp)
ffffffffc0202a78:	7402                	ld	s0,32(sp)
ffffffffc0202a7a:	64e2                	ld	s1,24(sp)
ffffffffc0202a7c:	6145                	addi	sp,sp,48
ffffffffc0202a7e:	8082                	ret
ffffffffc0202a80:	078a                	slli	a5,a5,0x2
ffffffffc0202a82:	83b1                	srli	a5,a5,0xc
ffffffffc0202a84:	00094717          	auipc	a4,0x94
ffffffffc0202a88:	e1c73703          	ld	a4,-484(a4) # ffffffffc02968a0 <npage>
ffffffffc0202a8c:	06e7f363          	bgeu	a5,a4,ffffffffc0202af2 <page_remove+0x98>
ffffffffc0202a90:	fff80537          	lui	a0,0xfff80
ffffffffc0202a94:	97aa                	add	a5,a5,a0
ffffffffc0202a96:	079a                	slli	a5,a5,0x6
ffffffffc0202a98:	00094517          	auipc	a0,0x94
ffffffffc0202a9c:	e1053503          	ld	a0,-496(a0) # ffffffffc02968a8 <pages>
ffffffffc0202aa0:	953e                	add	a0,a0,a5
ffffffffc0202aa2:	411c                	lw	a5,0(a0)
ffffffffc0202aa4:	fff7871b          	addiw	a4,a5,-1
ffffffffc0202aa8:	c118                	sw	a4,0(a0)
ffffffffc0202aaa:	cb11                	beqz	a4,ffffffffc0202abe <page_remove+0x64>
ffffffffc0202aac:	00043023          	sd	zero,0(s0)
ffffffffc0202ab0:	12048073          	sfence.vma	s1
ffffffffc0202ab4:	70a2                	ld	ra,40(sp)
ffffffffc0202ab6:	7402                	ld	s0,32(sp)
ffffffffc0202ab8:	64e2                	ld	s1,24(sp)
ffffffffc0202aba:	6145                	addi	sp,sp,48
ffffffffc0202abc:	8082                	ret
ffffffffc0202abe:	100027f3          	csrr	a5,sstatus
ffffffffc0202ac2:	8b89                	andi	a5,a5,2
ffffffffc0202ac4:	eb89                	bnez	a5,ffffffffc0202ad6 <page_remove+0x7c>
ffffffffc0202ac6:	00094797          	auipc	a5,0x94
ffffffffc0202aca:	dea7b783          	ld	a5,-534(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc0202ace:	739c                	ld	a5,32(a5)
ffffffffc0202ad0:	4585                	li	a1,1
ffffffffc0202ad2:	9782                	jalr	a5
ffffffffc0202ad4:	bfe1                	j	ffffffffc0202aac <page_remove+0x52>
ffffffffc0202ad6:	e42a                	sd	a0,8(sp)
ffffffffc0202ad8:	99afe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0202adc:	00094797          	auipc	a5,0x94
ffffffffc0202ae0:	dd47b783          	ld	a5,-556(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc0202ae4:	739c                	ld	a5,32(a5)
ffffffffc0202ae6:	6522                	ld	a0,8(sp)
ffffffffc0202ae8:	4585                	li	a1,1
ffffffffc0202aea:	9782                	jalr	a5
ffffffffc0202aec:	980fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0202af0:	bf75                	j	ffffffffc0202aac <page_remove+0x52>
ffffffffc0202af2:	f5eff0ef          	jal	ra,ffffffffc0202250 <pa2page.part.0>

ffffffffc0202af6 <page_insert>:
ffffffffc0202af6:	7139                	addi	sp,sp,-64
ffffffffc0202af8:	e852                	sd	s4,16(sp)
ffffffffc0202afa:	8a32                	mv	s4,a2
ffffffffc0202afc:	f822                	sd	s0,48(sp)
ffffffffc0202afe:	4605                	li	a2,1
ffffffffc0202b00:	842e                	mv	s0,a1
ffffffffc0202b02:	85d2                	mv	a1,s4
ffffffffc0202b04:	f426                	sd	s1,40(sp)
ffffffffc0202b06:	fc06                	sd	ra,56(sp)
ffffffffc0202b08:	f04a                	sd	s2,32(sp)
ffffffffc0202b0a:	ec4e                	sd	s3,24(sp)
ffffffffc0202b0c:	e456                	sd	s5,8(sp)
ffffffffc0202b0e:	84b6                	mv	s1,a3
ffffffffc0202b10:	831ff0ef          	jal	ra,ffffffffc0202340 <get_pte>
ffffffffc0202b14:	c961                	beqz	a0,ffffffffc0202be4 <page_insert+0xee>
ffffffffc0202b16:	4014                	lw	a3,0(s0)
ffffffffc0202b18:	611c                	ld	a5,0(a0)
ffffffffc0202b1a:	89aa                	mv	s3,a0
ffffffffc0202b1c:	0016871b          	addiw	a4,a3,1
ffffffffc0202b20:	c018                	sw	a4,0(s0)
ffffffffc0202b22:	0017f713          	andi	a4,a5,1
ffffffffc0202b26:	ef05                	bnez	a4,ffffffffc0202b5e <page_insert+0x68>
ffffffffc0202b28:	00094717          	auipc	a4,0x94
ffffffffc0202b2c:	d8073703          	ld	a4,-640(a4) # ffffffffc02968a8 <pages>
ffffffffc0202b30:	8c19                	sub	s0,s0,a4
ffffffffc0202b32:	000807b7          	lui	a5,0x80
ffffffffc0202b36:	8419                	srai	s0,s0,0x6
ffffffffc0202b38:	943e                	add	s0,s0,a5
ffffffffc0202b3a:	042a                	slli	s0,s0,0xa
ffffffffc0202b3c:	8cc1                	or	s1,s1,s0
ffffffffc0202b3e:	0014e493          	ori	s1,s1,1
ffffffffc0202b42:	0099b023          	sd	s1,0(s3) # ffffffffc0000000 <_binary_bin_sfs_img_size+0xffffffffbff8ad00>
ffffffffc0202b46:	120a0073          	sfence.vma	s4
ffffffffc0202b4a:	4501                	li	a0,0
ffffffffc0202b4c:	70e2                	ld	ra,56(sp)
ffffffffc0202b4e:	7442                	ld	s0,48(sp)
ffffffffc0202b50:	74a2                	ld	s1,40(sp)
ffffffffc0202b52:	7902                	ld	s2,32(sp)
ffffffffc0202b54:	69e2                	ld	s3,24(sp)
ffffffffc0202b56:	6a42                	ld	s4,16(sp)
ffffffffc0202b58:	6aa2                	ld	s5,8(sp)
ffffffffc0202b5a:	6121                	addi	sp,sp,64
ffffffffc0202b5c:	8082                	ret
ffffffffc0202b5e:	078a                	slli	a5,a5,0x2
ffffffffc0202b60:	83b1                	srli	a5,a5,0xc
ffffffffc0202b62:	00094717          	auipc	a4,0x94
ffffffffc0202b66:	d3e73703          	ld	a4,-706(a4) # ffffffffc02968a0 <npage>
ffffffffc0202b6a:	06e7ff63          	bgeu	a5,a4,ffffffffc0202be8 <page_insert+0xf2>
ffffffffc0202b6e:	00094a97          	auipc	s5,0x94
ffffffffc0202b72:	d3aa8a93          	addi	s5,s5,-710 # ffffffffc02968a8 <pages>
ffffffffc0202b76:	000ab703          	ld	a4,0(s5)
ffffffffc0202b7a:	fff80937          	lui	s2,0xfff80
ffffffffc0202b7e:	993e                	add	s2,s2,a5
ffffffffc0202b80:	091a                	slli	s2,s2,0x6
ffffffffc0202b82:	993a                	add	s2,s2,a4
ffffffffc0202b84:	01240c63          	beq	s0,s2,ffffffffc0202b9c <page_insert+0xa6>
ffffffffc0202b88:	00092783          	lw	a5,0(s2) # fffffffffff80000 <end+0x3fce96f0>
ffffffffc0202b8c:	fff7869b          	addiw	a3,a5,-1
ffffffffc0202b90:	00d92023          	sw	a3,0(s2)
ffffffffc0202b94:	c691                	beqz	a3,ffffffffc0202ba0 <page_insert+0xaa>
ffffffffc0202b96:	120a0073          	sfence.vma	s4
ffffffffc0202b9a:	bf59                	j	ffffffffc0202b30 <page_insert+0x3a>
ffffffffc0202b9c:	c014                	sw	a3,0(s0)
ffffffffc0202b9e:	bf49                	j	ffffffffc0202b30 <page_insert+0x3a>
ffffffffc0202ba0:	100027f3          	csrr	a5,sstatus
ffffffffc0202ba4:	8b89                	andi	a5,a5,2
ffffffffc0202ba6:	ef91                	bnez	a5,ffffffffc0202bc2 <page_insert+0xcc>
ffffffffc0202ba8:	00094797          	auipc	a5,0x94
ffffffffc0202bac:	d087b783          	ld	a5,-760(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc0202bb0:	739c                	ld	a5,32(a5)
ffffffffc0202bb2:	4585                	li	a1,1
ffffffffc0202bb4:	854a                	mv	a0,s2
ffffffffc0202bb6:	9782                	jalr	a5
ffffffffc0202bb8:	000ab703          	ld	a4,0(s5)
ffffffffc0202bbc:	120a0073          	sfence.vma	s4
ffffffffc0202bc0:	bf85                	j	ffffffffc0202b30 <page_insert+0x3a>
ffffffffc0202bc2:	8b0fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0202bc6:	00094797          	auipc	a5,0x94
ffffffffc0202bca:	cea7b783          	ld	a5,-790(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc0202bce:	739c                	ld	a5,32(a5)
ffffffffc0202bd0:	4585                	li	a1,1
ffffffffc0202bd2:	854a                	mv	a0,s2
ffffffffc0202bd4:	9782                	jalr	a5
ffffffffc0202bd6:	896fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0202bda:	000ab703          	ld	a4,0(s5)
ffffffffc0202bde:	120a0073          	sfence.vma	s4
ffffffffc0202be2:	b7b9                	j	ffffffffc0202b30 <page_insert+0x3a>
ffffffffc0202be4:	5571                	li	a0,-4
ffffffffc0202be6:	b79d                	j	ffffffffc0202b4c <page_insert+0x56>
ffffffffc0202be8:	e68ff0ef          	jal	ra,ffffffffc0202250 <pa2page.part.0>

ffffffffc0202bec <pmm_init>:
ffffffffc0202bec:	0000a797          	auipc	a5,0xa
ffffffffc0202bf0:	bc478793          	addi	a5,a5,-1084 # ffffffffc020c7b0 <default_pmm_manager>
ffffffffc0202bf4:	638c                	ld	a1,0(a5)
ffffffffc0202bf6:	7159                	addi	sp,sp,-112
ffffffffc0202bf8:	f85a                	sd	s6,48(sp)
ffffffffc0202bfa:	0000a517          	auipc	a0,0xa
ffffffffc0202bfe:	d8650513          	addi	a0,a0,-634 # ffffffffc020c980 <default_pmm_manager+0x1d0>
ffffffffc0202c02:	00094b17          	auipc	s6,0x94
ffffffffc0202c06:	caeb0b13          	addi	s6,s6,-850 # ffffffffc02968b0 <pmm_manager>
ffffffffc0202c0a:	f486                	sd	ra,104(sp)
ffffffffc0202c0c:	e8ca                	sd	s2,80(sp)
ffffffffc0202c0e:	e4ce                	sd	s3,72(sp)
ffffffffc0202c10:	f0a2                	sd	s0,96(sp)
ffffffffc0202c12:	eca6                	sd	s1,88(sp)
ffffffffc0202c14:	e0d2                	sd	s4,64(sp)
ffffffffc0202c16:	fc56                	sd	s5,56(sp)
ffffffffc0202c18:	f45e                	sd	s7,40(sp)
ffffffffc0202c1a:	f062                	sd	s8,32(sp)
ffffffffc0202c1c:	ec66                	sd	s9,24(sp)
ffffffffc0202c1e:	00fb3023          	sd	a5,0(s6)
ffffffffc0202c22:	d84fd0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0202c26:	000b3783          	ld	a5,0(s6)
ffffffffc0202c2a:	00094997          	auipc	s3,0x94
ffffffffc0202c2e:	c8e98993          	addi	s3,s3,-882 # ffffffffc02968b8 <va_pa_offset>
ffffffffc0202c32:	679c                	ld	a5,8(a5)
ffffffffc0202c34:	9782                	jalr	a5
ffffffffc0202c36:	57f5                	li	a5,-3
ffffffffc0202c38:	07fa                	slli	a5,a5,0x1e
ffffffffc0202c3a:	00f9b023          	sd	a5,0(s3)
ffffffffc0202c3e:	e0bfd0ef          	jal	ra,ffffffffc0200a48 <get_memory_base>
ffffffffc0202c42:	892a                	mv	s2,a0
ffffffffc0202c44:	e0ffd0ef          	jal	ra,ffffffffc0200a52 <get_memory_size>
ffffffffc0202c48:	280502e3          	beqz	a0,ffffffffc02036cc <pmm_init+0xae0>
ffffffffc0202c4c:	84aa                	mv	s1,a0
ffffffffc0202c4e:	0000a517          	auipc	a0,0xa
ffffffffc0202c52:	d6a50513          	addi	a0,a0,-662 # ffffffffc020c9b8 <default_pmm_manager+0x208>
ffffffffc0202c56:	d50fd0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0202c5a:	00990433          	add	s0,s2,s1
ffffffffc0202c5e:	fff40693          	addi	a3,s0,-1
ffffffffc0202c62:	864a                	mv	a2,s2
ffffffffc0202c64:	85a6                	mv	a1,s1
ffffffffc0202c66:	0000a517          	auipc	a0,0xa
ffffffffc0202c6a:	d6a50513          	addi	a0,a0,-662 # ffffffffc020c9d0 <default_pmm_manager+0x220>
ffffffffc0202c6e:	d38fd0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0202c72:	c8000737          	lui	a4,0xc8000
ffffffffc0202c76:	87a2                	mv	a5,s0
ffffffffc0202c78:	5e876e63          	bltu	a4,s0,ffffffffc0203274 <pmm_init+0x688>
ffffffffc0202c7c:	757d                	lui	a0,0xfffff
ffffffffc0202c7e:	00095617          	auipc	a2,0x95
ffffffffc0202c82:	c9160613          	addi	a2,a2,-879 # ffffffffc029790f <end+0xfff>
ffffffffc0202c86:	8e69                	and	a2,a2,a0
ffffffffc0202c88:	00094497          	auipc	s1,0x94
ffffffffc0202c8c:	c1848493          	addi	s1,s1,-1000 # ffffffffc02968a0 <npage>
ffffffffc0202c90:	00c7d513          	srli	a0,a5,0xc
ffffffffc0202c94:	00094b97          	auipc	s7,0x94
ffffffffc0202c98:	c14b8b93          	addi	s7,s7,-1004 # ffffffffc02968a8 <pages>
ffffffffc0202c9c:	e088                	sd	a0,0(s1)
ffffffffc0202c9e:	00cbb023          	sd	a2,0(s7)
ffffffffc0202ca2:	000807b7          	lui	a5,0x80
ffffffffc0202ca6:	86b2                	mv	a3,a2
ffffffffc0202ca8:	02f50863          	beq	a0,a5,ffffffffc0202cd8 <pmm_init+0xec>
ffffffffc0202cac:	4781                	li	a5,0
ffffffffc0202cae:	4585                	li	a1,1
ffffffffc0202cb0:	fff806b7          	lui	a3,0xfff80
ffffffffc0202cb4:	00679513          	slli	a0,a5,0x6
ffffffffc0202cb8:	9532                	add	a0,a0,a2
ffffffffc0202cba:	00850713          	addi	a4,a0,8 # fffffffffffff008 <end+0x3fd686f8>
ffffffffc0202cbe:	40b7302f          	amoor.d	zero,a1,(a4)
ffffffffc0202cc2:	6088                	ld	a0,0(s1)
ffffffffc0202cc4:	0785                	addi	a5,a5,1
ffffffffc0202cc6:	000bb603          	ld	a2,0(s7)
ffffffffc0202cca:	00d50733          	add	a4,a0,a3
ffffffffc0202cce:	fee7e3e3          	bltu	a5,a4,ffffffffc0202cb4 <pmm_init+0xc8>
ffffffffc0202cd2:	071a                	slli	a4,a4,0x6
ffffffffc0202cd4:	00e606b3          	add	a3,a2,a4
ffffffffc0202cd8:	c02007b7          	lui	a5,0xc0200
ffffffffc0202cdc:	3af6eae3          	bltu	a3,a5,ffffffffc0203890 <pmm_init+0xca4>
ffffffffc0202ce0:	0009b583          	ld	a1,0(s3)
ffffffffc0202ce4:	77fd                	lui	a5,0xfffff
ffffffffc0202ce6:	8c7d                	and	s0,s0,a5
ffffffffc0202ce8:	8e8d                	sub	a3,a3,a1
ffffffffc0202cea:	5e86e363          	bltu	a3,s0,ffffffffc02032d0 <pmm_init+0x6e4>
ffffffffc0202cee:	0000a517          	auipc	a0,0xa
ffffffffc0202cf2:	d0a50513          	addi	a0,a0,-758 # ffffffffc020c9f8 <default_pmm_manager+0x248>
ffffffffc0202cf6:	cb0fd0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0202cfa:	000b3783          	ld	a5,0(s6)
ffffffffc0202cfe:	7b9c                	ld	a5,48(a5)
ffffffffc0202d00:	9782                	jalr	a5
ffffffffc0202d02:	0000a517          	auipc	a0,0xa
ffffffffc0202d06:	d0e50513          	addi	a0,a0,-754 # ffffffffc020ca10 <default_pmm_manager+0x260>
ffffffffc0202d0a:	c9cfd0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0202d0e:	100027f3          	csrr	a5,sstatus
ffffffffc0202d12:	8b89                	andi	a5,a5,2
ffffffffc0202d14:	5a079363          	bnez	a5,ffffffffc02032ba <pmm_init+0x6ce>
ffffffffc0202d18:	000b3783          	ld	a5,0(s6)
ffffffffc0202d1c:	4505                	li	a0,1
ffffffffc0202d1e:	6f9c                	ld	a5,24(a5)
ffffffffc0202d20:	9782                	jalr	a5
ffffffffc0202d22:	842a                	mv	s0,a0
ffffffffc0202d24:	180408e3          	beqz	s0,ffffffffc02036b4 <pmm_init+0xac8>
ffffffffc0202d28:	000bb683          	ld	a3,0(s7)
ffffffffc0202d2c:	5a7d                	li	s4,-1
ffffffffc0202d2e:	6098                	ld	a4,0(s1)
ffffffffc0202d30:	40d406b3          	sub	a3,s0,a3
ffffffffc0202d34:	8699                	srai	a3,a3,0x6
ffffffffc0202d36:	00080437          	lui	s0,0x80
ffffffffc0202d3a:	96a2                	add	a3,a3,s0
ffffffffc0202d3c:	00ca5793          	srli	a5,s4,0xc
ffffffffc0202d40:	8ff5                	and	a5,a5,a3
ffffffffc0202d42:	06b2                	slli	a3,a3,0xc
ffffffffc0202d44:	30e7fde3          	bgeu	a5,a4,ffffffffc020385e <pmm_init+0xc72>
ffffffffc0202d48:	0009b403          	ld	s0,0(s3)
ffffffffc0202d4c:	6605                	lui	a2,0x1
ffffffffc0202d4e:	4581                	li	a1,0
ffffffffc0202d50:	9436                	add	s0,s0,a3
ffffffffc0202d52:	8522                	mv	a0,s0
ffffffffc0202d54:	0db080ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc0202d58:	0009b683          	ld	a3,0(s3)
ffffffffc0202d5c:	77fd                	lui	a5,0xfffff
ffffffffc0202d5e:	0000a917          	auipc	s2,0xa
ffffffffc0202d62:	93990913          	addi	s2,s2,-1735 # ffffffffc020c697 <commands+0xd97>
ffffffffc0202d66:	00f97933          	and	s2,s2,a5
ffffffffc0202d6a:	c0200ab7          	lui	s5,0xc0200
ffffffffc0202d6e:	3fe00637          	lui	a2,0x3fe00
ffffffffc0202d72:	964a                	add	a2,a2,s2
ffffffffc0202d74:	4729                	li	a4,10
ffffffffc0202d76:	40da86b3          	sub	a3,s5,a3
ffffffffc0202d7a:	c02005b7          	lui	a1,0xc0200
ffffffffc0202d7e:	8522                	mv	a0,s0
ffffffffc0202d80:	fe8ff0ef          	jal	ra,ffffffffc0202568 <boot_map_segment>
ffffffffc0202d84:	c8000637          	lui	a2,0xc8000
ffffffffc0202d88:	41260633          	sub	a2,a2,s2
ffffffffc0202d8c:	3f596ce3          	bltu	s2,s5,ffffffffc0203984 <pmm_init+0xd98>
ffffffffc0202d90:	0009b683          	ld	a3,0(s3)
ffffffffc0202d94:	85ca                	mv	a1,s2
ffffffffc0202d96:	4719                	li	a4,6
ffffffffc0202d98:	40d906b3          	sub	a3,s2,a3
ffffffffc0202d9c:	8522                	mv	a0,s0
ffffffffc0202d9e:	00094917          	auipc	s2,0x94
ffffffffc0202da2:	afa90913          	addi	s2,s2,-1286 # ffffffffc0296898 <boot_pgdir_va>
ffffffffc0202da6:	fc2ff0ef          	jal	ra,ffffffffc0202568 <boot_map_segment>
ffffffffc0202daa:	00893023          	sd	s0,0(s2)
ffffffffc0202dae:	2d5464e3          	bltu	s0,s5,ffffffffc0203876 <pmm_init+0xc8a>
ffffffffc0202db2:	0009b783          	ld	a5,0(s3)
ffffffffc0202db6:	1a7e                	slli	s4,s4,0x3f
ffffffffc0202db8:	8c1d                	sub	s0,s0,a5
ffffffffc0202dba:	00c45793          	srli	a5,s0,0xc
ffffffffc0202dbe:	00094717          	auipc	a4,0x94
ffffffffc0202dc2:	ac873923          	sd	s0,-1326(a4) # ffffffffc0296890 <boot_pgdir_pa>
ffffffffc0202dc6:	0147ea33          	or	s4,a5,s4
ffffffffc0202dca:	180a1073          	csrw	satp,s4
ffffffffc0202dce:	12000073          	sfence.vma
ffffffffc0202dd2:	0000a517          	auipc	a0,0xa
ffffffffc0202dd6:	c7e50513          	addi	a0,a0,-898 # ffffffffc020ca50 <default_pmm_manager+0x2a0>
ffffffffc0202dda:	bccfd0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0202dde:	0000e717          	auipc	a4,0xe
ffffffffc0202de2:	22270713          	addi	a4,a4,546 # ffffffffc0211000 <bootstack>
ffffffffc0202de6:	0000e797          	auipc	a5,0xe
ffffffffc0202dea:	21a78793          	addi	a5,a5,538 # ffffffffc0211000 <bootstack>
ffffffffc0202dee:	5cf70d63          	beq	a4,a5,ffffffffc02033c8 <pmm_init+0x7dc>
ffffffffc0202df2:	100027f3          	csrr	a5,sstatus
ffffffffc0202df6:	8b89                	andi	a5,a5,2
ffffffffc0202df8:	4a079763          	bnez	a5,ffffffffc02032a6 <pmm_init+0x6ba>
ffffffffc0202dfc:	000b3783          	ld	a5,0(s6)
ffffffffc0202e00:	779c                	ld	a5,40(a5)
ffffffffc0202e02:	9782                	jalr	a5
ffffffffc0202e04:	842a                	mv	s0,a0
ffffffffc0202e06:	6098                	ld	a4,0(s1)
ffffffffc0202e08:	c80007b7          	lui	a5,0xc8000
ffffffffc0202e0c:	83b1                	srli	a5,a5,0xc
ffffffffc0202e0e:	08e7e3e3          	bltu	a5,a4,ffffffffc0203694 <pmm_init+0xaa8>
ffffffffc0202e12:	00093503          	ld	a0,0(s2)
ffffffffc0202e16:	04050fe3          	beqz	a0,ffffffffc0203674 <pmm_init+0xa88>
ffffffffc0202e1a:	03451793          	slli	a5,a0,0x34
ffffffffc0202e1e:	04079be3          	bnez	a5,ffffffffc0203674 <pmm_init+0xa88>
ffffffffc0202e22:	4601                	li	a2,0
ffffffffc0202e24:	4581                	li	a1,0
ffffffffc0202e26:	809ff0ef          	jal	ra,ffffffffc020262e <get_page>
ffffffffc0202e2a:	2e0511e3          	bnez	a0,ffffffffc020390c <pmm_init+0xd20>
ffffffffc0202e2e:	100027f3          	csrr	a5,sstatus
ffffffffc0202e32:	8b89                	andi	a5,a5,2
ffffffffc0202e34:	44079e63          	bnez	a5,ffffffffc0203290 <pmm_init+0x6a4>
ffffffffc0202e38:	000b3783          	ld	a5,0(s6)
ffffffffc0202e3c:	4505                	li	a0,1
ffffffffc0202e3e:	6f9c                	ld	a5,24(a5)
ffffffffc0202e40:	9782                	jalr	a5
ffffffffc0202e42:	8a2a                	mv	s4,a0
ffffffffc0202e44:	00093503          	ld	a0,0(s2)
ffffffffc0202e48:	4681                	li	a3,0
ffffffffc0202e4a:	4601                	li	a2,0
ffffffffc0202e4c:	85d2                	mv	a1,s4
ffffffffc0202e4e:	ca9ff0ef          	jal	ra,ffffffffc0202af6 <page_insert>
ffffffffc0202e52:	26051be3          	bnez	a0,ffffffffc02038c8 <pmm_init+0xcdc>
ffffffffc0202e56:	00093503          	ld	a0,0(s2)
ffffffffc0202e5a:	4601                	li	a2,0
ffffffffc0202e5c:	4581                	li	a1,0
ffffffffc0202e5e:	ce2ff0ef          	jal	ra,ffffffffc0202340 <get_pte>
ffffffffc0202e62:	280505e3          	beqz	a0,ffffffffc02038ec <pmm_init+0xd00>
ffffffffc0202e66:	611c                	ld	a5,0(a0)
ffffffffc0202e68:	0017f713          	andi	a4,a5,1
ffffffffc0202e6c:	26070ee3          	beqz	a4,ffffffffc02038e8 <pmm_init+0xcfc>
ffffffffc0202e70:	6098                	ld	a4,0(s1)
ffffffffc0202e72:	078a                	slli	a5,a5,0x2
ffffffffc0202e74:	83b1                	srli	a5,a5,0xc
ffffffffc0202e76:	62e7f363          	bgeu	a5,a4,ffffffffc020349c <pmm_init+0x8b0>
ffffffffc0202e7a:	000bb683          	ld	a3,0(s7)
ffffffffc0202e7e:	fff80637          	lui	a2,0xfff80
ffffffffc0202e82:	97b2                	add	a5,a5,a2
ffffffffc0202e84:	079a                	slli	a5,a5,0x6
ffffffffc0202e86:	97b6                	add	a5,a5,a3
ffffffffc0202e88:	2afa12e3          	bne	s4,a5,ffffffffc020392c <pmm_init+0xd40>
ffffffffc0202e8c:	000a2683          	lw	a3,0(s4) # 1000 <_binary_bin_swap_img_size-0x6d00>
ffffffffc0202e90:	4785                	li	a5,1
ffffffffc0202e92:	2cf699e3          	bne	a3,a5,ffffffffc0203964 <pmm_init+0xd78>
ffffffffc0202e96:	00093503          	ld	a0,0(s2)
ffffffffc0202e9a:	77fd                	lui	a5,0xfffff
ffffffffc0202e9c:	6114                	ld	a3,0(a0)
ffffffffc0202e9e:	068a                	slli	a3,a3,0x2
ffffffffc0202ea0:	8efd                	and	a3,a3,a5
ffffffffc0202ea2:	00c6d613          	srli	a2,a3,0xc
ffffffffc0202ea6:	2ae673e3          	bgeu	a2,a4,ffffffffc020394c <pmm_init+0xd60>
ffffffffc0202eaa:	0009bc03          	ld	s8,0(s3)
ffffffffc0202eae:	96e2                	add	a3,a3,s8
ffffffffc0202eb0:	0006ba83          	ld	s5,0(a3) # fffffffffff80000 <end+0x3fce96f0>
ffffffffc0202eb4:	0a8a                	slli	s5,s5,0x2
ffffffffc0202eb6:	00fafab3          	and	s5,s5,a5
ffffffffc0202eba:	00cad793          	srli	a5,s5,0xc
ffffffffc0202ebe:	06e7f3e3          	bgeu	a5,a4,ffffffffc0203724 <pmm_init+0xb38>
ffffffffc0202ec2:	4601                	li	a2,0
ffffffffc0202ec4:	6585                	lui	a1,0x1
ffffffffc0202ec6:	9ae2                	add	s5,s5,s8
ffffffffc0202ec8:	c78ff0ef          	jal	ra,ffffffffc0202340 <get_pte>
ffffffffc0202ecc:	0aa1                	addi	s5,s5,8
ffffffffc0202ece:	03551be3          	bne	a0,s5,ffffffffc0203704 <pmm_init+0xb18>
ffffffffc0202ed2:	100027f3          	csrr	a5,sstatus
ffffffffc0202ed6:	8b89                	andi	a5,a5,2
ffffffffc0202ed8:	3a079163          	bnez	a5,ffffffffc020327a <pmm_init+0x68e>
ffffffffc0202edc:	000b3783          	ld	a5,0(s6)
ffffffffc0202ee0:	4505                	li	a0,1
ffffffffc0202ee2:	6f9c                	ld	a5,24(a5)
ffffffffc0202ee4:	9782                	jalr	a5
ffffffffc0202ee6:	8c2a                	mv	s8,a0
ffffffffc0202ee8:	00093503          	ld	a0,0(s2)
ffffffffc0202eec:	46d1                	li	a3,20
ffffffffc0202eee:	6605                	lui	a2,0x1
ffffffffc0202ef0:	85e2                	mv	a1,s8
ffffffffc0202ef2:	c05ff0ef          	jal	ra,ffffffffc0202af6 <page_insert>
ffffffffc0202ef6:	1a0519e3          	bnez	a0,ffffffffc02038a8 <pmm_init+0xcbc>
ffffffffc0202efa:	00093503          	ld	a0,0(s2)
ffffffffc0202efe:	4601                	li	a2,0
ffffffffc0202f00:	6585                	lui	a1,0x1
ffffffffc0202f02:	c3eff0ef          	jal	ra,ffffffffc0202340 <get_pte>
ffffffffc0202f06:	10050ce3          	beqz	a0,ffffffffc020381e <pmm_init+0xc32>
ffffffffc0202f0a:	611c                	ld	a5,0(a0)
ffffffffc0202f0c:	0107f713          	andi	a4,a5,16
ffffffffc0202f10:	0e0707e3          	beqz	a4,ffffffffc02037fe <pmm_init+0xc12>
ffffffffc0202f14:	8b91                	andi	a5,a5,4
ffffffffc0202f16:	0c0784e3          	beqz	a5,ffffffffc02037de <pmm_init+0xbf2>
ffffffffc0202f1a:	00093503          	ld	a0,0(s2)
ffffffffc0202f1e:	611c                	ld	a5,0(a0)
ffffffffc0202f20:	8bc1                	andi	a5,a5,16
ffffffffc0202f22:	08078ee3          	beqz	a5,ffffffffc02037be <pmm_init+0xbd2>
ffffffffc0202f26:	000c2703          	lw	a4,0(s8)
ffffffffc0202f2a:	4785                	li	a5,1
ffffffffc0202f2c:	06f719e3          	bne	a4,a5,ffffffffc020379e <pmm_init+0xbb2>
ffffffffc0202f30:	4681                	li	a3,0
ffffffffc0202f32:	6605                	lui	a2,0x1
ffffffffc0202f34:	85d2                	mv	a1,s4
ffffffffc0202f36:	bc1ff0ef          	jal	ra,ffffffffc0202af6 <page_insert>
ffffffffc0202f3a:	040512e3          	bnez	a0,ffffffffc020377e <pmm_init+0xb92>
ffffffffc0202f3e:	000a2703          	lw	a4,0(s4)
ffffffffc0202f42:	4789                	li	a5,2
ffffffffc0202f44:	00f71de3          	bne	a4,a5,ffffffffc020375e <pmm_init+0xb72>
ffffffffc0202f48:	000c2783          	lw	a5,0(s8)
ffffffffc0202f4c:	7e079963          	bnez	a5,ffffffffc020373e <pmm_init+0xb52>
ffffffffc0202f50:	00093503          	ld	a0,0(s2)
ffffffffc0202f54:	4601                	li	a2,0
ffffffffc0202f56:	6585                	lui	a1,0x1
ffffffffc0202f58:	be8ff0ef          	jal	ra,ffffffffc0202340 <get_pte>
ffffffffc0202f5c:	54050263          	beqz	a0,ffffffffc02034a0 <pmm_init+0x8b4>
ffffffffc0202f60:	6118                	ld	a4,0(a0)
ffffffffc0202f62:	00177793          	andi	a5,a4,1
ffffffffc0202f66:	180781e3          	beqz	a5,ffffffffc02038e8 <pmm_init+0xcfc>
ffffffffc0202f6a:	6094                	ld	a3,0(s1)
ffffffffc0202f6c:	00271793          	slli	a5,a4,0x2
ffffffffc0202f70:	83b1                	srli	a5,a5,0xc
ffffffffc0202f72:	52d7f563          	bgeu	a5,a3,ffffffffc020349c <pmm_init+0x8b0>
ffffffffc0202f76:	000bb683          	ld	a3,0(s7)
ffffffffc0202f7a:	fff80ab7          	lui	s5,0xfff80
ffffffffc0202f7e:	97d6                	add	a5,a5,s5
ffffffffc0202f80:	079a                	slli	a5,a5,0x6
ffffffffc0202f82:	97b6                	add	a5,a5,a3
ffffffffc0202f84:	58fa1e63          	bne	s4,a5,ffffffffc0203520 <pmm_init+0x934>
ffffffffc0202f88:	8b41                	andi	a4,a4,16
ffffffffc0202f8a:	56071b63          	bnez	a4,ffffffffc0203500 <pmm_init+0x914>
ffffffffc0202f8e:	00093503          	ld	a0,0(s2)
ffffffffc0202f92:	4581                	li	a1,0
ffffffffc0202f94:	ac7ff0ef          	jal	ra,ffffffffc0202a5a <page_remove>
ffffffffc0202f98:	000a2c83          	lw	s9,0(s4)
ffffffffc0202f9c:	4785                	li	a5,1
ffffffffc0202f9e:	5cfc9163          	bne	s9,a5,ffffffffc0203560 <pmm_init+0x974>
ffffffffc0202fa2:	000c2783          	lw	a5,0(s8)
ffffffffc0202fa6:	58079d63          	bnez	a5,ffffffffc0203540 <pmm_init+0x954>
ffffffffc0202faa:	00093503          	ld	a0,0(s2)
ffffffffc0202fae:	6585                	lui	a1,0x1
ffffffffc0202fb0:	aabff0ef          	jal	ra,ffffffffc0202a5a <page_remove>
ffffffffc0202fb4:	000a2783          	lw	a5,0(s4)
ffffffffc0202fb8:	200793e3          	bnez	a5,ffffffffc02039be <pmm_init+0xdd2>
ffffffffc0202fbc:	000c2783          	lw	a5,0(s8)
ffffffffc0202fc0:	1c079fe3          	bnez	a5,ffffffffc020399e <pmm_init+0xdb2>
ffffffffc0202fc4:	00093a03          	ld	s4,0(s2)
ffffffffc0202fc8:	608c                	ld	a1,0(s1)
ffffffffc0202fca:	000a3683          	ld	a3,0(s4)
ffffffffc0202fce:	068a                	slli	a3,a3,0x2
ffffffffc0202fd0:	82b1                	srli	a3,a3,0xc
ffffffffc0202fd2:	4cb6f563          	bgeu	a3,a1,ffffffffc020349c <pmm_init+0x8b0>
ffffffffc0202fd6:	000bb503          	ld	a0,0(s7)
ffffffffc0202fda:	96d6                	add	a3,a3,s5
ffffffffc0202fdc:	069a                	slli	a3,a3,0x6
ffffffffc0202fde:	00d507b3          	add	a5,a0,a3
ffffffffc0202fe2:	439c                	lw	a5,0(a5)
ffffffffc0202fe4:	4f979e63          	bne	a5,s9,ffffffffc02034e0 <pmm_init+0x8f4>
ffffffffc0202fe8:	8699                	srai	a3,a3,0x6
ffffffffc0202fea:	00080637          	lui	a2,0x80
ffffffffc0202fee:	96b2                	add	a3,a3,a2
ffffffffc0202ff0:	00c69713          	slli	a4,a3,0xc
ffffffffc0202ff4:	8331                	srli	a4,a4,0xc
ffffffffc0202ff6:	06b2                	slli	a3,a3,0xc
ffffffffc0202ff8:	06b773e3          	bgeu	a4,a1,ffffffffc020385e <pmm_init+0xc72>
ffffffffc0202ffc:	0009b703          	ld	a4,0(s3)
ffffffffc0203000:	96ba                	add	a3,a3,a4
ffffffffc0203002:	629c                	ld	a5,0(a3)
ffffffffc0203004:	078a                	slli	a5,a5,0x2
ffffffffc0203006:	83b1                	srli	a5,a5,0xc
ffffffffc0203008:	48b7fa63          	bgeu	a5,a1,ffffffffc020349c <pmm_init+0x8b0>
ffffffffc020300c:	8f91                	sub	a5,a5,a2
ffffffffc020300e:	079a                	slli	a5,a5,0x6
ffffffffc0203010:	953e                	add	a0,a0,a5
ffffffffc0203012:	100027f3          	csrr	a5,sstatus
ffffffffc0203016:	8b89                	andi	a5,a5,2
ffffffffc0203018:	32079463          	bnez	a5,ffffffffc0203340 <pmm_init+0x754>
ffffffffc020301c:	000b3783          	ld	a5,0(s6)
ffffffffc0203020:	4585                	li	a1,1
ffffffffc0203022:	739c                	ld	a5,32(a5)
ffffffffc0203024:	9782                	jalr	a5
ffffffffc0203026:	000a3783          	ld	a5,0(s4)
ffffffffc020302a:	6098                	ld	a4,0(s1)
ffffffffc020302c:	078a                	slli	a5,a5,0x2
ffffffffc020302e:	83b1                	srli	a5,a5,0xc
ffffffffc0203030:	46e7f663          	bgeu	a5,a4,ffffffffc020349c <pmm_init+0x8b0>
ffffffffc0203034:	000bb503          	ld	a0,0(s7)
ffffffffc0203038:	fff80737          	lui	a4,0xfff80
ffffffffc020303c:	97ba                	add	a5,a5,a4
ffffffffc020303e:	079a                	slli	a5,a5,0x6
ffffffffc0203040:	953e                	add	a0,a0,a5
ffffffffc0203042:	100027f3          	csrr	a5,sstatus
ffffffffc0203046:	8b89                	andi	a5,a5,2
ffffffffc0203048:	2e079063          	bnez	a5,ffffffffc0203328 <pmm_init+0x73c>
ffffffffc020304c:	000b3783          	ld	a5,0(s6)
ffffffffc0203050:	4585                	li	a1,1
ffffffffc0203052:	739c                	ld	a5,32(a5)
ffffffffc0203054:	9782                	jalr	a5
ffffffffc0203056:	00093783          	ld	a5,0(s2)
ffffffffc020305a:	0007b023          	sd	zero,0(a5) # fffffffffffff000 <end+0x3fd686f0>
ffffffffc020305e:	12000073          	sfence.vma
ffffffffc0203062:	100027f3          	csrr	a5,sstatus
ffffffffc0203066:	8b89                	andi	a5,a5,2
ffffffffc0203068:	2a079663          	bnez	a5,ffffffffc0203314 <pmm_init+0x728>
ffffffffc020306c:	000b3783          	ld	a5,0(s6)
ffffffffc0203070:	779c                	ld	a5,40(a5)
ffffffffc0203072:	9782                	jalr	a5
ffffffffc0203074:	8a2a                	mv	s4,a0
ffffffffc0203076:	7d441463          	bne	s0,s4,ffffffffc020383e <pmm_init+0xc52>
ffffffffc020307a:	0000a517          	auipc	a0,0xa
ffffffffc020307e:	d2e50513          	addi	a0,a0,-722 # ffffffffc020cda8 <default_pmm_manager+0x5f8>
ffffffffc0203082:	924fd0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0203086:	100027f3          	csrr	a5,sstatus
ffffffffc020308a:	8b89                	andi	a5,a5,2
ffffffffc020308c:	26079a63          	bnez	a5,ffffffffc0203300 <pmm_init+0x714>
ffffffffc0203090:	000b3783          	ld	a5,0(s6)
ffffffffc0203094:	779c                	ld	a5,40(a5)
ffffffffc0203096:	9782                	jalr	a5
ffffffffc0203098:	8c2a                	mv	s8,a0
ffffffffc020309a:	6098                	ld	a4,0(s1)
ffffffffc020309c:	c0200437          	lui	s0,0xc0200
ffffffffc02030a0:	7afd                	lui	s5,0xfffff
ffffffffc02030a2:	00c71793          	slli	a5,a4,0xc
ffffffffc02030a6:	6a05                	lui	s4,0x1
ffffffffc02030a8:	02f47c63          	bgeu	s0,a5,ffffffffc02030e0 <pmm_init+0x4f4>
ffffffffc02030ac:	00c45793          	srli	a5,s0,0xc
ffffffffc02030b0:	00093503          	ld	a0,0(s2)
ffffffffc02030b4:	3ae7f763          	bgeu	a5,a4,ffffffffc0203462 <pmm_init+0x876>
ffffffffc02030b8:	0009b583          	ld	a1,0(s3)
ffffffffc02030bc:	4601                	li	a2,0
ffffffffc02030be:	95a2                	add	a1,a1,s0
ffffffffc02030c0:	a80ff0ef          	jal	ra,ffffffffc0202340 <get_pte>
ffffffffc02030c4:	36050f63          	beqz	a0,ffffffffc0203442 <pmm_init+0x856>
ffffffffc02030c8:	611c                	ld	a5,0(a0)
ffffffffc02030ca:	078a                	slli	a5,a5,0x2
ffffffffc02030cc:	0157f7b3          	and	a5,a5,s5
ffffffffc02030d0:	3a879663          	bne	a5,s0,ffffffffc020347c <pmm_init+0x890>
ffffffffc02030d4:	6098                	ld	a4,0(s1)
ffffffffc02030d6:	9452                	add	s0,s0,s4
ffffffffc02030d8:	00c71793          	slli	a5,a4,0xc
ffffffffc02030dc:	fcf468e3          	bltu	s0,a5,ffffffffc02030ac <pmm_init+0x4c0>
ffffffffc02030e0:	00093783          	ld	a5,0(s2)
ffffffffc02030e4:	639c                	ld	a5,0(a5)
ffffffffc02030e6:	48079d63          	bnez	a5,ffffffffc0203580 <pmm_init+0x994>
ffffffffc02030ea:	100027f3          	csrr	a5,sstatus
ffffffffc02030ee:	8b89                	andi	a5,a5,2
ffffffffc02030f0:	26079463          	bnez	a5,ffffffffc0203358 <pmm_init+0x76c>
ffffffffc02030f4:	000b3783          	ld	a5,0(s6)
ffffffffc02030f8:	4505                	li	a0,1
ffffffffc02030fa:	6f9c                	ld	a5,24(a5)
ffffffffc02030fc:	9782                	jalr	a5
ffffffffc02030fe:	8a2a                	mv	s4,a0
ffffffffc0203100:	00093503          	ld	a0,0(s2)
ffffffffc0203104:	4699                	li	a3,6
ffffffffc0203106:	10000613          	li	a2,256
ffffffffc020310a:	85d2                	mv	a1,s4
ffffffffc020310c:	9ebff0ef          	jal	ra,ffffffffc0202af6 <page_insert>
ffffffffc0203110:	4a051863          	bnez	a0,ffffffffc02035c0 <pmm_init+0x9d4>
ffffffffc0203114:	000a2703          	lw	a4,0(s4) # 1000 <_binary_bin_swap_img_size-0x6d00>
ffffffffc0203118:	4785                	li	a5,1
ffffffffc020311a:	48f71363          	bne	a4,a5,ffffffffc02035a0 <pmm_init+0x9b4>
ffffffffc020311e:	00093503          	ld	a0,0(s2)
ffffffffc0203122:	6405                	lui	s0,0x1
ffffffffc0203124:	4699                	li	a3,6
ffffffffc0203126:	10040613          	addi	a2,s0,256 # 1100 <_binary_bin_swap_img_size-0x6c00>
ffffffffc020312a:	85d2                	mv	a1,s4
ffffffffc020312c:	9cbff0ef          	jal	ra,ffffffffc0202af6 <page_insert>
ffffffffc0203130:	38051863          	bnez	a0,ffffffffc02034c0 <pmm_init+0x8d4>
ffffffffc0203134:	000a2703          	lw	a4,0(s4)
ffffffffc0203138:	4789                	li	a5,2
ffffffffc020313a:	4ef71363          	bne	a4,a5,ffffffffc0203620 <pmm_init+0xa34>
ffffffffc020313e:	0000a597          	auipc	a1,0xa
ffffffffc0203142:	db258593          	addi	a1,a1,-590 # ffffffffc020cef0 <default_pmm_manager+0x740>
ffffffffc0203146:	10000513          	li	a0,256
ffffffffc020314a:	478080ef          	jal	ra,ffffffffc020b5c2 <strcpy>
ffffffffc020314e:	10040593          	addi	a1,s0,256
ffffffffc0203152:	10000513          	li	a0,256
ffffffffc0203156:	47e080ef          	jal	ra,ffffffffc020b5d4 <strcmp>
ffffffffc020315a:	4a051363          	bnez	a0,ffffffffc0203600 <pmm_init+0xa14>
ffffffffc020315e:	000bb683          	ld	a3,0(s7)
ffffffffc0203162:	00080737          	lui	a4,0x80
ffffffffc0203166:	547d                	li	s0,-1
ffffffffc0203168:	40da06b3          	sub	a3,s4,a3
ffffffffc020316c:	8699                	srai	a3,a3,0x6
ffffffffc020316e:	609c                	ld	a5,0(s1)
ffffffffc0203170:	96ba                	add	a3,a3,a4
ffffffffc0203172:	8031                	srli	s0,s0,0xc
ffffffffc0203174:	0086f733          	and	a4,a3,s0
ffffffffc0203178:	06b2                	slli	a3,a3,0xc
ffffffffc020317a:	6ef77263          	bgeu	a4,a5,ffffffffc020385e <pmm_init+0xc72>
ffffffffc020317e:	0009b783          	ld	a5,0(s3)
ffffffffc0203182:	10000513          	li	a0,256
ffffffffc0203186:	96be                	add	a3,a3,a5
ffffffffc0203188:	10068023          	sb	zero,256(a3)
ffffffffc020318c:	400080ef          	jal	ra,ffffffffc020b58c <strlen>
ffffffffc0203190:	44051863          	bnez	a0,ffffffffc02035e0 <pmm_init+0x9f4>
ffffffffc0203194:	00093a83          	ld	s5,0(s2)
ffffffffc0203198:	609c                	ld	a5,0(s1)
ffffffffc020319a:	000ab683          	ld	a3,0(s5) # fffffffffffff000 <end+0x3fd686f0>
ffffffffc020319e:	068a                	slli	a3,a3,0x2
ffffffffc02031a0:	82b1                	srli	a3,a3,0xc
ffffffffc02031a2:	2ef6fd63          	bgeu	a3,a5,ffffffffc020349c <pmm_init+0x8b0>
ffffffffc02031a6:	8c75                	and	s0,s0,a3
ffffffffc02031a8:	06b2                	slli	a3,a3,0xc
ffffffffc02031aa:	6af47a63          	bgeu	s0,a5,ffffffffc020385e <pmm_init+0xc72>
ffffffffc02031ae:	0009b403          	ld	s0,0(s3)
ffffffffc02031b2:	9436                	add	s0,s0,a3
ffffffffc02031b4:	100027f3          	csrr	a5,sstatus
ffffffffc02031b8:	8b89                	andi	a5,a5,2
ffffffffc02031ba:	1e079c63          	bnez	a5,ffffffffc02033b2 <pmm_init+0x7c6>
ffffffffc02031be:	000b3783          	ld	a5,0(s6)
ffffffffc02031c2:	4585                	li	a1,1
ffffffffc02031c4:	8552                	mv	a0,s4
ffffffffc02031c6:	739c                	ld	a5,32(a5)
ffffffffc02031c8:	9782                	jalr	a5
ffffffffc02031ca:	601c                	ld	a5,0(s0)
ffffffffc02031cc:	6098                	ld	a4,0(s1)
ffffffffc02031ce:	078a                	slli	a5,a5,0x2
ffffffffc02031d0:	83b1                	srli	a5,a5,0xc
ffffffffc02031d2:	2ce7f563          	bgeu	a5,a4,ffffffffc020349c <pmm_init+0x8b0>
ffffffffc02031d6:	000bb503          	ld	a0,0(s7)
ffffffffc02031da:	fff80737          	lui	a4,0xfff80
ffffffffc02031de:	97ba                	add	a5,a5,a4
ffffffffc02031e0:	079a                	slli	a5,a5,0x6
ffffffffc02031e2:	953e                	add	a0,a0,a5
ffffffffc02031e4:	100027f3          	csrr	a5,sstatus
ffffffffc02031e8:	8b89                	andi	a5,a5,2
ffffffffc02031ea:	1a079863          	bnez	a5,ffffffffc020339a <pmm_init+0x7ae>
ffffffffc02031ee:	000b3783          	ld	a5,0(s6)
ffffffffc02031f2:	4585                	li	a1,1
ffffffffc02031f4:	739c                	ld	a5,32(a5)
ffffffffc02031f6:	9782                	jalr	a5
ffffffffc02031f8:	000ab783          	ld	a5,0(s5)
ffffffffc02031fc:	6098                	ld	a4,0(s1)
ffffffffc02031fe:	078a                	slli	a5,a5,0x2
ffffffffc0203200:	83b1                	srli	a5,a5,0xc
ffffffffc0203202:	28e7fd63          	bgeu	a5,a4,ffffffffc020349c <pmm_init+0x8b0>
ffffffffc0203206:	000bb503          	ld	a0,0(s7)
ffffffffc020320a:	fff80737          	lui	a4,0xfff80
ffffffffc020320e:	97ba                	add	a5,a5,a4
ffffffffc0203210:	079a                	slli	a5,a5,0x6
ffffffffc0203212:	953e                	add	a0,a0,a5
ffffffffc0203214:	100027f3          	csrr	a5,sstatus
ffffffffc0203218:	8b89                	andi	a5,a5,2
ffffffffc020321a:	16079463          	bnez	a5,ffffffffc0203382 <pmm_init+0x796>
ffffffffc020321e:	000b3783          	ld	a5,0(s6)
ffffffffc0203222:	4585                	li	a1,1
ffffffffc0203224:	739c                	ld	a5,32(a5)
ffffffffc0203226:	9782                	jalr	a5
ffffffffc0203228:	00093783          	ld	a5,0(s2)
ffffffffc020322c:	0007b023          	sd	zero,0(a5)
ffffffffc0203230:	12000073          	sfence.vma
ffffffffc0203234:	100027f3          	csrr	a5,sstatus
ffffffffc0203238:	8b89                	andi	a5,a5,2
ffffffffc020323a:	12079a63          	bnez	a5,ffffffffc020336e <pmm_init+0x782>
ffffffffc020323e:	000b3783          	ld	a5,0(s6)
ffffffffc0203242:	779c                	ld	a5,40(a5)
ffffffffc0203244:	9782                	jalr	a5
ffffffffc0203246:	842a                	mv	s0,a0
ffffffffc0203248:	488c1e63          	bne	s8,s0,ffffffffc02036e4 <pmm_init+0xaf8>
ffffffffc020324c:	0000a517          	auipc	a0,0xa
ffffffffc0203250:	d1c50513          	addi	a0,a0,-740 # ffffffffc020cf68 <default_pmm_manager+0x7b8>
ffffffffc0203254:	f53fc0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0203258:	7406                	ld	s0,96(sp)
ffffffffc020325a:	70a6                	ld	ra,104(sp)
ffffffffc020325c:	64e6                	ld	s1,88(sp)
ffffffffc020325e:	6946                	ld	s2,80(sp)
ffffffffc0203260:	69a6                	ld	s3,72(sp)
ffffffffc0203262:	6a06                	ld	s4,64(sp)
ffffffffc0203264:	7ae2                	ld	s5,56(sp)
ffffffffc0203266:	7b42                	ld	s6,48(sp)
ffffffffc0203268:	7ba2                	ld	s7,40(sp)
ffffffffc020326a:	7c02                	ld	s8,32(sp)
ffffffffc020326c:	6ce2                	ld	s9,24(sp)
ffffffffc020326e:	6165                	addi	sp,sp,112
ffffffffc0203270:	e17fe06f          	j	ffffffffc0202086 <kmalloc_init>
ffffffffc0203274:	c80007b7          	lui	a5,0xc8000
ffffffffc0203278:	b411                	j	ffffffffc0202c7c <pmm_init+0x90>
ffffffffc020327a:	9f9fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc020327e:	000b3783          	ld	a5,0(s6)
ffffffffc0203282:	4505                	li	a0,1
ffffffffc0203284:	6f9c                	ld	a5,24(a5)
ffffffffc0203286:	9782                	jalr	a5
ffffffffc0203288:	8c2a                	mv	s8,a0
ffffffffc020328a:	9e3fd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc020328e:	b9a9                	j	ffffffffc0202ee8 <pmm_init+0x2fc>
ffffffffc0203290:	9e3fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203294:	000b3783          	ld	a5,0(s6)
ffffffffc0203298:	4505                	li	a0,1
ffffffffc020329a:	6f9c                	ld	a5,24(a5)
ffffffffc020329c:	9782                	jalr	a5
ffffffffc020329e:	8a2a                	mv	s4,a0
ffffffffc02032a0:	9cdfd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02032a4:	b645                	j	ffffffffc0202e44 <pmm_init+0x258>
ffffffffc02032a6:	9cdfd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02032aa:	000b3783          	ld	a5,0(s6)
ffffffffc02032ae:	779c                	ld	a5,40(a5)
ffffffffc02032b0:	9782                	jalr	a5
ffffffffc02032b2:	842a                	mv	s0,a0
ffffffffc02032b4:	9b9fd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02032b8:	b6b9                	j	ffffffffc0202e06 <pmm_init+0x21a>
ffffffffc02032ba:	9b9fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02032be:	000b3783          	ld	a5,0(s6)
ffffffffc02032c2:	4505                	li	a0,1
ffffffffc02032c4:	6f9c                	ld	a5,24(a5)
ffffffffc02032c6:	9782                	jalr	a5
ffffffffc02032c8:	842a                	mv	s0,a0
ffffffffc02032ca:	9a3fd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02032ce:	bc99                	j	ffffffffc0202d24 <pmm_init+0x138>
ffffffffc02032d0:	6705                	lui	a4,0x1
ffffffffc02032d2:	177d                	addi	a4,a4,-1
ffffffffc02032d4:	96ba                	add	a3,a3,a4
ffffffffc02032d6:	8ff5                	and	a5,a5,a3
ffffffffc02032d8:	00c7d713          	srli	a4,a5,0xc
ffffffffc02032dc:	1ca77063          	bgeu	a4,a0,ffffffffc020349c <pmm_init+0x8b0>
ffffffffc02032e0:	000b3683          	ld	a3,0(s6)
ffffffffc02032e4:	fff80537          	lui	a0,0xfff80
ffffffffc02032e8:	972a                	add	a4,a4,a0
ffffffffc02032ea:	6a94                	ld	a3,16(a3)
ffffffffc02032ec:	8c1d                	sub	s0,s0,a5
ffffffffc02032ee:	00671513          	slli	a0,a4,0x6
ffffffffc02032f2:	00c45593          	srli	a1,s0,0xc
ffffffffc02032f6:	9532                	add	a0,a0,a2
ffffffffc02032f8:	9682                	jalr	a3
ffffffffc02032fa:	0009b583          	ld	a1,0(s3)
ffffffffc02032fe:	bac5                	j	ffffffffc0202cee <pmm_init+0x102>
ffffffffc0203300:	973fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203304:	000b3783          	ld	a5,0(s6)
ffffffffc0203308:	779c                	ld	a5,40(a5)
ffffffffc020330a:	9782                	jalr	a5
ffffffffc020330c:	8c2a                	mv	s8,a0
ffffffffc020330e:	95ffd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203312:	b361                	j	ffffffffc020309a <pmm_init+0x4ae>
ffffffffc0203314:	95ffd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203318:	000b3783          	ld	a5,0(s6)
ffffffffc020331c:	779c                	ld	a5,40(a5)
ffffffffc020331e:	9782                	jalr	a5
ffffffffc0203320:	8a2a                	mv	s4,a0
ffffffffc0203322:	94bfd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203326:	bb81                	j	ffffffffc0203076 <pmm_init+0x48a>
ffffffffc0203328:	e42a                	sd	a0,8(sp)
ffffffffc020332a:	949fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc020332e:	000b3783          	ld	a5,0(s6)
ffffffffc0203332:	6522                	ld	a0,8(sp)
ffffffffc0203334:	4585                	li	a1,1
ffffffffc0203336:	739c                	ld	a5,32(a5)
ffffffffc0203338:	9782                	jalr	a5
ffffffffc020333a:	933fd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc020333e:	bb21                	j	ffffffffc0203056 <pmm_init+0x46a>
ffffffffc0203340:	e42a                	sd	a0,8(sp)
ffffffffc0203342:	931fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203346:	000b3783          	ld	a5,0(s6)
ffffffffc020334a:	6522                	ld	a0,8(sp)
ffffffffc020334c:	4585                	li	a1,1
ffffffffc020334e:	739c                	ld	a5,32(a5)
ffffffffc0203350:	9782                	jalr	a5
ffffffffc0203352:	91bfd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203356:	b9c1                	j	ffffffffc0203026 <pmm_init+0x43a>
ffffffffc0203358:	91bfd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc020335c:	000b3783          	ld	a5,0(s6)
ffffffffc0203360:	4505                	li	a0,1
ffffffffc0203362:	6f9c                	ld	a5,24(a5)
ffffffffc0203364:	9782                	jalr	a5
ffffffffc0203366:	8a2a                	mv	s4,a0
ffffffffc0203368:	905fd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc020336c:	bb51                	j	ffffffffc0203100 <pmm_init+0x514>
ffffffffc020336e:	905fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203372:	000b3783          	ld	a5,0(s6)
ffffffffc0203376:	779c                	ld	a5,40(a5)
ffffffffc0203378:	9782                	jalr	a5
ffffffffc020337a:	842a                	mv	s0,a0
ffffffffc020337c:	8f1fd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203380:	b5e1                	j	ffffffffc0203248 <pmm_init+0x65c>
ffffffffc0203382:	e42a                	sd	a0,8(sp)
ffffffffc0203384:	8effd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203388:	000b3783          	ld	a5,0(s6)
ffffffffc020338c:	6522                	ld	a0,8(sp)
ffffffffc020338e:	4585                	li	a1,1
ffffffffc0203390:	739c                	ld	a5,32(a5)
ffffffffc0203392:	9782                	jalr	a5
ffffffffc0203394:	8d9fd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203398:	bd41                	j	ffffffffc0203228 <pmm_init+0x63c>
ffffffffc020339a:	e42a                	sd	a0,8(sp)
ffffffffc020339c:	8d7fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02033a0:	000b3783          	ld	a5,0(s6)
ffffffffc02033a4:	6522                	ld	a0,8(sp)
ffffffffc02033a6:	4585                	li	a1,1
ffffffffc02033a8:	739c                	ld	a5,32(a5)
ffffffffc02033aa:	9782                	jalr	a5
ffffffffc02033ac:	8c1fd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02033b0:	b5a1                	j	ffffffffc02031f8 <pmm_init+0x60c>
ffffffffc02033b2:	8c1fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02033b6:	000b3783          	ld	a5,0(s6)
ffffffffc02033ba:	4585                	li	a1,1
ffffffffc02033bc:	8552                	mv	a0,s4
ffffffffc02033be:	739c                	ld	a5,32(a5)
ffffffffc02033c0:	9782                	jalr	a5
ffffffffc02033c2:	8abfd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02033c6:	b511                	j	ffffffffc02031ca <pmm_init+0x5de>
ffffffffc02033c8:	00010417          	auipc	s0,0x10
ffffffffc02033cc:	c3840413          	addi	s0,s0,-968 # ffffffffc0213000 <boot_page_table_sv39>
ffffffffc02033d0:	00010797          	auipc	a5,0x10
ffffffffc02033d4:	c3078793          	addi	a5,a5,-976 # ffffffffc0213000 <boot_page_table_sv39>
ffffffffc02033d8:	a0f41de3          	bne	s0,a5,ffffffffc0202df2 <pmm_init+0x206>
ffffffffc02033dc:	4581                	li	a1,0
ffffffffc02033de:	6605                	lui	a2,0x1
ffffffffc02033e0:	8522                	mv	a0,s0
ffffffffc02033e2:	24c080ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc02033e6:	0000d597          	auipc	a1,0xd
ffffffffc02033ea:	c1a58593          	addi	a1,a1,-998 # ffffffffc0210000 <bootstackguard>
ffffffffc02033ee:	0000e797          	auipc	a5,0xe
ffffffffc02033f2:	c00788a3          	sb	zero,-1007(a5) # ffffffffc0210fff <bootstackguard+0xfff>
ffffffffc02033f6:	0000d797          	auipc	a5,0xd
ffffffffc02033fa:	c0078523          	sb	zero,-1014(a5) # ffffffffc0210000 <bootstackguard>
ffffffffc02033fe:	00093503          	ld	a0,0(s2)
ffffffffc0203402:	2555ec63          	bltu	a1,s5,ffffffffc020365a <pmm_init+0xa6e>
ffffffffc0203406:	0009b683          	ld	a3,0(s3)
ffffffffc020340a:	4701                	li	a4,0
ffffffffc020340c:	6605                	lui	a2,0x1
ffffffffc020340e:	40d586b3          	sub	a3,a1,a3
ffffffffc0203412:	956ff0ef          	jal	ra,ffffffffc0202568 <boot_map_segment>
ffffffffc0203416:	00093503          	ld	a0,0(s2)
ffffffffc020341a:	23546363          	bltu	s0,s5,ffffffffc0203640 <pmm_init+0xa54>
ffffffffc020341e:	0009b683          	ld	a3,0(s3)
ffffffffc0203422:	4701                	li	a4,0
ffffffffc0203424:	6605                	lui	a2,0x1
ffffffffc0203426:	40d406b3          	sub	a3,s0,a3
ffffffffc020342a:	85a2                	mv	a1,s0
ffffffffc020342c:	93cff0ef          	jal	ra,ffffffffc0202568 <boot_map_segment>
ffffffffc0203430:	12000073          	sfence.vma
ffffffffc0203434:	00009517          	auipc	a0,0x9
ffffffffc0203438:	64450513          	addi	a0,a0,1604 # ffffffffc020ca78 <default_pmm_manager+0x2c8>
ffffffffc020343c:	d6bfc0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0203440:	ba4d                	j	ffffffffc0202df2 <pmm_init+0x206>
ffffffffc0203442:	0000a697          	auipc	a3,0xa
ffffffffc0203446:	98668693          	addi	a3,a3,-1658 # ffffffffc020cdc8 <default_pmm_manager+0x618>
ffffffffc020344a:	00008617          	auipc	a2,0x8
ffffffffc020344e:	6c660613          	addi	a2,a2,1734 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203452:	29200593          	li	a1,658
ffffffffc0203456:	00009517          	auipc	a0,0x9
ffffffffc020345a:	4aa50513          	addi	a0,a0,1194 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020345e:	840fd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203462:	86a2                	mv	a3,s0
ffffffffc0203464:	00009617          	auipc	a2,0x9
ffffffffc0203468:	38460613          	addi	a2,a2,900 # ffffffffc020c7e8 <default_pmm_manager+0x38>
ffffffffc020346c:	29200593          	li	a1,658
ffffffffc0203470:	00009517          	auipc	a0,0x9
ffffffffc0203474:	49050513          	addi	a0,a0,1168 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0203478:	826fd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020347c:	0000a697          	auipc	a3,0xa
ffffffffc0203480:	98c68693          	addi	a3,a3,-1652 # ffffffffc020ce08 <default_pmm_manager+0x658>
ffffffffc0203484:	00008617          	auipc	a2,0x8
ffffffffc0203488:	68c60613          	addi	a2,a2,1676 # ffffffffc020bb10 <commands+0x210>
ffffffffc020348c:	29300593          	li	a1,659
ffffffffc0203490:	00009517          	auipc	a0,0x9
ffffffffc0203494:	47050513          	addi	a0,a0,1136 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0203498:	806fd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020349c:	db5fe0ef          	jal	ra,ffffffffc0202250 <pa2page.part.0>
ffffffffc02034a0:	00009697          	auipc	a3,0x9
ffffffffc02034a4:	79068693          	addi	a3,a3,1936 # ffffffffc020cc30 <default_pmm_manager+0x480>
ffffffffc02034a8:	00008617          	auipc	a2,0x8
ffffffffc02034ac:	66860613          	addi	a2,a2,1640 # ffffffffc020bb10 <commands+0x210>
ffffffffc02034b0:	26f00593          	li	a1,623
ffffffffc02034b4:	00009517          	auipc	a0,0x9
ffffffffc02034b8:	44c50513          	addi	a0,a0,1100 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02034bc:	fe3fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02034c0:	0000a697          	auipc	a3,0xa
ffffffffc02034c4:	9d068693          	addi	a3,a3,-1584 # ffffffffc020ce90 <default_pmm_manager+0x6e0>
ffffffffc02034c8:	00008617          	auipc	a2,0x8
ffffffffc02034cc:	64860613          	addi	a2,a2,1608 # ffffffffc020bb10 <commands+0x210>
ffffffffc02034d0:	29c00593          	li	a1,668
ffffffffc02034d4:	00009517          	auipc	a0,0x9
ffffffffc02034d8:	42c50513          	addi	a0,a0,1068 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02034dc:	fc3fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02034e0:	0000a697          	auipc	a3,0xa
ffffffffc02034e4:	87068693          	addi	a3,a3,-1936 # ffffffffc020cd50 <default_pmm_manager+0x5a0>
ffffffffc02034e8:	00008617          	auipc	a2,0x8
ffffffffc02034ec:	62860613          	addi	a2,a2,1576 # ffffffffc020bb10 <commands+0x210>
ffffffffc02034f0:	27b00593          	li	a1,635
ffffffffc02034f4:	00009517          	auipc	a0,0x9
ffffffffc02034f8:	40c50513          	addi	a0,a0,1036 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02034fc:	fa3fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203500:	0000a697          	auipc	a3,0xa
ffffffffc0203504:	82068693          	addi	a3,a3,-2016 # ffffffffc020cd20 <default_pmm_manager+0x570>
ffffffffc0203508:	00008617          	auipc	a2,0x8
ffffffffc020350c:	60860613          	addi	a2,a2,1544 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203510:	27100593          	li	a1,625
ffffffffc0203514:	00009517          	auipc	a0,0x9
ffffffffc0203518:	3ec50513          	addi	a0,a0,1004 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020351c:	f83fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203520:	00009697          	auipc	a3,0x9
ffffffffc0203524:	67068693          	addi	a3,a3,1648 # ffffffffc020cb90 <default_pmm_manager+0x3e0>
ffffffffc0203528:	00008617          	auipc	a2,0x8
ffffffffc020352c:	5e860613          	addi	a2,a2,1512 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203530:	27000593          	li	a1,624
ffffffffc0203534:	00009517          	auipc	a0,0x9
ffffffffc0203538:	3cc50513          	addi	a0,a0,972 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020353c:	f63fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203540:	00009697          	auipc	a3,0x9
ffffffffc0203544:	7c868693          	addi	a3,a3,1992 # ffffffffc020cd08 <default_pmm_manager+0x558>
ffffffffc0203548:	00008617          	auipc	a2,0x8
ffffffffc020354c:	5c860613          	addi	a2,a2,1480 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203550:	27500593          	li	a1,629
ffffffffc0203554:	00009517          	auipc	a0,0x9
ffffffffc0203558:	3ac50513          	addi	a0,a0,940 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020355c:	f43fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203560:	00009697          	auipc	a3,0x9
ffffffffc0203564:	64868693          	addi	a3,a3,1608 # ffffffffc020cba8 <default_pmm_manager+0x3f8>
ffffffffc0203568:	00008617          	auipc	a2,0x8
ffffffffc020356c:	5a860613          	addi	a2,a2,1448 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203570:	27400593          	li	a1,628
ffffffffc0203574:	00009517          	auipc	a0,0x9
ffffffffc0203578:	38c50513          	addi	a0,a0,908 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020357c:	f23fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203580:	0000a697          	auipc	a3,0xa
ffffffffc0203584:	8a068693          	addi	a3,a3,-1888 # ffffffffc020ce20 <default_pmm_manager+0x670>
ffffffffc0203588:	00008617          	auipc	a2,0x8
ffffffffc020358c:	58860613          	addi	a2,a2,1416 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203590:	29600593          	li	a1,662
ffffffffc0203594:	00009517          	auipc	a0,0x9
ffffffffc0203598:	36c50513          	addi	a0,a0,876 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020359c:	f03fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02035a0:	0000a697          	auipc	a3,0xa
ffffffffc02035a4:	8d868693          	addi	a3,a3,-1832 # ffffffffc020ce78 <default_pmm_manager+0x6c8>
ffffffffc02035a8:	00008617          	auipc	a2,0x8
ffffffffc02035ac:	56860613          	addi	a2,a2,1384 # ffffffffc020bb10 <commands+0x210>
ffffffffc02035b0:	29b00593          	li	a1,667
ffffffffc02035b4:	00009517          	auipc	a0,0x9
ffffffffc02035b8:	34c50513          	addi	a0,a0,844 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02035bc:	ee3fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02035c0:	0000a697          	auipc	a3,0xa
ffffffffc02035c4:	87868693          	addi	a3,a3,-1928 # ffffffffc020ce38 <default_pmm_manager+0x688>
ffffffffc02035c8:	00008617          	auipc	a2,0x8
ffffffffc02035cc:	54860613          	addi	a2,a2,1352 # ffffffffc020bb10 <commands+0x210>
ffffffffc02035d0:	29a00593          	li	a1,666
ffffffffc02035d4:	00009517          	auipc	a0,0x9
ffffffffc02035d8:	32c50513          	addi	a0,a0,812 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02035dc:	ec3fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02035e0:	0000a697          	auipc	a3,0xa
ffffffffc02035e4:	96068693          	addi	a3,a3,-1696 # ffffffffc020cf40 <default_pmm_manager+0x790>
ffffffffc02035e8:	00008617          	auipc	a2,0x8
ffffffffc02035ec:	52860613          	addi	a2,a2,1320 # ffffffffc020bb10 <commands+0x210>
ffffffffc02035f0:	2a400593          	li	a1,676
ffffffffc02035f4:	00009517          	auipc	a0,0x9
ffffffffc02035f8:	30c50513          	addi	a0,a0,780 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02035fc:	ea3fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203600:	0000a697          	auipc	a3,0xa
ffffffffc0203604:	90868693          	addi	a3,a3,-1784 # ffffffffc020cf08 <default_pmm_manager+0x758>
ffffffffc0203608:	00008617          	auipc	a2,0x8
ffffffffc020360c:	50860613          	addi	a2,a2,1288 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203610:	2a100593          	li	a1,673
ffffffffc0203614:	00009517          	auipc	a0,0x9
ffffffffc0203618:	2ec50513          	addi	a0,a0,748 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020361c:	e83fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203620:	0000a697          	auipc	a3,0xa
ffffffffc0203624:	8b868693          	addi	a3,a3,-1864 # ffffffffc020ced8 <default_pmm_manager+0x728>
ffffffffc0203628:	00008617          	auipc	a2,0x8
ffffffffc020362c:	4e860613          	addi	a2,a2,1256 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203630:	29d00593          	li	a1,669
ffffffffc0203634:	00009517          	auipc	a0,0x9
ffffffffc0203638:	2cc50513          	addi	a0,a0,716 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020363c:	e63fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203640:	86a2                	mv	a3,s0
ffffffffc0203642:	00009617          	auipc	a2,0x9
ffffffffc0203646:	24e60613          	addi	a2,a2,590 # ffffffffc020c890 <default_pmm_manager+0xe0>
ffffffffc020364a:	0dc00593          	li	a1,220
ffffffffc020364e:	00009517          	auipc	a0,0x9
ffffffffc0203652:	2b250513          	addi	a0,a0,690 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0203656:	e49fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020365a:	86ae                	mv	a3,a1
ffffffffc020365c:	00009617          	auipc	a2,0x9
ffffffffc0203660:	23460613          	addi	a2,a2,564 # ffffffffc020c890 <default_pmm_manager+0xe0>
ffffffffc0203664:	0db00593          	li	a1,219
ffffffffc0203668:	00009517          	auipc	a0,0x9
ffffffffc020366c:	29850513          	addi	a0,a0,664 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0203670:	e2ffc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203674:	00009697          	auipc	a3,0x9
ffffffffc0203678:	44c68693          	addi	a3,a3,1100 # ffffffffc020cac0 <default_pmm_manager+0x310>
ffffffffc020367c:	00008617          	auipc	a2,0x8
ffffffffc0203680:	49460613          	addi	a2,a2,1172 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203684:	25400593          	li	a1,596
ffffffffc0203688:	00009517          	auipc	a0,0x9
ffffffffc020368c:	27850513          	addi	a0,a0,632 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0203690:	e0ffc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203694:	00009697          	auipc	a3,0x9
ffffffffc0203698:	40c68693          	addi	a3,a3,1036 # ffffffffc020caa0 <default_pmm_manager+0x2f0>
ffffffffc020369c:	00008617          	auipc	a2,0x8
ffffffffc02036a0:	47460613          	addi	a2,a2,1140 # ffffffffc020bb10 <commands+0x210>
ffffffffc02036a4:	25300593          	li	a1,595
ffffffffc02036a8:	00009517          	auipc	a0,0x9
ffffffffc02036ac:	25850513          	addi	a0,a0,600 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02036b0:	deffc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02036b4:	00009617          	auipc	a2,0x9
ffffffffc02036b8:	37c60613          	addi	a2,a2,892 # ffffffffc020ca30 <default_pmm_manager+0x280>
ffffffffc02036bc:	0aa00593          	li	a1,170
ffffffffc02036c0:	00009517          	auipc	a0,0x9
ffffffffc02036c4:	24050513          	addi	a0,a0,576 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02036c8:	dd7fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02036cc:	00009617          	auipc	a2,0x9
ffffffffc02036d0:	2cc60613          	addi	a2,a2,716 # ffffffffc020c998 <default_pmm_manager+0x1e8>
ffffffffc02036d4:	06500593          	li	a1,101
ffffffffc02036d8:	00009517          	auipc	a0,0x9
ffffffffc02036dc:	22850513          	addi	a0,a0,552 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02036e0:	dbffc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02036e4:	00009697          	auipc	a3,0x9
ffffffffc02036e8:	69c68693          	addi	a3,a3,1692 # ffffffffc020cd80 <default_pmm_manager+0x5d0>
ffffffffc02036ec:	00008617          	auipc	a2,0x8
ffffffffc02036f0:	42460613          	addi	a2,a2,1060 # ffffffffc020bb10 <commands+0x210>
ffffffffc02036f4:	2ad00593          	li	a1,685
ffffffffc02036f8:	00009517          	auipc	a0,0x9
ffffffffc02036fc:	20850513          	addi	a0,a0,520 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0203700:	d9ffc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203704:	00009697          	auipc	a3,0x9
ffffffffc0203708:	4bc68693          	addi	a3,a3,1212 # ffffffffc020cbc0 <default_pmm_manager+0x410>
ffffffffc020370c:	00008617          	auipc	a2,0x8
ffffffffc0203710:	40460613          	addi	a2,a2,1028 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203714:	26200593          	li	a1,610
ffffffffc0203718:	00009517          	auipc	a0,0x9
ffffffffc020371c:	1e850513          	addi	a0,a0,488 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0203720:	d7ffc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203724:	86d6                	mv	a3,s5
ffffffffc0203726:	00009617          	auipc	a2,0x9
ffffffffc020372a:	0c260613          	addi	a2,a2,194 # ffffffffc020c7e8 <default_pmm_manager+0x38>
ffffffffc020372e:	26100593          	li	a1,609
ffffffffc0203732:	00009517          	auipc	a0,0x9
ffffffffc0203736:	1ce50513          	addi	a0,a0,462 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020373a:	d65fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020373e:	00009697          	auipc	a3,0x9
ffffffffc0203742:	5ca68693          	addi	a3,a3,1482 # ffffffffc020cd08 <default_pmm_manager+0x558>
ffffffffc0203746:	00008617          	auipc	a2,0x8
ffffffffc020374a:	3ca60613          	addi	a2,a2,970 # ffffffffc020bb10 <commands+0x210>
ffffffffc020374e:	26e00593          	li	a1,622
ffffffffc0203752:	00009517          	auipc	a0,0x9
ffffffffc0203756:	1ae50513          	addi	a0,a0,430 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020375a:	d45fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020375e:	00009697          	auipc	a3,0x9
ffffffffc0203762:	59268693          	addi	a3,a3,1426 # ffffffffc020ccf0 <default_pmm_manager+0x540>
ffffffffc0203766:	00008617          	auipc	a2,0x8
ffffffffc020376a:	3aa60613          	addi	a2,a2,938 # ffffffffc020bb10 <commands+0x210>
ffffffffc020376e:	26d00593          	li	a1,621
ffffffffc0203772:	00009517          	auipc	a0,0x9
ffffffffc0203776:	18e50513          	addi	a0,a0,398 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020377a:	d25fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020377e:	00009697          	auipc	a3,0x9
ffffffffc0203782:	54268693          	addi	a3,a3,1346 # ffffffffc020ccc0 <default_pmm_manager+0x510>
ffffffffc0203786:	00008617          	auipc	a2,0x8
ffffffffc020378a:	38a60613          	addi	a2,a2,906 # ffffffffc020bb10 <commands+0x210>
ffffffffc020378e:	26c00593          	li	a1,620
ffffffffc0203792:	00009517          	auipc	a0,0x9
ffffffffc0203796:	16e50513          	addi	a0,a0,366 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020379a:	d05fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020379e:	00009697          	auipc	a3,0x9
ffffffffc02037a2:	50a68693          	addi	a3,a3,1290 # ffffffffc020cca8 <default_pmm_manager+0x4f8>
ffffffffc02037a6:	00008617          	auipc	a2,0x8
ffffffffc02037aa:	36a60613          	addi	a2,a2,874 # ffffffffc020bb10 <commands+0x210>
ffffffffc02037ae:	26a00593          	li	a1,618
ffffffffc02037b2:	00009517          	auipc	a0,0x9
ffffffffc02037b6:	14e50513          	addi	a0,a0,334 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02037ba:	ce5fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02037be:	00009697          	auipc	a3,0x9
ffffffffc02037c2:	4ca68693          	addi	a3,a3,1226 # ffffffffc020cc88 <default_pmm_manager+0x4d8>
ffffffffc02037c6:	00008617          	auipc	a2,0x8
ffffffffc02037ca:	34a60613          	addi	a2,a2,842 # ffffffffc020bb10 <commands+0x210>
ffffffffc02037ce:	26900593          	li	a1,617
ffffffffc02037d2:	00009517          	auipc	a0,0x9
ffffffffc02037d6:	12e50513          	addi	a0,a0,302 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02037da:	cc5fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02037de:	00009697          	auipc	a3,0x9
ffffffffc02037e2:	49a68693          	addi	a3,a3,1178 # ffffffffc020cc78 <default_pmm_manager+0x4c8>
ffffffffc02037e6:	00008617          	auipc	a2,0x8
ffffffffc02037ea:	32a60613          	addi	a2,a2,810 # ffffffffc020bb10 <commands+0x210>
ffffffffc02037ee:	26800593          	li	a1,616
ffffffffc02037f2:	00009517          	auipc	a0,0x9
ffffffffc02037f6:	10e50513          	addi	a0,a0,270 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02037fa:	ca5fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02037fe:	00009697          	auipc	a3,0x9
ffffffffc0203802:	46a68693          	addi	a3,a3,1130 # ffffffffc020cc68 <default_pmm_manager+0x4b8>
ffffffffc0203806:	00008617          	auipc	a2,0x8
ffffffffc020380a:	30a60613          	addi	a2,a2,778 # ffffffffc020bb10 <commands+0x210>
ffffffffc020380e:	26700593          	li	a1,615
ffffffffc0203812:	00009517          	auipc	a0,0x9
ffffffffc0203816:	0ee50513          	addi	a0,a0,238 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020381a:	c85fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020381e:	00009697          	auipc	a3,0x9
ffffffffc0203822:	41268693          	addi	a3,a3,1042 # ffffffffc020cc30 <default_pmm_manager+0x480>
ffffffffc0203826:	00008617          	auipc	a2,0x8
ffffffffc020382a:	2ea60613          	addi	a2,a2,746 # ffffffffc020bb10 <commands+0x210>
ffffffffc020382e:	26600593          	li	a1,614
ffffffffc0203832:	00009517          	auipc	a0,0x9
ffffffffc0203836:	0ce50513          	addi	a0,a0,206 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020383a:	c65fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020383e:	00009697          	auipc	a3,0x9
ffffffffc0203842:	54268693          	addi	a3,a3,1346 # ffffffffc020cd80 <default_pmm_manager+0x5d0>
ffffffffc0203846:	00008617          	auipc	a2,0x8
ffffffffc020384a:	2ca60613          	addi	a2,a2,714 # ffffffffc020bb10 <commands+0x210>
ffffffffc020384e:	28300593          	li	a1,643
ffffffffc0203852:	00009517          	auipc	a0,0x9
ffffffffc0203856:	0ae50513          	addi	a0,a0,174 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020385a:	c45fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020385e:	00009617          	auipc	a2,0x9
ffffffffc0203862:	f8a60613          	addi	a2,a2,-118 # ffffffffc020c7e8 <default_pmm_manager+0x38>
ffffffffc0203866:	07100593          	li	a1,113
ffffffffc020386a:	00009517          	auipc	a0,0x9
ffffffffc020386e:	fa650513          	addi	a0,a0,-90 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc0203872:	c2dfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203876:	86a2                	mv	a3,s0
ffffffffc0203878:	00009617          	auipc	a2,0x9
ffffffffc020387c:	01860613          	addi	a2,a2,24 # ffffffffc020c890 <default_pmm_manager+0xe0>
ffffffffc0203880:	0ca00593          	li	a1,202
ffffffffc0203884:	00009517          	auipc	a0,0x9
ffffffffc0203888:	07c50513          	addi	a0,a0,124 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020388c:	c13fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203890:	00009617          	auipc	a2,0x9
ffffffffc0203894:	00060613          	mv	a2,a2
ffffffffc0203898:	08100593          	li	a1,129
ffffffffc020389c:	00009517          	auipc	a0,0x9
ffffffffc02038a0:	06450513          	addi	a0,a0,100 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02038a4:	bfbfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02038a8:	00009697          	auipc	a3,0x9
ffffffffc02038ac:	34868693          	addi	a3,a3,840 # ffffffffc020cbf0 <default_pmm_manager+0x440>
ffffffffc02038b0:	00008617          	auipc	a2,0x8
ffffffffc02038b4:	26060613          	addi	a2,a2,608 # ffffffffc020bb10 <commands+0x210>
ffffffffc02038b8:	26500593          	li	a1,613
ffffffffc02038bc:	00009517          	auipc	a0,0x9
ffffffffc02038c0:	04450513          	addi	a0,a0,68 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02038c4:	bdbfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02038c8:	00009697          	auipc	a3,0x9
ffffffffc02038cc:	26868693          	addi	a3,a3,616 # ffffffffc020cb30 <default_pmm_manager+0x380>
ffffffffc02038d0:	00008617          	auipc	a2,0x8
ffffffffc02038d4:	24060613          	addi	a2,a2,576 # ffffffffc020bb10 <commands+0x210>
ffffffffc02038d8:	25900593          	li	a1,601
ffffffffc02038dc:	00009517          	auipc	a0,0x9
ffffffffc02038e0:	02450513          	addi	a0,a0,36 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02038e4:	bbbfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02038e8:	985fe0ef          	jal	ra,ffffffffc020226c <pte2page.part.0>
ffffffffc02038ec:	00009697          	auipc	a3,0x9
ffffffffc02038f0:	27468693          	addi	a3,a3,628 # ffffffffc020cb60 <default_pmm_manager+0x3b0>
ffffffffc02038f4:	00008617          	auipc	a2,0x8
ffffffffc02038f8:	21c60613          	addi	a2,a2,540 # ffffffffc020bb10 <commands+0x210>
ffffffffc02038fc:	25c00593          	li	a1,604
ffffffffc0203900:	00009517          	auipc	a0,0x9
ffffffffc0203904:	00050513          	mv	a0,a0
ffffffffc0203908:	b97fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020390c:	00009697          	auipc	a3,0x9
ffffffffc0203910:	1f468693          	addi	a3,a3,500 # ffffffffc020cb00 <default_pmm_manager+0x350>
ffffffffc0203914:	00008617          	auipc	a2,0x8
ffffffffc0203918:	1fc60613          	addi	a2,a2,508 # ffffffffc020bb10 <commands+0x210>
ffffffffc020391c:	25500593          	li	a1,597
ffffffffc0203920:	00009517          	auipc	a0,0x9
ffffffffc0203924:	fe050513          	addi	a0,a0,-32 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0203928:	b77fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020392c:	00009697          	auipc	a3,0x9
ffffffffc0203930:	26468693          	addi	a3,a3,612 # ffffffffc020cb90 <default_pmm_manager+0x3e0>
ffffffffc0203934:	00008617          	auipc	a2,0x8
ffffffffc0203938:	1dc60613          	addi	a2,a2,476 # ffffffffc020bb10 <commands+0x210>
ffffffffc020393c:	25d00593          	li	a1,605
ffffffffc0203940:	00009517          	auipc	a0,0x9
ffffffffc0203944:	fc050513          	addi	a0,a0,-64 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0203948:	b57fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020394c:	00009617          	auipc	a2,0x9
ffffffffc0203950:	e9c60613          	addi	a2,a2,-356 # ffffffffc020c7e8 <default_pmm_manager+0x38>
ffffffffc0203954:	26000593          	li	a1,608
ffffffffc0203958:	00009517          	auipc	a0,0x9
ffffffffc020395c:	fa850513          	addi	a0,a0,-88 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0203960:	b3ffc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203964:	00009697          	auipc	a3,0x9
ffffffffc0203968:	24468693          	addi	a3,a3,580 # ffffffffc020cba8 <default_pmm_manager+0x3f8>
ffffffffc020396c:	00008617          	auipc	a2,0x8
ffffffffc0203970:	1a460613          	addi	a2,a2,420 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203974:	25e00593          	li	a1,606
ffffffffc0203978:	00009517          	auipc	a0,0x9
ffffffffc020397c:	f8850513          	addi	a0,a0,-120 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0203980:	b1ffc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203984:	86ca                	mv	a3,s2
ffffffffc0203986:	00009617          	auipc	a2,0x9
ffffffffc020398a:	f0a60613          	addi	a2,a2,-246 # ffffffffc020c890 <default_pmm_manager+0xe0>
ffffffffc020398e:	0c600593          	li	a1,198
ffffffffc0203992:	00009517          	auipc	a0,0x9
ffffffffc0203996:	f6e50513          	addi	a0,a0,-146 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc020399a:	b05fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020399e:	00009697          	auipc	a3,0x9
ffffffffc02039a2:	36a68693          	addi	a3,a3,874 # ffffffffc020cd08 <default_pmm_manager+0x558>
ffffffffc02039a6:	00008617          	auipc	a2,0x8
ffffffffc02039aa:	16a60613          	addi	a2,a2,362 # ffffffffc020bb10 <commands+0x210>
ffffffffc02039ae:	27900593          	li	a1,633
ffffffffc02039b2:	00009517          	auipc	a0,0x9
ffffffffc02039b6:	f4e50513          	addi	a0,a0,-178 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02039ba:	ae5fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02039be:	00009697          	auipc	a3,0x9
ffffffffc02039c2:	37a68693          	addi	a3,a3,890 # ffffffffc020cd38 <default_pmm_manager+0x588>
ffffffffc02039c6:	00008617          	auipc	a2,0x8
ffffffffc02039ca:	14a60613          	addi	a2,a2,330 # ffffffffc020bb10 <commands+0x210>
ffffffffc02039ce:	27800593          	li	a1,632
ffffffffc02039d2:	00009517          	auipc	a0,0x9
ffffffffc02039d6:	f2e50513          	addi	a0,a0,-210 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc02039da:	ac5fc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02039de <copy_range>:
ffffffffc02039de:	7159                	addi	sp,sp,-112
ffffffffc02039e0:	00d667b3          	or	a5,a2,a3
ffffffffc02039e4:	f486                	sd	ra,104(sp)
ffffffffc02039e6:	f0a2                	sd	s0,96(sp)
ffffffffc02039e8:	eca6                	sd	s1,88(sp)
ffffffffc02039ea:	e8ca                	sd	s2,80(sp)
ffffffffc02039ec:	e4ce                	sd	s3,72(sp)
ffffffffc02039ee:	e0d2                	sd	s4,64(sp)
ffffffffc02039f0:	fc56                	sd	s5,56(sp)
ffffffffc02039f2:	f85a                	sd	s6,48(sp)
ffffffffc02039f4:	f45e                	sd	s7,40(sp)
ffffffffc02039f6:	f062                	sd	s8,32(sp)
ffffffffc02039f8:	ec66                	sd	s9,24(sp)
ffffffffc02039fa:	e86a                	sd	s10,16(sp)
ffffffffc02039fc:	e46e                	sd	s11,8(sp)
ffffffffc02039fe:	17d2                	slli	a5,a5,0x34
ffffffffc0203a00:	22079563          	bnez	a5,ffffffffc0203c2a <copy_range+0x24c>
ffffffffc0203a04:	002007b7          	lui	a5,0x200
ffffffffc0203a08:	8432                	mv	s0,a2
ffffffffc0203a0a:	1af66863          	bltu	a2,a5,ffffffffc0203bba <copy_range+0x1dc>
ffffffffc0203a0e:	8936                	mv	s2,a3
ffffffffc0203a10:	1ad67563          	bgeu	a2,a3,ffffffffc0203bba <copy_range+0x1dc>
ffffffffc0203a14:	4785                	li	a5,1
ffffffffc0203a16:	07fe                	slli	a5,a5,0x1f
ffffffffc0203a18:	1ad7e163          	bltu	a5,a3,ffffffffc0203bba <copy_range+0x1dc>
ffffffffc0203a1c:	5b7d                	li	s6,-1
ffffffffc0203a1e:	8aaa                	mv	s5,a0
ffffffffc0203a20:	89ae                	mv	s3,a1
ffffffffc0203a22:	6a05                	lui	s4,0x1
ffffffffc0203a24:	00093c17          	auipc	s8,0x93
ffffffffc0203a28:	e7cc0c13          	addi	s8,s8,-388 # ffffffffc02968a0 <npage>
ffffffffc0203a2c:	00093b97          	auipc	s7,0x93
ffffffffc0203a30:	e7cb8b93          	addi	s7,s7,-388 # ffffffffc02968a8 <pages>
ffffffffc0203a34:	00cb5b13          	srli	s6,s6,0xc
ffffffffc0203a38:	00093c97          	auipc	s9,0x93
ffffffffc0203a3c:	e78c8c93          	addi	s9,s9,-392 # ffffffffc02968b0 <pmm_manager>
ffffffffc0203a40:	4601                	li	a2,0
ffffffffc0203a42:	85a2                	mv	a1,s0
ffffffffc0203a44:	854e                	mv	a0,s3
ffffffffc0203a46:	8fbfe0ef          	jal	ra,ffffffffc0202340 <get_pte>
ffffffffc0203a4a:	84aa                	mv	s1,a0
ffffffffc0203a4c:	c965                	beqz	a0,ffffffffc0203b3c <copy_range+0x15e>
ffffffffc0203a4e:	611c                	ld	a5,0(a0)
ffffffffc0203a50:	8b85                	andi	a5,a5,1
ffffffffc0203a52:	e78d                	bnez	a5,ffffffffc0203a7c <copy_range+0x9e>
ffffffffc0203a54:	9452                	add	s0,s0,s4
ffffffffc0203a56:	ff2465e3          	bltu	s0,s2,ffffffffc0203a40 <copy_range+0x62>
ffffffffc0203a5a:	4481                	li	s1,0
ffffffffc0203a5c:	70a6                	ld	ra,104(sp)
ffffffffc0203a5e:	7406                	ld	s0,96(sp)
ffffffffc0203a60:	6946                	ld	s2,80(sp)
ffffffffc0203a62:	69a6                	ld	s3,72(sp)
ffffffffc0203a64:	6a06                	ld	s4,64(sp)
ffffffffc0203a66:	7ae2                	ld	s5,56(sp)
ffffffffc0203a68:	7b42                	ld	s6,48(sp)
ffffffffc0203a6a:	7ba2                	ld	s7,40(sp)
ffffffffc0203a6c:	7c02                	ld	s8,32(sp)
ffffffffc0203a6e:	6ce2                	ld	s9,24(sp)
ffffffffc0203a70:	6d42                	ld	s10,16(sp)
ffffffffc0203a72:	6da2                	ld	s11,8(sp)
ffffffffc0203a74:	8526                	mv	a0,s1
ffffffffc0203a76:	64e6                	ld	s1,88(sp)
ffffffffc0203a78:	6165                	addi	sp,sp,112
ffffffffc0203a7a:	8082                	ret
ffffffffc0203a7c:	4605                	li	a2,1
ffffffffc0203a7e:	85a2                	mv	a1,s0
ffffffffc0203a80:	8556                	mv	a0,s5
ffffffffc0203a82:	8bffe0ef          	jal	ra,ffffffffc0202340 <get_pte>
ffffffffc0203a86:	c165                	beqz	a0,ffffffffc0203b66 <copy_range+0x188>
ffffffffc0203a88:	609c                	ld	a5,0(s1)
ffffffffc0203a8a:	0017f713          	andi	a4,a5,1
ffffffffc0203a8e:	01f7f493          	andi	s1,a5,31
ffffffffc0203a92:	18070063          	beqz	a4,ffffffffc0203c12 <copy_range+0x234>
ffffffffc0203a96:	000c3683          	ld	a3,0(s8)
ffffffffc0203a9a:	078a                	slli	a5,a5,0x2
ffffffffc0203a9c:	00c7d713          	srli	a4,a5,0xc
ffffffffc0203aa0:	14d77d63          	bgeu	a4,a3,ffffffffc0203bfa <copy_range+0x21c>
ffffffffc0203aa4:	000bb783          	ld	a5,0(s7)
ffffffffc0203aa8:	fff806b7          	lui	a3,0xfff80
ffffffffc0203aac:	9736                	add	a4,a4,a3
ffffffffc0203aae:	071a                	slli	a4,a4,0x6
ffffffffc0203ab0:	00e78db3          	add	s11,a5,a4
ffffffffc0203ab4:	10002773          	csrr	a4,sstatus
ffffffffc0203ab8:	8b09                	andi	a4,a4,2
ffffffffc0203aba:	eb59                	bnez	a4,ffffffffc0203b50 <copy_range+0x172>
ffffffffc0203abc:	000cb703          	ld	a4,0(s9)
ffffffffc0203ac0:	4505                	li	a0,1
ffffffffc0203ac2:	6f18                	ld	a4,24(a4)
ffffffffc0203ac4:	9702                	jalr	a4
ffffffffc0203ac6:	8d2a                	mv	s10,a0
ffffffffc0203ac8:	0c0d8963          	beqz	s11,ffffffffc0203b9a <copy_range+0x1bc>
ffffffffc0203acc:	100d0763          	beqz	s10,ffffffffc0203bda <copy_range+0x1fc>
ffffffffc0203ad0:	000bb703          	ld	a4,0(s7)
ffffffffc0203ad4:	000805b7          	lui	a1,0x80
ffffffffc0203ad8:	000c3603          	ld	a2,0(s8)
ffffffffc0203adc:	40ed86b3          	sub	a3,s11,a4
ffffffffc0203ae0:	8699                	srai	a3,a3,0x6
ffffffffc0203ae2:	96ae                	add	a3,a3,a1
ffffffffc0203ae4:	0166f7b3          	and	a5,a3,s6
ffffffffc0203ae8:	06b2                	slli	a3,a3,0xc
ffffffffc0203aea:	08c7fc63          	bgeu	a5,a2,ffffffffc0203b82 <copy_range+0x1a4>
ffffffffc0203aee:	40ed07b3          	sub	a5,s10,a4
ffffffffc0203af2:	00093717          	auipc	a4,0x93
ffffffffc0203af6:	dc670713          	addi	a4,a4,-570 # ffffffffc02968b8 <va_pa_offset>
ffffffffc0203afa:	6308                	ld	a0,0(a4)
ffffffffc0203afc:	8799                	srai	a5,a5,0x6
ffffffffc0203afe:	97ae                	add	a5,a5,a1
ffffffffc0203b00:	0167f733          	and	a4,a5,s6
ffffffffc0203b04:	00a685b3          	add	a1,a3,a0
ffffffffc0203b08:	07b2                	slli	a5,a5,0xc
ffffffffc0203b0a:	06c77b63          	bgeu	a4,a2,ffffffffc0203b80 <copy_range+0x1a2>
ffffffffc0203b0e:	6605                	lui	a2,0x1
ffffffffc0203b10:	953e                	add	a0,a0,a5
ffffffffc0203b12:	36f070ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc0203b16:	86a6                	mv	a3,s1
ffffffffc0203b18:	8622                	mv	a2,s0
ffffffffc0203b1a:	85ea                	mv	a1,s10
ffffffffc0203b1c:	8556                	mv	a0,s5
ffffffffc0203b1e:	fd9fe0ef          	jal	ra,ffffffffc0202af6 <page_insert>
ffffffffc0203b22:	84aa                	mv	s1,a0
ffffffffc0203b24:	d905                	beqz	a0,ffffffffc0203a54 <copy_range+0x76>
ffffffffc0203b26:	100027f3          	csrr	a5,sstatus
ffffffffc0203b2a:	8b89                	andi	a5,a5,2
ffffffffc0203b2c:	ef9d                	bnez	a5,ffffffffc0203b6a <copy_range+0x18c>
ffffffffc0203b2e:	000cb783          	ld	a5,0(s9)
ffffffffc0203b32:	4585                	li	a1,1
ffffffffc0203b34:	856a                	mv	a0,s10
ffffffffc0203b36:	739c                	ld	a5,32(a5)
ffffffffc0203b38:	9782                	jalr	a5
ffffffffc0203b3a:	b70d                	j	ffffffffc0203a5c <copy_range+0x7e>
ffffffffc0203b3c:	00200637          	lui	a2,0x200
ffffffffc0203b40:	9432                	add	s0,s0,a2
ffffffffc0203b42:	ffe00637          	lui	a2,0xffe00
ffffffffc0203b46:	8c71                	and	s0,s0,a2
ffffffffc0203b48:	d809                	beqz	s0,ffffffffc0203a5a <copy_range+0x7c>
ffffffffc0203b4a:	ef246be3          	bltu	s0,s2,ffffffffc0203a40 <copy_range+0x62>
ffffffffc0203b4e:	b731                	j	ffffffffc0203a5a <copy_range+0x7c>
ffffffffc0203b50:	922fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203b54:	000cb703          	ld	a4,0(s9)
ffffffffc0203b58:	4505                	li	a0,1
ffffffffc0203b5a:	6f18                	ld	a4,24(a4)
ffffffffc0203b5c:	9702                	jalr	a4
ffffffffc0203b5e:	8d2a                	mv	s10,a0
ffffffffc0203b60:	90cfd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203b64:	b795                	j	ffffffffc0203ac8 <copy_range+0xea>
ffffffffc0203b66:	54f1                	li	s1,-4
ffffffffc0203b68:	bdd5                	j	ffffffffc0203a5c <copy_range+0x7e>
ffffffffc0203b6a:	908fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203b6e:	000cb783          	ld	a5,0(s9)
ffffffffc0203b72:	4585                	li	a1,1
ffffffffc0203b74:	856a                	mv	a0,s10
ffffffffc0203b76:	739c                	ld	a5,32(a5)
ffffffffc0203b78:	9782                	jalr	a5
ffffffffc0203b7a:	8f2fd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203b7e:	bdf9                	j	ffffffffc0203a5c <copy_range+0x7e>
ffffffffc0203b80:	86be                	mv	a3,a5
ffffffffc0203b82:	00009617          	auipc	a2,0x9
ffffffffc0203b86:	c6660613          	addi	a2,a2,-922 # ffffffffc020c7e8 <default_pmm_manager+0x38>
ffffffffc0203b8a:	07100593          	li	a1,113
ffffffffc0203b8e:	00009517          	auipc	a0,0x9
ffffffffc0203b92:	c8250513          	addi	a0,a0,-894 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc0203b96:	909fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203b9a:	00009697          	auipc	a3,0x9
ffffffffc0203b9e:	3ee68693          	addi	a3,a3,1006 # ffffffffc020cf88 <default_pmm_manager+0x7d8>
ffffffffc0203ba2:	00008617          	auipc	a2,0x8
ffffffffc0203ba6:	f6e60613          	addi	a2,a2,-146 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203baa:	1ce00593          	li	a1,462
ffffffffc0203bae:	00009517          	auipc	a0,0x9
ffffffffc0203bb2:	d5250513          	addi	a0,a0,-686 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0203bb6:	8e9fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203bba:	00009697          	auipc	a3,0x9
ffffffffc0203bbe:	dae68693          	addi	a3,a3,-594 # ffffffffc020c968 <default_pmm_manager+0x1b8>
ffffffffc0203bc2:	00008617          	auipc	a2,0x8
ffffffffc0203bc6:	f4e60613          	addi	a2,a2,-178 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203bca:	1b600593          	li	a1,438
ffffffffc0203bce:	00009517          	auipc	a0,0x9
ffffffffc0203bd2:	d3250513          	addi	a0,a0,-718 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0203bd6:	8c9fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203bda:	00009697          	auipc	a3,0x9
ffffffffc0203bde:	3be68693          	addi	a3,a3,958 # ffffffffc020cf98 <default_pmm_manager+0x7e8>
ffffffffc0203be2:	00008617          	auipc	a2,0x8
ffffffffc0203be6:	f2e60613          	addi	a2,a2,-210 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203bea:	1cf00593          	li	a1,463
ffffffffc0203bee:	00009517          	auipc	a0,0x9
ffffffffc0203bf2:	d1250513          	addi	a0,a0,-750 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0203bf6:	8a9fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203bfa:	00009617          	auipc	a2,0x9
ffffffffc0203bfe:	cbe60613          	addi	a2,a2,-834 # ffffffffc020c8b8 <default_pmm_manager+0x108>
ffffffffc0203c02:	06900593          	li	a1,105
ffffffffc0203c06:	00009517          	auipc	a0,0x9
ffffffffc0203c0a:	c0a50513          	addi	a0,a0,-1014 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc0203c0e:	891fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203c12:	00009617          	auipc	a2,0x9
ffffffffc0203c16:	cc660613          	addi	a2,a2,-826 # ffffffffc020c8d8 <default_pmm_manager+0x128>
ffffffffc0203c1a:	07f00593          	li	a1,127
ffffffffc0203c1e:	00009517          	auipc	a0,0x9
ffffffffc0203c22:	bf250513          	addi	a0,a0,-1038 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc0203c26:	879fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203c2a:	00009697          	auipc	a3,0x9
ffffffffc0203c2e:	d0e68693          	addi	a3,a3,-754 # ffffffffc020c938 <default_pmm_manager+0x188>
ffffffffc0203c32:	00008617          	auipc	a2,0x8
ffffffffc0203c36:	ede60613          	addi	a2,a2,-290 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203c3a:	1b500593          	li	a1,437
ffffffffc0203c3e:	00009517          	auipc	a0,0x9
ffffffffc0203c42:	cc250513          	addi	a0,a0,-830 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0203c46:	859fc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0203c4a <pgdir_alloc_page>:
ffffffffc0203c4a:	7179                	addi	sp,sp,-48
ffffffffc0203c4c:	ec26                	sd	s1,24(sp)
ffffffffc0203c4e:	e84a                	sd	s2,16(sp)
ffffffffc0203c50:	e052                	sd	s4,0(sp)
ffffffffc0203c52:	f406                	sd	ra,40(sp)
ffffffffc0203c54:	f022                	sd	s0,32(sp)
ffffffffc0203c56:	e44e                	sd	s3,8(sp)
ffffffffc0203c58:	8a2a                	mv	s4,a0
ffffffffc0203c5a:	84ae                	mv	s1,a1
ffffffffc0203c5c:	8932                	mv	s2,a2
ffffffffc0203c5e:	100027f3          	csrr	a5,sstatus
ffffffffc0203c62:	8b89                	andi	a5,a5,2
ffffffffc0203c64:	00093997          	auipc	s3,0x93
ffffffffc0203c68:	c4c98993          	addi	s3,s3,-948 # ffffffffc02968b0 <pmm_manager>
ffffffffc0203c6c:	ef8d                	bnez	a5,ffffffffc0203ca6 <pgdir_alloc_page+0x5c>
ffffffffc0203c6e:	0009b783          	ld	a5,0(s3)
ffffffffc0203c72:	4505                	li	a0,1
ffffffffc0203c74:	6f9c                	ld	a5,24(a5)
ffffffffc0203c76:	9782                	jalr	a5
ffffffffc0203c78:	842a                	mv	s0,a0
ffffffffc0203c7a:	cc09                	beqz	s0,ffffffffc0203c94 <pgdir_alloc_page+0x4a>
ffffffffc0203c7c:	86ca                	mv	a3,s2
ffffffffc0203c7e:	8626                	mv	a2,s1
ffffffffc0203c80:	85a2                	mv	a1,s0
ffffffffc0203c82:	8552                	mv	a0,s4
ffffffffc0203c84:	e73fe0ef          	jal	ra,ffffffffc0202af6 <page_insert>
ffffffffc0203c88:	e915                	bnez	a0,ffffffffc0203cbc <pgdir_alloc_page+0x72>
ffffffffc0203c8a:	4018                	lw	a4,0(s0)
ffffffffc0203c8c:	fc04                	sd	s1,56(s0)
ffffffffc0203c8e:	4785                	li	a5,1
ffffffffc0203c90:	04f71e63          	bne	a4,a5,ffffffffc0203cec <pgdir_alloc_page+0xa2>
ffffffffc0203c94:	70a2                	ld	ra,40(sp)
ffffffffc0203c96:	8522                	mv	a0,s0
ffffffffc0203c98:	7402                	ld	s0,32(sp)
ffffffffc0203c9a:	64e2                	ld	s1,24(sp)
ffffffffc0203c9c:	6942                	ld	s2,16(sp)
ffffffffc0203c9e:	69a2                	ld	s3,8(sp)
ffffffffc0203ca0:	6a02                	ld	s4,0(sp)
ffffffffc0203ca2:	6145                	addi	sp,sp,48
ffffffffc0203ca4:	8082                	ret
ffffffffc0203ca6:	fcdfc0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203caa:	0009b783          	ld	a5,0(s3)
ffffffffc0203cae:	4505                	li	a0,1
ffffffffc0203cb0:	6f9c                	ld	a5,24(a5)
ffffffffc0203cb2:	9782                	jalr	a5
ffffffffc0203cb4:	842a                	mv	s0,a0
ffffffffc0203cb6:	fb7fc0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203cba:	b7c1                	j	ffffffffc0203c7a <pgdir_alloc_page+0x30>
ffffffffc0203cbc:	100027f3          	csrr	a5,sstatus
ffffffffc0203cc0:	8b89                	andi	a5,a5,2
ffffffffc0203cc2:	eb89                	bnez	a5,ffffffffc0203cd4 <pgdir_alloc_page+0x8a>
ffffffffc0203cc4:	0009b783          	ld	a5,0(s3)
ffffffffc0203cc8:	8522                	mv	a0,s0
ffffffffc0203cca:	4585                	li	a1,1
ffffffffc0203ccc:	739c                	ld	a5,32(a5)
ffffffffc0203cce:	4401                	li	s0,0
ffffffffc0203cd0:	9782                	jalr	a5
ffffffffc0203cd2:	b7c9                	j	ffffffffc0203c94 <pgdir_alloc_page+0x4a>
ffffffffc0203cd4:	f9ffc0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203cd8:	0009b783          	ld	a5,0(s3)
ffffffffc0203cdc:	8522                	mv	a0,s0
ffffffffc0203cde:	4585                	li	a1,1
ffffffffc0203ce0:	739c                	ld	a5,32(a5)
ffffffffc0203ce2:	4401                	li	s0,0
ffffffffc0203ce4:	9782                	jalr	a5
ffffffffc0203ce6:	f87fc0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203cea:	b76d                	j	ffffffffc0203c94 <pgdir_alloc_page+0x4a>
ffffffffc0203cec:	00009697          	auipc	a3,0x9
ffffffffc0203cf0:	2bc68693          	addi	a3,a3,700 # ffffffffc020cfa8 <default_pmm_manager+0x7f8>
ffffffffc0203cf4:	00008617          	auipc	a2,0x8
ffffffffc0203cf8:	e1c60613          	addi	a2,a2,-484 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203cfc:	23a00593          	li	a1,570
ffffffffc0203d00:	00009517          	auipc	a0,0x9
ffffffffc0203d04:	c0050513          	addi	a0,a0,-1024 # ffffffffc020c900 <default_pmm_manager+0x150>
ffffffffc0203d08:	f96fc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0203d0c <check_vma_overlap.part.0>:
ffffffffc0203d0c:	1141                	addi	sp,sp,-16
ffffffffc0203d0e:	00009697          	auipc	a3,0x9
ffffffffc0203d12:	2b268693          	addi	a3,a3,690 # ffffffffc020cfc0 <default_pmm_manager+0x810>
ffffffffc0203d16:	00008617          	auipc	a2,0x8
ffffffffc0203d1a:	dfa60613          	addi	a2,a2,-518 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203d1e:	07400593          	li	a1,116
ffffffffc0203d22:	00009517          	auipc	a0,0x9
ffffffffc0203d26:	2be50513          	addi	a0,a0,702 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc0203d2a:	e406                	sd	ra,8(sp)
ffffffffc0203d2c:	f72fc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0203d30 <mm_create>:
ffffffffc0203d30:	1141                	addi	sp,sp,-16
ffffffffc0203d32:	05800513          	li	a0,88
ffffffffc0203d36:	e022                	sd	s0,0(sp)
ffffffffc0203d38:	e406                	sd	ra,8(sp)
ffffffffc0203d3a:	b70fe0ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc0203d3e:	842a                	mv	s0,a0
ffffffffc0203d40:	c115                	beqz	a0,ffffffffc0203d64 <mm_create+0x34>
ffffffffc0203d42:	e408                	sd	a0,8(s0)
ffffffffc0203d44:	e008                	sd	a0,0(s0)
ffffffffc0203d46:	00053823          	sd	zero,16(a0)
ffffffffc0203d4a:	00053c23          	sd	zero,24(a0)
ffffffffc0203d4e:	02052023          	sw	zero,32(a0)
ffffffffc0203d52:	02053423          	sd	zero,40(a0)
ffffffffc0203d56:	02052823          	sw	zero,48(a0)
ffffffffc0203d5a:	4585                	li	a1,1
ffffffffc0203d5c:	03850513          	addi	a0,a0,56
ffffffffc0203d60:	123000ef          	jal	ra,ffffffffc0204682 <sem_init>
ffffffffc0203d64:	60a2                	ld	ra,8(sp)
ffffffffc0203d66:	8522                	mv	a0,s0
ffffffffc0203d68:	6402                	ld	s0,0(sp)
ffffffffc0203d6a:	0141                	addi	sp,sp,16
ffffffffc0203d6c:	8082                	ret

ffffffffc0203d6e <find_vma>:
ffffffffc0203d6e:	86aa                	mv	a3,a0
ffffffffc0203d70:	c505                	beqz	a0,ffffffffc0203d98 <find_vma+0x2a>
ffffffffc0203d72:	6908                	ld	a0,16(a0)
ffffffffc0203d74:	c501                	beqz	a0,ffffffffc0203d7c <find_vma+0xe>
ffffffffc0203d76:	651c                	ld	a5,8(a0)
ffffffffc0203d78:	02f5f263          	bgeu	a1,a5,ffffffffc0203d9c <find_vma+0x2e>
ffffffffc0203d7c:	669c                	ld	a5,8(a3)
ffffffffc0203d7e:	00f68d63          	beq	a3,a5,ffffffffc0203d98 <find_vma+0x2a>
ffffffffc0203d82:	fe87b703          	ld	a4,-24(a5) # 1fffe8 <_binary_bin_sfs_img_size+0x18ace8>
ffffffffc0203d86:	00e5e663          	bltu	a1,a4,ffffffffc0203d92 <find_vma+0x24>
ffffffffc0203d8a:	ff07b703          	ld	a4,-16(a5)
ffffffffc0203d8e:	00e5ec63          	bltu	a1,a4,ffffffffc0203da6 <find_vma+0x38>
ffffffffc0203d92:	679c                	ld	a5,8(a5)
ffffffffc0203d94:	fef697e3          	bne	a3,a5,ffffffffc0203d82 <find_vma+0x14>
ffffffffc0203d98:	4501                	li	a0,0
ffffffffc0203d9a:	8082                	ret
ffffffffc0203d9c:	691c                	ld	a5,16(a0)
ffffffffc0203d9e:	fcf5ffe3          	bgeu	a1,a5,ffffffffc0203d7c <find_vma+0xe>
ffffffffc0203da2:	ea88                	sd	a0,16(a3)
ffffffffc0203da4:	8082                	ret
ffffffffc0203da6:	fe078513          	addi	a0,a5,-32
ffffffffc0203daa:	ea88                	sd	a0,16(a3)
ffffffffc0203dac:	8082                	ret

ffffffffc0203dae <insert_vma_struct>:
ffffffffc0203dae:	6590                	ld	a2,8(a1)
ffffffffc0203db0:	0105b803          	ld	a6,16(a1) # 80010 <_binary_bin_sfs_img_size+0xad10>
ffffffffc0203db4:	1141                	addi	sp,sp,-16
ffffffffc0203db6:	e406                	sd	ra,8(sp)
ffffffffc0203db8:	87aa                	mv	a5,a0
ffffffffc0203dba:	01066763          	bltu	a2,a6,ffffffffc0203dc8 <insert_vma_struct+0x1a>
ffffffffc0203dbe:	a085                	j	ffffffffc0203e1e <insert_vma_struct+0x70>
ffffffffc0203dc0:	fe87b703          	ld	a4,-24(a5)
ffffffffc0203dc4:	04e66863          	bltu	a2,a4,ffffffffc0203e14 <insert_vma_struct+0x66>
ffffffffc0203dc8:	86be                	mv	a3,a5
ffffffffc0203dca:	679c                	ld	a5,8(a5)
ffffffffc0203dcc:	fef51ae3          	bne	a0,a5,ffffffffc0203dc0 <insert_vma_struct+0x12>
ffffffffc0203dd0:	02a68463          	beq	a3,a0,ffffffffc0203df8 <insert_vma_struct+0x4a>
ffffffffc0203dd4:	ff06b703          	ld	a4,-16(a3)
ffffffffc0203dd8:	fe86b883          	ld	a7,-24(a3)
ffffffffc0203ddc:	08e8f163          	bgeu	a7,a4,ffffffffc0203e5e <insert_vma_struct+0xb0>
ffffffffc0203de0:	04e66f63          	bltu	a2,a4,ffffffffc0203e3e <insert_vma_struct+0x90>
ffffffffc0203de4:	00f50a63          	beq	a0,a5,ffffffffc0203df8 <insert_vma_struct+0x4a>
ffffffffc0203de8:	fe87b703          	ld	a4,-24(a5)
ffffffffc0203dec:	05076963          	bltu	a4,a6,ffffffffc0203e3e <insert_vma_struct+0x90>
ffffffffc0203df0:	ff07b603          	ld	a2,-16(a5)
ffffffffc0203df4:	02c77363          	bgeu	a4,a2,ffffffffc0203e1a <insert_vma_struct+0x6c>
ffffffffc0203df8:	5118                	lw	a4,32(a0)
ffffffffc0203dfa:	e188                	sd	a0,0(a1)
ffffffffc0203dfc:	02058613          	addi	a2,a1,32
ffffffffc0203e00:	e390                	sd	a2,0(a5)
ffffffffc0203e02:	e690                	sd	a2,8(a3)
ffffffffc0203e04:	60a2                	ld	ra,8(sp)
ffffffffc0203e06:	f59c                	sd	a5,40(a1)
ffffffffc0203e08:	f194                	sd	a3,32(a1)
ffffffffc0203e0a:	0017079b          	addiw	a5,a4,1
ffffffffc0203e0e:	d11c                	sw	a5,32(a0)
ffffffffc0203e10:	0141                	addi	sp,sp,16
ffffffffc0203e12:	8082                	ret
ffffffffc0203e14:	fca690e3          	bne	a3,a0,ffffffffc0203dd4 <insert_vma_struct+0x26>
ffffffffc0203e18:	bfd1                	j	ffffffffc0203dec <insert_vma_struct+0x3e>
ffffffffc0203e1a:	ef3ff0ef          	jal	ra,ffffffffc0203d0c <check_vma_overlap.part.0>
ffffffffc0203e1e:	00009697          	auipc	a3,0x9
ffffffffc0203e22:	1d268693          	addi	a3,a3,466 # ffffffffc020cff0 <default_pmm_manager+0x840>
ffffffffc0203e26:	00008617          	auipc	a2,0x8
ffffffffc0203e2a:	cea60613          	addi	a2,a2,-790 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203e2e:	07a00593          	li	a1,122
ffffffffc0203e32:	00009517          	auipc	a0,0x9
ffffffffc0203e36:	1ae50513          	addi	a0,a0,430 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc0203e3a:	e64fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203e3e:	00009697          	auipc	a3,0x9
ffffffffc0203e42:	1f268693          	addi	a3,a3,498 # ffffffffc020d030 <default_pmm_manager+0x880>
ffffffffc0203e46:	00008617          	auipc	a2,0x8
ffffffffc0203e4a:	cca60613          	addi	a2,a2,-822 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203e4e:	07300593          	li	a1,115
ffffffffc0203e52:	00009517          	auipc	a0,0x9
ffffffffc0203e56:	18e50513          	addi	a0,a0,398 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc0203e5a:	e44fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203e5e:	00009697          	auipc	a3,0x9
ffffffffc0203e62:	1b268693          	addi	a3,a3,434 # ffffffffc020d010 <default_pmm_manager+0x860>
ffffffffc0203e66:	00008617          	auipc	a2,0x8
ffffffffc0203e6a:	caa60613          	addi	a2,a2,-854 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203e6e:	07200593          	li	a1,114
ffffffffc0203e72:	00009517          	auipc	a0,0x9
ffffffffc0203e76:	16e50513          	addi	a0,a0,366 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc0203e7a:	e24fc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0203e7e <mm_destroy>:
ffffffffc0203e7e:	591c                	lw	a5,48(a0)
ffffffffc0203e80:	1141                	addi	sp,sp,-16
ffffffffc0203e82:	e406                	sd	ra,8(sp)
ffffffffc0203e84:	e022                	sd	s0,0(sp)
ffffffffc0203e86:	e78d                	bnez	a5,ffffffffc0203eb0 <mm_destroy+0x32>
ffffffffc0203e88:	842a                	mv	s0,a0
ffffffffc0203e8a:	6508                	ld	a0,8(a0)
ffffffffc0203e8c:	00a40c63          	beq	s0,a0,ffffffffc0203ea4 <mm_destroy+0x26>
ffffffffc0203e90:	6118                	ld	a4,0(a0)
ffffffffc0203e92:	651c                	ld	a5,8(a0)
ffffffffc0203e94:	1501                	addi	a0,a0,-32
ffffffffc0203e96:	e71c                	sd	a5,8(a4)
ffffffffc0203e98:	e398                	sd	a4,0(a5)
ffffffffc0203e9a:	ac0fe0ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc0203e9e:	6408                	ld	a0,8(s0)
ffffffffc0203ea0:	fea418e3          	bne	s0,a0,ffffffffc0203e90 <mm_destroy+0x12>
ffffffffc0203ea4:	8522                	mv	a0,s0
ffffffffc0203ea6:	6402                	ld	s0,0(sp)
ffffffffc0203ea8:	60a2                	ld	ra,8(sp)
ffffffffc0203eaa:	0141                	addi	sp,sp,16
ffffffffc0203eac:	aaefe06f          	j	ffffffffc020215a <kfree>
ffffffffc0203eb0:	00009697          	auipc	a3,0x9
ffffffffc0203eb4:	1a068693          	addi	a3,a3,416 # ffffffffc020d050 <default_pmm_manager+0x8a0>
ffffffffc0203eb8:	00008617          	auipc	a2,0x8
ffffffffc0203ebc:	c5860613          	addi	a2,a2,-936 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203ec0:	09e00593          	li	a1,158
ffffffffc0203ec4:	00009517          	auipc	a0,0x9
ffffffffc0203ec8:	11c50513          	addi	a0,a0,284 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc0203ecc:	dd2fc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0203ed0 <mm_map>:
ffffffffc0203ed0:	7139                	addi	sp,sp,-64
ffffffffc0203ed2:	f822                	sd	s0,48(sp)
ffffffffc0203ed4:	6405                	lui	s0,0x1
ffffffffc0203ed6:	147d                	addi	s0,s0,-1
ffffffffc0203ed8:	77fd                	lui	a5,0xfffff
ffffffffc0203eda:	9622                	add	a2,a2,s0
ffffffffc0203edc:	962e                	add	a2,a2,a1
ffffffffc0203ede:	f426                	sd	s1,40(sp)
ffffffffc0203ee0:	fc06                	sd	ra,56(sp)
ffffffffc0203ee2:	00f5f4b3          	and	s1,a1,a5
ffffffffc0203ee6:	f04a                	sd	s2,32(sp)
ffffffffc0203ee8:	ec4e                	sd	s3,24(sp)
ffffffffc0203eea:	e852                	sd	s4,16(sp)
ffffffffc0203eec:	e456                	sd	s5,8(sp)
ffffffffc0203eee:	002005b7          	lui	a1,0x200
ffffffffc0203ef2:	00f67433          	and	s0,a2,a5
ffffffffc0203ef6:	06b4e363          	bltu	s1,a1,ffffffffc0203f5c <mm_map+0x8c>
ffffffffc0203efa:	0684f163          	bgeu	s1,s0,ffffffffc0203f5c <mm_map+0x8c>
ffffffffc0203efe:	4785                	li	a5,1
ffffffffc0203f00:	07fe                	slli	a5,a5,0x1f
ffffffffc0203f02:	0487ed63          	bltu	a5,s0,ffffffffc0203f5c <mm_map+0x8c>
ffffffffc0203f06:	89aa                	mv	s3,a0
ffffffffc0203f08:	cd21                	beqz	a0,ffffffffc0203f60 <mm_map+0x90>
ffffffffc0203f0a:	85a6                	mv	a1,s1
ffffffffc0203f0c:	8ab6                	mv	s5,a3
ffffffffc0203f0e:	8a3a                	mv	s4,a4
ffffffffc0203f10:	e5fff0ef          	jal	ra,ffffffffc0203d6e <find_vma>
ffffffffc0203f14:	c501                	beqz	a0,ffffffffc0203f1c <mm_map+0x4c>
ffffffffc0203f16:	651c                	ld	a5,8(a0)
ffffffffc0203f18:	0487e263          	bltu	a5,s0,ffffffffc0203f5c <mm_map+0x8c>
ffffffffc0203f1c:	03000513          	li	a0,48
ffffffffc0203f20:	98afe0ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc0203f24:	892a                	mv	s2,a0
ffffffffc0203f26:	5571                	li	a0,-4
ffffffffc0203f28:	02090163          	beqz	s2,ffffffffc0203f4a <mm_map+0x7a>
ffffffffc0203f2c:	854e                	mv	a0,s3
ffffffffc0203f2e:	00993423          	sd	s1,8(s2)
ffffffffc0203f32:	00893823          	sd	s0,16(s2)
ffffffffc0203f36:	01592c23          	sw	s5,24(s2)
ffffffffc0203f3a:	85ca                	mv	a1,s2
ffffffffc0203f3c:	e73ff0ef          	jal	ra,ffffffffc0203dae <insert_vma_struct>
ffffffffc0203f40:	4501                	li	a0,0
ffffffffc0203f42:	000a0463          	beqz	s4,ffffffffc0203f4a <mm_map+0x7a>
ffffffffc0203f46:	012a3023          	sd	s2,0(s4) # 1000 <_binary_bin_swap_img_size-0x6d00>
ffffffffc0203f4a:	70e2                	ld	ra,56(sp)
ffffffffc0203f4c:	7442                	ld	s0,48(sp)
ffffffffc0203f4e:	74a2                	ld	s1,40(sp)
ffffffffc0203f50:	7902                	ld	s2,32(sp)
ffffffffc0203f52:	69e2                	ld	s3,24(sp)
ffffffffc0203f54:	6a42                	ld	s4,16(sp)
ffffffffc0203f56:	6aa2                	ld	s5,8(sp)
ffffffffc0203f58:	6121                	addi	sp,sp,64
ffffffffc0203f5a:	8082                	ret
ffffffffc0203f5c:	5575                	li	a0,-3
ffffffffc0203f5e:	b7f5                	j	ffffffffc0203f4a <mm_map+0x7a>
ffffffffc0203f60:	00009697          	auipc	a3,0x9
ffffffffc0203f64:	10868693          	addi	a3,a3,264 # ffffffffc020d068 <default_pmm_manager+0x8b8>
ffffffffc0203f68:	00008617          	auipc	a2,0x8
ffffffffc0203f6c:	ba860613          	addi	a2,a2,-1112 # ffffffffc020bb10 <commands+0x210>
ffffffffc0203f70:	0b300593          	li	a1,179
ffffffffc0203f74:	00009517          	auipc	a0,0x9
ffffffffc0203f78:	06c50513          	addi	a0,a0,108 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc0203f7c:	d22fc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0203f80 <dup_mmap>:
ffffffffc0203f80:	7139                	addi	sp,sp,-64
ffffffffc0203f82:	fc06                	sd	ra,56(sp)
ffffffffc0203f84:	f822                	sd	s0,48(sp)
ffffffffc0203f86:	f426                	sd	s1,40(sp)
ffffffffc0203f88:	f04a                	sd	s2,32(sp)
ffffffffc0203f8a:	ec4e                	sd	s3,24(sp)
ffffffffc0203f8c:	e852                	sd	s4,16(sp)
ffffffffc0203f8e:	e456                	sd	s5,8(sp)
ffffffffc0203f90:	c52d                	beqz	a0,ffffffffc0203ffa <dup_mmap+0x7a>
ffffffffc0203f92:	892a                	mv	s2,a0
ffffffffc0203f94:	84ae                	mv	s1,a1
ffffffffc0203f96:	842e                	mv	s0,a1
ffffffffc0203f98:	e595                	bnez	a1,ffffffffc0203fc4 <dup_mmap+0x44>
ffffffffc0203f9a:	a085                	j	ffffffffc0203ffa <dup_mmap+0x7a>
ffffffffc0203f9c:	854a                	mv	a0,s2
ffffffffc0203f9e:	0155b423          	sd	s5,8(a1) # 200008 <_binary_bin_sfs_img_size+0x18ad08>
ffffffffc0203fa2:	0145b823          	sd	s4,16(a1)
ffffffffc0203fa6:	0135ac23          	sw	s3,24(a1)
ffffffffc0203faa:	e05ff0ef          	jal	ra,ffffffffc0203dae <insert_vma_struct>
ffffffffc0203fae:	ff043683          	ld	a3,-16(s0) # ff0 <_binary_bin_swap_img_size-0x6d10>
ffffffffc0203fb2:	fe843603          	ld	a2,-24(s0)
ffffffffc0203fb6:	6c8c                	ld	a1,24(s1)
ffffffffc0203fb8:	01893503          	ld	a0,24(s2)
ffffffffc0203fbc:	4701                	li	a4,0
ffffffffc0203fbe:	a21ff0ef          	jal	ra,ffffffffc02039de <copy_range>
ffffffffc0203fc2:	e105                	bnez	a0,ffffffffc0203fe2 <dup_mmap+0x62>
ffffffffc0203fc4:	6000                	ld	s0,0(s0)
ffffffffc0203fc6:	02848863          	beq	s1,s0,ffffffffc0203ff6 <dup_mmap+0x76>
ffffffffc0203fca:	03000513          	li	a0,48
ffffffffc0203fce:	fe843a83          	ld	s5,-24(s0)
ffffffffc0203fd2:	ff043a03          	ld	s4,-16(s0)
ffffffffc0203fd6:	ff842983          	lw	s3,-8(s0)
ffffffffc0203fda:	8d0fe0ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc0203fde:	85aa                	mv	a1,a0
ffffffffc0203fe0:	fd55                	bnez	a0,ffffffffc0203f9c <dup_mmap+0x1c>
ffffffffc0203fe2:	5571                	li	a0,-4
ffffffffc0203fe4:	70e2                	ld	ra,56(sp)
ffffffffc0203fe6:	7442                	ld	s0,48(sp)
ffffffffc0203fe8:	74a2                	ld	s1,40(sp)
ffffffffc0203fea:	7902                	ld	s2,32(sp)
ffffffffc0203fec:	69e2                	ld	s3,24(sp)
ffffffffc0203fee:	6a42                	ld	s4,16(sp)
ffffffffc0203ff0:	6aa2                	ld	s5,8(sp)
ffffffffc0203ff2:	6121                	addi	sp,sp,64
ffffffffc0203ff4:	8082                	ret
ffffffffc0203ff6:	4501                	li	a0,0
ffffffffc0203ff8:	b7f5                	j	ffffffffc0203fe4 <dup_mmap+0x64>
ffffffffc0203ffa:	00009697          	auipc	a3,0x9
ffffffffc0203ffe:	07e68693          	addi	a3,a3,126 # ffffffffc020d078 <default_pmm_manager+0x8c8>
ffffffffc0204002:	00008617          	auipc	a2,0x8
ffffffffc0204006:	b0e60613          	addi	a2,a2,-1266 # ffffffffc020bb10 <commands+0x210>
ffffffffc020400a:	0cf00593          	li	a1,207
ffffffffc020400e:	00009517          	auipc	a0,0x9
ffffffffc0204012:	fd250513          	addi	a0,a0,-46 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc0204016:	c88fc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020401a <exit_mmap>:
ffffffffc020401a:	1101                	addi	sp,sp,-32
ffffffffc020401c:	ec06                	sd	ra,24(sp)
ffffffffc020401e:	e822                	sd	s0,16(sp)
ffffffffc0204020:	e426                	sd	s1,8(sp)
ffffffffc0204022:	e04a                	sd	s2,0(sp)
ffffffffc0204024:	c531                	beqz	a0,ffffffffc0204070 <exit_mmap+0x56>
ffffffffc0204026:	591c                	lw	a5,48(a0)
ffffffffc0204028:	84aa                	mv	s1,a0
ffffffffc020402a:	e3b9                	bnez	a5,ffffffffc0204070 <exit_mmap+0x56>
ffffffffc020402c:	6500                	ld	s0,8(a0)
ffffffffc020402e:	01853903          	ld	s2,24(a0)
ffffffffc0204032:	02850663          	beq	a0,s0,ffffffffc020405e <exit_mmap+0x44>
ffffffffc0204036:	ff043603          	ld	a2,-16(s0)
ffffffffc020403a:	fe843583          	ld	a1,-24(s0)
ffffffffc020403e:	854a                	mv	a0,s2
ffffffffc0204040:	e42fe0ef          	jal	ra,ffffffffc0202682 <unmap_range>
ffffffffc0204044:	6400                	ld	s0,8(s0)
ffffffffc0204046:	fe8498e3          	bne	s1,s0,ffffffffc0204036 <exit_mmap+0x1c>
ffffffffc020404a:	6400                	ld	s0,8(s0)
ffffffffc020404c:	00848c63          	beq	s1,s0,ffffffffc0204064 <exit_mmap+0x4a>
ffffffffc0204050:	ff043603          	ld	a2,-16(s0)
ffffffffc0204054:	fe843583          	ld	a1,-24(s0)
ffffffffc0204058:	854a                	mv	a0,s2
ffffffffc020405a:	f6efe0ef          	jal	ra,ffffffffc02027c8 <exit_range>
ffffffffc020405e:	6400                	ld	s0,8(s0)
ffffffffc0204060:	fe8498e3          	bne	s1,s0,ffffffffc0204050 <exit_mmap+0x36>
ffffffffc0204064:	60e2                	ld	ra,24(sp)
ffffffffc0204066:	6442                	ld	s0,16(sp)
ffffffffc0204068:	64a2                	ld	s1,8(sp)
ffffffffc020406a:	6902                	ld	s2,0(sp)
ffffffffc020406c:	6105                	addi	sp,sp,32
ffffffffc020406e:	8082                	ret
ffffffffc0204070:	00009697          	auipc	a3,0x9
ffffffffc0204074:	02868693          	addi	a3,a3,40 # ffffffffc020d098 <default_pmm_manager+0x8e8>
ffffffffc0204078:	00008617          	auipc	a2,0x8
ffffffffc020407c:	a9860613          	addi	a2,a2,-1384 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204080:	0e800593          	li	a1,232
ffffffffc0204084:	00009517          	auipc	a0,0x9
ffffffffc0204088:	f5c50513          	addi	a0,a0,-164 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc020408c:	c12fc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204090 <vmm_init>:
ffffffffc0204090:	7139                	addi	sp,sp,-64
ffffffffc0204092:	05800513          	li	a0,88
ffffffffc0204096:	fc06                	sd	ra,56(sp)
ffffffffc0204098:	f822                	sd	s0,48(sp)
ffffffffc020409a:	f426                	sd	s1,40(sp)
ffffffffc020409c:	f04a                	sd	s2,32(sp)
ffffffffc020409e:	ec4e                	sd	s3,24(sp)
ffffffffc02040a0:	e852                	sd	s4,16(sp)
ffffffffc02040a2:	e456                	sd	s5,8(sp)
ffffffffc02040a4:	806fe0ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc02040a8:	2e050963          	beqz	a0,ffffffffc020439a <vmm_init+0x30a>
ffffffffc02040ac:	e508                	sd	a0,8(a0)
ffffffffc02040ae:	e108                	sd	a0,0(a0)
ffffffffc02040b0:	00053823          	sd	zero,16(a0)
ffffffffc02040b4:	00053c23          	sd	zero,24(a0)
ffffffffc02040b8:	02052023          	sw	zero,32(a0)
ffffffffc02040bc:	02053423          	sd	zero,40(a0)
ffffffffc02040c0:	02052823          	sw	zero,48(a0)
ffffffffc02040c4:	84aa                	mv	s1,a0
ffffffffc02040c6:	4585                	li	a1,1
ffffffffc02040c8:	03850513          	addi	a0,a0,56
ffffffffc02040cc:	5b6000ef          	jal	ra,ffffffffc0204682 <sem_init>
ffffffffc02040d0:	03200413          	li	s0,50
ffffffffc02040d4:	a811                	j	ffffffffc02040e8 <vmm_init+0x58>
ffffffffc02040d6:	e500                	sd	s0,8(a0)
ffffffffc02040d8:	e91c                	sd	a5,16(a0)
ffffffffc02040da:	00052c23          	sw	zero,24(a0)
ffffffffc02040de:	146d                	addi	s0,s0,-5
ffffffffc02040e0:	8526                	mv	a0,s1
ffffffffc02040e2:	ccdff0ef          	jal	ra,ffffffffc0203dae <insert_vma_struct>
ffffffffc02040e6:	c80d                	beqz	s0,ffffffffc0204118 <vmm_init+0x88>
ffffffffc02040e8:	03000513          	li	a0,48
ffffffffc02040ec:	fbffd0ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc02040f0:	85aa                	mv	a1,a0
ffffffffc02040f2:	00240793          	addi	a5,s0,2
ffffffffc02040f6:	f165                	bnez	a0,ffffffffc02040d6 <vmm_init+0x46>
ffffffffc02040f8:	00009697          	auipc	a3,0x9
ffffffffc02040fc:	13868693          	addi	a3,a3,312 # ffffffffc020d230 <default_pmm_manager+0xa80>
ffffffffc0204100:	00008617          	auipc	a2,0x8
ffffffffc0204104:	a1060613          	addi	a2,a2,-1520 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204108:	12c00593          	li	a1,300
ffffffffc020410c:	00009517          	auipc	a0,0x9
ffffffffc0204110:	ed450513          	addi	a0,a0,-300 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc0204114:	b8afc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204118:	03700413          	li	s0,55
ffffffffc020411c:	1f900913          	li	s2,505
ffffffffc0204120:	a819                	j	ffffffffc0204136 <vmm_init+0xa6>
ffffffffc0204122:	e500                	sd	s0,8(a0)
ffffffffc0204124:	e91c                	sd	a5,16(a0)
ffffffffc0204126:	00052c23          	sw	zero,24(a0)
ffffffffc020412a:	0415                	addi	s0,s0,5
ffffffffc020412c:	8526                	mv	a0,s1
ffffffffc020412e:	c81ff0ef          	jal	ra,ffffffffc0203dae <insert_vma_struct>
ffffffffc0204132:	03240a63          	beq	s0,s2,ffffffffc0204166 <vmm_init+0xd6>
ffffffffc0204136:	03000513          	li	a0,48
ffffffffc020413a:	f71fd0ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc020413e:	85aa                	mv	a1,a0
ffffffffc0204140:	00240793          	addi	a5,s0,2
ffffffffc0204144:	fd79                	bnez	a0,ffffffffc0204122 <vmm_init+0x92>
ffffffffc0204146:	00009697          	auipc	a3,0x9
ffffffffc020414a:	0ea68693          	addi	a3,a3,234 # ffffffffc020d230 <default_pmm_manager+0xa80>
ffffffffc020414e:	00008617          	auipc	a2,0x8
ffffffffc0204152:	9c260613          	addi	a2,a2,-1598 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204156:	13300593          	li	a1,307
ffffffffc020415a:	00009517          	auipc	a0,0x9
ffffffffc020415e:	e8650513          	addi	a0,a0,-378 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc0204162:	b3cfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204166:	649c                	ld	a5,8(s1)
ffffffffc0204168:	471d                	li	a4,7
ffffffffc020416a:	1fb00593          	li	a1,507
ffffffffc020416e:	16f48663          	beq	s1,a5,ffffffffc02042da <vmm_init+0x24a>
ffffffffc0204172:	fe87b603          	ld	a2,-24(a5) # ffffffffffffefe8 <end+0x3fd686d8>
ffffffffc0204176:	ffe70693          	addi	a3,a4,-2
ffffffffc020417a:	10d61063          	bne	a2,a3,ffffffffc020427a <vmm_init+0x1ea>
ffffffffc020417e:	ff07b683          	ld	a3,-16(a5)
ffffffffc0204182:	0ed71c63          	bne	a4,a3,ffffffffc020427a <vmm_init+0x1ea>
ffffffffc0204186:	0715                	addi	a4,a4,5
ffffffffc0204188:	679c                	ld	a5,8(a5)
ffffffffc020418a:	feb712e3          	bne	a4,a1,ffffffffc020416e <vmm_init+0xde>
ffffffffc020418e:	4a1d                	li	s4,7
ffffffffc0204190:	4415                	li	s0,5
ffffffffc0204192:	1f900a93          	li	s5,505
ffffffffc0204196:	85a2                	mv	a1,s0
ffffffffc0204198:	8526                	mv	a0,s1
ffffffffc020419a:	bd5ff0ef          	jal	ra,ffffffffc0203d6e <find_vma>
ffffffffc020419e:	892a                	mv	s2,a0
ffffffffc02041a0:	16050d63          	beqz	a0,ffffffffc020431a <vmm_init+0x28a>
ffffffffc02041a4:	00140593          	addi	a1,s0,1
ffffffffc02041a8:	8526                	mv	a0,s1
ffffffffc02041aa:	bc5ff0ef          	jal	ra,ffffffffc0203d6e <find_vma>
ffffffffc02041ae:	89aa                	mv	s3,a0
ffffffffc02041b0:	14050563          	beqz	a0,ffffffffc02042fa <vmm_init+0x26a>
ffffffffc02041b4:	85d2                	mv	a1,s4
ffffffffc02041b6:	8526                	mv	a0,s1
ffffffffc02041b8:	bb7ff0ef          	jal	ra,ffffffffc0203d6e <find_vma>
ffffffffc02041bc:	16051f63          	bnez	a0,ffffffffc020433a <vmm_init+0x2aa>
ffffffffc02041c0:	00340593          	addi	a1,s0,3
ffffffffc02041c4:	8526                	mv	a0,s1
ffffffffc02041c6:	ba9ff0ef          	jal	ra,ffffffffc0203d6e <find_vma>
ffffffffc02041ca:	1a051863          	bnez	a0,ffffffffc020437a <vmm_init+0x2ea>
ffffffffc02041ce:	00440593          	addi	a1,s0,4
ffffffffc02041d2:	8526                	mv	a0,s1
ffffffffc02041d4:	b9bff0ef          	jal	ra,ffffffffc0203d6e <find_vma>
ffffffffc02041d8:	18051163          	bnez	a0,ffffffffc020435a <vmm_init+0x2ca>
ffffffffc02041dc:	00893783          	ld	a5,8(s2)
ffffffffc02041e0:	0a879d63          	bne	a5,s0,ffffffffc020429a <vmm_init+0x20a>
ffffffffc02041e4:	01093783          	ld	a5,16(s2)
ffffffffc02041e8:	0b479963          	bne	a5,s4,ffffffffc020429a <vmm_init+0x20a>
ffffffffc02041ec:	0089b783          	ld	a5,8(s3)
ffffffffc02041f0:	0c879563          	bne	a5,s0,ffffffffc02042ba <vmm_init+0x22a>
ffffffffc02041f4:	0109b783          	ld	a5,16(s3)
ffffffffc02041f8:	0d479163          	bne	a5,s4,ffffffffc02042ba <vmm_init+0x22a>
ffffffffc02041fc:	0415                	addi	s0,s0,5
ffffffffc02041fe:	0a15                	addi	s4,s4,5
ffffffffc0204200:	f9541be3          	bne	s0,s5,ffffffffc0204196 <vmm_init+0x106>
ffffffffc0204204:	4411                	li	s0,4
ffffffffc0204206:	597d                	li	s2,-1
ffffffffc0204208:	85a2                	mv	a1,s0
ffffffffc020420a:	8526                	mv	a0,s1
ffffffffc020420c:	b63ff0ef          	jal	ra,ffffffffc0203d6e <find_vma>
ffffffffc0204210:	0004059b          	sext.w	a1,s0
ffffffffc0204214:	c90d                	beqz	a0,ffffffffc0204246 <vmm_init+0x1b6>
ffffffffc0204216:	6914                	ld	a3,16(a0)
ffffffffc0204218:	6510                	ld	a2,8(a0)
ffffffffc020421a:	00009517          	auipc	a0,0x9
ffffffffc020421e:	f9e50513          	addi	a0,a0,-98 # ffffffffc020d1b8 <default_pmm_manager+0xa08>
ffffffffc0204222:	f85fb0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0204226:	00009697          	auipc	a3,0x9
ffffffffc020422a:	fba68693          	addi	a3,a3,-70 # ffffffffc020d1e0 <default_pmm_manager+0xa30>
ffffffffc020422e:	00008617          	auipc	a2,0x8
ffffffffc0204232:	8e260613          	addi	a2,a2,-1822 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204236:	15900593          	li	a1,345
ffffffffc020423a:	00009517          	auipc	a0,0x9
ffffffffc020423e:	da650513          	addi	a0,a0,-602 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc0204242:	a5cfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204246:	147d                	addi	s0,s0,-1
ffffffffc0204248:	fd2410e3          	bne	s0,s2,ffffffffc0204208 <vmm_init+0x178>
ffffffffc020424c:	8526                	mv	a0,s1
ffffffffc020424e:	c31ff0ef          	jal	ra,ffffffffc0203e7e <mm_destroy>
ffffffffc0204252:	00009517          	auipc	a0,0x9
ffffffffc0204256:	fa650513          	addi	a0,a0,-90 # ffffffffc020d1f8 <default_pmm_manager+0xa48>
ffffffffc020425a:	f4dfb0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020425e:	7442                	ld	s0,48(sp)
ffffffffc0204260:	70e2                	ld	ra,56(sp)
ffffffffc0204262:	74a2                	ld	s1,40(sp)
ffffffffc0204264:	7902                	ld	s2,32(sp)
ffffffffc0204266:	69e2                	ld	s3,24(sp)
ffffffffc0204268:	6a42                	ld	s4,16(sp)
ffffffffc020426a:	6aa2                	ld	s5,8(sp)
ffffffffc020426c:	00009517          	auipc	a0,0x9
ffffffffc0204270:	fac50513          	addi	a0,a0,-84 # ffffffffc020d218 <default_pmm_manager+0xa68>
ffffffffc0204274:	6121                	addi	sp,sp,64
ffffffffc0204276:	f31fb06f          	j	ffffffffc02001a6 <cprintf>
ffffffffc020427a:	00009697          	auipc	a3,0x9
ffffffffc020427e:	e5668693          	addi	a3,a3,-426 # ffffffffc020d0d0 <default_pmm_manager+0x920>
ffffffffc0204282:	00008617          	auipc	a2,0x8
ffffffffc0204286:	88e60613          	addi	a2,a2,-1906 # ffffffffc020bb10 <commands+0x210>
ffffffffc020428a:	13d00593          	li	a1,317
ffffffffc020428e:	00009517          	auipc	a0,0x9
ffffffffc0204292:	d5250513          	addi	a0,a0,-686 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc0204296:	a08fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020429a:	00009697          	auipc	a3,0x9
ffffffffc020429e:	ebe68693          	addi	a3,a3,-322 # ffffffffc020d158 <default_pmm_manager+0x9a8>
ffffffffc02042a2:	00008617          	auipc	a2,0x8
ffffffffc02042a6:	86e60613          	addi	a2,a2,-1938 # ffffffffc020bb10 <commands+0x210>
ffffffffc02042aa:	14e00593          	li	a1,334
ffffffffc02042ae:	00009517          	auipc	a0,0x9
ffffffffc02042b2:	d3250513          	addi	a0,a0,-718 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc02042b6:	9e8fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02042ba:	00009697          	auipc	a3,0x9
ffffffffc02042be:	ece68693          	addi	a3,a3,-306 # ffffffffc020d188 <default_pmm_manager+0x9d8>
ffffffffc02042c2:	00008617          	auipc	a2,0x8
ffffffffc02042c6:	84e60613          	addi	a2,a2,-1970 # ffffffffc020bb10 <commands+0x210>
ffffffffc02042ca:	14f00593          	li	a1,335
ffffffffc02042ce:	00009517          	auipc	a0,0x9
ffffffffc02042d2:	d1250513          	addi	a0,a0,-750 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc02042d6:	9c8fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02042da:	00009697          	auipc	a3,0x9
ffffffffc02042de:	dde68693          	addi	a3,a3,-546 # ffffffffc020d0b8 <default_pmm_manager+0x908>
ffffffffc02042e2:	00008617          	auipc	a2,0x8
ffffffffc02042e6:	82e60613          	addi	a2,a2,-2002 # ffffffffc020bb10 <commands+0x210>
ffffffffc02042ea:	13b00593          	li	a1,315
ffffffffc02042ee:	00009517          	auipc	a0,0x9
ffffffffc02042f2:	cf250513          	addi	a0,a0,-782 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc02042f6:	9a8fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02042fa:	00009697          	auipc	a3,0x9
ffffffffc02042fe:	e1e68693          	addi	a3,a3,-482 # ffffffffc020d118 <default_pmm_manager+0x968>
ffffffffc0204302:	00008617          	auipc	a2,0x8
ffffffffc0204306:	80e60613          	addi	a2,a2,-2034 # ffffffffc020bb10 <commands+0x210>
ffffffffc020430a:	14600593          	li	a1,326
ffffffffc020430e:	00009517          	auipc	a0,0x9
ffffffffc0204312:	cd250513          	addi	a0,a0,-814 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc0204316:	988fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020431a:	00009697          	auipc	a3,0x9
ffffffffc020431e:	dee68693          	addi	a3,a3,-530 # ffffffffc020d108 <default_pmm_manager+0x958>
ffffffffc0204322:	00007617          	auipc	a2,0x7
ffffffffc0204326:	7ee60613          	addi	a2,a2,2030 # ffffffffc020bb10 <commands+0x210>
ffffffffc020432a:	14400593          	li	a1,324
ffffffffc020432e:	00009517          	auipc	a0,0x9
ffffffffc0204332:	cb250513          	addi	a0,a0,-846 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc0204336:	968fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020433a:	00009697          	auipc	a3,0x9
ffffffffc020433e:	dee68693          	addi	a3,a3,-530 # ffffffffc020d128 <default_pmm_manager+0x978>
ffffffffc0204342:	00007617          	auipc	a2,0x7
ffffffffc0204346:	7ce60613          	addi	a2,a2,1998 # ffffffffc020bb10 <commands+0x210>
ffffffffc020434a:	14800593          	li	a1,328
ffffffffc020434e:	00009517          	auipc	a0,0x9
ffffffffc0204352:	c9250513          	addi	a0,a0,-878 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc0204356:	948fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020435a:	00009697          	auipc	a3,0x9
ffffffffc020435e:	dee68693          	addi	a3,a3,-530 # ffffffffc020d148 <default_pmm_manager+0x998>
ffffffffc0204362:	00007617          	auipc	a2,0x7
ffffffffc0204366:	7ae60613          	addi	a2,a2,1966 # ffffffffc020bb10 <commands+0x210>
ffffffffc020436a:	14c00593          	li	a1,332
ffffffffc020436e:	00009517          	auipc	a0,0x9
ffffffffc0204372:	c7250513          	addi	a0,a0,-910 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc0204376:	928fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020437a:	00009697          	auipc	a3,0x9
ffffffffc020437e:	dbe68693          	addi	a3,a3,-578 # ffffffffc020d138 <default_pmm_manager+0x988>
ffffffffc0204382:	00007617          	auipc	a2,0x7
ffffffffc0204386:	78e60613          	addi	a2,a2,1934 # ffffffffc020bb10 <commands+0x210>
ffffffffc020438a:	14a00593          	li	a1,330
ffffffffc020438e:	00009517          	auipc	a0,0x9
ffffffffc0204392:	c5250513          	addi	a0,a0,-942 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc0204396:	908fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020439a:	00009697          	auipc	a3,0x9
ffffffffc020439e:	cce68693          	addi	a3,a3,-818 # ffffffffc020d068 <default_pmm_manager+0x8b8>
ffffffffc02043a2:	00007617          	auipc	a2,0x7
ffffffffc02043a6:	76e60613          	addi	a2,a2,1902 # ffffffffc020bb10 <commands+0x210>
ffffffffc02043aa:	12400593          	li	a1,292
ffffffffc02043ae:	00009517          	auipc	a0,0x9
ffffffffc02043b2:	c3250513          	addi	a0,a0,-974 # ffffffffc020cfe0 <default_pmm_manager+0x830>
ffffffffc02043b6:	8e8fc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02043ba <user_mem_check>:
ffffffffc02043ba:	7179                	addi	sp,sp,-48
ffffffffc02043bc:	f022                	sd	s0,32(sp)
ffffffffc02043be:	f406                	sd	ra,40(sp)
ffffffffc02043c0:	ec26                	sd	s1,24(sp)
ffffffffc02043c2:	e84a                	sd	s2,16(sp)
ffffffffc02043c4:	e44e                	sd	s3,8(sp)
ffffffffc02043c6:	e052                	sd	s4,0(sp)
ffffffffc02043c8:	842e                	mv	s0,a1
ffffffffc02043ca:	c135                	beqz	a0,ffffffffc020442e <user_mem_check+0x74>
ffffffffc02043cc:	002007b7          	lui	a5,0x200
ffffffffc02043d0:	04f5e663          	bltu	a1,a5,ffffffffc020441c <user_mem_check+0x62>
ffffffffc02043d4:	00c584b3          	add	s1,a1,a2
ffffffffc02043d8:	0495f263          	bgeu	a1,s1,ffffffffc020441c <user_mem_check+0x62>
ffffffffc02043dc:	4785                	li	a5,1
ffffffffc02043de:	07fe                	slli	a5,a5,0x1f
ffffffffc02043e0:	0297ee63          	bltu	a5,s1,ffffffffc020441c <user_mem_check+0x62>
ffffffffc02043e4:	892a                	mv	s2,a0
ffffffffc02043e6:	89b6                	mv	s3,a3
ffffffffc02043e8:	6a05                	lui	s4,0x1
ffffffffc02043ea:	a821                	j	ffffffffc0204402 <user_mem_check+0x48>
ffffffffc02043ec:	0027f693          	andi	a3,a5,2
ffffffffc02043f0:	9752                	add	a4,a4,s4
ffffffffc02043f2:	8ba1                	andi	a5,a5,8
ffffffffc02043f4:	c685                	beqz	a3,ffffffffc020441c <user_mem_check+0x62>
ffffffffc02043f6:	c399                	beqz	a5,ffffffffc02043fc <user_mem_check+0x42>
ffffffffc02043f8:	02e46263          	bltu	s0,a4,ffffffffc020441c <user_mem_check+0x62>
ffffffffc02043fc:	6900                	ld	s0,16(a0)
ffffffffc02043fe:	04947663          	bgeu	s0,s1,ffffffffc020444a <user_mem_check+0x90>
ffffffffc0204402:	85a2                	mv	a1,s0
ffffffffc0204404:	854a                	mv	a0,s2
ffffffffc0204406:	969ff0ef          	jal	ra,ffffffffc0203d6e <find_vma>
ffffffffc020440a:	c909                	beqz	a0,ffffffffc020441c <user_mem_check+0x62>
ffffffffc020440c:	6518                	ld	a4,8(a0)
ffffffffc020440e:	00e46763          	bltu	s0,a4,ffffffffc020441c <user_mem_check+0x62>
ffffffffc0204412:	4d1c                	lw	a5,24(a0)
ffffffffc0204414:	fc099ce3          	bnez	s3,ffffffffc02043ec <user_mem_check+0x32>
ffffffffc0204418:	8b85                	andi	a5,a5,1
ffffffffc020441a:	f3ed                	bnez	a5,ffffffffc02043fc <user_mem_check+0x42>
ffffffffc020441c:	4501                	li	a0,0
ffffffffc020441e:	70a2                	ld	ra,40(sp)
ffffffffc0204420:	7402                	ld	s0,32(sp)
ffffffffc0204422:	64e2                	ld	s1,24(sp)
ffffffffc0204424:	6942                	ld	s2,16(sp)
ffffffffc0204426:	69a2                	ld	s3,8(sp)
ffffffffc0204428:	6a02                	ld	s4,0(sp)
ffffffffc020442a:	6145                	addi	sp,sp,48
ffffffffc020442c:	8082                	ret
ffffffffc020442e:	c02007b7          	lui	a5,0xc0200
ffffffffc0204432:	4501                	li	a0,0
ffffffffc0204434:	fef5e5e3          	bltu	a1,a5,ffffffffc020441e <user_mem_check+0x64>
ffffffffc0204438:	962e                	add	a2,a2,a1
ffffffffc020443a:	fec5f2e3          	bgeu	a1,a2,ffffffffc020441e <user_mem_check+0x64>
ffffffffc020443e:	c8000537          	lui	a0,0xc8000
ffffffffc0204442:	0505                	addi	a0,a0,1
ffffffffc0204444:	00a63533          	sltu	a0,a2,a0
ffffffffc0204448:	bfd9                	j	ffffffffc020441e <user_mem_check+0x64>
ffffffffc020444a:	4505                	li	a0,1
ffffffffc020444c:	bfc9                	j	ffffffffc020441e <user_mem_check+0x64>

ffffffffc020444e <copy_from_user>:
ffffffffc020444e:	1101                	addi	sp,sp,-32
ffffffffc0204450:	e822                	sd	s0,16(sp)
ffffffffc0204452:	e426                	sd	s1,8(sp)
ffffffffc0204454:	8432                	mv	s0,a2
ffffffffc0204456:	84b6                	mv	s1,a3
ffffffffc0204458:	e04a                	sd	s2,0(sp)
ffffffffc020445a:	86ba                	mv	a3,a4
ffffffffc020445c:	892e                	mv	s2,a1
ffffffffc020445e:	8626                	mv	a2,s1
ffffffffc0204460:	85a2                	mv	a1,s0
ffffffffc0204462:	ec06                	sd	ra,24(sp)
ffffffffc0204464:	f57ff0ef          	jal	ra,ffffffffc02043ba <user_mem_check>
ffffffffc0204468:	c519                	beqz	a0,ffffffffc0204476 <copy_from_user+0x28>
ffffffffc020446a:	8626                	mv	a2,s1
ffffffffc020446c:	85a2                	mv	a1,s0
ffffffffc020446e:	854a                	mv	a0,s2
ffffffffc0204470:	210070ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc0204474:	4505                	li	a0,1
ffffffffc0204476:	60e2                	ld	ra,24(sp)
ffffffffc0204478:	6442                	ld	s0,16(sp)
ffffffffc020447a:	64a2                	ld	s1,8(sp)
ffffffffc020447c:	6902                	ld	s2,0(sp)
ffffffffc020447e:	6105                	addi	sp,sp,32
ffffffffc0204480:	8082                	ret

ffffffffc0204482 <copy_to_user>:
ffffffffc0204482:	1101                	addi	sp,sp,-32
ffffffffc0204484:	e822                	sd	s0,16(sp)
ffffffffc0204486:	8436                	mv	s0,a3
ffffffffc0204488:	e04a                	sd	s2,0(sp)
ffffffffc020448a:	4685                	li	a3,1
ffffffffc020448c:	8932                	mv	s2,a2
ffffffffc020448e:	8622                	mv	a2,s0
ffffffffc0204490:	e426                	sd	s1,8(sp)
ffffffffc0204492:	ec06                	sd	ra,24(sp)
ffffffffc0204494:	84ae                	mv	s1,a1
ffffffffc0204496:	f25ff0ef          	jal	ra,ffffffffc02043ba <user_mem_check>
ffffffffc020449a:	c519                	beqz	a0,ffffffffc02044a8 <copy_to_user+0x26>
ffffffffc020449c:	8622                	mv	a2,s0
ffffffffc020449e:	85ca                	mv	a1,s2
ffffffffc02044a0:	8526                	mv	a0,s1
ffffffffc02044a2:	1de070ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc02044a6:	4505                	li	a0,1
ffffffffc02044a8:	60e2                	ld	ra,24(sp)
ffffffffc02044aa:	6442                	ld	s0,16(sp)
ffffffffc02044ac:	64a2                	ld	s1,8(sp)
ffffffffc02044ae:	6902                	ld	s2,0(sp)
ffffffffc02044b0:	6105                	addi	sp,sp,32
ffffffffc02044b2:	8082                	ret

ffffffffc02044b4 <copy_string>:
ffffffffc02044b4:	7139                	addi	sp,sp,-64
ffffffffc02044b6:	ec4e                	sd	s3,24(sp)
ffffffffc02044b8:	6985                	lui	s3,0x1
ffffffffc02044ba:	99b2                	add	s3,s3,a2
ffffffffc02044bc:	77fd                	lui	a5,0xfffff
ffffffffc02044be:	00f9f9b3          	and	s3,s3,a5
ffffffffc02044c2:	f426                	sd	s1,40(sp)
ffffffffc02044c4:	f04a                	sd	s2,32(sp)
ffffffffc02044c6:	e852                	sd	s4,16(sp)
ffffffffc02044c8:	e456                	sd	s5,8(sp)
ffffffffc02044ca:	fc06                	sd	ra,56(sp)
ffffffffc02044cc:	f822                	sd	s0,48(sp)
ffffffffc02044ce:	84b2                	mv	s1,a2
ffffffffc02044d0:	8aaa                	mv	s5,a0
ffffffffc02044d2:	8a2e                	mv	s4,a1
ffffffffc02044d4:	8936                	mv	s2,a3
ffffffffc02044d6:	40c989b3          	sub	s3,s3,a2
ffffffffc02044da:	a015                	j	ffffffffc02044fe <copy_string+0x4a>
ffffffffc02044dc:	0ca070ef          	jal	ra,ffffffffc020b5a6 <strnlen>
ffffffffc02044e0:	87aa                	mv	a5,a0
ffffffffc02044e2:	85a6                	mv	a1,s1
ffffffffc02044e4:	8552                	mv	a0,s4
ffffffffc02044e6:	8622                	mv	a2,s0
ffffffffc02044e8:	0487e363          	bltu	a5,s0,ffffffffc020452e <copy_string+0x7a>
ffffffffc02044ec:	0329f763          	bgeu	s3,s2,ffffffffc020451a <copy_string+0x66>
ffffffffc02044f0:	190070ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc02044f4:	9a22                	add	s4,s4,s0
ffffffffc02044f6:	94a2                	add	s1,s1,s0
ffffffffc02044f8:	40890933          	sub	s2,s2,s0
ffffffffc02044fc:	6985                	lui	s3,0x1
ffffffffc02044fe:	4681                	li	a3,0
ffffffffc0204500:	85a6                	mv	a1,s1
ffffffffc0204502:	8556                	mv	a0,s5
ffffffffc0204504:	844a                	mv	s0,s2
ffffffffc0204506:	0129f363          	bgeu	s3,s2,ffffffffc020450c <copy_string+0x58>
ffffffffc020450a:	844e                	mv	s0,s3
ffffffffc020450c:	8622                	mv	a2,s0
ffffffffc020450e:	eadff0ef          	jal	ra,ffffffffc02043ba <user_mem_check>
ffffffffc0204512:	87aa                	mv	a5,a0
ffffffffc0204514:	85a2                	mv	a1,s0
ffffffffc0204516:	8526                	mv	a0,s1
ffffffffc0204518:	f3f1                	bnez	a5,ffffffffc02044dc <copy_string+0x28>
ffffffffc020451a:	4501                	li	a0,0
ffffffffc020451c:	70e2                	ld	ra,56(sp)
ffffffffc020451e:	7442                	ld	s0,48(sp)
ffffffffc0204520:	74a2                	ld	s1,40(sp)
ffffffffc0204522:	7902                	ld	s2,32(sp)
ffffffffc0204524:	69e2                	ld	s3,24(sp)
ffffffffc0204526:	6a42                	ld	s4,16(sp)
ffffffffc0204528:	6aa2                	ld	s5,8(sp)
ffffffffc020452a:	6121                	addi	sp,sp,64
ffffffffc020452c:	8082                	ret
ffffffffc020452e:	00178613          	addi	a2,a5,1 # fffffffffffff001 <end+0x3fd686f1>
ffffffffc0204532:	14e070ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc0204536:	4505                	li	a0,1
ffffffffc0204538:	b7d5                	j	ffffffffc020451c <copy_string+0x68>

ffffffffc020453a <__down.constprop.0>:
ffffffffc020453a:	715d                	addi	sp,sp,-80
ffffffffc020453c:	e0a2                	sd	s0,64(sp)
ffffffffc020453e:	e486                	sd	ra,72(sp)
ffffffffc0204540:	fc26                	sd	s1,56(sp)
ffffffffc0204542:	842a                	mv	s0,a0
ffffffffc0204544:	100027f3          	csrr	a5,sstatus
ffffffffc0204548:	8b89                	andi	a5,a5,2
ffffffffc020454a:	ebb1                	bnez	a5,ffffffffc020459e <__down.constprop.0+0x64>
ffffffffc020454c:	411c                	lw	a5,0(a0)
ffffffffc020454e:	00f05a63          	blez	a5,ffffffffc0204562 <__down.constprop.0+0x28>
ffffffffc0204552:	37fd                	addiw	a5,a5,-1
ffffffffc0204554:	c11c                	sw	a5,0(a0)
ffffffffc0204556:	4501                	li	a0,0
ffffffffc0204558:	60a6                	ld	ra,72(sp)
ffffffffc020455a:	6406                	ld	s0,64(sp)
ffffffffc020455c:	74e2                	ld	s1,56(sp)
ffffffffc020455e:	6161                	addi	sp,sp,80
ffffffffc0204560:	8082                	ret
ffffffffc0204562:	00850413          	addi	s0,a0,8 # ffffffffc8000008 <end+0x7d696f8>
ffffffffc0204566:	0024                	addi	s1,sp,8
ffffffffc0204568:	10000613          	li	a2,256
ffffffffc020456c:	85a6                	mv	a1,s1
ffffffffc020456e:	8522                	mv	a0,s0
ffffffffc0204570:	2d8000ef          	jal	ra,ffffffffc0204848 <wait_current_set>
ffffffffc0204574:	6e9020ef          	jal	ra,ffffffffc020745c <schedule>
ffffffffc0204578:	100027f3          	csrr	a5,sstatus
ffffffffc020457c:	8b89                	andi	a5,a5,2
ffffffffc020457e:	efb9                	bnez	a5,ffffffffc02045dc <__down.constprop.0+0xa2>
ffffffffc0204580:	8526                	mv	a0,s1
ffffffffc0204582:	19c000ef          	jal	ra,ffffffffc020471e <wait_in_queue>
ffffffffc0204586:	e531                	bnez	a0,ffffffffc02045d2 <__down.constprop.0+0x98>
ffffffffc0204588:	4542                	lw	a0,16(sp)
ffffffffc020458a:	10000793          	li	a5,256
ffffffffc020458e:	fcf515e3          	bne	a0,a5,ffffffffc0204558 <__down.constprop.0+0x1e>
ffffffffc0204592:	60a6                	ld	ra,72(sp)
ffffffffc0204594:	6406                	ld	s0,64(sp)
ffffffffc0204596:	74e2                	ld	s1,56(sp)
ffffffffc0204598:	4501                	li	a0,0
ffffffffc020459a:	6161                	addi	sp,sp,80
ffffffffc020459c:	8082                	ret
ffffffffc020459e:	ed4fc0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02045a2:	401c                	lw	a5,0(s0)
ffffffffc02045a4:	00f05c63          	blez	a5,ffffffffc02045bc <__down.constprop.0+0x82>
ffffffffc02045a8:	37fd                	addiw	a5,a5,-1
ffffffffc02045aa:	c01c                	sw	a5,0(s0)
ffffffffc02045ac:	ec0fc0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02045b0:	60a6                	ld	ra,72(sp)
ffffffffc02045b2:	6406                	ld	s0,64(sp)
ffffffffc02045b4:	74e2                	ld	s1,56(sp)
ffffffffc02045b6:	4501                	li	a0,0
ffffffffc02045b8:	6161                	addi	sp,sp,80
ffffffffc02045ba:	8082                	ret
ffffffffc02045bc:	0421                	addi	s0,s0,8
ffffffffc02045be:	0024                	addi	s1,sp,8
ffffffffc02045c0:	10000613          	li	a2,256
ffffffffc02045c4:	85a6                	mv	a1,s1
ffffffffc02045c6:	8522                	mv	a0,s0
ffffffffc02045c8:	280000ef          	jal	ra,ffffffffc0204848 <wait_current_set>
ffffffffc02045cc:	ea0fc0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02045d0:	b755                	j	ffffffffc0204574 <__down.constprop.0+0x3a>
ffffffffc02045d2:	85a6                	mv	a1,s1
ffffffffc02045d4:	8522                	mv	a0,s0
ffffffffc02045d6:	0ee000ef          	jal	ra,ffffffffc02046c4 <wait_queue_del>
ffffffffc02045da:	b77d                	j	ffffffffc0204588 <__down.constprop.0+0x4e>
ffffffffc02045dc:	e96fc0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02045e0:	8526                	mv	a0,s1
ffffffffc02045e2:	13c000ef          	jal	ra,ffffffffc020471e <wait_in_queue>
ffffffffc02045e6:	e501                	bnez	a0,ffffffffc02045ee <__down.constprop.0+0xb4>
ffffffffc02045e8:	e84fc0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02045ec:	bf71                	j	ffffffffc0204588 <__down.constprop.0+0x4e>
ffffffffc02045ee:	85a6                	mv	a1,s1
ffffffffc02045f0:	8522                	mv	a0,s0
ffffffffc02045f2:	0d2000ef          	jal	ra,ffffffffc02046c4 <wait_queue_del>
ffffffffc02045f6:	bfcd                	j	ffffffffc02045e8 <__down.constprop.0+0xae>

ffffffffc02045f8 <__up.constprop.0>:
ffffffffc02045f8:	1101                	addi	sp,sp,-32
ffffffffc02045fa:	e822                	sd	s0,16(sp)
ffffffffc02045fc:	ec06                	sd	ra,24(sp)
ffffffffc02045fe:	e426                	sd	s1,8(sp)
ffffffffc0204600:	e04a                	sd	s2,0(sp)
ffffffffc0204602:	842a                	mv	s0,a0
ffffffffc0204604:	100027f3          	csrr	a5,sstatus
ffffffffc0204608:	8b89                	andi	a5,a5,2
ffffffffc020460a:	4901                	li	s2,0
ffffffffc020460c:	eba1                	bnez	a5,ffffffffc020465c <__up.constprop.0+0x64>
ffffffffc020460e:	00840493          	addi	s1,s0,8
ffffffffc0204612:	8526                	mv	a0,s1
ffffffffc0204614:	0ee000ef          	jal	ra,ffffffffc0204702 <wait_queue_first>
ffffffffc0204618:	85aa                	mv	a1,a0
ffffffffc020461a:	cd0d                	beqz	a0,ffffffffc0204654 <__up.constprop.0+0x5c>
ffffffffc020461c:	6118                	ld	a4,0(a0)
ffffffffc020461e:	10000793          	li	a5,256
ffffffffc0204622:	0ec72703          	lw	a4,236(a4)
ffffffffc0204626:	02f71f63          	bne	a4,a5,ffffffffc0204664 <__up.constprop.0+0x6c>
ffffffffc020462a:	4685                	li	a3,1
ffffffffc020462c:	10000613          	li	a2,256
ffffffffc0204630:	8526                	mv	a0,s1
ffffffffc0204632:	0fa000ef          	jal	ra,ffffffffc020472c <wakeup_wait>
ffffffffc0204636:	00091863          	bnez	s2,ffffffffc0204646 <__up.constprop.0+0x4e>
ffffffffc020463a:	60e2                	ld	ra,24(sp)
ffffffffc020463c:	6442                	ld	s0,16(sp)
ffffffffc020463e:	64a2                	ld	s1,8(sp)
ffffffffc0204640:	6902                	ld	s2,0(sp)
ffffffffc0204642:	6105                	addi	sp,sp,32
ffffffffc0204644:	8082                	ret
ffffffffc0204646:	6442                	ld	s0,16(sp)
ffffffffc0204648:	60e2                	ld	ra,24(sp)
ffffffffc020464a:	64a2                	ld	s1,8(sp)
ffffffffc020464c:	6902                	ld	s2,0(sp)
ffffffffc020464e:	6105                	addi	sp,sp,32
ffffffffc0204650:	e1cfc06f          	j	ffffffffc0200c6c <intr_enable>
ffffffffc0204654:	401c                	lw	a5,0(s0)
ffffffffc0204656:	2785                	addiw	a5,a5,1
ffffffffc0204658:	c01c                	sw	a5,0(s0)
ffffffffc020465a:	bff1                	j	ffffffffc0204636 <__up.constprop.0+0x3e>
ffffffffc020465c:	e16fc0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0204660:	4905                	li	s2,1
ffffffffc0204662:	b775                	j	ffffffffc020460e <__up.constprop.0+0x16>
ffffffffc0204664:	00009697          	auipc	a3,0x9
ffffffffc0204668:	bdc68693          	addi	a3,a3,-1060 # ffffffffc020d240 <default_pmm_manager+0xa90>
ffffffffc020466c:	00007617          	auipc	a2,0x7
ffffffffc0204670:	4a460613          	addi	a2,a2,1188 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204674:	45e5                	li	a1,25
ffffffffc0204676:	00009517          	auipc	a0,0x9
ffffffffc020467a:	bf250513          	addi	a0,a0,-1038 # ffffffffc020d268 <default_pmm_manager+0xab8>
ffffffffc020467e:	e21fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204682 <sem_init>:
ffffffffc0204682:	c10c                	sw	a1,0(a0)
ffffffffc0204684:	0521                	addi	a0,a0,8
ffffffffc0204686:	a825                	j	ffffffffc02046be <wait_queue_init>

ffffffffc0204688 <up>:
ffffffffc0204688:	f71ff06f          	j	ffffffffc02045f8 <__up.constprop.0>

ffffffffc020468c <down>:
ffffffffc020468c:	1141                	addi	sp,sp,-16
ffffffffc020468e:	e406                	sd	ra,8(sp)
ffffffffc0204690:	eabff0ef          	jal	ra,ffffffffc020453a <__down.constprop.0>
ffffffffc0204694:	2501                	sext.w	a0,a0
ffffffffc0204696:	e501                	bnez	a0,ffffffffc020469e <down+0x12>
ffffffffc0204698:	60a2                	ld	ra,8(sp)
ffffffffc020469a:	0141                	addi	sp,sp,16
ffffffffc020469c:	8082                	ret
ffffffffc020469e:	00009697          	auipc	a3,0x9
ffffffffc02046a2:	bda68693          	addi	a3,a3,-1062 # ffffffffc020d278 <default_pmm_manager+0xac8>
ffffffffc02046a6:	00007617          	auipc	a2,0x7
ffffffffc02046aa:	46a60613          	addi	a2,a2,1130 # ffffffffc020bb10 <commands+0x210>
ffffffffc02046ae:	04000593          	li	a1,64
ffffffffc02046b2:	00009517          	auipc	a0,0x9
ffffffffc02046b6:	bb650513          	addi	a0,a0,-1098 # ffffffffc020d268 <default_pmm_manager+0xab8>
ffffffffc02046ba:	de5fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02046be <wait_queue_init>:
ffffffffc02046be:	e508                	sd	a0,8(a0)
ffffffffc02046c0:	e108                	sd	a0,0(a0)
ffffffffc02046c2:	8082                	ret

ffffffffc02046c4 <wait_queue_del>:
ffffffffc02046c4:	7198                	ld	a4,32(a1)
ffffffffc02046c6:	01858793          	addi	a5,a1,24
ffffffffc02046ca:	00e78b63          	beq	a5,a4,ffffffffc02046e0 <wait_queue_del+0x1c>
ffffffffc02046ce:	6994                	ld	a3,16(a1)
ffffffffc02046d0:	00a69863          	bne	a3,a0,ffffffffc02046e0 <wait_queue_del+0x1c>
ffffffffc02046d4:	6d94                	ld	a3,24(a1)
ffffffffc02046d6:	e698                	sd	a4,8(a3)
ffffffffc02046d8:	e314                	sd	a3,0(a4)
ffffffffc02046da:	f19c                	sd	a5,32(a1)
ffffffffc02046dc:	ed9c                	sd	a5,24(a1)
ffffffffc02046de:	8082                	ret
ffffffffc02046e0:	1141                	addi	sp,sp,-16
ffffffffc02046e2:	00009697          	auipc	a3,0x9
ffffffffc02046e6:	bf668693          	addi	a3,a3,-1034 # ffffffffc020d2d8 <default_pmm_manager+0xb28>
ffffffffc02046ea:	00007617          	auipc	a2,0x7
ffffffffc02046ee:	42660613          	addi	a2,a2,1062 # ffffffffc020bb10 <commands+0x210>
ffffffffc02046f2:	45f1                	li	a1,28
ffffffffc02046f4:	00009517          	auipc	a0,0x9
ffffffffc02046f8:	bcc50513          	addi	a0,a0,-1076 # ffffffffc020d2c0 <default_pmm_manager+0xb10>
ffffffffc02046fc:	e406                	sd	ra,8(sp)
ffffffffc02046fe:	da1fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204702 <wait_queue_first>:
ffffffffc0204702:	651c                	ld	a5,8(a0)
ffffffffc0204704:	00f50563          	beq	a0,a5,ffffffffc020470e <wait_queue_first+0xc>
ffffffffc0204708:	fe878513          	addi	a0,a5,-24
ffffffffc020470c:	8082                	ret
ffffffffc020470e:	4501                	li	a0,0
ffffffffc0204710:	8082                	ret

ffffffffc0204712 <wait_queue_empty>:
ffffffffc0204712:	651c                	ld	a5,8(a0)
ffffffffc0204714:	40a78533          	sub	a0,a5,a0
ffffffffc0204718:	00153513          	seqz	a0,a0
ffffffffc020471c:	8082                	ret

ffffffffc020471e <wait_in_queue>:
ffffffffc020471e:	711c                	ld	a5,32(a0)
ffffffffc0204720:	0561                	addi	a0,a0,24
ffffffffc0204722:	40a78533          	sub	a0,a5,a0
ffffffffc0204726:	00a03533          	snez	a0,a0
ffffffffc020472a:	8082                	ret

ffffffffc020472c <wakeup_wait>:
ffffffffc020472c:	e689                	bnez	a3,ffffffffc0204736 <wakeup_wait+0xa>
ffffffffc020472e:	6188                	ld	a0,0(a1)
ffffffffc0204730:	c590                	sw	a2,8(a1)
ffffffffc0204732:	4790206f          	j	ffffffffc02073aa <wakeup_proc>
ffffffffc0204736:	7198                	ld	a4,32(a1)
ffffffffc0204738:	01858793          	addi	a5,a1,24
ffffffffc020473c:	00e78e63          	beq	a5,a4,ffffffffc0204758 <wakeup_wait+0x2c>
ffffffffc0204740:	6994                	ld	a3,16(a1)
ffffffffc0204742:	00d51b63          	bne	a0,a3,ffffffffc0204758 <wakeup_wait+0x2c>
ffffffffc0204746:	6d94                	ld	a3,24(a1)
ffffffffc0204748:	6188                	ld	a0,0(a1)
ffffffffc020474a:	e698                	sd	a4,8(a3)
ffffffffc020474c:	e314                	sd	a3,0(a4)
ffffffffc020474e:	f19c                	sd	a5,32(a1)
ffffffffc0204750:	ed9c                	sd	a5,24(a1)
ffffffffc0204752:	c590                	sw	a2,8(a1)
ffffffffc0204754:	4570206f          	j	ffffffffc02073aa <wakeup_proc>
ffffffffc0204758:	1141                	addi	sp,sp,-16
ffffffffc020475a:	00009697          	auipc	a3,0x9
ffffffffc020475e:	b7e68693          	addi	a3,a3,-1154 # ffffffffc020d2d8 <default_pmm_manager+0xb28>
ffffffffc0204762:	00007617          	auipc	a2,0x7
ffffffffc0204766:	3ae60613          	addi	a2,a2,942 # ffffffffc020bb10 <commands+0x210>
ffffffffc020476a:	45f1                	li	a1,28
ffffffffc020476c:	00009517          	auipc	a0,0x9
ffffffffc0204770:	b5450513          	addi	a0,a0,-1196 # ffffffffc020d2c0 <default_pmm_manager+0xb10>
ffffffffc0204774:	e406                	sd	ra,8(sp)
ffffffffc0204776:	d29fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020477a <wakeup_queue>:
ffffffffc020477a:	651c                	ld	a5,8(a0)
ffffffffc020477c:	0ca78563          	beq	a5,a0,ffffffffc0204846 <wakeup_queue+0xcc>
ffffffffc0204780:	1101                	addi	sp,sp,-32
ffffffffc0204782:	e822                	sd	s0,16(sp)
ffffffffc0204784:	e426                	sd	s1,8(sp)
ffffffffc0204786:	e04a                	sd	s2,0(sp)
ffffffffc0204788:	ec06                	sd	ra,24(sp)
ffffffffc020478a:	84aa                	mv	s1,a0
ffffffffc020478c:	892e                	mv	s2,a1
ffffffffc020478e:	fe878413          	addi	s0,a5,-24
ffffffffc0204792:	e23d                	bnez	a2,ffffffffc02047f8 <wakeup_queue+0x7e>
ffffffffc0204794:	6008                	ld	a0,0(s0)
ffffffffc0204796:	01242423          	sw	s2,8(s0)
ffffffffc020479a:	411020ef          	jal	ra,ffffffffc02073aa <wakeup_proc>
ffffffffc020479e:	701c                	ld	a5,32(s0)
ffffffffc02047a0:	01840713          	addi	a4,s0,24
ffffffffc02047a4:	02e78463          	beq	a5,a4,ffffffffc02047cc <wakeup_queue+0x52>
ffffffffc02047a8:	6818                	ld	a4,16(s0)
ffffffffc02047aa:	02e49163          	bne	s1,a4,ffffffffc02047cc <wakeup_queue+0x52>
ffffffffc02047ae:	02f48f63          	beq	s1,a5,ffffffffc02047ec <wakeup_queue+0x72>
ffffffffc02047b2:	fe87b503          	ld	a0,-24(a5)
ffffffffc02047b6:	ff27a823          	sw	s2,-16(a5)
ffffffffc02047ba:	fe878413          	addi	s0,a5,-24
ffffffffc02047be:	3ed020ef          	jal	ra,ffffffffc02073aa <wakeup_proc>
ffffffffc02047c2:	701c                	ld	a5,32(s0)
ffffffffc02047c4:	01840713          	addi	a4,s0,24
ffffffffc02047c8:	fee790e3          	bne	a5,a4,ffffffffc02047a8 <wakeup_queue+0x2e>
ffffffffc02047cc:	00009697          	auipc	a3,0x9
ffffffffc02047d0:	b0c68693          	addi	a3,a3,-1268 # ffffffffc020d2d8 <default_pmm_manager+0xb28>
ffffffffc02047d4:	00007617          	auipc	a2,0x7
ffffffffc02047d8:	33c60613          	addi	a2,a2,828 # ffffffffc020bb10 <commands+0x210>
ffffffffc02047dc:	02200593          	li	a1,34
ffffffffc02047e0:	00009517          	auipc	a0,0x9
ffffffffc02047e4:	ae050513          	addi	a0,a0,-1312 # ffffffffc020d2c0 <default_pmm_manager+0xb10>
ffffffffc02047e8:	cb7fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02047ec:	60e2                	ld	ra,24(sp)
ffffffffc02047ee:	6442                	ld	s0,16(sp)
ffffffffc02047f0:	64a2                	ld	s1,8(sp)
ffffffffc02047f2:	6902                	ld	s2,0(sp)
ffffffffc02047f4:	6105                	addi	sp,sp,32
ffffffffc02047f6:	8082                	ret
ffffffffc02047f8:	6798                	ld	a4,8(a5)
ffffffffc02047fa:	02f70763          	beq	a4,a5,ffffffffc0204828 <wakeup_queue+0xae>
ffffffffc02047fe:	6814                	ld	a3,16(s0)
ffffffffc0204800:	02d49463          	bne	s1,a3,ffffffffc0204828 <wakeup_queue+0xae>
ffffffffc0204804:	6c14                	ld	a3,24(s0)
ffffffffc0204806:	6008                	ld	a0,0(s0)
ffffffffc0204808:	e698                	sd	a4,8(a3)
ffffffffc020480a:	e314                	sd	a3,0(a4)
ffffffffc020480c:	f01c                	sd	a5,32(s0)
ffffffffc020480e:	ec1c                	sd	a5,24(s0)
ffffffffc0204810:	01242423          	sw	s2,8(s0)
ffffffffc0204814:	397020ef          	jal	ra,ffffffffc02073aa <wakeup_proc>
ffffffffc0204818:	6480                	ld	s0,8(s1)
ffffffffc020481a:	fc8489e3          	beq	s1,s0,ffffffffc02047ec <wakeup_queue+0x72>
ffffffffc020481e:	6418                	ld	a4,8(s0)
ffffffffc0204820:	87a2                	mv	a5,s0
ffffffffc0204822:	1421                	addi	s0,s0,-24
ffffffffc0204824:	fce79de3          	bne	a5,a4,ffffffffc02047fe <wakeup_queue+0x84>
ffffffffc0204828:	00009697          	auipc	a3,0x9
ffffffffc020482c:	ab068693          	addi	a3,a3,-1360 # ffffffffc020d2d8 <default_pmm_manager+0xb28>
ffffffffc0204830:	00007617          	auipc	a2,0x7
ffffffffc0204834:	2e060613          	addi	a2,a2,736 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204838:	45f1                	li	a1,28
ffffffffc020483a:	00009517          	auipc	a0,0x9
ffffffffc020483e:	a8650513          	addi	a0,a0,-1402 # ffffffffc020d2c0 <default_pmm_manager+0xb10>
ffffffffc0204842:	c5dfb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204846:	8082                	ret

ffffffffc0204848 <wait_current_set>:
ffffffffc0204848:	00092797          	auipc	a5,0x92
ffffffffc020484c:	0787b783          	ld	a5,120(a5) # ffffffffc02968c0 <current>
ffffffffc0204850:	c39d                	beqz	a5,ffffffffc0204876 <wait_current_set+0x2e>
ffffffffc0204852:	01858713          	addi	a4,a1,24
ffffffffc0204856:	800006b7          	lui	a3,0x80000
ffffffffc020485a:	ed98                	sd	a4,24(a1)
ffffffffc020485c:	e19c                	sd	a5,0(a1)
ffffffffc020485e:	c594                	sw	a3,8(a1)
ffffffffc0204860:	4685                	li	a3,1
ffffffffc0204862:	c394                	sw	a3,0(a5)
ffffffffc0204864:	0ec7a623          	sw	a2,236(a5)
ffffffffc0204868:	611c                	ld	a5,0(a0)
ffffffffc020486a:	e988                	sd	a0,16(a1)
ffffffffc020486c:	e118                	sd	a4,0(a0)
ffffffffc020486e:	e798                	sd	a4,8(a5)
ffffffffc0204870:	f188                	sd	a0,32(a1)
ffffffffc0204872:	ed9c                	sd	a5,24(a1)
ffffffffc0204874:	8082                	ret
ffffffffc0204876:	1141                	addi	sp,sp,-16
ffffffffc0204878:	00009697          	auipc	a3,0x9
ffffffffc020487c:	aa068693          	addi	a3,a3,-1376 # ffffffffc020d318 <default_pmm_manager+0xb68>
ffffffffc0204880:	00007617          	auipc	a2,0x7
ffffffffc0204884:	29060613          	addi	a2,a2,656 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204888:	07400593          	li	a1,116
ffffffffc020488c:	00009517          	auipc	a0,0x9
ffffffffc0204890:	a3450513          	addi	a0,a0,-1484 # ffffffffc020d2c0 <default_pmm_manager+0xb10>
ffffffffc0204894:	e406                	sd	ra,8(sp)
ffffffffc0204896:	c09fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020489a <get_fd_array.part.0>:
ffffffffc020489a:	1141                	addi	sp,sp,-16
ffffffffc020489c:	00009697          	auipc	a3,0x9
ffffffffc02048a0:	a8c68693          	addi	a3,a3,-1396 # ffffffffc020d328 <default_pmm_manager+0xb78>
ffffffffc02048a4:	00007617          	auipc	a2,0x7
ffffffffc02048a8:	26c60613          	addi	a2,a2,620 # ffffffffc020bb10 <commands+0x210>
ffffffffc02048ac:	45d1                	li	a1,20
ffffffffc02048ae:	00009517          	auipc	a0,0x9
ffffffffc02048b2:	aaa50513          	addi	a0,a0,-1366 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc02048b6:	e406                	sd	ra,8(sp)
ffffffffc02048b8:	be7fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02048bc <fd_array_alloc>:
ffffffffc02048bc:	00092797          	auipc	a5,0x92
ffffffffc02048c0:	0047b783          	ld	a5,4(a5) # ffffffffc02968c0 <current>
ffffffffc02048c4:	1487b783          	ld	a5,328(a5)
ffffffffc02048c8:	1141                	addi	sp,sp,-16
ffffffffc02048ca:	e406                	sd	ra,8(sp)
ffffffffc02048cc:	c3a5                	beqz	a5,ffffffffc020492c <fd_array_alloc+0x70>
ffffffffc02048ce:	4b98                	lw	a4,16(a5)
ffffffffc02048d0:	04e05e63          	blez	a4,ffffffffc020492c <fd_array_alloc+0x70>
ffffffffc02048d4:	775d                	lui	a4,0xffff7
ffffffffc02048d6:	ad970713          	addi	a4,a4,-1319 # ffffffffffff6ad9 <end+0x3fd601c9>
ffffffffc02048da:	679c                	ld	a5,8(a5)
ffffffffc02048dc:	02e50863          	beq	a0,a4,ffffffffc020490c <fd_array_alloc+0x50>
ffffffffc02048e0:	04700713          	li	a4,71
ffffffffc02048e4:	04a76263          	bltu	a4,a0,ffffffffc0204928 <fd_array_alloc+0x6c>
ffffffffc02048e8:	00351713          	slli	a4,a0,0x3
ffffffffc02048ec:	40a70533          	sub	a0,a4,a0
ffffffffc02048f0:	050e                	slli	a0,a0,0x3
ffffffffc02048f2:	97aa                	add	a5,a5,a0
ffffffffc02048f4:	4398                	lw	a4,0(a5)
ffffffffc02048f6:	e71d                	bnez	a4,ffffffffc0204924 <fd_array_alloc+0x68>
ffffffffc02048f8:	5b88                	lw	a0,48(a5)
ffffffffc02048fa:	e91d                	bnez	a0,ffffffffc0204930 <fd_array_alloc+0x74>
ffffffffc02048fc:	4705                	li	a4,1
ffffffffc02048fe:	c398                	sw	a4,0(a5)
ffffffffc0204900:	0207b423          	sd	zero,40(a5)
ffffffffc0204904:	e19c                	sd	a5,0(a1)
ffffffffc0204906:	60a2                	ld	ra,8(sp)
ffffffffc0204908:	0141                	addi	sp,sp,16
ffffffffc020490a:	8082                	ret
ffffffffc020490c:	6685                	lui	a3,0x1
ffffffffc020490e:	fc068693          	addi	a3,a3,-64 # fc0 <_binary_bin_swap_img_size-0x6d40>
ffffffffc0204912:	96be                	add	a3,a3,a5
ffffffffc0204914:	4398                	lw	a4,0(a5)
ffffffffc0204916:	d36d                	beqz	a4,ffffffffc02048f8 <fd_array_alloc+0x3c>
ffffffffc0204918:	03878793          	addi	a5,a5,56
ffffffffc020491c:	fef69ce3          	bne	a3,a5,ffffffffc0204914 <fd_array_alloc+0x58>
ffffffffc0204920:	5529                	li	a0,-22
ffffffffc0204922:	b7d5                	j	ffffffffc0204906 <fd_array_alloc+0x4a>
ffffffffc0204924:	5545                	li	a0,-15
ffffffffc0204926:	b7c5                	j	ffffffffc0204906 <fd_array_alloc+0x4a>
ffffffffc0204928:	5575                	li	a0,-3
ffffffffc020492a:	bff1                	j	ffffffffc0204906 <fd_array_alloc+0x4a>
ffffffffc020492c:	f6fff0ef          	jal	ra,ffffffffc020489a <get_fd_array.part.0>
ffffffffc0204930:	00009697          	auipc	a3,0x9
ffffffffc0204934:	a3868693          	addi	a3,a3,-1480 # ffffffffc020d368 <default_pmm_manager+0xbb8>
ffffffffc0204938:	00007617          	auipc	a2,0x7
ffffffffc020493c:	1d860613          	addi	a2,a2,472 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204940:	03b00593          	li	a1,59
ffffffffc0204944:	00009517          	auipc	a0,0x9
ffffffffc0204948:	a1450513          	addi	a0,a0,-1516 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc020494c:	b53fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204950 <fd_array_free>:
ffffffffc0204950:	411c                	lw	a5,0(a0)
ffffffffc0204952:	1141                	addi	sp,sp,-16
ffffffffc0204954:	e022                	sd	s0,0(sp)
ffffffffc0204956:	e406                	sd	ra,8(sp)
ffffffffc0204958:	4705                	li	a4,1
ffffffffc020495a:	842a                	mv	s0,a0
ffffffffc020495c:	04e78063          	beq	a5,a4,ffffffffc020499c <fd_array_free+0x4c>
ffffffffc0204960:	470d                	li	a4,3
ffffffffc0204962:	04e79563          	bne	a5,a4,ffffffffc02049ac <fd_array_free+0x5c>
ffffffffc0204966:	591c                	lw	a5,48(a0)
ffffffffc0204968:	c38d                	beqz	a5,ffffffffc020498a <fd_array_free+0x3a>
ffffffffc020496a:	00009697          	auipc	a3,0x9
ffffffffc020496e:	9fe68693          	addi	a3,a3,-1538 # ffffffffc020d368 <default_pmm_manager+0xbb8>
ffffffffc0204972:	00007617          	auipc	a2,0x7
ffffffffc0204976:	19e60613          	addi	a2,a2,414 # ffffffffc020bb10 <commands+0x210>
ffffffffc020497a:	04500593          	li	a1,69
ffffffffc020497e:	00009517          	auipc	a0,0x9
ffffffffc0204982:	9da50513          	addi	a0,a0,-1574 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc0204986:	b19fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020498a:	7408                	ld	a0,40(s0)
ffffffffc020498c:	095030ef          	jal	ra,ffffffffc0208220 <vfs_close>
ffffffffc0204990:	60a2                	ld	ra,8(sp)
ffffffffc0204992:	00042023          	sw	zero,0(s0)
ffffffffc0204996:	6402                	ld	s0,0(sp)
ffffffffc0204998:	0141                	addi	sp,sp,16
ffffffffc020499a:	8082                	ret
ffffffffc020499c:	591c                	lw	a5,48(a0)
ffffffffc020499e:	f7f1                	bnez	a5,ffffffffc020496a <fd_array_free+0x1a>
ffffffffc02049a0:	60a2                	ld	ra,8(sp)
ffffffffc02049a2:	00042023          	sw	zero,0(s0)
ffffffffc02049a6:	6402                	ld	s0,0(sp)
ffffffffc02049a8:	0141                	addi	sp,sp,16
ffffffffc02049aa:	8082                	ret
ffffffffc02049ac:	00009697          	auipc	a3,0x9
ffffffffc02049b0:	9f468693          	addi	a3,a3,-1548 # ffffffffc020d3a0 <default_pmm_manager+0xbf0>
ffffffffc02049b4:	00007617          	auipc	a2,0x7
ffffffffc02049b8:	15c60613          	addi	a2,a2,348 # ffffffffc020bb10 <commands+0x210>
ffffffffc02049bc:	04400593          	li	a1,68
ffffffffc02049c0:	00009517          	auipc	a0,0x9
ffffffffc02049c4:	99850513          	addi	a0,a0,-1640 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc02049c8:	ad7fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02049cc <fd_array_release>:
ffffffffc02049cc:	4118                	lw	a4,0(a0)
ffffffffc02049ce:	1141                	addi	sp,sp,-16
ffffffffc02049d0:	e406                	sd	ra,8(sp)
ffffffffc02049d2:	4685                	li	a3,1
ffffffffc02049d4:	3779                	addiw	a4,a4,-2
ffffffffc02049d6:	04e6e063          	bltu	a3,a4,ffffffffc0204a16 <fd_array_release+0x4a>
ffffffffc02049da:	5918                	lw	a4,48(a0)
ffffffffc02049dc:	00e05d63          	blez	a4,ffffffffc02049f6 <fd_array_release+0x2a>
ffffffffc02049e0:	fff7069b          	addiw	a3,a4,-1
ffffffffc02049e4:	d914                	sw	a3,48(a0)
ffffffffc02049e6:	c681                	beqz	a3,ffffffffc02049ee <fd_array_release+0x22>
ffffffffc02049e8:	60a2                	ld	ra,8(sp)
ffffffffc02049ea:	0141                	addi	sp,sp,16
ffffffffc02049ec:	8082                	ret
ffffffffc02049ee:	60a2                	ld	ra,8(sp)
ffffffffc02049f0:	0141                	addi	sp,sp,16
ffffffffc02049f2:	f5fff06f          	j	ffffffffc0204950 <fd_array_free>
ffffffffc02049f6:	00009697          	auipc	a3,0x9
ffffffffc02049fa:	a1a68693          	addi	a3,a3,-1510 # ffffffffc020d410 <default_pmm_manager+0xc60>
ffffffffc02049fe:	00007617          	auipc	a2,0x7
ffffffffc0204a02:	11260613          	addi	a2,a2,274 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204a06:	05600593          	li	a1,86
ffffffffc0204a0a:	00009517          	auipc	a0,0x9
ffffffffc0204a0e:	94e50513          	addi	a0,a0,-1714 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc0204a12:	a8dfb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204a16:	00009697          	auipc	a3,0x9
ffffffffc0204a1a:	9c268693          	addi	a3,a3,-1598 # ffffffffc020d3d8 <default_pmm_manager+0xc28>
ffffffffc0204a1e:	00007617          	auipc	a2,0x7
ffffffffc0204a22:	0f260613          	addi	a2,a2,242 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204a26:	05500593          	li	a1,85
ffffffffc0204a2a:	00009517          	auipc	a0,0x9
ffffffffc0204a2e:	92e50513          	addi	a0,a0,-1746 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc0204a32:	a6dfb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204a36 <fd_array_open.part.0>:
ffffffffc0204a36:	1141                	addi	sp,sp,-16
ffffffffc0204a38:	00009697          	auipc	a3,0x9
ffffffffc0204a3c:	9f068693          	addi	a3,a3,-1552 # ffffffffc020d428 <default_pmm_manager+0xc78>
ffffffffc0204a40:	00007617          	auipc	a2,0x7
ffffffffc0204a44:	0d060613          	addi	a2,a2,208 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204a48:	05f00593          	li	a1,95
ffffffffc0204a4c:	00009517          	auipc	a0,0x9
ffffffffc0204a50:	90c50513          	addi	a0,a0,-1780 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc0204a54:	e406                	sd	ra,8(sp)
ffffffffc0204a56:	a49fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204a5a <fd_array_init>:
ffffffffc0204a5a:	4781                	li	a5,0
ffffffffc0204a5c:	04800713          	li	a4,72
ffffffffc0204a60:	cd1c                	sw	a5,24(a0)
ffffffffc0204a62:	02052823          	sw	zero,48(a0)
ffffffffc0204a66:	00052023          	sw	zero,0(a0)
ffffffffc0204a6a:	2785                	addiw	a5,a5,1
ffffffffc0204a6c:	03850513          	addi	a0,a0,56
ffffffffc0204a70:	fee798e3          	bne	a5,a4,ffffffffc0204a60 <fd_array_init+0x6>
ffffffffc0204a74:	8082                	ret

ffffffffc0204a76 <fd_array_close>:
ffffffffc0204a76:	4118                	lw	a4,0(a0)
ffffffffc0204a78:	1141                	addi	sp,sp,-16
ffffffffc0204a7a:	e406                	sd	ra,8(sp)
ffffffffc0204a7c:	e022                	sd	s0,0(sp)
ffffffffc0204a7e:	4789                	li	a5,2
ffffffffc0204a80:	04f71a63          	bne	a4,a5,ffffffffc0204ad4 <fd_array_close+0x5e>
ffffffffc0204a84:	591c                	lw	a5,48(a0)
ffffffffc0204a86:	842a                	mv	s0,a0
ffffffffc0204a88:	02f05663          	blez	a5,ffffffffc0204ab4 <fd_array_close+0x3e>
ffffffffc0204a8c:	37fd                	addiw	a5,a5,-1
ffffffffc0204a8e:	470d                	li	a4,3
ffffffffc0204a90:	c118                	sw	a4,0(a0)
ffffffffc0204a92:	d91c                	sw	a5,48(a0)
ffffffffc0204a94:	0007871b          	sext.w	a4,a5
ffffffffc0204a98:	c709                	beqz	a4,ffffffffc0204aa2 <fd_array_close+0x2c>
ffffffffc0204a9a:	60a2                	ld	ra,8(sp)
ffffffffc0204a9c:	6402                	ld	s0,0(sp)
ffffffffc0204a9e:	0141                	addi	sp,sp,16
ffffffffc0204aa0:	8082                	ret
ffffffffc0204aa2:	7508                	ld	a0,40(a0)
ffffffffc0204aa4:	77c030ef          	jal	ra,ffffffffc0208220 <vfs_close>
ffffffffc0204aa8:	60a2                	ld	ra,8(sp)
ffffffffc0204aaa:	00042023          	sw	zero,0(s0)
ffffffffc0204aae:	6402                	ld	s0,0(sp)
ffffffffc0204ab0:	0141                	addi	sp,sp,16
ffffffffc0204ab2:	8082                	ret
ffffffffc0204ab4:	00009697          	auipc	a3,0x9
ffffffffc0204ab8:	95c68693          	addi	a3,a3,-1700 # ffffffffc020d410 <default_pmm_manager+0xc60>
ffffffffc0204abc:	00007617          	auipc	a2,0x7
ffffffffc0204ac0:	05460613          	addi	a2,a2,84 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204ac4:	06800593          	li	a1,104
ffffffffc0204ac8:	00009517          	auipc	a0,0x9
ffffffffc0204acc:	89050513          	addi	a0,a0,-1904 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc0204ad0:	9cffb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204ad4:	00009697          	auipc	a3,0x9
ffffffffc0204ad8:	8ac68693          	addi	a3,a3,-1876 # ffffffffc020d380 <default_pmm_manager+0xbd0>
ffffffffc0204adc:	00007617          	auipc	a2,0x7
ffffffffc0204ae0:	03460613          	addi	a2,a2,52 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204ae4:	06700593          	li	a1,103
ffffffffc0204ae8:	00009517          	auipc	a0,0x9
ffffffffc0204aec:	87050513          	addi	a0,a0,-1936 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc0204af0:	9affb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204af4 <fd_array_dup>:
ffffffffc0204af4:	7179                	addi	sp,sp,-48
ffffffffc0204af6:	e84a                	sd	s2,16(sp)
ffffffffc0204af8:	00052903          	lw	s2,0(a0)
ffffffffc0204afc:	f406                	sd	ra,40(sp)
ffffffffc0204afe:	f022                	sd	s0,32(sp)
ffffffffc0204b00:	ec26                	sd	s1,24(sp)
ffffffffc0204b02:	e44e                	sd	s3,8(sp)
ffffffffc0204b04:	4785                	li	a5,1
ffffffffc0204b06:	04f91663          	bne	s2,a5,ffffffffc0204b52 <fd_array_dup+0x5e>
ffffffffc0204b0a:	0005a983          	lw	s3,0(a1)
ffffffffc0204b0e:	4789                	li	a5,2
ffffffffc0204b10:	04f99163          	bne	s3,a5,ffffffffc0204b52 <fd_array_dup+0x5e>
ffffffffc0204b14:	7584                	ld	s1,40(a1)
ffffffffc0204b16:	699c                	ld	a5,16(a1)
ffffffffc0204b18:	7194                	ld	a3,32(a1)
ffffffffc0204b1a:	6598                	ld	a4,8(a1)
ffffffffc0204b1c:	842a                	mv	s0,a0
ffffffffc0204b1e:	e91c                	sd	a5,16(a0)
ffffffffc0204b20:	f114                	sd	a3,32(a0)
ffffffffc0204b22:	e518                	sd	a4,8(a0)
ffffffffc0204b24:	8526                	mv	a0,s1
ffffffffc0204b26:	659020ef          	jal	ra,ffffffffc020797e <inode_ref_inc>
ffffffffc0204b2a:	8526                	mv	a0,s1
ffffffffc0204b2c:	65f020ef          	jal	ra,ffffffffc020798a <inode_open_inc>
ffffffffc0204b30:	401c                	lw	a5,0(s0)
ffffffffc0204b32:	f404                	sd	s1,40(s0)
ffffffffc0204b34:	03279f63          	bne	a5,s2,ffffffffc0204b72 <fd_array_dup+0x7e>
ffffffffc0204b38:	cc8d                	beqz	s1,ffffffffc0204b72 <fd_array_dup+0x7e>
ffffffffc0204b3a:	581c                	lw	a5,48(s0)
ffffffffc0204b3c:	01342023          	sw	s3,0(s0)
ffffffffc0204b40:	70a2                	ld	ra,40(sp)
ffffffffc0204b42:	2785                	addiw	a5,a5,1
ffffffffc0204b44:	d81c                	sw	a5,48(s0)
ffffffffc0204b46:	7402                	ld	s0,32(sp)
ffffffffc0204b48:	64e2                	ld	s1,24(sp)
ffffffffc0204b4a:	6942                	ld	s2,16(sp)
ffffffffc0204b4c:	69a2                	ld	s3,8(sp)
ffffffffc0204b4e:	6145                	addi	sp,sp,48
ffffffffc0204b50:	8082                	ret
ffffffffc0204b52:	00009697          	auipc	a3,0x9
ffffffffc0204b56:	90668693          	addi	a3,a3,-1786 # ffffffffc020d458 <default_pmm_manager+0xca8>
ffffffffc0204b5a:	00007617          	auipc	a2,0x7
ffffffffc0204b5e:	fb660613          	addi	a2,a2,-74 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204b62:	07300593          	li	a1,115
ffffffffc0204b66:	00008517          	auipc	a0,0x8
ffffffffc0204b6a:	7f250513          	addi	a0,a0,2034 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc0204b6e:	931fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204b72:	ec5ff0ef          	jal	ra,ffffffffc0204a36 <fd_array_open.part.0>

ffffffffc0204b76 <file_testfd>:
ffffffffc0204b76:	04700793          	li	a5,71
ffffffffc0204b7a:	04a7e263          	bltu	a5,a0,ffffffffc0204bbe <file_testfd+0x48>
ffffffffc0204b7e:	00092797          	auipc	a5,0x92
ffffffffc0204b82:	d427b783          	ld	a5,-702(a5) # ffffffffc02968c0 <current>
ffffffffc0204b86:	1487b783          	ld	a5,328(a5)
ffffffffc0204b8a:	cf85                	beqz	a5,ffffffffc0204bc2 <file_testfd+0x4c>
ffffffffc0204b8c:	4b98                	lw	a4,16(a5)
ffffffffc0204b8e:	02e05a63          	blez	a4,ffffffffc0204bc2 <file_testfd+0x4c>
ffffffffc0204b92:	6798                	ld	a4,8(a5)
ffffffffc0204b94:	00351793          	slli	a5,a0,0x3
ffffffffc0204b98:	8f89                	sub	a5,a5,a0
ffffffffc0204b9a:	078e                	slli	a5,a5,0x3
ffffffffc0204b9c:	97ba                	add	a5,a5,a4
ffffffffc0204b9e:	4394                	lw	a3,0(a5)
ffffffffc0204ba0:	4709                	li	a4,2
ffffffffc0204ba2:	00e69e63          	bne	a3,a4,ffffffffc0204bbe <file_testfd+0x48>
ffffffffc0204ba6:	4f98                	lw	a4,24(a5)
ffffffffc0204ba8:	00a71b63          	bne	a4,a0,ffffffffc0204bbe <file_testfd+0x48>
ffffffffc0204bac:	c199                	beqz	a1,ffffffffc0204bb2 <file_testfd+0x3c>
ffffffffc0204bae:	6788                	ld	a0,8(a5)
ffffffffc0204bb0:	c901                	beqz	a0,ffffffffc0204bc0 <file_testfd+0x4a>
ffffffffc0204bb2:	4505                	li	a0,1
ffffffffc0204bb4:	c611                	beqz	a2,ffffffffc0204bc0 <file_testfd+0x4a>
ffffffffc0204bb6:	6b88                	ld	a0,16(a5)
ffffffffc0204bb8:	00a03533          	snez	a0,a0
ffffffffc0204bbc:	8082                	ret
ffffffffc0204bbe:	4501                	li	a0,0
ffffffffc0204bc0:	8082                	ret
ffffffffc0204bc2:	1141                	addi	sp,sp,-16
ffffffffc0204bc4:	e406                	sd	ra,8(sp)
ffffffffc0204bc6:	cd5ff0ef          	jal	ra,ffffffffc020489a <get_fd_array.part.0>

ffffffffc0204bca <file_open>:
ffffffffc0204bca:	711d                	addi	sp,sp,-96
ffffffffc0204bcc:	ec86                	sd	ra,88(sp)
ffffffffc0204bce:	e8a2                	sd	s0,80(sp)
ffffffffc0204bd0:	e4a6                	sd	s1,72(sp)
ffffffffc0204bd2:	e0ca                	sd	s2,64(sp)
ffffffffc0204bd4:	fc4e                	sd	s3,56(sp)
ffffffffc0204bd6:	f852                	sd	s4,48(sp)
ffffffffc0204bd8:	0035f793          	andi	a5,a1,3
ffffffffc0204bdc:	470d                	li	a4,3
ffffffffc0204bde:	0ce78163          	beq	a5,a4,ffffffffc0204ca0 <file_open+0xd6>
ffffffffc0204be2:	078e                	slli	a5,a5,0x3
ffffffffc0204be4:	00009717          	auipc	a4,0x9
ffffffffc0204be8:	ae470713          	addi	a4,a4,-1308 # ffffffffc020d6c8 <CSWTCH.79>
ffffffffc0204bec:	892a                	mv	s2,a0
ffffffffc0204bee:	00009697          	auipc	a3,0x9
ffffffffc0204bf2:	ac268693          	addi	a3,a3,-1342 # ffffffffc020d6b0 <CSWTCH.78>
ffffffffc0204bf6:	755d                	lui	a0,0xffff7
ffffffffc0204bf8:	96be                	add	a3,a3,a5
ffffffffc0204bfa:	84ae                	mv	s1,a1
ffffffffc0204bfc:	97ba                	add	a5,a5,a4
ffffffffc0204bfe:	858a                	mv	a1,sp
ffffffffc0204c00:	ad950513          	addi	a0,a0,-1319 # ffffffffffff6ad9 <end+0x3fd601c9>
ffffffffc0204c04:	0006ba03          	ld	s4,0(a3)
ffffffffc0204c08:	0007b983          	ld	s3,0(a5)
ffffffffc0204c0c:	cb1ff0ef          	jal	ra,ffffffffc02048bc <fd_array_alloc>
ffffffffc0204c10:	842a                	mv	s0,a0
ffffffffc0204c12:	c911                	beqz	a0,ffffffffc0204c26 <file_open+0x5c>
ffffffffc0204c14:	60e6                	ld	ra,88(sp)
ffffffffc0204c16:	8522                	mv	a0,s0
ffffffffc0204c18:	6446                	ld	s0,80(sp)
ffffffffc0204c1a:	64a6                	ld	s1,72(sp)
ffffffffc0204c1c:	6906                	ld	s2,64(sp)
ffffffffc0204c1e:	79e2                	ld	s3,56(sp)
ffffffffc0204c20:	7a42                	ld	s4,48(sp)
ffffffffc0204c22:	6125                	addi	sp,sp,96
ffffffffc0204c24:	8082                	ret
ffffffffc0204c26:	0030                	addi	a2,sp,8
ffffffffc0204c28:	85a6                	mv	a1,s1
ffffffffc0204c2a:	854a                	mv	a0,s2
ffffffffc0204c2c:	44e030ef          	jal	ra,ffffffffc020807a <vfs_open>
ffffffffc0204c30:	842a                	mv	s0,a0
ffffffffc0204c32:	e13d                	bnez	a0,ffffffffc0204c98 <file_open+0xce>
ffffffffc0204c34:	6782                	ld	a5,0(sp)
ffffffffc0204c36:	0204f493          	andi	s1,s1,32
ffffffffc0204c3a:	6422                	ld	s0,8(sp)
ffffffffc0204c3c:	0207b023          	sd	zero,32(a5)
ffffffffc0204c40:	c885                	beqz	s1,ffffffffc0204c70 <file_open+0xa6>
ffffffffc0204c42:	c03d                	beqz	s0,ffffffffc0204ca8 <file_open+0xde>
ffffffffc0204c44:	783c                	ld	a5,112(s0)
ffffffffc0204c46:	c3ad                	beqz	a5,ffffffffc0204ca8 <file_open+0xde>
ffffffffc0204c48:	779c                	ld	a5,40(a5)
ffffffffc0204c4a:	cfb9                	beqz	a5,ffffffffc0204ca8 <file_open+0xde>
ffffffffc0204c4c:	8522                	mv	a0,s0
ffffffffc0204c4e:	00009597          	auipc	a1,0x9
ffffffffc0204c52:	89258593          	addi	a1,a1,-1902 # ffffffffc020d4e0 <default_pmm_manager+0xd30>
ffffffffc0204c56:	541020ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0204c5a:	783c                	ld	a5,112(s0)
ffffffffc0204c5c:	6522                	ld	a0,8(sp)
ffffffffc0204c5e:	080c                	addi	a1,sp,16
ffffffffc0204c60:	779c                	ld	a5,40(a5)
ffffffffc0204c62:	9782                	jalr	a5
ffffffffc0204c64:	842a                	mv	s0,a0
ffffffffc0204c66:	e515                	bnez	a0,ffffffffc0204c92 <file_open+0xc8>
ffffffffc0204c68:	6782                	ld	a5,0(sp)
ffffffffc0204c6a:	7722                	ld	a4,40(sp)
ffffffffc0204c6c:	6422                	ld	s0,8(sp)
ffffffffc0204c6e:	f398                	sd	a4,32(a5)
ffffffffc0204c70:	4394                	lw	a3,0(a5)
ffffffffc0204c72:	f780                	sd	s0,40(a5)
ffffffffc0204c74:	0147b423          	sd	s4,8(a5)
ffffffffc0204c78:	0137b823          	sd	s3,16(a5)
ffffffffc0204c7c:	4705                	li	a4,1
ffffffffc0204c7e:	02e69363          	bne	a3,a4,ffffffffc0204ca4 <file_open+0xda>
ffffffffc0204c82:	c00d                	beqz	s0,ffffffffc0204ca4 <file_open+0xda>
ffffffffc0204c84:	5b98                	lw	a4,48(a5)
ffffffffc0204c86:	4689                	li	a3,2
ffffffffc0204c88:	4f80                	lw	s0,24(a5)
ffffffffc0204c8a:	2705                	addiw	a4,a4,1
ffffffffc0204c8c:	c394                	sw	a3,0(a5)
ffffffffc0204c8e:	db98                	sw	a4,48(a5)
ffffffffc0204c90:	b751                	j	ffffffffc0204c14 <file_open+0x4a>
ffffffffc0204c92:	6522                	ld	a0,8(sp)
ffffffffc0204c94:	58c030ef          	jal	ra,ffffffffc0208220 <vfs_close>
ffffffffc0204c98:	6502                	ld	a0,0(sp)
ffffffffc0204c9a:	cb7ff0ef          	jal	ra,ffffffffc0204950 <fd_array_free>
ffffffffc0204c9e:	bf9d                	j	ffffffffc0204c14 <file_open+0x4a>
ffffffffc0204ca0:	5475                	li	s0,-3
ffffffffc0204ca2:	bf8d                	j	ffffffffc0204c14 <file_open+0x4a>
ffffffffc0204ca4:	d93ff0ef          	jal	ra,ffffffffc0204a36 <fd_array_open.part.0>
ffffffffc0204ca8:	00008697          	auipc	a3,0x8
ffffffffc0204cac:	7e868693          	addi	a3,a3,2024 # ffffffffc020d490 <default_pmm_manager+0xce0>
ffffffffc0204cb0:	00007617          	auipc	a2,0x7
ffffffffc0204cb4:	e6060613          	addi	a2,a2,-416 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204cb8:	0b500593          	li	a1,181
ffffffffc0204cbc:	00008517          	auipc	a0,0x8
ffffffffc0204cc0:	69c50513          	addi	a0,a0,1692 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc0204cc4:	fdafb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204cc8 <file_close>:
ffffffffc0204cc8:	04700713          	li	a4,71
ffffffffc0204ccc:	04a76563          	bltu	a4,a0,ffffffffc0204d16 <file_close+0x4e>
ffffffffc0204cd0:	00092717          	auipc	a4,0x92
ffffffffc0204cd4:	bf073703          	ld	a4,-1040(a4) # ffffffffc02968c0 <current>
ffffffffc0204cd8:	14873703          	ld	a4,328(a4)
ffffffffc0204cdc:	1141                	addi	sp,sp,-16
ffffffffc0204cde:	e406                	sd	ra,8(sp)
ffffffffc0204ce0:	cf0d                	beqz	a4,ffffffffc0204d1a <file_close+0x52>
ffffffffc0204ce2:	4b14                	lw	a3,16(a4)
ffffffffc0204ce4:	02d05b63          	blez	a3,ffffffffc0204d1a <file_close+0x52>
ffffffffc0204ce8:	6718                	ld	a4,8(a4)
ffffffffc0204cea:	87aa                	mv	a5,a0
ffffffffc0204cec:	050e                	slli	a0,a0,0x3
ffffffffc0204cee:	8d1d                	sub	a0,a0,a5
ffffffffc0204cf0:	050e                	slli	a0,a0,0x3
ffffffffc0204cf2:	953a                	add	a0,a0,a4
ffffffffc0204cf4:	4114                	lw	a3,0(a0)
ffffffffc0204cf6:	4709                	li	a4,2
ffffffffc0204cf8:	00e69b63          	bne	a3,a4,ffffffffc0204d0e <file_close+0x46>
ffffffffc0204cfc:	4d18                	lw	a4,24(a0)
ffffffffc0204cfe:	00f71863          	bne	a4,a5,ffffffffc0204d0e <file_close+0x46>
ffffffffc0204d02:	d75ff0ef          	jal	ra,ffffffffc0204a76 <fd_array_close>
ffffffffc0204d06:	60a2                	ld	ra,8(sp)
ffffffffc0204d08:	4501                	li	a0,0
ffffffffc0204d0a:	0141                	addi	sp,sp,16
ffffffffc0204d0c:	8082                	ret
ffffffffc0204d0e:	60a2                	ld	ra,8(sp)
ffffffffc0204d10:	5575                	li	a0,-3
ffffffffc0204d12:	0141                	addi	sp,sp,16
ffffffffc0204d14:	8082                	ret
ffffffffc0204d16:	5575                	li	a0,-3
ffffffffc0204d18:	8082                	ret
ffffffffc0204d1a:	b81ff0ef          	jal	ra,ffffffffc020489a <get_fd_array.part.0>

ffffffffc0204d1e <file_read>:
ffffffffc0204d1e:	715d                	addi	sp,sp,-80
ffffffffc0204d20:	e486                	sd	ra,72(sp)
ffffffffc0204d22:	e0a2                	sd	s0,64(sp)
ffffffffc0204d24:	fc26                	sd	s1,56(sp)
ffffffffc0204d26:	f84a                	sd	s2,48(sp)
ffffffffc0204d28:	f44e                	sd	s3,40(sp)
ffffffffc0204d2a:	f052                	sd	s4,32(sp)
ffffffffc0204d2c:	0006b023          	sd	zero,0(a3)
ffffffffc0204d30:	04700793          	li	a5,71
ffffffffc0204d34:	0aa7e463          	bltu	a5,a0,ffffffffc0204ddc <file_read+0xbe>
ffffffffc0204d38:	00092797          	auipc	a5,0x92
ffffffffc0204d3c:	b887b783          	ld	a5,-1144(a5) # ffffffffc02968c0 <current>
ffffffffc0204d40:	1487b783          	ld	a5,328(a5)
ffffffffc0204d44:	cfd1                	beqz	a5,ffffffffc0204de0 <file_read+0xc2>
ffffffffc0204d46:	4b98                	lw	a4,16(a5)
ffffffffc0204d48:	08e05c63          	blez	a4,ffffffffc0204de0 <file_read+0xc2>
ffffffffc0204d4c:	6780                	ld	s0,8(a5)
ffffffffc0204d4e:	00351793          	slli	a5,a0,0x3
ffffffffc0204d52:	8f89                	sub	a5,a5,a0
ffffffffc0204d54:	078e                	slli	a5,a5,0x3
ffffffffc0204d56:	943e                	add	s0,s0,a5
ffffffffc0204d58:	00042983          	lw	s3,0(s0)
ffffffffc0204d5c:	4789                	li	a5,2
ffffffffc0204d5e:	06f99f63          	bne	s3,a5,ffffffffc0204ddc <file_read+0xbe>
ffffffffc0204d62:	4c1c                	lw	a5,24(s0)
ffffffffc0204d64:	06a79c63          	bne	a5,a0,ffffffffc0204ddc <file_read+0xbe>
ffffffffc0204d68:	641c                	ld	a5,8(s0)
ffffffffc0204d6a:	cbad                	beqz	a5,ffffffffc0204ddc <file_read+0xbe>
ffffffffc0204d6c:	581c                	lw	a5,48(s0)
ffffffffc0204d6e:	8a36                	mv	s4,a3
ffffffffc0204d70:	7014                	ld	a3,32(s0)
ffffffffc0204d72:	2785                	addiw	a5,a5,1
ffffffffc0204d74:	850a                	mv	a0,sp
ffffffffc0204d76:	d81c                	sw	a5,48(s0)
ffffffffc0204d78:	792000ef          	jal	ra,ffffffffc020550a <iobuf_init>
ffffffffc0204d7c:	02843903          	ld	s2,40(s0)
ffffffffc0204d80:	84aa                	mv	s1,a0
ffffffffc0204d82:	06090163          	beqz	s2,ffffffffc0204de4 <file_read+0xc6>
ffffffffc0204d86:	07093783          	ld	a5,112(s2)
ffffffffc0204d8a:	cfa9                	beqz	a5,ffffffffc0204de4 <file_read+0xc6>
ffffffffc0204d8c:	6f9c                	ld	a5,24(a5)
ffffffffc0204d8e:	cbb9                	beqz	a5,ffffffffc0204de4 <file_read+0xc6>
ffffffffc0204d90:	00008597          	auipc	a1,0x8
ffffffffc0204d94:	7a858593          	addi	a1,a1,1960 # ffffffffc020d538 <default_pmm_manager+0xd88>
ffffffffc0204d98:	854a                	mv	a0,s2
ffffffffc0204d9a:	3fd020ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0204d9e:	07093783          	ld	a5,112(s2)
ffffffffc0204da2:	7408                	ld	a0,40(s0)
ffffffffc0204da4:	85a6                	mv	a1,s1
ffffffffc0204da6:	6f9c                	ld	a5,24(a5)
ffffffffc0204da8:	9782                	jalr	a5
ffffffffc0204daa:	689c                	ld	a5,16(s1)
ffffffffc0204dac:	6c94                	ld	a3,24(s1)
ffffffffc0204dae:	4018                	lw	a4,0(s0)
ffffffffc0204db0:	84aa                	mv	s1,a0
ffffffffc0204db2:	8f95                	sub	a5,a5,a3
ffffffffc0204db4:	03370063          	beq	a4,s3,ffffffffc0204dd4 <file_read+0xb6>
ffffffffc0204db8:	00fa3023          	sd	a5,0(s4) # 1000 <_binary_bin_swap_img_size-0x6d00>
ffffffffc0204dbc:	8522                	mv	a0,s0
ffffffffc0204dbe:	c0fff0ef          	jal	ra,ffffffffc02049cc <fd_array_release>
ffffffffc0204dc2:	60a6                	ld	ra,72(sp)
ffffffffc0204dc4:	6406                	ld	s0,64(sp)
ffffffffc0204dc6:	7942                	ld	s2,48(sp)
ffffffffc0204dc8:	79a2                	ld	s3,40(sp)
ffffffffc0204dca:	7a02                	ld	s4,32(sp)
ffffffffc0204dcc:	8526                	mv	a0,s1
ffffffffc0204dce:	74e2                	ld	s1,56(sp)
ffffffffc0204dd0:	6161                	addi	sp,sp,80
ffffffffc0204dd2:	8082                	ret
ffffffffc0204dd4:	7018                	ld	a4,32(s0)
ffffffffc0204dd6:	973e                	add	a4,a4,a5
ffffffffc0204dd8:	f018                	sd	a4,32(s0)
ffffffffc0204dda:	bff9                	j	ffffffffc0204db8 <file_read+0x9a>
ffffffffc0204ddc:	54f5                	li	s1,-3
ffffffffc0204dde:	b7d5                	j	ffffffffc0204dc2 <file_read+0xa4>
ffffffffc0204de0:	abbff0ef          	jal	ra,ffffffffc020489a <get_fd_array.part.0>
ffffffffc0204de4:	00008697          	auipc	a3,0x8
ffffffffc0204de8:	70468693          	addi	a3,a3,1796 # ffffffffc020d4e8 <default_pmm_manager+0xd38>
ffffffffc0204dec:	00007617          	auipc	a2,0x7
ffffffffc0204df0:	d2460613          	addi	a2,a2,-732 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204df4:	0de00593          	li	a1,222
ffffffffc0204df8:	00008517          	auipc	a0,0x8
ffffffffc0204dfc:	56050513          	addi	a0,a0,1376 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc0204e00:	e9efb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204e04 <file_write>:
ffffffffc0204e04:	715d                	addi	sp,sp,-80
ffffffffc0204e06:	e486                	sd	ra,72(sp)
ffffffffc0204e08:	e0a2                	sd	s0,64(sp)
ffffffffc0204e0a:	fc26                	sd	s1,56(sp)
ffffffffc0204e0c:	f84a                	sd	s2,48(sp)
ffffffffc0204e0e:	f44e                	sd	s3,40(sp)
ffffffffc0204e10:	f052                	sd	s4,32(sp)
ffffffffc0204e12:	0006b023          	sd	zero,0(a3)
ffffffffc0204e16:	04700793          	li	a5,71
ffffffffc0204e1a:	0aa7e463          	bltu	a5,a0,ffffffffc0204ec2 <file_write+0xbe>
ffffffffc0204e1e:	00092797          	auipc	a5,0x92
ffffffffc0204e22:	aa27b783          	ld	a5,-1374(a5) # ffffffffc02968c0 <current>
ffffffffc0204e26:	1487b783          	ld	a5,328(a5)
ffffffffc0204e2a:	cfd1                	beqz	a5,ffffffffc0204ec6 <file_write+0xc2>
ffffffffc0204e2c:	4b98                	lw	a4,16(a5)
ffffffffc0204e2e:	08e05c63          	blez	a4,ffffffffc0204ec6 <file_write+0xc2>
ffffffffc0204e32:	6780                	ld	s0,8(a5)
ffffffffc0204e34:	00351793          	slli	a5,a0,0x3
ffffffffc0204e38:	8f89                	sub	a5,a5,a0
ffffffffc0204e3a:	078e                	slli	a5,a5,0x3
ffffffffc0204e3c:	943e                	add	s0,s0,a5
ffffffffc0204e3e:	00042983          	lw	s3,0(s0)
ffffffffc0204e42:	4789                	li	a5,2
ffffffffc0204e44:	06f99f63          	bne	s3,a5,ffffffffc0204ec2 <file_write+0xbe>
ffffffffc0204e48:	4c1c                	lw	a5,24(s0)
ffffffffc0204e4a:	06a79c63          	bne	a5,a0,ffffffffc0204ec2 <file_write+0xbe>
ffffffffc0204e4e:	681c                	ld	a5,16(s0)
ffffffffc0204e50:	cbad                	beqz	a5,ffffffffc0204ec2 <file_write+0xbe>
ffffffffc0204e52:	581c                	lw	a5,48(s0)
ffffffffc0204e54:	8a36                	mv	s4,a3
ffffffffc0204e56:	7014                	ld	a3,32(s0)
ffffffffc0204e58:	2785                	addiw	a5,a5,1
ffffffffc0204e5a:	850a                	mv	a0,sp
ffffffffc0204e5c:	d81c                	sw	a5,48(s0)
ffffffffc0204e5e:	6ac000ef          	jal	ra,ffffffffc020550a <iobuf_init>
ffffffffc0204e62:	02843903          	ld	s2,40(s0)
ffffffffc0204e66:	84aa                	mv	s1,a0
ffffffffc0204e68:	06090163          	beqz	s2,ffffffffc0204eca <file_write+0xc6>
ffffffffc0204e6c:	07093783          	ld	a5,112(s2)
ffffffffc0204e70:	cfa9                	beqz	a5,ffffffffc0204eca <file_write+0xc6>
ffffffffc0204e72:	739c                	ld	a5,32(a5)
ffffffffc0204e74:	cbb9                	beqz	a5,ffffffffc0204eca <file_write+0xc6>
ffffffffc0204e76:	00008597          	auipc	a1,0x8
ffffffffc0204e7a:	71a58593          	addi	a1,a1,1818 # ffffffffc020d590 <default_pmm_manager+0xde0>
ffffffffc0204e7e:	854a                	mv	a0,s2
ffffffffc0204e80:	317020ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0204e84:	07093783          	ld	a5,112(s2)
ffffffffc0204e88:	7408                	ld	a0,40(s0)
ffffffffc0204e8a:	85a6                	mv	a1,s1
ffffffffc0204e8c:	739c                	ld	a5,32(a5)
ffffffffc0204e8e:	9782                	jalr	a5
ffffffffc0204e90:	689c                	ld	a5,16(s1)
ffffffffc0204e92:	6c94                	ld	a3,24(s1)
ffffffffc0204e94:	4018                	lw	a4,0(s0)
ffffffffc0204e96:	84aa                	mv	s1,a0
ffffffffc0204e98:	8f95                	sub	a5,a5,a3
ffffffffc0204e9a:	03370063          	beq	a4,s3,ffffffffc0204eba <file_write+0xb6>
ffffffffc0204e9e:	00fa3023          	sd	a5,0(s4)
ffffffffc0204ea2:	8522                	mv	a0,s0
ffffffffc0204ea4:	b29ff0ef          	jal	ra,ffffffffc02049cc <fd_array_release>
ffffffffc0204ea8:	60a6                	ld	ra,72(sp)
ffffffffc0204eaa:	6406                	ld	s0,64(sp)
ffffffffc0204eac:	7942                	ld	s2,48(sp)
ffffffffc0204eae:	79a2                	ld	s3,40(sp)
ffffffffc0204eb0:	7a02                	ld	s4,32(sp)
ffffffffc0204eb2:	8526                	mv	a0,s1
ffffffffc0204eb4:	74e2                	ld	s1,56(sp)
ffffffffc0204eb6:	6161                	addi	sp,sp,80
ffffffffc0204eb8:	8082                	ret
ffffffffc0204eba:	7018                	ld	a4,32(s0)
ffffffffc0204ebc:	973e                	add	a4,a4,a5
ffffffffc0204ebe:	f018                	sd	a4,32(s0)
ffffffffc0204ec0:	bff9                	j	ffffffffc0204e9e <file_write+0x9a>
ffffffffc0204ec2:	54f5                	li	s1,-3
ffffffffc0204ec4:	b7d5                	j	ffffffffc0204ea8 <file_write+0xa4>
ffffffffc0204ec6:	9d5ff0ef          	jal	ra,ffffffffc020489a <get_fd_array.part.0>
ffffffffc0204eca:	00008697          	auipc	a3,0x8
ffffffffc0204ece:	67668693          	addi	a3,a3,1654 # ffffffffc020d540 <default_pmm_manager+0xd90>
ffffffffc0204ed2:	00007617          	auipc	a2,0x7
ffffffffc0204ed6:	c3e60613          	addi	a2,a2,-962 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204eda:	0f800593          	li	a1,248
ffffffffc0204ede:	00008517          	auipc	a0,0x8
ffffffffc0204ee2:	47a50513          	addi	a0,a0,1146 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc0204ee6:	db8fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204eea <file_seek>:
ffffffffc0204eea:	7139                	addi	sp,sp,-64
ffffffffc0204eec:	fc06                	sd	ra,56(sp)
ffffffffc0204eee:	f822                	sd	s0,48(sp)
ffffffffc0204ef0:	f426                	sd	s1,40(sp)
ffffffffc0204ef2:	f04a                	sd	s2,32(sp)
ffffffffc0204ef4:	04700793          	li	a5,71
ffffffffc0204ef8:	08a7e863          	bltu	a5,a0,ffffffffc0204f88 <file_seek+0x9e>
ffffffffc0204efc:	00092797          	auipc	a5,0x92
ffffffffc0204f00:	9c47b783          	ld	a5,-1596(a5) # ffffffffc02968c0 <current>
ffffffffc0204f04:	1487b783          	ld	a5,328(a5)
ffffffffc0204f08:	cfdd                	beqz	a5,ffffffffc0204fc6 <file_seek+0xdc>
ffffffffc0204f0a:	4b98                	lw	a4,16(a5)
ffffffffc0204f0c:	0ae05d63          	blez	a4,ffffffffc0204fc6 <file_seek+0xdc>
ffffffffc0204f10:	6780                	ld	s0,8(a5)
ffffffffc0204f12:	00351793          	slli	a5,a0,0x3
ffffffffc0204f16:	8f89                	sub	a5,a5,a0
ffffffffc0204f18:	078e                	slli	a5,a5,0x3
ffffffffc0204f1a:	943e                	add	s0,s0,a5
ffffffffc0204f1c:	4018                	lw	a4,0(s0)
ffffffffc0204f1e:	4789                	li	a5,2
ffffffffc0204f20:	06f71463          	bne	a4,a5,ffffffffc0204f88 <file_seek+0x9e>
ffffffffc0204f24:	4c1c                	lw	a5,24(s0)
ffffffffc0204f26:	06a79163          	bne	a5,a0,ffffffffc0204f88 <file_seek+0x9e>
ffffffffc0204f2a:	581c                	lw	a5,48(s0)
ffffffffc0204f2c:	4685                	li	a3,1
ffffffffc0204f2e:	892e                	mv	s2,a1
ffffffffc0204f30:	2785                	addiw	a5,a5,1
ffffffffc0204f32:	d81c                	sw	a5,48(s0)
ffffffffc0204f34:	02d60063          	beq	a2,a3,ffffffffc0204f54 <file_seek+0x6a>
ffffffffc0204f38:	06e60063          	beq	a2,a4,ffffffffc0204f98 <file_seek+0xae>
ffffffffc0204f3c:	54f5                	li	s1,-3
ffffffffc0204f3e:	ce11                	beqz	a2,ffffffffc0204f5a <file_seek+0x70>
ffffffffc0204f40:	8522                	mv	a0,s0
ffffffffc0204f42:	a8bff0ef          	jal	ra,ffffffffc02049cc <fd_array_release>
ffffffffc0204f46:	70e2                	ld	ra,56(sp)
ffffffffc0204f48:	7442                	ld	s0,48(sp)
ffffffffc0204f4a:	7902                	ld	s2,32(sp)
ffffffffc0204f4c:	8526                	mv	a0,s1
ffffffffc0204f4e:	74a2                	ld	s1,40(sp)
ffffffffc0204f50:	6121                	addi	sp,sp,64
ffffffffc0204f52:	8082                	ret
ffffffffc0204f54:	701c                	ld	a5,32(s0)
ffffffffc0204f56:	00f58933          	add	s2,a1,a5
ffffffffc0204f5a:	7404                	ld	s1,40(s0)
ffffffffc0204f5c:	c4bd                	beqz	s1,ffffffffc0204fca <file_seek+0xe0>
ffffffffc0204f5e:	78bc                	ld	a5,112(s1)
ffffffffc0204f60:	c7ad                	beqz	a5,ffffffffc0204fca <file_seek+0xe0>
ffffffffc0204f62:	6fbc                	ld	a5,88(a5)
ffffffffc0204f64:	c3bd                	beqz	a5,ffffffffc0204fca <file_seek+0xe0>
ffffffffc0204f66:	8526                	mv	a0,s1
ffffffffc0204f68:	00008597          	auipc	a1,0x8
ffffffffc0204f6c:	68058593          	addi	a1,a1,1664 # ffffffffc020d5e8 <default_pmm_manager+0xe38>
ffffffffc0204f70:	227020ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0204f74:	78bc                	ld	a5,112(s1)
ffffffffc0204f76:	7408                	ld	a0,40(s0)
ffffffffc0204f78:	85ca                	mv	a1,s2
ffffffffc0204f7a:	6fbc                	ld	a5,88(a5)
ffffffffc0204f7c:	9782                	jalr	a5
ffffffffc0204f7e:	84aa                	mv	s1,a0
ffffffffc0204f80:	f161                	bnez	a0,ffffffffc0204f40 <file_seek+0x56>
ffffffffc0204f82:	03243023          	sd	s2,32(s0)
ffffffffc0204f86:	bf6d                	j	ffffffffc0204f40 <file_seek+0x56>
ffffffffc0204f88:	70e2                	ld	ra,56(sp)
ffffffffc0204f8a:	7442                	ld	s0,48(sp)
ffffffffc0204f8c:	54f5                	li	s1,-3
ffffffffc0204f8e:	7902                	ld	s2,32(sp)
ffffffffc0204f90:	8526                	mv	a0,s1
ffffffffc0204f92:	74a2                	ld	s1,40(sp)
ffffffffc0204f94:	6121                	addi	sp,sp,64
ffffffffc0204f96:	8082                	ret
ffffffffc0204f98:	7404                	ld	s1,40(s0)
ffffffffc0204f9a:	c8a1                	beqz	s1,ffffffffc0204fea <file_seek+0x100>
ffffffffc0204f9c:	78bc                	ld	a5,112(s1)
ffffffffc0204f9e:	c7b1                	beqz	a5,ffffffffc0204fea <file_seek+0x100>
ffffffffc0204fa0:	779c                	ld	a5,40(a5)
ffffffffc0204fa2:	c7a1                	beqz	a5,ffffffffc0204fea <file_seek+0x100>
ffffffffc0204fa4:	8526                	mv	a0,s1
ffffffffc0204fa6:	00008597          	auipc	a1,0x8
ffffffffc0204faa:	53a58593          	addi	a1,a1,1338 # ffffffffc020d4e0 <default_pmm_manager+0xd30>
ffffffffc0204fae:	1e9020ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0204fb2:	78bc                	ld	a5,112(s1)
ffffffffc0204fb4:	7408                	ld	a0,40(s0)
ffffffffc0204fb6:	858a                	mv	a1,sp
ffffffffc0204fb8:	779c                	ld	a5,40(a5)
ffffffffc0204fba:	9782                	jalr	a5
ffffffffc0204fbc:	84aa                	mv	s1,a0
ffffffffc0204fbe:	f149                	bnez	a0,ffffffffc0204f40 <file_seek+0x56>
ffffffffc0204fc0:	67e2                	ld	a5,24(sp)
ffffffffc0204fc2:	993e                	add	s2,s2,a5
ffffffffc0204fc4:	bf59                	j	ffffffffc0204f5a <file_seek+0x70>
ffffffffc0204fc6:	8d5ff0ef          	jal	ra,ffffffffc020489a <get_fd_array.part.0>
ffffffffc0204fca:	00008697          	auipc	a3,0x8
ffffffffc0204fce:	5ce68693          	addi	a3,a3,1486 # ffffffffc020d598 <default_pmm_manager+0xde8>
ffffffffc0204fd2:	00007617          	auipc	a2,0x7
ffffffffc0204fd6:	b3e60613          	addi	a2,a2,-1218 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204fda:	11a00593          	li	a1,282
ffffffffc0204fde:	00008517          	auipc	a0,0x8
ffffffffc0204fe2:	37a50513          	addi	a0,a0,890 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc0204fe6:	cb8fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204fea:	00008697          	auipc	a3,0x8
ffffffffc0204fee:	4a668693          	addi	a3,a3,1190 # ffffffffc020d490 <default_pmm_manager+0xce0>
ffffffffc0204ff2:	00007617          	auipc	a2,0x7
ffffffffc0204ff6:	b1e60613          	addi	a2,a2,-1250 # ffffffffc020bb10 <commands+0x210>
ffffffffc0204ffa:	11200593          	li	a1,274
ffffffffc0204ffe:	00008517          	auipc	a0,0x8
ffffffffc0205002:	35a50513          	addi	a0,a0,858 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc0205006:	c98fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020500a <file_fstat>:
ffffffffc020500a:	1101                	addi	sp,sp,-32
ffffffffc020500c:	ec06                	sd	ra,24(sp)
ffffffffc020500e:	e822                	sd	s0,16(sp)
ffffffffc0205010:	e426                	sd	s1,8(sp)
ffffffffc0205012:	e04a                	sd	s2,0(sp)
ffffffffc0205014:	04700793          	li	a5,71
ffffffffc0205018:	06a7ef63          	bltu	a5,a0,ffffffffc0205096 <file_fstat+0x8c>
ffffffffc020501c:	00092797          	auipc	a5,0x92
ffffffffc0205020:	8a47b783          	ld	a5,-1884(a5) # ffffffffc02968c0 <current>
ffffffffc0205024:	1487b783          	ld	a5,328(a5)
ffffffffc0205028:	cfd9                	beqz	a5,ffffffffc02050c6 <file_fstat+0xbc>
ffffffffc020502a:	4b98                	lw	a4,16(a5)
ffffffffc020502c:	08e05d63          	blez	a4,ffffffffc02050c6 <file_fstat+0xbc>
ffffffffc0205030:	6780                	ld	s0,8(a5)
ffffffffc0205032:	00351793          	slli	a5,a0,0x3
ffffffffc0205036:	8f89                	sub	a5,a5,a0
ffffffffc0205038:	078e                	slli	a5,a5,0x3
ffffffffc020503a:	943e                	add	s0,s0,a5
ffffffffc020503c:	4018                	lw	a4,0(s0)
ffffffffc020503e:	4789                	li	a5,2
ffffffffc0205040:	04f71b63          	bne	a4,a5,ffffffffc0205096 <file_fstat+0x8c>
ffffffffc0205044:	4c1c                	lw	a5,24(s0)
ffffffffc0205046:	04a79863          	bne	a5,a0,ffffffffc0205096 <file_fstat+0x8c>
ffffffffc020504a:	581c                	lw	a5,48(s0)
ffffffffc020504c:	02843903          	ld	s2,40(s0)
ffffffffc0205050:	2785                	addiw	a5,a5,1
ffffffffc0205052:	d81c                	sw	a5,48(s0)
ffffffffc0205054:	04090963          	beqz	s2,ffffffffc02050a6 <file_fstat+0x9c>
ffffffffc0205058:	07093783          	ld	a5,112(s2)
ffffffffc020505c:	c7a9                	beqz	a5,ffffffffc02050a6 <file_fstat+0x9c>
ffffffffc020505e:	779c                	ld	a5,40(a5)
ffffffffc0205060:	c3b9                	beqz	a5,ffffffffc02050a6 <file_fstat+0x9c>
ffffffffc0205062:	84ae                	mv	s1,a1
ffffffffc0205064:	854a                	mv	a0,s2
ffffffffc0205066:	00008597          	auipc	a1,0x8
ffffffffc020506a:	47a58593          	addi	a1,a1,1146 # ffffffffc020d4e0 <default_pmm_manager+0xd30>
ffffffffc020506e:	129020ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0205072:	07093783          	ld	a5,112(s2)
ffffffffc0205076:	7408                	ld	a0,40(s0)
ffffffffc0205078:	85a6                	mv	a1,s1
ffffffffc020507a:	779c                	ld	a5,40(a5)
ffffffffc020507c:	9782                	jalr	a5
ffffffffc020507e:	87aa                	mv	a5,a0
ffffffffc0205080:	8522                	mv	a0,s0
ffffffffc0205082:	843e                	mv	s0,a5
ffffffffc0205084:	949ff0ef          	jal	ra,ffffffffc02049cc <fd_array_release>
ffffffffc0205088:	60e2                	ld	ra,24(sp)
ffffffffc020508a:	8522                	mv	a0,s0
ffffffffc020508c:	6442                	ld	s0,16(sp)
ffffffffc020508e:	64a2                	ld	s1,8(sp)
ffffffffc0205090:	6902                	ld	s2,0(sp)
ffffffffc0205092:	6105                	addi	sp,sp,32
ffffffffc0205094:	8082                	ret
ffffffffc0205096:	5475                	li	s0,-3
ffffffffc0205098:	60e2                	ld	ra,24(sp)
ffffffffc020509a:	8522                	mv	a0,s0
ffffffffc020509c:	6442                	ld	s0,16(sp)
ffffffffc020509e:	64a2                	ld	s1,8(sp)
ffffffffc02050a0:	6902                	ld	s2,0(sp)
ffffffffc02050a2:	6105                	addi	sp,sp,32
ffffffffc02050a4:	8082                	ret
ffffffffc02050a6:	00008697          	auipc	a3,0x8
ffffffffc02050aa:	3ea68693          	addi	a3,a3,1002 # ffffffffc020d490 <default_pmm_manager+0xce0>
ffffffffc02050ae:	00007617          	auipc	a2,0x7
ffffffffc02050b2:	a6260613          	addi	a2,a2,-1438 # ffffffffc020bb10 <commands+0x210>
ffffffffc02050b6:	12c00593          	li	a1,300
ffffffffc02050ba:	00008517          	auipc	a0,0x8
ffffffffc02050be:	29e50513          	addi	a0,a0,670 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc02050c2:	bdcfb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02050c6:	fd4ff0ef          	jal	ra,ffffffffc020489a <get_fd_array.part.0>

ffffffffc02050ca <file_fsync>:
ffffffffc02050ca:	1101                	addi	sp,sp,-32
ffffffffc02050cc:	ec06                	sd	ra,24(sp)
ffffffffc02050ce:	e822                	sd	s0,16(sp)
ffffffffc02050d0:	e426                	sd	s1,8(sp)
ffffffffc02050d2:	04700793          	li	a5,71
ffffffffc02050d6:	06a7e863          	bltu	a5,a0,ffffffffc0205146 <file_fsync+0x7c>
ffffffffc02050da:	00091797          	auipc	a5,0x91
ffffffffc02050de:	7e67b783          	ld	a5,2022(a5) # ffffffffc02968c0 <current>
ffffffffc02050e2:	1487b783          	ld	a5,328(a5)
ffffffffc02050e6:	c7d9                	beqz	a5,ffffffffc0205174 <file_fsync+0xaa>
ffffffffc02050e8:	4b98                	lw	a4,16(a5)
ffffffffc02050ea:	08e05563          	blez	a4,ffffffffc0205174 <file_fsync+0xaa>
ffffffffc02050ee:	6780                	ld	s0,8(a5)
ffffffffc02050f0:	00351793          	slli	a5,a0,0x3
ffffffffc02050f4:	8f89                	sub	a5,a5,a0
ffffffffc02050f6:	078e                	slli	a5,a5,0x3
ffffffffc02050f8:	943e                	add	s0,s0,a5
ffffffffc02050fa:	4018                	lw	a4,0(s0)
ffffffffc02050fc:	4789                	li	a5,2
ffffffffc02050fe:	04f71463          	bne	a4,a5,ffffffffc0205146 <file_fsync+0x7c>
ffffffffc0205102:	4c1c                	lw	a5,24(s0)
ffffffffc0205104:	04a79163          	bne	a5,a0,ffffffffc0205146 <file_fsync+0x7c>
ffffffffc0205108:	581c                	lw	a5,48(s0)
ffffffffc020510a:	7404                	ld	s1,40(s0)
ffffffffc020510c:	2785                	addiw	a5,a5,1
ffffffffc020510e:	d81c                	sw	a5,48(s0)
ffffffffc0205110:	c0b1                	beqz	s1,ffffffffc0205154 <file_fsync+0x8a>
ffffffffc0205112:	78bc                	ld	a5,112(s1)
ffffffffc0205114:	c3a1                	beqz	a5,ffffffffc0205154 <file_fsync+0x8a>
ffffffffc0205116:	7b9c                	ld	a5,48(a5)
ffffffffc0205118:	cf95                	beqz	a5,ffffffffc0205154 <file_fsync+0x8a>
ffffffffc020511a:	00008597          	auipc	a1,0x8
ffffffffc020511e:	52658593          	addi	a1,a1,1318 # ffffffffc020d640 <default_pmm_manager+0xe90>
ffffffffc0205122:	8526                	mv	a0,s1
ffffffffc0205124:	073020ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0205128:	78bc                	ld	a5,112(s1)
ffffffffc020512a:	7408                	ld	a0,40(s0)
ffffffffc020512c:	7b9c                	ld	a5,48(a5)
ffffffffc020512e:	9782                	jalr	a5
ffffffffc0205130:	87aa                	mv	a5,a0
ffffffffc0205132:	8522                	mv	a0,s0
ffffffffc0205134:	843e                	mv	s0,a5
ffffffffc0205136:	897ff0ef          	jal	ra,ffffffffc02049cc <fd_array_release>
ffffffffc020513a:	60e2                	ld	ra,24(sp)
ffffffffc020513c:	8522                	mv	a0,s0
ffffffffc020513e:	6442                	ld	s0,16(sp)
ffffffffc0205140:	64a2                	ld	s1,8(sp)
ffffffffc0205142:	6105                	addi	sp,sp,32
ffffffffc0205144:	8082                	ret
ffffffffc0205146:	5475                	li	s0,-3
ffffffffc0205148:	60e2                	ld	ra,24(sp)
ffffffffc020514a:	8522                	mv	a0,s0
ffffffffc020514c:	6442                	ld	s0,16(sp)
ffffffffc020514e:	64a2                	ld	s1,8(sp)
ffffffffc0205150:	6105                	addi	sp,sp,32
ffffffffc0205152:	8082                	ret
ffffffffc0205154:	00008697          	auipc	a3,0x8
ffffffffc0205158:	49c68693          	addi	a3,a3,1180 # ffffffffc020d5f0 <default_pmm_manager+0xe40>
ffffffffc020515c:	00007617          	auipc	a2,0x7
ffffffffc0205160:	9b460613          	addi	a2,a2,-1612 # ffffffffc020bb10 <commands+0x210>
ffffffffc0205164:	13a00593          	li	a1,314
ffffffffc0205168:	00008517          	auipc	a0,0x8
ffffffffc020516c:	1f050513          	addi	a0,a0,496 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc0205170:	b2efb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0205174:	f26ff0ef          	jal	ra,ffffffffc020489a <get_fd_array.part.0>

ffffffffc0205178 <file_getdirentry>:
ffffffffc0205178:	715d                	addi	sp,sp,-80
ffffffffc020517a:	e486                	sd	ra,72(sp)
ffffffffc020517c:	e0a2                	sd	s0,64(sp)
ffffffffc020517e:	fc26                	sd	s1,56(sp)
ffffffffc0205180:	f84a                	sd	s2,48(sp)
ffffffffc0205182:	f44e                	sd	s3,40(sp)
ffffffffc0205184:	04700793          	li	a5,71
ffffffffc0205188:	0aa7e063          	bltu	a5,a0,ffffffffc0205228 <file_getdirentry+0xb0>
ffffffffc020518c:	00091797          	auipc	a5,0x91
ffffffffc0205190:	7347b783          	ld	a5,1844(a5) # ffffffffc02968c0 <current>
ffffffffc0205194:	1487b783          	ld	a5,328(a5)
ffffffffc0205198:	c3e9                	beqz	a5,ffffffffc020525a <file_getdirentry+0xe2>
ffffffffc020519a:	4b98                	lw	a4,16(a5)
ffffffffc020519c:	0ae05f63          	blez	a4,ffffffffc020525a <file_getdirentry+0xe2>
ffffffffc02051a0:	6780                	ld	s0,8(a5)
ffffffffc02051a2:	00351793          	slli	a5,a0,0x3
ffffffffc02051a6:	8f89                	sub	a5,a5,a0
ffffffffc02051a8:	078e                	slli	a5,a5,0x3
ffffffffc02051aa:	943e                	add	s0,s0,a5
ffffffffc02051ac:	4018                	lw	a4,0(s0)
ffffffffc02051ae:	4789                	li	a5,2
ffffffffc02051b0:	06f71c63          	bne	a4,a5,ffffffffc0205228 <file_getdirentry+0xb0>
ffffffffc02051b4:	4c1c                	lw	a5,24(s0)
ffffffffc02051b6:	06a79963          	bne	a5,a0,ffffffffc0205228 <file_getdirentry+0xb0>
ffffffffc02051ba:	581c                	lw	a5,48(s0)
ffffffffc02051bc:	6194                	ld	a3,0(a1)
ffffffffc02051be:	84ae                	mv	s1,a1
ffffffffc02051c0:	2785                	addiw	a5,a5,1
ffffffffc02051c2:	10000613          	li	a2,256
ffffffffc02051c6:	d81c                	sw	a5,48(s0)
ffffffffc02051c8:	05a1                	addi	a1,a1,8
ffffffffc02051ca:	850a                	mv	a0,sp
ffffffffc02051cc:	33e000ef          	jal	ra,ffffffffc020550a <iobuf_init>
ffffffffc02051d0:	02843983          	ld	s3,40(s0)
ffffffffc02051d4:	892a                	mv	s2,a0
ffffffffc02051d6:	06098263          	beqz	s3,ffffffffc020523a <file_getdirentry+0xc2>
ffffffffc02051da:	0709b783          	ld	a5,112(s3) # 1070 <_binary_bin_swap_img_size-0x6c90>
ffffffffc02051de:	cfb1                	beqz	a5,ffffffffc020523a <file_getdirentry+0xc2>
ffffffffc02051e0:	63bc                	ld	a5,64(a5)
ffffffffc02051e2:	cfa1                	beqz	a5,ffffffffc020523a <file_getdirentry+0xc2>
ffffffffc02051e4:	854e                	mv	a0,s3
ffffffffc02051e6:	00008597          	auipc	a1,0x8
ffffffffc02051ea:	4ba58593          	addi	a1,a1,1210 # ffffffffc020d6a0 <default_pmm_manager+0xef0>
ffffffffc02051ee:	7a8020ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc02051f2:	0709b783          	ld	a5,112(s3)
ffffffffc02051f6:	7408                	ld	a0,40(s0)
ffffffffc02051f8:	85ca                	mv	a1,s2
ffffffffc02051fa:	63bc                	ld	a5,64(a5)
ffffffffc02051fc:	9782                	jalr	a5
ffffffffc02051fe:	89aa                	mv	s3,a0
ffffffffc0205200:	e909                	bnez	a0,ffffffffc0205212 <file_getdirentry+0x9a>
ffffffffc0205202:	609c                	ld	a5,0(s1)
ffffffffc0205204:	01093683          	ld	a3,16(s2)
ffffffffc0205208:	01893703          	ld	a4,24(s2)
ffffffffc020520c:	97b6                	add	a5,a5,a3
ffffffffc020520e:	8f99                	sub	a5,a5,a4
ffffffffc0205210:	e09c                	sd	a5,0(s1)
ffffffffc0205212:	8522                	mv	a0,s0
ffffffffc0205214:	fb8ff0ef          	jal	ra,ffffffffc02049cc <fd_array_release>
ffffffffc0205218:	60a6                	ld	ra,72(sp)
ffffffffc020521a:	6406                	ld	s0,64(sp)
ffffffffc020521c:	74e2                	ld	s1,56(sp)
ffffffffc020521e:	7942                	ld	s2,48(sp)
ffffffffc0205220:	854e                	mv	a0,s3
ffffffffc0205222:	79a2                	ld	s3,40(sp)
ffffffffc0205224:	6161                	addi	sp,sp,80
ffffffffc0205226:	8082                	ret
ffffffffc0205228:	60a6                	ld	ra,72(sp)
ffffffffc020522a:	6406                	ld	s0,64(sp)
ffffffffc020522c:	59f5                	li	s3,-3
ffffffffc020522e:	74e2                	ld	s1,56(sp)
ffffffffc0205230:	7942                	ld	s2,48(sp)
ffffffffc0205232:	854e                	mv	a0,s3
ffffffffc0205234:	79a2                	ld	s3,40(sp)
ffffffffc0205236:	6161                	addi	sp,sp,80
ffffffffc0205238:	8082                	ret
ffffffffc020523a:	00008697          	auipc	a3,0x8
ffffffffc020523e:	40e68693          	addi	a3,a3,1038 # ffffffffc020d648 <default_pmm_manager+0xe98>
ffffffffc0205242:	00007617          	auipc	a2,0x7
ffffffffc0205246:	8ce60613          	addi	a2,a2,-1842 # ffffffffc020bb10 <commands+0x210>
ffffffffc020524a:	14a00593          	li	a1,330
ffffffffc020524e:	00008517          	auipc	a0,0x8
ffffffffc0205252:	10a50513          	addi	a0,a0,266 # ffffffffc020d358 <default_pmm_manager+0xba8>
ffffffffc0205256:	a48fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020525a:	e40ff0ef          	jal	ra,ffffffffc020489a <get_fd_array.part.0>

ffffffffc020525e <file_dup>:
ffffffffc020525e:	04700713          	li	a4,71
ffffffffc0205262:	06a76463          	bltu	a4,a0,ffffffffc02052ca <file_dup+0x6c>
ffffffffc0205266:	00091717          	auipc	a4,0x91
ffffffffc020526a:	65a73703          	ld	a4,1626(a4) # ffffffffc02968c0 <current>
ffffffffc020526e:	14873703          	ld	a4,328(a4)
ffffffffc0205272:	1101                	addi	sp,sp,-32
ffffffffc0205274:	ec06                	sd	ra,24(sp)
ffffffffc0205276:	e822                	sd	s0,16(sp)
ffffffffc0205278:	cb39                	beqz	a4,ffffffffc02052ce <file_dup+0x70>
ffffffffc020527a:	4b14                	lw	a3,16(a4)
ffffffffc020527c:	04d05963          	blez	a3,ffffffffc02052ce <file_dup+0x70>
ffffffffc0205280:	6700                	ld	s0,8(a4)
ffffffffc0205282:	00351713          	slli	a4,a0,0x3
ffffffffc0205286:	8f09                	sub	a4,a4,a0
ffffffffc0205288:	070e                	slli	a4,a4,0x3
ffffffffc020528a:	943a                	add	s0,s0,a4
ffffffffc020528c:	4014                	lw	a3,0(s0)
ffffffffc020528e:	4709                	li	a4,2
ffffffffc0205290:	02e69863          	bne	a3,a4,ffffffffc02052c0 <file_dup+0x62>
ffffffffc0205294:	4c18                	lw	a4,24(s0)
ffffffffc0205296:	02a71563          	bne	a4,a0,ffffffffc02052c0 <file_dup+0x62>
ffffffffc020529a:	852e                	mv	a0,a1
ffffffffc020529c:	002c                	addi	a1,sp,8
ffffffffc020529e:	e1eff0ef          	jal	ra,ffffffffc02048bc <fd_array_alloc>
ffffffffc02052a2:	c509                	beqz	a0,ffffffffc02052ac <file_dup+0x4e>
ffffffffc02052a4:	60e2                	ld	ra,24(sp)
ffffffffc02052a6:	6442                	ld	s0,16(sp)
ffffffffc02052a8:	6105                	addi	sp,sp,32
ffffffffc02052aa:	8082                	ret
ffffffffc02052ac:	6522                	ld	a0,8(sp)
ffffffffc02052ae:	85a2                	mv	a1,s0
ffffffffc02052b0:	845ff0ef          	jal	ra,ffffffffc0204af4 <fd_array_dup>
ffffffffc02052b4:	67a2                	ld	a5,8(sp)
ffffffffc02052b6:	60e2                	ld	ra,24(sp)
ffffffffc02052b8:	6442                	ld	s0,16(sp)
ffffffffc02052ba:	4f88                	lw	a0,24(a5)
ffffffffc02052bc:	6105                	addi	sp,sp,32
ffffffffc02052be:	8082                	ret
ffffffffc02052c0:	60e2                	ld	ra,24(sp)
ffffffffc02052c2:	6442                	ld	s0,16(sp)
ffffffffc02052c4:	5575                	li	a0,-3
ffffffffc02052c6:	6105                	addi	sp,sp,32
ffffffffc02052c8:	8082                	ret
ffffffffc02052ca:	5575                	li	a0,-3
ffffffffc02052cc:	8082                	ret
ffffffffc02052ce:	dccff0ef          	jal	ra,ffffffffc020489a <get_fd_array.part.0>

ffffffffc02052d2 <fs_init>:
ffffffffc02052d2:	1141                	addi	sp,sp,-16
ffffffffc02052d4:	e406                	sd	ra,8(sp)
ffffffffc02052d6:	0df020ef          	jal	ra,ffffffffc0207bb4 <vfs_init>
ffffffffc02052da:	5b6030ef          	jal	ra,ffffffffc0208890 <dev_init>
ffffffffc02052de:	60a2                	ld	ra,8(sp)
ffffffffc02052e0:	0141                	addi	sp,sp,16
ffffffffc02052e2:	7070306f          	j	ffffffffc02091e8 <sfs_init>

ffffffffc02052e6 <fs_cleanup>:
ffffffffc02052e6:	3210206f          	j	ffffffffc0207e06 <vfs_cleanup>

ffffffffc02052ea <lock_files>:
ffffffffc02052ea:	0561                	addi	a0,a0,24
ffffffffc02052ec:	ba0ff06f          	j	ffffffffc020468c <down>

ffffffffc02052f0 <unlock_files>:
ffffffffc02052f0:	0561                	addi	a0,a0,24
ffffffffc02052f2:	b96ff06f          	j	ffffffffc0204688 <up>

ffffffffc02052f6 <files_create>:
ffffffffc02052f6:	1141                	addi	sp,sp,-16
ffffffffc02052f8:	6505                	lui	a0,0x1
ffffffffc02052fa:	e022                	sd	s0,0(sp)
ffffffffc02052fc:	e406                	sd	ra,8(sp)
ffffffffc02052fe:	dadfc0ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc0205302:	842a                	mv	s0,a0
ffffffffc0205304:	cd19                	beqz	a0,ffffffffc0205322 <files_create+0x2c>
ffffffffc0205306:	03050793          	addi	a5,a0,48 # 1030 <_binary_bin_swap_img_size-0x6cd0>
ffffffffc020530a:	00043023          	sd	zero,0(s0)
ffffffffc020530e:	0561                	addi	a0,a0,24
ffffffffc0205310:	e41c                	sd	a5,8(s0)
ffffffffc0205312:	00042823          	sw	zero,16(s0)
ffffffffc0205316:	4585                	li	a1,1
ffffffffc0205318:	b6aff0ef          	jal	ra,ffffffffc0204682 <sem_init>
ffffffffc020531c:	6408                	ld	a0,8(s0)
ffffffffc020531e:	f3cff0ef          	jal	ra,ffffffffc0204a5a <fd_array_init>
ffffffffc0205322:	60a2                	ld	ra,8(sp)
ffffffffc0205324:	8522                	mv	a0,s0
ffffffffc0205326:	6402                	ld	s0,0(sp)
ffffffffc0205328:	0141                	addi	sp,sp,16
ffffffffc020532a:	8082                	ret

ffffffffc020532c <files_destroy>:
ffffffffc020532c:	7179                	addi	sp,sp,-48
ffffffffc020532e:	f406                	sd	ra,40(sp)
ffffffffc0205330:	f022                	sd	s0,32(sp)
ffffffffc0205332:	ec26                	sd	s1,24(sp)
ffffffffc0205334:	e84a                	sd	s2,16(sp)
ffffffffc0205336:	e44e                	sd	s3,8(sp)
ffffffffc0205338:	c52d                	beqz	a0,ffffffffc02053a2 <files_destroy+0x76>
ffffffffc020533a:	491c                	lw	a5,16(a0)
ffffffffc020533c:	89aa                	mv	s3,a0
ffffffffc020533e:	e3b5                	bnez	a5,ffffffffc02053a2 <files_destroy+0x76>
ffffffffc0205340:	6108                	ld	a0,0(a0)
ffffffffc0205342:	c119                	beqz	a0,ffffffffc0205348 <files_destroy+0x1c>
ffffffffc0205344:	708020ef          	jal	ra,ffffffffc0207a4c <inode_ref_dec>
ffffffffc0205348:	0089b403          	ld	s0,8(s3)
ffffffffc020534c:	6485                	lui	s1,0x1
ffffffffc020534e:	fc048493          	addi	s1,s1,-64 # fc0 <_binary_bin_swap_img_size-0x6d40>
ffffffffc0205352:	94a2                	add	s1,s1,s0
ffffffffc0205354:	4909                	li	s2,2
ffffffffc0205356:	401c                	lw	a5,0(s0)
ffffffffc0205358:	03278063          	beq	a5,s2,ffffffffc0205378 <files_destroy+0x4c>
ffffffffc020535c:	e39d                	bnez	a5,ffffffffc0205382 <files_destroy+0x56>
ffffffffc020535e:	03840413          	addi	s0,s0,56
ffffffffc0205362:	fe849ae3          	bne	s1,s0,ffffffffc0205356 <files_destroy+0x2a>
ffffffffc0205366:	7402                	ld	s0,32(sp)
ffffffffc0205368:	70a2                	ld	ra,40(sp)
ffffffffc020536a:	64e2                	ld	s1,24(sp)
ffffffffc020536c:	6942                	ld	s2,16(sp)
ffffffffc020536e:	854e                	mv	a0,s3
ffffffffc0205370:	69a2                	ld	s3,8(sp)
ffffffffc0205372:	6145                	addi	sp,sp,48
ffffffffc0205374:	de7fc06f          	j	ffffffffc020215a <kfree>
ffffffffc0205378:	8522                	mv	a0,s0
ffffffffc020537a:	efcff0ef          	jal	ra,ffffffffc0204a76 <fd_array_close>
ffffffffc020537e:	401c                	lw	a5,0(s0)
ffffffffc0205380:	bff1                	j	ffffffffc020535c <files_destroy+0x30>
ffffffffc0205382:	00008697          	auipc	a3,0x8
ffffffffc0205386:	39e68693          	addi	a3,a3,926 # ffffffffc020d720 <CSWTCH.79+0x58>
ffffffffc020538a:	00006617          	auipc	a2,0x6
ffffffffc020538e:	78660613          	addi	a2,a2,1926 # ffffffffc020bb10 <commands+0x210>
ffffffffc0205392:	03d00593          	li	a1,61
ffffffffc0205396:	00008517          	auipc	a0,0x8
ffffffffc020539a:	37a50513          	addi	a0,a0,890 # ffffffffc020d710 <CSWTCH.79+0x48>
ffffffffc020539e:	900fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02053a2:	00008697          	auipc	a3,0x8
ffffffffc02053a6:	33e68693          	addi	a3,a3,830 # ffffffffc020d6e0 <CSWTCH.79+0x18>
ffffffffc02053aa:	00006617          	auipc	a2,0x6
ffffffffc02053ae:	76660613          	addi	a2,a2,1894 # ffffffffc020bb10 <commands+0x210>
ffffffffc02053b2:	03300593          	li	a1,51
ffffffffc02053b6:	00008517          	auipc	a0,0x8
ffffffffc02053ba:	35a50513          	addi	a0,a0,858 # ffffffffc020d710 <CSWTCH.79+0x48>
ffffffffc02053be:	8e0fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02053c2 <files_closeall>:
ffffffffc02053c2:	1101                	addi	sp,sp,-32
ffffffffc02053c4:	ec06                	sd	ra,24(sp)
ffffffffc02053c6:	e822                	sd	s0,16(sp)
ffffffffc02053c8:	e426                	sd	s1,8(sp)
ffffffffc02053ca:	e04a                	sd	s2,0(sp)
ffffffffc02053cc:	c129                	beqz	a0,ffffffffc020540e <files_closeall+0x4c>
ffffffffc02053ce:	491c                	lw	a5,16(a0)
ffffffffc02053d0:	02f05f63          	blez	a5,ffffffffc020540e <files_closeall+0x4c>
ffffffffc02053d4:	6504                	ld	s1,8(a0)
ffffffffc02053d6:	6785                	lui	a5,0x1
ffffffffc02053d8:	fc078793          	addi	a5,a5,-64 # fc0 <_binary_bin_swap_img_size-0x6d40>
ffffffffc02053dc:	07048413          	addi	s0,s1,112
ffffffffc02053e0:	4909                	li	s2,2
ffffffffc02053e2:	94be                	add	s1,s1,a5
ffffffffc02053e4:	a029                	j	ffffffffc02053ee <files_closeall+0x2c>
ffffffffc02053e6:	03840413          	addi	s0,s0,56
ffffffffc02053ea:	00848c63          	beq	s1,s0,ffffffffc0205402 <files_closeall+0x40>
ffffffffc02053ee:	401c                	lw	a5,0(s0)
ffffffffc02053f0:	ff279be3          	bne	a5,s2,ffffffffc02053e6 <files_closeall+0x24>
ffffffffc02053f4:	8522                	mv	a0,s0
ffffffffc02053f6:	03840413          	addi	s0,s0,56
ffffffffc02053fa:	e7cff0ef          	jal	ra,ffffffffc0204a76 <fd_array_close>
ffffffffc02053fe:	fe8498e3          	bne	s1,s0,ffffffffc02053ee <files_closeall+0x2c>
ffffffffc0205402:	60e2                	ld	ra,24(sp)
ffffffffc0205404:	6442                	ld	s0,16(sp)
ffffffffc0205406:	64a2                	ld	s1,8(sp)
ffffffffc0205408:	6902                	ld	s2,0(sp)
ffffffffc020540a:	6105                	addi	sp,sp,32
ffffffffc020540c:	8082                	ret
ffffffffc020540e:	00008697          	auipc	a3,0x8
ffffffffc0205412:	f1a68693          	addi	a3,a3,-230 # ffffffffc020d328 <default_pmm_manager+0xb78>
ffffffffc0205416:	00006617          	auipc	a2,0x6
ffffffffc020541a:	6fa60613          	addi	a2,a2,1786 # ffffffffc020bb10 <commands+0x210>
ffffffffc020541e:	04500593          	li	a1,69
ffffffffc0205422:	00008517          	auipc	a0,0x8
ffffffffc0205426:	2ee50513          	addi	a0,a0,750 # ffffffffc020d710 <CSWTCH.79+0x48>
ffffffffc020542a:	874fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020542e <dup_files>:
ffffffffc020542e:	7179                	addi	sp,sp,-48
ffffffffc0205430:	f406                	sd	ra,40(sp)
ffffffffc0205432:	f022                	sd	s0,32(sp)
ffffffffc0205434:	ec26                	sd	s1,24(sp)
ffffffffc0205436:	e84a                	sd	s2,16(sp)
ffffffffc0205438:	e44e                	sd	s3,8(sp)
ffffffffc020543a:	e052                	sd	s4,0(sp)
ffffffffc020543c:	c52d                	beqz	a0,ffffffffc02054a6 <dup_files+0x78>
ffffffffc020543e:	842e                	mv	s0,a1
ffffffffc0205440:	c1bd                	beqz	a1,ffffffffc02054a6 <dup_files+0x78>
ffffffffc0205442:	491c                	lw	a5,16(a0)
ffffffffc0205444:	84aa                	mv	s1,a0
ffffffffc0205446:	e3c1                	bnez	a5,ffffffffc02054c6 <dup_files+0x98>
ffffffffc0205448:	499c                	lw	a5,16(a1)
ffffffffc020544a:	06f05e63          	blez	a5,ffffffffc02054c6 <dup_files+0x98>
ffffffffc020544e:	6188                	ld	a0,0(a1)
ffffffffc0205450:	e088                	sd	a0,0(s1)
ffffffffc0205452:	c119                	beqz	a0,ffffffffc0205458 <dup_files+0x2a>
ffffffffc0205454:	52a020ef          	jal	ra,ffffffffc020797e <inode_ref_inc>
ffffffffc0205458:	6400                	ld	s0,8(s0)
ffffffffc020545a:	6905                	lui	s2,0x1
ffffffffc020545c:	fc090913          	addi	s2,s2,-64 # fc0 <_binary_bin_swap_img_size-0x6d40>
ffffffffc0205460:	6484                	ld	s1,8(s1)
ffffffffc0205462:	9922                	add	s2,s2,s0
ffffffffc0205464:	4989                	li	s3,2
ffffffffc0205466:	4a05                	li	s4,1
ffffffffc0205468:	a039                	j	ffffffffc0205476 <dup_files+0x48>
ffffffffc020546a:	03840413          	addi	s0,s0,56
ffffffffc020546e:	03848493          	addi	s1,s1,56
ffffffffc0205472:	02890163          	beq	s2,s0,ffffffffc0205494 <dup_files+0x66>
ffffffffc0205476:	401c                	lw	a5,0(s0)
ffffffffc0205478:	ff3799e3          	bne	a5,s3,ffffffffc020546a <dup_files+0x3c>
ffffffffc020547c:	0144a023          	sw	s4,0(s1)
ffffffffc0205480:	85a2                	mv	a1,s0
ffffffffc0205482:	8526                	mv	a0,s1
ffffffffc0205484:	03840413          	addi	s0,s0,56
ffffffffc0205488:	e6cff0ef          	jal	ra,ffffffffc0204af4 <fd_array_dup>
ffffffffc020548c:	03848493          	addi	s1,s1,56
ffffffffc0205490:	fe8913e3          	bne	s2,s0,ffffffffc0205476 <dup_files+0x48>
ffffffffc0205494:	70a2                	ld	ra,40(sp)
ffffffffc0205496:	7402                	ld	s0,32(sp)
ffffffffc0205498:	64e2                	ld	s1,24(sp)
ffffffffc020549a:	6942                	ld	s2,16(sp)
ffffffffc020549c:	69a2                	ld	s3,8(sp)
ffffffffc020549e:	6a02                	ld	s4,0(sp)
ffffffffc02054a0:	4501                	li	a0,0
ffffffffc02054a2:	6145                	addi	sp,sp,48
ffffffffc02054a4:	8082                	ret
ffffffffc02054a6:	00008697          	auipc	a3,0x8
ffffffffc02054aa:	bd268693          	addi	a3,a3,-1070 # ffffffffc020d078 <default_pmm_manager+0x8c8>
ffffffffc02054ae:	00006617          	auipc	a2,0x6
ffffffffc02054b2:	66260613          	addi	a2,a2,1634 # ffffffffc020bb10 <commands+0x210>
ffffffffc02054b6:	05300593          	li	a1,83
ffffffffc02054ba:	00008517          	auipc	a0,0x8
ffffffffc02054be:	25650513          	addi	a0,a0,598 # ffffffffc020d710 <CSWTCH.79+0x48>
ffffffffc02054c2:	fddfa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02054c6:	00008697          	auipc	a3,0x8
ffffffffc02054ca:	27268693          	addi	a3,a3,626 # ffffffffc020d738 <CSWTCH.79+0x70>
ffffffffc02054ce:	00006617          	auipc	a2,0x6
ffffffffc02054d2:	64260613          	addi	a2,a2,1602 # ffffffffc020bb10 <commands+0x210>
ffffffffc02054d6:	05400593          	li	a1,84
ffffffffc02054da:	00008517          	auipc	a0,0x8
ffffffffc02054de:	23650513          	addi	a0,a0,566 # ffffffffc020d710 <CSWTCH.79+0x48>
ffffffffc02054e2:	fbdfa0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02054e6 <iobuf_skip.part.0>:
ffffffffc02054e6:	1141                	addi	sp,sp,-16
ffffffffc02054e8:	00008697          	auipc	a3,0x8
ffffffffc02054ec:	28068693          	addi	a3,a3,640 # ffffffffc020d768 <CSWTCH.79+0xa0>
ffffffffc02054f0:	00006617          	auipc	a2,0x6
ffffffffc02054f4:	62060613          	addi	a2,a2,1568 # ffffffffc020bb10 <commands+0x210>
ffffffffc02054f8:	04a00593          	li	a1,74
ffffffffc02054fc:	00008517          	auipc	a0,0x8
ffffffffc0205500:	28450513          	addi	a0,a0,644 # ffffffffc020d780 <CSWTCH.79+0xb8>
ffffffffc0205504:	e406                	sd	ra,8(sp)
ffffffffc0205506:	f99fa0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020550a <iobuf_init>:
ffffffffc020550a:	e10c                	sd	a1,0(a0)
ffffffffc020550c:	e514                	sd	a3,8(a0)
ffffffffc020550e:	ed10                	sd	a2,24(a0)
ffffffffc0205510:	e910                	sd	a2,16(a0)
ffffffffc0205512:	8082                	ret

ffffffffc0205514 <iobuf_move>:
ffffffffc0205514:	7179                	addi	sp,sp,-48
ffffffffc0205516:	ec26                	sd	s1,24(sp)
ffffffffc0205518:	6d04                	ld	s1,24(a0)
ffffffffc020551a:	f022                	sd	s0,32(sp)
ffffffffc020551c:	e84a                	sd	s2,16(sp)
ffffffffc020551e:	e44e                	sd	s3,8(sp)
ffffffffc0205520:	f406                	sd	ra,40(sp)
ffffffffc0205522:	842a                	mv	s0,a0
ffffffffc0205524:	8932                	mv	s2,a2
ffffffffc0205526:	852e                	mv	a0,a1
ffffffffc0205528:	89ba                	mv	s3,a4
ffffffffc020552a:	00967363          	bgeu	a2,s1,ffffffffc0205530 <iobuf_move+0x1c>
ffffffffc020552e:	84b2                	mv	s1,a2
ffffffffc0205530:	c495                	beqz	s1,ffffffffc020555c <iobuf_move+0x48>
ffffffffc0205532:	600c                	ld	a1,0(s0)
ffffffffc0205534:	c681                	beqz	a3,ffffffffc020553c <iobuf_move+0x28>
ffffffffc0205536:	87ae                	mv	a5,a1
ffffffffc0205538:	85aa                	mv	a1,a0
ffffffffc020553a:	853e                	mv	a0,a5
ffffffffc020553c:	8626                	mv	a2,s1
ffffffffc020553e:	102060ef          	jal	ra,ffffffffc020b640 <memmove>
ffffffffc0205542:	6c1c                	ld	a5,24(s0)
ffffffffc0205544:	0297ea63          	bltu	a5,s1,ffffffffc0205578 <iobuf_move+0x64>
ffffffffc0205548:	6014                	ld	a3,0(s0)
ffffffffc020554a:	6418                	ld	a4,8(s0)
ffffffffc020554c:	8f85                	sub	a5,a5,s1
ffffffffc020554e:	96a6                	add	a3,a3,s1
ffffffffc0205550:	9726                	add	a4,a4,s1
ffffffffc0205552:	e014                	sd	a3,0(s0)
ffffffffc0205554:	e418                	sd	a4,8(s0)
ffffffffc0205556:	ec1c                	sd	a5,24(s0)
ffffffffc0205558:	40990933          	sub	s2,s2,s1
ffffffffc020555c:	00098463          	beqz	s3,ffffffffc0205564 <iobuf_move+0x50>
ffffffffc0205560:	0099b023          	sd	s1,0(s3)
ffffffffc0205564:	4501                	li	a0,0
ffffffffc0205566:	00091b63          	bnez	s2,ffffffffc020557c <iobuf_move+0x68>
ffffffffc020556a:	70a2                	ld	ra,40(sp)
ffffffffc020556c:	7402                	ld	s0,32(sp)
ffffffffc020556e:	64e2                	ld	s1,24(sp)
ffffffffc0205570:	6942                	ld	s2,16(sp)
ffffffffc0205572:	69a2                	ld	s3,8(sp)
ffffffffc0205574:	6145                	addi	sp,sp,48
ffffffffc0205576:	8082                	ret
ffffffffc0205578:	f6fff0ef          	jal	ra,ffffffffc02054e6 <iobuf_skip.part.0>
ffffffffc020557c:	5571                	li	a0,-4
ffffffffc020557e:	b7f5                	j	ffffffffc020556a <iobuf_move+0x56>

ffffffffc0205580 <iobuf_skip>:
ffffffffc0205580:	6d1c                	ld	a5,24(a0)
ffffffffc0205582:	00b7eb63          	bltu	a5,a1,ffffffffc0205598 <iobuf_skip+0x18>
ffffffffc0205586:	6114                	ld	a3,0(a0)
ffffffffc0205588:	6518                	ld	a4,8(a0)
ffffffffc020558a:	8f8d                	sub	a5,a5,a1
ffffffffc020558c:	96ae                	add	a3,a3,a1
ffffffffc020558e:	95ba                	add	a1,a1,a4
ffffffffc0205590:	e114                	sd	a3,0(a0)
ffffffffc0205592:	e50c                	sd	a1,8(a0)
ffffffffc0205594:	ed1c                	sd	a5,24(a0)
ffffffffc0205596:	8082                	ret
ffffffffc0205598:	1141                	addi	sp,sp,-16
ffffffffc020559a:	e406                	sd	ra,8(sp)
ffffffffc020559c:	f4bff0ef          	jal	ra,ffffffffc02054e6 <iobuf_skip.part.0>

ffffffffc02055a0 <copy_path>:
ffffffffc02055a0:	7139                	addi	sp,sp,-64
ffffffffc02055a2:	f04a                	sd	s2,32(sp)
ffffffffc02055a4:	00091917          	auipc	s2,0x91
ffffffffc02055a8:	31c90913          	addi	s2,s2,796 # ffffffffc02968c0 <current>
ffffffffc02055ac:	00093703          	ld	a4,0(s2)
ffffffffc02055b0:	ec4e                	sd	s3,24(sp)
ffffffffc02055b2:	89aa                	mv	s3,a0
ffffffffc02055b4:	6505                	lui	a0,0x1
ffffffffc02055b6:	f426                	sd	s1,40(sp)
ffffffffc02055b8:	e852                	sd	s4,16(sp)
ffffffffc02055ba:	fc06                	sd	ra,56(sp)
ffffffffc02055bc:	f822                	sd	s0,48(sp)
ffffffffc02055be:	e456                	sd	s5,8(sp)
ffffffffc02055c0:	02873a03          	ld	s4,40(a4)
ffffffffc02055c4:	84ae                	mv	s1,a1
ffffffffc02055c6:	ae5fc0ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc02055ca:	c141                	beqz	a0,ffffffffc020564a <copy_path+0xaa>
ffffffffc02055cc:	842a                	mv	s0,a0
ffffffffc02055ce:	040a0563          	beqz	s4,ffffffffc0205618 <copy_path+0x78>
ffffffffc02055d2:	038a0a93          	addi	s5,s4,56
ffffffffc02055d6:	8556                	mv	a0,s5
ffffffffc02055d8:	8b4ff0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc02055dc:	00093783          	ld	a5,0(s2)
ffffffffc02055e0:	cba1                	beqz	a5,ffffffffc0205630 <copy_path+0x90>
ffffffffc02055e2:	43dc                	lw	a5,4(a5)
ffffffffc02055e4:	6685                	lui	a3,0x1
ffffffffc02055e6:	8626                	mv	a2,s1
ffffffffc02055e8:	04fa2823          	sw	a5,80(s4)
ffffffffc02055ec:	85a2                	mv	a1,s0
ffffffffc02055ee:	8552                	mv	a0,s4
ffffffffc02055f0:	ec5fe0ef          	jal	ra,ffffffffc02044b4 <copy_string>
ffffffffc02055f4:	c529                	beqz	a0,ffffffffc020563e <copy_path+0x9e>
ffffffffc02055f6:	8556                	mv	a0,s5
ffffffffc02055f8:	890ff0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc02055fc:	040a2823          	sw	zero,80(s4)
ffffffffc0205600:	0089b023          	sd	s0,0(s3)
ffffffffc0205604:	4501                	li	a0,0
ffffffffc0205606:	70e2                	ld	ra,56(sp)
ffffffffc0205608:	7442                	ld	s0,48(sp)
ffffffffc020560a:	74a2                	ld	s1,40(sp)
ffffffffc020560c:	7902                	ld	s2,32(sp)
ffffffffc020560e:	69e2                	ld	s3,24(sp)
ffffffffc0205610:	6a42                	ld	s4,16(sp)
ffffffffc0205612:	6aa2                	ld	s5,8(sp)
ffffffffc0205614:	6121                	addi	sp,sp,64
ffffffffc0205616:	8082                	ret
ffffffffc0205618:	85aa                	mv	a1,a0
ffffffffc020561a:	6685                	lui	a3,0x1
ffffffffc020561c:	8626                	mv	a2,s1
ffffffffc020561e:	4501                	li	a0,0
ffffffffc0205620:	e95fe0ef          	jal	ra,ffffffffc02044b4 <copy_string>
ffffffffc0205624:	fd71                	bnez	a0,ffffffffc0205600 <copy_path+0x60>
ffffffffc0205626:	8522                	mv	a0,s0
ffffffffc0205628:	b33fc0ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc020562c:	5575                	li	a0,-3
ffffffffc020562e:	bfe1                	j	ffffffffc0205606 <copy_path+0x66>
ffffffffc0205630:	6685                	lui	a3,0x1
ffffffffc0205632:	8626                	mv	a2,s1
ffffffffc0205634:	85a2                	mv	a1,s0
ffffffffc0205636:	8552                	mv	a0,s4
ffffffffc0205638:	e7dfe0ef          	jal	ra,ffffffffc02044b4 <copy_string>
ffffffffc020563c:	fd4d                	bnez	a0,ffffffffc02055f6 <copy_path+0x56>
ffffffffc020563e:	8556                	mv	a0,s5
ffffffffc0205640:	848ff0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0205644:	040a2823          	sw	zero,80(s4)
ffffffffc0205648:	bff9                	j	ffffffffc0205626 <copy_path+0x86>
ffffffffc020564a:	5571                	li	a0,-4
ffffffffc020564c:	bf6d                	j	ffffffffc0205606 <copy_path+0x66>

ffffffffc020564e <sysfile_open>:
ffffffffc020564e:	7179                	addi	sp,sp,-48
ffffffffc0205650:	872a                	mv	a4,a0
ffffffffc0205652:	ec26                	sd	s1,24(sp)
ffffffffc0205654:	0028                	addi	a0,sp,8
ffffffffc0205656:	84ae                	mv	s1,a1
ffffffffc0205658:	85ba                	mv	a1,a4
ffffffffc020565a:	f022                	sd	s0,32(sp)
ffffffffc020565c:	f406                	sd	ra,40(sp)
ffffffffc020565e:	f43ff0ef          	jal	ra,ffffffffc02055a0 <copy_path>
ffffffffc0205662:	842a                	mv	s0,a0
ffffffffc0205664:	e909                	bnez	a0,ffffffffc0205676 <sysfile_open+0x28>
ffffffffc0205666:	6522                	ld	a0,8(sp)
ffffffffc0205668:	85a6                	mv	a1,s1
ffffffffc020566a:	d60ff0ef          	jal	ra,ffffffffc0204bca <file_open>
ffffffffc020566e:	842a                	mv	s0,a0
ffffffffc0205670:	6522                	ld	a0,8(sp)
ffffffffc0205672:	ae9fc0ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc0205676:	70a2                	ld	ra,40(sp)
ffffffffc0205678:	8522                	mv	a0,s0
ffffffffc020567a:	7402                	ld	s0,32(sp)
ffffffffc020567c:	64e2                	ld	s1,24(sp)
ffffffffc020567e:	6145                	addi	sp,sp,48
ffffffffc0205680:	8082                	ret

ffffffffc0205682 <sysfile_close>:
ffffffffc0205682:	e46ff06f          	j	ffffffffc0204cc8 <file_close>

ffffffffc0205686 <sysfile_read>:
ffffffffc0205686:	7159                	addi	sp,sp,-112
ffffffffc0205688:	f0a2                	sd	s0,96(sp)
ffffffffc020568a:	f486                	sd	ra,104(sp)
ffffffffc020568c:	eca6                	sd	s1,88(sp)
ffffffffc020568e:	e8ca                	sd	s2,80(sp)
ffffffffc0205690:	e4ce                	sd	s3,72(sp)
ffffffffc0205692:	e0d2                	sd	s4,64(sp)
ffffffffc0205694:	fc56                	sd	s5,56(sp)
ffffffffc0205696:	f85a                	sd	s6,48(sp)
ffffffffc0205698:	f45e                	sd	s7,40(sp)
ffffffffc020569a:	f062                	sd	s8,32(sp)
ffffffffc020569c:	ec66                	sd	s9,24(sp)
ffffffffc020569e:	4401                	li	s0,0
ffffffffc02056a0:	ee19                	bnez	a2,ffffffffc02056be <sysfile_read+0x38>
ffffffffc02056a2:	70a6                	ld	ra,104(sp)
ffffffffc02056a4:	8522                	mv	a0,s0
ffffffffc02056a6:	7406                	ld	s0,96(sp)
ffffffffc02056a8:	64e6                	ld	s1,88(sp)
ffffffffc02056aa:	6946                	ld	s2,80(sp)
ffffffffc02056ac:	69a6                	ld	s3,72(sp)
ffffffffc02056ae:	6a06                	ld	s4,64(sp)
ffffffffc02056b0:	7ae2                	ld	s5,56(sp)
ffffffffc02056b2:	7b42                	ld	s6,48(sp)
ffffffffc02056b4:	7ba2                	ld	s7,40(sp)
ffffffffc02056b6:	7c02                	ld	s8,32(sp)
ffffffffc02056b8:	6ce2                	ld	s9,24(sp)
ffffffffc02056ba:	6165                	addi	sp,sp,112
ffffffffc02056bc:	8082                	ret
ffffffffc02056be:	00091c97          	auipc	s9,0x91
ffffffffc02056c2:	202c8c93          	addi	s9,s9,514 # ffffffffc02968c0 <current>
ffffffffc02056c6:	000cb783          	ld	a5,0(s9)
ffffffffc02056ca:	84b2                	mv	s1,a2
ffffffffc02056cc:	8b2e                	mv	s6,a1
ffffffffc02056ce:	4601                	li	a2,0
ffffffffc02056d0:	4585                	li	a1,1
ffffffffc02056d2:	0287b903          	ld	s2,40(a5)
ffffffffc02056d6:	8aaa                	mv	s5,a0
ffffffffc02056d8:	c9eff0ef          	jal	ra,ffffffffc0204b76 <file_testfd>
ffffffffc02056dc:	c959                	beqz	a0,ffffffffc0205772 <sysfile_read+0xec>
ffffffffc02056de:	6505                	lui	a0,0x1
ffffffffc02056e0:	9cbfc0ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc02056e4:	89aa                	mv	s3,a0
ffffffffc02056e6:	c941                	beqz	a0,ffffffffc0205776 <sysfile_read+0xf0>
ffffffffc02056e8:	4b81                	li	s7,0
ffffffffc02056ea:	6a05                	lui	s4,0x1
ffffffffc02056ec:	03890c13          	addi	s8,s2,56
ffffffffc02056f0:	0744ec63          	bltu	s1,s4,ffffffffc0205768 <sysfile_read+0xe2>
ffffffffc02056f4:	e452                	sd	s4,8(sp)
ffffffffc02056f6:	6605                	lui	a2,0x1
ffffffffc02056f8:	0034                	addi	a3,sp,8
ffffffffc02056fa:	85ce                	mv	a1,s3
ffffffffc02056fc:	8556                	mv	a0,s5
ffffffffc02056fe:	e20ff0ef          	jal	ra,ffffffffc0204d1e <file_read>
ffffffffc0205702:	66a2                	ld	a3,8(sp)
ffffffffc0205704:	842a                	mv	s0,a0
ffffffffc0205706:	ca9d                	beqz	a3,ffffffffc020573c <sysfile_read+0xb6>
ffffffffc0205708:	00090c63          	beqz	s2,ffffffffc0205720 <sysfile_read+0x9a>
ffffffffc020570c:	8562                	mv	a0,s8
ffffffffc020570e:	f7ffe0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc0205712:	000cb783          	ld	a5,0(s9)
ffffffffc0205716:	cfa1                	beqz	a5,ffffffffc020576e <sysfile_read+0xe8>
ffffffffc0205718:	43dc                	lw	a5,4(a5)
ffffffffc020571a:	66a2                	ld	a3,8(sp)
ffffffffc020571c:	04f92823          	sw	a5,80(s2)
ffffffffc0205720:	864e                	mv	a2,s3
ffffffffc0205722:	85da                	mv	a1,s6
ffffffffc0205724:	854a                	mv	a0,s2
ffffffffc0205726:	d5dfe0ef          	jal	ra,ffffffffc0204482 <copy_to_user>
ffffffffc020572a:	c50d                	beqz	a0,ffffffffc0205754 <sysfile_read+0xce>
ffffffffc020572c:	67a2                	ld	a5,8(sp)
ffffffffc020572e:	04f4e663          	bltu	s1,a5,ffffffffc020577a <sysfile_read+0xf4>
ffffffffc0205732:	9b3e                	add	s6,s6,a5
ffffffffc0205734:	8c9d                	sub	s1,s1,a5
ffffffffc0205736:	9bbe                	add	s7,s7,a5
ffffffffc0205738:	02091263          	bnez	s2,ffffffffc020575c <sysfile_read+0xd6>
ffffffffc020573c:	e401                	bnez	s0,ffffffffc0205744 <sysfile_read+0xbe>
ffffffffc020573e:	67a2                	ld	a5,8(sp)
ffffffffc0205740:	c391                	beqz	a5,ffffffffc0205744 <sysfile_read+0xbe>
ffffffffc0205742:	f4dd                	bnez	s1,ffffffffc02056f0 <sysfile_read+0x6a>
ffffffffc0205744:	854e                	mv	a0,s3
ffffffffc0205746:	a15fc0ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc020574a:	f40b8ce3          	beqz	s7,ffffffffc02056a2 <sysfile_read+0x1c>
ffffffffc020574e:	000b841b          	sext.w	s0,s7
ffffffffc0205752:	bf81                	j	ffffffffc02056a2 <sysfile_read+0x1c>
ffffffffc0205754:	e011                	bnez	s0,ffffffffc0205758 <sysfile_read+0xd2>
ffffffffc0205756:	5475                	li	s0,-3
ffffffffc0205758:	fe0906e3          	beqz	s2,ffffffffc0205744 <sysfile_read+0xbe>
ffffffffc020575c:	8562                	mv	a0,s8
ffffffffc020575e:	f2bfe0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0205762:	04092823          	sw	zero,80(s2)
ffffffffc0205766:	bfd9                	j	ffffffffc020573c <sysfile_read+0xb6>
ffffffffc0205768:	e426                	sd	s1,8(sp)
ffffffffc020576a:	8626                	mv	a2,s1
ffffffffc020576c:	b771                	j	ffffffffc02056f8 <sysfile_read+0x72>
ffffffffc020576e:	66a2                	ld	a3,8(sp)
ffffffffc0205770:	bf45                	j	ffffffffc0205720 <sysfile_read+0x9a>
ffffffffc0205772:	5475                	li	s0,-3
ffffffffc0205774:	b73d                	j	ffffffffc02056a2 <sysfile_read+0x1c>
ffffffffc0205776:	5471                	li	s0,-4
ffffffffc0205778:	b72d                	j	ffffffffc02056a2 <sysfile_read+0x1c>
ffffffffc020577a:	00008697          	auipc	a3,0x8
ffffffffc020577e:	01668693          	addi	a3,a3,22 # ffffffffc020d790 <CSWTCH.79+0xc8>
ffffffffc0205782:	00006617          	auipc	a2,0x6
ffffffffc0205786:	38e60613          	addi	a2,a2,910 # ffffffffc020bb10 <commands+0x210>
ffffffffc020578a:	05500593          	li	a1,85
ffffffffc020578e:	00008517          	auipc	a0,0x8
ffffffffc0205792:	01250513          	addi	a0,a0,18 # ffffffffc020d7a0 <CSWTCH.79+0xd8>
ffffffffc0205796:	d09fa0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020579a <sysfile_write>:
ffffffffc020579a:	7159                	addi	sp,sp,-112
ffffffffc020579c:	e8ca                	sd	s2,80(sp)
ffffffffc020579e:	f486                	sd	ra,104(sp)
ffffffffc02057a0:	f0a2                	sd	s0,96(sp)
ffffffffc02057a2:	eca6                	sd	s1,88(sp)
ffffffffc02057a4:	e4ce                	sd	s3,72(sp)
ffffffffc02057a6:	e0d2                	sd	s4,64(sp)
ffffffffc02057a8:	fc56                	sd	s5,56(sp)
ffffffffc02057aa:	f85a                	sd	s6,48(sp)
ffffffffc02057ac:	f45e                	sd	s7,40(sp)
ffffffffc02057ae:	f062                	sd	s8,32(sp)
ffffffffc02057b0:	ec66                	sd	s9,24(sp)
ffffffffc02057b2:	4901                	li	s2,0
ffffffffc02057b4:	ee19                	bnez	a2,ffffffffc02057d2 <sysfile_write+0x38>
ffffffffc02057b6:	70a6                	ld	ra,104(sp)
ffffffffc02057b8:	7406                	ld	s0,96(sp)
ffffffffc02057ba:	64e6                	ld	s1,88(sp)
ffffffffc02057bc:	69a6                	ld	s3,72(sp)
ffffffffc02057be:	6a06                	ld	s4,64(sp)
ffffffffc02057c0:	7ae2                	ld	s5,56(sp)
ffffffffc02057c2:	7b42                	ld	s6,48(sp)
ffffffffc02057c4:	7ba2                	ld	s7,40(sp)
ffffffffc02057c6:	7c02                	ld	s8,32(sp)
ffffffffc02057c8:	6ce2                	ld	s9,24(sp)
ffffffffc02057ca:	854a                	mv	a0,s2
ffffffffc02057cc:	6946                	ld	s2,80(sp)
ffffffffc02057ce:	6165                	addi	sp,sp,112
ffffffffc02057d0:	8082                	ret
ffffffffc02057d2:	00091c17          	auipc	s8,0x91
ffffffffc02057d6:	0eec0c13          	addi	s8,s8,238 # ffffffffc02968c0 <current>
ffffffffc02057da:	000c3783          	ld	a5,0(s8)
ffffffffc02057de:	8432                	mv	s0,a2
ffffffffc02057e0:	89ae                	mv	s3,a1
ffffffffc02057e2:	4605                	li	a2,1
ffffffffc02057e4:	4581                	li	a1,0
ffffffffc02057e6:	7784                	ld	s1,40(a5)
ffffffffc02057e8:	8baa                	mv	s7,a0
ffffffffc02057ea:	b8cff0ef          	jal	ra,ffffffffc0204b76 <file_testfd>
ffffffffc02057ee:	cd59                	beqz	a0,ffffffffc020588c <sysfile_write+0xf2>
ffffffffc02057f0:	6505                	lui	a0,0x1
ffffffffc02057f2:	8b9fc0ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc02057f6:	8a2a                	mv	s4,a0
ffffffffc02057f8:	cd41                	beqz	a0,ffffffffc0205890 <sysfile_write+0xf6>
ffffffffc02057fa:	4c81                	li	s9,0
ffffffffc02057fc:	6a85                	lui	s5,0x1
ffffffffc02057fe:	03848b13          	addi	s6,s1,56
ffffffffc0205802:	05546a63          	bltu	s0,s5,ffffffffc0205856 <sysfile_write+0xbc>
ffffffffc0205806:	e456                	sd	s5,8(sp)
ffffffffc0205808:	c8a9                	beqz	s1,ffffffffc020585a <sysfile_write+0xc0>
ffffffffc020580a:	855a                	mv	a0,s6
ffffffffc020580c:	e81fe0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc0205810:	000c3783          	ld	a5,0(s8)
ffffffffc0205814:	c399                	beqz	a5,ffffffffc020581a <sysfile_write+0x80>
ffffffffc0205816:	43dc                	lw	a5,4(a5)
ffffffffc0205818:	c8bc                	sw	a5,80(s1)
ffffffffc020581a:	66a2                	ld	a3,8(sp)
ffffffffc020581c:	4701                	li	a4,0
ffffffffc020581e:	864e                	mv	a2,s3
ffffffffc0205820:	85d2                	mv	a1,s4
ffffffffc0205822:	8526                	mv	a0,s1
ffffffffc0205824:	c2bfe0ef          	jal	ra,ffffffffc020444e <copy_from_user>
ffffffffc0205828:	c139                	beqz	a0,ffffffffc020586e <sysfile_write+0xd4>
ffffffffc020582a:	855a                	mv	a0,s6
ffffffffc020582c:	e5dfe0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0205830:	0404a823          	sw	zero,80(s1)
ffffffffc0205834:	6622                	ld	a2,8(sp)
ffffffffc0205836:	0034                	addi	a3,sp,8
ffffffffc0205838:	85d2                	mv	a1,s4
ffffffffc020583a:	855e                	mv	a0,s7
ffffffffc020583c:	dc8ff0ef          	jal	ra,ffffffffc0204e04 <file_write>
ffffffffc0205840:	67a2                	ld	a5,8(sp)
ffffffffc0205842:	892a                	mv	s2,a0
ffffffffc0205844:	ef85                	bnez	a5,ffffffffc020587c <sysfile_write+0xe2>
ffffffffc0205846:	8552                	mv	a0,s4
ffffffffc0205848:	913fc0ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc020584c:	f60c85e3          	beqz	s9,ffffffffc02057b6 <sysfile_write+0x1c>
ffffffffc0205850:	000c891b          	sext.w	s2,s9
ffffffffc0205854:	b78d                	j	ffffffffc02057b6 <sysfile_write+0x1c>
ffffffffc0205856:	e422                	sd	s0,8(sp)
ffffffffc0205858:	f8cd                	bnez	s1,ffffffffc020580a <sysfile_write+0x70>
ffffffffc020585a:	66a2                	ld	a3,8(sp)
ffffffffc020585c:	4701                	li	a4,0
ffffffffc020585e:	864e                	mv	a2,s3
ffffffffc0205860:	85d2                	mv	a1,s4
ffffffffc0205862:	4501                	li	a0,0
ffffffffc0205864:	bebfe0ef          	jal	ra,ffffffffc020444e <copy_from_user>
ffffffffc0205868:	f571                	bnez	a0,ffffffffc0205834 <sysfile_write+0x9a>
ffffffffc020586a:	5975                	li	s2,-3
ffffffffc020586c:	bfe9                	j	ffffffffc0205846 <sysfile_write+0xac>
ffffffffc020586e:	855a                	mv	a0,s6
ffffffffc0205870:	e19fe0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0205874:	5975                	li	s2,-3
ffffffffc0205876:	0404a823          	sw	zero,80(s1)
ffffffffc020587a:	b7f1                	j	ffffffffc0205846 <sysfile_write+0xac>
ffffffffc020587c:	00f46c63          	bltu	s0,a5,ffffffffc0205894 <sysfile_write+0xfa>
ffffffffc0205880:	99be                	add	s3,s3,a5
ffffffffc0205882:	8c1d                	sub	s0,s0,a5
ffffffffc0205884:	9cbe                	add	s9,s9,a5
ffffffffc0205886:	f161                	bnez	a0,ffffffffc0205846 <sysfile_write+0xac>
ffffffffc0205888:	fc2d                	bnez	s0,ffffffffc0205802 <sysfile_write+0x68>
ffffffffc020588a:	bf75                	j	ffffffffc0205846 <sysfile_write+0xac>
ffffffffc020588c:	5975                	li	s2,-3
ffffffffc020588e:	b725                	j	ffffffffc02057b6 <sysfile_write+0x1c>
ffffffffc0205890:	5971                	li	s2,-4
ffffffffc0205892:	b715                	j	ffffffffc02057b6 <sysfile_write+0x1c>
ffffffffc0205894:	00008697          	auipc	a3,0x8
ffffffffc0205898:	efc68693          	addi	a3,a3,-260 # ffffffffc020d790 <CSWTCH.79+0xc8>
ffffffffc020589c:	00006617          	auipc	a2,0x6
ffffffffc02058a0:	27460613          	addi	a2,a2,628 # ffffffffc020bb10 <commands+0x210>
ffffffffc02058a4:	08a00593          	li	a1,138
ffffffffc02058a8:	00008517          	auipc	a0,0x8
ffffffffc02058ac:	ef850513          	addi	a0,a0,-264 # ffffffffc020d7a0 <CSWTCH.79+0xd8>
ffffffffc02058b0:	beffa0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02058b4 <sysfile_seek>:
ffffffffc02058b4:	e36ff06f          	j	ffffffffc0204eea <file_seek>

ffffffffc02058b8 <sysfile_fstat>:
ffffffffc02058b8:	715d                	addi	sp,sp,-80
ffffffffc02058ba:	f44e                	sd	s3,40(sp)
ffffffffc02058bc:	00091997          	auipc	s3,0x91
ffffffffc02058c0:	00498993          	addi	s3,s3,4 # ffffffffc02968c0 <current>
ffffffffc02058c4:	0009b703          	ld	a4,0(s3)
ffffffffc02058c8:	fc26                	sd	s1,56(sp)
ffffffffc02058ca:	84ae                	mv	s1,a1
ffffffffc02058cc:	858a                	mv	a1,sp
ffffffffc02058ce:	e0a2                	sd	s0,64(sp)
ffffffffc02058d0:	f84a                	sd	s2,48(sp)
ffffffffc02058d2:	e486                	sd	ra,72(sp)
ffffffffc02058d4:	02873903          	ld	s2,40(a4)
ffffffffc02058d8:	f052                	sd	s4,32(sp)
ffffffffc02058da:	f30ff0ef          	jal	ra,ffffffffc020500a <file_fstat>
ffffffffc02058de:	842a                	mv	s0,a0
ffffffffc02058e0:	e91d                	bnez	a0,ffffffffc0205916 <sysfile_fstat+0x5e>
ffffffffc02058e2:	04090363          	beqz	s2,ffffffffc0205928 <sysfile_fstat+0x70>
ffffffffc02058e6:	03890a13          	addi	s4,s2,56
ffffffffc02058ea:	8552                	mv	a0,s4
ffffffffc02058ec:	da1fe0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc02058f0:	0009b783          	ld	a5,0(s3)
ffffffffc02058f4:	c3b9                	beqz	a5,ffffffffc020593a <sysfile_fstat+0x82>
ffffffffc02058f6:	43dc                	lw	a5,4(a5)
ffffffffc02058f8:	02000693          	li	a3,32
ffffffffc02058fc:	860a                	mv	a2,sp
ffffffffc02058fe:	04f92823          	sw	a5,80(s2)
ffffffffc0205902:	85a6                	mv	a1,s1
ffffffffc0205904:	854a                	mv	a0,s2
ffffffffc0205906:	b7dfe0ef          	jal	ra,ffffffffc0204482 <copy_to_user>
ffffffffc020590a:	c121                	beqz	a0,ffffffffc020594a <sysfile_fstat+0x92>
ffffffffc020590c:	8552                	mv	a0,s4
ffffffffc020590e:	d7bfe0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0205912:	04092823          	sw	zero,80(s2)
ffffffffc0205916:	60a6                	ld	ra,72(sp)
ffffffffc0205918:	8522                	mv	a0,s0
ffffffffc020591a:	6406                	ld	s0,64(sp)
ffffffffc020591c:	74e2                	ld	s1,56(sp)
ffffffffc020591e:	7942                	ld	s2,48(sp)
ffffffffc0205920:	79a2                	ld	s3,40(sp)
ffffffffc0205922:	7a02                	ld	s4,32(sp)
ffffffffc0205924:	6161                	addi	sp,sp,80
ffffffffc0205926:	8082                	ret
ffffffffc0205928:	02000693          	li	a3,32
ffffffffc020592c:	860a                	mv	a2,sp
ffffffffc020592e:	85a6                	mv	a1,s1
ffffffffc0205930:	b53fe0ef          	jal	ra,ffffffffc0204482 <copy_to_user>
ffffffffc0205934:	f16d                	bnez	a0,ffffffffc0205916 <sysfile_fstat+0x5e>
ffffffffc0205936:	5475                	li	s0,-3
ffffffffc0205938:	bff9                	j	ffffffffc0205916 <sysfile_fstat+0x5e>
ffffffffc020593a:	02000693          	li	a3,32
ffffffffc020593e:	860a                	mv	a2,sp
ffffffffc0205940:	85a6                	mv	a1,s1
ffffffffc0205942:	854a                	mv	a0,s2
ffffffffc0205944:	b3ffe0ef          	jal	ra,ffffffffc0204482 <copy_to_user>
ffffffffc0205948:	f171                	bnez	a0,ffffffffc020590c <sysfile_fstat+0x54>
ffffffffc020594a:	8552                	mv	a0,s4
ffffffffc020594c:	d3dfe0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0205950:	5475                	li	s0,-3
ffffffffc0205952:	04092823          	sw	zero,80(s2)
ffffffffc0205956:	b7c1                	j	ffffffffc0205916 <sysfile_fstat+0x5e>

ffffffffc0205958 <sysfile_fsync>:
ffffffffc0205958:	f72ff06f          	j	ffffffffc02050ca <file_fsync>

ffffffffc020595c <sysfile_getcwd>:
ffffffffc020595c:	715d                	addi	sp,sp,-80
ffffffffc020595e:	f44e                	sd	s3,40(sp)
ffffffffc0205960:	00091997          	auipc	s3,0x91
ffffffffc0205964:	f6098993          	addi	s3,s3,-160 # ffffffffc02968c0 <current>
ffffffffc0205968:	0009b783          	ld	a5,0(s3)
ffffffffc020596c:	f84a                	sd	s2,48(sp)
ffffffffc020596e:	e486                	sd	ra,72(sp)
ffffffffc0205970:	e0a2                	sd	s0,64(sp)
ffffffffc0205972:	fc26                	sd	s1,56(sp)
ffffffffc0205974:	f052                	sd	s4,32(sp)
ffffffffc0205976:	0287b903          	ld	s2,40(a5)
ffffffffc020597a:	cda9                	beqz	a1,ffffffffc02059d4 <sysfile_getcwd+0x78>
ffffffffc020597c:	842e                	mv	s0,a1
ffffffffc020597e:	84aa                	mv	s1,a0
ffffffffc0205980:	04090363          	beqz	s2,ffffffffc02059c6 <sysfile_getcwd+0x6a>
ffffffffc0205984:	03890a13          	addi	s4,s2,56
ffffffffc0205988:	8552                	mv	a0,s4
ffffffffc020598a:	d03fe0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc020598e:	0009b783          	ld	a5,0(s3)
ffffffffc0205992:	c781                	beqz	a5,ffffffffc020599a <sysfile_getcwd+0x3e>
ffffffffc0205994:	43dc                	lw	a5,4(a5)
ffffffffc0205996:	04f92823          	sw	a5,80(s2)
ffffffffc020599a:	4685                	li	a3,1
ffffffffc020599c:	8622                	mv	a2,s0
ffffffffc020599e:	85a6                	mv	a1,s1
ffffffffc02059a0:	854a                	mv	a0,s2
ffffffffc02059a2:	a19fe0ef          	jal	ra,ffffffffc02043ba <user_mem_check>
ffffffffc02059a6:	e90d                	bnez	a0,ffffffffc02059d8 <sysfile_getcwd+0x7c>
ffffffffc02059a8:	5475                	li	s0,-3
ffffffffc02059aa:	8552                	mv	a0,s4
ffffffffc02059ac:	cddfe0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc02059b0:	04092823          	sw	zero,80(s2)
ffffffffc02059b4:	60a6                	ld	ra,72(sp)
ffffffffc02059b6:	8522                	mv	a0,s0
ffffffffc02059b8:	6406                	ld	s0,64(sp)
ffffffffc02059ba:	74e2                	ld	s1,56(sp)
ffffffffc02059bc:	7942                	ld	s2,48(sp)
ffffffffc02059be:	79a2                	ld	s3,40(sp)
ffffffffc02059c0:	7a02                	ld	s4,32(sp)
ffffffffc02059c2:	6161                	addi	sp,sp,80
ffffffffc02059c4:	8082                	ret
ffffffffc02059c6:	862e                	mv	a2,a1
ffffffffc02059c8:	4685                	li	a3,1
ffffffffc02059ca:	85aa                	mv	a1,a0
ffffffffc02059cc:	4501                	li	a0,0
ffffffffc02059ce:	9edfe0ef          	jal	ra,ffffffffc02043ba <user_mem_check>
ffffffffc02059d2:	ed09                	bnez	a0,ffffffffc02059ec <sysfile_getcwd+0x90>
ffffffffc02059d4:	5475                	li	s0,-3
ffffffffc02059d6:	bff9                	j	ffffffffc02059b4 <sysfile_getcwd+0x58>
ffffffffc02059d8:	8622                	mv	a2,s0
ffffffffc02059da:	4681                	li	a3,0
ffffffffc02059dc:	85a6                	mv	a1,s1
ffffffffc02059de:	850a                	mv	a0,sp
ffffffffc02059e0:	b2bff0ef          	jal	ra,ffffffffc020550a <iobuf_init>
ffffffffc02059e4:	359020ef          	jal	ra,ffffffffc020853c <vfs_getcwd>
ffffffffc02059e8:	842a                	mv	s0,a0
ffffffffc02059ea:	b7c1                	j	ffffffffc02059aa <sysfile_getcwd+0x4e>
ffffffffc02059ec:	8622                	mv	a2,s0
ffffffffc02059ee:	4681                	li	a3,0
ffffffffc02059f0:	85a6                	mv	a1,s1
ffffffffc02059f2:	850a                	mv	a0,sp
ffffffffc02059f4:	b17ff0ef          	jal	ra,ffffffffc020550a <iobuf_init>
ffffffffc02059f8:	345020ef          	jal	ra,ffffffffc020853c <vfs_getcwd>
ffffffffc02059fc:	842a                	mv	s0,a0
ffffffffc02059fe:	bf5d                	j	ffffffffc02059b4 <sysfile_getcwd+0x58>

ffffffffc0205a00 <sysfile_getdirentry>:
ffffffffc0205a00:	7139                	addi	sp,sp,-64
ffffffffc0205a02:	e852                	sd	s4,16(sp)
ffffffffc0205a04:	00091a17          	auipc	s4,0x91
ffffffffc0205a08:	ebca0a13          	addi	s4,s4,-324 # ffffffffc02968c0 <current>
ffffffffc0205a0c:	000a3703          	ld	a4,0(s4)
ffffffffc0205a10:	ec4e                	sd	s3,24(sp)
ffffffffc0205a12:	89aa                	mv	s3,a0
ffffffffc0205a14:	10800513          	li	a0,264
ffffffffc0205a18:	f426                	sd	s1,40(sp)
ffffffffc0205a1a:	f04a                	sd	s2,32(sp)
ffffffffc0205a1c:	fc06                	sd	ra,56(sp)
ffffffffc0205a1e:	f822                	sd	s0,48(sp)
ffffffffc0205a20:	e456                	sd	s5,8(sp)
ffffffffc0205a22:	7704                	ld	s1,40(a4)
ffffffffc0205a24:	892e                	mv	s2,a1
ffffffffc0205a26:	e84fc0ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc0205a2a:	c169                	beqz	a0,ffffffffc0205aec <sysfile_getdirentry+0xec>
ffffffffc0205a2c:	842a                	mv	s0,a0
ffffffffc0205a2e:	c8c1                	beqz	s1,ffffffffc0205abe <sysfile_getdirentry+0xbe>
ffffffffc0205a30:	03848a93          	addi	s5,s1,56
ffffffffc0205a34:	8556                	mv	a0,s5
ffffffffc0205a36:	c57fe0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc0205a3a:	000a3783          	ld	a5,0(s4)
ffffffffc0205a3e:	c399                	beqz	a5,ffffffffc0205a44 <sysfile_getdirentry+0x44>
ffffffffc0205a40:	43dc                	lw	a5,4(a5)
ffffffffc0205a42:	c8bc                	sw	a5,80(s1)
ffffffffc0205a44:	4705                	li	a4,1
ffffffffc0205a46:	46a1                	li	a3,8
ffffffffc0205a48:	864a                	mv	a2,s2
ffffffffc0205a4a:	85a2                	mv	a1,s0
ffffffffc0205a4c:	8526                	mv	a0,s1
ffffffffc0205a4e:	a01fe0ef          	jal	ra,ffffffffc020444e <copy_from_user>
ffffffffc0205a52:	e505                	bnez	a0,ffffffffc0205a7a <sysfile_getdirentry+0x7a>
ffffffffc0205a54:	8556                	mv	a0,s5
ffffffffc0205a56:	c33fe0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0205a5a:	59f5                	li	s3,-3
ffffffffc0205a5c:	0404a823          	sw	zero,80(s1)
ffffffffc0205a60:	8522                	mv	a0,s0
ffffffffc0205a62:	ef8fc0ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc0205a66:	70e2                	ld	ra,56(sp)
ffffffffc0205a68:	7442                	ld	s0,48(sp)
ffffffffc0205a6a:	74a2                	ld	s1,40(sp)
ffffffffc0205a6c:	7902                	ld	s2,32(sp)
ffffffffc0205a6e:	6a42                	ld	s4,16(sp)
ffffffffc0205a70:	6aa2                	ld	s5,8(sp)
ffffffffc0205a72:	854e                	mv	a0,s3
ffffffffc0205a74:	69e2                	ld	s3,24(sp)
ffffffffc0205a76:	6121                	addi	sp,sp,64
ffffffffc0205a78:	8082                	ret
ffffffffc0205a7a:	8556                	mv	a0,s5
ffffffffc0205a7c:	c0dfe0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0205a80:	854e                	mv	a0,s3
ffffffffc0205a82:	85a2                	mv	a1,s0
ffffffffc0205a84:	0404a823          	sw	zero,80(s1)
ffffffffc0205a88:	ef0ff0ef          	jal	ra,ffffffffc0205178 <file_getdirentry>
ffffffffc0205a8c:	89aa                	mv	s3,a0
ffffffffc0205a8e:	f969                	bnez	a0,ffffffffc0205a60 <sysfile_getdirentry+0x60>
ffffffffc0205a90:	8556                	mv	a0,s5
ffffffffc0205a92:	bfbfe0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc0205a96:	000a3783          	ld	a5,0(s4)
ffffffffc0205a9a:	c399                	beqz	a5,ffffffffc0205aa0 <sysfile_getdirentry+0xa0>
ffffffffc0205a9c:	43dc                	lw	a5,4(a5)
ffffffffc0205a9e:	c8bc                	sw	a5,80(s1)
ffffffffc0205aa0:	10800693          	li	a3,264
ffffffffc0205aa4:	8622                	mv	a2,s0
ffffffffc0205aa6:	85ca                	mv	a1,s2
ffffffffc0205aa8:	8526                	mv	a0,s1
ffffffffc0205aaa:	9d9fe0ef          	jal	ra,ffffffffc0204482 <copy_to_user>
ffffffffc0205aae:	e111                	bnez	a0,ffffffffc0205ab2 <sysfile_getdirentry+0xb2>
ffffffffc0205ab0:	59f5                	li	s3,-3
ffffffffc0205ab2:	8556                	mv	a0,s5
ffffffffc0205ab4:	bd5fe0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0205ab8:	0404a823          	sw	zero,80(s1)
ffffffffc0205abc:	b755                	j	ffffffffc0205a60 <sysfile_getdirentry+0x60>
ffffffffc0205abe:	85aa                	mv	a1,a0
ffffffffc0205ac0:	4705                	li	a4,1
ffffffffc0205ac2:	46a1                	li	a3,8
ffffffffc0205ac4:	864a                	mv	a2,s2
ffffffffc0205ac6:	4501                	li	a0,0
ffffffffc0205ac8:	987fe0ef          	jal	ra,ffffffffc020444e <copy_from_user>
ffffffffc0205acc:	cd11                	beqz	a0,ffffffffc0205ae8 <sysfile_getdirentry+0xe8>
ffffffffc0205ace:	854e                	mv	a0,s3
ffffffffc0205ad0:	85a2                	mv	a1,s0
ffffffffc0205ad2:	ea6ff0ef          	jal	ra,ffffffffc0205178 <file_getdirentry>
ffffffffc0205ad6:	89aa                	mv	s3,a0
ffffffffc0205ad8:	f541                	bnez	a0,ffffffffc0205a60 <sysfile_getdirentry+0x60>
ffffffffc0205ada:	10800693          	li	a3,264
ffffffffc0205ade:	8622                	mv	a2,s0
ffffffffc0205ae0:	85ca                	mv	a1,s2
ffffffffc0205ae2:	9a1fe0ef          	jal	ra,ffffffffc0204482 <copy_to_user>
ffffffffc0205ae6:	fd2d                	bnez	a0,ffffffffc0205a60 <sysfile_getdirentry+0x60>
ffffffffc0205ae8:	59f5                	li	s3,-3
ffffffffc0205aea:	bf9d                	j	ffffffffc0205a60 <sysfile_getdirentry+0x60>
ffffffffc0205aec:	59f1                	li	s3,-4
ffffffffc0205aee:	bfa5                	j	ffffffffc0205a66 <sysfile_getdirentry+0x66>

ffffffffc0205af0 <sysfile_dup>:
ffffffffc0205af0:	f6eff06f          	j	ffffffffc020525e <file_dup>

ffffffffc0205af4 <kernel_thread_entry>:
ffffffffc0205af4:	8526                	mv	a0,s1
ffffffffc0205af6:	9402                	jalr	s0
ffffffffc0205af8:	690000ef          	jal	ra,ffffffffc0206188 <do_exit>

ffffffffc0205afc <alloc_proc>:
ffffffffc0205afc:	1141                	addi	sp,sp,-16
ffffffffc0205afe:	15000513          	li	a0,336
ffffffffc0205b02:	e022                	sd	s0,0(sp)
ffffffffc0205b04:	e406                	sd	ra,8(sp)
ffffffffc0205b06:	da4fc0ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc0205b0a:	842a                	mv	s0,a0
ffffffffc0205b0c:	c141                	beqz	a0,ffffffffc0205b8c <alloc_proc+0x90>
ffffffffc0205b0e:	57fd                	li	a5,-1
ffffffffc0205b10:	1782                	slli	a5,a5,0x20
ffffffffc0205b12:	e11c                	sd	a5,0(a0)
ffffffffc0205b14:	07000613          	li	a2,112
ffffffffc0205b18:	4581                	li	a1,0
ffffffffc0205b1a:	00052423          	sw	zero,8(a0)
ffffffffc0205b1e:	00053823          	sd	zero,16(a0)
ffffffffc0205b22:	00053c23          	sd	zero,24(a0)
ffffffffc0205b26:	02053023          	sd	zero,32(a0)
ffffffffc0205b2a:	02053423          	sd	zero,40(a0)
ffffffffc0205b2e:	03050513          	addi	a0,a0,48
ffffffffc0205b32:	2fd050ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc0205b36:	00091797          	auipc	a5,0x91
ffffffffc0205b3a:	d5a7b783          	ld	a5,-678(a5) # ffffffffc0296890 <boot_pgdir_pa>
ffffffffc0205b3e:	f45c                	sd	a5,168(s0)
ffffffffc0205b40:	0a043023          	sd	zero,160(s0)
ffffffffc0205b44:	0a042823          	sw	zero,176(s0)
ffffffffc0205b48:	463d                	li	a2,15
ffffffffc0205b4a:	4581                	li	a1,0
ffffffffc0205b4c:	0b440513          	addi	a0,s0,180
ffffffffc0205b50:	2df050ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc0205b54:	11040793          	addi	a5,s0,272
ffffffffc0205b58:	0e042623          	sw	zero,236(s0)
ffffffffc0205b5c:	0e043c23          	sd	zero,248(s0)
ffffffffc0205b60:	10043023          	sd	zero,256(s0)
ffffffffc0205b64:	0e043823          	sd	zero,240(s0)
ffffffffc0205b68:	10043423          	sd	zero,264(s0)
ffffffffc0205b6c:	10f43c23          	sd	a5,280(s0)
ffffffffc0205b70:	10f43823          	sd	a5,272(s0)
ffffffffc0205b74:	12042023          	sw	zero,288(s0)
ffffffffc0205b78:	12043423          	sd	zero,296(s0)
ffffffffc0205b7c:	12043823          	sd	zero,304(s0)
ffffffffc0205b80:	12043c23          	sd	zero,312(s0)
ffffffffc0205b84:	14043023          	sd	zero,320(s0)
ffffffffc0205b88:	14043423          	sd	zero,328(s0)
ffffffffc0205b8c:	60a2                	ld	ra,8(sp)
ffffffffc0205b8e:	8522                	mv	a0,s0
ffffffffc0205b90:	6402                	ld	s0,0(sp)
ffffffffc0205b92:	0141                	addi	sp,sp,16
ffffffffc0205b94:	8082                	ret

ffffffffc0205b96 <forkret>:
ffffffffc0205b96:	00091797          	auipc	a5,0x91
ffffffffc0205b9a:	d2a7b783          	ld	a5,-726(a5) # ffffffffc02968c0 <current>
ffffffffc0205b9e:	73c8                	ld	a0,160(a5)
ffffffffc0205ba0:	827fb06f          	j	ffffffffc02013c6 <forkrets>

ffffffffc0205ba4 <put_pgdir.isra.0>:
ffffffffc0205ba4:	1141                	addi	sp,sp,-16
ffffffffc0205ba6:	e406                	sd	ra,8(sp)
ffffffffc0205ba8:	c02007b7          	lui	a5,0xc0200
ffffffffc0205bac:	02f56e63          	bltu	a0,a5,ffffffffc0205be8 <put_pgdir.isra.0+0x44>
ffffffffc0205bb0:	00091697          	auipc	a3,0x91
ffffffffc0205bb4:	d086b683          	ld	a3,-760(a3) # ffffffffc02968b8 <va_pa_offset>
ffffffffc0205bb8:	8d15                	sub	a0,a0,a3
ffffffffc0205bba:	8131                	srli	a0,a0,0xc
ffffffffc0205bbc:	00091797          	auipc	a5,0x91
ffffffffc0205bc0:	ce47b783          	ld	a5,-796(a5) # ffffffffc02968a0 <npage>
ffffffffc0205bc4:	02f57f63          	bgeu	a0,a5,ffffffffc0205c02 <put_pgdir.isra.0+0x5e>
ffffffffc0205bc8:	0000a697          	auipc	a3,0xa
ffffffffc0205bcc:	e006b683          	ld	a3,-512(a3) # ffffffffc020f9c8 <nbase>
ffffffffc0205bd0:	60a2                	ld	ra,8(sp)
ffffffffc0205bd2:	8d15                	sub	a0,a0,a3
ffffffffc0205bd4:	00091797          	auipc	a5,0x91
ffffffffc0205bd8:	cd47b783          	ld	a5,-812(a5) # ffffffffc02968a8 <pages>
ffffffffc0205bdc:	051a                	slli	a0,a0,0x6
ffffffffc0205bde:	4585                	li	a1,1
ffffffffc0205be0:	953e                	add	a0,a0,a5
ffffffffc0205be2:	0141                	addi	sp,sp,16
ffffffffc0205be4:	ee2fc06f          	j	ffffffffc02022c6 <free_pages>
ffffffffc0205be8:	86aa                	mv	a3,a0
ffffffffc0205bea:	00007617          	auipc	a2,0x7
ffffffffc0205bee:	ca660613          	addi	a2,a2,-858 # ffffffffc020c890 <default_pmm_manager+0xe0>
ffffffffc0205bf2:	07700593          	li	a1,119
ffffffffc0205bf6:	00007517          	auipc	a0,0x7
ffffffffc0205bfa:	c1a50513          	addi	a0,a0,-998 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc0205bfe:	8a1fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0205c02:	00007617          	auipc	a2,0x7
ffffffffc0205c06:	cb660613          	addi	a2,a2,-842 # ffffffffc020c8b8 <default_pmm_manager+0x108>
ffffffffc0205c0a:	06900593          	li	a1,105
ffffffffc0205c0e:	00007517          	auipc	a0,0x7
ffffffffc0205c12:	c0250513          	addi	a0,a0,-1022 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc0205c16:	889fa0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0205c1a <setup_pgdir>:
ffffffffc0205c1a:	1101                	addi	sp,sp,-32
ffffffffc0205c1c:	e426                	sd	s1,8(sp)
ffffffffc0205c1e:	84aa                	mv	s1,a0
ffffffffc0205c20:	4505                	li	a0,1
ffffffffc0205c22:	ec06                	sd	ra,24(sp)
ffffffffc0205c24:	e822                	sd	s0,16(sp)
ffffffffc0205c26:	e62fc0ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc0205c2a:	c939                	beqz	a0,ffffffffc0205c80 <setup_pgdir+0x66>
ffffffffc0205c2c:	00091697          	auipc	a3,0x91
ffffffffc0205c30:	c7c6b683          	ld	a3,-900(a3) # ffffffffc02968a8 <pages>
ffffffffc0205c34:	40d506b3          	sub	a3,a0,a3
ffffffffc0205c38:	8699                	srai	a3,a3,0x6
ffffffffc0205c3a:	0000a417          	auipc	s0,0xa
ffffffffc0205c3e:	d8e43403          	ld	s0,-626(s0) # ffffffffc020f9c8 <nbase>
ffffffffc0205c42:	96a2                	add	a3,a3,s0
ffffffffc0205c44:	00c69793          	slli	a5,a3,0xc
ffffffffc0205c48:	83b1                	srli	a5,a5,0xc
ffffffffc0205c4a:	00091717          	auipc	a4,0x91
ffffffffc0205c4e:	c5673703          	ld	a4,-938(a4) # ffffffffc02968a0 <npage>
ffffffffc0205c52:	06b2                	slli	a3,a3,0xc
ffffffffc0205c54:	02e7f863          	bgeu	a5,a4,ffffffffc0205c84 <setup_pgdir+0x6a>
ffffffffc0205c58:	00091417          	auipc	s0,0x91
ffffffffc0205c5c:	c6043403          	ld	s0,-928(s0) # ffffffffc02968b8 <va_pa_offset>
ffffffffc0205c60:	9436                	add	s0,s0,a3
ffffffffc0205c62:	6605                	lui	a2,0x1
ffffffffc0205c64:	00091597          	auipc	a1,0x91
ffffffffc0205c68:	c345b583          	ld	a1,-972(a1) # ffffffffc0296898 <boot_pgdir_va>
ffffffffc0205c6c:	8522                	mv	a0,s0
ffffffffc0205c6e:	213050ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc0205c72:	4501                	li	a0,0
ffffffffc0205c74:	ec80                	sd	s0,24(s1)
ffffffffc0205c76:	60e2                	ld	ra,24(sp)
ffffffffc0205c78:	6442                	ld	s0,16(sp)
ffffffffc0205c7a:	64a2                	ld	s1,8(sp)
ffffffffc0205c7c:	6105                	addi	sp,sp,32
ffffffffc0205c7e:	8082                	ret
ffffffffc0205c80:	5571                	li	a0,-4
ffffffffc0205c82:	bfd5                	j	ffffffffc0205c76 <setup_pgdir+0x5c>
ffffffffc0205c84:	00007617          	auipc	a2,0x7
ffffffffc0205c88:	b6460613          	addi	a2,a2,-1180 # ffffffffc020c7e8 <default_pmm_manager+0x38>
ffffffffc0205c8c:	07100593          	li	a1,113
ffffffffc0205c90:	00007517          	auipc	a0,0x7
ffffffffc0205c94:	b8050513          	addi	a0,a0,-1152 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc0205c98:	807fa0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0205c9c <proc_run>:
ffffffffc0205c9c:	7179                	addi	sp,sp,-48
ffffffffc0205c9e:	ec4a                	sd	s2,24(sp)
ffffffffc0205ca0:	00091917          	auipc	s2,0x91
ffffffffc0205ca4:	c2090913          	addi	s2,s2,-992 # ffffffffc02968c0 <current>
ffffffffc0205ca8:	f026                	sd	s1,32(sp)
ffffffffc0205caa:	00093483          	ld	s1,0(s2)
ffffffffc0205cae:	f406                	sd	ra,40(sp)
ffffffffc0205cb0:	e84e                	sd	s3,16(sp)
ffffffffc0205cb2:	02a48a63          	beq	s1,a0,ffffffffc0205ce6 <proc_run+0x4a>
ffffffffc0205cb6:	100027f3          	csrr	a5,sstatus
ffffffffc0205cba:	8b89                	andi	a5,a5,2
ffffffffc0205cbc:	4981                	li	s3,0
ffffffffc0205cbe:	e3a9                	bnez	a5,ffffffffc0205d00 <proc_run+0x64>
ffffffffc0205cc0:	755c                	ld	a5,168(a0)
ffffffffc0205cc2:	577d                	li	a4,-1
ffffffffc0205cc4:	177e                	slli	a4,a4,0x3f
ffffffffc0205cc6:	83b1                	srli	a5,a5,0xc
ffffffffc0205cc8:	00a93023          	sd	a0,0(s2)
ffffffffc0205ccc:	8fd9                	or	a5,a5,a4
ffffffffc0205cce:	18079073          	csrw	satp,a5
ffffffffc0205cd2:	12000073          	sfence.vma
ffffffffc0205cd6:	03050593          	addi	a1,a0,48
ffffffffc0205cda:	03048513          	addi	a0,s1,48
ffffffffc0205cde:	528010ef          	jal	ra,ffffffffc0207206 <switch_to>
ffffffffc0205ce2:	00099863          	bnez	s3,ffffffffc0205cf2 <proc_run+0x56>
ffffffffc0205ce6:	70a2                	ld	ra,40(sp)
ffffffffc0205ce8:	7482                	ld	s1,32(sp)
ffffffffc0205cea:	6962                	ld	s2,24(sp)
ffffffffc0205cec:	69c2                	ld	s3,16(sp)
ffffffffc0205cee:	6145                	addi	sp,sp,48
ffffffffc0205cf0:	8082                	ret
ffffffffc0205cf2:	70a2                	ld	ra,40(sp)
ffffffffc0205cf4:	7482                	ld	s1,32(sp)
ffffffffc0205cf6:	6962                	ld	s2,24(sp)
ffffffffc0205cf8:	69c2                	ld	s3,16(sp)
ffffffffc0205cfa:	6145                	addi	sp,sp,48
ffffffffc0205cfc:	f71fa06f          	j	ffffffffc0200c6c <intr_enable>
ffffffffc0205d00:	e42a                	sd	a0,8(sp)
ffffffffc0205d02:	f71fa0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0205d06:	6522                	ld	a0,8(sp)
ffffffffc0205d08:	4985                	li	s3,1
ffffffffc0205d0a:	bf5d                	j	ffffffffc0205cc0 <proc_run+0x24>

ffffffffc0205d0c <do_fork>:
ffffffffc0205d0c:	7119                	addi	sp,sp,-128
ffffffffc0205d0e:	f4a6                	sd	s1,104(sp)
ffffffffc0205d10:	00091497          	auipc	s1,0x91
ffffffffc0205d14:	bc848493          	addi	s1,s1,-1080 # ffffffffc02968d8 <nr_process>
ffffffffc0205d18:	4098                	lw	a4,0(s1)
ffffffffc0205d1a:	fc86                	sd	ra,120(sp)
ffffffffc0205d1c:	f8a2                	sd	s0,112(sp)
ffffffffc0205d1e:	f0ca                	sd	s2,96(sp)
ffffffffc0205d20:	ecce                	sd	s3,88(sp)
ffffffffc0205d22:	e8d2                	sd	s4,80(sp)
ffffffffc0205d24:	e4d6                	sd	s5,72(sp)
ffffffffc0205d26:	e0da                	sd	s6,64(sp)
ffffffffc0205d28:	fc5e                	sd	s7,56(sp)
ffffffffc0205d2a:	f862                	sd	s8,48(sp)
ffffffffc0205d2c:	f466                	sd	s9,40(sp)
ffffffffc0205d2e:	f06a                	sd	s10,32(sp)
ffffffffc0205d30:	ec6e                	sd	s11,24(sp)
ffffffffc0205d32:	6785                	lui	a5,0x1
ffffffffc0205d34:	32f75563          	bge	a4,a5,ffffffffc020605e <do_fork+0x352>
ffffffffc0205d38:	89aa                	mv	s3,a0
ffffffffc0205d3a:	8a2e                	mv	s4,a1
ffffffffc0205d3c:	8932                	mv	s2,a2
ffffffffc0205d3e:	dbfff0ef          	jal	ra,ffffffffc0205afc <alloc_proc>
ffffffffc0205d42:	842a                	mv	s0,a0
ffffffffc0205d44:	34050163          	beqz	a0,ffffffffc0206086 <do_fork+0x37a>
ffffffffc0205d48:	00091b97          	auipc	s7,0x91
ffffffffc0205d4c:	b78b8b93          	addi	s7,s7,-1160 # ffffffffc02968c0 <current>
ffffffffc0205d50:	000bb783          	ld	a5,0(s7)
ffffffffc0205d54:	0ec7a703          	lw	a4,236(a5) # 10ec <_binary_bin_swap_img_size-0x6c14>
ffffffffc0205d58:	f11c                	sd	a5,32(a0)
ffffffffc0205d5a:	34071b63          	bnez	a4,ffffffffc02060b0 <do_fork+0x3a4>
ffffffffc0205d5e:	4509                	li	a0,2
ffffffffc0205d60:	d28fc0ef          	jal	ra,ffffffffc0202288 <alloc_pages>
ffffffffc0205d64:	2e050763          	beqz	a0,ffffffffc0206052 <do_fork+0x346>
ffffffffc0205d68:	00091d17          	auipc	s10,0x91
ffffffffc0205d6c:	b40d0d13          	addi	s10,s10,-1216 # ffffffffc02968a8 <pages>
ffffffffc0205d70:	000d3683          	ld	a3,0(s10)
ffffffffc0205d74:	0000ac97          	auipc	s9,0xa
ffffffffc0205d78:	c54cbc83          	ld	s9,-940(s9) # ffffffffc020f9c8 <nbase>
ffffffffc0205d7c:	00091d97          	auipc	s11,0x91
ffffffffc0205d80:	b24d8d93          	addi	s11,s11,-1244 # ffffffffc02968a0 <npage>
ffffffffc0205d84:	40d506b3          	sub	a3,a0,a3
ffffffffc0205d88:	8699                	srai	a3,a3,0x6
ffffffffc0205d8a:	96e6                	add	a3,a3,s9
ffffffffc0205d8c:	000db703          	ld	a4,0(s11)
ffffffffc0205d90:	00c69793          	slli	a5,a3,0xc
ffffffffc0205d94:	83b1                	srli	a5,a5,0xc
ffffffffc0205d96:	06b2                	slli	a3,a3,0xc
ffffffffc0205d98:	30e7f063          	bgeu	a5,a4,ffffffffc0206098 <do_fork+0x38c>
ffffffffc0205d9c:	000bb703          	ld	a4,0(s7)
ffffffffc0205da0:	00091c17          	auipc	s8,0x91
ffffffffc0205da4:	b18c0c13          	addi	s8,s8,-1256 # ffffffffc02968b8 <va_pa_offset>
ffffffffc0205da8:	000c3783          	ld	a5,0(s8)
ffffffffc0205dac:	02873a83          	ld	s5,40(a4)
ffffffffc0205db0:	96be                	add	a3,a3,a5
ffffffffc0205db2:	e814                	sd	a3,16(s0)
ffffffffc0205db4:	020a8963          	beqz	s5,ffffffffc0205de6 <do_fork+0xda>
ffffffffc0205db8:	1009f793          	andi	a5,s3,256
ffffffffc0205dbc:	10078f63          	beqz	a5,ffffffffc0205eda <do_fork+0x1ce>
ffffffffc0205dc0:	030aa783          	lw	a5,48(s5) # 1030 <_binary_bin_swap_img_size-0x6cd0>
ffffffffc0205dc4:	018ab683          	ld	a3,24(s5)
ffffffffc0205dc8:	c0200737          	lui	a4,0xc0200
ffffffffc0205dcc:	2785                	addiw	a5,a5,1
ffffffffc0205dce:	02faa823          	sw	a5,48(s5)
ffffffffc0205dd2:	03543423          	sd	s5,40(s0)
ffffffffc0205dd6:	2ee6ed63          	bltu	a3,a4,ffffffffc02060d0 <do_fork+0x3c4>
ffffffffc0205dda:	000c3783          	ld	a5,0(s8)
ffffffffc0205dde:	000bb703          	ld	a4,0(s7)
ffffffffc0205de2:	8e9d                	sub	a3,a3,a5
ffffffffc0205de4:	f454                	sd	a3,168(s0)
ffffffffc0205de6:	14873a83          	ld	s5,328(a4) # ffffffffc0200148 <readline+0x96>
ffffffffc0205dea:	320a8763          	beqz	s5,ffffffffc0206118 <do_fork+0x40c>
ffffffffc0205dee:	00b9d993          	srli	s3,s3,0xb
ffffffffc0205df2:	0019f993          	andi	s3,s3,1
ffffffffc0205df6:	12098963          	beqz	s3,ffffffffc0205f28 <do_fork+0x21c>
ffffffffc0205dfa:	010aa783          	lw	a5,16(s5)
ffffffffc0205dfe:	6818                	ld	a4,16(s0)
ffffffffc0205e00:	864a                	mv	a2,s2
ffffffffc0205e02:	2785                	addiw	a5,a5,1
ffffffffc0205e04:	00faa823          	sw	a5,16(s5)
ffffffffc0205e08:	6789                	lui	a5,0x2
ffffffffc0205e0a:	ee078793          	addi	a5,a5,-288 # 1ee0 <_binary_bin_swap_img_size-0x5e20>
ffffffffc0205e0e:	973e                	add	a4,a4,a5
ffffffffc0205e10:	15543423          	sd	s5,328(s0)
ffffffffc0205e14:	f058                	sd	a4,160(s0)
ffffffffc0205e16:	87ba                	mv	a5,a4
ffffffffc0205e18:	12090893          	addi	a7,s2,288
ffffffffc0205e1c:	00063803          	ld	a6,0(a2)
ffffffffc0205e20:	6608                	ld	a0,8(a2)
ffffffffc0205e22:	6a0c                	ld	a1,16(a2)
ffffffffc0205e24:	6e14                	ld	a3,24(a2)
ffffffffc0205e26:	0107b023          	sd	a6,0(a5)
ffffffffc0205e2a:	e788                	sd	a0,8(a5)
ffffffffc0205e2c:	eb8c                	sd	a1,16(a5)
ffffffffc0205e2e:	ef94                	sd	a3,24(a5)
ffffffffc0205e30:	02060613          	addi	a2,a2,32
ffffffffc0205e34:	02078793          	addi	a5,a5,32
ffffffffc0205e38:	ff1612e3          	bne	a2,a7,ffffffffc0205e1c <do_fork+0x110>
ffffffffc0205e3c:	04073823          	sd	zero,80(a4)
ffffffffc0205e40:	100a0e63          	beqz	s4,ffffffffc0205f5c <do_fork+0x250>
ffffffffc0205e44:	01473823          	sd	s4,16(a4)
ffffffffc0205e48:	00000797          	auipc	a5,0x0
ffffffffc0205e4c:	d4e78793          	addi	a5,a5,-690 # ffffffffc0205b96 <forkret>
ffffffffc0205e50:	f81c                	sd	a5,48(s0)
ffffffffc0205e52:	fc18                	sd	a4,56(s0)
ffffffffc0205e54:	100027f3          	csrr	a5,sstatus
ffffffffc0205e58:	8b89                	andi	a5,a5,2
ffffffffc0205e5a:	4981                	li	s3,0
ffffffffc0205e5c:	1e079d63          	bnez	a5,ffffffffc0206056 <do_fork+0x34a>
ffffffffc0205e60:	0008b817          	auipc	a6,0x8b
ffffffffc0205e64:	1f880813          	addi	a6,a6,504 # ffffffffc0291058 <last_pid.1>
ffffffffc0205e68:	00082783          	lw	a5,0(a6)
ffffffffc0205e6c:	6709                	lui	a4,0x2
ffffffffc0205e6e:	0017851b          	addiw	a0,a5,1
ffffffffc0205e72:	00a82023          	sw	a0,0(a6)
ffffffffc0205e76:	1ae55d63          	bge	a0,a4,ffffffffc0206030 <do_fork+0x324>
ffffffffc0205e7a:	0008b317          	auipc	t1,0x8b
ffffffffc0205e7e:	1e230313          	addi	t1,t1,482 # ffffffffc029105c <next_safe.0>
ffffffffc0205e82:	00032783          	lw	a5,0(t1)
ffffffffc0205e86:	00090917          	auipc	s2,0x90
ffffffffc0205e8a:	93a90913          	addi	s2,s2,-1734 # ffffffffc02957c0 <proc_list>
ffffffffc0205e8e:	0ef54163          	blt	a0,a5,ffffffffc0205f70 <do_fork+0x264>
ffffffffc0205e92:	00090917          	auipc	s2,0x90
ffffffffc0205e96:	92e90913          	addi	s2,s2,-1746 # ffffffffc02957c0 <proc_list>
ffffffffc0205e9a:	00893e03          	ld	t3,8(s2)
ffffffffc0205e9e:	6789                	lui	a5,0x2
ffffffffc0205ea0:	00f32023          	sw	a5,0(t1)
ffffffffc0205ea4:	86aa                	mv	a3,a0
ffffffffc0205ea6:	4581                	li	a1,0
ffffffffc0205ea8:	6e89                	lui	t4,0x2
ffffffffc0205eaa:	1d2e0963          	beq	t3,s2,ffffffffc020607c <do_fork+0x370>
ffffffffc0205eae:	88ae                	mv	a7,a1
ffffffffc0205eb0:	87f2                	mv	a5,t3
ffffffffc0205eb2:	6609                	lui	a2,0x2
ffffffffc0205eb4:	a811                	j	ffffffffc0205ec8 <do_fork+0x1bc>
ffffffffc0205eb6:	00e6d663          	bge	a3,a4,ffffffffc0205ec2 <do_fork+0x1b6>
ffffffffc0205eba:	00c75463          	bge	a4,a2,ffffffffc0205ec2 <do_fork+0x1b6>
ffffffffc0205ebe:	863a                	mv	a2,a4
ffffffffc0205ec0:	4885                	li	a7,1
ffffffffc0205ec2:	679c                	ld	a5,8(a5)
ffffffffc0205ec4:	09278e63          	beq	a5,s2,ffffffffc0205f60 <do_fork+0x254>
ffffffffc0205ec8:	f3c7a703          	lw	a4,-196(a5) # 1f3c <_binary_bin_swap_img_size-0x5dc4>
ffffffffc0205ecc:	fed715e3          	bne	a4,a3,ffffffffc0205eb6 <do_fork+0x1aa>
ffffffffc0205ed0:	2685                	addiw	a3,a3,1
ffffffffc0205ed2:	16c6db63          	bge	a3,a2,ffffffffc0206048 <do_fork+0x33c>
ffffffffc0205ed6:	4585                	li	a1,1
ffffffffc0205ed8:	b7ed                	j	ffffffffc0205ec2 <do_fork+0x1b6>
ffffffffc0205eda:	e57fd0ef          	jal	ra,ffffffffc0203d30 <mm_create>
ffffffffc0205ede:	e42a                	sd	a0,8(sp)
ffffffffc0205ee0:	1a050563          	beqz	a0,ffffffffc020608a <do_fork+0x37e>
ffffffffc0205ee4:	d37ff0ef          	jal	ra,ffffffffc0205c1a <setup_pgdir>
ffffffffc0205ee8:	67a2                	ld	a5,8(sp)
ffffffffc0205eea:	10051563          	bnez	a0,ffffffffc0205ff4 <do_fork+0x2e8>
ffffffffc0205eee:	038a8b13          	addi	s6,s5,56
ffffffffc0205ef2:	855a                	mv	a0,s6
ffffffffc0205ef4:	f98fe0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc0205ef8:	000bb703          	ld	a4,0(s7)
ffffffffc0205efc:	67a2                	ld	a5,8(sp)
ffffffffc0205efe:	c701                	beqz	a4,ffffffffc0205f06 <do_fork+0x1fa>
ffffffffc0205f00:	4358                	lw	a4,4(a4)
ffffffffc0205f02:	04eaa823          	sw	a4,80(s5)
ffffffffc0205f06:	853e                	mv	a0,a5
ffffffffc0205f08:	85d6                	mv	a1,s5
ffffffffc0205f0a:	e43e                	sd	a5,8(sp)
ffffffffc0205f0c:	874fe0ef          	jal	ra,ffffffffc0203f80 <dup_mmap>
ffffffffc0205f10:	872a                	mv	a4,a0
ffffffffc0205f12:	855a                	mv	a0,s6
ffffffffc0205f14:	8b3a                	mv	s6,a4
ffffffffc0205f16:	f72fe0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0205f1a:	040aa823          	sw	zero,80(s5)
ffffffffc0205f1e:	67a2                	ld	a5,8(sp)
ffffffffc0205f20:	140b1163          	bnez	s6,ffffffffc0206062 <do_fork+0x356>
ffffffffc0205f24:	8abe                	mv	s5,a5
ffffffffc0205f26:	bd69                	j	ffffffffc0205dc0 <do_fork+0xb4>
ffffffffc0205f28:	bceff0ef          	jal	ra,ffffffffc02052f6 <files_create>
ffffffffc0205f2c:	89aa                	mv	s3,a0
ffffffffc0205f2e:	16050363          	beqz	a0,ffffffffc0206094 <do_fork+0x388>
ffffffffc0205f32:	85d6                	mv	a1,s5
ffffffffc0205f34:	cfaff0ef          	jal	ra,ffffffffc020542e <dup_files>
ffffffffc0205f38:	8b2a                	mv	s6,a0
ffffffffc0205f3a:	8ace                	mv	s5,s3
ffffffffc0205f3c:	ea050fe3          	beqz	a0,ffffffffc0205dfa <do_fork+0xee>
ffffffffc0205f40:	854e                	mv	a0,s3
ffffffffc0205f42:	beaff0ef          	jal	ra,ffffffffc020532c <files_destroy>
ffffffffc0205f46:	14843503          	ld	a0,328(s0)
ffffffffc0205f4a:	c94d                	beqz	a0,ffffffffc0205ffc <do_fork+0x2f0>
ffffffffc0205f4c:	491c                	lw	a5,16(a0)
ffffffffc0205f4e:	fff7871b          	addiw	a4,a5,-1
ffffffffc0205f52:	c918                	sw	a4,16(a0)
ffffffffc0205f54:	e745                	bnez	a4,ffffffffc0205ffc <do_fork+0x2f0>
ffffffffc0205f56:	bd6ff0ef          	jal	ra,ffffffffc020532c <files_destroy>
ffffffffc0205f5a:	a04d                	j	ffffffffc0205ffc <do_fork+0x2f0>
ffffffffc0205f5c:	8a3a                	mv	s4,a4
ffffffffc0205f5e:	b5dd                	j	ffffffffc0205e44 <do_fork+0x138>
ffffffffc0205f60:	c581                	beqz	a1,ffffffffc0205f68 <do_fork+0x25c>
ffffffffc0205f62:	00d82023          	sw	a3,0(a6)
ffffffffc0205f66:	8536                	mv	a0,a3
ffffffffc0205f68:	00088463          	beqz	a7,ffffffffc0205f70 <do_fork+0x264>
ffffffffc0205f6c:	00c32023          	sw	a2,0(t1)
ffffffffc0205f70:	c048                	sw	a0,4(s0)
ffffffffc0205f72:	45a9                	li	a1,10
ffffffffc0205f74:	2501                	sext.w	a0,a0
ffffffffc0205f76:	184050ef          	jal	ra,ffffffffc020b0fa <hash32>
ffffffffc0205f7a:	02051793          	slli	a5,a0,0x20
ffffffffc0205f7e:	01c7d513          	srli	a0,a5,0x1c
ffffffffc0205f82:	0008c797          	auipc	a5,0x8c
ffffffffc0205f86:	83e78793          	addi	a5,a5,-1986 # ffffffffc02917c0 <hash_list>
ffffffffc0205f8a:	953e                	add	a0,a0,a5
ffffffffc0205f8c:	650c                	ld	a1,8(a0)
ffffffffc0205f8e:	7014                	ld	a3,32(s0)
ffffffffc0205f90:	0d840793          	addi	a5,s0,216
ffffffffc0205f94:	e19c                	sd	a5,0(a1)
ffffffffc0205f96:	00893603          	ld	a2,8(s2)
ffffffffc0205f9a:	e51c                	sd	a5,8(a0)
ffffffffc0205f9c:	7af8                	ld	a4,240(a3)
ffffffffc0205f9e:	0c840793          	addi	a5,s0,200
ffffffffc0205fa2:	f06c                	sd	a1,224(s0)
ffffffffc0205fa4:	ec68                	sd	a0,216(s0)
ffffffffc0205fa6:	e21c                	sd	a5,0(a2)
ffffffffc0205fa8:	00f93423          	sd	a5,8(s2)
ffffffffc0205fac:	e870                	sd	a2,208(s0)
ffffffffc0205fae:	0d243423          	sd	s2,200(s0)
ffffffffc0205fb2:	0e043c23          	sd	zero,248(s0)
ffffffffc0205fb6:	10e43023          	sd	a4,256(s0)
ffffffffc0205fba:	c311                	beqz	a4,ffffffffc0205fbe <do_fork+0x2b2>
ffffffffc0205fbc:	ff60                	sd	s0,248(a4)
ffffffffc0205fbe:	409c                	lw	a5,0(s1)
ffffffffc0205fc0:	fae0                	sd	s0,240(a3)
ffffffffc0205fc2:	2785                	addiw	a5,a5,1
ffffffffc0205fc4:	c09c                	sw	a5,0(s1)
ffffffffc0205fc6:	06099e63          	bnez	s3,ffffffffc0206042 <do_fork+0x336>
ffffffffc0205fca:	8522                	mv	a0,s0
ffffffffc0205fcc:	3de010ef          	jal	ra,ffffffffc02073aa <wakeup_proc>
ffffffffc0205fd0:	00442b03          	lw	s6,4(s0)
ffffffffc0205fd4:	70e6                	ld	ra,120(sp)
ffffffffc0205fd6:	7446                	ld	s0,112(sp)
ffffffffc0205fd8:	74a6                	ld	s1,104(sp)
ffffffffc0205fda:	7906                	ld	s2,96(sp)
ffffffffc0205fdc:	69e6                	ld	s3,88(sp)
ffffffffc0205fde:	6a46                	ld	s4,80(sp)
ffffffffc0205fe0:	6aa6                	ld	s5,72(sp)
ffffffffc0205fe2:	7be2                	ld	s7,56(sp)
ffffffffc0205fe4:	7c42                	ld	s8,48(sp)
ffffffffc0205fe6:	7ca2                	ld	s9,40(sp)
ffffffffc0205fe8:	7d02                	ld	s10,32(sp)
ffffffffc0205fea:	6de2                	ld	s11,24(sp)
ffffffffc0205fec:	855a                	mv	a0,s6
ffffffffc0205fee:	6b06                	ld	s6,64(sp)
ffffffffc0205ff0:	6109                	addi	sp,sp,128
ffffffffc0205ff2:	8082                	ret
ffffffffc0205ff4:	853e                	mv	a0,a5
ffffffffc0205ff6:	e89fd0ef          	jal	ra,ffffffffc0203e7e <mm_destroy>
ffffffffc0205ffa:	5b71                	li	s6,-4
ffffffffc0205ffc:	6814                	ld	a3,16(s0)
ffffffffc0205ffe:	c02007b7          	lui	a5,0xc0200
ffffffffc0206002:	0ef6ef63          	bltu	a3,a5,ffffffffc0206100 <do_fork+0x3f4>
ffffffffc0206006:	000c3703          	ld	a4,0(s8)
ffffffffc020600a:	000db783          	ld	a5,0(s11)
ffffffffc020600e:	8e99                	sub	a3,a3,a4
ffffffffc0206010:	82b1                	srli	a3,a3,0xc
ffffffffc0206012:	0cf6fb63          	bgeu	a3,a5,ffffffffc02060e8 <do_fork+0x3dc>
ffffffffc0206016:	000d3503          	ld	a0,0(s10)
ffffffffc020601a:	419686b3          	sub	a3,a3,s9
ffffffffc020601e:	069a                	slli	a3,a3,0x6
ffffffffc0206020:	4589                	li	a1,2
ffffffffc0206022:	9536                	add	a0,a0,a3
ffffffffc0206024:	aa2fc0ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc0206028:	8522                	mv	a0,s0
ffffffffc020602a:	930fc0ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc020602e:	b75d                	j	ffffffffc0205fd4 <do_fork+0x2c8>
ffffffffc0206030:	4785                	li	a5,1
ffffffffc0206032:	00f82023          	sw	a5,0(a6)
ffffffffc0206036:	4505                	li	a0,1
ffffffffc0206038:	0008b317          	auipc	t1,0x8b
ffffffffc020603c:	02430313          	addi	t1,t1,36 # ffffffffc029105c <next_safe.0>
ffffffffc0206040:	bd89                	j	ffffffffc0205e92 <do_fork+0x186>
ffffffffc0206042:	c2bfa0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0206046:	b751                	j	ffffffffc0205fca <do_fork+0x2be>
ffffffffc0206048:	01d6c363          	blt	a3,t4,ffffffffc020604e <do_fork+0x342>
ffffffffc020604c:	4685                	li	a3,1
ffffffffc020604e:	4585                	li	a1,1
ffffffffc0206050:	bda9                	j	ffffffffc0205eaa <do_fork+0x19e>
ffffffffc0206052:	5b71                	li	s6,-4
ffffffffc0206054:	bfd1                	j	ffffffffc0206028 <do_fork+0x31c>
ffffffffc0206056:	c1dfa0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc020605a:	4985                	li	s3,1
ffffffffc020605c:	b511                	j	ffffffffc0205e60 <do_fork+0x154>
ffffffffc020605e:	5b6d                	li	s6,-5
ffffffffc0206060:	bf95                	j	ffffffffc0205fd4 <do_fork+0x2c8>
ffffffffc0206062:	853e                	mv	a0,a5
ffffffffc0206064:	e43e                	sd	a5,8(sp)
ffffffffc0206066:	fb5fd0ef          	jal	ra,ffffffffc020401a <exit_mmap>
ffffffffc020606a:	67a2                	ld	a5,8(sp)
ffffffffc020606c:	6f88                	ld	a0,24(a5)
ffffffffc020606e:	b37ff0ef          	jal	ra,ffffffffc0205ba4 <put_pgdir.isra.0>
ffffffffc0206072:	67a2                	ld	a5,8(sp)
ffffffffc0206074:	853e                	mv	a0,a5
ffffffffc0206076:	e09fd0ef          	jal	ra,ffffffffc0203e7e <mm_destroy>
ffffffffc020607a:	b749                	j	ffffffffc0205ffc <do_fork+0x2f0>
ffffffffc020607c:	c989                	beqz	a1,ffffffffc020608e <do_fork+0x382>
ffffffffc020607e:	00d82023          	sw	a3,0(a6)
ffffffffc0206082:	8536                	mv	a0,a3
ffffffffc0206084:	b5f5                	j	ffffffffc0205f70 <do_fork+0x264>
ffffffffc0206086:	5b71                	li	s6,-4
ffffffffc0206088:	b7b1                	j	ffffffffc0205fd4 <do_fork+0x2c8>
ffffffffc020608a:	5b71                	li	s6,-4
ffffffffc020608c:	bf85                	j	ffffffffc0205ffc <do_fork+0x2f0>
ffffffffc020608e:	00082503          	lw	a0,0(a6)
ffffffffc0206092:	bdf9                	j	ffffffffc0205f70 <do_fork+0x264>
ffffffffc0206094:	5b71                	li	s6,-4
ffffffffc0206096:	bd45                	j	ffffffffc0205f46 <do_fork+0x23a>
ffffffffc0206098:	00006617          	auipc	a2,0x6
ffffffffc020609c:	75060613          	addi	a2,a2,1872 # ffffffffc020c7e8 <default_pmm_manager+0x38>
ffffffffc02060a0:	07100593          	li	a1,113
ffffffffc02060a4:	00006517          	auipc	a0,0x6
ffffffffc02060a8:	76c50513          	addi	a0,a0,1900 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc02060ac:	bf2fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02060b0:	00007697          	auipc	a3,0x7
ffffffffc02060b4:	70868693          	addi	a3,a3,1800 # ffffffffc020d7b8 <CSWTCH.79+0xf0>
ffffffffc02060b8:	00006617          	auipc	a2,0x6
ffffffffc02060bc:	a5860613          	addi	a2,a2,-1448 # ffffffffc020bb10 <commands+0x210>
ffffffffc02060c0:	23100593          	li	a1,561
ffffffffc02060c4:	00007517          	auipc	a0,0x7
ffffffffc02060c8:	71450513          	addi	a0,a0,1812 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc02060cc:	bd2fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02060d0:	00006617          	auipc	a2,0x6
ffffffffc02060d4:	7c060613          	addi	a2,a2,1984 # ffffffffc020c890 <default_pmm_manager+0xe0>
ffffffffc02060d8:	1ad00593          	li	a1,429
ffffffffc02060dc:	00007517          	auipc	a0,0x7
ffffffffc02060e0:	6fc50513          	addi	a0,a0,1788 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc02060e4:	bbafa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02060e8:	00006617          	auipc	a2,0x6
ffffffffc02060ec:	7d060613          	addi	a2,a2,2000 # ffffffffc020c8b8 <default_pmm_manager+0x108>
ffffffffc02060f0:	06900593          	li	a1,105
ffffffffc02060f4:	00006517          	auipc	a0,0x6
ffffffffc02060f8:	71c50513          	addi	a0,a0,1820 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc02060fc:	ba2fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206100:	00006617          	auipc	a2,0x6
ffffffffc0206104:	79060613          	addi	a2,a2,1936 # ffffffffc020c890 <default_pmm_manager+0xe0>
ffffffffc0206108:	07700593          	li	a1,119
ffffffffc020610c:	00006517          	auipc	a0,0x6
ffffffffc0206110:	70450513          	addi	a0,a0,1796 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc0206114:	b8afa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206118:	00007697          	auipc	a3,0x7
ffffffffc020611c:	6d868693          	addi	a3,a3,1752 # ffffffffc020d7f0 <CSWTCH.79+0x128>
ffffffffc0206120:	00006617          	auipc	a2,0x6
ffffffffc0206124:	9f060613          	addi	a2,a2,-1552 # ffffffffc020bb10 <commands+0x210>
ffffffffc0206128:	1cd00593          	li	a1,461
ffffffffc020612c:	00007517          	auipc	a0,0x7
ffffffffc0206130:	6ac50513          	addi	a0,a0,1708 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc0206134:	b6afa0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0206138 <kernel_thread>:
ffffffffc0206138:	7129                	addi	sp,sp,-320
ffffffffc020613a:	fa22                	sd	s0,304(sp)
ffffffffc020613c:	f626                	sd	s1,296(sp)
ffffffffc020613e:	f24a                	sd	s2,288(sp)
ffffffffc0206140:	84ae                	mv	s1,a1
ffffffffc0206142:	892a                	mv	s2,a0
ffffffffc0206144:	8432                	mv	s0,a2
ffffffffc0206146:	4581                	li	a1,0
ffffffffc0206148:	12000613          	li	a2,288
ffffffffc020614c:	850a                	mv	a0,sp
ffffffffc020614e:	fe06                	sd	ra,312(sp)
ffffffffc0206150:	4de050ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc0206154:	e0ca                	sd	s2,64(sp)
ffffffffc0206156:	e4a6                	sd	s1,72(sp)
ffffffffc0206158:	100027f3          	csrr	a5,sstatus
ffffffffc020615c:	edd7f793          	andi	a5,a5,-291
ffffffffc0206160:	1207e793          	ori	a5,a5,288
ffffffffc0206164:	e23e                	sd	a5,256(sp)
ffffffffc0206166:	860a                	mv	a2,sp
ffffffffc0206168:	10046513          	ori	a0,s0,256
ffffffffc020616c:	00000797          	auipc	a5,0x0
ffffffffc0206170:	98878793          	addi	a5,a5,-1656 # ffffffffc0205af4 <kernel_thread_entry>
ffffffffc0206174:	4581                	li	a1,0
ffffffffc0206176:	e63e                	sd	a5,264(sp)
ffffffffc0206178:	b95ff0ef          	jal	ra,ffffffffc0205d0c <do_fork>
ffffffffc020617c:	70f2                	ld	ra,312(sp)
ffffffffc020617e:	7452                	ld	s0,304(sp)
ffffffffc0206180:	74b2                	ld	s1,296(sp)
ffffffffc0206182:	7912                	ld	s2,288(sp)
ffffffffc0206184:	6131                	addi	sp,sp,320
ffffffffc0206186:	8082                	ret

ffffffffc0206188 <do_exit>:
ffffffffc0206188:	7179                	addi	sp,sp,-48
ffffffffc020618a:	f022                	sd	s0,32(sp)
ffffffffc020618c:	00090417          	auipc	s0,0x90
ffffffffc0206190:	73440413          	addi	s0,s0,1844 # ffffffffc02968c0 <current>
ffffffffc0206194:	601c                	ld	a5,0(s0)
ffffffffc0206196:	f406                	sd	ra,40(sp)
ffffffffc0206198:	ec26                	sd	s1,24(sp)
ffffffffc020619a:	e84a                	sd	s2,16(sp)
ffffffffc020619c:	e44e                	sd	s3,8(sp)
ffffffffc020619e:	e052                	sd	s4,0(sp)
ffffffffc02061a0:	00090717          	auipc	a4,0x90
ffffffffc02061a4:	72873703          	ld	a4,1832(a4) # ffffffffc02968c8 <idleproc>
ffffffffc02061a8:	0ee78763          	beq	a5,a4,ffffffffc0206296 <do_exit+0x10e>
ffffffffc02061ac:	00090497          	auipc	s1,0x90
ffffffffc02061b0:	72448493          	addi	s1,s1,1828 # ffffffffc02968d0 <initproc>
ffffffffc02061b4:	6098                	ld	a4,0(s1)
ffffffffc02061b6:	10e78763          	beq	a5,a4,ffffffffc02062c4 <do_exit+0x13c>
ffffffffc02061ba:	0287b983          	ld	s3,40(a5)
ffffffffc02061be:	892a                	mv	s2,a0
ffffffffc02061c0:	02098e63          	beqz	s3,ffffffffc02061fc <do_exit+0x74>
ffffffffc02061c4:	00090797          	auipc	a5,0x90
ffffffffc02061c8:	6cc7b783          	ld	a5,1740(a5) # ffffffffc0296890 <boot_pgdir_pa>
ffffffffc02061cc:	577d                	li	a4,-1
ffffffffc02061ce:	177e                	slli	a4,a4,0x3f
ffffffffc02061d0:	83b1                	srli	a5,a5,0xc
ffffffffc02061d2:	8fd9                	or	a5,a5,a4
ffffffffc02061d4:	18079073          	csrw	satp,a5
ffffffffc02061d8:	0309a783          	lw	a5,48(s3)
ffffffffc02061dc:	fff7871b          	addiw	a4,a5,-1
ffffffffc02061e0:	02e9a823          	sw	a4,48(s3)
ffffffffc02061e4:	c769                	beqz	a4,ffffffffc02062ae <do_exit+0x126>
ffffffffc02061e6:	601c                	ld	a5,0(s0)
ffffffffc02061e8:	1487b503          	ld	a0,328(a5)
ffffffffc02061ec:	0207b423          	sd	zero,40(a5)
ffffffffc02061f0:	c511                	beqz	a0,ffffffffc02061fc <do_exit+0x74>
ffffffffc02061f2:	491c                	lw	a5,16(a0)
ffffffffc02061f4:	fff7871b          	addiw	a4,a5,-1
ffffffffc02061f8:	c918                	sw	a4,16(a0)
ffffffffc02061fa:	cb59                	beqz	a4,ffffffffc0206290 <do_exit+0x108>
ffffffffc02061fc:	601c                	ld	a5,0(s0)
ffffffffc02061fe:	470d                	li	a4,3
ffffffffc0206200:	c398                	sw	a4,0(a5)
ffffffffc0206202:	0f27a423          	sw	s2,232(a5)
ffffffffc0206206:	100027f3          	csrr	a5,sstatus
ffffffffc020620a:	8b89                	andi	a5,a5,2
ffffffffc020620c:	4a01                	li	s4,0
ffffffffc020620e:	e7f9                	bnez	a5,ffffffffc02062dc <do_exit+0x154>
ffffffffc0206210:	6018                	ld	a4,0(s0)
ffffffffc0206212:	800007b7          	lui	a5,0x80000
ffffffffc0206216:	0785                	addi	a5,a5,1
ffffffffc0206218:	7308                	ld	a0,32(a4)
ffffffffc020621a:	0ec52703          	lw	a4,236(a0)
ffffffffc020621e:	0cf70363          	beq	a4,a5,ffffffffc02062e4 <do_exit+0x15c>
ffffffffc0206222:	6018                	ld	a4,0(s0)
ffffffffc0206224:	7b7c                	ld	a5,240(a4)
ffffffffc0206226:	c3a1                	beqz	a5,ffffffffc0206266 <do_exit+0xde>
ffffffffc0206228:	800009b7          	lui	s3,0x80000
ffffffffc020622c:	490d                	li	s2,3
ffffffffc020622e:	0985                	addi	s3,s3,1
ffffffffc0206230:	a021                	j	ffffffffc0206238 <do_exit+0xb0>
ffffffffc0206232:	6018                	ld	a4,0(s0)
ffffffffc0206234:	7b7c                	ld	a5,240(a4)
ffffffffc0206236:	cb85                	beqz	a5,ffffffffc0206266 <do_exit+0xde>
ffffffffc0206238:	1007b683          	ld	a3,256(a5) # ffffffff80000100 <_binary_bin_sfs_img_size+0xffffffff7ff8ae00>
ffffffffc020623c:	6088                	ld	a0,0(s1)
ffffffffc020623e:	fb74                	sd	a3,240(a4)
ffffffffc0206240:	7978                	ld	a4,240(a0)
ffffffffc0206242:	0e07bc23          	sd	zero,248(a5)
ffffffffc0206246:	10e7b023          	sd	a4,256(a5)
ffffffffc020624a:	c311                	beqz	a4,ffffffffc020624e <do_exit+0xc6>
ffffffffc020624c:	ff7c                	sd	a5,248(a4)
ffffffffc020624e:	4398                	lw	a4,0(a5)
ffffffffc0206250:	f388                	sd	a0,32(a5)
ffffffffc0206252:	f97c                	sd	a5,240(a0)
ffffffffc0206254:	fd271fe3          	bne	a4,s2,ffffffffc0206232 <do_exit+0xaa>
ffffffffc0206258:	0ec52783          	lw	a5,236(a0)
ffffffffc020625c:	fd379be3          	bne	a5,s3,ffffffffc0206232 <do_exit+0xaa>
ffffffffc0206260:	14a010ef          	jal	ra,ffffffffc02073aa <wakeup_proc>
ffffffffc0206264:	b7f9                	j	ffffffffc0206232 <do_exit+0xaa>
ffffffffc0206266:	020a1263          	bnez	s4,ffffffffc020628a <do_exit+0x102>
ffffffffc020626a:	1f2010ef          	jal	ra,ffffffffc020745c <schedule>
ffffffffc020626e:	601c                	ld	a5,0(s0)
ffffffffc0206270:	00007617          	auipc	a2,0x7
ffffffffc0206274:	5b860613          	addi	a2,a2,1464 # ffffffffc020d828 <CSWTCH.79+0x160>
ffffffffc0206278:	29e00593          	li	a1,670
ffffffffc020627c:	43d4                	lw	a3,4(a5)
ffffffffc020627e:	00007517          	auipc	a0,0x7
ffffffffc0206282:	55a50513          	addi	a0,a0,1370 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc0206286:	a18fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020628a:	9e3fa0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc020628e:	bff1                	j	ffffffffc020626a <do_exit+0xe2>
ffffffffc0206290:	89cff0ef          	jal	ra,ffffffffc020532c <files_destroy>
ffffffffc0206294:	b7a5                	j	ffffffffc02061fc <do_exit+0x74>
ffffffffc0206296:	00007617          	auipc	a2,0x7
ffffffffc020629a:	57260613          	addi	a2,a2,1394 # ffffffffc020d808 <CSWTCH.79+0x140>
ffffffffc020629e:	26900593          	li	a1,617
ffffffffc02062a2:	00007517          	auipc	a0,0x7
ffffffffc02062a6:	53650513          	addi	a0,a0,1334 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc02062aa:	9f4fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02062ae:	854e                	mv	a0,s3
ffffffffc02062b0:	d6bfd0ef          	jal	ra,ffffffffc020401a <exit_mmap>
ffffffffc02062b4:	0189b503          	ld	a0,24(s3) # ffffffff80000018 <_binary_bin_sfs_img_size+0xffffffff7ff8ad18>
ffffffffc02062b8:	8edff0ef          	jal	ra,ffffffffc0205ba4 <put_pgdir.isra.0>
ffffffffc02062bc:	854e                	mv	a0,s3
ffffffffc02062be:	bc1fd0ef          	jal	ra,ffffffffc0203e7e <mm_destroy>
ffffffffc02062c2:	b715                	j	ffffffffc02061e6 <do_exit+0x5e>
ffffffffc02062c4:	00007617          	auipc	a2,0x7
ffffffffc02062c8:	55460613          	addi	a2,a2,1364 # ffffffffc020d818 <CSWTCH.79+0x150>
ffffffffc02062cc:	26d00593          	li	a1,621
ffffffffc02062d0:	00007517          	auipc	a0,0x7
ffffffffc02062d4:	50850513          	addi	a0,a0,1288 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc02062d8:	9c6fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02062dc:	997fa0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02062e0:	4a05                	li	s4,1
ffffffffc02062e2:	b73d                	j	ffffffffc0206210 <do_exit+0x88>
ffffffffc02062e4:	0c6010ef          	jal	ra,ffffffffc02073aa <wakeup_proc>
ffffffffc02062e8:	bf2d                	j	ffffffffc0206222 <do_exit+0x9a>

ffffffffc02062ea <do_wait.part.0>:
ffffffffc02062ea:	715d                	addi	sp,sp,-80
ffffffffc02062ec:	f84a                	sd	s2,48(sp)
ffffffffc02062ee:	f44e                	sd	s3,40(sp)
ffffffffc02062f0:	80000937          	lui	s2,0x80000
ffffffffc02062f4:	6989                	lui	s3,0x2
ffffffffc02062f6:	fc26                	sd	s1,56(sp)
ffffffffc02062f8:	f052                	sd	s4,32(sp)
ffffffffc02062fa:	ec56                	sd	s5,24(sp)
ffffffffc02062fc:	e85a                	sd	s6,16(sp)
ffffffffc02062fe:	e45e                	sd	s7,8(sp)
ffffffffc0206300:	e486                	sd	ra,72(sp)
ffffffffc0206302:	e0a2                	sd	s0,64(sp)
ffffffffc0206304:	84aa                	mv	s1,a0
ffffffffc0206306:	8a2e                	mv	s4,a1
ffffffffc0206308:	00090b97          	auipc	s7,0x90
ffffffffc020630c:	5b8b8b93          	addi	s7,s7,1464 # ffffffffc02968c0 <current>
ffffffffc0206310:	00050b1b          	sext.w	s6,a0
ffffffffc0206314:	fff50a9b          	addiw	s5,a0,-1
ffffffffc0206318:	19f9                	addi	s3,s3,-2
ffffffffc020631a:	0905                	addi	s2,s2,1
ffffffffc020631c:	ccbd                	beqz	s1,ffffffffc020639a <do_wait.part.0+0xb0>
ffffffffc020631e:	0359e863          	bltu	s3,s5,ffffffffc020634e <do_wait.part.0+0x64>
ffffffffc0206322:	45a9                	li	a1,10
ffffffffc0206324:	855a                	mv	a0,s6
ffffffffc0206326:	5d5040ef          	jal	ra,ffffffffc020b0fa <hash32>
ffffffffc020632a:	02051793          	slli	a5,a0,0x20
ffffffffc020632e:	01c7d513          	srli	a0,a5,0x1c
ffffffffc0206332:	0008b797          	auipc	a5,0x8b
ffffffffc0206336:	48e78793          	addi	a5,a5,1166 # ffffffffc02917c0 <hash_list>
ffffffffc020633a:	953e                	add	a0,a0,a5
ffffffffc020633c:	842a                	mv	s0,a0
ffffffffc020633e:	a029                	j	ffffffffc0206348 <do_wait.part.0+0x5e>
ffffffffc0206340:	f2c42783          	lw	a5,-212(s0)
ffffffffc0206344:	02978163          	beq	a5,s1,ffffffffc0206366 <do_wait.part.0+0x7c>
ffffffffc0206348:	6400                	ld	s0,8(s0)
ffffffffc020634a:	fe851be3          	bne	a0,s0,ffffffffc0206340 <do_wait.part.0+0x56>
ffffffffc020634e:	5579                	li	a0,-2
ffffffffc0206350:	60a6                	ld	ra,72(sp)
ffffffffc0206352:	6406                	ld	s0,64(sp)
ffffffffc0206354:	74e2                	ld	s1,56(sp)
ffffffffc0206356:	7942                	ld	s2,48(sp)
ffffffffc0206358:	79a2                	ld	s3,40(sp)
ffffffffc020635a:	7a02                	ld	s4,32(sp)
ffffffffc020635c:	6ae2                	ld	s5,24(sp)
ffffffffc020635e:	6b42                	ld	s6,16(sp)
ffffffffc0206360:	6ba2                	ld	s7,8(sp)
ffffffffc0206362:	6161                	addi	sp,sp,80
ffffffffc0206364:	8082                	ret
ffffffffc0206366:	000bb683          	ld	a3,0(s7)
ffffffffc020636a:	f4843783          	ld	a5,-184(s0)
ffffffffc020636e:	fed790e3          	bne	a5,a3,ffffffffc020634e <do_wait.part.0+0x64>
ffffffffc0206372:	f2842703          	lw	a4,-216(s0)
ffffffffc0206376:	478d                	li	a5,3
ffffffffc0206378:	0ef70b63          	beq	a4,a5,ffffffffc020646e <do_wait.part.0+0x184>
ffffffffc020637c:	4785                	li	a5,1
ffffffffc020637e:	c29c                	sw	a5,0(a3)
ffffffffc0206380:	0f26a623          	sw	s2,236(a3)
ffffffffc0206384:	0d8010ef          	jal	ra,ffffffffc020745c <schedule>
ffffffffc0206388:	000bb783          	ld	a5,0(s7)
ffffffffc020638c:	0b07a783          	lw	a5,176(a5)
ffffffffc0206390:	8b85                	andi	a5,a5,1
ffffffffc0206392:	d7c9                	beqz	a5,ffffffffc020631c <do_wait.part.0+0x32>
ffffffffc0206394:	555d                	li	a0,-9
ffffffffc0206396:	df3ff0ef          	jal	ra,ffffffffc0206188 <do_exit>
ffffffffc020639a:	000bb683          	ld	a3,0(s7)
ffffffffc020639e:	7ae0                	ld	s0,240(a3)
ffffffffc02063a0:	d45d                	beqz	s0,ffffffffc020634e <do_wait.part.0+0x64>
ffffffffc02063a2:	470d                	li	a4,3
ffffffffc02063a4:	a021                	j	ffffffffc02063ac <do_wait.part.0+0xc2>
ffffffffc02063a6:	10043403          	ld	s0,256(s0)
ffffffffc02063aa:	d869                	beqz	s0,ffffffffc020637c <do_wait.part.0+0x92>
ffffffffc02063ac:	401c                	lw	a5,0(s0)
ffffffffc02063ae:	fee79ce3          	bne	a5,a4,ffffffffc02063a6 <do_wait.part.0+0xbc>
ffffffffc02063b2:	00090797          	auipc	a5,0x90
ffffffffc02063b6:	5167b783          	ld	a5,1302(a5) # ffffffffc02968c8 <idleproc>
ffffffffc02063ba:	0c878963          	beq	a5,s0,ffffffffc020648c <do_wait.part.0+0x1a2>
ffffffffc02063be:	00090797          	auipc	a5,0x90
ffffffffc02063c2:	5127b783          	ld	a5,1298(a5) # ffffffffc02968d0 <initproc>
ffffffffc02063c6:	0cf40363          	beq	s0,a5,ffffffffc020648c <do_wait.part.0+0x1a2>
ffffffffc02063ca:	000a0663          	beqz	s4,ffffffffc02063d6 <do_wait.part.0+0xec>
ffffffffc02063ce:	0e842783          	lw	a5,232(s0)
ffffffffc02063d2:	00fa2023          	sw	a5,0(s4)
ffffffffc02063d6:	100027f3          	csrr	a5,sstatus
ffffffffc02063da:	8b89                	andi	a5,a5,2
ffffffffc02063dc:	4581                	li	a1,0
ffffffffc02063de:	e7c1                	bnez	a5,ffffffffc0206466 <do_wait.part.0+0x17c>
ffffffffc02063e0:	6c70                	ld	a2,216(s0)
ffffffffc02063e2:	7074                	ld	a3,224(s0)
ffffffffc02063e4:	10043703          	ld	a4,256(s0)
ffffffffc02063e8:	7c7c                	ld	a5,248(s0)
ffffffffc02063ea:	e614                	sd	a3,8(a2)
ffffffffc02063ec:	e290                	sd	a2,0(a3)
ffffffffc02063ee:	6470                	ld	a2,200(s0)
ffffffffc02063f0:	6874                	ld	a3,208(s0)
ffffffffc02063f2:	e614                	sd	a3,8(a2)
ffffffffc02063f4:	e290                	sd	a2,0(a3)
ffffffffc02063f6:	c319                	beqz	a4,ffffffffc02063fc <do_wait.part.0+0x112>
ffffffffc02063f8:	ff7c                	sd	a5,248(a4)
ffffffffc02063fa:	7c7c                	ld	a5,248(s0)
ffffffffc02063fc:	c3b5                	beqz	a5,ffffffffc0206460 <do_wait.part.0+0x176>
ffffffffc02063fe:	10e7b023          	sd	a4,256(a5)
ffffffffc0206402:	00090717          	auipc	a4,0x90
ffffffffc0206406:	4d670713          	addi	a4,a4,1238 # ffffffffc02968d8 <nr_process>
ffffffffc020640a:	431c                	lw	a5,0(a4)
ffffffffc020640c:	37fd                	addiw	a5,a5,-1
ffffffffc020640e:	c31c                	sw	a5,0(a4)
ffffffffc0206410:	e5a9                	bnez	a1,ffffffffc020645a <do_wait.part.0+0x170>
ffffffffc0206412:	6814                	ld	a3,16(s0)
ffffffffc0206414:	c02007b7          	lui	a5,0xc0200
ffffffffc0206418:	04f6ee63          	bltu	a3,a5,ffffffffc0206474 <do_wait.part.0+0x18a>
ffffffffc020641c:	00090797          	auipc	a5,0x90
ffffffffc0206420:	49c7b783          	ld	a5,1180(a5) # ffffffffc02968b8 <va_pa_offset>
ffffffffc0206424:	8e9d                	sub	a3,a3,a5
ffffffffc0206426:	82b1                	srli	a3,a3,0xc
ffffffffc0206428:	00090797          	auipc	a5,0x90
ffffffffc020642c:	4787b783          	ld	a5,1144(a5) # ffffffffc02968a0 <npage>
ffffffffc0206430:	06f6fa63          	bgeu	a3,a5,ffffffffc02064a4 <do_wait.part.0+0x1ba>
ffffffffc0206434:	00009517          	auipc	a0,0x9
ffffffffc0206438:	59453503          	ld	a0,1428(a0) # ffffffffc020f9c8 <nbase>
ffffffffc020643c:	8e89                	sub	a3,a3,a0
ffffffffc020643e:	069a                	slli	a3,a3,0x6
ffffffffc0206440:	00090517          	auipc	a0,0x90
ffffffffc0206444:	46853503          	ld	a0,1128(a0) # ffffffffc02968a8 <pages>
ffffffffc0206448:	9536                	add	a0,a0,a3
ffffffffc020644a:	4589                	li	a1,2
ffffffffc020644c:	e7bfb0ef          	jal	ra,ffffffffc02022c6 <free_pages>
ffffffffc0206450:	8522                	mv	a0,s0
ffffffffc0206452:	d09fb0ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc0206456:	4501                	li	a0,0
ffffffffc0206458:	bde5                	j	ffffffffc0206350 <do_wait.part.0+0x66>
ffffffffc020645a:	813fa0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc020645e:	bf55                	j	ffffffffc0206412 <do_wait.part.0+0x128>
ffffffffc0206460:	701c                	ld	a5,32(s0)
ffffffffc0206462:	fbf8                	sd	a4,240(a5)
ffffffffc0206464:	bf79                	j	ffffffffc0206402 <do_wait.part.0+0x118>
ffffffffc0206466:	80dfa0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc020646a:	4585                	li	a1,1
ffffffffc020646c:	bf95                	j	ffffffffc02063e0 <do_wait.part.0+0xf6>
ffffffffc020646e:	f2840413          	addi	s0,s0,-216
ffffffffc0206472:	b781                	j	ffffffffc02063b2 <do_wait.part.0+0xc8>
ffffffffc0206474:	00006617          	auipc	a2,0x6
ffffffffc0206478:	41c60613          	addi	a2,a2,1052 # ffffffffc020c890 <default_pmm_manager+0xe0>
ffffffffc020647c:	07700593          	li	a1,119
ffffffffc0206480:	00006517          	auipc	a0,0x6
ffffffffc0206484:	39050513          	addi	a0,a0,912 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc0206488:	816fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020648c:	00007617          	auipc	a2,0x7
ffffffffc0206490:	3bc60613          	addi	a2,a2,956 # ffffffffc020d848 <CSWTCH.79+0x180>
ffffffffc0206494:	44c00593          	li	a1,1100
ffffffffc0206498:	00007517          	auipc	a0,0x7
ffffffffc020649c:	34050513          	addi	a0,a0,832 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc02064a0:	ffff90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02064a4:	00006617          	auipc	a2,0x6
ffffffffc02064a8:	41460613          	addi	a2,a2,1044 # ffffffffc020c8b8 <default_pmm_manager+0x108>
ffffffffc02064ac:	06900593          	li	a1,105
ffffffffc02064b0:	00006517          	auipc	a0,0x6
ffffffffc02064b4:	36050513          	addi	a0,a0,864 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc02064b8:	fe7f90ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02064bc <init_main>:
ffffffffc02064bc:	1141                	addi	sp,sp,-16
ffffffffc02064be:	00007517          	auipc	a0,0x7
ffffffffc02064c2:	3aa50513          	addi	a0,a0,938 # ffffffffc020d868 <CSWTCH.79+0x1a0>
ffffffffc02064c6:	e406                	sd	ra,8(sp)
ffffffffc02064c8:	704010ef          	jal	ra,ffffffffc0207bcc <vfs_set_bootfs>
ffffffffc02064cc:	e179                	bnez	a0,ffffffffc0206592 <init_main+0xd6>
ffffffffc02064ce:	e39fb0ef          	jal	ra,ffffffffc0202306 <nr_free_pages>
ffffffffc02064d2:	bd5fb0ef          	jal	ra,ffffffffc02020a6 <kallocated>
ffffffffc02064d6:	4601                	li	a2,0
ffffffffc02064d8:	4581                	li	a1,0
ffffffffc02064da:	00001517          	auipc	a0,0x1
ffffffffc02064de:	92a50513          	addi	a0,a0,-1750 # ffffffffc0206e04 <user_main>
ffffffffc02064e2:	c57ff0ef          	jal	ra,ffffffffc0206138 <kernel_thread>
ffffffffc02064e6:	00a04563          	bgtz	a0,ffffffffc02064f0 <init_main+0x34>
ffffffffc02064ea:	a841                	j	ffffffffc020657a <init_main+0xbe>
ffffffffc02064ec:	771000ef          	jal	ra,ffffffffc020745c <schedule>
ffffffffc02064f0:	4581                	li	a1,0
ffffffffc02064f2:	4501                	li	a0,0
ffffffffc02064f4:	df7ff0ef          	jal	ra,ffffffffc02062ea <do_wait.part.0>
ffffffffc02064f8:	d975                	beqz	a0,ffffffffc02064ec <init_main+0x30>
ffffffffc02064fa:	dedfe0ef          	jal	ra,ffffffffc02052e6 <fs_cleanup>
ffffffffc02064fe:	00007517          	auipc	a0,0x7
ffffffffc0206502:	3b250513          	addi	a0,a0,946 # ffffffffc020d8b0 <CSWTCH.79+0x1e8>
ffffffffc0206506:	ca1f90ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020650a:	00090797          	auipc	a5,0x90
ffffffffc020650e:	3c67b783          	ld	a5,966(a5) # ffffffffc02968d0 <initproc>
ffffffffc0206512:	7bf8                	ld	a4,240(a5)
ffffffffc0206514:	e339                	bnez	a4,ffffffffc020655a <init_main+0x9e>
ffffffffc0206516:	7ff8                	ld	a4,248(a5)
ffffffffc0206518:	e329                	bnez	a4,ffffffffc020655a <init_main+0x9e>
ffffffffc020651a:	1007b703          	ld	a4,256(a5)
ffffffffc020651e:	ef15                	bnez	a4,ffffffffc020655a <init_main+0x9e>
ffffffffc0206520:	00090697          	auipc	a3,0x90
ffffffffc0206524:	3b86a683          	lw	a3,952(a3) # ffffffffc02968d8 <nr_process>
ffffffffc0206528:	4709                	li	a4,2
ffffffffc020652a:	0ce69163          	bne	a3,a4,ffffffffc02065ec <init_main+0x130>
ffffffffc020652e:	0008f717          	auipc	a4,0x8f
ffffffffc0206532:	29270713          	addi	a4,a4,658 # ffffffffc02957c0 <proc_list>
ffffffffc0206536:	6714                	ld	a3,8(a4)
ffffffffc0206538:	0c878793          	addi	a5,a5,200
ffffffffc020653c:	08d79863          	bne	a5,a3,ffffffffc02065cc <init_main+0x110>
ffffffffc0206540:	6318                	ld	a4,0(a4)
ffffffffc0206542:	06e79563          	bne	a5,a4,ffffffffc02065ac <init_main+0xf0>
ffffffffc0206546:	00007517          	auipc	a0,0x7
ffffffffc020654a:	45250513          	addi	a0,a0,1106 # ffffffffc020d998 <CSWTCH.79+0x2d0>
ffffffffc020654e:	c59f90ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0206552:	60a2                	ld	ra,8(sp)
ffffffffc0206554:	4501                	li	a0,0
ffffffffc0206556:	0141                	addi	sp,sp,16
ffffffffc0206558:	8082                	ret
ffffffffc020655a:	00007697          	auipc	a3,0x7
ffffffffc020655e:	37e68693          	addi	a3,a3,894 # ffffffffc020d8d8 <CSWTCH.79+0x210>
ffffffffc0206562:	00005617          	auipc	a2,0x5
ffffffffc0206566:	5ae60613          	addi	a2,a2,1454 # ffffffffc020bb10 <commands+0x210>
ffffffffc020656a:	4c200593          	li	a1,1218
ffffffffc020656e:	00007517          	auipc	a0,0x7
ffffffffc0206572:	26a50513          	addi	a0,a0,618 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc0206576:	f29f90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020657a:	00007617          	auipc	a2,0x7
ffffffffc020657e:	31660613          	addi	a2,a2,790 # ffffffffc020d890 <CSWTCH.79+0x1c8>
ffffffffc0206582:	4b500593          	li	a1,1205
ffffffffc0206586:	00007517          	auipc	a0,0x7
ffffffffc020658a:	25250513          	addi	a0,a0,594 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc020658e:	f11f90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206592:	86aa                	mv	a3,a0
ffffffffc0206594:	00007617          	auipc	a2,0x7
ffffffffc0206598:	2dc60613          	addi	a2,a2,732 # ffffffffc020d870 <CSWTCH.79+0x1a8>
ffffffffc020659c:	4ad00593          	li	a1,1197
ffffffffc02065a0:	00007517          	auipc	a0,0x7
ffffffffc02065a4:	23850513          	addi	a0,a0,568 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc02065a8:	ef7f90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02065ac:	00007697          	auipc	a3,0x7
ffffffffc02065b0:	3bc68693          	addi	a3,a3,956 # ffffffffc020d968 <CSWTCH.79+0x2a0>
ffffffffc02065b4:	00005617          	auipc	a2,0x5
ffffffffc02065b8:	55c60613          	addi	a2,a2,1372 # ffffffffc020bb10 <commands+0x210>
ffffffffc02065bc:	4c500593          	li	a1,1221
ffffffffc02065c0:	00007517          	auipc	a0,0x7
ffffffffc02065c4:	21850513          	addi	a0,a0,536 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc02065c8:	ed7f90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02065cc:	00007697          	auipc	a3,0x7
ffffffffc02065d0:	36c68693          	addi	a3,a3,876 # ffffffffc020d938 <CSWTCH.79+0x270>
ffffffffc02065d4:	00005617          	auipc	a2,0x5
ffffffffc02065d8:	53c60613          	addi	a2,a2,1340 # ffffffffc020bb10 <commands+0x210>
ffffffffc02065dc:	4c400593          	li	a1,1220
ffffffffc02065e0:	00007517          	auipc	a0,0x7
ffffffffc02065e4:	1f850513          	addi	a0,a0,504 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc02065e8:	eb7f90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02065ec:	00007697          	auipc	a3,0x7
ffffffffc02065f0:	33c68693          	addi	a3,a3,828 # ffffffffc020d928 <CSWTCH.79+0x260>
ffffffffc02065f4:	00005617          	auipc	a2,0x5
ffffffffc02065f8:	51c60613          	addi	a2,a2,1308 # ffffffffc020bb10 <commands+0x210>
ffffffffc02065fc:	4c300593          	li	a1,1219
ffffffffc0206600:	00007517          	auipc	a0,0x7
ffffffffc0206604:	1d850513          	addi	a0,a0,472 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc0206608:	e97f90ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020660c <do_execve>:
ffffffffc020660c:	cb010113          	addi	sp,sp,-848
ffffffffc0206610:	31613823          	sd	s6,784(sp)
ffffffffc0206614:	00090b17          	auipc	s6,0x90
ffffffffc0206618:	2acb0b13          	addi	s6,s6,684 # ffffffffc02968c0 <current>
ffffffffc020661c:	000b3683          	ld	a3,0(s6)
ffffffffc0206620:	33213823          	sd	s2,816(sp)
ffffffffc0206624:	fff5891b          	addiw	s2,a1,-1
ffffffffc0206628:	31813023          	sd	s8,768(sp)
ffffffffc020662c:	34113423          	sd	ra,840(sp)
ffffffffc0206630:	34813023          	sd	s0,832(sp)
ffffffffc0206634:	32913c23          	sd	s1,824(sp)
ffffffffc0206638:	33313423          	sd	s3,808(sp)
ffffffffc020663c:	33413023          	sd	s4,800(sp)
ffffffffc0206640:	31513c23          	sd	s5,792(sp)
ffffffffc0206644:	31713423          	sd	s7,776(sp)
ffffffffc0206648:	2f913c23          	sd	s9,760(sp)
ffffffffc020664c:	2fa13823          	sd	s10,752(sp)
ffffffffc0206650:	2fb13423          	sd	s11,744(sp)
ffffffffc0206654:	0009071b          	sext.w	a4,s2
ffffffffc0206658:	47fd                	li	a5,31
ffffffffc020665a:	0286bc03          	ld	s8,40(a3)
ffffffffc020665e:	6ce7e363          	bltu	a5,a4,ffffffffc0206d24 <do_execve+0x718>
ffffffffc0206662:	842e                	mv	s0,a1
ffffffffc0206664:	84aa                	mv	s1,a0
ffffffffc0206666:	8bb2                	mv	s7,a2
ffffffffc0206668:	4581                	li	a1,0
ffffffffc020666a:	4641                	li	a2,16
ffffffffc020666c:	0888                	addi	a0,sp,80
ffffffffc020666e:	7c1040ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc0206672:	000c0c63          	beqz	s8,ffffffffc020668a <do_execve+0x7e>
ffffffffc0206676:	038c0513          	addi	a0,s8,56
ffffffffc020667a:	812fe0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc020667e:	000b3783          	ld	a5,0(s6)
ffffffffc0206682:	c781                	beqz	a5,ffffffffc020668a <do_execve+0x7e>
ffffffffc0206684:	43dc                	lw	a5,4(a5)
ffffffffc0206686:	04fc2823          	sw	a5,80(s8)
ffffffffc020668a:	1c048663          	beqz	s1,ffffffffc0206856 <do_execve+0x24a>
ffffffffc020668e:	46c1                	li	a3,16
ffffffffc0206690:	8626                	mv	a2,s1
ffffffffc0206692:	088c                	addi	a1,sp,80
ffffffffc0206694:	8562                	mv	a0,s8
ffffffffc0206696:	e1ffd0ef          	jal	ra,ffffffffc02044b4 <copy_string>
ffffffffc020669a:	68050b63          	beqz	a0,ffffffffc0206d30 <do_execve+0x724>
ffffffffc020669e:	00341793          	slli	a5,s0,0x3
ffffffffc02066a2:	4681                	li	a3,0
ffffffffc02066a4:	863e                	mv	a2,a5
ffffffffc02066a6:	85de                	mv	a1,s7
ffffffffc02066a8:	8562                	mv	a0,s8
ffffffffc02066aa:	e03e                	sd	a5,0(sp)
ffffffffc02066ac:	d0ffd0ef          	jal	ra,ffffffffc02043ba <user_mem_check>
ffffffffc02066b0:	8a5e                	mv	s4,s7
ffffffffc02066b2:	66050b63          	beqz	a0,ffffffffc0206d28 <do_execve+0x71c>
ffffffffc02066b6:	0d810a93          	addi	s5,sp,216
ffffffffc02066ba:	4481                	li	s1,0
ffffffffc02066bc:	a011                	j	ffffffffc02066c0 <do_execve+0xb4>
ffffffffc02066be:	84ee                	mv	s1,s11
ffffffffc02066c0:	6505                	lui	a0,0x1
ffffffffc02066c2:	9e9fb0ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc02066c6:	89aa                	mv	s3,a0
ffffffffc02066c8:	10050463          	beqz	a0,ffffffffc02067d0 <do_execve+0x1c4>
ffffffffc02066cc:	000a3603          	ld	a2,0(s4)
ffffffffc02066d0:	85aa                	mv	a1,a0
ffffffffc02066d2:	6685                	lui	a3,0x1
ffffffffc02066d4:	8562                	mv	a0,s8
ffffffffc02066d6:	ddffd0ef          	jal	ra,ffffffffc02044b4 <copy_string>
ffffffffc02066da:	16050963          	beqz	a0,ffffffffc020684c <do_execve+0x240>
ffffffffc02066de:	013ab023          	sd	s3,0(s5)
ffffffffc02066e2:	00148d9b          	addiw	s11,s1,1
ffffffffc02066e6:	0aa1                	addi	s5,s5,8
ffffffffc02066e8:	0a21                	addi	s4,s4,8
ffffffffc02066ea:	fdb41ae3          	bne	s0,s11,ffffffffc02066be <do_execve+0xb2>
ffffffffc02066ee:	000bb983          	ld	s3,0(s7)
ffffffffc02066f2:	0a0c0263          	beqz	s8,ffffffffc0206796 <do_execve+0x18a>
ffffffffc02066f6:	038c0513          	addi	a0,s8,56
ffffffffc02066fa:	f8ffd0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc02066fe:	000b3703          	ld	a4,0(s6)
ffffffffc0206702:	040c2823          	sw	zero,80(s8)
ffffffffc0206706:	14873503          	ld	a0,328(a4)
ffffffffc020670a:	cb9fe0ef          	jal	ra,ffffffffc02053c2 <files_closeall>
ffffffffc020670e:	4581                	li	a1,0
ffffffffc0206710:	854e                	mv	a0,s3
ffffffffc0206712:	f3dfe0ef          	jal	ra,ffffffffc020564e <sysfile_open>
ffffffffc0206716:	8a2a                	mv	s4,a0
ffffffffc0206718:	18054463          	bltz	a0,ffffffffc02068a0 <do_execve+0x294>
ffffffffc020671c:	00090717          	auipc	a4,0x90
ffffffffc0206720:	17473703          	ld	a4,372(a4) # ffffffffc0296890 <boot_pgdir_pa>
ffffffffc0206724:	56fd                	li	a3,-1
ffffffffc0206726:	16fe                	slli	a3,a3,0x3f
ffffffffc0206728:	8331                	srli	a4,a4,0xc
ffffffffc020672a:	8f55                	or	a4,a4,a3
ffffffffc020672c:	18071073          	csrw	satp,a4
ffffffffc0206730:	030c2703          	lw	a4,48(s8)
ffffffffc0206734:	fff7069b          	addiw	a3,a4,-1
ffffffffc0206738:	02dc2823          	sw	a3,48(s8)
ffffffffc020673c:	16068863          	beqz	a3,ffffffffc02068ac <do_execve+0x2a0>
ffffffffc0206740:	000b3703          	ld	a4,0(s6)
ffffffffc0206744:	02073423          	sd	zero,40(a4)
ffffffffc0206748:	de8fd0ef          	jal	ra,ffffffffc0203d30 <mm_create>
ffffffffc020674c:	8aaa                	mv	s5,a0
ffffffffc020674e:	c901                	beqz	a0,ffffffffc020675e <do_execve+0x152>
ffffffffc0206750:	ccaff0ef          	jal	ra,ffffffffc0205c1a <setup_pgdir>
ffffffffc0206754:	10050d63          	beqz	a0,ffffffffc020686e <do_execve+0x262>
ffffffffc0206758:	8556                	mv	a0,s5
ffffffffc020675a:	f24fd0ef          	jal	ra,ffffffffc0203e7e <mm_destroy>
ffffffffc020675e:	8552                	mv	a0,s4
ffffffffc0206760:	1902                	slli	s2,s2,0x20
ffffffffc0206762:	f21fe0ef          	jal	ra,ffffffffc0205682 <sysfile_close>
ffffffffc0206766:	5a71                	li	s4,-4
ffffffffc0206768:	0c810c13          	addi	s8,sp,200
ffffffffc020676c:	02095913          	srli	s2,s2,0x20
ffffffffc0206770:	6782                	ld	a5,0(sp)
ffffffffc0206772:	147d                	addi	s0,s0,-1
ffffffffc0206774:	040e                	slli	s0,s0,0x3
ffffffffc0206776:	00fc0733          	add	a4,s8,a5
ffffffffc020677a:	090e                	slli	s2,s2,0x3
ffffffffc020677c:	09bc                	addi	a5,sp,216
ffffffffc020677e:	943e                	add	s0,s0,a5
ffffffffc0206780:	41270933          	sub	s2,a4,s2
ffffffffc0206784:	6008                	ld	a0,0(s0)
ffffffffc0206786:	1461                	addi	s0,s0,-8
ffffffffc0206788:	9d3fb0ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc020678c:	fe891ce3          	bne	s2,s0,ffffffffc0206784 <do_execve+0x178>
ffffffffc0206790:	8552                	mv	a0,s4
ffffffffc0206792:	9f7ff0ef          	jal	ra,ffffffffc0206188 <do_exit>
ffffffffc0206796:	000b3703          	ld	a4,0(s6)
ffffffffc020679a:	14873503          	ld	a0,328(a4)
ffffffffc020679e:	c25fe0ef          	jal	ra,ffffffffc02053c2 <files_closeall>
ffffffffc02067a2:	4581                	li	a1,0
ffffffffc02067a4:	854e                	mv	a0,s3
ffffffffc02067a6:	ea9fe0ef          	jal	ra,ffffffffc020564e <sysfile_open>
ffffffffc02067aa:	8a2a                	mv	s4,a0
ffffffffc02067ac:	0e054a63          	bltz	a0,ffffffffc02068a0 <do_execve+0x294>
ffffffffc02067b0:	000b3703          	ld	a4,0(s6)
ffffffffc02067b4:	7718                	ld	a4,40(a4)
ffffffffc02067b6:	db49                	beqz	a4,ffffffffc0206748 <do_execve+0x13c>
ffffffffc02067b8:	00007617          	auipc	a2,0x7
ffffffffc02067bc:	21060613          	addi	a2,a2,528 # ffffffffc020d9c8 <CSWTCH.79+0x300>
ffffffffc02067c0:	2d000593          	li	a1,720
ffffffffc02067c4:	00007517          	auipc	a0,0x7
ffffffffc02067c8:	01450513          	addi	a0,a0,20 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc02067cc:	cd3f90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02067d0:	5bf1                	li	s7,-4
ffffffffc02067d2:	c49d                	beqz	s1,ffffffffc0206800 <do_execve+0x1f4>
ffffffffc02067d4:	00349713          	slli	a4,s1,0x3
ffffffffc02067d8:	fff48413          	addi	s0,s1,-1
ffffffffc02067dc:	01bc                	addi	a5,sp,200
ffffffffc02067de:	34fd                	addiw	s1,s1,-1
ffffffffc02067e0:	97ba                	add	a5,a5,a4
ffffffffc02067e2:	02049713          	slli	a4,s1,0x20
ffffffffc02067e6:	01d75493          	srli	s1,a4,0x1d
ffffffffc02067ea:	040e                	slli	s0,s0,0x3
ffffffffc02067ec:	09b8                	addi	a4,sp,216
ffffffffc02067ee:	943a                	add	s0,s0,a4
ffffffffc02067f0:	409784b3          	sub	s1,a5,s1
ffffffffc02067f4:	6008                	ld	a0,0(s0)
ffffffffc02067f6:	1461                	addi	s0,s0,-8
ffffffffc02067f8:	963fb0ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc02067fc:	fe849ce3          	bne	s1,s0,ffffffffc02067f4 <do_execve+0x1e8>
ffffffffc0206800:	000c0863          	beqz	s8,ffffffffc0206810 <do_execve+0x204>
ffffffffc0206804:	038c0513          	addi	a0,s8,56
ffffffffc0206808:	e81fd0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc020680c:	040c2823          	sw	zero,80(s8)
ffffffffc0206810:	34813083          	ld	ra,840(sp)
ffffffffc0206814:	34013403          	ld	s0,832(sp)
ffffffffc0206818:	33813483          	ld	s1,824(sp)
ffffffffc020681c:	33013903          	ld	s2,816(sp)
ffffffffc0206820:	32813983          	ld	s3,808(sp)
ffffffffc0206824:	32013a03          	ld	s4,800(sp)
ffffffffc0206828:	31813a83          	ld	s5,792(sp)
ffffffffc020682c:	31013b03          	ld	s6,784(sp)
ffffffffc0206830:	30013c03          	ld	s8,768(sp)
ffffffffc0206834:	2f813c83          	ld	s9,760(sp)
ffffffffc0206838:	2f013d03          	ld	s10,752(sp)
ffffffffc020683c:	2e813d83          	ld	s11,744(sp)
ffffffffc0206840:	855e                	mv	a0,s7
ffffffffc0206842:	30813b83          	ld	s7,776(sp)
ffffffffc0206846:	35010113          	addi	sp,sp,848
ffffffffc020684a:	8082                	ret
ffffffffc020684c:	854e                	mv	a0,s3
ffffffffc020684e:	90dfb0ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc0206852:	5bf5                	li	s7,-3
ffffffffc0206854:	bfbd                	j	ffffffffc02067d2 <do_execve+0x1c6>
ffffffffc0206856:	000b3783          	ld	a5,0(s6)
ffffffffc020685a:	00007617          	auipc	a2,0x7
ffffffffc020685e:	15e60613          	addi	a2,a2,350 # ffffffffc020d9b8 <CSWTCH.79+0x2f0>
ffffffffc0206862:	45c1                	li	a1,16
ffffffffc0206864:	43d4                	lw	a3,4(a5)
ffffffffc0206866:	0888                	addi	a0,sp,80
ffffffffc0206868:	4d7040ef          	jal	ra,ffffffffc020b53e <snprintf>
ffffffffc020686c:	bd0d                	j	ffffffffc020669e <do_execve+0x92>
ffffffffc020686e:	4601                	li	a2,0
ffffffffc0206870:	4581                	li	a1,0
ffffffffc0206872:	8552                	mv	a0,s4
ffffffffc0206874:	840ff0ef          	jal	ra,ffffffffc02058b4 <sysfile_seek>
ffffffffc0206878:	8baa                	mv	s7,a0
ffffffffc020687a:	3a051963          	bnez	a0,ffffffffc0206c2c <do_execve+0x620>
ffffffffc020687e:	04000613          	li	a2,64
ffffffffc0206882:	092c                	addi	a1,sp,152
ffffffffc0206884:	8552                	mv	a0,s4
ffffffffc0206886:	e01fe0ef          	jal	ra,ffffffffc0205686 <sysfile_read>
ffffffffc020688a:	04000713          	li	a4,64
ffffffffc020688e:	02e50a63          	beq	a0,a4,ffffffffc02068c2 <do_execve+0x2b6>
ffffffffc0206892:	00050b9b          	sext.w	s7,a0
ffffffffc0206896:	38054b63          	bltz	a0,ffffffffc0206c2c <do_execve+0x620>
ffffffffc020689a:	5bfd                	li	s7,-1
ffffffffc020689c:	ae41                	j	ffffffffc0206c2c <do_execve+0x620>
ffffffffc020689e:	6a22                	ld	s4,8(sp)
ffffffffc02068a0:	1902                	slli	s2,s2,0x20
ffffffffc02068a2:	0c810c13          	addi	s8,sp,200
ffffffffc02068a6:	02095913          	srli	s2,s2,0x20
ffffffffc02068aa:	b5d9                	j	ffffffffc0206770 <do_execve+0x164>
ffffffffc02068ac:	8562                	mv	a0,s8
ffffffffc02068ae:	f6cfd0ef          	jal	ra,ffffffffc020401a <exit_mmap>
ffffffffc02068b2:	018c3503          	ld	a0,24(s8)
ffffffffc02068b6:	aeeff0ef          	jal	ra,ffffffffc0205ba4 <put_pgdir.isra.0>
ffffffffc02068ba:	8562                	mv	a0,s8
ffffffffc02068bc:	dc2fd0ef          	jal	ra,ffffffffc0203e7e <mm_destroy>
ffffffffc02068c0:	b541                	j	ffffffffc0206740 <do_execve+0x134>
ffffffffc02068c2:	46ea                	lw	a3,152(sp)
ffffffffc02068c4:	464c4737          	lui	a4,0x464c4
ffffffffc02068c8:	57f70713          	addi	a4,a4,1407 # 464c457f <_binary_bin_sfs_img_size+0x4644f27f>
ffffffffc02068cc:	34e69f63          	bne	a3,a4,ffffffffc0206c2a <do_execve+0x61e>
ffffffffc02068d0:	0d015703          	lhu	a4,208(sp)
ffffffffc02068d4:	f802                	sd	zero,48(sp)
ffffffffc02068d6:	f402                	sd	zero,40(sp)
ffffffffc02068d8:	18070663          	beqz	a4,ffffffffc0206a64 <do_execve+0x458>
ffffffffc02068dc:	577d                	li	a4,-1
ffffffffc02068de:	00c75793          	srli	a5,a4,0xc
ffffffffc02068e2:	e43e                	sd	a5,8(sp)
ffffffffc02068e4:	e0ee                	sd	s11,64(sp)
ffffffffc02068e6:	e4a6                	sd	s1,72(sp)
ffffffffc02068e8:	fc5e                	sd	s7,56(sp)
ffffffffc02068ea:	ec22                	sd	s0,24(sp)
ffffffffc02068ec:	d24a                	sw	s2,36(sp)
ffffffffc02068ee:	75ea                	ld	a1,184(sp)
ffffffffc02068f0:	77a2                	ld	a5,40(sp)
ffffffffc02068f2:	4601                	li	a2,0
ffffffffc02068f4:	8552                	mv	a0,s4
ffffffffc02068f6:	95be                	add	a1,a1,a5
ffffffffc02068f8:	fbdfe0ef          	jal	ra,ffffffffc02058b4 <sysfile_seek>
ffffffffc02068fc:	8baa                	mv	s7,a0
ffffffffc02068fe:	12051663          	bnez	a0,ffffffffc0206a2a <do_execve+0x41e>
ffffffffc0206902:	03800613          	li	a2,56
ffffffffc0206906:	108c                	addi	a1,sp,96
ffffffffc0206908:	8552                	mv	a0,s4
ffffffffc020690a:	d7dfe0ef          	jal	ra,ffffffffc0205686 <sysfile_read>
ffffffffc020690e:	03800793          	li	a5,56
ffffffffc0206912:	12f50563          	beq	a0,a5,ffffffffc0206a3c <do_execve+0x430>
ffffffffc0206916:	6462                	ld	s0,24(sp)
ffffffffc0206918:	5912                	lw	s2,36(sp)
ffffffffc020691a:	89aa                	mv	s3,a0
ffffffffc020691c:	00054363          	bltz	a0,ffffffffc0206922 <do_execve+0x316>
ffffffffc0206920:	59fd                	li	s3,-1
ffffffffc0206922:	0009879b          	sext.w	a5,s3
ffffffffc0206926:	e43e                	sd	a5,8(sp)
ffffffffc0206928:	1902                	slli	s2,s2,0x20
ffffffffc020692a:	0c810c13          	addi	s8,sp,200
ffffffffc020692e:	02095913          	srli	s2,s2,0x20
ffffffffc0206932:	8556                	mv	a0,s5
ffffffffc0206934:	ee6fd0ef          	jal	ra,ffffffffc020401a <exit_mmap>
ffffffffc0206938:	018ab503          	ld	a0,24(s5)
ffffffffc020693c:	a68ff0ef          	jal	ra,ffffffffc0205ba4 <put_pgdir.isra.0>
ffffffffc0206940:	8556                	mv	a0,s5
ffffffffc0206942:	d3cfd0ef          	jal	ra,ffffffffc0203e7e <mm_destroy>
ffffffffc0206946:	8552                	mv	a0,s4
ffffffffc0206948:	d3bfe0ef          	jal	ra,ffffffffc0205682 <sysfile_close>
ffffffffc020694c:	6a22                	ld	s4,8(sp)
ffffffffc020694e:	b50d                	j	ffffffffc0206770 <do_execve+0x164>
ffffffffc0206950:	662a                	ld	a2,136(sp)
ffffffffc0206952:	678a                	ld	a5,128(sp)
ffffffffc0206954:	3ef66e63          	bltu	a2,a5,ffffffffc0206d50 <do_execve+0x744>
ffffffffc0206958:	5796                	lw	a5,100(sp)
ffffffffc020695a:	4d45                	li	s10,17
ffffffffc020695c:	0047f693          	andi	a3,a5,4
ffffffffc0206960:	c299                	beqz	a3,ffffffffc0206966 <do_execve+0x35a>
ffffffffc0206962:	4685                	li	a3,1
ffffffffc0206964:	4d4d                	li	s10,19
ffffffffc0206966:	0027f713          	andi	a4,a5,2
ffffffffc020696a:	2e071763          	bnez	a4,ffffffffc0206c58 <do_execve+0x64c>
ffffffffc020696e:	8b85                	andi	a5,a5,1
ffffffffc0206970:	2c079f63          	bnez	a5,ffffffffc0206c4e <do_execve+0x642>
ffffffffc0206974:	75c6                	ld	a1,112(sp)
ffffffffc0206976:	4701                	li	a4,0
ffffffffc0206978:	8556                	mv	a0,s5
ffffffffc020697a:	d56fd0ef          	jal	ra,ffffffffc0203ed0 <mm_map>
ffffffffc020697e:	8baa                	mv	s7,a0
ffffffffc0206980:	e54d                	bnez	a0,ffffffffc0206a2a <do_execve+0x41e>
ffffffffc0206982:	7946                	ld	s2,112(sp)
ffffffffc0206984:	6c0a                	ld	s8,128(sp)
ffffffffc0206986:	787d                	lui	a6,0xfffff
ffffffffc0206988:	7ca6                	ld	s9,104(sp)
ffffffffc020698a:	9c4a                	add	s8,s8,s2
ffffffffc020698c:	01097433          	and	s0,s2,a6
ffffffffc0206990:	3b897a63          	bgeu	s2,s8,ffffffffc0206d44 <do_execve+0x738>
ffffffffc0206994:	5bf1                	li	s7,-4
ffffffffc0206996:	a015                	j	ffffffffc02069ba <do_execve+0x3ae>
ffffffffc0206998:	67c2                	ld	a5,16(sp)
ffffffffc020699a:	40890433          	sub	s0,s2,s0
ffffffffc020699e:	864e                	mv	a2,s3
ffffffffc02069a0:	00f485b3          	add	a1,s1,a5
ffffffffc02069a4:	95a2                	add	a1,a1,s0
ffffffffc02069a6:	8552                	mv	a0,s4
ffffffffc02069a8:	cdffe0ef          	jal	ra,ffffffffc0205686 <sysfile_read>
ffffffffc02069ac:	f6a995e3          	bne	s3,a0,ffffffffc0206916 <do_execve+0x30a>
ffffffffc02069b0:	994e                	add	s2,s2,s3
ffffffffc02069b2:	9cce                	add	s9,s9,s3
ffffffffc02069b4:	2b897663          	bgeu	s2,s8,ffffffffc0206c60 <do_execve+0x654>
ffffffffc02069b8:	846e                	mv	s0,s11
ffffffffc02069ba:	018ab503          	ld	a0,24(s5)
ffffffffc02069be:	866a                	mv	a2,s10
ffffffffc02069c0:	85a2                	mv	a1,s0
ffffffffc02069c2:	a88fd0ef          	jal	ra,ffffffffc0203c4a <pgdir_alloc_page>
ffffffffc02069c6:	32050563          	beqz	a0,ffffffffc0206cf0 <do_execve+0x6e4>
ffffffffc02069ca:	6785                	lui	a5,0x1
ffffffffc02069cc:	00f40db3          	add	s11,s0,a5
ffffffffc02069d0:	412c09b3          	sub	s3,s8,s2
ffffffffc02069d4:	01bc6463          	bltu	s8,s11,ffffffffc02069dc <do_execve+0x3d0>
ffffffffc02069d8:	412d89b3          	sub	s3,s11,s2
ffffffffc02069dc:	00090797          	auipc	a5,0x90
ffffffffc02069e0:	ecc78793          	addi	a5,a5,-308 # ffffffffc02968a8 <pages>
ffffffffc02069e4:	638c                	ld	a1,0(a5)
ffffffffc02069e6:	00009797          	auipc	a5,0x9
ffffffffc02069ea:	fe278793          	addi	a5,a5,-30 # ffffffffc020f9c8 <nbase>
ffffffffc02069ee:	6394                	ld	a3,0(a5)
ffffffffc02069f0:	00090797          	auipc	a5,0x90
ffffffffc02069f4:	eb078793          	addi	a5,a5,-336 # ffffffffc02968a0 <npage>
ffffffffc02069f8:	6398                	ld	a4,0(a5)
ffffffffc02069fa:	40b505b3          	sub	a1,a0,a1
ffffffffc02069fe:	67a2                	ld	a5,8(sp)
ffffffffc0206a00:	8599                	srai	a1,a1,0x6
ffffffffc0206a02:	95b6                	add	a1,a1,a3
ffffffffc0206a04:	00f5f6b3          	and	a3,a1,a5
ffffffffc0206a08:	00c59493          	slli	s1,a1,0xc
ffffffffc0206a0c:	3ae6f863          	bgeu	a3,a4,ffffffffc0206dbc <do_execve+0x7b0>
ffffffffc0206a10:	00090797          	auipc	a5,0x90
ffffffffc0206a14:	ea878793          	addi	a5,a5,-344 # ffffffffc02968b8 <va_pa_offset>
ffffffffc0206a18:	639c                	ld	a5,0(a5)
ffffffffc0206a1a:	4601                	li	a2,0
ffffffffc0206a1c:	85e6                	mv	a1,s9
ffffffffc0206a1e:	8552                	mv	a0,s4
ffffffffc0206a20:	e83e                	sd	a5,16(sp)
ffffffffc0206a22:	e93fe0ef          	jal	ra,ffffffffc02058b4 <sysfile_seek>
ffffffffc0206a26:	8baa                	mv	s7,a0
ffffffffc0206a28:	d925                	beqz	a0,ffffffffc0206998 <do_execve+0x38c>
ffffffffc0206a2a:	5912                	lw	s2,36(sp)
ffffffffc0206a2c:	6462                	ld	s0,24(sp)
ffffffffc0206a2e:	e45e                	sd	s7,8(sp)
ffffffffc0206a30:	1902                	slli	s2,s2,0x20
ffffffffc0206a32:	0c810c13          	addi	s8,sp,200
ffffffffc0206a36:	02095913          	srli	s2,s2,0x20
ffffffffc0206a3a:	bde5                	j	ffffffffc0206932 <do_execve+0x326>
ffffffffc0206a3c:	5706                	lw	a4,96(sp)
ffffffffc0206a3e:	4785                	li	a5,1
ffffffffc0206a40:	f0f708e3          	beq	a4,a5,ffffffffc0206950 <do_execve+0x344>
ffffffffc0206a44:	7742                	ld	a4,48(sp)
ffffffffc0206a46:	76a2                	ld	a3,40(sp)
ffffffffc0206a48:	0d015783          	lhu	a5,208(sp)
ffffffffc0206a4c:	2705                	addiw	a4,a4,1
ffffffffc0206a4e:	03868693          	addi	a3,a3,56 # 1038 <_binary_bin_swap_img_size-0x6cc8>
ffffffffc0206a52:	f83a                	sd	a4,48(sp)
ffffffffc0206a54:	f436                	sd	a3,40(sp)
ffffffffc0206a56:	e8f74ce3          	blt	a4,a5,ffffffffc02068ee <do_execve+0x2e2>
ffffffffc0206a5a:	6d86                	ld	s11,64(sp)
ffffffffc0206a5c:	64a6                	ld	s1,72(sp)
ffffffffc0206a5e:	7be2                	ld	s7,56(sp)
ffffffffc0206a60:	6462                	ld	s0,24(sp)
ffffffffc0206a62:	5912                	lw	s2,36(sp)
ffffffffc0206a64:	4701                	li	a4,0
ffffffffc0206a66:	46ad                	li	a3,11
ffffffffc0206a68:	00100637          	lui	a2,0x100
ffffffffc0206a6c:	7ff005b7          	lui	a1,0x7ff00
ffffffffc0206a70:	8556                	mv	a0,s5
ffffffffc0206a72:	c5efd0ef          	jal	ra,ffffffffc0203ed0 <mm_map>
ffffffffc0206a76:	e42a                	sd	a0,8(sp)
ffffffffc0206a78:	ea0518e3          	bnez	a0,ffffffffc0206928 <do_execve+0x31c>
ffffffffc0206a7c:	6782                	ld	a5,0(sp)
ffffffffc0206a7e:	1902                	slli	s2,s2,0x20
ffffffffc0206a80:	0c810c13          	addi	s8,sp,200
ffffffffc0206a84:	ff878713          	addi	a4,a5,-8
ffffffffc0206a88:	02095913          	srli	s2,s2,0x20
ffffffffc0206a8c:	09b0                	addi	a2,sp,216
ffffffffc0206a8e:	0bac                	addi	a1,sp,472
ffffffffc0206a90:	00e58d33          	add	s10,a1,a4
ffffffffc0206a94:	97e2                	add	a5,a5,s8
ffffffffc0206a96:	00391693          	slli	a3,s2,0x3
ffffffffc0206a9a:	963a                	add	a2,a2,a4
ffffffffc0206a9c:	4c85                	li	s9,1
ffffffffc0206a9e:	e822                	sd	s0,16(sp)
ffffffffc0206aa0:	40d789b3          	sub	s3,a5,a3
ffffffffc0206aa4:	846a                	mv	s0,s10
ffffffffc0206aa6:	0cfe                	slli	s9,s9,0x1f
ffffffffc0206aa8:	8d32                	mv	s10,a2
ffffffffc0206aaa:	000d3503          	ld	a0,0(s10)
ffffffffc0206aae:	1461                	addi	s0,s0,-8
ffffffffc0206ab0:	1d61                	addi	s10,s10,-8
ffffffffc0206ab2:	2db040ef          	jal	ra,ffffffffc020b58c <strlen>
ffffffffc0206ab6:	fff54793          	not	a5,a0
ffffffffc0206aba:	9cbe                	add	s9,s9,a5
ffffffffc0206abc:	ff8cfc93          	andi	s9,s9,-8
ffffffffc0206ac0:	01943423          	sd	s9,8(s0)
ffffffffc0206ac4:	ffa993e3          	bne	s3,s10,ffffffffc0206aaa <do_execve+0x49e>
ffffffffc0206ac8:	6702                	ld	a4,0(sp)
ffffffffc0206aca:	003d9793          	slli	a5,s11,0x3
ffffffffc0206ace:	6442                	ld	s0,16(sp)
ffffffffc0206ad0:	00870d13          	addi	s10,a4,8
ffffffffc0206ad4:	1598                	addi	a4,sp,736
ffffffffc0206ad6:	97ba                	add	a5,a5,a4
ffffffffc0206ad8:	41ac8733          	sub	a4,s9,s10
ffffffffc0206adc:	9b41                	andi	a4,a4,-16
ffffffffc0206ade:	ee07bc23          	sd	zero,-264(a5)
ffffffffc0206ae2:	e83a                	sd	a4,16(sp)
ffffffffc0206ae4:	7ff007b7          	lui	a5,0x7ff00
ffffffffc0206ae8:	26f76163          	bltu	a4,a5,ffffffffc0206d4a <do_execve+0x73e>
ffffffffc0206aec:	00009797          	auipc	a5,0x9
ffffffffc0206af0:	ee47b783          	ld	a5,-284(a5) # ffffffffc020f9d0 <nbase+0x8>
ffffffffc0206af4:	8f99                	sub	a5,a5,a4
ffffffffc0206af6:	83b1                	srli	a5,a5,0xc
ffffffffc0206af8:	4691                	li	a3,4
ffffffffc0206afa:	00d7f363          	bgeu	a5,a3,ffffffffc0206b00 <do_execve+0x4f4>
ffffffffc0206afe:	4791                	li	a5,4
ffffffffc0206b00:	07b2                	slli	a5,a5,0xc
ffffffffc0206b02:	7ffffcb7          	lui	s9,0x7ffff
ffffffffc0206b06:	40fc8cb3          	sub	s9,s9,a5
ffffffffc0206b0a:	7ffffdb7          	lui	s11,0x7ffff
ffffffffc0206b0e:	79fd                	lui	s3,0xfffff
ffffffffc0206b10:	018ab503          	ld	a0,24(s5)
ffffffffc0206b14:	467d                	li	a2,31
ffffffffc0206b16:	85ee                	mv	a1,s11
ffffffffc0206b18:	932fd0ef          	jal	ra,ffffffffc0203c4a <pgdir_alloc_page>
ffffffffc0206b1c:	22050e63          	beqz	a0,ffffffffc0206d58 <do_execve+0x74c>
ffffffffc0206b20:	9dce                	add	s11,s11,s3
ffffffffc0206b22:	ffbc97e3          	bne	s9,s11,ffffffffc0206b10 <do_execve+0x504>
ffffffffc0206b26:	030aa783          	lw	a5,48(s5)
ffffffffc0206b2a:	000b3603          	ld	a2,0(s6)
ffffffffc0206b2e:	018ab683          	ld	a3,24(s5)
ffffffffc0206b32:	2785                	addiw	a5,a5,1
ffffffffc0206b34:	02faa823          	sw	a5,48(s5)
ffffffffc0206b38:	03563423          	sd	s5,40(a2) # 100028 <_binary_bin_sfs_img_size+0x8ad28>
ffffffffc0206b3c:	c02007b7          	lui	a5,0xc0200
ffffffffc0206b40:	28f6eb63          	bltu	a3,a5,ffffffffc0206dd6 <do_execve+0x7ca>
ffffffffc0206b44:	00090797          	auipc	a5,0x90
ffffffffc0206b48:	d747b783          	ld	a5,-652(a5) # ffffffffc02968b8 <va_pa_offset>
ffffffffc0206b4c:	8e9d                	sub	a3,a3,a5
ffffffffc0206b4e:	00c6d793          	srli	a5,a3,0xc
ffffffffc0206b52:	f654                	sd	a3,168(a2)
ffffffffc0206b54:	56fd                	li	a3,-1
ffffffffc0206b56:	16fe                	slli	a3,a3,0x3f
ffffffffc0206b58:	8fd5                	or	a5,a5,a3
ffffffffc0206b5a:	18079073          	csrw	satp,a5
ffffffffc0206b5e:	12000073          	sfence.vma
ffffffffc0206b62:	89ca                	mv	s3,s2
ffffffffc0206b64:	1d810d93          	addi	s11,sp,472
ffffffffc0206b68:	0d810c93          	addi	s9,sp,216
ffffffffc0206b6c:	8922                	mv	s2,s0
ffffffffc0206b6e:	a011                	j	ffffffffc0206b72 <do_execve+0x566>
ffffffffc0206b70:	e43e                	sd	a5,8(sp)
ffffffffc0206b72:	000cb403          	ld	s0,0(s9) # 7ffff000 <_binary_bin_sfs_img_size+0x7ff89d00>
ffffffffc0206b76:	8522                	mv	a0,s0
ffffffffc0206b78:	215040ef          	jal	ra,ffffffffc020b58c <strlen>
ffffffffc0206b7c:	000db583          	ld	a1,0(s11) # 7ffff000 <_binary_bin_sfs_img_size+0x7ff89d00>
ffffffffc0206b80:	00150693          	addi	a3,a0,1
ffffffffc0206b84:	8622                	mv	a2,s0
ffffffffc0206b86:	8556                	mv	a0,s5
ffffffffc0206b88:	8fbfd0ef          	jal	ra,ffffffffc0204482 <copy_to_user>
ffffffffc0206b8c:	1c050963          	beqz	a0,ffffffffc0206d5e <do_execve+0x752>
ffffffffc0206b90:	6722                	ld	a4,8(sp)
ffffffffc0206b92:	0ca1                	addi	s9,s9,8
ffffffffc0206b94:	0da1                	addi	s11,s11,8
ffffffffc0206b96:	0017079b          	addiw	a5,a4,1
ffffffffc0206b9a:	fc974be3          	blt	a4,s1,ffffffffc0206b70 <do_execve+0x564>
ffffffffc0206b9e:	6cc2                	ld	s9,16(sp)
ffffffffc0206ba0:	86ea                	mv	a3,s10
ffffffffc0206ba2:	0bb0                	addi	a2,sp,472
ffffffffc0206ba4:	85e6                	mv	a1,s9
ffffffffc0206ba6:	8556                	mv	a0,s5
ffffffffc0206ba8:	844a                	mv	s0,s2
ffffffffc0206baa:	894e                	mv	s2,s3
ffffffffc0206bac:	8d7fd0ef          	jal	ra,ffffffffc0204482 <copy_to_user>
ffffffffc0206bb0:	1a050963          	beqz	a0,ffffffffc0206d62 <do_execve+0x756>
ffffffffc0206bb4:	000b3783          	ld	a5,0(s6)
ffffffffc0206bb8:	12000613          	li	a2,288
ffffffffc0206bbc:	4581                	li	a1,0
ffffffffc0206bbe:	73c4                	ld	s1,160(a5)
ffffffffc0206bc0:	1004b983          	ld	s3,256(s1)
ffffffffc0206bc4:	8526                	mv	a0,s1
ffffffffc0206bc6:	269040ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc0206bca:	76ca                	ld	a3,176(sp)
ffffffffc0206bcc:	edf9f793          	andi	a5,s3,-289
ffffffffc0206bd0:	0207e793          	ori	a5,a5,32
ffffffffc0206bd4:	0194b823          	sd	s9,16(s1)
ffffffffc0206bd8:	e8a0                	sd	s0,80(s1)
ffffffffc0206bda:	0594bc23          	sd	s9,88(s1)
ffffffffc0206bde:	10d4b423          	sd	a3,264(s1)
ffffffffc0206be2:	10f4b023          	sd	a5,256(s1)
ffffffffc0206be6:	8552                	mv	a0,s4
ffffffffc0206be8:	a9bfe0ef          	jal	ra,ffffffffc0205682 <sysfile_close>
ffffffffc0206bec:	6782                	ld	a5,0(sp)
ffffffffc0206bee:	147d                	addi	s0,s0,-1
ffffffffc0206bf0:	040e                	slli	s0,s0,0x3
ffffffffc0206bf2:	00fc0733          	add	a4,s8,a5
ffffffffc0206bf6:	090e                	slli	s2,s2,0x3
ffffffffc0206bf8:	09bc                	addi	a5,sp,216
ffffffffc0206bfa:	943e                	add	s0,s0,a5
ffffffffc0206bfc:	41270933          	sub	s2,a4,s2
ffffffffc0206c00:	6008                	ld	a0,0(s0)
ffffffffc0206c02:	1461                	addi	s0,s0,-8
ffffffffc0206c04:	d56fb0ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc0206c08:	fe891ce3          	bne	s2,s0,ffffffffc0206c00 <do_execve+0x5f4>
ffffffffc0206c0c:	000b3403          	ld	s0,0(s6)
ffffffffc0206c10:	4641                	li	a2,16
ffffffffc0206c12:	4581                	li	a1,0
ffffffffc0206c14:	0b440413          	addi	s0,s0,180
ffffffffc0206c18:	8522                	mv	a0,s0
ffffffffc0206c1a:	215040ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc0206c1e:	463d                	li	a2,15
ffffffffc0206c20:	088c                	addi	a1,sp,80
ffffffffc0206c22:	8522                	mv	a0,s0
ffffffffc0206c24:	25d040ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc0206c28:	b6e5                	j	ffffffffc0206810 <do_execve+0x204>
ffffffffc0206c2a:	5be1                	li	s7,-8
ffffffffc0206c2c:	018ab503          	ld	a0,24(s5)
ffffffffc0206c30:	1902                	slli	s2,s2,0x20
ffffffffc0206c32:	0c810c13          	addi	s8,sp,200
ffffffffc0206c36:	f6ffe0ef          	jal	ra,ffffffffc0205ba4 <put_pgdir.isra.0>
ffffffffc0206c3a:	8556                	mv	a0,s5
ffffffffc0206c3c:	a42fd0ef          	jal	ra,ffffffffc0203e7e <mm_destroy>
ffffffffc0206c40:	8552                	mv	a0,s4
ffffffffc0206c42:	02095913          	srli	s2,s2,0x20
ffffffffc0206c46:	a3dfe0ef          	jal	ra,ffffffffc0205682 <sysfile_close>
ffffffffc0206c4a:	8a5e                	mv	s4,s7
ffffffffc0206c4c:	b615                	j	ffffffffc0206770 <do_execve+0x164>
ffffffffc0206c4e:	0046e693          	ori	a3,a3,4
ffffffffc0206c52:	00ad6d13          	ori	s10,s10,10
ffffffffc0206c56:	bb39                	j	ffffffffc0206974 <do_execve+0x368>
ffffffffc0206c58:	0026e693          	ori	a3,a3,2
ffffffffc0206c5c:	4d5d                	li	s10,23
ffffffffc0206c5e:	bb01                	j	ffffffffc020696e <do_execve+0x362>
ffffffffc0206c60:	74c6                	ld	s1,112(sp)
ffffffffc0206c62:	787d                	lui	a6,0xfffff
ffffffffc0206c64:	01097433          	and	s0,s2,a6
ffffffffc0206c68:	67aa                	ld	a5,136(sp)
ffffffffc0206c6a:	94be                	add	s1,s1,a5
ffffffffc0206c6c:	dc997ce3          	bgeu	s2,s1,ffffffffc0206a44 <do_execve+0x438>
ffffffffc0206c70:	6c85                	lui	s9,0x1
ffffffffc0206c72:	00090c17          	auipc	s8,0x90
ffffffffc0206c76:	c2ec0c13          	addi	s8,s8,-978 # ffffffffc02968a0 <npage>
ffffffffc0206c7a:	00090997          	auipc	s3,0x90
ffffffffc0206c7e:	c3e98993          	addi	s3,s3,-962 # ffffffffc02968b8 <va_pa_offset>
ffffffffc0206c82:	a889                	j	ffffffffc0206cd4 <do_execve+0x6c8>
ffffffffc0206c84:	40890733          	sub	a4,s2,s0
ffffffffc0206c88:	9466                	add	s0,s0,s9
ffffffffc0206c8a:	41248633          	sub	a2,s1,s2
ffffffffc0206c8e:	0084e463          	bltu	s1,s0,ffffffffc0206c96 <do_execve+0x68a>
ffffffffc0206c92:	41240633          	sub	a2,s0,s2
ffffffffc0206c96:	00090797          	auipc	a5,0x90
ffffffffc0206c9a:	c1278793          	addi	a5,a5,-1006 # ffffffffc02968a8 <pages>
ffffffffc0206c9e:	639c                	ld	a5,0(a5)
ffffffffc0206ca0:	00009697          	auipc	a3,0x9
ffffffffc0206ca4:	d2868693          	addi	a3,a3,-728 # ffffffffc020f9c8 <nbase>
ffffffffc0206ca8:	628c                	ld	a1,0(a3)
ffffffffc0206caa:	40f507b3          	sub	a5,a0,a5
ffffffffc0206cae:	8799                	srai	a5,a5,0x6
ffffffffc0206cb0:	97ae                	add	a5,a5,a1
ffffffffc0206cb2:	65a2                	ld	a1,8(sp)
ffffffffc0206cb4:	000c3683          	ld	a3,0(s8)
ffffffffc0206cb8:	8dfd                	and	a1,a1,a5
ffffffffc0206cba:	07b2                	slli	a5,a5,0xc
ffffffffc0206cbc:	0ed5f363          	bgeu	a1,a3,ffffffffc0206da2 <do_execve+0x796>
ffffffffc0206cc0:	0009b503          	ld	a0,0(s3)
ffffffffc0206cc4:	9932                	add	s2,s2,a2
ffffffffc0206cc6:	4581                	li	a1,0
ffffffffc0206cc8:	953e                	add	a0,a0,a5
ffffffffc0206cca:	953a                	add	a0,a0,a4
ffffffffc0206ccc:	163040ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc0206cd0:	d6997ae3          	bgeu	s2,s1,ffffffffc0206a44 <do_execve+0x438>
ffffffffc0206cd4:	018ab503          	ld	a0,24(s5)
ffffffffc0206cd8:	4601                	li	a2,0
ffffffffc0206cda:	85a2                	mv	a1,s0
ffffffffc0206cdc:	953fb0ef          	jal	ra,ffffffffc020262e <get_page>
ffffffffc0206ce0:	f155                	bnez	a0,ffffffffc0206c84 <do_execve+0x678>
ffffffffc0206ce2:	018ab503          	ld	a0,24(s5)
ffffffffc0206ce6:	866a                	mv	a2,s10
ffffffffc0206ce8:	85a2                	mv	a1,s0
ffffffffc0206cea:	f61fc0ef          	jal	ra,ffffffffc0203c4a <pgdir_alloc_page>
ffffffffc0206cee:	f959                	bnez	a0,ffffffffc0206c84 <do_execve+0x678>
ffffffffc0206cf0:	8556                	mv	a0,s5
ffffffffc0206cf2:	e45e                	sd	s7,8(sp)
ffffffffc0206cf4:	6462                	ld	s0,24(sp)
ffffffffc0206cf6:	7be2                	ld	s7,56(sp)
ffffffffc0206cf8:	5912                	lw	s2,36(sp)
ffffffffc0206cfa:	b20fd0ef          	jal	ra,ffffffffc020401a <exit_mmap>
ffffffffc0206cfe:	018ab503          	ld	a0,24(s5)
ffffffffc0206d02:	ea3fe0ef          	jal	ra,ffffffffc0205ba4 <put_pgdir.isra.0>
ffffffffc0206d06:	8556                	mv	a0,s5
ffffffffc0206d08:	976fd0ef          	jal	ra,ffffffffc0203e7e <mm_destroy>
ffffffffc0206d0c:	8552                	mv	a0,s4
ffffffffc0206d0e:	975fe0ef          	jal	ra,ffffffffc0205682 <sysfile_close>
ffffffffc0206d12:	67a2                	ld	a5,8(sp)
ffffffffc0206d14:	b80795e3          	bnez	a5,ffffffffc020689e <do_execve+0x292>
ffffffffc0206d18:	1902                	slli	s2,s2,0x20
ffffffffc0206d1a:	0c810c13          	addi	s8,sp,200
ffffffffc0206d1e:	02095913          	srli	s2,s2,0x20
ffffffffc0206d22:	b5e9                	j	ffffffffc0206bec <do_execve+0x5e0>
ffffffffc0206d24:	5bf5                	li	s7,-3
ffffffffc0206d26:	b4ed                	j	ffffffffc0206810 <do_execve+0x204>
ffffffffc0206d28:	5bf5                	li	s7,-3
ffffffffc0206d2a:	ac0c1de3          	bnez	s8,ffffffffc0206804 <do_execve+0x1f8>
ffffffffc0206d2e:	b4cd                	j	ffffffffc0206810 <do_execve+0x204>
ffffffffc0206d30:	fe0c0ae3          	beqz	s8,ffffffffc0206d24 <do_execve+0x718>
ffffffffc0206d34:	038c0513          	addi	a0,s8,56
ffffffffc0206d38:	951fd0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0206d3c:	5bf5                	li	s7,-3
ffffffffc0206d3e:	040c2823          	sw	zero,80(s8)
ffffffffc0206d42:	b4f9                	j	ffffffffc0206810 <do_execve+0x204>
ffffffffc0206d44:	84ca                	mv	s1,s2
ffffffffc0206d46:	5bf1                	li	s7,-4
ffffffffc0206d48:	b705                	j	ffffffffc0206c68 <do_execve+0x65c>
ffffffffc0206d4a:	57d1                	li	a5,-12
ffffffffc0206d4c:	e43e                	sd	a5,8(sp)
ffffffffc0206d4e:	b6d5                	j	ffffffffc0206932 <do_execve+0x326>
ffffffffc0206d50:	6462                	ld	s0,24(sp)
ffffffffc0206d52:	5912                	lw	s2,36(sp)
ffffffffc0206d54:	57e1                	li	a5,-8
ffffffffc0206d56:	bec1                	j	ffffffffc0206926 <do_execve+0x31a>
ffffffffc0206d58:	57f1                	li	a5,-4
ffffffffc0206d5a:	e43e                	sd	a5,8(sp)
ffffffffc0206d5c:	bed9                	j	ffffffffc0206932 <do_execve+0x326>
ffffffffc0206d5e:	844a                	mv	s0,s2
ffffffffc0206d60:	894e                	mv	s2,s3
ffffffffc0206d62:	00090617          	auipc	a2,0x90
ffffffffc0206d66:	b2e60613          	addi	a2,a2,-1234 # ffffffffc0296890 <boot_pgdir_pa>
ffffffffc0206d6a:	621c                	ld	a5,0(a2)
ffffffffc0206d6c:	56fd                	li	a3,-1
ffffffffc0206d6e:	16fe                	slli	a3,a3,0x3f
ffffffffc0206d70:	83b1                	srli	a5,a5,0xc
ffffffffc0206d72:	8fd5                	or	a5,a5,a3
ffffffffc0206d74:	18079073          	csrw	satp,a5
ffffffffc0206d78:	12000073          	sfence.vma
ffffffffc0206d7c:	030aa783          	lw	a5,48(s5)
ffffffffc0206d80:	000b3683          	ld	a3,0(s6)
ffffffffc0206d84:	6210                	ld	a2,0(a2)
ffffffffc0206d86:	37fd                	addiw	a5,a5,-1
ffffffffc0206d88:	0206b423          	sd	zero,40(a3)
ffffffffc0206d8c:	f6d0                	sd	a2,168(a3)
ffffffffc0206d8e:	02faa823          	sw	a5,48(s5)
ffffffffc0206d92:	0007869b          	sext.w	a3,a5
ffffffffc0206d96:	cea1                	beqz	a3,ffffffffc0206dee <do_execve+0x7e2>
ffffffffc0206d98:	8552                	mv	a0,s4
ffffffffc0206d9a:	8e9fe0ef          	jal	ra,ffffffffc0205682 <sysfile_close>
ffffffffc0206d9e:	5a75                	li	s4,-3
ffffffffc0206da0:	bac1                	j	ffffffffc0206770 <do_execve+0x164>
ffffffffc0206da2:	86be                	mv	a3,a5
ffffffffc0206da4:	00006617          	auipc	a2,0x6
ffffffffc0206da8:	a4460613          	addi	a2,a2,-1468 # ffffffffc020c7e8 <default_pmm_manager+0x38>
ffffffffc0206dac:	07100593          	li	a1,113
ffffffffc0206db0:	00006517          	auipc	a0,0x6
ffffffffc0206db4:	a6050513          	addi	a0,a0,-1440 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc0206db8:	ee6f90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206dbc:	86a6                	mv	a3,s1
ffffffffc0206dbe:	00006617          	auipc	a2,0x6
ffffffffc0206dc2:	a2a60613          	addi	a2,a2,-1494 # ffffffffc020c7e8 <default_pmm_manager+0x38>
ffffffffc0206dc6:	07100593          	li	a1,113
ffffffffc0206dca:	00006517          	auipc	a0,0x6
ffffffffc0206dce:	a4650513          	addi	a0,a0,-1466 # ffffffffc020c810 <default_pmm_manager+0x60>
ffffffffc0206dd2:	eccf90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206dd6:	00006617          	auipc	a2,0x6
ffffffffc0206dda:	aba60613          	addi	a2,a2,-1350 # ffffffffc020c890 <default_pmm_manager+0xe0>
ffffffffc0206dde:	36000593          	li	a1,864
ffffffffc0206de2:	00007517          	auipc	a0,0x7
ffffffffc0206de6:	9f650513          	addi	a0,a0,-1546 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc0206dea:	eb4f90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206dee:	8556                	mv	a0,s5
ffffffffc0206df0:	a2afd0ef          	jal	ra,ffffffffc020401a <exit_mmap>
ffffffffc0206df4:	018ab503          	ld	a0,24(s5)
ffffffffc0206df8:	dadfe0ef          	jal	ra,ffffffffc0205ba4 <put_pgdir.isra.0>
ffffffffc0206dfc:	8556                	mv	a0,s5
ffffffffc0206dfe:	880fd0ef          	jal	ra,ffffffffc0203e7e <mm_destroy>
ffffffffc0206e02:	bf59                	j	ffffffffc0206d98 <do_execve+0x78c>

ffffffffc0206e04 <user_main>:
ffffffffc0206e04:	7179                	addi	sp,sp,-48
ffffffffc0206e06:	e84a                	sd	s2,16(sp)
ffffffffc0206e08:	00090917          	auipc	s2,0x90
ffffffffc0206e0c:	ab890913          	addi	s2,s2,-1352 # ffffffffc02968c0 <current>
ffffffffc0206e10:	00093783          	ld	a5,0(s2)
ffffffffc0206e14:	00007617          	auipc	a2,0x7
ffffffffc0206e18:	bdc60613          	addi	a2,a2,-1060 # ffffffffc020d9f0 <CSWTCH.79+0x328>
ffffffffc0206e1c:	00007517          	auipc	a0,0x7
ffffffffc0206e20:	bdc50513          	addi	a0,a0,-1060 # ffffffffc020d9f8 <CSWTCH.79+0x330>
ffffffffc0206e24:	43cc                	lw	a1,4(a5)
ffffffffc0206e26:	f406                	sd	ra,40(sp)
ffffffffc0206e28:	f022                	sd	s0,32(sp)
ffffffffc0206e2a:	ec26                	sd	s1,24(sp)
ffffffffc0206e2c:	e032                	sd	a2,0(sp)
ffffffffc0206e2e:	e402                	sd	zero,8(sp)
ffffffffc0206e30:	b76f90ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0206e34:	6782                	ld	a5,0(sp)
ffffffffc0206e36:	cfb9                	beqz	a5,ffffffffc0206e94 <user_main+0x90>
ffffffffc0206e38:	003c                	addi	a5,sp,8
ffffffffc0206e3a:	4401                	li	s0,0
ffffffffc0206e3c:	6398                	ld	a4,0(a5)
ffffffffc0206e3e:	0405                	addi	s0,s0,1
ffffffffc0206e40:	07a1                	addi	a5,a5,8
ffffffffc0206e42:	ff6d                	bnez	a4,ffffffffc0206e3c <user_main+0x38>
ffffffffc0206e44:	00093783          	ld	a5,0(s2)
ffffffffc0206e48:	12000613          	li	a2,288
ffffffffc0206e4c:	6b84                	ld	s1,16(a5)
ffffffffc0206e4e:	73cc                	ld	a1,160(a5)
ffffffffc0206e50:	6789                	lui	a5,0x2
ffffffffc0206e52:	ee078793          	addi	a5,a5,-288 # 1ee0 <_binary_bin_swap_img_size-0x5e20>
ffffffffc0206e56:	94be                	add	s1,s1,a5
ffffffffc0206e58:	8526                	mv	a0,s1
ffffffffc0206e5a:	027040ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc0206e5e:	00093783          	ld	a5,0(s2)
ffffffffc0206e62:	860a                	mv	a2,sp
ffffffffc0206e64:	0004059b          	sext.w	a1,s0
ffffffffc0206e68:	f3c4                	sd	s1,160(a5)
ffffffffc0206e6a:	00007517          	auipc	a0,0x7
ffffffffc0206e6e:	b8650513          	addi	a0,a0,-1146 # ffffffffc020d9f0 <CSWTCH.79+0x328>
ffffffffc0206e72:	f9aff0ef          	jal	ra,ffffffffc020660c <do_execve>
ffffffffc0206e76:	8126                	mv	sp,s1
ffffffffc0206e78:	cf4fa06f          	j	ffffffffc020136c <__trapret>
ffffffffc0206e7c:	00007617          	auipc	a2,0x7
ffffffffc0206e80:	ba460613          	addi	a2,a2,-1116 # ffffffffc020da20 <CSWTCH.79+0x358>
ffffffffc0206e84:	4a300593          	li	a1,1187
ffffffffc0206e88:	00007517          	auipc	a0,0x7
ffffffffc0206e8c:	95050513          	addi	a0,a0,-1712 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc0206e90:	e0ef90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206e94:	4401                	li	s0,0
ffffffffc0206e96:	b77d                	j	ffffffffc0206e44 <user_main+0x40>

ffffffffc0206e98 <do_yield>:
ffffffffc0206e98:	00090797          	auipc	a5,0x90
ffffffffc0206e9c:	a287b783          	ld	a5,-1496(a5) # ffffffffc02968c0 <current>
ffffffffc0206ea0:	4705                	li	a4,1
ffffffffc0206ea2:	ef98                	sd	a4,24(a5)
ffffffffc0206ea4:	4501                	li	a0,0
ffffffffc0206ea6:	8082                	ret

ffffffffc0206ea8 <do_wait>:
ffffffffc0206ea8:	1101                	addi	sp,sp,-32
ffffffffc0206eaa:	e822                	sd	s0,16(sp)
ffffffffc0206eac:	e426                	sd	s1,8(sp)
ffffffffc0206eae:	ec06                	sd	ra,24(sp)
ffffffffc0206eb0:	842e                	mv	s0,a1
ffffffffc0206eb2:	84aa                	mv	s1,a0
ffffffffc0206eb4:	c999                	beqz	a1,ffffffffc0206eca <do_wait+0x22>
ffffffffc0206eb6:	00090797          	auipc	a5,0x90
ffffffffc0206eba:	a0a7b783          	ld	a5,-1526(a5) # ffffffffc02968c0 <current>
ffffffffc0206ebe:	7788                	ld	a0,40(a5)
ffffffffc0206ec0:	4685                	li	a3,1
ffffffffc0206ec2:	4611                	li	a2,4
ffffffffc0206ec4:	cf6fd0ef          	jal	ra,ffffffffc02043ba <user_mem_check>
ffffffffc0206ec8:	c909                	beqz	a0,ffffffffc0206eda <do_wait+0x32>
ffffffffc0206eca:	85a2                	mv	a1,s0
ffffffffc0206ecc:	6442                	ld	s0,16(sp)
ffffffffc0206ece:	60e2                	ld	ra,24(sp)
ffffffffc0206ed0:	8526                	mv	a0,s1
ffffffffc0206ed2:	64a2                	ld	s1,8(sp)
ffffffffc0206ed4:	6105                	addi	sp,sp,32
ffffffffc0206ed6:	c14ff06f          	j	ffffffffc02062ea <do_wait.part.0>
ffffffffc0206eda:	60e2                	ld	ra,24(sp)
ffffffffc0206edc:	6442                	ld	s0,16(sp)
ffffffffc0206ede:	64a2                	ld	s1,8(sp)
ffffffffc0206ee0:	5575                	li	a0,-3
ffffffffc0206ee2:	6105                	addi	sp,sp,32
ffffffffc0206ee4:	8082                	ret

ffffffffc0206ee6 <do_kill>:
ffffffffc0206ee6:	1141                	addi	sp,sp,-16
ffffffffc0206ee8:	6789                	lui	a5,0x2
ffffffffc0206eea:	e406                	sd	ra,8(sp)
ffffffffc0206eec:	e022                	sd	s0,0(sp)
ffffffffc0206eee:	fff5071b          	addiw	a4,a0,-1
ffffffffc0206ef2:	17f9                	addi	a5,a5,-2
ffffffffc0206ef4:	02e7e963          	bltu	a5,a4,ffffffffc0206f26 <do_kill+0x40>
ffffffffc0206ef8:	842a                	mv	s0,a0
ffffffffc0206efa:	45a9                	li	a1,10
ffffffffc0206efc:	2501                	sext.w	a0,a0
ffffffffc0206efe:	1fc040ef          	jal	ra,ffffffffc020b0fa <hash32>
ffffffffc0206f02:	02051793          	slli	a5,a0,0x20
ffffffffc0206f06:	01c7d513          	srli	a0,a5,0x1c
ffffffffc0206f0a:	0008b797          	auipc	a5,0x8b
ffffffffc0206f0e:	8b678793          	addi	a5,a5,-1866 # ffffffffc02917c0 <hash_list>
ffffffffc0206f12:	953e                	add	a0,a0,a5
ffffffffc0206f14:	87aa                	mv	a5,a0
ffffffffc0206f16:	a029                	j	ffffffffc0206f20 <do_kill+0x3a>
ffffffffc0206f18:	f2c7a703          	lw	a4,-212(a5)
ffffffffc0206f1c:	00870b63          	beq	a4,s0,ffffffffc0206f32 <do_kill+0x4c>
ffffffffc0206f20:	679c                	ld	a5,8(a5)
ffffffffc0206f22:	fef51be3          	bne	a0,a5,ffffffffc0206f18 <do_kill+0x32>
ffffffffc0206f26:	5475                	li	s0,-3
ffffffffc0206f28:	60a2                	ld	ra,8(sp)
ffffffffc0206f2a:	8522                	mv	a0,s0
ffffffffc0206f2c:	6402                	ld	s0,0(sp)
ffffffffc0206f2e:	0141                	addi	sp,sp,16
ffffffffc0206f30:	8082                	ret
ffffffffc0206f32:	fd87a703          	lw	a4,-40(a5)
ffffffffc0206f36:	00177693          	andi	a3,a4,1
ffffffffc0206f3a:	e295                	bnez	a3,ffffffffc0206f5e <do_kill+0x78>
ffffffffc0206f3c:	4bd4                	lw	a3,20(a5)
ffffffffc0206f3e:	00176713          	ori	a4,a4,1
ffffffffc0206f42:	fce7ac23          	sw	a4,-40(a5)
ffffffffc0206f46:	4401                	li	s0,0
ffffffffc0206f48:	fe06d0e3          	bgez	a3,ffffffffc0206f28 <do_kill+0x42>
ffffffffc0206f4c:	f2878513          	addi	a0,a5,-216
ffffffffc0206f50:	45a000ef          	jal	ra,ffffffffc02073aa <wakeup_proc>
ffffffffc0206f54:	60a2                	ld	ra,8(sp)
ffffffffc0206f56:	8522                	mv	a0,s0
ffffffffc0206f58:	6402                	ld	s0,0(sp)
ffffffffc0206f5a:	0141                	addi	sp,sp,16
ffffffffc0206f5c:	8082                	ret
ffffffffc0206f5e:	545d                	li	s0,-9
ffffffffc0206f60:	b7e1                	j	ffffffffc0206f28 <do_kill+0x42>

ffffffffc0206f62 <proc_init>:
ffffffffc0206f62:	1101                	addi	sp,sp,-32
ffffffffc0206f64:	e426                	sd	s1,8(sp)
ffffffffc0206f66:	0008f797          	auipc	a5,0x8f
ffffffffc0206f6a:	85a78793          	addi	a5,a5,-1958 # ffffffffc02957c0 <proc_list>
ffffffffc0206f6e:	ec06                	sd	ra,24(sp)
ffffffffc0206f70:	e822                	sd	s0,16(sp)
ffffffffc0206f72:	e04a                	sd	s2,0(sp)
ffffffffc0206f74:	0008b497          	auipc	s1,0x8b
ffffffffc0206f78:	84c48493          	addi	s1,s1,-1972 # ffffffffc02917c0 <hash_list>
ffffffffc0206f7c:	e79c                	sd	a5,8(a5)
ffffffffc0206f7e:	e39c                	sd	a5,0(a5)
ffffffffc0206f80:	0008f717          	auipc	a4,0x8f
ffffffffc0206f84:	84070713          	addi	a4,a4,-1984 # ffffffffc02957c0 <proc_list>
ffffffffc0206f88:	87a6                	mv	a5,s1
ffffffffc0206f8a:	e79c                	sd	a5,8(a5)
ffffffffc0206f8c:	e39c                	sd	a5,0(a5)
ffffffffc0206f8e:	07c1                	addi	a5,a5,16
ffffffffc0206f90:	fef71de3          	bne	a4,a5,ffffffffc0206f8a <proc_init+0x28>
ffffffffc0206f94:	b69fe0ef          	jal	ra,ffffffffc0205afc <alloc_proc>
ffffffffc0206f98:	00090917          	auipc	s2,0x90
ffffffffc0206f9c:	93090913          	addi	s2,s2,-1744 # ffffffffc02968c8 <idleproc>
ffffffffc0206fa0:	00a93023          	sd	a0,0(s2)
ffffffffc0206fa4:	842a                	mv	s0,a0
ffffffffc0206fa6:	12050863          	beqz	a0,ffffffffc02070d6 <proc_init+0x174>
ffffffffc0206faa:	4789                	li	a5,2
ffffffffc0206fac:	e11c                	sd	a5,0(a0)
ffffffffc0206fae:	0000a797          	auipc	a5,0xa
ffffffffc0206fb2:	05278793          	addi	a5,a5,82 # ffffffffc0211000 <bootstack>
ffffffffc0206fb6:	e91c                	sd	a5,16(a0)
ffffffffc0206fb8:	4785                	li	a5,1
ffffffffc0206fba:	ed1c                	sd	a5,24(a0)
ffffffffc0206fbc:	b3afe0ef          	jal	ra,ffffffffc02052f6 <files_create>
ffffffffc0206fc0:	14a43423          	sd	a0,328(s0)
ffffffffc0206fc4:	0e050d63          	beqz	a0,ffffffffc02070be <proc_init+0x15c>
ffffffffc0206fc8:	00093403          	ld	s0,0(s2)
ffffffffc0206fcc:	4641                	li	a2,16
ffffffffc0206fce:	4581                	li	a1,0
ffffffffc0206fd0:	14843703          	ld	a4,328(s0)
ffffffffc0206fd4:	0b440413          	addi	s0,s0,180
ffffffffc0206fd8:	8522                	mv	a0,s0
ffffffffc0206fda:	4b1c                	lw	a5,16(a4)
ffffffffc0206fdc:	2785                	addiw	a5,a5,1
ffffffffc0206fde:	cb1c                	sw	a5,16(a4)
ffffffffc0206fe0:	64e040ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc0206fe4:	463d                	li	a2,15
ffffffffc0206fe6:	00007597          	auipc	a1,0x7
ffffffffc0206fea:	a9a58593          	addi	a1,a1,-1382 # ffffffffc020da80 <CSWTCH.79+0x3b8>
ffffffffc0206fee:	8522                	mv	a0,s0
ffffffffc0206ff0:	690040ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc0206ff4:	00090717          	auipc	a4,0x90
ffffffffc0206ff8:	8e470713          	addi	a4,a4,-1820 # ffffffffc02968d8 <nr_process>
ffffffffc0206ffc:	431c                	lw	a5,0(a4)
ffffffffc0206ffe:	00093683          	ld	a3,0(s2)
ffffffffc0207002:	4601                	li	a2,0
ffffffffc0207004:	2785                	addiw	a5,a5,1
ffffffffc0207006:	4581                	li	a1,0
ffffffffc0207008:	fffff517          	auipc	a0,0xfffff
ffffffffc020700c:	4b450513          	addi	a0,a0,1204 # ffffffffc02064bc <init_main>
ffffffffc0207010:	c31c                	sw	a5,0(a4)
ffffffffc0207012:	00090797          	auipc	a5,0x90
ffffffffc0207016:	8ad7b723          	sd	a3,-1874(a5) # ffffffffc02968c0 <current>
ffffffffc020701a:	91eff0ef          	jal	ra,ffffffffc0206138 <kernel_thread>
ffffffffc020701e:	842a                	mv	s0,a0
ffffffffc0207020:	08a05363          	blez	a0,ffffffffc02070a6 <proc_init+0x144>
ffffffffc0207024:	6789                	lui	a5,0x2
ffffffffc0207026:	fff5071b          	addiw	a4,a0,-1
ffffffffc020702a:	17f9                	addi	a5,a5,-2
ffffffffc020702c:	2501                	sext.w	a0,a0
ffffffffc020702e:	02e7e363          	bltu	a5,a4,ffffffffc0207054 <proc_init+0xf2>
ffffffffc0207032:	45a9                	li	a1,10
ffffffffc0207034:	0c6040ef          	jal	ra,ffffffffc020b0fa <hash32>
ffffffffc0207038:	02051793          	slli	a5,a0,0x20
ffffffffc020703c:	01c7d693          	srli	a3,a5,0x1c
ffffffffc0207040:	96a6                	add	a3,a3,s1
ffffffffc0207042:	87b6                	mv	a5,a3
ffffffffc0207044:	a029                	j	ffffffffc020704e <proc_init+0xec>
ffffffffc0207046:	f2c7a703          	lw	a4,-212(a5) # 1f2c <_binary_bin_swap_img_size-0x5dd4>
ffffffffc020704a:	04870b63          	beq	a4,s0,ffffffffc02070a0 <proc_init+0x13e>
ffffffffc020704e:	679c                	ld	a5,8(a5)
ffffffffc0207050:	fef69be3          	bne	a3,a5,ffffffffc0207046 <proc_init+0xe4>
ffffffffc0207054:	4781                	li	a5,0
ffffffffc0207056:	0b478493          	addi	s1,a5,180
ffffffffc020705a:	4641                	li	a2,16
ffffffffc020705c:	4581                	li	a1,0
ffffffffc020705e:	00090417          	auipc	s0,0x90
ffffffffc0207062:	87240413          	addi	s0,s0,-1934 # ffffffffc02968d0 <initproc>
ffffffffc0207066:	8526                	mv	a0,s1
ffffffffc0207068:	e01c                	sd	a5,0(s0)
ffffffffc020706a:	5c4040ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc020706e:	463d                	li	a2,15
ffffffffc0207070:	00007597          	auipc	a1,0x7
ffffffffc0207074:	a3858593          	addi	a1,a1,-1480 # ffffffffc020daa8 <CSWTCH.79+0x3e0>
ffffffffc0207078:	8526                	mv	a0,s1
ffffffffc020707a:	606040ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc020707e:	00093783          	ld	a5,0(s2)
ffffffffc0207082:	c7d1                	beqz	a5,ffffffffc020710e <proc_init+0x1ac>
ffffffffc0207084:	43dc                	lw	a5,4(a5)
ffffffffc0207086:	e7c1                	bnez	a5,ffffffffc020710e <proc_init+0x1ac>
ffffffffc0207088:	601c                	ld	a5,0(s0)
ffffffffc020708a:	c3b5                	beqz	a5,ffffffffc02070ee <proc_init+0x18c>
ffffffffc020708c:	43d8                	lw	a4,4(a5)
ffffffffc020708e:	4785                	li	a5,1
ffffffffc0207090:	04f71f63          	bne	a4,a5,ffffffffc02070ee <proc_init+0x18c>
ffffffffc0207094:	60e2                	ld	ra,24(sp)
ffffffffc0207096:	6442                	ld	s0,16(sp)
ffffffffc0207098:	64a2                	ld	s1,8(sp)
ffffffffc020709a:	6902                	ld	s2,0(sp)
ffffffffc020709c:	6105                	addi	sp,sp,32
ffffffffc020709e:	8082                	ret
ffffffffc02070a0:	f2878793          	addi	a5,a5,-216
ffffffffc02070a4:	bf4d                	j	ffffffffc0207056 <proc_init+0xf4>
ffffffffc02070a6:	00007617          	auipc	a2,0x7
ffffffffc02070aa:	9e260613          	addi	a2,a2,-1566 # ffffffffc020da88 <CSWTCH.79+0x3c0>
ffffffffc02070ae:	4ef00593          	li	a1,1263
ffffffffc02070b2:	00006517          	auipc	a0,0x6
ffffffffc02070b6:	72650513          	addi	a0,a0,1830 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc02070ba:	be4f90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02070be:	00007617          	auipc	a2,0x7
ffffffffc02070c2:	99a60613          	addi	a2,a2,-1638 # ffffffffc020da58 <CSWTCH.79+0x390>
ffffffffc02070c6:	4e300593          	li	a1,1251
ffffffffc02070ca:	00006517          	auipc	a0,0x6
ffffffffc02070ce:	70e50513          	addi	a0,a0,1806 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc02070d2:	bccf90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02070d6:	00007617          	auipc	a2,0x7
ffffffffc02070da:	96a60613          	addi	a2,a2,-1686 # ffffffffc020da40 <CSWTCH.79+0x378>
ffffffffc02070de:	4d900593          	li	a1,1241
ffffffffc02070e2:	00006517          	auipc	a0,0x6
ffffffffc02070e6:	6f650513          	addi	a0,a0,1782 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc02070ea:	bb4f90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02070ee:	00007697          	auipc	a3,0x7
ffffffffc02070f2:	9ea68693          	addi	a3,a3,-1558 # ffffffffc020dad8 <CSWTCH.79+0x410>
ffffffffc02070f6:	00005617          	auipc	a2,0x5
ffffffffc02070fa:	a1a60613          	addi	a2,a2,-1510 # ffffffffc020bb10 <commands+0x210>
ffffffffc02070fe:	4f600593          	li	a1,1270
ffffffffc0207102:	00006517          	auipc	a0,0x6
ffffffffc0207106:	6d650513          	addi	a0,a0,1750 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc020710a:	b94f90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020710e:	00007697          	auipc	a3,0x7
ffffffffc0207112:	9a268693          	addi	a3,a3,-1630 # ffffffffc020dab0 <CSWTCH.79+0x3e8>
ffffffffc0207116:	00005617          	auipc	a2,0x5
ffffffffc020711a:	9fa60613          	addi	a2,a2,-1542 # ffffffffc020bb10 <commands+0x210>
ffffffffc020711e:	4f500593          	li	a1,1269
ffffffffc0207122:	00006517          	auipc	a0,0x6
ffffffffc0207126:	6b650513          	addi	a0,a0,1718 # ffffffffc020d7d8 <CSWTCH.79+0x110>
ffffffffc020712a:	b74f90ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020712e <cpu_idle>:
ffffffffc020712e:	1141                	addi	sp,sp,-16
ffffffffc0207130:	e022                	sd	s0,0(sp)
ffffffffc0207132:	e406                	sd	ra,8(sp)
ffffffffc0207134:	0008f417          	auipc	s0,0x8f
ffffffffc0207138:	78c40413          	addi	s0,s0,1932 # ffffffffc02968c0 <current>
ffffffffc020713c:	6018                	ld	a4,0(s0)
ffffffffc020713e:	6f1c                	ld	a5,24(a4)
ffffffffc0207140:	dffd                	beqz	a5,ffffffffc020713e <cpu_idle+0x10>
ffffffffc0207142:	31a000ef          	jal	ra,ffffffffc020745c <schedule>
ffffffffc0207146:	bfdd                	j	ffffffffc020713c <cpu_idle+0xe>

ffffffffc0207148 <lab6_set_priority>:
ffffffffc0207148:	1141                	addi	sp,sp,-16
ffffffffc020714a:	e022                	sd	s0,0(sp)
ffffffffc020714c:	85aa                	mv	a1,a0
ffffffffc020714e:	842a                	mv	s0,a0
ffffffffc0207150:	00007517          	auipc	a0,0x7
ffffffffc0207154:	9b050513          	addi	a0,a0,-1616 # ffffffffc020db00 <CSWTCH.79+0x438>
ffffffffc0207158:	e406                	sd	ra,8(sp)
ffffffffc020715a:	84cf90ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020715e:	0008f797          	auipc	a5,0x8f
ffffffffc0207162:	7627b783          	ld	a5,1890(a5) # ffffffffc02968c0 <current>
ffffffffc0207166:	e801                	bnez	s0,ffffffffc0207176 <lab6_set_priority+0x2e>
ffffffffc0207168:	60a2                	ld	ra,8(sp)
ffffffffc020716a:	6402                	ld	s0,0(sp)
ffffffffc020716c:	4705                	li	a4,1
ffffffffc020716e:	14e7a223          	sw	a4,324(a5)
ffffffffc0207172:	0141                	addi	sp,sp,16
ffffffffc0207174:	8082                	ret
ffffffffc0207176:	60a2                	ld	ra,8(sp)
ffffffffc0207178:	1487a223          	sw	s0,324(a5)
ffffffffc020717c:	6402                	ld	s0,0(sp)
ffffffffc020717e:	0141                	addi	sp,sp,16
ffffffffc0207180:	8082                	ret

ffffffffc0207182 <do_sleep>:
ffffffffc0207182:	c539                	beqz	a0,ffffffffc02071d0 <do_sleep+0x4e>
ffffffffc0207184:	7179                	addi	sp,sp,-48
ffffffffc0207186:	f022                	sd	s0,32(sp)
ffffffffc0207188:	f406                	sd	ra,40(sp)
ffffffffc020718a:	842a                	mv	s0,a0
ffffffffc020718c:	100027f3          	csrr	a5,sstatus
ffffffffc0207190:	8b89                	andi	a5,a5,2
ffffffffc0207192:	e3a9                	bnez	a5,ffffffffc02071d4 <do_sleep+0x52>
ffffffffc0207194:	0008f797          	auipc	a5,0x8f
ffffffffc0207198:	72c7b783          	ld	a5,1836(a5) # ffffffffc02968c0 <current>
ffffffffc020719c:	0818                	addi	a4,sp,16
ffffffffc020719e:	c02a                	sw	a0,0(sp)
ffffffffc02071a0:	ec3a                	sd	a4,24(sp)
ffffffffc02071a2:	e83a                	sd	a4,16(sp)
ffffffffc02071a4:	e43e                	sd	a5,8(sp)
ffffffffc02071a6:	4705                	li	a4,1
ffffffffc02071a8:	c398                	sw	a4,0(a5)
ffffffffc02071aa:	80000737          	lui	a4,0x80000
ffffffffc02071ae:	840a                	mv	s0,sp
ffffffffc02071b0:	0709                	addi	a4,a4,2
ffffffffc02071b2:	0ee7a623          	sw	a4,236(a5)
ffffffffc02071b6:	8522                	mv	a0,s0
ffffffffc02071b8:	364000ef          	jal	ra,ffffffffc020751c <add_timer>
ffffffffc02071bc:	2a0000ef          	jal	ra,ffffffffc020745c <schedule>
ffffffffc02071c0:	8522                	mv	a0,s0
ffffffffc02071c2:	422000ef          	jal	ra,ffffffffc02075e4 <del_timer>
ffffffffc02071c6:	70a2                	ld	ra,40(sp)
ffffffffc02071c8:	7402                	ld	s0,32(sp)
ffffffffc02071ca:	4501                	li	a0,0
ffffffffc02071cc:	6145                	addi	sp,sp,48
ffffffffc02071ce:	8082                	ret
ffffffffc02071d0:	4501                	li	a0,0
ffffffffc02071d2:	8082                	ret
ffffffffc02071d4:	a9ff90ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02071d8:	0008f797          	auipc	a5,0x8f
ffffffffc02071dc:	6e87b783          	ld	a5,1768(a5) # ffffffffc02968c0 <current>
ffffffffc02071e0:	0818                	addi	a4,sp,16
ffffffffc02071e2:	c022                	sw	s0,0(sp)
ffffffffc02071e4:	e43e                	sd	a5,8(sp)
ffffffffc02071e6:	ec3a                	sd	a4,24(sp)
ffffffffc02071e8:	e83a                	sd	a4,16(sp)
ffffffffc02071ea:	4705                	li	a4,1
ffffffffc02071ec:	c398                	sw	a4,0(a5)
ffffffffc02071ee:	80000737          	lui	a4,0x80000
ffffffffc02071f2:	0709                	addi	a4,a4,2
ffffffffc02071f4:	840a                	mv	s0,sp
ffffffffc02071f6:	8522                	mv	a0,s0
ffffffffc02071f8:	0ee7a623          	sw	a4,236(a5)
ffffffffc02071fc:	320000ef          	jal	ra,ffffffffc020751c <add_timer>
ffffffffc0207200:	a6df90ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0207204:	bf65                	j	ffffffffc02071bc <do_sleep+0x3a>

ffffffffc0207206 <switch_to>:
ffffffffc0207206:	00153023          	sd	ra,0(a0)
ffffffffc020720a:	00253423          	sd	sp,8(a0)
ffffffffc020720e:	e900                	sd	s0,16(a0)
ffffffffc0207210:	ed04                	sd	s1,24(a0)
ffffffffc0207212:	03253023          	sd	s2,32(a0)
ffffffffc0207216:	03353423          	sd	s3,40(a0)
ffffffffc020721a:	03453823          	sd	s4,48(a0)
ffffffffc020721e:	03553c23          	sd	s5,56(a0)
ffffffffc0207222:	05653023          	sd	s6,64(a0)
ffffffffc0207226:	05753423          	sd	s7,72(a0)
ffffffffc020722a:	05853823          	sd	s8,80(a0)
ffffffffc020722e:	05953c23          	sd	s9,88(a0)
ffffffffc0207232:	07a53023          	sd	s10,96(a0)
ffffffffc0207236:	07b53423          	sd	s11,104(a0)
ffffffffc020723a:	0005b083          	ld	ra,0(a1)
ffffffffc020723e:	0085b103          	ld	sp,8(a1)
ffffffffc0207242:	6980                	ld	s0,16(a1)
ffffffffc0207244:	6d84                	ld	s1,24(a1)
ffffffffc0207246:	0205b903          	ld	s2,32(a1)
ffffffffc020724a:	0285b983          	ld	s3,40(a1)
ffffffffc020724e:	0305ba03          	ld	s4,48(a1)
ffffffffc0207252:	0385ba83          	ld	s5,56(a1)
ffffffffc0207256:	0405bb03          	ld	s6,64(a1)
ffffffffc020725a:	0485bb83          	ld	s7,72(a1)
ffffffffc020725e:	0505bc03          	ld	s8,80(a1)
ffffffffc0207262:	0585bc83          	ld	s9,88(a1)
ffffffffc0207266:	0605bd03          	ld	s10,96(a1)
ffffffffc020726a:	0685bd83          	ld	s11,104(a1)
ffffffffc020726e:	8082                	ret

ffffffffc0207270 <RR_init>:
ffffffffc0207270:	e508                	sd	a0,8(a0)
ffffffffc0207272:	e108                	sd	a0,0(a0)
ffffffffc0207274:	00052823          	sw	zero,16(a0)
ffffffffc0207278:	8082                	ret

ffffffffc020727a <RR_pick_next>:
ffffffffc020727a:	651c                	ld	a5,8(a0)
ffffffffc020727c:	00f50563          	beq	a0,a5,ffffffffc0207286 <RR_pick_next+0xc>
ffffffffc0207280:	ef078513          	addi	a0,a5,-272
ffffffffc0207284:	8082                	ret
ffffffffc0207286:	4501                	li	a0,0
ffffffffc0207288:	8082                	ret

ffffffffc020728a <RR_proc_tick>:
ffffffffc020728a:	1205a783          	lw	a5,288(a1)
ffffffffc020728e:	00f05563          	blez	a5,ffffffffc0207298 <RR_proc_tick+0xe>
ffffffffc0207292:	37fd                	addiw	a5,a5,-1
ffffffffc0207294:	12f5a023          	sw	a5,288(a1)
ffffffffc0207298:	e399                	bnez	a5,ffffffffc020729e <RR_proc_tick+0x14>
ffffffffc020729a:	4785                	li	a5,1
ffffffffc020729c:	ed9c                	sd	a5,24(a1)
ffffffffc020729e:	8082                	ret

ffffffffc02072a0 <RR_dequeue>:
ffffffffc02072a0:	1185b703          	ld	a4,280(a1)
ffffffffc02072a4:	11058793          	addi	a5,a1,272
ffffffffc02072a8:	02e78363          	beq	a5,a4,ffffffffc02072ce <RR_dequeue+0x2e>
ffffffffc02072ac:	1085b683          	ld	a3,264(a1)
ffffffffc02072b0:	00a69f63          	bne	a3,a0,ffffffffc02072ce <RR_dequeue+0x2e>
ffffffffc02072b4:	1105b503          	ld	a0,272(a1)
ffffffffc02072b8:	4a90                	lw	a2,16(a3)
ffffffffc02072ba:	e518                	sd	a4,8(a0)
ffffffffc02072bc:	e308                	sd	a0,0(a4)
ffffffffc02072be:	10f5bc23          	sd	a5,280(a1)
ffffffffc02072c2:	10f5b823          	sd	a5,272(a1)
ffffffffc02072c6:	fff6079b          	addiw	a5,a2,-1
ffffffffc02072ca:	ca9c                	sw	a5,16(a3)
ffffffffc02072cc:	8082                	ret
ffffffffc02072ce:	1141                	addi	sp,sp,-16
ffffffffc02072d0:	00007697          	auipc	a3,0x7
ffffffffc02072d4:	84868693          	addi	a3,a3,-1976 # ffffffffc020db18 <CSWTCH.79+0x450>
ffffffffc02072d8:	00005617          	auipc	a2,0x5
ffffffffc02072dc:	83860613          	addi	a2,a2,-1992 # ffffffffc020bb10 <commands+0x210>
ffffffffc02072e0:	03c00593          	li	a1,60
ffffffffc02072e4:	00007517          	auipc	a0,0x7
ffffffffc02072e8:	86c50513          	addi	a0,a0,-1940 # ffffffffc020db50 <CSWTCH.79+0x488>
ffffffffc02072ec:	e406                	sd	ra,8(sp)
ffffffffc02072ee:	9b0f90ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02072f2 <RR_enqueue>:
ffffffffc02072f2:	1185b703          	ld	a4,280(a1)
ffffffffc02072f6:	11058793          	addi	a5,a1,272
ffffffffc02072fa:	02e79d63          	bne	a5,a4,ffffffffc0207334 <RR_enqueue+0x42>
ffffffffc02072fe:	6118                	ld	a4,0(a0)
ffffffffc0207300:	1205a683          	lw	a3,288(a1)
ffffffffc0207304:	e11c                	sd	a5,0(a0)
ffffffffc0207306:	e71c                	sd	a5,8(a4)
ffffffffc0207308:	10a5bc23          	sd	a0,280(a1)
ffffffffc020730c:	10e5b823          	sd	a4,272(a1)
ffffffffc0207310:	495c                	lw	a5,20(a0)
ffffffffc0207312:	ea89                	bnez	a3,ffffffffc0207324 <RR_enqueue+0x32>
ffffffffc0207314:	12f5a023          	sw	a5,288(a1)
ffffffffc0207318:	491c                	lw	a5,16(a0)
ffffffffc020731a:	10a5b423          	sd	a0,264(a1)
ffffffffc020731e:	2785                	addiw	a5,a5,1
ffffffffc0207320:	c91c                	sw	a5,16(a0)
ffffffffc0207322:	8082                	ret
ffffffffc0207324:	fed7c8e3          	blt	a5,a3,ffffffffc0207314 <RR_enqueue+0x22>
ffffffffc0207328:	491c                	lw	a5,16(a0)
ffffffffc020732a:	10a5b423          	sd	a0,264(a1)
ffffffffc020732e:	2785                	addiw	a5,a5,1
ffffffffc0207330:	c91c                	sw	a5,16(a0)
ffffffffc0207332:	8082                	ret
ffffffffc0207334:	1141                	addi	sp,sp,-16
ffffffffc0207336:	00007697          	auipc	a3,0x7
ffffffffc020733a:	83a68693          	addi	a3,a3,-1990 # ffffffffc020db70 <CSWTCH.79+0x4a8>
ffffffffc020733e:	00004617          	auipc	a2,0x4
ffffffffc0207342:	7d260613          	addi	a2,a2,2002 # ffffffffc020bb10 <commands+0x210>
ffffffffc0207346:	02800593          	li	a1,40
ffffffffc020734a:	00007517          	auipc	a0,0x7
ffffffffc020734e:	80650513          	addi	a0,a0,-2042 # ffffffffc020db50 <CSWTCH.79+0x488>
ffffffffc0207352:	e406                	sd	ra,8(sp)
ffffffffc0207354:	94af90ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207358 <sched_init>:
ffffffffc0207358:	1141                	addi	sp,sp,-16
ffffffffc020735a:	0008a717          	auipc	a4,0x8a
ffffffffc020735e:	cc670713          	addi	a4,a4,-826 # ffffffffc0291020 <default_sched_class>
ffffffffc0207362:	e022                	sd	s0,0(sp)
ffffffffc0207364:	e406                	sd	ra,8(sp)
ffffffffc0207366:	0008e797          	auipc	a5,0x8e
ffffffffc020736a:	48a78793          	addi	a5,a5,1162 # ffffffffc02957f0 <timer_list>
ffffffffc020736e:	6714                	ld	a3,8(a4)
ffffffffc0207370:	0008e517          	auipc	a0,0x8e
ffffffffc0207374:	46050513          	addi	a0,a0,1120 # ffffffffc02957d0 <__rq>
ffffffffc0207378:	e79c                	sd	a5,8(a5)
ffffffffc020737a:	e39c                	sd	a5,0(a5)
ffffffffc020737c:	4795                	li	a5,5
ffffffffc020737e:	c95c                	sw	a5,20(a0)
ffffffffc0207380:	0008f417          	auipc	s0,0x8f
ffffffffc0207384:	56840413          	addi	s0,s0,1384 # ffffffffc02968e8 <sched_class>
ffffffffc0207388:	0008f797          	auipc	a5,0x8f
ffffffffc020738c:	54a7bc23          	sd	a0,1368(a5) # ffffffffc02968e0 <rq>
ffffffffc0207390:	e018                	sd	a4,0(s0)
ffffffffc0207392:	9682                	jalr	a3
ffffffffc0207394:	601c                	ld	a5,0(s0)
ffffffffc0207396:	6402                	ld	s0,0(sp)
ffffffffc0207398:	60a2                	ld	ra,8(sp)
ffffffffc020739a:	638c                	ld	a1,0(a5)
ffffffffc020739c:	00007517          	auipc	a0,0x7
ffffffffc02073a0:	80450513          	addi	a0,a0,-2044 # ffffffffc020dba0 <CSWTCH.79+0x4d8>
ffffffffc02073a4:	0141                	addi	sp,sp,16
ffffffffc02073a6:	e01f806f          	j	ffffffffc02001a6 <cprintf>

ffffffffc02073aa <wakeup_proc>:
ffffffffc02073aa:	4118                	lw	a4,0(a0)
ffffffffc02073ac:	1101                	addi	sp,sp,-32
ffffffffc02073ae:	ec06                	sd	ra,24(sp)
ffffffffc02073b0:	e822                	sd	s0,16(sp)
ffffffffc02073b2:	e426                	sd	s1,8(sp)
ffffffffc02073b4:	478d                	li	a5,3
ffffffffc02073b6:	08f70363          	beq	a4,a5,ffffffffc020743c <wakeup_proc+0x92>
ffffffffc02073ba:	842a                	mv	s0,a0
ffffffffc02073bc:	100027f3          	csrr	a5,sstatus
ffffffffc02073c0:	8b89                	andi	a5,a5,2
ffffffffc02073c2:	4481                	li	s1,0
ffffffffc02073c4:	e7bd                	bnez	a5,ffffffffc0207432 <wakeup_proc+0x88>
ffffffffc02073c6:	4789                	li	a5,2
ffffffffc02073c8:	04f70863          	beq	a4,a5,ffffffffc0207418 <wakeup_proc+0x6e>
ffffffffc02073cc:	c01c                	sw	a5,0(s0)
ffffffffc02073ce:	0e042623          	sw	zero,236(s0)
ffffffffc02073d2:	0008f797          	auipc	a5,0x8f
ffffffffc02073d6:	4ee7b783          	ld	a5,1262(a5) # ffffffffc02968c0 <current>
ffffffffc02073da:	02878363          	beq	a5,s0,ffffffffc0207400 <wakeup_proc+0x56>
ffffffffc02073de:	0008f797          	auipc	a5,0x8f
ffffffffc02073e2:	4ea7b783          	ld	a5,1258(a5) # ffffffffc02968c8 <idleproc>
ffffffffc02073e6:	00f40d63          	beq	s0,a5,ffffffffc0207400 <wakeup_proc+0x56>
ffffffffc02073ea:	0008f797          	auipc	a5,0x8f
ffffffffc02073ee:	4fe7b783          	ld	a5,1278(a5) # ffffffffc02968e8 <sched_class>
ffffffffc02073f2:	6b9c                	ld	a5,16(a5)
ffffffffc02073f4:	85a2                	mv	a1,s0
ffffffffc02073f6:	0008f517          	auipc	a0,0x8f
ffffffffc02073fa:	4ea53503          	ld	a0,1258(a0) # ffffffffc02968e0 <rq>
ffffffffc02073fe:	9782                	jalr	a5
ffffffffc0207400:	e491                	bnez	s1,ffffffffc020740c <wakeup_proc+0x62>
ffffffffc0207402:	60e2                	ld	ra,24(sp)
ffffffffc0207404:	6442                	ld	s0,16(sp)
ffffffffc0207406:	64a2                	ld	s1,8(sp)
ffffffffc0207408:	6105                	addi	sp,sp,32
ffffffffc020740a:	8082                	ret
ffffffffc020740c:	6442                	ld	s0,16(sp)
ffffffffc020740e:	60e2                	ld	ra,24(sp)
ffffffffc0207410:	64a2                	ld	s1,8(sp)
ffffffffc0207412:	6105                	addi	sp,sp,32
ffffffffc0207414:	859f906f          	j	ffffffffc0200c6c <intr_enable>
ffffffffc0207418:	00006617          	auipc	a2,0x6
ffffffffc020741c:	7d860613          	addi	a2,a2,2008 # ffffffffc020dbf0 <CSWTCH.79+0x528>
ffffffffc0207420:	05200593          	li	a1,82
ffffffffc0207424:	00006517          	auipc	a0,0x6
ffffffffc0207428:	7b450513          	addi	a0,a0,1972 # ffffffffc020dbd8 <CSWTCH.79+0x510>
ffffffffc020742c:	8daf90ef          	jal	ra,ffffffffc0200506 <__warn>
ffffffffc0207430:	bfc1                	j	ffffffffc0207400 <wakeup_proc+0x56>
ffffffffc0207432:	841f90ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0207436:	4018                	lw	a4,0(s0)
ffffffffc0207438:	4485                	li	s1,1
ffffffffc020743a:	b771                	j	ffffffffc02073c6 <wakeup_proc+0x1c>
ffffffffc020743c:	00006697          	auipc	a3,0x6
ffffffffc0207440:	77c68693          	addi	a3,a3,1916 # ffffffffc020dbb8 <CSWTCH.79+0x4f0>
ffffffffc0207444:	00004617          	auipc	a2,0x4
ffffffffc0207448:	6cc60613          	addi	a2,a2,1740 # ffffffffc020bb10 <commands+0x210>
ffffffffc020744c:	04300593          	li	a1,67
ffffffffc0207450:	00006517          	auipc	a0,0x6
ffffffffc0207454:	78850513          	addi	a0,a0,1928 # ffffffffc020dbd8 <CSWTCH.79+0x510>
ffffffffc0207458:	846f90ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020745c <schedule>:
ffffffffc020745c:	7179                	addi	sp,sp,-48
ffffffffc020745e:	f406                	sd	ra,40(sp)
ffffffffc0207460:	f022                	sd	s0,32(sp)
ffffffffc0207462:	ec26                	sd	s1,24(sp)
ffffffffc0207464:	e84a                	sd	s2,16(sp)
ffffffffc0207466:	e44e                	sd	s3,8(sp)
ffffffffc0207468:	e052                	sd	s4,0(sp)
ffffffffc020746a:	100027f3          	csrr	a5,sstatus
ffffffffc020746e:	8b89                	andi	a5,a5,2
ffffffffc0207470:	4a01                	li	s4,0
ffffffffc0207472:	e3cd                	bnez	a5,ffffffffc0207514 <schedule+0xb8>
ffffffffc0207474:	0008f497          	auipc	s1,0x8f
ffffffffc0207478:	44c48493          	addi	s1,s1,1100 # ffffffffc02968c0 <current>
ffffffffc020747c:	608c                	ld	a1,0(s1)
ffffffffc020747e:	0008f997          	auipc	s3,0x8f
ffffffffc0207482:	46a98993          	addi	s3,s3,1130 # ffffffffc02968e8 <sched_class>
ffffffffc0207486:	0008f917          	auipc	s2,0x8f
ffffffffc020748a:	45a90913          	addi	s2,s2,1114 # ffffffffc02968e0 <rq>
ffffffffc020748e:	4194                	lw	a3,0(a1)
ffffffffc0207490:	0005bc23          	sd	zero,24(a1)
ffffffffc0207494:	4709                	li	a4,2
ffffffffc0207496:	0009b783          	ld	a5,0(s3)
ffffffffc020749a:	00093503          	ld	a0,0(s2)
ffffffffc020749e:	04e68e63          	beq	a3,a4,ffffffffc02074fa <schedule+0x9e>
ffffffffc02074a2:	739c                	ld	a5,32(a5)
ffffffffc02074a4:	9782                	jalr	a5
ffffffffc02074a6:	842a                	mv	s0,a0
ffffffffc02074a8:	c521                	beqz	a0,ffffffffc02074f0 <schedule+0x94>
ffffffffc02074aa:	0009b783          	ld	a5,0(s3)
ffffffffc02074ae:	00093503          	ld	a0,0(s2)
ffffffffc02074b2:	85a2                	mv	a1,s0
ffffffffc02074b4:	6f9c                	ld	a5,24(a5)
ffffffffc02074b6:	9782                	jalr	a5
ffffffffc02074b8:	441c                	lw	a5,8(s0)
ffffffffc02074ba:	6098                	ld	a4,0(s1)
ffffffffc02074bc:	2785                	addiw	a5,a5,1
ffffffffc02074be:	c41c                	sw	a5,8(s0)
ffffffffc02074c0:	00870563          	beq	a4,s0,ffffffffc02074ca <schedule+0x6e>
ffffffffc02074c4:	8522                	mv	a0,s0
ffffffffc02074c6:	fd6fe0ef          	jal	ra,ffffffffc0205c9c <proc_run>
ffffffffc02074ca:	000a1a63          	bnez	s4,ffffffffc02074de <schedule+0x82>
ffffffffc02074ce:	70a2                	ld	ra,40(sp)
ffffffffc02074d0:	7402                	ld	s0,32(sp)
ffffffffc02074d2:	64e2                	ld	s1,24(sp)
ffffffffc02074d4:	6942                	ld	s2,16(sp)
ffffffffc02074d6:	69a2                	ld	s3,8(sp)
ffffffffc02074d8:	6a02                	ld	s4,0(sp)
ffffffffc02074da:	6145                	addi	sp,sp,48
ffffffffc02074dc:	8082                	ret
ffffffffc02074de:	7402                	ld	s0,32(sp)
ffffffffc02074e0:	70a2                	ld	ra,40(sp)
ffffffffc02074e2:	64e2                	ld	s1,24(sp)
ffffffffc02074e4:	6942                	ld	s2,16(sp)
ffffffffc02074e6:	69a2                	ld	s3,8(sp)
ffffffffc02074e8:	6a02                	ld	s4,0(sp)
ffffffffc02074ea:	6145                	addi	sp,sp,48
ffffffffc02074ec:	f80f906f          	j	ffffffffc0200c6c <intr_enable>
ffffffffc02074f0:	0008f417          	auipc	s0,0x8f
ffffffffc02074f4:	3d843403          	ld	s0,984(s0) # ffffffffc02968c8 <idleproc>
ffffffffc02074f8:	b7c1                	j	ffffffffc02074b8 <schedule+0x5c>
ffffffffc02074fa:	0008f717          	auipc	a4,0x8f
ffffffffc02074fe:	3ce73703          	ld	a4,974(a4) # ffffffffc02968c8 <idleproc>
ffffffffc0207502:	fae580e3          	beq	a1,a4,ffffffffc02074a2 <schedule+0x46>
ffffffffc0207506:	6b9c                	ld	a5,16(a5)
ffffffffc0207508:	9782                	jalr	a5
ffffffffc020750a:	0009b783          	ld	a5,0(s3)
ffffffffc020750e:	00093503          	ld	a0,0(s2)
ffffffffc0207512:	bf41                	j	ffffffffc02074a2 <schedule+0x46>
ffffffffc0207514:	f5ef90ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0207518:	4a05                	li	s4,1
ffffffffc020751a:	bfa9                	j	ffffffffc0207474 <schedule+0x18>

ffffffffc020751c <add_timer>:
ffffffffc020751c:	1141                	addi	sp,sp,-16
ffffffffc020751e:	e022                	sd	s0,0(sp)
ffffffffc0207520:	e406                	sd	ra,8(sp)
ffffffffc0207522:	842a                	mv	s0,a0
ffffffffc0207524:	100027f3          	csrr	a5,sstatus
ffffffffc0207528:	8b89                	andi	a5,a5,2
ffffffffc020752a:	4501                	li	a0,0
ffffffffc020752c:	eba5                	bnez	a5,ffffffffc020759c <add_timer+0x80>
ffffffffc020752e:	401c                	lw	a5,0(s0)
ffffffffc0207530:	cbb5                	beqz	a5,ffffffffc02075a4 <add_timer+0x88>
ffffffffc0207532:	6418                	ld	a4,8(s0)
ffffffffc0207534:	cb25                	beqz	a4,ffffffffc02075a4 <add_timer+0x88>
ffffffffc0207536:	6c18                	ld	a4,24(s0)
ffffffffc0207538:	01040593          	addi	a1,s0,16
ffffffffc020753c:	08e59463          	bne	a1,a4,ffffffffc02075c4 <add_timer+0xa8>
ffffffffc0207540:	0008e617          	auipc	a2,0x8e
ffffffffc0207544:	2b060613          	addi	a2,a2,688 # ffffffffc02957f0 <timer_list>
ffffffffc0207548:	6618                	ld	a4,8(a2)
ffffffffc020754a:	00c71863          	bne	a4,a2,ffffffffc020755a <add_timer+0x3e>
ffffffffc020754e:	a80d                	j	ffffffffc0207580 <add_timer+0x64>
ffffffffc0207550:	6718                	ld	a4,8(a4)
ffffffffc0207552:	9f95                	subw	a5,a5,a3
ffffffffc0207554:	c01c                	sw	a5,0(s0)
ffffffffc0207556:	02c70563          	beq	a4,a2,ffffffffc0207580 <add_timer+0x64>
ffffffffc020755a:	ff072683          	lw	a3,-16(a4)
ffffffffc020755e:	fed7f9e3          	bgeu	a5,a3,ffffffffc0207550 <add_timer+0x34>
ffffffffc0207562:	40f687bb          	subw	a5,a3,a5
ffffffffc0207566:	fef72823          	sw	a5,-16(a4)
ffffffffc020756a:	631c                	ld	a5,0(a4)
ffffffffc020756c:	e30c                	sd	a1,0(a4)
ffffffffc020756e:	e78c                	sd	a1,8(a5)
ffffffffc0207570:	ec18                	sd	a4,24(s0)
ffffffffc0207572:	e81c                	sd	a5,16(s0)
ffffffffc0207574:	c105                	beqz	a0,ffffffffc0207594 <add_timer+0x78>
ffffffffc0207576:	6402                	ld	s0,0(sp)
ffffffffc0207578:	60a2                	ld	ra,8(sp)
ffffffffc020757a:	0141                	addi	sp,sp,16
ffffffffc020757c:	ef0f906f          	j	ffffffffc0200c6c <intr_enable>
ffffffffc0207580:	0008e717          	auipc	a4,0x8e
ffffffffc0207584:	27070713          	addi	a4,a4,624 # ffffffffc02957f0 <timer_list>
ffffffffc0207588:	631c                	ld	a5,0(a4)
ffffffffc020758a:	e30c                	sd	a1,0(a4)
ffffffffc020758c:	e78c                	sd	a1,8(a5)
ffffffffc020758e:	ec18                	sd	a4,24(s0)
ffffffffc0207590:	e81c                	sd	a5,16(s0)
ffffffffc0207592:	f175                	bnez	a0,ffffffffc0207576 <add_timer+0x5a>
ffffffffc0207594:	60a2                	ld	ra,8(sp)
ffffffffc0207596:	6402                	ld	s0,0(sp)
ffffffffc0207598:	0141                	addi	sp,sp,16
ffffffffc020759a:	8082                	ret
ffffffffc020759c:	ed6f90ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02075a0:	4505                	li	a0,1
ffffffffc02075a2:	b771                	j	ffffffffc020752e <add_timer+0x12>
ffffffffc02075a4:	00006697          	auipc	a3,0x6
ffffffffc02075a8:	66c68693          	addi	a3,a3,1644 # ffffffffc020dc10 <CSWTCH.79+0x548>
ffffffffc02075ac:	00004617          	auipc	a2,0x4
ffffffffc02075b0:	56460613          	addi	a2,a2,1380 # ffffffffc020bb10 <commands+0x210>
ffffffffc02075b4:	07a00593          	li	a1,122
ffffffffc02075b8:	00006517          	auipc	a0,0x6
ffffffffc02075bc:	62050513          	addi	a0,a0,1568 # ffffffffc020dbd8 <CSWTCH.79+0x510>
ffffffffc02075c0:	edff80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02075c4:	00006697          	auipc	a3,0x6
ffffffffc02075c8:	67c68693          	addi	a3,a3,1660 # ffffffffc020dc40 <CSWTCH.79+0x578>
ffffffffc02075cc:	00004617          	auipc	a2,0x4
ffffffffc02075d0:	54460613          	addi	a2,a2,1348 # ffffffffc020bb10 <commands+0x210>
ffffffffc02075d4:	07b00593          	li	a1,123
ffffffffc02075d8:	00006517          	auipc	a0,0x6
ffffffffc02075dc:	60050513          	addi	a0,a0,1536 # ffffffffc020dbd8 <CSWTCH.79+0x510>
ffffffffc02075e0:	ebff80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02075e4 <del_timer>:
ffffffffc02075e4:	1101                	addi	sp,sp,-32
ffffffffc02075e6:	e822                	sd	s0,16(sp)
ffffffffc02075e8:	ec06                	sd	ra,24(sp)
ffffffffc02075ea:	e426                	sd	s1,8(sp)
ffffffffc02075ec:	842a                	mv	s0,a0
ffffffffc02075ee:	100027f3          	csrr	a5,sstatus
ffffffffc02075f2:	8b89                	andi	a5,a5,2
ffffffffc02075f4:	01050493          	addi	s1,a0,16
ffffffffc02075f8:	eb9d                	bnez	a5,ffffffffc020762e <del_timer+0x4a>
ffffffffc02075fa:	6d1c                	ld	a5,24(a0)
ffffffffc02075fc:	02978463          	beq	a5,s1,ffffffffc0207624 <del_timer+0x40>
ffffffffc0207600:	4114                	lw	a3,0(a0)
ffffffffc0207602:	6918                	ld	a4,16(a0)
ffffffffc0207604:	ce81                	beqz	a3,ffffffffc020761c <del_timer+0x38>
ffffffffc0207606:	0008e617          	auipc	a2,0x8e
ffffffffc020760a:	1ea60613          	addi	a2,a2,490 # ffffffffc02957f0 <timer_list>
ffffffffc020760e:	00c78763          	beq	a5,a2,ffffffffc020761c <del_timer+0x38>
ffffffffc0207612:	ff07a603          	lw	a2,-16(a5)
ffffffffc0207616:	9eb1                	addw	a3,a3,a2
ffffffffc0207618:	fed7a823          	sw	a3,-16(a5)
ffffffffc020761c:	e71c                	sd	a5,8(a4)
ffffffffc020761e:	e398                	sd	a4,0(a5)
ffffffffc0207620:	ec04                	sd	s1,24(s0)
ffffffffc0207622:	e804                	sd	s1,16(s0)
ffffffffc0207624:	60e2                	ld	ra,24(sp)
ffffffffc0207626:	6442                	ld	s0,16(sp)
ffffffffc0207628:	64a2                	ld	s1,8(sp)
ffffffffc020762a:	6105                	addi	sp,sp,32
ffffffffc020762c:	8082                	ret
ffffffffc020762e:	e44f90ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0207632:	6c1c                	ld	a5,24(s0)
ffffffffc0207634:	02978463          	beq	a5,s1,ffffffffc020765c <del_timer+0x78>
ffffffffc0207638:	4014                	lw	a3,0(s0)
ffffffffc020763a:	6818                	ld	a4,16(s0)
ffffffffc020763c:	ce81                	beqz	a3,ffffffffc0207654 <del_timer+0x70>
ffffffffc020763e:	0008e617          	auipc	a2,0x8e
ffffffffc0207642:	1b260613          	addi	a2,a2,434 # ffffffffc02957f0 <timer_list>
ffffffffc0207646:	00c78763          	beq	a5,a2,ffffffffc0207654 <del_timer+0x70>
ffffffffc020764a:	ff07a603          	lw	a2,-16(a5)
ffffffffc020764e:	9eb1                	addw	a3,a3,a2
ffffffffc0207650:	fed7a823          	sw	a3,-16(a5)
ffffffffc0207654:	e71c                	sd	a5,8(a4)
ffffffffc0207656:	e398                	sd	a4,0(a5)
ffffffffc0207658:	ec04                	sd	s1,24(s0)
ffffffffc020765a:	e804                	sd	s1,16(s0)
ffffffffc020765c:	6442                	ld	s0,16(sp)
ffffffffc020765e:	60e2                	ld	ra,24(sp)
ffffffffc0207660:	64a2                	ld	s1,8(sp)
ffffffffc0207662:	6105                	addi	sp,sp,32
ffffffffc0207664:	e08f906f          	j	ffffffffc0200c6c <intr_enable>

ffffffffc0207668 <run_timer_list>:
ffffffffc0207668:	7139                	addi	sp,sp,-64
ffffffffc020766a:	fc06                	sd	ra,56(sp)
ffffffffc020766c:	f822                	sd	s0,48(sp)
ffffffffc020766e:	f426                	sd	s1,40(sp)
ffffffffc0207670:	f04a                	sd	s2,32(sp)
ffffffffc0207672:	ec4e                	sd	s3,24(sp)
ffffffffc0207674:	e852                	sd	s4,16(sp)
ffffffffc0207676:	e456                	sd	s5,8(sp)
ffffffffc0207678:	e05a                	sd	s6,0(sp)
ffffffffc020767a:	100027f3          	csrr	a5,sstatus
ffffffffc020767e:	8b89                	andi	a5,a5,2
ffffffffc0207680:	4b01                	li	s6,0
ffffffffc0207682:	efe9                	bnez	a5,ffffffffc020775c <run_timer_list+0xf4>
ffffffffc0207684:	0008e997          	auipc	s3,0x8e
ffffffffc0207688:	16c98993          	addi	s3,s3,364 # ffffffffc02957f0 <timer_list>
ffffffffc020768c:	0089b403          	ld	s0,8(s3)
ffffffffc0207690:	07340a63          	beq	s0,s3,ffffffffc0207704 <run_timer_list+0x9c>
ffffffffc0207694:	ff042783          	lw	a5,-16(s0)
ffffffffc0207698:	ff040913          	addi	s2,s0,-16
ffffffffc020769c:	0e078763          	beqz	a5,ffffffffc020778a <run_timer_list+0x122>
ffffffffc02076a0:	fff7871b          	addiw	a4,a5,-1
ffffffffc02076a4:	fee42823          	sw	a4,-16(s0)
ffffffffc02076a8:	ef31                	bnez	a4,ffffffffc0207704 <run_timer_list+0x9c>
ffffffffc02076aa:	00006a97          	auipc	s5,0x6
ffffffffc02076ae:	5fea8a93          	addi	s5,s5,1534 # ffffffffc020dca8 <CSWTCH.79+0x5e0>
ffffffffc02076b2:	00006a17          	auipc	s4,0x6
ffffffffc02076b6:	526a0a13          	addi	s4,s4,1318 # ffffffffc020dbd8 <CSWTCH.79+0x510>
ffffffffc02076ba:	a005                	j	ffffffffc02076da <run_timer_list+0x72>
ffffffffc02076bc:	0a07d763          	bgez	a5,ffffffffc020776a <run_timer_list+0x102>
ffffffffc02076c0:	8526                	mv	a0,s1
ffffffffc02076c2:	ce9ff0ef          	jal	ra,ffffffffc02073aa <wakeup_proc>
ffffffffc02076c6:	854a                	mv	a0,s2
ffffffffc02076c8:	f1dff0ef          	jal	ra,ffffffffc02075e4 <del_timer>
ffffffffc02076cc:	03340c63          	beq	s0,s3,ffffffffc0207704 <run_timer_list+0x9c>
ffffffffc02076d0:	ff042783          	lw	a5,-16(s0)
ffffffffc02076d4:	ff040913          	addi	s2,s0,-16
ffffffffc02076d8:	e795                	bnez	a5,ffffffffc0207704 <run_timer_list+0x9c>
ffffffffc02076da:	00893483          	ld	s1,8(s2)
ffffffffc02076de:	6400                	ld	s0,8(s0)
ffffffffc02076e0:	0ec4a783          	lw	a5,236(s1)
ffffffffc02076e4:	ffe1                	bnez	a5,ffffffffc02076bc <run_timer_list+0x54>
ffffffffc02076e6:	40d4                	lw	a3,4(s1)
ffffffffc02076e8:	8656                	mv	a2,s5
ffffffffc02076ea:	0ba00593          	li	a1,186
ffffffffc02076ee:	8552                	mv	a0,s4
ffffffffc02076f0:	e17f80ef          	jal	ra,ffffffffc0200506 <__warn>
ffffffffc02076f4:	8526                	mv	a0,s1
ffffffffc02076f6:	cb5ff0ef          	jal	ra,ffffffffc02073aa <wakeup_proc>
ffffffffc02076fa:	854a                	mv	a0,s2
ffffffffc02076fc:	ee9ff0ef          	jal	ra,ffffffffc02075e4 <del_timer>
ffffffffc0207700:	fd3418e3          	bne	s0,s3,ffffffffc02076d0 <run_timer_list+0x68>
ffffffffc0207704:	0008f597          	auipc	a1,0x8f
ffffffffc0207708:	1bc5b583          	ld	a1,444(a1) # ffffffffc02968c0 <current>
ffffffffc020770c:	c18d                	beqz	a1,ffffffffc020772e <run_timer_list+0xc6>
ffffffffc020770e:	0008f797          	auipc	a5,0x8f
ffffffffc0207712:	1ba7b783          	ld	a5,442(a5) # ffffffffc02968c8 <idleproc>
ffffffffc0207716:	04f58763          	beq	a1,a5,ffffffffc0207764 <run_timer_list+0xfc>
ffffffffc020771a:	0008f797          	auipc	a5,0x8f
ffffffffc020771e:	1ce7b783          	ld	a5,462(a5) # ffffffffc02968e8 <sched_class>
ffffffffc0207722:	779c                	ld	a5,40(a5)
ffffffffc0207724:	0008f517          	auipc	a0,0x8f
ffffffffc0207728:	1bc53503          	ld	a0,444(a0) # ffffffffc02968e0 <rq>
ffffffffc020772c:	9782                	jalr	a5
ffffffffc020772e:	000b1c63          	bnez	s6,ffffffffc0207746 <run_timer_list+0xde>
ffffffffc0207732:	70e2                	ld	ra,56(sp)
ffffffffc0207734:	7442                	ld	s0,48(sp)
ffffffffc0207736:	74a2                	ld	s1,40(sp)
ffffffffc0207738:	7902                	ld	s2,32(sp)
ffffffffc020773a:	69e2                	ld	s3,24(sp)
ffffffffc020773c:	6a42                	ld	s4,16(sp)
ffffffffc020773e:	6aa2                	ld	s5,8(sp)
ffffffffc0207740:	6b02                	ld	s6,0(sp)
ffffffffc0207742:	6121                	addi	sp,sp,64
ffffffffc0207744:	8082                	ret
ffffffffc0207746:	7442                	ld	s0,48(sp)
ffffffffc0207748:	70e2                	ld	ra,56(sp)
ffffffffc020774a:	74a2                	ld	s1,40(sp)
ffffffffc020774c:	7902                	ld	s2,32(sp)
ffffffffc020774e:	69e2                	ld	s3,24(sp)
ffffffffc0207750:	6a42                	ld	s4,16(sp)
ffffffffc0207752:	6aa2                	ld	s5,8(sp)
ffffffffc0207754:	6b02                	ld	s6,0(sp)
ffffffffc0207756:	6121                	addi	sp,sp,64
ffffffffc0207758:	d14f906f          	j	ffffffffc0200c6c <intr_enable>
ffffffffc020775c:	d16f90ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0207760:	4b05                	li	s6,1
ffffffffc0207762:	b70d                	j	ffffffffc0207684 <run_timer_list+0x1c>
ffffffffc0207764:	4785                	li	a5,1
ffffffffc0207766:	ed9c                	sd	a5,24(a1)
ffffffffc0207768:	b7d9                	j	ffffffffc020772e <run_timer_list+0xc6>
ffffffffc020776a:	00006697          	auipc	a3,0x6
ffffffffc020776e:	51668693          	addi	a3,a3,1302 # ffffffffc020dc80 <CSWTCH.79+0x5b8>
ffffffffc0207772:	00004617          	auipc	a2,0x4
ffffffffc0207776:	39e60613          	addi	a2,a2,926 # ffffffffc020bb10 <commands+0x210>
ffffffffc020777a:	0b600593          	li	a1,182
ffffffffc020777e:	00006517          	auipc	a0,0x6
ffffffffc0207782:	45a50513          	addi	a0,a0,1114 # ffffffffc020dbd8 <CSWTCH.79+0x510>
ffffffffc0207786:	d19f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020778a:	00006697          	auipc	a3,0x6
ffffffffc020778e:	4de68693          	addi	a3,a3,1246 # ffffffffc020dc68 <CSWTCH.79+0x5a0>
ffffffffc0207792:	00004617          	auipc	a2,0x4
ffffffffc0207796:	37e60613          	addi	a2,a2,894 # ffffffffc020bb10 <commands+0x210>
ffffffffc020779a:	0ae00593          	li	a1,174
ffffffffc020779e:	00006517          	auipc	a0,0x6
ffffffffc02077a2:	43a50513          	addi	a0,a0,1082 # ffffffffc020dbd8 <CSWTCH.79+0x510>
ffffffffc02077a6:	cf9f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02077aa <sys_getpid>:
ffffffffc02077aa:	0008f797          	auipc	a5,0x8f
ffffffffc02077ae:	1167b783          	ld	a5,278(a5) # ffffffffc02968c0 <current>
ffffffffc02077b2:	43c8                	lw	a0,4(a5)
ffffffffc02077b4:	8082                	ret

ffffffffc02077b6 <sys_pgdir>:
ffffffffc02077b6:	4501                	li	a0,0
ffffffffc02077b8:	8082                	ret

ffffffffc02077ba <sys_gettime>:
ffffffffc02077ba:	0008f797          	auipc	a5,0x8f
ffffffffc02077be:	0b67b783          	ld	a5,182(a5) # ffffffffc0296870 <ticks>
ffffffffc02077c2:	0027951b          	slliw	a0,a5,0x2
ffffffffc02077c6:	9d3d                	addw	a0,a0,a5
ffffffffc02077c8:	0015151b          	slliw	a0,a0,0x1
ffffffffc02077cc:	8082                	ret

ffffffffc02077ce <sys_lab6_set_priority>:
ffffffffc02077ce:	4108                	lw	a0,0(a0)
ffffffffc02077d0:	1141                	addi	sp,sp,-16
ffffffffc02077d2:	e406                	sd	ra,8(sp)
ffffffffc02077d4:	975ff0ef          	jal	ra,ffffffffc0207148 <lab6_set_priority>
ffffffffc02077d8:	60a2                	ld	ra,8(sp)
ffffffffc02077da:	4501                	li	a0,0
ffffffffc02077dc:	0141                	addi	sp,sp,16
ffffffffc02077de:	8082                	ret

ffffffffc02077e0 <sys_dup>:
ffffffffc02077e0:	450c                	lw	a1,8(a0)
ffffffffc02077e2:	4108                	lw	a0,0(a0)
ffffffffc02077e4:	b0cfe06f          	j	ffffffffc0205af0 <sysfile_dup>

ffffffffc02077e8 <sys_getdirentry>:
ffffffffc02077e8:	650c                	ld	a1,8(a0)
ffffffffc02077ea:	4108                	lw	a0,0(a0)
ffffffffc02077ec:	a14fe06f          	j	ffffffffc0205a00 <sysfile_getdirentry>

ffffffffc02077f0 <sys_getcwd>:
ffffffffc02077f0:	650c                	ld	a1,8(a0)
ffffffffc02077f2:	6108                	ld	a0,0(a0)
ffffffffc02077f4:	968fe06f          	j	ffffffffc020595c <sysfile_getcwd>

ffffffffc02077f8 <sys_fsync>:
ffffffffc02077f8:	4108                	lw	a0,0(a0)
ffffffffc02077fa:	95efe06f          	j	ffffffffc0205958 <sysfile_fsync>

ffffffffc02077fe <sys_fstat>:
ffffffffc02077fe:	650c                	ld	a1,8(a0)
ffffffffc0207800:	4108                	lw	a0,0(a0)
ffffffffc0207802:	8b6fe06f          	j	ffffffffc02058b8 <sysfile_fstat>

ffffffffc0207806 <sys_seek>:
ffffffffc0207806:	4910                	lw	a2,16(a0)
ffffffffc0207808:	650c                	ld	a1,8(a0)
ffffffffc020780a:	4108                	lw	a0,0(a0)
ffffffffc020780c:	8a8fe06f          	j	ffffffffc02058b4 <sysfile_seek>

ffffffffc0207810 <sys_write>:
ffffffffc0207810:	6910                	ld	a2,16(a0)
ffffffffc0207812:	650c                	ld	a1,8(a0)
ffffffffc0207814:	4108                	lw	a0,0(a0)
ffffffffc0207816:	f85fd06f          	j	ffffffffc020579a <sysfile_write>

ffffffffc020781a <sys_read>:
ffffffffc020781a:	6910                	ld	a2,16(a0)
ffffffffc020781c:	650c                	ld	a1,8(a0)
ffffffffc020781e:	4108                	lw	a0,0(a0)
ffffffffc0207820:	e67fd06f          	j	ffffffffc0205686 <sysfile_read>

ffffffffc0207824 <sys_close>:
ffffffffc0207824:	4108                	lw	a0,0(a0)
ffffffffc0207826:	e5dfd06f          	j	ffffffffc0205682 <sysfile_close>

ffffffffc020782a <sys_open>:
ffffffffc020782a:	450c                	lw	a1,8(a0)
ffffffffc020782c:	6108                	ld	a0,0(a0)
ffffffffc020782e:	e21fd06f          	j	ffffffffc020564e <sysfile_open>

ffffffffc0207832 <sys_putc>:
ffffffffc0207832:	4108                	lw	a0,0(a0)
ffffffffc0207834:	1141                	addi	sp,sp,-16
ffffffffc0207836:	e406                	sd	ra,8(sp)
ffffffffc0207838:	9abf80ef          	jal	ra,ffffffffc02001e2 <cputchar>
ffffffffc020783c:	60a2                	ld	ra,8(sp)
ffffffffc020783e:	4501                	li	a0,0
ffffffffc0207840:	0141                	addi	sp,sp,16
ffffffffc0207842:	8082                	ret

ffffffffc0207844 <sys_kill>:
ffffffffc0207844:	4108                	lw	a0,0(a0)
ffffffffc0207846:	ea0ff06f          	j	ffffffffc0206ee6 <do_kill>

ffffffffc020784a <sys_sleep>:
ffffffffc020784a:	4108                	lw	a0,0(a0)
ffffffffc020784c:	937ff06f          	j	ffffffffc0207182 <do_sleep>

ffffffffc0207850 <sys_yield>:
ffffffffc0207850:	e48ff06f          	j	ffffffffc0206e98 <do_yield>

ffffffffc0207854 <sys_exec>:
ffffffffc0207854:	6910                	ld	a2,16(a0)
ffffffffc0207856:	450c                	lw	a1,8(a0)
ffffffffc0207858:	6108                	ld	a0,0(a0)
ffffffffc020785a:	db3fe06f          	j	ffffffffc020660c <do_execve>

ffffffffc020785e <sys_wait>:
ffffffffc020785e:	650c                	ld	a1,8(a0)
ffffffffc0207860:	4108                	lw	a0,0(a0)
ffffffffc0207862:	e46ff06f          	j	ffffffffc0206ea8 <do_wait>

ffffffffc0207866 <sys_fork>:
ffffffffc0207866:	0008f797          	auipc	a5,0x8f
ffffffffc020786a:	05a7b783          	ld	a5,90(a5) # ffffffffc02968c0 <current>
ffffffffc020786e:	73d0                	ld	a2,160(a5)
ffffffffc0207870:	4501                	li	a0,0
ffffffffc0207872:	6a0c                	ld	a1,16(a2)
ffffffffc0207874:	c98fe06f          	j	ffffffffc0205d0c <do_fork>

ffffffffc0207878 <sys_exit>:
ffffffffc0207878:	4108                	lw	a0,0(a0)
ffffffffc020787a:	90ffe06f          	j	ffffffffc0206188 <do_exit>

ffffffffc020787e <syscall>:
ffffffffc020787e:	715d                	addi	sp,sp,-80
ffffffffc0207880:	fc26                	sd	s1,56(sp)
ffffffffc0207882:	0008f497          	auipc	s1,0x8f
ffffffffc0207886:	03e48493          	addi	s1,s1,62 # ffffffffc02968c0 <current>
ffffffffc020788a:	6098                	ld	a4,0(s1)
ffffffffc020788c:	e0a2                	sd	s0,64(sp)
ffffffffc020788e:	f84a                	sd	s2,48(sp)
ffffffffc0207890:	7340                	ld	s0,160(a4)
ffffffffc0207892:	e486                	sd	ra,72(sp)
ffffffffc0207894:	0ff00793          	li	a5,255
ffffffffc0207898:	05042903          	lw	s2,80(s0)
ffffffffc020789c:	0327ee63          	bltu	a5,s2,ffffffffc02078d8 <syscall+0x5a>
ffffffffc02078a0:	00391713          	slli	a4,s2,0x3
ffffffffc02078a4:	00006797          	auipc	a5,0x6
ffffffffc02078a8:	46c78793          	addi	a5,a5,1132 # ffffffffc020dd10 <syscalls>
ffffffffc02078ac:	97ba                	add	a5,a5,a4
ffffffffc02078ae:	639c                	ld	a5,0(a5)
ffffffffc02078b0:	c785                	beqz	a5,ffffffffc02078d8 <syscall+0x5a>
ffffffffc02078b2:	6c28                	ld	a0,88(s0)
ffffffffc02078b4:	702c                	ld	a1,96(s0)
ffffffffc02078b6:	7430                	ld	a2,104(s0)
ffffffffc02078b8:	7834                	ld	a3,112(s0)
ffffffffc02078ba:	7c38                	ld	a4,120(s0)
ffffffffc02078bc:	e42a                	sd	a0,8(sp)
ffffffffc02078be:	e82e                	sd	a1,16(sp)
ffffffffc02078c0:	ec32                	sd	a2,24(sp)
ffffffffc02078c2:	f036                	sd	a3,32(sp)
ffffffffc02078c4:	f43a                	sd	a4,40(sp)
ffffffffc02078c6:	0028                	addi	a0,sp,8
ffffffffc02078c8:	9782                	jalr	a5
ffffffffc02078ca:	60a6                	ld	ra,72(sp)
ffffffffc02078cc:	e828                	sd	a0,80(s0)
ffffffffc02078ce:	6406                	ld	s0,64(sp)
ffffffffc02078d0:	74e2                	ld	s1,56(sp)
ffffffffc02078d2:	7942                	ld	s2,48(sp)
ffffffffc02078d4:	6161                	addi	sp,sp,80
ffffffffc02078d6:	8082                	ret
ffffffffc02078d8:	8522                	mv	a0,s0
ffffffffc02078da:	eb0f90ef          	jal	ra,ffffffffc0200f8a <print_trapframe>
ffffffffc02078de:	609c                	ld	a5,0(s1)
ffffffffc02078e0:	86ca                	mv	a3,s2
ffffffffc02078e2:	00006617          	auipc	a2,0x6
ffffffffc02078e6:	3e660613          	addi	a2,a2,998 # ffffffffc020dcc8 <CSWTCH.79+0x600>
ffffffffc02078ea:	43d8                	lw	a4,4(a5)
ffffffffc02078ec:	0d800593          	li	a1,216
ffffffffc02078f0:	0b478793          	addi	a5,a5,180
ffffffffc02078f4:	00006517          	auipc	a0,0x6
ffffffffc02078f8:	40450513          	addi	a0,a0,1028 # ffffffffc020dcf8 <CSWTCH.79+0x630>
ffffffffc02078fc:	ba3f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207900 <__alloc_inode>:
ffffffffc0207900:	1141                	addi	sp,sp,-16
ffffffffc0207902:	e022                	sd	s0,0(sp)
ffffffffc0207904:	842a                	mv	s0,a0
ffffffffc0207906:	07800513          	li	a0,120
ffffffffc020790a:	e406                	sd	ra,8(sp)
ffffffffc020790c:	f9efa0ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc0207910:	c111                	beqz	a0,ffffffffc0207914 <__alloc_inode+0x14>
ffffffffc0207912:	cd20                	sw	s0,88(a0)
ffffffffc0207914:	60a2                	ld	ra,8(sp)
ffffffffc0207916:	6402                	ld	s0,0(sp)
ffffffffc0207918:	0141                	addi	sp,sp,16
ffffffffc020791a:	8082                	ret

ffffffffc020791c <inode_init>:
ffffffffc020791c:	4785                	li	a5,1
ffffffffc020791e:	06052023          	sw	zero,96(a0)
ffffffffc0207922:	f92c                	sd	a1,112(a0)
ffffffffc0207924:	f530                	sd	a2,104(a0)
ffffffffc0207926:	cd7c                	sw	a5,92(a0)
ffffffffc0207928:	8082                	ret

ffffffffc020792a <inode_kill>:
ffffffffc020792a:	4d78                	lw	a4,92(a0)
ffffffffc020792c:	1141                	addi	sp,sp,-16
ffffffffc020792e:	e406                	sd	ra,8(sp)
ffffffffc0207930:	e719                	bnez	a4,ffffffffc020793e <inode_kill+0x14>
ffffffffc0207932:	513c                	lw	a5,96(a0)
ffffffffc0207934:	e78d                	bnez	a5,ffffffffc020795e <inode_kill+0x34>
ffffffffc0207936:	60a2                	ld	ra,8(sp)
ffffffffc0207938:	0141                	addi	sp,sp,16
ffffffffc020793a:	821fa06f          	j	ffffffffc020215a <kfree>
ffffffffc020793e:	00007697          	auipc	a3,0x7
ffffffffc0207942:	bd268693          	addi	a3,a3,-1070 # ffffffffc020e510 <syscalls+0x800>
ffffffffc0207946:	00004617          	auipc	a2,0x4
ffffffffc020794a:	1ca60613          	addi	a2,a2,458 # ffffffffc020bb10 <commands+0x210>
ffffffffc020794e:	02900593          	li	a1,41
ffffffffc0207952:	00007517          	auipc	a0,0x7
ffffffffc0207956:	bde50513          	addi	a0,a0,-1058 # ffffffffc020e530 <syscalls+0x820>
ffffffffc020795a:	b45f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020795e:	00007697          	auipc	a3,0x7
ffffffffc0207962:	bea68693          	addi	a3,a3,-1046 # ffffffffc020e548 <syscalls+0x838>
ffffffffc0207966:	00004617          	auipc	a2,0x4
ffffffffc020796a:	1aa60613          	addi	a2,a2,426 # ffffffffc020bb10 <commands+0x210>
ffffffffc020796e:	02a00593          	li	a1,42
ffffffffc0207972:	00007517          	auipc	a0,0x7
ffffffffc0207976:	bbe50513          	addi	a0,a0,-1090 # ffffffffc020e530 <syscalls+0x820>
ffffffffc020797a:	b25f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020797e <inode_ref_inc>:
ffffffffc020797e:	4d7c                	lw	a5,92(a0)
ffffffffc0207980:	2785                	addiw	a5,a5,1
ffffffffc0207982:	cd7c                	sw	a5,92(a0)
ffffffffc0207984:	0007851b          	sext.w	a0,a5
ffffffffc0207988:	8082                	ret

ffffffffc020798a <inode_open_inc>:
ffffffffc020798a:	513c                	lw	a5,96(a0)
ffffffffc020798c:	2785                	addiw	a5,a5,1
ffffffffc020798e:	d13c                	sw	a5,96(a0)
ffffffffc0207990:	0007851b          	sext.w	a0,a5
ffffffffc0207994:	8082                	ret

ffffffffc0207996 <inode_check>:
ffffffffc0207996:	1141                	addi	sp,sp,-16
ffffffffc0207998:	e406                	sd	ra,8(sp)
ffffffffc020799a:	c90d                	beqz	a0,ffffffffc02079cc <inode_check+0x36>
ffffffffc020799c:	793c                	ld	a5,112(a0)
ffffffffc020799e:	c79d                	beqz	a5,ffffffffc02079cc <inode_check+0x36>
ffffffffc02079a0:	6398                	ld	a4,0(a5)
ffffffffc02079a2:	4625d7b7          	lui	a5,0x4625d
ffffffffc02079a6:	0786                	slli	a5,a5,0x1
ffffffffc02079a8:	47678793          	addi	a5,a5,1142 # 4625d476 <_binary_bin_sfs_img_size+0x461e8176>
ffffffffc02079ac:	08f71063          	bne	a4,a5,ffffffffc0207a2c <inode_check+0x96>
ffffffffc02079b0:	4d78                	lw	a4,92(a0)
ffffffffc02079b2:	513c                	lw	a5,96(a0)
ffffffffc02079b4:	04f74c63          	blt	a4,a5,ffffffffc0207a0c <inode_check+0x76>
ffffffffc02079b8:	0407ca63          	bltz	a5,ffffffffc0207a0c <inode_check+0x76>
ffffffffc02079bc:	66c1                	lui	a3,0x10
ffffffffc02079be:	02d75763          	bge	a4,a3,ffffffffc02079ec <inode_check+0x56>
ffffffffc02079c2:	02d7d563          	bge	a5,a3,ffffffffc02079ec <inode_check+0x56>
ffffffffc02079c6:	60a2                	ld	ra,8(sp)
ffffffffc02079c8:	0141                	addi	sp,sp,16
ffffffffc02079ca:	8082                	ret
ffffffffc02079cc:	00007697          	auipc	a3,0x7
ffffffffc02079d0:	b9c68693          	addi	a3,a3,-1124 # ffffffffc020e568 <syscalls+0x858>
ffffffffc02079d4:	00004617          	auipc	a2,0x4
ffffffffc02079d8:	13c60613          	addi	a2,a2,316 # ffffffffc020bb10 <commands+0x210>
ffffffffc02079dc:	06e00593          	li	a1,110
ffffffffc02079e0:	00007517          	auipc	a0,0x7
ffffffffc02079e4:	b5050513          	addi	a0,a0,-1200 # ffffffffc020e530 <syscalls+0x820>
ffffffffc02079e8:	ab7f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02079ec:	00007697          	auipc	a3,0x7
ffffffffc02079f0:	bfc68693          	addi	a3,a3,-1028 # ffffffffc020e5e8 <syscalls+0x8d8>
ffffffffc02079f4:	00004617          	auipc	a2,0x4
ffffffffc02079f8:	11c60613          	addi	a2,a2,284 # ffffffffc020bb10 <commands+0x210>
ffffffffc02079fc:	07200593          	li	a1,114
ffffffffc0207a00:	00007517          	auipc	a0,0x7
ffffffffc0207a04:	b3050513          	addi	a0,a0,-1232 # ffffffffc020e530 <syscalls+0x820>
ffffffffc0207a08:	a97f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0207a0c:	00007697          	auipc	a3,0x7
ffffffffc0207a10:	bac68693          	addi	a3,a3,-1108 # ffffffffc020e5b8 <syscalls+0x8a8>
ffffffffc0207a14:	00004617          	auipc	a2,0x4
ffffffffc0207a18:	0fc60613          	addi	a2,a2,252 # ffffffffc020bb10 <commands+0x210>
ffffffffc0207a1c:	07100593          	li	a1,113
ffffffffc0207a20:	00007517          	auipc	a0,0x7
ffffffffc0207a24:	b1050513          	addi	a0,a0,-1264 # ffffffffc020e530 <syscalls+0x820>
ffffffffc0207a28:	a77f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0207a2c:	00007697          	auipc	a3,0x7
ffffffffc0207a30:	b6468693          	addi	a3,a3,-1180 # ffffffffc020e590 <syscalls+0x880>
ffffffffc0207a34:	00004617          	auipc	a2,0x4
ffffffffc0207a38:	0dc60613          	addi	a2,a2,220 # ffffffffc020bb10 <commands+0x210>
ffffffffc0207a3c:	06f00593          	li	a1,111
ffffffffc0207a40:	00007517          	auipc	a0,0x7
ffffffffc0207a44:	af050513          	addi	a0,a0,-1296 # ffffffffc020e530 <syscalls+0x820>
ffffffffc0207a48:	a57f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207a4c <inode_ref_dec>:
ffffffffc0207a4c:	4d7c                	lw	a5,92(a0)
ffffffffc0207a4e:	1101                	addi	sp,sp,-32
ffffffffc0207a50:	ec06                	sd	ra,24(sp)
ffffffffc0207a52:	e822                	sd	s0,16(sp)
ffffffffc0207a54:	e426                	sd	s1,8(sp)
ffffffffc0207a56:	e04a                	sd	s2,0(sp)
ffffffffc0207a58:	06f05e63          	blez	a5,ffffffffc0207ad4 <inode_ref_dec+0x88>
ffffffffc0207a5c:	fff7849b          	addiw	s1,a5,-1
ffffffffc0207a60:	cd64                	sw	s1,92(a0)
ffffffffc0207a62:	842a                	mv	s0,a0
ffffffffc0207a64:	e09d                	bnez	s1,ffffffffc0207a8a <inode_ref_dec+0x3e>
ffffffffc0207a66:	793c                	ld	a5,112(a0)
ffffffffc0207a68:	c7b1                	beqz	a5,ffffffffc0207ab4 <inode_ref_dec+0x68>
ffffffffc0207a6a:	0487b903          	ld	s2,72(a5)
ffffffffc0207a6e:	04090363          	beqz	s2,ffffffffc0207ab4 <inode_ref_dec+0x68>
ffffffffc0207a72:	00007597          	auipc	a1,0x7
ffffffffc0207a76:	c2658593          	addi	a1,a1,-986 # ffffffffc020e698 <syscalls+0x988>
ffffffffc0207a7a:	f1dff0ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0207a7e:	8522                	mv	a0,s0
ffffffffc0207a80:	9902                	jalr	s2
ffffffffc0207a82:	c501                	beqz	a0,ffffffffc0207a8a <inode_ref_dec+0x3e>
ffffffffc0207a84:	57c5                	li	a5,-15
ffffffffc0207a86:	00f51963          	bne	a0,a5,ffffffffc0207a98 <inode_ref_dec+0x4c>
ffffffffc0207a8a:	60e2                	ld	ra,24(sp)
ffffffffc0207a8c:	6442                	ld	s0,16(sp)
ffffffffc0207a8e:	6902                	ld	s2,0(sp)
ffffffffc0207a90:	8526                	mv	a0,s1
ffffffffc0207a92:	64a2                	ld	s1,8(sp)
ffffffffc0207a94:	6105                	addi	sp,sp,32
ffffffffc0207a96:	8082                	ret
ffffffffc0207a98:	85aa                	mv	a1,a0
ffffffffc0207a9a:	00007517          	auipc	a0,0x7
ffffffffc0207a9e:	c0650513          	addi	a0,a0,-1018 # ffffffffc020e6a0 <syscalls+0x990>
ffffffffc0207aa2:	f04f80ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0207aa6:	60e2                	ld	ra,24(sp)
ffffffffc0207aa8:	6442                	ld	s0,16(sp)
ffffffffc0207aaa:	6902                	ld	s2,0(sp)
ffffffffc0207aac:	8526                	mv	a0,s1
ffffffffc0207aae:	64a2                	ld	s1,8(sp)
ffffffffc0207ab0:	6105                	addi	sp,sp,32
ffffffffc0207ab2:	8082                	ret
ffffffffc0207ab4:	00007697          	auipc	a3,0x7
ffffffffc0207ab8:	b9468693          	addi	a3,a3,-1132 # ffffffffc020e648 <syscalls+0x938>
ffffffffc0207abc:	00004617          	auipc	a2,0x4
ffffffffc0207ac0:	05460613          	addi	a2,a2,84 # ffffffffc020bb10 <commands+0x210>
ffffffffc0207ac4:	04400593          	li	a1,68
ffffffffc0207ac8:	00007517          	auipc	a0,0x7
ffffffffc0207acc:	a6850513          	addi	a0,a0,-1432 # ffffffffc020e530 <syscalls+0x820>
ffffffffc0207ad0:	9cff80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0207ad4:	00007697          	auipc	a3,0x7
ffffffffc0207ad8:	b5468693          	addi	a3,a3,-1196 # ffffffffc020e628 <syscalls+0x918>
ffffffffc0207adc:	00004617          	auipc	a2,0x4
ffffffffc0207ae0:	03460613          	addi	a2,a2,52 # ffffffffc020bb10 <commands+0x210>
ffffffffc0207ae4:	03f00593          	li	a1,63
ffffffffc0207ae8:	00007517          	auipc	a0,0x7
ffffffffc0207aec:	a4850513          	addi	a0,a0,-1464 # ffffffffc020e530 <syscalls+0x820>
ffffffffc0207af0:	9aff80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207af4 <inode_open_dec>:
ffffffffc0207af4:	513c                	lw	a5,96(a0)
ffffffffc0207af6:	1101                	addi	sp,sp,-32
ffffffffc0207af8:	ec06                	sd	ra,24(sp)
ffffffffc0207afa:	e822                	sd	s0,16(sp)
ffffffffc0207afc:	e426                	sd	s1,8(sp)
ffffffffc0207afe:	e04a                	sd	s2,0(sp)
ffffffffc0207b00:	06f05b63          	blez	a5,ffffffffc0207b76 <inode_open_dec+0x82>
ffffffffc0207b04:	fff7849b          	addiw	s1,a5,-1
ffffffffc0207b08:	d124                	sw	s1,96(a0)
ffffffffc0207b0a:	842a                	mv	s0,a0
ffffffffc0207b0c:	e085                	bnez	s1,ffffffffc0207b2c <inode_open_dec+0x38>
ffffffffc0207b0e:	793c                	ld	a5,112(a0)
ffffffffc0207b10:	c3b9                	beqz	a5,ffffffffc0207b56 <inode_open_dec+0x62>
ffffffffc0207b12:	0107b903          	ld	s2,16(a5)
ffffffffc0207b16:	04090063          	beqz	s2,ffffffffc0207b56 <inode_open_dec+0x62>
ffffffffc0207b1a:	00007597          	auipc	a1,0x7
ffffffffc0207b1e:	c1658593          	addi	a1,a1,-1002 # ffffffffc020e730 <syscalls+0xa20>
ffffffffc0207b22:	e75ff0ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0207b26:	8522                	mv	a0,s0
ffffffffc0207b28:	9902                	jalr	s2
ffffffffc0207b2a:	e901                	bnez	a0,ffffffffc0207b3a <inode_open_dec+0x46>
ffffffffc0207b2c:	60e2                	ld	ra,24(sp)
ffffffffc0207b2e:	6442                	ld	s0,16(sp)
ffffffffc0207b30:	6902                	ld	s2,0(sp)
ffffffffc0207b32:	8526                	mv	a0,s1
ffffffffc0207b34:	64a2                	ld	s1,8(sp)
ffffffffc0207b36:	6105                	addi	sp,sp,32
ffffffffc0207b38:	8082                	ret
ffffffffc0207b3a:	85aa                	mv	a1,a0
ffffffffc0207b3c:	00007517          	auipc	a0,0x7
ffffffffc0207b40:	bfc50513          	addi	a0,a0,-1028 # ffffffffc020e738 <syscalls+0xa28>
ffffffffc0207b44:	e62f80ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0207b48:	60e2                	ld	ra,24(sp)
ffffffffc0207b4a:	6442                	ld	s0,16(sp)
ffffffffc0207b4c:	6902                	ld	s2,0(sp)
ffffffffc0207b4e:	8526                	mv	a0,s1
ffffffffc0207b50:	64a2                	ld	s1,8(sp)
ffffffffc0207b52:	6105                	addi	sp,sp,32
ffffffffc0207b54:	8082                	ret
ffffffffc0207b56:	00007697          	auipc	a3,0x7
ffffffffc0207b5a:	b8a68693          	addi	a3,a3,-1142 # ffffffffc020e6e0 <syscalls+0x9d0>
ffffffffc0207b5e:	00004617          	auipc	a2,0x4
ffffffffc0207b62:	fb260613          	addi	a2,a2,-78 # ffffffffc020bb10 <commands+0x210>
ffffffffc0207b66:	06100593          	li	a1,97
ffffffffc0207b6a:	00007517          	auipc	a0,0x7
ffffffffc0207b6e:	9c650513          	addi	a0,a0,-1594 # ffffffffc020e530 <syscalls+0x820>
ffffffffc0207b72:	92df80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0207b76:	00007697          	auipc	a3,0x7
ffffffffc0207b7a:	b4a68693          	addi	a3,a3,-1206 # ffffffffc020e6c0 <syscalls+0x9b0>
ffffffffc0207b7e:	00004617          	auipc	a2,0x4
ffffffffc0207b82:	f9260613          	addi	a2,a2,-110 # ffffffffc020bb10 <commands+0x210>
ffffffffc0207b86:	05c00593          	li	a1,92
ffffffffc0207b8a:	00007517          	auipc	a0,0x7
ffffffffc0207b8e:	9a650513          	addi	a0,a0,-1626 # ffffffffc020e530 <syscalls+0x820>
ffffffffc0207b92:	90df80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207b96 <__alloc_fs>:
ffffffffc0207b96:	1141                	addi	sp,sp,-16
ffffffffc0207b98:	e022                	sd	s0,0(sp)
ffffffffc0207b9a:	842a                	mv	s0,a0
ffffffffc0207b9c:	0d800513          	li	a0,216
ffffffffc0207ba0:	e406                	sd	ra,8(sp)
ffffffffc0207ba2:	d08fa0ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc0207ba6:	c119                	beqz	a0,ffffffffc0207bac <__alloc_fs+0x16>
ffffffffc0207ba8:	0a852823          	sw	s0,176(a0)
ffffffffc0207bac:	60a2                	ld	ra,8(sp)
ffffffffc0207bae:	6402                	ld	s0,0(sp)
ffffffffc0207bb0:	0141                	addi	sp,sp,16
ffffffffc0207bb2:	8082                	ret

ffffffffc0207bb4 <vfs_init>:
ffffffffc0207bb4:	1141                	addi	sp,sp,-16
ffffffffc0207bb6:	4585                	li	a1,1
ffffffffc0207bb8:	0008e517          	auipc	a0,0x8e
ffffffffc0207bbc:	c4850513          	addi	a0,a0,-952 # ffffffffc0295800 <bootfs_sem>
ffffffffc0207bc0:	e406                	sd	ra,8(sp)
ffffffffc0207bc2:	ac1fc0ef          	jal	ra,ffffffffc0204682 <sem_init>
ffffffffc0207bc6:	60a2                	ld	ra,8(sp)
ffffffffc0207bc8:	0141                	addi	sp,sp,16
ffffffffc0207bca:	a40d                	j	ffffffffc0207dec <vfs_devlist_init>

ffffffffc0207bcc <vfs_set_bootfs>:
ffffffffc0207bcc:	7179                	addi	sp,sp,-48
ffffffffc0207bce:	f022                	sd	s0,32(sp)
ffffffffc0207bd0:	f406                	sd	ra,40(sp)
ffffffffc0207bd2:	ec26                	sd	s1,24(sp)
ffffffffc0207bd4:	e402                	sd	zero,8(sp)
ffffffffc0207bd6:	842a                	mv	s0,a0
ffffffffc0207bd8:	c915                	beqz	a0,ffffffffc0207c0c <vfs_set_bootfs+0x40>
ffffffffc0207bda:	03a00593          	li	a1,58
ffffffffc0207bde:	23b030ef          	jal	ra,ffffffffc020b618 <strchr>
ffffffffc0207be2:	c135                	beqz	a0,ffffffffc0207c46 <vfs_set_bootfs+0x7a>
ffffffffc0207be4:	00154783          	lbu	a5,1(a0)
ffffffffc0207be8:	efb9                	bnez	a5,ffffffffc0207c46 <vfs_set_bootfs+0x7a>
ffffffffc0207bea:	8522                	mv	a0,s0
ffffffffc0207bec:	11f000ef          	jal	ra,ffffffffc020850a <vfs_chdir>
ffffffffc0207bf0:	842a                	mv	s0,a0
ffffffffc0207bf2:	c519                	beqz	a0,ffffffffc0207c00 <vfs_set_bootfs+0x34>
ffffffffc0207bf4:	70a2                	ld	ra,40(sp)
ffffffffc0207bf6:	8522                	mv	a0,s0
ffffffffc0207bf8:	7402                	ld	s0,32(sp)
ffffffffc0207bfa:	64e2                	ld	s1,24(sp)
ffffffffc0207bfc:	6145                	addi	sp,sp,48
ffffffffc0207bfe:	8082                	ret
ffffffffc0207c00:	0028                	addi	a0,sp,8
ffffffffc0207c02:	013000ef          	jal	ra,ffffffffc0208414 <vfs_get_curdir>
ffffffffc0207c06:	842a                	mv	s0,a0
ffffffffc0207c08:	f575                	bnez	a0,ffffffffc0207bf4 <vfs_set_bootfs+0x28>
ffffffffc0207c0a:	6422                	ld	s0,8(sp)
ffffffffc0207c0c:	0008e517          	auipc	a0,0x8e
ffffffffc0207c10:	bf450513          	addi	a0,a0,-1036 # ffffffffc0295800 <bootfs_sem>
ffffffffc0207c14:	a79fc0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc0207c18:	0008f797          	auipc	a5,0x8f
ffffffffc0207c1c:	cd878793          	addi	a5,a5,-808 # ffffffffc02968f0 <bootfs_node>
ffffffffc0207c20:	6384                	ld	s1,0(a5)
ffffffffc0207c22:	0008e517          	auipc	a0,0x8e
ffffffffc0207c26:	bde50513          	addi	a0,a0,-1058 # ffffffffc0295800 <bootfs_sem>
ffffffffc0207c2a:	e380                	sd	s0,0(a5)
ffffffffc0207c2c:	4401                	li	s0,0
ffffffffc0207c2e:	a5bfc0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0207c32:	d0e9                	beqz	s1,ffffffffc0207bf4 <vfs_set_bootfs+0x28>
ffffffffc0207c34:	8526                	mv	a0,s1
ffffffffc0207c36:	e17ff0ef          	jal	ra,ffffffffc0207a4c <inode_ref_dec>
ffffffffc0207c3a:	70a2                	ld	ra,40(sp)
ffffffffc0207c3c:	8522                	mv	a0,s0
ffffffffc0207c3e:	7402                	ld	s0,32(sp)
ffffffffc0207c40:	64e2                	ld	s1,24(sp)
ffffffffc0207c42:	6145                	addi	sp,sp,48
ffffffffc0207c44:	8082                	ret
ffffffffc0207c46:	5475                	li	s0,-3
ffffffffc0207c48:	b775                	j	ffffffffc0207bf4 <vfs_set_bootfs+0x28>

ffffffffc0207c4a <vfs_get_bootfs>:
ffffffffc0207c4a:	1101                	addi	sp,sp,-32
ffffffffc0207c4c:	e426                	sd	s1,8(sp)
ffffffffc0207c4e:	0008f497          	auipc	s1,0x8f
ffffffffc0207c52:	ca248493          	addi	s1,s1,-862 # ffffffffc02968f0 <bootfs_node>
ffffffffc0207c56:	609c                	ld	a5,0(s1)
ffffffffc0207c58:	ec06                	sd	ra,24(sp)
ffffffffc0207c5a:	e822                	sd	s0,16(sp)
ffffffffc0207c5c:	c3a1                	beqz	a5,ffffffffc0207c9c <vfs_get_bootfs+0x52>
ffffffffc0207c5e:	842a                	mv	s0,a0
ffffffffc0207c60:	0008e517          	auipc	a0,0x8e
ffffffffc0207c64:	ba050513          	addi	a0,a0,-1120 # ffffffffc0295800 <bootfs_sem>
ffffffffc0207c68:	a25fc0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc0207c6c:	6084                	ld	s1,0(s1)
ffffffffc0207c6e:	c08d                	beqz	s1,ffffffffc0207c90 <vfs_get_bootfs+0x46>
ffffffffc0207c70:	8526                	mv	a0,s1
ffffffffc0207c72:	d0dff0ef          	jal	ra,ffffffffc020797e <inode_ref_inc>
ffffffffc0207c76:	0008e517          	auipc	a0,0x8e
ffffffffc0207c7a:	b8a50513          	addi	a0,a0,-1142 # ffffffffc0295800 <bootfs_sem>
ffffffffc0207c7e:	a0bfc0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0207c82:	4501                	li	a0,0
ffffffffc0207c84:	e004                	sd	s1,0(s0)
ffffffffc0207c86:	60e2                	ld	ra,24(sp)
ffffffffc0207c88:	6442                	ld	s0,16(sp)
ffffffffc0207c8a:	64a2                	ld	s1,8(sp)
ffffffffc0207c8c:	6105                	addi	sp,sp,32
ffffffffc0207c8e:	8082                	ret
ffffffffc0207c90:	0008e517          	auipc	a0,0x8e
ffffffffc0207c94:	b7050513          	addi	a0,a0,-1168 # ffffffffc0295800 <bootfs_sem>
ffffffffc0207c98:	9f1fc0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0207c9c:	5541                	li	a0,-16
ffffffffc0207c9e:	b7e5                	j	ffffffffc0207c86 <vfs_get_bootfs+0x3c>

ffffffffc0207ca0 <vfs_do_add>:
ffffffffc0207ca0:	7139                	addi	sp,sp,-64
ffffffffc0207ca2:	fc06                	sd	ra,56(sp)
ffffffffc0207ca4:	f822                	sd	s0,48(sp)
ffffffffc0207ca6:	f426                	sd	s1,40(sp)
ffffffffc0207ca8:	f04a                	sd	s2,32(sp)
ffffffffc0207caa:	ec4e                	sd	s3,24(sp)
ffffffffc0207cac:	e852                	sd	s4,16(sp)
ffffffffc0207cae:	e456                	sd	s5,8(sp)
ffffffffc0207cb0:	e05a                	sd	s6,0(sp)
ffffffffc0207cb2:	0e050b63          	beqz	a0,ffffffffc0207da8 <vfs_do_add+0x108>
ffffffffc0207cb6:	842a                	mv	s0,a0
ffffffffc0207cb8:	8a2e                	mv	s4,a1
ffffffffc0207cba:	8b32                	mv	s6,a2
ffffffffc0207cbc:	8ab6                	mv	s5,a3
ffffffffc0207cbe:	c5cd                	beqz	a1,ffffffffc0207d68 <vfs_do_add+0xc8>
ffffffffc0207cc0:	4db8                	lw	a4,88(a1)
ffffffffc0207cc2:	6785                	lui	a5,0x1
ffffffffc0207cc4:	23478793          	addi	a5,a5,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0207cc8:	0af71163          	bne	a4,a5,ffffffffc0207d6a <vfs_do_add+0xca>
ffffffffc0207ccc:	8522                	mv	a0,s0
ffffffffc0207cce:	0bf030ef          	jal	ra,ffffffffc020b58c <strlen>
ffffffffc0207cd2:	47fd                	li	a5,31
ffffffffc0207cd4:	0ca7e663          	bltu	a5,a0,ffffffffc0207da0 <vfs_do_add+0x100>
ffffffffc0207cd8:	8522                	mv	a0,s0
ffffffffc0207cda:	d1af80ef          	jal	ra,ffffffffc02001f4 <strdup>
ffffffffc0207cde:	84aa                	mv	s1,a0
ffffffffc0207ce0:	c171                	beqz	a0,ffffffffc0207da4 <vfs_do_add+0x104>
ffffffffc0207ce2:	03000513          	li	a0,48
ffffffffc0207ce6:	bc4fa0ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc0207cea:	89aa                	mv	s3,a0
ffffffffc0207cec:	c92d                	beqz	a0,ffffffffc0207d5e <vfs_do_add+0xbe>
ffffffffc0207cee:	0008e517          	auipc	a0,0x8e
ffffffffc0207cf2:	b3a50513          	addi	a0,a0,-1222 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207cf6:	0008e917          	auipc	s2,0x8e
ffffffffc0207cfa:	b2290913          	addi	s2,s2,-1246 # ffffffffc0295818 <vdev_list>
ffffffffc0207cfe:	98ffc0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc0207d02:	844a                	mv	s0,s2
ffffffffc0207d04:	a039                	j	ffffffffc0207d12 <vfs_do_add+0x72>
ffffffffc0207d06:	fe043503          	ld	a0,-32(s0)
ffffffffc0207d0a:	85a6                	mv	a1,s1
ffffffffc0207d0c:	0c9030ef          	jal	ra,ffffffffc020b5d4 <strcmp>
ffffffffc0207d10:	cd2d                	beqz	a0,ffffffffc0207d8a <vfs_do_add+0xea>
ffffffffc0207d12:	6400                	ld	s0,8(s0)
ffffffffc0207d14:	ff2419e3          	bne	s0,s2,ffffffffc0207d06 <vfs_do_add+0x66>
ffffffffc0207d18:	6418                	ld	a4,8(s0)
ffffffffc0207d1a:	02098793          	addi	a5,s3,32
ffffffffc0207d1e:	0099b023          	sd	s1,0(s3)
ffffffffc0207d22:	0149b423          	sd	s4,8(s3)
ffffffffc0207d26:	0159bc23          	sd	s5,24(s3)
ffffffffc0207d2a:	0169b823          	sd	s6,16(s3)
ffffffffc0207d2e:	e31c                	sd	a5,0(a4)
ffffffffc0207d30:	0289b023          	sd	s0,32(s3)
ffffffffc0207d34:	02e9b423          	sd	a4,40(s3)
ffffffffc0207d38:	0008e517          	auipc	a0,0x8e
ffffffffc0207d3c:	af050513          	addi	a0,a0,-1296 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207d40:	e41c                	sd	a5,8(s0)
ffffffffc0207d42:	4401                	li	s0,0
ffffffffc0207d44:	945fc0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0207d48:	70e2                	ld	ra,56(sp)
ffffffffc0207d4a:	8522                	mv	a0,s0
ffffffffc0207d4c:	7442                	ld	s0,48(sp)
ffffffffc0207d4e:	74a2                	ld	s1,40(sp)
ffffffffc0207d50:	7902                	ld	s2,32(sp)
ffffffffc0207d52:	69e2                	ld	s3,24(sp)
ffffffffc0207d54:	6a42                	ld	s4,16(sp)
ffffffffc0207d56:	6aa2                	ld	s5,8(sp)
ffffffffc0207d58:	6b02                	ld	s6,0(sp)
ffffffffc0207d5a:	6121                	addi	sp,sp,64
ffffffffc0207d5c:	8082                	ret
ffffffffc0207d5e:	5471                	li	s0,-4
ffffffffc0207d60:	8526                	mv	a0,s1
ffffffffc0207d62:	bf8fa0ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc0207d66:	b7cd                	j	ffffffffc0207d48 <vfs_do_add+0xa8>
ffffffffc0207d68:	d2b5                	beqz	a3,ffffffffc0207ccc <vfs_do_add+0x2c>
ffffffffc0207d6a:	00007697          	auipc	a3,0x7
ffffffffc0207d6e:	a1668693          	addi	a3,a3,-1514 # ffffffffc020e780 <syscalls+0xa70>
ffffffffc0207d72:	00004617          	auipc	a2,0x4
ffffffffc0207d76:	d9e60613          	addi	a2,a2,-610 # ffffffffc020bb10 <commands+0x210>
ffffffffc0207d7a:	08f00593          	li	a1,143
ffffffffc0207d7e:	00007517          	auipc	a0,0x7
ffffffffc0207d82:	9ea50513          	addi	a0,a0,-1558 # ffffffffc020e768 <syscalls+0xa58>
ffffffffc0207d86:	f18f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0207d8a:	0008e517          	auipc	a0,0x8e
ffffffffc0207d8e:	a9e50513          	addi	a0,a0,-1378 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207d92:	8f7fc0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0207d96:	854e                	mv	a0,s3
ffffffffc0207d98:	bc2fa0ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc0207d9c:	5425                	li	s0,-23
ffffffffc0207d9e:	b7c9                	j	ffffffffc0207d60 <vfs_do_add+0xc0>
ffffffffc0207da0:	5451                	li	s0,-12
ffffffffc0207da2:	b75d                	j	ffffffffc0207d48 <vfs_do_add+0xa8>
ffffffffc0207da4:	5471                	li	s0,-4
ffffffffc0207da6:	b74d                	j	ffffffffc0207d48 <vfs_do_add+0xa8>
ffffffffc0207da8:	00007697          	auipc	a3,0x7
ffffffffc0207dac:	9b068693          	addi	a3,a3,-1616 # ffffffffc020e758 <syscalls+0xa48>
ffffffffc0207db0:	00004617          	auipc	a2,0x4
ffffffffc0207db4:	d6060613          	addi	a2,a2,-672 # ffffffffc020bb10 <commands+0x210>
ffffffffc0207db8:	08e00593          	li	a1,142
ffffffffc0207dbc:	00007517          	auipc	a0,0x7
ffffffffc0207dc0:	9ac50513          	addi	a0,a0,-1620 # ffffffffc020e768 <syscalls+0xa58>
ffffffffc0207dc4:	edaf80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207dc8 <find_mount.part.0>:
ffffffffc0207dc8:	1141                	addi	sp,sp,-16
ffffffffc0207dca:	00007697          	auipc	a3,0x7
ffffffffc0207dce:	98e68693          	addi	a3,a3,-1650 # ffffffffc020e758 <syscalls+0xa48>
ffffffffc0207dd2:	00004617          	auipc	a2,0x4
ffffffffc0207dd6:	d3e60613          	addi	a2,a2,-706 # ffffffffc020bb10 <commands+0x210>
ffffffffc0207dda:	0cd00593          	li	a1,205
ffffffffc0207dde:	00007517          	auipc	a0,0x7
ffffffffc0207de2:	98a50513          	addi	a0,a0,-1654 # ffffffffc020e768 <syscalls+0xa58>
ffffffffc0207de6:	e406                	sd	ra,8(sp)
ffffffffc0207de8:	eb6f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207dec <vfs_devlist_init>:
ffffffffc0207dec:	0008e797          	auipc	a5,0x8e
ffffffffc0207df0:	a2c78793          	addi	a5,a5,-1492 # ffffffffc0295818 <vdev_list>
ffffffffc0207df4:	4585                	li	a1,1
ffffffffc0207df6:	0008e517          	auipc	a0,0x8e
ffffffffc0207dfa:	a3250513          	addi	a0,a0,-1486 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207dfe:	e79c                	sd	a5,8(a5)
ffffffffc0207e00:	e39c                	sd	a5,0(a5)
ffffffffc0207e02:	881fc06f          	j	ffffffffc0204682 <sem_init>

ffffffffc0207e06 <vfs_cleanup>:
ffffffffc0207e06:	1101                	addi	sp,sp,-32
ffffffffc0207e08:	e426                	sd	s1,8(sp)
ffffffffc0207e0a:	0008e497          	auipc	s1,0x8e
ffffffffc0207e0e:	a0e48493          	addi	s1,s1,-1522 # ffffffffc0295818 <vdev_list>
ffffffffc0207e12:	649c                	ld	a5,8(s1)
ffffffffc0207e14:	ec06                	sd	ra,24(sp)
ffffffffc0207e16:	e822                	sd	s0,16(sp)
ffffffffc0207e18:	02978e63          	beq	a5,s1,ffffffffc0207e54 <vfs_cleanup+0x4e>
ffffffffc0207e1c:	0008e517          	auipc	a0,0x8e
ffffffffc0207e20:	a0c50513          	addi	a0,a0,-1524 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207e24:	869fc0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc0207e28:	6480                	ld	s0,8(s1)
ffffffffc0207e2a:	00940b63          	beq	s0,s1,ffffffffc0207e40 <vfs_cleanup+0x3a>
ffffffffc0207e2e:	ff043783          	ld	a5,-16(s0)
ffffffffc0207e32:	853e                	mv	a0,a5
ffffffffc0207e34:	c399                	beqz	a5,ffffffffc0207e3a <vfs_cleanup+0x34>
ffffffffc0207e36:	6bfc                	ld	a5,208(a5)
ffffffffc0207e38:	9782                	jalr	a5
ffffffffc0207e3a:	6400                	ld	s0,8(s0)
ffffffffc0207e3c:	fe9419e3          	bne	s0,s1,ffffffffc0207e2e <vfs_cleanup+0x28>
ffffffffc0207e40:	6442                	ld	s0,16(sp)
ffffffffc0207e42:	60e2                	ld	ra,24(sp)
ffffffffc0207e44:	64a2                	ld	s1,8(sp)
ffffffffc0207e46:	0008e517          	auipc	a0,0x8e
ffffffffc0207e4a:	9e250513          	addi	a0,a0,-1566 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207e4e:	6105                	addi	sp,sp,32
ffffffffc0207e50:	839fc06f          	j	ffffffffc0204688 <up>
ffffffffc0207e54:	60e2                	ld	ra,24(sp)
ffffffffc0207e56:	6442                	ld	s0,16(sp)
ffffffffc0207e58:	64a2                	ld	s1,8(sp)
ffffffffc0207e5a:	6105                	addi	sp,sp,32
ffffffffc0207e5c:	8082                	ret

ffffffffc0207e5e <vfs_get_root>:
ffffffffc0207e5e:	7179                	addi	sp,sp,-48
ffffffffc0207e60:	f406                	sd	ra,40(sp)
ffffffffc0207e62:	f022                	sd	s0,32(sp)
ffffffffc0207e64:	ec26                	sd	s1,24(sp)
ffffffffc0207e66:	e84a                	sd	s2,16(sp)
ffffffffc0207e68:	e44e                	sd	s3,8(sp)
ffffffffc0207e6a:	e052                	sd	s4,0(sp)
ffffffffc0207e6c:	c541                	beqz	a0,ffffffffc0207ef4 <vfs_get_root+0x96>
ffffffffc0207e6e:	0008e917          	auipc	s2,0x8e
ffffffffc0207e72:	9aa90913          	addi	s2,s2,-1622 # ffffffffc0295818 <vdev_list>
ffffffffc0207e76:	00893783          	ld	a5,8(s2)
ffffffffc0207e7a:	07278b63          	beq	a5,s2,ffffffffc0207ef0 <vfs_get_root+0x92>
ffffffffc0207e7e:	89aa                	mv	s3,a0
ffffffffc0207e80:	0008e517          	auipc	a0,0x8e
ffffffffc0207e84:	9a850513          	addi	a0,a0,-1624 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207e88:	8a2e                	mv	s4,a1
ffffffffc0207e8a:	844a                	mv	s0,s2
ffffffffc0207e8c:	801fc0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc0207e90:	a801                	j	ffffffffc0207ea0 <vfs_get_root+0x42>
ffffffffc0207e92:	fe043583          	ld	a1,-32(s0)
ffffffffc0207e96:	854e                	mv	a0,s3
ffffffffc0207e98:	73c030ef          	jal	ra,ffffffffc020b5d4 <strcmp>
ffffffffc0207e9c:	84aa                	mv	s1,a0
ffffffffc0207e9e:	c505                	beqz	a0,ffffffffc0207ec6 <vfs_get_root+0x68>
ffffffffc0207ea0:	6400                	ld	s0,8(s0)
ffffffffc0207ea2:	ff2418e3          	bne	s0,s2,ffffffffc0207e92 <vfs_get_root+0x34>
ffffffffc0207ea6:	54cd                	li	s1,-13
ffffffffc0207ea8:	0008e517          	auipc	a0,0x8e
ffffffffc0207eac:	98050513          	addi	a0,a0,-1664 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207eb0:	fd8fc0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0207eb4:	70a2                	ld	ra,40(sp)
ffffffffc0207eb6:	7402                	ld	s0,32(sp)
ffffffffc0207eb8:	6942                	ld	s2,16(sp)
ffffffffc0207eba:	69a2                	ld	s3,8(sp)
ffffffffc0207ebc:	6a02                	ld	s4,0(sp)
ffffffffc0207ebe:	8526                	mv	a0,s1
ffffffffc0207ec0:	64e2                	ld	s1,24(sp)
ffffffffc0207ec2:	6145                	addi	sp,sp,48
ffffffffc0207ec4:	8082                	ret
ffffffffc0207ec6:	ff043503          	ld	a0,-16(s0)
ffffffffc0207eca:	c519                	beqz	a0,ffffffffc0207ed8 <vfs_get_root+0x7a>
ffffffffc0207ecc:	617c                	ld	a5,192(a0)
ffffffffc0207ece:	9782                	jalr	a5
ffffffffc0207ed0:	c519                	beqz	a0,ffffffffc0207ede <vfs_get_root+0x80>
ffffffffc0207ed2:	00aa3023          	sd	a0,0(s4)
ffffffffc0207ed6:	bfc9                	j	ffffffffc0207ea8 <vfs_get_root+0x4a>
ffffffffc0207ed8:	ff843783          	ld	a5,-8(s0)
ffffffffc0207edc:	c399                	beqz	a5,ffffffffc0207ee2 <vfs_get_root+0x84>
ffffffffc0207ede:	54c9                	li	s1,-14
ffffffffc0207ee0:	b7e1                	j	ffffffffc0207ea8 <vfs_get_root+0x4a>
ffffffffc0207ee2:	fe843503          	ld	a0,-24(s0)
ffffffffc0207ee6:	a99ff0ef          	jal	ra,ffffffffc020797e <inode_ref_inc>
ffffffffc0207eea:	fe843503          	ld	a0,-24(s0)
ffffffffc0207eee:	b7cd                	j	ffffffffc0207ed0 <vfs_get_root+0x72>
ffffffffc0207ef0:	54cd                	li	s1,-13
ffffffffc0207ef2:	b7c9                	j	ffffffffc0207eb4 <vfs_get_root+0x56>
ffffffffc0207ef4:	00007697          	auipc	a3,0x7
ffffffffc0207ef8:	86468693          	addi	a3,a3,-1948 # ffffffffc020e758 <syscalls+0xa48>
ffffffffc0207efc:	00004617          	auipc	a2,0x4
ffffffffc0207f00:	c1460613          	addi	a2,a2,-1004 # ffffffffc020bb10 <commands+0x210>
ffffffffc0207f04:	04500593          	li	a1,69
ffffffffc0207f08:	00007517          	auipc	a0,0x7
ffffffffc0207f0c:	86050513          	addi	a0,a0,-1952 # ffffffffc020e768 <syscalls+0xa58>
ffffffffc0207f10:	d8ef80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207f14 <vfs_get_devname>:
ffffffffc0207f14:	0008e697          	auipc	a3,0x8e
ffffffffc0207f18:	90468693          	addi	a3,a3,-1788 # ffffffffc0295818 <vdev_list>
ffffffffc0207f1c:	87b6                	mv	a5,a3
ffffffffc0207f1e:	e511                	bnez	a0,ffffffffc0207f2a <vfs_get_devname+0x16>
ffffffffc0207f20:	a829                	j	ffffffffc0207f3a <vfs_get_devname+0x26>
ffffffffc0207f22:	ff07b703          	ld	a4,-16(a5)
ffffffffc0207f26:	00a70763          	beq	a4,a0,ffffffffc0207f34 <vfs_get_devname+0x20>
ffffffffc0207f2a:	679c                	ld	a5,8(a5)
ffffffffc0207f2c:	fed79be3          	bne	a5,a3,ffffffffc0207f22 <vfs_get_devname+0xe>
ffffffffc0207f30:	4501                	li	a0,0
ffffffffc0207f32:	8082                	ret
ffffffffc0207f34:	fe07b503          	ld	a0,-32(a5)
ffffffffc0207f38:	8082                	ret
ffffffffc0207f3a:	1141                	addi	sp,sp,-16
ffffffffc0207f3c:	00007697          	auipc	a3,0x7
ffffffffc0207f40:	8a468693          	addi	a3,a3,-1884 # ffffffffc020e7e0 <syscalls+0xad0>
ffffffffc0207f44:	00004617          	auipc	a2,0x4
ffffffffc0207f48:	bcc60613          	addi	a2,a2,-1076 # ffffffffc020bb10 <commands+0x210>
ffffffffc0207f4c:	06a00593          	li	a1,106
ffffffffc0207f50:	00007517          	auipc	a0,0x7
ffffffffc0207f54:	81850513          	addi	a0,a0,-2024 # ffffffffc020e768 <syscalls+0xa58>
ffffffffc0207f58:	e406                	sd	ra,8(sp)
ffffffffc0207f5a:	d44f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207f5e <vfs_add_dev>:
ffffffffc0207f5e:	86b2                	mv	a3,a2
ffffffffc0207f60:	4601                	li	a2,0
ffffffffc0207f62:	d3fff06f          	j	ffffffffc0207ca0 <vfs_do_add>

ffffffffc0207f66 <vfs_mount>:
ffffffffc0207f66:	7179                	addi	sp,sp,-48
ffffffffc0207f68:	e84a                	sd	s2,16(sp)
ffffffffc0207f6a:	892a                	mv	s2,a0
ffffffffc0207f6c:	0008e517          	auipc	a0,0x8e
ffffffffc0207f70:	8bc50513          	addi	a0,a0,-1860 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207f74:	e44e                	sd	s3,8(sp)
ffffffffc0207f76:	f406                	sd	ra,40(sp)
ffffffffc0207f78:	f022                	sd	s0,32(sp)
ffffffffc0207f7a:	ec26                	sd	s1,24(sp)
ffffffffc0207f7c:	89ae                	mv	s3,a1
ffffffffc0207f7e:	f0efc0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc0207f82:	08090a63          	beqz	s2,ffffffffc0208016 <vfs_mount+0xb0>
ffffffffc0207f86:	0008e497          	auipc	s1,0x8e
ffffffffc0207f8a:	89248493          	addi	s1,s1,-1902 # ffffffffc0295818 <vdev_list>
ffffffffc0207f8e:	6480                	ld	s0,8(s1)
ffffffffc0207f90:	00941663          	bne	s0,s1,ffffffffc0207f9c <vfs_mount+0x36>
ffffffffc0207f94:	a8ad                	j	ffffffffc020800e <vfs_mount+0xa8>
ffffffffc0207f96:	6400                	ld	s0,8(s0)
ffffffffc0207f98:	06940b63          	beq	s0,s1,ffffffffc020800e <vfs_mount+0xa8>
ffffffffc0207f9c:	ff843783          	ld	a5,-8(s0)
ffffffffc0207fa0:	dbfd                	beqz	a5,ffffffffc0207f96 <vfs_mount+0x30>
ffffffffc0207fa2:	fe043503          	ld	a0,-32(s0)
ffffffffc0207fa6:	85ca                	mv	a1,s2
ffffffffc0207fa8:	62c030ef          	jal	ra,ffffffffc020b5d4 <strcmp>
ffffffffc0207fac:	f56d                	bnez	a0,ffffffffc0207f96 <vfs_mount+0x30>
ffffffffc0207fae:	ff043783          	ld	a5,-16(s0)
ffffffffc0207fb2:	e3a5                	bnez	a5,ffffffffc0208012 <vfs_mount+0xac>
ffffffffc0207fb4:	fe043783          	ld	a5,-32(s0)
ffffffffc0207fb8:	c3c9                	beqz	a5,ffffffffc020803a <vfs_mount+0xd4>
ffffffffc0207fba:	ff843783          	ld	a5,-8(s0)
ffffffffc0207fbe:	cfb5                	beqz	a5,ffffffffc020803a <vfs_mount+0xd4>
ffffffffc0207fc0:	fe843503          	ld	a0,-24(s0)
ffffffffc0207fc4:	c939                	beqz	a0,ffffffffc020801a <vfs_mount+0xb4>
ffffffffc0207fc6:	4d38                	lw	a4,88(a0)
ffffffffc0207fc8:	6785                	lui	a5,0x1
ffffffffc0207fca:	23478793          	addi	a5,a5,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0207fce:	04f71663          	bne	a4,a5,ffffffffc020801a <vfs_mount+0xb4>
ffffffffc0207fd2:	ff040593          	addi	a1,s0,-16
ffffffffc0207fd6:	9982                	jalr	s3
ffffffffc0207fd8:	84aa                	mv	s1,a0
ffffffffc0207fda:	ed01                	bnez	a0,ffffffffc0207ff2 <vfs_mount+0x8c>
ffffffffc0207fdc:	ff043783          	ld	a5,-16(s0)
ffffffffc0207fe0:	cfad                	beqz	a5,ffffffffc020805a <vfs_mount+0xf4>
ffffffffc0207fe2:	fe043583          	ld	a1,-32(s0)
ffffffffc0207fe6:	00007517          	auipc	a0,0x7
ffffffffc0207fea:	88a50513          	addi	a0,a0,-1910 # ffffffffc020e870 <syscalls+0xb60>
ffffffffc0207fee:	9b8f80ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0207ff2:	0008e517          	auipc	a0,0x8e
ffffffffc0207ff6:	83650513          	addi	a0,a0,-1994 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207ffa:	e8efc0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0207ffe:	70a2                	ld	ra,40(sp)
ffffffffc0208000:	7402                	ld	s0,32(sp)
ffffffffc0208002:	6942                	ld	s2,16(sp)
ffffffffc0208004:	69a2                	ld	s3,8(sp)
ffffffffc0208006:	8526                	mv	a0,s1
ffffffffc0208008:	64e2                	ld	s1,24(sp)
ffffffffc020800a:	6145                	addi	sp,sp,48
ffffffffc020800c:	8082                	ret
ffffffffc020800e:	54cd                	li	s1,-13
ffffffffc0208010:	b7cd                	j	ffffffffc0207ff2 <vfs_mount+0x8c>
ffffffffc0208012:	54c5                	li	s1,-15
ffffffffc0208014:	bff9                	j	ffffffffc0207ff2 <vfs_mount+0x8c>
ffffffffc0208016:	db3ff0ef          	jal	ra,ffffffffc0207dc8 <find_mount.part.0>
ffffffffc020801a:	00007697          	auipc	a3,0x7
ffffffffc020801e:	80668693          	addi	a3,a3,-2042 # ffffffffc020e820 <syscalls+0xb10>
ffffffffc0208022:	00004617          	auipc	a2,0x4
ffffffffc0208026:	aee60613          	addi	a2,a2,-1298 # ffffffffc020bb10 <commands+0x210>
ffffffffc020802a:	0ed00593          	li	a1,237
ffffffffc020802e:	00006517          	auipc	a0,0x6
ffffffffc0208032:	73a50513          	addi	a0,a0,1850 # ffffffffc020e768 <syscalls+0xa58>
ffffffffc0208036:	c68f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020803a:	00006697          	auipc	a3,0x6
ffffffffc020803e:	7b668693          	addi	a3,a3,1974 # ffffffffc020e7f0 <syscalls+0xae0>
ffffffffc0208042:	00004617          	auipc	a2,0x4
ffffffffc0208046:	ace60613          	addi	a2,a2,-1330 # ffffffffc020bb10 <commands+0x210>
ffffffffc020804a:	0eb00593          	li	a1,235
ffffffffc020804e:	00006517          	auipc	a0,0x6
ffffffffc0208052:	71a50513          	addi	a0,a0,1818 # ffffffffc020e768 <syscalls+0xa58>
ffffffffc0208056:	c48f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020805a:	00006697          	auipc	a3,0x6
ffffffffc020805e:	7fe68693          	addi	a3,a3,2046 # ffffffffc020e858 <syscalls+0xb48>
ffffffffc0208062:	00004617          	auipc	a2,0x4
ffffffffc0208066:	aae60613          	addi	a2,a2,-1362 # ffffffffc020bb10 <commands+0x210>
ffffffffc020806a:	0ef00593          	li	a1,239
ffffffffc020806e:	00006517          	auipc	a0,0x6
ffffffffc0208072:	6fa50513          	addi	a0,a0,1786 # ffffffffc020e768 <syscalls+0xa58>
ffffffffc0208076:	c28f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020807a <vfs_open>:
ffffffffc020807a:	711d                	addi	sp,sp,-96
ffffffffc020807c:	e4a6                	sd	s1,72(sp)
ffffffffc020807e:	e0ca                	sd	s2,64(sp)
ffffffffc0208080:	fc4e                	sd	s3,56(sp)
ffffffffc0208082:	ec86                	sd	ra,88(sp)
ffffffffc0208084:	e8a2                	sd	s0,80(sp)
ffffffffc0208086:	f852                	sd	s4,48(sp)
ffffffffc0208088:	f456                	sd	s5,40(sp)
ffffffffc020808a:	0035f793          	andi	a5,a1,3
ffffffffc020808e:	84ae                	mv	s1,a1
ffffffffc0208090:	892a                	mv	s2,a0
ffffffffc0208092:	89b2                	mv	s3,a2
ffffffffc0208094:	0e078663          	beqz	a5,ffffffffc0208180 <vfs_open+0x106>
ffffffffc0208098:	470d                	li	a4,3
ffffffffc020809a:	0105fa93          	andi	s5,a1,16
ffffffffc020809e:	0ce78f63          	beq	a5,a4,ffffffffc020817c <vfs_open+0x102>
ffffffffc02080a2:	002c                	addi	a1,sp,8
ffffffffc02080a4:	854a                	mv	a0,s2
ffffffffc02080a6:	2ae000ef          	jal	ra,ffffffffc0208354 <vfs_lookup>
ffffffffc02080aa:	842a                	mv	s0,a0
ffffffffc02080ac:	0044fa13          	andi	s4,s1,4
ffffffffc02080b0:	e159                	bnez	a0,ffffffffc0208136 <vfs_open+0xbc>
ffffffffc02080b2:	00c4f793          	andi	a5,s1,12
ffffffffc02080b6:	4731                	li	a4,12
ffffffffc02080b8:	0ee78263          	beq	a5,a4,ffffffffc020819c <vfs_open+0x122>
ffffffffc02080bc:	6422                	ld	s0,8(sp)
ffffffffc02080be:	12040163          	beqz	s0,ffffffffc02081e0 <vfs_open+0x166>
ffffffffc02080c2:	783c                	ld	a5,112(s0)
ffffffffc02080c4:	cff1                	beqz	a5,ffffffffc02081a0 <vfs_open+0x126>
ffffffffc02080c6:	679c                	ld	a5,8(a5)
ffffffffc02080c8:	cfe1                	beqz	a5,ffffffffc02081a0 <vfs_open+0x126>
ffffffffc02080ca:	8522                	mv	a0,s0
ffffffffc02080cc:	00007597          	auipc	a1,0x7
ffffffffc02080d0:	88458593          	addi	a1,a1,-1916 # ffffffffc020e950 <syscalls+0xc40>
ffffffffc02080d4:	8c3ff0ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc02080d8:	783c                	ld	a5,112(s0)
ffffffffc02080da:	6522                	ld	a0,8(sp)
ffffffffc02080dc:	85a6                	mv	a1,s1
ffffffffc02080de:	679c                	ld	a5,8(a5)
ffffffffc02080e0:	9782                	jalr	a5
ffffffffc02080e2:	842a                	mv	s0,a0
ffffffffc02080e4:	6522                	ld	a0,8(sp)
ffffffffc02080e6:	e845                	bnez	s0,ffffffffc0208196 <vfs_open+0x11c>
ffffffffc02080e8:	015a6a33          	or	s4,s4,s5
ffffffffc02080ec:	89fff0ef          	jal	ra,ffffffffc020798a <inode_open_inc>
ffffffffc02080f0:	020a0663          	beqz	s4,ffffffffc020811c <vfs_open+0xa2>
ffffffffc02080f4:	64a2                	ld	s1,8(sp)
ffffffffc02080f6:	c4e9                	beqz	s1,ffffffffc02081c0 <vfs_open+0x146>
ffffffffc02080f8:	78bc                	ld	a5,112(s1)
ffffffffc02080fa:	c3f9                	beqz	a5,ffffffffc02081c0 <vfs_open+0x146>
ffffffffc02080fc:	73bc                	ld	a5,96(a5)
ffffffffc02080fe:	c3e9                	beqz	a5,ffffffffc02081c0 <vfs_open+0x146>
ffffffffc0208100:	00007597          	auipc	a1,0x7
ffffffffc0208104:	8b058593          	addi	a1,a1,-1872 # ffffffffc020e9b0 <syscalls+0xca0>
ffffffffc0208108:	8526                	mv	a0,s1
ffffffffc020810a:	88dff0ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc020810e:	78bc                	ld	a5,112(s1)
ffffffffc0208110:	6522                	ld	a0,8(sp)
ffffffffc0208112:	4581                	li	a1,0
ffffffffc0208114:	73bc                	ld	a5,96(a5)
ffffffffc0208116:	9782                	jalr	a5
ffffffffc0208118:	87aa                	mv	a5,a0
ffffffffc020811a:	e92d                	bnez	a0,ffffffffc020818c <vfs_open+0x112>
ffffffffc020811c:	67a2                	ld	a5,8(sp)
ffffffffc020811e:	00f9b023          	sd	a5,0(s3)
ffffffffc0208122:	60e6                	ld	ra,88(sp)
ffffffffc0208124:	8522                	mv	a0,s0
ffffffffc0208126:	6446                	ld	s0,80(sp)
ffffffffc0208128:	64a6                	ld	s1,72(sp)
ffffffffc020812a:	6906                	ld	s2,64(sp)
ffffffffc020812c:	79e2                	ld	s3,56(sp)
ffffffffc020812e:	7a42                	ld	s4,48(sp)
ffffffffc0208130:	7aa2                	ld	s5,40(sp)
ffffffffc0208132:	6125                	addi	sp,sp,96
ffffffffc0208134:	8082                	ret
ffffffffc0208136:	57c1                	li	a5,-16
ffffffffc0208138:	fef515e3          	bne	a0,a5,ffffffffc0208122 <vfs_open+0xa8>
ffffffffc020813c:	fe0a03e3          	beqz	s4,ffffffffc0208122 <vfs_open+0xa8>
ffffffffc0208140:	0810                	addi	a2,sp,16
ffffffffc0208142:	082c                	addi	a1,sp,24
ffffffffc0208144:	854a                	mv	a0,s2
ffffffffc0208146:	2a4000ef          	jal	ra,ffffffffc02083ea <vfs_lookup_parent>
ffffffffc020814a:	842a                	mv	s0,a0
ffffffffc020814c:	f979                	bnez	a0,ffffffffc0208122 <vfs_open+0xa8>
ffffffffc020814e:	6462                	ld	s0,24(sp)
ffffffffc0208150:	c845                	beqz	s0,ffffffffc0208200 <vfs_open+0x186>
ffffffffc0208152:	783c                	ld	a5,112(s0)
ffffffffc0208154:	c7d5                	beqz	a5,ffffffffc0208200 <vfs_open+0x186>
ffffffffc0208156:	77bc                	ld	a5,104(a5)
ffffffffc0208158:	c7c5                	beqz	a5,ffffffffc0208200 <vfs_open+0x186>
ffffffffc020815a:	8522                	mv	a0,s0
ffffffffc020815c:	00006597          	auipc	a1,0x6
ffffffffc0208160:	78c58593          	addi	a1,a1,1932 # ffffffffc020e8e8 <syscalls+0xbd8>
ffffffffc0208164:	833ff0ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0208168:	783c                	ld	a5,112(s0)
ffffffffc020816a:	65c2                	ld	a1,16(sp)
ffffffffc020816c:	6562                	ld	a0,24(sp)
ffffffffc020816e:	77bc                	ld	a5,104(a5)
ffffffffc0208170:	4034d613          	srai	a2,s1,0x3
ffffffffc0208174:	0034                	addi	a3,sp,8
ffffffffc0208176:	8a05                	andi	a2,a2,1
ffffffffc0208178:	9782                	jalr	a5
ffffffffc020817a:	b789                	j	ffffffffc02080bc <vfs_open+0x42>
ffffffffc020817c:	5475                	li	s0,-3
ffffffffc020817e:	b755                	j	ffffffffc0208122 <vfs_open+0xa8>
ffffffffc0208180:	0105fa93          	andi	s5,a1,16
ffffffffc0208184:	5475                	li	s0,-3
ffffffffc0208186:	f80a9ee3          	bnez	s5,ffffffffc0208122 <vfs_open+0xa8>
ffffffffc020818a:	bf21                	j	ffffffffc02080a2 <vfs_open+0x28>
ffffffffc020818c:	6522                	ld	a0,8(sp)
ffffffffc020818e:	843e                	mv	s0,a5
ffffffffc0208190:	965ff0ef          	jal	ra,ffffffffc0207af4 <inode_open_dec>
ffffffffc0208194:	6522                	ld	a0,8(sp)
ffffffffc0208196:	8b7ff0ef          	jal	ra,ffffffffc0207a4c <inode_ref_dec>
ffffffffc020819a:	b761                	j	ffffffffc0208122 <vfs_open+0xa8>
ffffffffc020819c:	5425                	li	s0,-23
ffffffffc020819e:	b751                	j	ffffffffc0208122 <vfs_open+0xa8>
ffffffffc02081a0:	00006697          	auipc	a3,0x6
ffffffffc02081a4:	76068693          	addi	a3,a3,1888 # ffffffffc020e900 <syscalls+0xbf0>
ffffffffc02081a8:	00004617          	auipc	a2,0x4
ffffffffc02081ac:	96860613          	addi	a2,a2,-1688 # ffffffffc020bb10 <commands+0x210>
ffffffffc02081b0:	03300593          	li	a1,51
ffffffffc02081b4:	00006517          	auipc	a0,0x6
ffffffffc02081b8:	71c50513          	addi	a0,a0,1820 # ffffffffc020e8d0 <syscalls+0xbc0>
ffffffffc02081bc:	ae2f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02081c0:	00006697          	auipc	a3,0x6
ffffffffc02081c4:	79868693          	addi	a3,a3,1944 # ffffffffc020e958 <syscalls+0xc48>
ffffffffc02081c8:	00004617          	auipc	a2,0x4
ffffffffc02081cc:	94860613          	addi	a2,a2,-1720 # ffffffffc020bb10 <commands+0x210>
ffffffffc02081d0:	03a00593          	li	a1,58
ffffffffc02081d4:	00006517          	auipc	a0,0x6
ffffffffc02081d8:	6fc50513          	addi	a0,a0,1788 # ffffffffc020e8d0 <syscalls+0xbc0>
ffffffffc02081dc:	ac2f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02081e0:	00006697          	auipc	a3,0x6
ffffffffc02081e4:	71068693          	addi	a3,a3,1808 # ffffffffc020e8f0 <syscalls+0xbe0>
ffffffffc02081e8:	00004617          	auipc	a2,0x4
ffffffffc02081ec:	92860613          	addi	a2,a2,-1752 # ffffffffc020bb10 <commands+0x210>
ffffffffc02081f0:	03100593          	li	a1,49
ffffffffc02081f4:	00006517          	auipc	a0,0x6
ffffffffc02081f8:	6dc50513          	addi	a0,a0,1756 # ffffffffc020e8d0 <syscalls+0xbc0>
ffffffffc02081fc:	aa2f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208200:	00006697          	auipc	a3,0x6
ffffffffc0208204:	68068693          	addi	a3,a3,1664 # ffffffffc020e880 <syscalls+0xb70>
ffffffffc0208208:	00004617          	auipc	a2,0x4
ffffffffc020820c:	90860613          	addi	a2,a2,-1784 # ffffffffc020bb10 <commands+0x210>
ffffffffc0208210:	02c00593          	li	a1,44
ffffffffc0208214:	00006517          	auipc	a0,0x6
ffffffffc0208218:	6bc50513          	addi	a0,a0,1724 # ffffffffc020e8d0 <syscalls+0xbc0>
ffffffffc020821c:	a82f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208220 <vfs_close>:
ffffffffc0208220:	1141                	addi	sp,sp,-16
ffffffffc0208222:	e406                	sd	ra,8(sp)
ffffffffc0208224:	e022                	sd	s0,0(sp)
ffffffffc0208226:	842a                	mv	s0,a0
ffffffffc0208228:	8cdff0ef          	jal	ra,ffffffffc0207af4 <inode_open_dec>
ffffffffc020822c:	8522                	mv	a0,s0
ffffffffc020822e:	81fff0ef          	jal	ra,ffffffffc0207a4c <inode_ref_dec>
ffffffffc0208232:	60a2                	ld	ra,8(sp)
ffffffffc0208234:	6402                	ld	s0,0(sp)
ffffffffc0208236:	4501                	li	a0,0
ffffffffc0208238:	0141                	addi	sp,sp,16
ffffffffc020823a:	8082                	ret

ffffffffc020823c <get_device>:
ffffffffc020823c:	7179                	addi	sp,sp,-48
ffffffffc020823e:	ec26                	sd	s1,24(sp)
ffffffffc0208240:	e84a                	sd	s2,16(sp)
ffffffffc0208242:	f406                	sd	ra,40(sp)
ffffffffc0208244:	f022                	sd	s0,32(sp)
ffffffffc0208246:	00054303          	lbu	t1,0(a0)
ffffffffc020824a:	892e                	mv	s2,a1
ffffffffc020824c:	84b2                	mv	s1,a2
ffffffffc020824e:	02030463          	beqz	t1,ffffffffc0208276 <get_device+0x3a>
ffffffffc0208252:	00150413          	addi	s0,a0,1
ffffffffc0208256:	86a2                	mv	a3,s0
ffffffffc0208258:	879a                	mv	a5,t1
ffffffffc020825a:	4701                	li	a4,0
ffffffffc020825c:	03a00813          	li	a6,58
ffffffffc0208260:	02f00893          	li	a7,47
ffffffffc0208264:	03078263          	beq	a5,a6,ffffffffc0208288 <get_device+0x4c>
ffffffffc0208268:	05178963          	beq	a5,a7,ffffffffc02082ba <get_device+0x7e>
ffffffffc020826c:	0006c783          	lbu	a5,0(a3)
ffffffffc0208270:	2705                	addiw	a4,a4,1
ffffffffc0208272:	0685                	addi	a3,a3,1
ffffffffc0208274:	fbe5                	bnez	a5,ffffffffc0208264 <get_device+0x28>
ffffffffc0208276:	7402                	ld	s0,32(sp)
ffffffffc0208278:	00a93023          	sd	a0,0(s2)
ffffffffc020827c:	70a2                	ld	ra,40(sp)
ffffffffc020827e:	6942                	ld	s2,16(sp)
ffffffffc0208280:	8526                	mv	a0,s1
ffffffffc0208282:	64e2                	ld	s1,24(sp)
ffffffffc0208284:	6145                	addi	sp,sp,48
ffffffffc0208286:	a279                	j	ffffffffc0208414 <vfs_get_curdir>
ffffffffc0208288:	cb15                	beqz	a4,ffffffffc02082bc <get_device+0x80>
ffffffffc020828a:	00e507b3          	add	a5,a0,a4
ffffffffc020828e:	0705                	addi	a4,a4,1
ffffffffc0208290:	00078023          	sb	zero,0(a5)
ffffffffc0208294:	972a                	add	a4,a4,a0
ffffffffc0208296:	02f00613          	li	a2,47
ffffffffc020829a:	00074783          	lbu	a5,0(a4)
ffffffffc020829e:	86ba                	mv	a3,a4
ffffffffc02082a0:	0705                	addi	a4,a4,1
ffffffffc02082a2:	fec78ce3          	beq	a5,a2,ffffffffc020829a <get_device+0x5e>
ffffffffc02082a6:	7402                	ld	s0,32(sp)
ffffffffc02082a8:	70a2                	ld	ra,40(sp)
ffffffffc02082aa:	00d93023          	sd	a3,0(s2)
ffffffffc02082ae:	85a6                	mv	a1,s1
ffffffffc02082b0:	6942                	ld	s2,16(sp)
ffffffffc02082b2:	64e2                	ld	s1,24(sp)
ffffffffc02082b4:	6145                	addi	sp,sp,48
ffffffffc02082b6:	ba9ff06f          	j	ffffffffc0207e5e <vfs_get_root>
ffffffffc02082ba:	ff55                	bnez	a4,ffffffffc0208276 <get_device+0x3a>
ffffffffc02082bc:	02f00793          	li	a5,47
ffffffffc02082c0:	04f30563          	beq	t1,a5,ffffffffc020830a <get_device+0xce>
ffffffffc02082c4:	03a00793          	li	a5,58
ffffffffc02082c8:	06f31663          	bne	t1,a5,ffffffffc0208334 <get_device+0xf8>
ffffffffc02082cc:	0028                	addi	a0,sp,8
ffffffffc02082ce:	146000ef          	jal	ra,ffffffffc0208414 <vfs_get_curdir>
ffffffffc02082d2:	e515                	bnez	a0,ffffffffc02082fe <get_device+0xc2>
ffffffffc02082d4:	67a2                	ld	a5,8(sp)
ffffffffc02082d6:	77a8                	ld	a0,104(a5)
ffffffffc02082d8:	cd15                	beqz	a0,ffffffffc0208314 <get_device+0xd8>
ffffffffc02082da:	617c                	ld	a5,192(a0)
ffffffffc02082dc:	9782                	jalr	a5
ffffffffc02082de:	87aa                	mv	a5,a0
ffffffffc02082e0:	6522                	ld	a0,8(sp)
ffffffffc02082e2:	e09c                	sd	a5,0(s1)
ffffffffc02082e4:	f68ff0ef          	jal	ra,ffffffffc0207a4c <inode_ref_dec>
ffffffffc02082e8:	02f00713          	li	a4,47
ffffffffc02082ec:	a011                	j	ffffffffc02082f0 <get_device+0xb4>
ffffffffc02082ee:	0405                	addi	s0,s0,1
ffffffffc02082f0:	00044783          	lbu	a5,0(s0)
ffffffffc02082f4:	fee78de3          	beq	a5,a4,ffffffffc02082ee <get_device+0xb2>
ffffffffc02082f8:	00893023          	sd	s0,0(s2)
ffffffffc02082fc:	4501                	li	a0,0
ffffffffc02082fe:	70a2                	ld	ra,40(sp)
ffffffffc0208300:	7402                	ld	s0,32(sp)
ffffffffc0208302:	64e2                	ld	s1,24(sp)
ffffffffc0208304:	6942                	ld	s2,16(sp)
ffffffffc0208306:	6145                	addi	sp,sp,48
ffffffffc0208308:	8082                	ret
ffffffffc020830a:	8526                	mv	a0,s1
ffffffffc020830c:	93fff0ef          	jal	ra,ffffffffc0207c4a <vfs_get_bootfs>
ffffffffc0208310:	dd61                	beqz	a0,ffffffffc02082e8 <get_device+0xac>
ffffffffc0208312:	b7f5                	j	ffffffffc02082fe <get_device+0xc2>
ffffffffc0208314:	00006697          	auipc	a3,0x6
ffffffffc0208318:	6d468693          	addi	a3,a3,1748 # ffffffffc020e9e8 <syscalls+0xcd8>
ffffffffc020831c:	00003617          	auipc	a2,0x3
ffffffffc0208320:	7f460613          	addi	a2,a2,2036 # ffffffffc020bb10 <commands+0x210>
ffffffffc0208324:	03900593          	li	a1,57
ffffffffc0208328:	00006517          	auipc	a0,0x6
ffffffffc020832c:	6a850513          	addi	a0,a0,1704 # ffffffffc020e9d0 <syscalls+0xcc0>
ffffffffc0208330:	96ef80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208334:	00006697          	auipc	a3,0x6
ffffffffc0208338:	68c68693          	addi	a3,a3,1676 # ffffffffc020e9c0 <syscalls+0xcb0>
ffffffffc020833c:	00003617          	auipc	a2,0x3
ffffffffc0208340:	7d460613          	addi	a2,a2,2004 # ffffffffc020bb10 <commands+0x210>
ffffffffc0208344:	03300593          	li	a1,51
ffffffffc0208348:	00006517          	auipc	a0,0x6
ffffffffc020834c:	68850513          	addi	a0,a0,1672 # ffffffffc020e9d0 <syscalls+0xcc0>
ffffffffc0208350:	94ef80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208354 <vfs_lookup>:
ffffffffc0208354:	7139                	addi	sp,sp,-64
ffffffffc0208356:	f426                	sd	s1,40(sp)
ffffffffc0208358:	0830                	addi	a2,sp,24
ffffffffc020835a:	84ae                	mv	s1,a1
ffffffffc020835c:	002c                	addi	a1,sp,8
ffffffffc020835e:	f822                	sd	s0,48(sp)
ffffffffc0208360:	fc06                	sd	ra,56(sp)
ffffffffc0208362:	f04a                	sd	s2,32(sp)
ffffffffc0208364:	e42a                	sd	a0,8(sp)
ffffffffc0208366:	ed7ff0ef          	jal	ra,ffffffffc020823c <get_device>
ffffffffc020836a:	842a                	mv	s0,a0
ffffffffc020836c:	ed1d                	bnez	a0,ffffffffc02083aa <vfs_lookup+0x56>
ffffffffc020836e:	67a2                	ld	a5,8(sp)
ffffffffc0208370:	6962                	ld	s2,24(sp)
ffffffffc0208372:	0007c783          	lbu	a5,0(a5)
ffffffffc0208376:	c3a9                	beqz	a5,ffffffffc02083b8 <vfs_lookup+0x64>
ffffffffc0208378:	04090963          	beqz	s2,ffffffffc02083ca <vfs_lookup+0x76>
ffffffffc020837c:	07093783          	ld	a5,112(s2)
ffffffffc0208380:	c7a9                	beqz	a5,ffffffffc02083ca <vfs_lookup+0x76>
ffffffffc0208382:	7bbc                	ld	a5,112(a5)
ffffffffc0208384:	c3b9                	beqz	a5,ffffffffc02083ca <vfs_lookup+0x76>
ffffffffc0208386:	854a                	mv	a0,s2
ffffffffc0208388:	00006597          	auipc	a1,0x6
ffffffffc020838c:	6c858593          	addi	a1,a1,1736 # ffffffffc020ea50 <syscalls+0xd40>
ffffffffc0208390:	e06ff0ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0208394:	07093783          	ld	a5,112(s2)
ffffffffc0208398:	65a2                	ld	a1,8(sp)
ffffffffc020839a:	6562                	ld	a0,24(sp)
ffffffffc020839c:	7bbc                	ld	a5,112(a5)
ffffffffc020839e:	8626                	mv	a2,s1
ffffffffc02083a0:	9782                	jalr	a5
ffffffffc02083a2:	842a                	mv	s0,a0
ffffffffc02083a4:	6562                	ld	a0,24(sp)
ffffffffc02083a6:	ea6ff0ef          	jal	ra,ffffffffc0207a4c <inode_ref_dec>
ffffffffc02083aa:	70e2                	ld	ra,56(sp)
ffffffffc02083ac:	8522                	mv	a0,s0
ffffffffc02083ae:	7442                	ld	s0,48(sp)
ffffffffc02083b0:	74a2                	ld	s1,40(sp)
ffffffffc02083b2:	7902                	ld	s2,32(sp)
ffffffffc02083b4:	6121                	addi	sp,sp,64
ffffffffc02083b6:	8082                	ret
ffffffffc02083b8:	70e2                	ld	ra,56(sp)
ffffffffc02083ba:	8522                	mv	a0,s0
ffffffffc02083bc:	7442                	ld	s0,48(sp)
ffffffffc02083be:	0124b023          	sd	s2,0(s1)
ffffffffc02083c2:	74a2                	ld	s1,40(sp)
ffffffffc02083c4:	7902                	ld	s2,32(sp)
ffffffffc02083c6:	6121                	addi	sp,sp,64
ffffffffc02083c8:	8082                	ret
ffffffffc02083ca:	00006697          	auipc	a3,0x6
ffffffffc02083ce:	63668693          	addi	a3,a3,1590 # ffffffffc020ea00 <syscalls+0xcf0>
ffffffffc02083d2:	00003617          	auipc	a2,0x3
ffffffffc02083d6:	73e60613          	addi	a2,a2,1854 # ffffffffc020bb10 <commands+0x210>
ffffffffc02083da:	04f00593          	li	a1,79
ffffffffc02083de:	00006517          	auipc	a0,0x6
ffffffffc02083e2:	5f250513          	addi	a0,a0,1522 # ffffffffc020e9d0 <syscalls+0xcc0>
ffffffffc02083e6:	8b8f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02083ea <vfs_lookup_parent>:
ffffffffc02083ea:	7139                	addi	sp,sp,-64
ffffffffc02083ec:	f822                	sd	s0,48(sp)
ffffffffc02083ee:	f426                	sd	s1,40(sp)
ffffffffc02083f0:	842e                	mv	s0,a1
ffffffffc02083f2:	84b2                	mv	s1,a2
ffffffffc02083f4:	002c                	addi	a1,sp,8
ffffffffc02083f6:	0830                	addi	a2,sp,24
ffffffffc02083f8:	fc06                	sd	ra,56(sp)
ffffffffc02083fa:	e42a                	sd	a0,8(sp)
ffffffffc02083fc:	e41ff0ef          	jal	ra,ffffffffc020823c <get_device>
ffffffffc0208400:	e509                	bnez	a0,ffffffffc020840a <vfs_lookup_parent+0x20>
ffffffffc0208402:	67a2                	ld	a5,8(sp)
ffffffffc0208404:	e09c                	sd	a5,0(s1)
ffffffffc0208406:	67e2                	ld	a5,24(sp)
ffffffffc0208408:	e01c                	sd	a5,0(s0)
ffffffffc020840a:	70e2                	ld	ra,56(sp)
ffffffffc020840c:	7442                	ld	s0,48(sp)
ffffffffc020840e:	74a2                	ld	s1,40(sp)
ffffffffc0208410:	6121                	addi	sp,sp,64
ffffffffc0208412:	8082                	ret

ffffffffc0208414 <vfs_get_curdir>:
ffffffffc0208414:	0008e797          	auipc	a5,0x8e
ffffffffc0208418:	4ac7b783          	ld	a5,1196(a5) # ffffffffc02968c0 <current>
ffffffffc020841c:	1487b783          	ld	a5,328(a5)
ffffffffc0208420:	1101                	addi	sp,sp,-32
ffffffffc0208422:	e426                	sd	s1,8(sp)
ffffffffc0208424:	6384                	ld	s1,0(a5)
ffffffffc0208426:	ec06                	sd	ra,24(sp)
ffffffffc0208428:	e822                	sd	s0,16(sp)
ffffffffc020842a:	cc81                	beqz	s1,ffffffffc0208442 <vfs_get_curdir+0x2e>
ffffffffc020842c:	842a                	mv	s0,a0
ffffffffc020842e:	8526                	mv	a0,s1
ffffffffc0208430:	d4eff0ef          	jal	ra,ffffffffc020797e <inode_ref_inc>
ffffffffc0208434:	4501                	li	a0,0
ffffffffc0208436:	e004                	sd	s1,0(s0)
ffffffffc0208438:	60e2                	ld	ra,24(sp)
ffffffffc020843a:	6442                	ld	s0,16(sp)
ffffffffc020843c:	64a2                	ld	s1,8(sp)
ffffffffc020843e:	6105                	addi	sp,sp,32
ffffffffc0208440:	8082                	ret
ffffffffc0208442:	5541                	li	a0,-16
ffffffffc0208444:	bfd5                	j	ffffffffc0208438 <vfs_get_curdir+0x24>

ffffffffc0208446 <vfs_set_curdir>:
ffffffffc0208446:	7139                	addi	sp,sp,-64
ffffffffc0208448:	f04a                	sd	s2,32(sp)
ffffffffc020844a:	0008e917          	auipc	s2,0x8e
ffffffffc020844e:	47690913          	addi	s2,s2,1142 # ffffffffc02968c0 <current>
ffffffffc0208452:	00093783          	ld	a5,0(s2)
ffffffffc0208456:	f822                	sd	s0,48(sp)
ffffffffc0208458:	842a                	mv	s0,a0
ffffffffc020845a:	1487b503          	ld	a0,328(a5)
ffffffffc020845e:	ec4e                	sd	s3,24(sp)
ffffffffc0208460:	fc06                	sd	ra,56(sp)
ffffffffc0208462:	f426                	sd	s1,40(sp)
ffffffffc0208464:	e87fc0ef          	jal	ra,ffffffffc02052ea <lock_files>
ffffffffc0208468:	00093783          	ld	a5,0(s2)
ffffffffc020846c:	1487b503          	ld	a0,328(a5)
ffffffffc0208470:	00053983          	ld	s3,0(a0)
ffffffffc0208474:	07340963          	beq	s0,s3,ffffffffc02084e6 <vfs_set_curdir+0xa0>
ffffffffc0208478:	cc39                	beqz	s0,ffffffffc02084d6 <vfs_set_curdir+0x90>
ffffffffc020847a:	783c                	ld	a5,112(s0)
ffffffffc020847c:	c7bd                	beqz	a5,ffffffffc02084ea <vfs_set_curdir+0xa4>
ffffffffc020847e:	6bbc                	ld	a5,80(a5)
ffffffffc0208480:	c7ad                	beqz	a5,ffffffffc02084ea <vfs_set_curdir+0xa4>
ffffffffc0208482:	00006597          	auipc	a1,0x6
ffffffffc0208486:	63e58593          	addi	a1,a1,1598 # ffffffffc020eac0 <syscalls+0xdb0>
ffffffffc020848a:	8522                	mv	a0,s0
ffffffffc020848c:	d0aff0ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0208490:	783c                	ld	a5,112(s0)
ffffffffc0208492:	006c                	addi	a1,sp,12
ffffffffc0208494:	8522                	mv	a0,s0
ffffffffc0208496:	6bbc                	ld	a5,80(a5)
ffffffffc0208498:	9782                	jalr	a5
ffffffffc020849a:	84aa                	mv	s1,a0
ffffffffc020849c:	e901                	bnez	a0,ffffffffc02084ac <vfs_set_curdir+0x66>
ffffffffc020849e:	47b2                	lw	a5,12(sp)
ffffffffc02084a0:	669d                	lui	a3,0x7
ffffffffc02084a2:	6709                	lui	a4,0x2
ffffffffc02084a4:	8ff5                	and	a5,a5,a3
ffffffffc02084a6:	54b9                	li	s1,-18
ffffffffc02084a8:	02e78063          	beq	a5,a4,ffffffffc02084c8 <vfs_set_curdir+0x82>
ffffffffc02084ac:	00093783          	ld	a5,0(s2)
ffffffffc02084b0:	1487b503          	ld	a0,328(a5)
ffffffffc02084b4:	e3dfc0ef          	jal	ra,ffffffffc02052f0 <unlock_files>
ffffffffc02084b8:	70e2                	ld	ra,56(sp)
ffffffffc02084ba:	7442                	ld	s0,48(sp)
ffffffffc02084bc:	7902                	ld	s2,32(sp)
ffffffffc02084be:	69e2                	ld	s3,24(sp)
ffffffffc02084c0:	8526                	mv	a0,s1
ffffffffc02084c2:	74a2                	ld	s1,40(sp)
ffffffffc02084c4:	6121                	addi	sp,sp,64
ffffffffc02084c6:	8082                	ret
ffffffffc02084c8:	8522                	mv	a0,s0
ffffffffc02084ca:	cb4ff0ef          	jal	ra,ffffffffc020797e <inode_ref_inc>
ffffffffc02084ce:	00093783          	ld	a5,0(s2)
ffffffffc02084d2:	1487b503          	ld	a0,328(a5)
ffffffffc02084d6:	e100                	sd	s0,0(a0)
ffffffffc02084d8:	4481                	li	s1,0
ffffffffc02084da:	fc098de3          	beqz	s3,ffffffffc02084b4 <vfs_set_curdir+0x6e>
ffffffffc02084de:	854e                	mv	a0,s3
ffffffffc02084e0:	d6cff0ef          	jal	ra,ffffffffc0207a4c <inode_ref_dec>
ffffffffc02084e4:	b7e1                	j	ffffffffc02084ac <vfs_set_curdir+0x66>
ffffffffc02084e6:	4481                	li	s1,0
ffffffffc02084e8:	b7f1                	j	ffffffffc02084b4 <vfs_set_curdir+0x6e>
ffffffffc02084ea:	00006697          	auipc	a3,0x6
ffffffffc02084ee:	56e68693          	addi	a3,a3,1390 # ffffffffc020ea58 <syscalls+0xd48>
ffffffffc02084f2:	00003617          	auipc	a2,0x3
ffffffffc02084f6:	61e60613          	addi	a2,a2,1566 # ffffffffc020bb10 <commands+0x210>
ffffffffc02084fa:	04300593          	li	a1,67
ffffffffc02084fe:	00006517          	auipc	a0,0x6
ffffffffc0208502:	5aa50513          	addi	a0,a0,1450 # ffffffffc020eaa8 <syscalls+0xd98>
ffffffffc0208506:	f99f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020850a <vfs_chdir>:
ffffffffc020850a:	1101                	addi	sp,sp,-32
ffffffffc020850c:	002c                	addi	a1,sp,8
ffffffffc020850e:	e822                	sd	s0,16(sp)
ffffffffc0208510:	ec06                	sd	ra,24(sp)
ffffffffc0208512:	e43ff0ef          	jal	ra,ffffffffc0208354 <vfs_lookup>
ffffffffc0208516:	842a                	mv	s0,a0
ffffffffc0208518:	c511                	beqz	a0,ffffffffc0208524 <vfs_chdir+0x1a>
ffffffffc020851a:	60e2                	ld	ra,24(sp)
ffffffffc020851c:	8522                	mv	a0,s0
ffffffffc020851e:	6442                	ld	s0,16(sp)
ffffffffc0208520:	6105                	addi	sp,sp,32
ffffffffc0208522:	8082                	ret
ffffffffc0208524:	6522                	ld	a0,8(sp)
ffffffffc0208526:	f21ff0ef          	jal	ra,ffffffffc0208446 <vfs_set_curdir>
ffffffffc020852a:	842a                	mv	s0,a0
ffffffffc020852c:	6522                	ld	a0,8(sp)
ffffffffc020852e:	d1eff0ef          	jal	ra,ffffffffc0207a4c <inode_ref_dec>
ffffffffc0208532:	60e2                	ld	ra,24(sp)
ffffffffc0208534:	8522                	mv	a0,s0
ffffffffc0208536:	6442                	ld	s0,16(sp)
ffffffffc0208538:	6105                	addi	sp,sp,32
ffffffffc020853a:	8082                	ret

ffffffffc020853c <vfs_getcwd>:
ffffffffc020853c:	0008e797          	auipc	a5,0x8e
ffffffffc0208540:	3847b783          	ld	a5,900(a5) # ffffffffc02968c0 <current>
ffffffffc0208544:	1487b783          	ld	a5,328(a5)
ffffffffc0208548:	7179                	addi	sp,sp,-48
ffffffffc020854a:	ec26                	sd	s1,24(sp)
ffffffffc020854c:	6384                	ld	s1,0(a5)
ffffffffc020854e:	f406                	sd	ra,40(sp)
ffffffffc0208550:	f022                	sd	s0,32(sp)
ffffffffc0208552:	e84a                	sd	s2,16(sp)
ffffffffc0208554:	ccbd                	beqz	s1,ffffffffc02085d2 <vfs_getcwd+0x96>
ffffffffc0208556:	892a                	mv	s2,a0
ffffffffc0208558:	8526                	mv	a0,s1
ffffffffc020855a:	c24ff0ef          	jal	ra,ffffffffc020797e <inode_ref_inc>
ffffffffc020855e:	74a8                	ld	a0,104(s1)
ffffffffc0208560:	c93d                	beqz	a0,ffffffffc02085d6 <vfs_getcwd+0x9a>
ffffffffc0208562:	9b3ff0ef          	jal	ra,ffffffffc0207f14 <vfs_get_devname>
ffffffffc0208566:	842a                	mv	s0,a0
ffffffffc0208568:	024030ef          	jal	ra,ffffffffc020b58c <strlen>
ffffffffc020856c:	862a                	mv	a2,a0
ffffffffc020856e:	85a2                	mv	a1,s0
ffffffffc0208570:	4701                	li	a4,0
ffffffffc0208572:	4685                	li	a3,1
ffffffffc0208574:	854a                	mv	a0,s2
ffffffffc0208576:	f9ffc0ef          	jal	ra,ffffffffc0205514 <iobuf_move>
ffffffffc020857a:	842a                	mv	s0,a0
ffffffffc020857c:	c919                	beqz	a0,ffffffffc0208592 <vfs_getcwd+0x56>
ffffffffc020857e:	8526                	mv	a0,s1
ffffffffc0208580:	cccff0ef          	jal	ra,ffffffffc0207a4c <inode_ref_dec>
ffffffffc0208584:	70a2                	ld	ra,40(sp)
ffffffffc0208586:	8522                	mv	a0,s0
ffffffffc0208588:	7402                	ld	s0,32(sp)
ffffffffc020858a:	64e2                	ld	s1,24(sp)
ffffffffc020858c:	6942                	ld	s2,16(sp)
ffffffffc020858e:	6145                	addi	sp,sp,48
ffffffffc0208590:	8082                	ret
ffffffffc0208592:	03a00793          	li	a5,58
ffffffffc0208596:	4701                	li	a4,0
ffffffffc0208598:	4685                	li	a3,1
ffffffffc020859a:	4605                	li	a2,1
ffffffffc020859c:	00f10593          	addi	a1,sp,15
ffffffffc02085a0:	854a                	mv	a0,s2
ffffffffc02085a2:	00f107a3          	sb	a5,15(sp)
ffffffffc02085a6:	f6ffc0ef          	jal	ra,ffffffffc0205514 <iobuf_move>
ffffffffc02085aa:	842a                	mv	s0,a0
ffffffffc02085ac:	f969                	bnez	a0,ffffffffc020857e <vfs_getcwd+0x42>
ffffffffc02085ae:	78bc                	ld	a5,112(s1)
ffffffffc02085b0:	c3b9                	beqz	a5,ffffffffc02085f6 <vfs_getcwd+0xba>
ffffffffc02085b2:	7f9c                	ld	a5,56(a5)
ffffffffc02085b4:	c3a9                	beqz	a5,ffffffffc02085f6 <vfs_getcwd+0xba>
ffffffffc02085b6:	00006597          	auipc	a1,0x6
ffffffffc02085ba:	56a58593          	addi	a1,a1,1386 # ffffffffc020eb20 <syscalls+0xe10>
ffffffffc02085be:	8526                	mv	a0,s1
ffffffffc02085c0:	bd6ff0ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc02085c4:	78bc                	ld	a5,112(s1)
ffffffffc02085c6:	85ca                	mv	a1,s2
ffffffffc02085c8:	8526                	mv	a0,s1
ffffffffc02085ca:	7f9c                	ld	a5,56(a5)
ffffffffc02085cc:	9782                	jalr	a5
ffffffffc02085ce:	842a                	mv	s0,a0
ffffffffc02085d0:	b77d                	j	ffffffffc020857e <vfs_getcwd+0x42>
ffffffffc02085d2:	5441                	li	s0,-16
ffffffffc02085d4:	bf45                	j	ffffffffc0208584 <vfs_getcwd+0x48>
ffffffffc02085d6:	00006697          	auipc	a3,0x6
ffffffffc02085da:	41268693          	addi	a3,a3,1042 # ffffffffc020e9e8 <syscalls+0xcd8>
ffffffffc02085de:	00003617          	auipc	a2,0x3
ffffffffc02085e2:	53260613          	addi	a2,a2,1330 # ffffffffc020bb10 <commands+0x210>
ffffffffc02085e6:	06e00593          	li	a1,110
ffffffffc02085ea:	00006517          	auipc	a0,0x6
ffffffffc02085ee:	4be50513          	addi	a0,a0,1214 # ffffffffc020eaa8 <syscalls+0xd98>
ffffffffc02085f2:	eadf70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02085f6:	00006697          	auipc	a3,0x6
ffffffffc02085fa:	4d268693          	addi	a3,a3,1234 # ffffffffc020eac8 <syscalls+0xdb8>
ffffffffc02085fe:	00003617          	auipc	a2,0x3
ffffffffc0208602:	51260613          	addi	a2,a2,1298 # ffffffffc020bb10 <commands+0x210>
ffffffffc0208606:	07800593          	li	a1,120
ffffffffc020860a:	00006517          	auipc	a0,0x6
ffffffffc020860e:	49e50513          	addi	a0,a0,1182 # ffffffffc020eaa8 <syscalls+0xd98>
ffffffffc0208612:	e8df70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208616 <dev_lookup>:
ffffffffc0208616:	0005c783          	lbu	a5,0(a1)
ffffffffc020861a:	e385                	bnez	a5,ffffffffc020863a <dev_lookup+0x24>
ffffffffc020861c:	1101                	addi	sp,sp,-32
ffffffffc020861e:	e822                	sd	s0,16(sp)
ffffffffc0208620:	e426                	sd	s1,8(sp)
ffffffffc0208622:	ec06                	sd	ra,24(sp)
ffffffffc0208624:	84aa                	mv	s1,a0
ffffffffc0208626:	8432                	mv	s0,a2
ffffffffc0208628:	b56ff0ef          	jal	ra,ffffffffc020797e <inode_ref_inc>
ffffffffc020862c:	60e2                	ld	ra,24(sp)
ffffffffc020862e:	e004                	sd	s1,0(s0)
ffffffffc0208630:	6442                	ld	s0,16(sp)
ffffffffc0208632:	64a2                	ld	s1,8(sp)
ffffffffc0208634:	4501                	li	a0,0
ffffffffc0208636:	6105                	addi	sp,sp,32
ffffffffc0208638:	8082                	ret
ffffffffc020863a:	5541                	li	a0,-16
ffffffffc020863c:	8082                	ret

ffffffffc020863e <dev_fstat>:
ffffffffc020863e:	1101                	addi	sp,sp,-32
ffffffffc0208640:	e426                	sd	s1,8(sp)
ffffffffc0208642:	84ae                	mv	s1,a1
ffffffffc0208644:	e822                	sd	s0,16(sp)
ffffffffc0208646:	02000613          	li	a2,32
ffffffffc020864a:	842a                	mv	s0,a0
ffffffffc020864c:	4581                	li	a1,0
ffffffffc020864e:	8526                	mv	a0,s1
ffffffffc0208650:	ec06                	sd	ra,24(sp)
ffffffffc0208652:	7dd020ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc0208656:	c429                	beqz	s0,ffffffffc02086a0 <dev_fstat+0x62>
ffffffffc0208658:	783c                	ld	a5,112(s0)
ffffffffc020865a:	c3b9                	beqz	a5,ffffffffc02086a0 <dev_fstat+0x62>
ffffffffc020865c:	6bbc                	ld	a5,80(a5)
ffffffffc020865e:	c3a9                	beqz	a5,ffffffffc02086a0 <dev_fstat+0x62>
ffffffffc0208660:	00006597          	auipc	a1,0x6
ffffffffc0208664:	46058593          	addi	a1,a1,1120 # ffffffffc020eac0 <syscalls+0xdb0>
ffffffffc0208668:	8522                	mv	a0,s0
ffffffffc020866a:	b2cff0ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc020866e:	783c                	ld	a5,112(s0)
ffffffffc0208670:	85a6                	mv	a1,s1
ffffffffc0208672:	8522                	mv	a0,s0
ffffffffc0208674:	6bbc                	ld	a5,80(a5)
ffffffffc0208676:	9782                	jalr	a5
ffffffffc0208678:	ed19                	bnez	a0,ffffffffc0208696 <dev_fstat+0x58>
ffffffffc020867a:	4c38                	lw	a4,88(s0)
ffffffffc020867c:	6785                	lui	a5,0x1
ffffffffc020867e:	23478793          	addi	a5,a5,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0208682:	02f71f63          	bne	a4,a5,ffffffffc02086c0 <dev_fstat+0x82>
ffffffffc0208686:	6018                	ld	a4,0(s0)
ffffffffc0208688:	641c                	ld	a5,8(s0)
ffffffffc020868a:	4685                	li	a3,1
ffffffffc020868c:	e494                	sd	a3,8(s1)
ffffffffc020868e:	02e787b3          	mul	a5,a5,a4
ffffffffc0208692:	e898                	sd	a4,16(s1)
ffffffffc0208694:	ec9c                	sd	a5,24(s1)
ffffffffc0208696:	60e2                	ld	ra,24(sp)
ffffffffc0208698:	6442                	ld	s0,16(sp)
ffffffffc020869a:	64a2                	ld	s1,8(sp)
ffffffffc020869c:	6105                	addi	sp,sp,32
ffffffffc020869e:	8082                	ret
ffffffffc02086a0:	00006697          	auipc	a3,0x6
ffffffffc02086a4:	3b868693          	addi	a3,a3,952 # ffffffffc020ea58 <syscalls+0xd48>
ffffffffc02086a8:	00003617          	auipc	a2,0x3
ffffffffc02086ac:	46860613          	addi	a2,a2,1128 # ffffffffc020bb10 <commands+0x210>
ffffffffc02086b0:	04200593          	li	a1,66
ffffffffc02086b4:	00006517          	auipc	a0,0x6
ffffffffc02086b8:	47c50513          	addi	a0,a0,1148 # ffffffffc020eb30 <syscalls+0xe20>
ffffffffc02086bc:	de3f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02086c0:	00006697          	auipc	a3,0x6
ffffffffc02086c4:	16068693          	addi	a3,a3,352 # ffffffffc020e820 <syscalls+0xb10>
ffffffffc02086c8:	00003617          	auipc	a2,0x3
ffffffffc02086cc:	44860613          	addi	a2,a2,1096 # ffffffffc020bb10 <commands+0x210>
ffffffffc02086d0:	04500593          	li	a1,69
ffffffffc02086d4:	00006517          	auipc	a0,0x6
ffffffffc02086d8:	45c50513          	addi	a0,a0,1116 # ffffffffc020eb30 <syscalls+0xe20>
ffffffffc02086dc:	dc3f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02086e0 <dev_ioctl>:
ffffffffc02086e0:	c909                	beqz	a0,ffffffffc02086f2 <dev_ioctl+0x12>
ffffffffc02086e2:	4d34                	lw	a3,88(a0)
ffffffffc02086e4:	6705                	lui	a4,0x1
ffffffffc02086e6:	23470713          	addi	a4,a4,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc02086ea:	00e69463          	bne	a3,a4,ffffffffc02086f2 <dev_ioctl+0x12>
ffffffffc02086ee:	751c                	ld	a5,40(a0)
ffffffffc02086f0:	8782                	jr	a5
ffffffffc02086f2:	1141                	addi	sp,sp,-16
ffffffffc02086f4:	00006697          	auipc	a3,0x6
ffffffffc02086f8:	12c68693          	addi	a3,a3,300 # ffffffffc020e820 <syscalls+0xb10>
ffffffffc02086fc:	00003617          	auipc	a2,0x3
ffffffffc0208700:	41460613          	addi	a2,a2,1044 # ffffffffc020bb10 <commands+0x210>
ffffffffc0208704:	03500593          	li	a1,53
ffffffffc0208708:	00006517          	auipc	a0,0x6
ffffffffc020870c:	42850513          	addi	a0,a0,1064 # ffffffffc020eb30 <syscalls+0xe20>
ffffffffc0208710:	e406                	sd	ra,8(sp)
ffffffffc0208712:	d8df70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208716 <dev_tryseek>:
ffffffffc0208716:	c51d                	beqz	a0,ffffffffc0208744 <dev_tryseek+0x2e>
ffffffffc0208718:	4d38                	lw	a4,88(a0)
ffffffffc020871a:	6785                	lui	a5,0x1
ffffffffc020871c:	23478793          	addi	a5,a5,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0208720:	02f71263          	bne	a4,a5,ffffffffc0208744 <dev_tryseek+0x2e>
ffffffffc0208724:	611c                	ld	a5,0(a0)
ffffffffc0208726:	cf89                	beqz	a5,ffffffffc0208740 <dev_tryseek+0x2a>
ffffffffc0208728:	6518                	ld	a4,8(a0)
ffffffffc020872a:	02e5f6b3          	remu	a3,a1,a4
ffffffffc020872e:	ea89                	bnez	a3,ffffffffc0208740 <dev_tryseek+0x2a>
ffffffffc0208730:	0005c863          	bltz	a1,ffffffffc0208740 <dev_tryseek+0x2a>
ffffffffc0208734:	02e787b3          	mul	a5,a5,a4
ffffffffc0208738:	00f5f463          	bgeu	a1,a5,ffffffffc0208740 <dev_tryseek+0x2a>
ffffffffc020873c:	4501                	li	a0,0
ffffffffc020873e:	8082                	ret
ffffffffc0208740:	5575                	li	a0,-3
ffffffffc0208742:	8082                	ret
ffffffffc0208744:	1141                	addi	sp,sp,-16
ffffffffc0208746:	00006697          	auipc	a3,0x6
ffffffffc020874a:	0da68693          	addi	a3,a3,218 # ffffffffc020e820 <syscalls+0xb10>
ffffffffc020874e:	00003617          	auipc	a2,0x3
ffffffffc0208752:	3c260613          	addi	a2,a2,962 # ffffffffc020bb10 <commands+0x210>
ffffffffc0208756:	05f00593          	li	a1,95
ffffffffc020875a:	00006517          	auipc	a0,0x6
ffffffffc020875e:	3d650513          	addi	a0,a0,982 # ffffffffc020eb30 <syscalls+0xe20>
ffffffffc0208762:	e406                	sd	ra,8(sp)
ffffffffc0208764:	d3bf70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208768 <dev_gettype>:
ffffffffc0208768:	c10d                	beqz	a0,ffffffffc020878a <dev_gettype+0x22>
ffffffffc020876a:	4d38                	lw	a4,88(a0)
ffffffffc020876c:	6785                	lui	a5,0x1
ffffffffc020876e:	23478793          	addi	a5,a5,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0208772:	00f71c63          	bne	a4,a5,ffffffffc020878a <dev_gettype+0x22>
ffffffffc0208776:	6118                	ld	a4,0(a0)
ffffffffc0208778:	6795                	lui	a5,0x5
ffffffffc020877a:	c701                	beqz	a4,ffffffffc0208782 <dev_gettype+0x1a>
ffffffffc020877c:	c19c                	sw	a5,0(a1)
ffffffffc020877e:	4501                	li	a0,0
ffffffffc0208780:	8082                	ret
ffffffffc0208782:	6791                	lui	a5,0x4
ffffffffc0208784:	c19c                	sw	a5,0(a1)
ffffffffc0208786:	4501                	li	a0,0
ffffffffc0208788:	8082                	ret
ffffffffc020878a:	1141                	addi	sp,sp,-16
ffffffffc020878c:	00006697          	auipc	a3,0x6
ffffffffc0208790:	09468693          	addi	a3,a3,148 # ffffffffc020e820 <syscalls+0xb10>
ffffffffc0208794:	00003617          	auipc	a2,0x3
ffffffffc0208798:	37c60613          	addi	a2,a2,892 # ffffffffc020bb10 <commands+0x210>
ffffffffc020879c:	05300593          	li	a1,83
ffffffffc02087a0:	00006517          	auipc	a0,0x6
ffffffffc02087a4:	39050513          	addi	a0,a0,912 # ffffffffc020eb30 <syscalls+0xe20>
ffffffffc02087a8:	e406                	sd	ra,8(sp)
ffffffffc02087aa:	cf5f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02087ae <dev_write>:
ffffffffc02087ae:	c911                	beqz	a0,ffffffffc02087c2 <dev_write+0x14>
ffffffffc02087b0:	4d34                	lw	a3,88(a0)
ffffffffc02087b2:	6705                	lui	a4,0x1
ffffffffc02087b4:	23470713          	addi	a4,a4,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc02087b8:	00e69563          	bne	a3,a4,ffffffffc02087c2 <dev_write+0x14>
ffffffffc02087bc:	711c                	ld	a5,32(a0)
ffffffffc02087be:	4605                	li	a2,1
ffffffffc02087c0:	8782                	jr	a5
ffffffffc02087c2:	1141                	addi	sp,sp,-16
ffffffffc02087c4:	00006697          	auipc	a3,0x6
ffffffffc02087c8:	05c68693          	addi	a3,a3,92 # ffffffffc020e820 <syscalls+0xb10>
ffffffffc02087cc:	00003617          	auipc	a2,0x3
ffffffffc02087d0:	34460613          	addi	a2,a2,836 # ffffffffc020bb10 <commands+0x210>
ffffffffc02087d4:	02c00593          	li	a1,44
ffffffffc02087d8:	00006517          	auipc	a0,0x6
ffffffffc02087dc:	35850513          	addi	a0,a0,856 # ffffffffc020eb30 <syscalls+0xe20>
ffffffffc02087e0:	e406                	sd	ra,8(sp)
ffffffffc02087e2:	cbdf70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02087e6 <dev_read>:
ffffffffc02087e6:	c911                	beqz	a0,ffffffffc02087fa <dev_read+0x14>
ffffffffc02087e8:	4d34                	lw	a3,88(a0)
ffffffffc02087ea:	6705                	lui	a4,0x1
ffffffffc02087ec:	23470713          	addi	a4,a4,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc02087f0:	00e69563          	bne	a3,a4,ffffffffc02087fa <dev_read+0x14>
ffffffffc02087f4:	711c                	ld	a5,32(a0)
ffffffffc02087f6:	4601                	li	a2,0
ffffffffc02087f8:	8782                	jr	a5
ffffffffc02087fa:	1141                	addi	sp,sp,-16
ffffffffc02087fc:	00006697          	auipc	a3,0x6
ffffffffc0208800:	02468693          	addi	a3,a3,36 # ffffffffc020e820 <syscalls+0xb10>
ffffffffc0208804:	00003617          	auipc	a2,0x3
ffffffffc0208808:	30c60613          	addi	a2,a2,780 # ffffffffc020bb10 <commands+0x210>
ffffffffc020880c:	02300593          	li	a1,35
ffffffffc0208810:	00006517          	auipc	a0,0x6
ffffffffc0208814:	32050513          	addi	a0,a0,800 # ffffffffc020eb30 <syscalls+0xe20>
ffffffffc0208818:	e406                	sd	ra,8(sp)
ffffffffc020881a:	c85f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020881e <dev_close>:
ffffffffc020881e:	c909                	beqz	a0,ffffffffc0208830 <dev_close+0x12>
ffffffffc0208820:	4d34                	lw	a3,88(a0)
ffffffffc0208822:	6705                	lui	a4,0x1
ffffffffc0208824:	23470713          	addi	a4,a4,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0208828:	00e69463          	bne	a3,a4,ffffffffc0208830 <dev_close+0x12>
ffffffffc020882c:	6d1c                	ld	a5,24(a0)
ffffffffc020882e:	8782                	jr	a5
ffffffffc0208830:	1141                	addi	sp,sp,-16
ffffffffc0208832:	00006697          	auipc	a3,0x6
ffffffffc0208836:	fee68693          	addi	a3,a3,-18 # ffffffffc020e820 <syscalls+0xb10>
ffffffffc020883a:	00003617          	auipc	a2,0x3
ffffffffc020883e:	2d660613          	addi	a2,a2,726 # ffffffffc020bb10 <commands+0x210>
ffffffffc0208842:	45e9                	li	a1,26
ffffffffc0208844:	00006517          	auipc	a0,0x6
ffffffffc0208848:	2ec50513          	addi	a0,a0,748 # ffffffffc020eb30 <syscalls+0xe20>
ffffffffc020884c:	e406                	sd	ra,8(sp)
ffffffffc020884e:	c51f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208852 <dev_open>:
ffffffffc0208852:	03c5f713          	andi	a4,a1,60
ffffffffc0208856:	eb11                	bnez	a4,ffffffffc020886a <dev_open+0x18>
ffffffffc0208858:	c919                	beqz	a0,ffffffffc020886e <dev_open+0x1c>
ffffffffc020885a:	4d34                	lw	a3,88(a0)
ffffffffc020885c:	6705                	lui	a4,0x1
ffffffffc020885e:	23470713          	addi	a4,a4,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0208862:	00e69663          	bne	a3,a4,ffffffffc020886e <dev_open+0x1c>
ffffffffc0208866:	691c                	ld	a5,16(a0)
ffffffffc0208868:	8782                	jr	a5
ffffffffc020886a:	5575                	li	a0,-3
ffffffffc020886c:	8082                	ret
ffffffffc020886e:	1141                	addi	sp,sp,-16
ffffffffc0208870:	00006697          	auipc	a3,0x6
ffffffffc0208874:	fb068693          	addi	a3,a3,-80 # ffffffffc020e820 <syscalls+0xb10>
ffffffffc0208878:	00003617          	auipc	a2,0x3
ffffffffc020887c:	29860613          	addi	a2,a2,664 # ffffffffc020bb10 <commands+0x210>
ffffffffc0208880:	45c5                	li	a1,17
ffffffffc0208882:	00006517          	auipc	a0,0x6
ffffffffc0208886:	2ae50513          	addi	a0,a0,686 # ffffffffc020eb30 <syscalls+0xe20>
ffffffffc020888a:	e406                	sd	ra,8(sp)
ffffffffc020888c:	c13f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208890 <dev_init>:
ffffffffc0208890:	1141                	addi	sp,sp,-16
ffffffffc0208892:	e406                	sd	ra,8(sp)
ffffffffc0208894:	542000ef          	jal	ra,ffffffffc0208dd6 <dev_init_stdin>
ffffffffc0208898:	65a000ef          	jal	ra,ffffffffc0208ef2 <dev_init_stdout>
ffffffffc020889c:	60a2                	ld	ra,8(sp)
ffffffffc020889e:	0141                	addi	sp,sp,16
ffffffffc02088a0:	a439                	j	ffffffffc0208aae <dev_init_disk0>

ffffffffc02088a2 <dev_create_inode>:
ffffffffc02088a2:	6505                	lui	a0,0x1
ffffffffc02088a4:	1141                	addi	sp,sp,-16
ffffffffc02088a6:	23450513          	addi	a0,a0,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc02088aa:	e022                	sd	s0,0(sp)
ffffffffc02088ac:	e406                	sd	ra,8(sp)
ffffffffc02088ae:	852ff0ef          	jal	ra,ffffffffc0207900 <__alloc_inode>
ffffffffc02088b2:	842a                	mv	s0,a0
ffffffffc02088b4:	c901                	beqz	a0,ffffffffc02088c4 <dev_create_inode+0x22>
ffffffffc02088b6:	4601                	li	a2,0
ffffffffc02088b8:	00006597          	auipc	a1,0x6
ffffffffc02088bc:	29058593          	addi	a1,a1,656 # ffffffffc020eb48 <dev_node_ops>
ffffffffc02088c0:	85cff0ef          	jal	ra,ffffffffc020791c <inode_init>
ffffffffc02088c4:	60a2                	ld	ra,8(sp)
ffffffffc02088c6:	8522                	mv	a0,s0
ffffffffc02088c8:	6402                	ld	s0,0(sp)
ffffffffc02088ca:	0141                	addi	sp,sp,16
ffffffffc02088cc:	8082                	ret

ffffffffc02088ce <disk0_open>:
ffffffffc02088ce:	4501                	li	a0,0
ffffffffc02088d0:	8082                	ret

ffffffffc02088d2 <disk0_close>:
ffffffffc02088d2:	4501                	li	a0,0
ffffffffc02088d4:	8082                	ret

ffffffffc02088d6 <disk0_ioctl>:
ffffffffc02088d6:	5531                	li	a0,-20
ffffffffc02088d8:	8082                	ret

ffffffffc02088da <disk0_io>:
ffffffffc02088da:	659c                	ld	a5,8(a1)
ffffffffc02088dc:	7159                	addi	sp,sp,-112
ffffffffc02088de:	eca6                	sd	s1,88(sp)
ffffffffc02088e0:	f45e                	sd	s7,40(sp)
ffffffffc02088e2:	6d84                	ld	s1,24(a1)
ffffffffc02088e4:	6b85                	lui	s7,0x1
ffffffffc02088e6:	1bfd                	addi	s7,s7,-1
ffffffffc02088e8:	e4ce                	sd	s3,72(sp)
ffffffffc02088ea:	43f7d993          	srai	s3,a5,0x3f
ffffffffc02088ee:	0179f9b3          	and	s3,s3,s7
ffffffffc02088f2:	99be                	add	s3,s3,a5
ffffffffc02088f4:	8fc5                	or	a5,a5,s1
ffffffffc02088f6:	f486                	sd	ra,104(sp)
ffffffffc02088f8:	f0a2                	sd	s0,96(sp)
ffffffffc02088fa:	e8ca                	sd	s2,80(sp)
ffffffffc02088fc:	e0d2                	sd	s4,64(sp)
ffffffffc02088fe:	fc56                	sd	s5,56(sp)
ffffffffc0208900:	f85a                	sd	s6,48(sp)
ffffffffc0208902:	f062                	sd	s8,32(sp)
ffffffffc0208904:	ec66                	sd	s9,24(sp)
ffffffffc0208906:	e86a                	sd	s10,16(sp)
ffffffffc0208908:	0177f7b3          	and	a5,a5,s7
ffffffffc020890c:	10079d63          	bnez	a5,ffffffffc0208a26 <disk0_io+0x14c>
ffffffffc0208910:	40c9d993          	srai	s3,s3,0xc
ffffffffc0208914:	00c4d713          	srli	a4,s1,0xc
ffffffffc0208918:	2981                	sext.w	s3,s3
ffffffffc020891a:	2701                	sext.w	a4,a4
ffffffffc020891c:	00e987bb          	addw	a5,s3,a4
ffffffffc0208920:	6114                	ld	a3,0(a0)
ffffffffc0208922:	1782                	slli	a5,a5,0x20
ffffffffc0208924:	9381                	srli	a5,a5,0x20
ffffffffc0208926:	10f6e063          	bltu	a3,a5,ffffffffc0208a26 <disk0_io+0x14c>
ffffffffc020892a:	4501                	li	a0,0
ffffffffc020892c:	ef19                	bnez	a4,ffffffffc020894a <disk0_io+0x70>
ffffffffc020892e:	70a6                	ld	ra,104(sp)
ffffffffc0208930:	7406                	ld	s0,96(sp)
ffffffffc0208932:	64e6                	ld	s1,88(sp)
ffffffffc0208934:	6946                	ld	s2,80(sp)
ffffffffc0208936:	69a6                	ld	s3,72(sp)
ffffffffc0208938:	6a06                	ld	s4,64(sp)
ffffffffc020893a:	7ae2                	ld	s5,56(sp)
ffffffffc020893c:	7b42                	ld	s6,48(sp)
ffffffffc020893e:	7ba2                	ld	s7,40(sp)
ffffffffc0208940:	7c02                	ld	s8,32(sp)
ffffffffc0208942:	6ce2                	ld	s9,24(sp)
ffffffffc0208944:	6d42                	ld	s10,16(sp)
ffffffffc0208946:	6165                	addi	sp,sp,112
ffffffffc0208948:	8082                	ret
ffffffffc020894a:	0008d517          	auipc	a0,0x8d
ffffffffc020894e:	ef650513          	addi	a0,a0,-266 # ffffffffc0295840 <disk0_sem>
ffffffffc0208952:	8b2e                	mv	s6,a1
ffffffffc0208954:	8c32                	mv	s8,a2
ffffffffc0208956:	0008ea97          	auipc	s5,0x8e
ffffffffc020895a:	fa2a8a93          	addi	s5,s5,-94 # ffffffffc02968f8 <disk0_buffer>
ffffffffc020895e:	d2ffb0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc0208962:	6c91                	lui	s9,0x4
ffffffffc0208964:	e4b9                	bnez	s1,ffffffffc02089b2 <disk0_io+0xd8>
ffffffffc0208966:	a845                	j	ffffffffc0208a16 <disk0_io+0x13c>
ffffffffc0208968:	00c4d413          	srli	s0,s1,0xc
ffffffffc020896c:	0034169b          	slliw	a3,s0,0x3
ffffffffc0208970:	00068d1b          	sext.w	s10,a3
ffffffffc0208974:	1682                	slli	a3,a3,0x20
ffffffffc0208976:	2401                	sext.w	s0,s0
ffffffffc0208978:	9281                	srli	a3,a3,0x20
ffffffffc020897a:	8926                	mv	s2,s1
ffffffffc020897c:	00399a1b          	slliw	s4,s3,0x3
ffffffffc0208980:	862e                	mv	a2,a1
ffffffffc0208982:	4509                	li	a0,2
ffffffffc0208984:	85d2                	mv	a1,s4
ffffffffc0208986:	9baf80ef          	jal	ra,ffffffffc0200b40 <ide_read_secs>
ffffffffc020898a:	e165                	bnez	a0,ffffffffc0208a6a <disk0_io+0x190>
ffffffffc020898c:	000ab583          	ld	a1,0(s5)
ffffffffc0208990:	0038                	addi	a4,sp,8
ffffffffc0208992:	4685                	li	a3,1
ffffffffc0208994:	864a                	mv	a2,s2
ffffffffc0208996:	855a                	mv	a0,s6
ffffffffc0208998:	b7dfc0ef          	jal	ra,ffffffffc0205514 <iobuf_move>
ffffffffc020899c:	67a2                	ld	a5,8(sp)
ffffffffc020899e:	09279663          	bne	a5,s2,ffffffffc0208a2a <disk0_io+0x150>
ffffffffc02089a2:	017977b3          	and	a5,s2,s7
ffffffffc02089a6:	e3d1                	bnez	a5,ffffffffc0208a2a <disk0_io+0x150>
ffffffffc02089a8:	412484b3          	sub	s1,s1,s2
ffffffffc02089ac:	013409bb          	addw	s3,s0,s3
ffffffffc02089b0:	c0bd                	beqz	s1,ffffffffc0208a16 <disk0_io+0x13c>
ffffffffc02089b2:	000ab583          	ld	a1,0(s5)
ffffffffc02089b6:	000c1b63          	bnez	s8,ffffffffc02089cc <disk0_io+0xf2>
ffffffffc02089ba:	fb94e7e3          	bltu	s1,s9,ffffffffc0208968 <disk0_io+0x8e>
ffffffffc02089be:	02000693          	li	a3,32
ffffffffc02089c2:	02000d13          	li	s10,32
ffffffffc02089c6:	4411                	li	s0,4
ffffffffc02089c8:	6911                	lui	s2,0x4
ffffffffc02089ca:	bf4d                	j	ffffffffc020897c <disk0_io+0xa2>
ffffffffc02089cc:	0038                	addi	a4,sp,8
ffffffffc02089ce:	4681                	li	a3,0
ffffffffc02089d0:	6611                	lui	a2,0x4
ffffffffc02089d2:	855a                	mv	a0,s6
ffffffffc02089d4:	b41fc0ef          	jal	ra,ffffffffc0205514 <iobuf_move>
ffffffffc02089d8:	6422                	ld	s0,8(sp)
ffffffffc02089da:	c825                	beqz	s0,ffffffffc0208a4a <disk0_io+0x170>
ffffffffc02089dc:	0684e763          	bltu	s1,s0,ffffffffc0208a4a <disk0_io+0x170>
ffffffffc02089e0:	017477b3          	and	a5,s0,s7
ffffffffc02089e4:	e3bd                	bnez	a5,ffffffffc0208a4a <disk0_io+0x170>
ffffffffc02089e6:	8031                	srli	s0,s0,0xc
ffffffffc02089e8:	0034179b          	slliw	a5,s0,0x3
ffffffffc02089ec:	000ab603          	ld	a2,0(s5)
ffffffffc02089f0:	0039991b          	slliw	s2,s3,0x3
ffffffffc02089f4:	02079693          	slli	a3,a5,0x20
ffffffffc02089f8:	9281                	srli	a3,a3,0x20
ffffffffc02089fa:	85ca                	mv	a1,s2
ffffffffc02089fc:	4509                	li	a0,2
ffffffffc02089fe:	2401                	sext.w	s0,s0
ffffffffc0208a00:	00078a1b          	sext.w	s4,a5
ffffffffc0208a04:	9d2f80ef          	jal	ra,ffffffffc0200bd6 <ide_write_secs>
ffffffffc0208a08:	e151                	bnez	a0,ffffffffc0208a8c <disk0_io+0x1b2>
ffffffffc0208a0a:	6922                	ld	s2,8(sp)
ffffffffc0208a0c:	013409bb          	addw	s3,s0,s3
ffffffffc0208a10:	412484b3          	sub	s1,s1,s2
ffffffffc0208a14:	fcd9                	bnez	s1,ffffffffc02089b2 <disk0_io+0xd8>
ffffffffc0208a16:	0008d517          	auipc	a0,0x8d
ffffffffc0208a1a:	e2a50513          	addi	a0,a0,-470 # ffffffffc0295840 <disk0_sem>
ffffffffc0208a1e:	c6bfb0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc0208a22:	4501                	li	a0,0
ffffffffc0208a24:	b729                	j	ffffffffc020892e <disk0_io+0x54>
ffffffffc0208a26:	5575                	li	a0,-3
ffffffffc0208a28:	b719                	j	ffffffffc020892e <disk0_io+0x54>
ffffffffc0208a2a:	00006697          	auipc	a3,0x6
ffffffffc0208a2e:	29668693          	addi	a3,a3,662 # ffffffffc020ecc0 <dev_node_ops+0x178>
ffffffffc0208a32:	00003617          	auipc	a2,0x3
ffffffffc0208a36:	0de60613          	addi	a2,a2,222 # ffffffffc020bb10 <commands+0x210>
ffffffffc0208a3a:	06200593          	li	a1,98
ffffffffc0208a3e:	00006517          	auipc	a0,0x6
ffffffffc0208a42:	1ca50513          	addi	a0,a0,458 # ffffffffc020ec08 <dev_node_ops+0xc0>
ffffffffc0208a46:	a59f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208a4a:	00006697          	auipc	a3,0x6
ffffffffc0208a4e:	17e68693          	addi	a3,a3,382 # ffffffffc020ebc8 <dev_node_ops+0x80>
ffffffffc0208a52:	00003617          	auipc	a2,0x3
ffffffffc0208a56:	0be60613          	addi	a2,a2,190 # ffffffffc020bb10 <commands+0x210>
ffffffffc0208a5a:	05700593          	li	a1,87
ffffffffc0208a5e:	00006517          	auipc	a0,0x6
ffffffffc0208a62:	1aa50513          	addi	a0,a0,426 # ffffffffc020ec08 <dev_node_ops+0xc0>
ffffffffc0208a66:	a39f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208a6a:	88aa                	mv	a7,a0
ffffffffc0208a6c:	886a                	mv	a6,s10
ffffffffc0208a6e:	87a2                	mv	a5,s0
ffffffffc0208a70:	8752                	mv	a4,s4
ffffffffc0208a72:	86ce                	mv	a3,s3
ffffffffc0208a74:	00006617          	auipc	a2,0x6
ffffffffc0208a78:	20460613          	addi	a2,a2,516 # ffffffffc020ec78 <dev_node_ops+0x130>
ffffffffc0208a7c:	02d00593          	li	a1,45
ffffffffc0208a80:	00006517          	auipc	a0,0x6
ffffffffc0208a84:	18850513          	addi	a0,a0,392 # ffffffffc020ec08 <dev_node_ops+0xc0>
ffffffffc0208a88:	a17f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208a8c:	88aa                	mv	a7,a0
ffffffffc0208a8e:	8852                	mv	a6,s4
ffffffffc0208a90:	87a2                	mv	a5,s0
ffffffffc0208a92:	874a                	mv	a4,s2
ffffffffc0208a94:	86ce                	mv	a3,s3
ffffffffc0208a96:	00006617          	auipc	a2,0x6
ffffffffc0208a9a:	19260613          	addi	a2,a2,402 # ffffffffc020ec28 <dev_node_ops+0xe0>
ffffffffc0208a9e:	03700593          	li	a1,55
ffffffffc0208aa2:	00006517          	auipc	a0,0x6
ffffffffc0208aa6:	16650513          	addi	a0,a0,358 # ffffffffc020ec08 <dev_node_ops+0xc0>
ffffffffc0208aaa:	9f5f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208aae <dev_init_disk0>:
ffffffffc0208aae:	1101                	addi	sp,sp,-32
ffffffffc0208ab0:	ec06                	sd	ra,24(sp)
ffffffffc0208ab2:	e822                	sd	s0,16(sp)
ffffffffc0208ab4:	e426                	sd	s1,8(sp)
ffffffffc0208ab6:	dedff0ef          	jal	ra,ffffffffc02088a2 <dev_create_inode>
ffffffffc0208aba:	c541                	beqz	a0,ffffffffc0208b42 <dev_init_disk0+0x94>
ffffffffc0208abc:	4d38                	lw	a4,88(a0)
ffffffffc0208abe:	6485                	lui	s1,0x1
ffffffffc0208ac0:	23448793          	addi	a5,s1,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0208ac4:	842a                	mv	s0,a0
ffffffffc0208ac6:	0cf71f63          	bne	a4,a5,ffffffffc0208ba4 <dev_init_disk0+0xf6>
ffffffffc0208aca:	4509                	li	a0,2
ffffffffc0208acc:	828f80ef          	jal	ra,ffffffffc0200af4 <ide_device_valid>
ffffffffc0208ad0:	cd55                	beqz	a0,ffffffffc0208b8c <dev_init_disk0+0xde>
ffffffffc0208ad2:	4509                	li	a0,2
ffffffffc0208ad4:	844f80ef          	jal	ra,ffffffffc0200b18 <ide_device_size>
ffffffffc0208ad8:	00355793          	srli	a5,a0,0x3
ffffffffc0208adc:	e01c                	sd	a5,0(s0)
ffffffffc0208ade:	00000797          	auipc	a5,0x0
ffffffffc0208ae2:	df078793          	addi	a5,a5,-528 # ffffffffc02088ce <disk0_open>
ffffffffc0208ae6:	e81c                	sd	a5,16(s0)
ffffffffc0208ae8:	00000797          	auipc	a5,0x0
ffffffffc0208aec:	dea78793          	addi	a5,a5,-534 # ffffffffc02088d2 <disk0_close>
ffffffffc0208af0:	ec1c                	sd	a5,24(s0)
ffffffffc0208af2:	00000797          	auipc	a5,0x0
ffffffffc0208af6:	de878793          	addi	a5,a5,-536 # ffffffffc02088da <disk0_io>
ffffffffc0208afa:	f01c                	sd	a5,32(s0)
ffffffffc0208afc:	00000797          	auipc	a5,0x0
ffffffffc0208b00:	dda78793          	addi	a5,a5,-550 # ffffffffc02088d6 <disk0_ioctl>
ffffffffc0208b04:	f41c                	sd	a5,40(s0)
ffffffffc0208b06:	4585                	li	a1,1
ffffffffc0208b08:	0008d517          	auipc	a0,0x8d
ffffffffc0208b0c:	d3850513          	addi	a0,a0,-712 # ffffffffc0295840 <disk0_sem>
ffffffffc0208b10:	e404                	sd	s1,8(s0)
ffffffffc0208b12:	b71fb0ef          	jal	ra,ffffffffc0204682 <sem_init>
ffffffffc0208b16:	6511                	lui	a0,0x4
ffffffffc0208b18:	d92f90ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc0208b1c:	0008e797          	auipc	a5,0x8e
ffffffffc0208b20:	dca7be23          	sd	a0,-548(a5) # ffffffffc02968f8 <disk0_buffer>
ffffffffc0208b24:	c921                	beqz	a0,ffffffffc0208b74 <dev_init_disk0+0xc6>
ffffffffc0208b26:	4605                	li	a2,1
ffffffffc0208b28:	85a2                	mv	a1,s0
ffffffffc0208b2a:	00006517          	auipc	a0,0x6
ffffffffc0208b2e:	22650513          	addi	a0,a0,550 # ffffffffc020ed50 <dev_node_ops+0x208>
ffffffffc0208b32:	c2cff0ef          	jal	ra,ffffffffc0207f5e <vfs_add_dev>
ffffffffc0208b36:	e115                	bnez	a0,ffffffffc0208b5a <dev_init_disk0+0xac>
ffffffffc0208b38:	60e2                	ld	ra,24(sp)
ffffffffc0208b3a:	6442                	ld	s0,16(sp)
ffffffffc0208b3c:	64a2                	ld	s1,8(sp)
ffffffffc0208b3e:	6105                	addi	sp,sp,32
ffffffffc0208b40:	8082                	ret
ffffffffc0208b42:	00006617          	auipc	a2,0x6
ffffffffc0208b46:	1ae60613          	addi	a2,a2,430 # ffffffffc020ecf0 <dev_node_ops+0x1a8>
ffffffffc0208b4a:	08700593          	li	a1,135
ffffffffc0208b4e:	00006517          	auipc	a0,0x6
ffffffffc0208b52:	0ba50513          	addi	a0,a0,186 # ffffffffc020ec08 <dev_node_ops+0xc0>
ffffffffc0208b56:	949f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208b5a:	86aa                	mv	a3,a0
ffffffffc0208b5c:	00006617          	auipc	a2,0x6
ffffffffc0208b60:	1fc60613          	addi	a2,a2,508 # ffffffffc020ed58 <dev_node_ops+0x210>
ffffffffc0208b64:	08d00593          	li	a1,141
ffffffffc0208b68:	00006517          	auipc	a0,0x6
ffffffffc0208b6c:	0a050513          	addi	a0,a0,160 # ffffffffc020ec08 <dev_node_ops+0xc0>
ffffffffc0208b70:	92ff70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208b74:	00006617          	auipc	a2,0x6
ffffffffc0208b78:	1bc60613          	addi	a2,a2,444 # ffffffffc020ed30 <dev_node_ops+0x1e8>
ffffffffc0208b7c:	07f00593          	li	a1,127
ffffffffc0208b80:	00006517          	auipc	a0,0x6
ffffffffc0208b84:	08850513          	addi	a0,a0,136 # ffffffffc020ec08 <dev_node_ops+0xc0>
ffffffffc0208b88:	917f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208b8c:	00006617          	auipc	a2,0x6
ffffffffc0208b90:	18460613          	addi	a2,a2,388 # ffffffffc020ed10 <dev_node_ops+0x1c8>
ffffffffc0208b94:	07300593          	li	a1,115
ffffffffc0208b98:	00006517          	auipc	a0,0x6
ffffffffc0208b9c:	07050513          	addi	a0,a0,112 # ffffffffc020ec08 <dev_node_ops+0xc0>
ffffffffc0208ba0:	8fff70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208ba4:	00006697          	auipc	a3,0x6
ffffffffc0208ba8:	c7c68693          	addi	a3,a3,-900 # ffffffffc020e820 <syscalls+0xb10>
ffffffffc0208bac:	00003617          	auipc	a2,0x3
ffffffffc0208bb0:	f6460613          	addi	a2,a2,-156 # ffffffffc020bb10 <commands+0x210>
ffffffffc0208bb4:	08900593          	li	a1,137
ffffffffc0208bb8:	00006517          	auipc	a0,0x6
ffffffffc0208bbc:	05050513          	addi	a0,a0,80 # ffffffffc020ec08 <dev_node_ops+0xc0>
ffffffffc0208bc0:	8dff70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208bc4 <stdin_open>:
ffffffffc0208bc4:	4501                	li	a0,0
ffffffffc0208bc6:	e191                	bnez	a1,ffffffffc0208bca <stdin_open+0x6>
ffffffffc0208bc8:	8082                	ret
ffffffffc0208bca:	5575                	li	a0,-3
ffffffffc0208bcc:	8082                	ret

ffffffffc0208bce <stdin_close>:
ffffffffc0208bce:	4501                	li	a0,0
ffffffffc0208bd0:	8082                	ret

ffffffffc0208bd2 <stdin_ioctl>:
ffffffffc0208bd2:	5575                	li	a0,-3
ffffffffc0208bd4:	8082                	ret

ffffffffc0208bd6 <stdin_io>:
ffffffffc0208bd6:	7135                	addi	sp,sp,-160
ffffffffc0208bd8:	ed06                	sd	ra,152(sp)
ffffffffc0208bda:	e922                	sd	s0,144(sp)
ffffffffc0208bdc:	e526                	sd	s1,136(sp)
ffffffffc0208bde:	e14a                	sd	s2,128(sp)
ffffffffc0208be0:	fcce                	sd	s3,120(sp)
ffffffffc0208be2:	f8d2                	sd	s4,112(sp)
ffffffffc0208be4:	f4d6                	sd	s5,104(sp)
ffffffffc0208be6:	f0da                	sd	s6,96(sp)
ffffffffc0208be8:	ecde                	sd	s7,88(sp)
ffffffffc0208bea:	e8e2                	sd	s8,80(sp)
ffffffffc0208bec:	e4e6                	sd	s9,72(sp)
ffffffffc0208bee:	e0ea                	sd	s10,64(sp)
ffffffffc0208bf0:	fc6e                	sd	s11,56(sp)
ffffffffc0208bf2:	14061163          	bnez	a2,ffffffffc0208d34 <stdin_io+0x15e>
ffffffffc0208bf6:	0005bd83          	ld	s11,0(a1)
ffffffffc0208bfa:	0185bd03          	ld	s10,24(a1)
ffffffffc0208bfe:	8b2e                	mv	s6,a1
ffffffffc0208c00:	100027f3          	csrr	a5,sstatus
ffffffffc0208c04:	8b89                	andi	a5,a5,2
ffffffffc0208c06:	10079e63          	bnez	a5,ffffffffc0208d22 <stdin_io+0x14c>
ffffffffc0208c0a:	4401                	li	s0,0
ffffffffc0208c0c:	100d0963          	beqz	s10,ffffffffc0208d1e <stdin_io+0x148>
ffffffffc0208c10:	0008e997          	auipc	s3,0x8e
ffffffffc0208c14:	cf098993          	addi	s3,s3,-784 # ffffffffc0296900 <p_rpos>
ffffffffc0208c18:	0009b783          	ld	a5,0(s3)
ffffffffc0208c1c:	800004b7          	lui	s1,0x80000
ffffffffc0208c20:	6c85                	lui	s9,0x1
ffffffffc0208c22:	4a81                	li	s5,0
ffffffffc0208c24:	0008ea17          	auipc	s4,0x8e
ffffffffc0208c28:	ce4a0a13          	addi	s4,s4,-796 # ffffffffc0296908 <p_wpos>
ffffffffc0208c2c:	0491                	addi	s1,s1,4
ffffffffc0208c2e:	0008d917          	auipc	s2,0x8d
ffffffffc0208c32:	c2a90913          	addi	s2,s2,-982 # ffffffffc0295858 <__wait_queue>
ffffffffc0208c36:	1cfd                	addi	s9,s9,-1
ffffffffc0208c38:	000a3703          	ld	a4,0(s4)
ffffffffc0208c3c:	000a8c1b          	sext.w	s8,s5
ffffffffc0208c40:	8be2                	mv	s7,s8
ffffffffc0208c42:	02e7d763          	bge	a5,a4,ffffffffc0208c70 <stdin_io+0x9a>
ffffffffc0208c46:	a859                	j	ffffffffc0208cdc <stdin_io+0x106>
ffffffffc0208c48:	815fe0ef          	jal	ra,ffffffffc020745c <schedule>
ffffffffc0208c4c:	100027f3          	csrr	a5,sstatus
ffffffffc0208c50:	8b89                	andi	a5,a5,2
ffffffffc0208c52:	4401                	li	s0,0
ffffffffc0208c54:	ef8d                	bnez	a5,ffffffffc0208c8e <stdin_io+0xb8>
ffffffffc0208c56:	0028                	addi	a0,sp,8
ffffffffc0208c58:	ac7fb0ef          	jal	ra,ffffffffc020471e <wait_in_queue>
ffffffffc0208c5c:	e121                	bnez	a0,ffffffffc0208c9c <stdin_io+0xc6>
ffffffffc0208c5e:	47c2                	lw	a5,16(sp)
ffffffffc0208c60:	04979563          	bne	a5,s1,ffffffffc0208caa <stdin_io+0xd4>
ffffffffc0208c64:	0009b783          	ld	a5,0(s3)
ffffffffc0208c68:	000a3703          	ld	a4,0(s4)
ffffffffc0208c6c:	06e7c863          	blt	a5,a4,ffffffffc0208cdc <stdin_io+0x106>
ffffffffc0208c70:	8626                	mv	a2,s1
ffffffffc0208c72:	002c                	addi	a1,sp,8
ffffffffc0208c74:	854a                	mv	a0,s2
ffffffffc0208c76:	bd3fb0ef          	jal	ra,ffffffffc0204848 <wait_current_set>
ffffffffc0208c7a:	d479                	beqz	s0,ffffffffc0208c48 <stdin_io+0x72>
ffffffffc0208c7c:	ff1f70ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0208c80:	fdcfe0ef          	jal	ra,ffffffffc020745c <schedule>
ffffffffc0208c84:	100027f3          	csrr	a5,sstatus
ffffffffc0208c88:	8b89                	andi	a5,a5,2
ffffffffc0208c8a:	4401                	li	s0,0
ffffffffc0208c8c:	d7e9                	beqz	a5,ffffffffc0208c56 <stdin_io+0x80>
ffffffffc0208c8e:	fe5f70ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0208c92:	0028                	addi	a0,sp,8
ffffffffc0208c94:	4405                	li	s0,1
ffffffffc0208c96:	a89fb0ef          	jal	ra,ffffffffc020471e <wait_in_queue>
ffffffffc0208c9a:	d171                	beqz	a0,ffffffffc0208c5e <stdin_io+0x88>
ffffffffc0208c9c:	002c                	addi	a1,sp,8
ffffffffc0208c9e:	854a                	mv	a0,s2
ffffffffc0208ca0:	a25fb0ef          	jal	ra,ffffffffc02046c4 <wait_queue_del>
ffffffffc0208ca4:	47c2                	lw	a5,16(sp)
ffffffffc0208ca6:	fa978fe3          	beq	a5,s1,ffffffffc0208c64 <stdin_io+0x8e>
ffffffffc0208caa:	e435                	bnez	s0,ffffffffc0208d16 <stdin_io+0x140>
ffffffffc0208cac:	060b8963          	beqz	s7,ffffffffc0208d1e <stdin_io+0x148>
ffffffffc0208cb0:	018b3783          	ld	a5,24(s6)
ffffffffc0208cb4:	41578ab3          	sub	s5,a5,s5
ffffffffc0208cb8:	015b3c23          	sd	s5,24(s6)
ffffffffc0208cbc:	60ea                	ld	ra,152(sp)
ffffffffc0208cbe:	644a                	ld	s0,144(sp)
ffffffffc0208cc0:	64aa                	ld	s1,136(sp)
ffffffffc0208cc2:	690a                	ld	s2,128(sp)
ffffffffc0208cc4:	79e6                	ld	s3,120(sp)
ffffffffc0208cc6:	7a46                	ld	s4,112(sp)
ffffffffc0208cc8:	7aa6                	ld	s5,104(sp)
ffffffffc0208cca:	7b06                	ld	s6,96(sp)
ffffffffc0208ccc:	6c46                	ld	s8,80(sp)
ffffffffc0208cce:	6ca6                	ld	s9,72(sp)
ffffffffc0208cd0:	6d06                	ld	s10,64(sp)
ffffffffc0208cd2:	7de2                	ld	s11,56(sp)
ffffffffc0208cd4:	855e                	mv	a0,s7
ffffffffc0208cd6:	6be6                	ld	s7,88(sp)
ffffffffc0208cd8:	610d                	addi	sp,sp,160
ffffffffc0208cda:	8082                	ret
ffffffffc0208cdc:	43f7d713          	srai	a4,a5,0x3f
ffffffffc0208ce0:	03475693          	srli	a3,a4,0x34
ffffffffc0208ce4:	00d78733          	add	a4,a5,a3
ffffffffc0208ce8:	01977733          	and	a4,a4,s9
ffffffffc0208cec:	8f15                	sub	a4,a4,a3
ffffffffc0208cee:	0008d697          	auipc	a3,0x8d
ffffffffc0208cf2:	b7a68693          	addi	a3,a3,-1158 # ffffffffc0295868 <stdin_buffer>
ffffffffc0208cf6:	9736                	add	a4,a4,a3
ffffffffc0208cf8:	00074683          	lbu	a3,0(a4)
ffffffffc0208cfc:	0785                	addi	a5,a5,1
ffffffffc0208cfe:	015d8733          	add	a4,s11,s5
ffffffffc0208d02:	00d70023          	sb	a3,0(a4)
ffffffffc0208d06:	00f9b023          	sd	a5,0(s3)
ffffffffc0208d0a:	0a85                	addi	s5,s5,1
ffffffffc0208d0c:	001c0b9b          	addiw	s7,s8,1
ffffffffc0208d10:	f3aae4e3          	bltu	s5,s10,ffffffffc0208c38 <stdin_io+0x62>
ffffffffc0208d14:	dc51                	beqz	s0,ffffffffc0208cb0 <stdin_io+0xda>
ffffffffc0208d16:	f57f70ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0208d1a:	f80b9be3          	bnez	s7,ffffffffc0208cb0 <stdin_io+0xda>
ffffffffc0208d1e:	4b81                	li	s7,0
ffffffffc0208d20:	bf71                	j	ffffffffc0208cbc <stdin_io+0xe6>
ffffffffc0208d22:	f51f70ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0208d26:	4405                	li	s0,1
ffffffffc0208d28:	ee0d14e3          	bnez	s10,ffffffffc0208c10 <stdin_io+0x3a>
ffffffffc0208d2c:	f41f70ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0208d30:	4b81                	li	s7,0
ffffffffc0208d32:	b769                	j	ffffffffc0208cbc <stdin_io+0xe6>
ffffffffc0208d34:	5bf5                	li	s7,-3
ffffffffc0208d36:	b759                	j	ffffffffc0208cbc <stdin_io+0xe6>

ffffffffc0208d38 <dev_stdin_write>:
ffffffffc0208d38:	e111                	bnez	a0,ffffffffc0208d3c <dev_stdin_write+0x4>
ffffffffc0208d3a:	8082                	ret
ffffffffc0208d3c:	1101                	addi	sp,sp,-32
ffffffffc0208d3e:	e822                	sd	s0,16(sp)
ffffffffc0208d40:	ec06                	sd	ra,24(sp)
ffffffffc0208d42:	e426                	sd	s1,8(sp)
ffffffffc0208d44:	842a                	mv	s0,a0
ffffffffc0208d46:	100027f3          	csrr	a5,sstatus
ffffffffc0208d4a:	8b89                	andi	a5,a5,2
ffffffffc0208d4c:	4481                	li	s1,0
ffffffffc0208d4e:	e3c1                	bnez	a5,ffffffffc0208dce <dev_stdin_write+0x96>
ffffffffc0208d50:	0008e597          	auipc	a1,0x8e
ffffffffc0208d54:	bb858593          	addi	a1,a1,-1096 # ffffffffc0296908 <p_wpos>
ffffffffc0208d58:	6198                	ld	a4,0(a1)
ffffffffc0208d5a:	6605                	lui	a2,0x1
ffffffffc0208d5c:	fff60513          	addi	a0,a2,-1 # fff <_binary_bin_swap_img_size-0x6d01>
ffffffffc0208d60:	43f75693          	srai	a3,a4,0x3f
ffffffffc0208d64:	92d1                	srli	a3,a3,0x34
ffffffffc0208d66:	00d707b3          	add	a5,a4,a3
ffffffffc0208d6a:	8fe9                	and	a5,a5,a0
ffffffffc0208d6c:	8f95                	sub	a5,a5,a3
ffffffffc0208d6e:	0008d697          	auipc	a3,0x8d
ffffffffc0208d72:	afa68693          	addi	a3,a3,-1286 # ffffffffc0295868 <stdin_buffer>
ffffffffc0208d76:	97b6                	add	a5,a5,a3
ffffffffc0208d78:	00878023          	sb	s0,0(a5)
ffffffffc0208d7c:	0008e797          	auipc	a5,0x8e
ffffffffc0208d80:	b847b783          	ld	a5,-1148(a5) # ffffffffc0296900 <p_rpos>
ffffffffc0208d84:	40f707b3          	sub	a5,a4,a5
ffffffffc0208d88:	00c7d463          	bge	a5,a2,ffffffffc0208d90 <dev_stdin_write+0x58>
ffffffffc0208d8c:	0705                	addi	a4,a4,1
ffffffffc0208d8e:	e198                	sd	a4,0(a1)
ffffffffc0208d90:	0008d517          	auipc	a0,0x8d
ffffffffc0208d94:	ac850513          	addi	a0,a0,-1336 # ffffffffc0295858 <__wait_queue>
ffffffffc0208d98:	97bfb0ef          	jal	ra,ffffffffc0204712 <wait_queue_empty>
ffffffffc0208d9c:	cd09                	beqz	a0,ffffffffc0208db6 <dev_stdin_write+0x7e>
ffffffffc0208d9e:	e491                	bnez	s1,ffffffffc0208daa <dev_stdin_write+0x72>
ffffffffc0208da0:	60e2                	ld	ra,24(sp)
ffffffffc0208da2:	6442                	ld	s0,16(sp)
ffffffffc0208da4:	64a2                	ld	s1,8(sp)
ffffffffc0208da6:	6105                	addi	sp,sp,32
ffffffffc0208da8:	8082                	ret
ffffffffc0208daa:	6442                	ld	s0,16(sp)
ffffffffc0208dac:	60e2                	ld	ra,24(sp)
ffffffffc0208dae:	64a2                	ld	s1,8(sp)
ffffffffc0208db0:	6105                	addi	sp,sp,32
ffffffffc0208db2:	ebbf706f          	j	ffffffffc0200c6c <intr_enable>
ffffffffc0208db6:	800005b7          	lui	a1,0x80000
ffffffffc0208dba:	4605                	li	a2,1
ffffffffc0208dbc:	0591                	addi	a1,a1,4
ffffffffc0208dbe:	0008d517          	auipc	a0,0x8d
ffffffffc0208dc2:	a9a50513          	addi	a0,a0,-1382 # ffffffffc0295858 <__wait_queue>
ffffffffc0208dc6:	9b5fb0ef          	jal	ra,ffffffffc020477a <wakeup_queue>
ffffffffc0208dca:	d8f9                	beqz	s1,ffffffffc0208da0 <dev_stdin_write+0x68>
ffffffffc0208dcc:	bff9                	j	ffffffffc0208daa <dev_stdin_write+0x72>
ffffffffc0208dce:	ea5f70ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0208dd2:	4485                	li	s1,1
ffffffffc0208dd4:	bfb5                	j	ffffffffc0208d50 <dev_stdin_write+0x18>

ffffffffc0208dd6 <dev_init_stdin>:
ffffffffc0208dd6:	1141                	addi	sp,sp,-16
ffffffffc0208dd8:	e406                	sd	ra,8(sp)
ffffffffc0208dda:	e022                	sd	s0,0(sp)
ffffffffc0208ddc:	ac7ff0ef          	jal	ra,ffffffffc02088a2 <dev_create_inode>
ffffffffc0208de0:	c93d                	beqz	a0,ffffffffc0208e56 <dev_init_stdin+0x80>
ffffffffc0208de2:	4d38                	lw	a4,88(a0)
ffffffffc0208de4:	6785                	lui	a5,0x1
ffffffffc0208de6:	23478793          	addi	a5,a5,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0208dea:	842a                	mv	s0,a0
ffffffffc0208dec:	08f71e63          	bne	a4,a5,ffffffffc0208e88 <dev_init_stdin+0xb2>
ffffffffc0208df0:	4785                	li	a5,1
ffffffffc0208df2:	e41c                	sd	a5,8(s0)
ffffffffc0208df4:	00000797          	auipc	a5,0x0
ffffffffc0208df8:	dd078793          	addi	a5,a5,-560 # ffffffffc0208bc4 <stdin_open>
ffffffffc0208dfc:	e81c                	sd	a5,16(s0)
ffffffffc0208dfe:	00000797          	auipc	a5,0x0
ffffffffc0208e02:	dd078793          	addi	a5,a5,-560 # ffffffffc0208bce <stdin_close>
ffffffffc0208e06:	ec1c                	sd	a5,24(s0)
ffffffffc0208e08:	00000797          	auipc	a5,0x0
ffffffffc0208e0c:	dce78793          	addi	a5,a5,-562 # ffffffffc0208bd6 <stdin_io>
ffffffffc0208e10:	f01c                	sd	a5,32(s0)
ffffffffc0208e12:	00000797          	auipc	a5,0x0
ffffffffc0208e16:	dc078793          	addi	a5,a5,-576 # ffffffffc0208bd2 <stdin_ioctl>
ffffffffc0208e1a:	f41c                	sd	a5,40(s0)
ffffffffc0208e1c:	0008d517          	auipc	a0,0x8d
ffffffffc0208e20:	a3c50513          	addi	a0,a0,-1476 # ffffffffc0295858 <__wait_queue>
ffffffffc0208e24:	00043023          	sd	zero,0(s0)
ffffffffc0208e28:	0008e797          	auipc	a5,0x8e
ffffffffc0208e2c:	ae07b023          	sd	zero,-1312(a5) # ffffffffc0296908 <p_wpos>
ffffffffc0208e30:	0008e797          	auipc	a5,0x8e
ffffffffc0208e34:	ac07b823          	sd	zero,-1328(a5) # ffffffffc0296900 <p_rpos>
ffffffffc0208e38:	887fb0ef          	jal	ra,ffffffffc02046be <wait_queue_init>
ffffffffc0208e3c:	4601                	li	a2,0
ffffffffc0208e3e:	85a2                	mv	a1,s0
ffffffffc0208e40:	00006517          	auipc	a0,0x6
ffffffffc0208e44:	f7850513          	addi	a0,a0,-136 # ffffffffc020edb8 <dev_node_ops+0x270>
ffffffffc0208e48:	916ff0ef          	jal	ra,ffffffffc0207f5e <vfs_add_dev>
ffffffffc0208e4c:	e10d                	bnez	a0,ffffffffc0208e6e <dev_init_stdin+0x98>
ffffffffc0208e4e:	60a2                	ld	ra,8(sp)
ffffffffc0208e50:	6402                	ld	s0,0(sp)
ffffffffc0208e52:	0141                	addi	sp,sp,16
ffffffffc0208e54:	8082                	ret
ffffffffc0208e56:	00006617          	auipc	a2,0x6
ffffffffc0208e5a:	f2260613          	addi	a2,a2,-222 # ffffffffc020ed78 <dev_node_ops+0x230>
ffffffffc0208e5e:	07500593          	li	a1,117
ffffffffc0208e62:	00006517          	auipc	a0,0x6
ffffffffc0208e66:	f3650513          	addi	a0,a0,-202 # ffffffffc020ed98 <dev_node_ops+0x250>
ffffffffc0208e6a:	e34f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208e6e:	86aa                	mv	a3,a0
ffffffffc0208e70:	00006617          	auipc	a2,0x6
ffffffffc0208e74:	f5060613          	addi	a2,a2,-176 # ffffffffc020edc0 <dev_node_ops+0x278>
ffffffffc0208e78:	07b00593          	li	a1,123
ffffffffc0208e7c:	00006517          	auipc	a0,0x6
ffffffffc0208e80:	f1c50513          	addi	a0,a0,-228 # ffffffffc020ed98 <dev_node_ops+0x250>
ffffffffc0208e84:	e1af70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208e88:	00006697          	auipc	a3,0x6
ffffffffc0208e8c:	99868693          	addi	a3,a3,-1640 # ffffffffc020e820 <syscalls+0xb10>
ffffffffc0208e90:	00003617          	auipc	a2,0x3
ffffffffc0208e94:	c8060613          	addi	a2,a2,-896 # ffffffffc020bb10 <commands+0x210>
ffffffffc0208e98:	07700593          	li	a1,119
ffffffffc0208e9c:	00006517          	auipc	a0,0x6
ffffffffc0208ea0:	efc50513          	addi	a0,a0,-260 # ffffffffc020ed98 <dev_node_ops+0x250>
ffffffffc0208ea4:	dfaf70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208ea8 <stdout_open>:
ffffffffc0208ea8:	4785                	li	a5,1
ffffffffc0208eaa:	4501                	li	a0,0
ffffffffc0208eac:	00f59363          	bne	a1,a5,ffffffffc0208eb2 <stdout_open+0xa>
ffffffffc0208eb0:	8082                	ret
ffffffffc0208eb2:	5575                	li	a0,-3
ffffffffc0208eb4:	8082                	ret

ffffffffc0208eb6 <stdout_close>:
ffffffffc0208eb6:	4501                	li	a0,0
ffffffffc0208eb8:	8082                	ret

ffffffffc0208eba <stdout_ioctl>:
ffffffffc0208eba:	5575                	li	a0,-3
ffffffffc0208ebc:	8082                	ret

ffffffffc0208ebe <stdout_io>:
ffffffffc0208ebe:	ca05                	beqz	a2,ffffffffc0208eee <stdout_io+0x30>
ffffffffc0208ec0:	6d9c                	ld	a5,24(a1)
ffffffffc0208ec2:	1101                	addi	sp,sp,-32
ffffffffc0208ec4:	e822                	sd	s0,16(sp)
ffffffffc0208ec6:	e426                	sd	s1,8(sp)
ffffffffc0208ec8:	ec06                	sd	ra,24(sp)
ffffffffc0208eca:	6180                	ld	s0,0(a1)
ffffffffc0208ecc:	84ae                	mv	s1,a1
ffffffffc0208ece:	cb91                	beqz	a5,ffffffffc0208ee2 <stdout_io+0x24>
ffffffffc0208ed0:	00044503          	lbu	a0,0(s0)
ffffffffc0208ed4:	0405                	addi	s0,s0,1
ffffffffc0208ed6:	b0cf70ef          	jal	ra,ffffffffc02001e2 <cputchar>
ffffffffc0208eda:	6c9c                	ld	a5,24(s1)
ffffffffc0208edc:	17fd                	addi	a5,a5,-1
ffffffffc0208ede:	ec9c                	sd	a5,24(s1)
ffffffffc0208ee0:	fbe5                	bnez	a5,ffffffffc0208ed0 <stdout_io+0x12>
ffffffffc0208ee2:	60e2                	ld	ra,24(sp)
ffffffffc0208ee4:	6442                	ld	s0,16(sp)
ffffffffc0208ee6:	64a2                	ld	s1,8(sp)
ffffffffc0208ee8:	4501                	li	a0,0
ffffffffc0208eea:	6105                	addi	sp,sp,32
ffffffffc0208eec:	8082                	ret
ffffffffc0208eee:	5575                	li	a0,-3
ffffffffc0208ef0:	8082                	ret

ffffffffc0208ef2 <dev_init_stdout>:
ffffffffc0208ef2:	1141                	addi	sp,sp,-16
ffffffffc0208ef4:	e406                	sd	ra,8(sp)
ffffffffc0208ef6:	9adff0ef          	jal	ra,ffffffffc02088a2 <dev_create_inode>
ffffffffc0208efa:	c939                	beqz	a0,ffffffffc0208f50 <dev_init_stdout+0x5e>
ffffffffc0208efc:	4d38                	lw	a4,88(a0)
ffffffffc0208efe:	6785                	lui	a5,0x1
ffffffffc0208f00:	23478793          	addi	a5,a5,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0208f04:	85aa                	mv	a1,a0
ffffffffc0208f06:	06f71e63          	bne	a4,a5,ffffffffc0208f82 <dev_init_stdout+0x90>
ffffffffc0208f0a:	4785                	li	a5,1
ffffffffc0208f0c:	e51c                	sd	a5,8(a0)
ffffffffc0208f0e:	00000797          	auipc	a5,0x0
ffffffffc0208f12:	f9a78793          	addi	a5,a5,-102 # ffffffffc0208ea8 <stdout_open>
ffffffffc0208f16:	e91c                	sd	a5,16(a0)
ffffffffc0208f18:	00000797          	auipc	a5,0x0
ffffffffc0208f1c:	f9e78793          	addi	a5,a5,-98 # ffffffffc0208eb6 <stdout_close>
ffffffffc0208f20:	ed1c                	sd	a5,24(a0)
ffffffffc0208f22:	00000797          	auipc	a5,0x0
ffffffffc0208f26:	f9c78793          	addi	a5,a5,-100 # ffffffffc0208ebe <stdout_io>
ffffffffc0208f2a:	f11c                	sd	a5,32(a0)
ffffffffc0208f2c:	00000797          	auipc	a5,0x0
ffffffffc0208f30:	f8e78793          	addi	a5,a5,-114 # ffffffffc0208eba <stdout_ioctl>
ffffffffc0208f34:	00053023          	sd	zero,0(a0)
ffffffffc0208f38:	f51c                	sd	a5,40(a0)
ffffffffc0208f3a:	4601                	li	a2,0
ffffffffc0208f3c:	00006517          	auipc	a0,0x6
ffffffffc0208f40:	ee450513          	addi	a0,a0,-284 # ffffffffc020ee20 <dev_node_ops+0x2d8>
ffffffffc0208f44:	81aff0ef          	jal	ra,ffffffffc0207f5e <vfs_add_dev>
ffffffffc0208f48:	e105                	bnez	a0,ffffffffc0208f68 <dev_init_stdout+0x76>
ffffffffc0208f4a:	60a2                	ld	ra,8(sp)
ffffffffc0208f4c:	0141                	addi	sp,sp,16
ffffffffc0208f4e:	8082                	ret
ffffffffc0208f50:	00006617          	auipc	a2,0x6
ffffffffc0208f54:	e9060613          	addi	a2,a2,-368 # ffffffffc020ede0 <dev_node_ops+0x298>
ffffffffc0208f58:	03700593          	li	a1,55
ffffffffc0208f5c:	00006517          	auipc	a0,0x6
ffffffffc0208f60:	ea450513          	addi	a0,a0,-348 # ffffffffc020ee00 <dev_node_ops+0x2b8>
ffffffffc0208f64:	d3af70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208f68:	86aa                	mv	a3,a0
ffffffffc0208f6a:	00006617          	auipc	a2,0x6
ffffffffc0208f6e:	ebe60613          	addi	a2,a2,-322 # ffffffffc020ee28 <dev_node_ops+0x2e0>
ffffffffc0208f72:	03d00593          	li	a1,61
ffffffffc0208f76:	00006517          	auipc	a0,0x6
ffffffffc0208f7a:	e8a50513          	addi	a0,a0,-374 # ffffffffc020ee00 <dev_node_ops+0x2b8>
ffffffffc0208f7e:	d20f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208f82:	00006697          	auipc	a3,0x6
ffffffffc0208f86:	89e68693          	addi	a3,a3,-1890 # ffffffffc020e820 <syscalls+0xb10>
ffffffffc0208f8a:	00003617          	auipc	a2,0x3
ffffffffc0208f8e:	b8660613          	addi	a2,a2,-1146 # ffffffffc020bb10 <commands+0x210>
ffffffffc0208f92:	03900593          	li	a1,57
ffffffffc0208f96:	00006517          	auipc	a0,0x6
ffffffffc0208f9a:	e6a50513          	addi	a0,a0,-406 # ffffffffc020ee00 <dev_node_ops+0x2b8>
ffffffffc0208f9e:	d00f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208fa2 <bitmap_translate.part.0>:
ffffffffc0208fa2:	1141                	addi	sp,sp,-16
ffffffffc0208fa4:	00006697          	auipc	a3,0x6
ffffffffc0208fa8:	ea468693          	addi	a3,a3,-348 # ffffffffc020ee48 <dev_node_ops+0x300>
ffffffffc0208fac:	00003617          	auipc	a2,0x3
ffffffffc0208fb0:	b6460613          	addi	a2,a2,-1180 # ffffffffc020bb10 <commands+0x210>
ffffffffc0208fb4:	04c00593          	li	a1,76
ffffffffc0208fb8:	00006517          	auipc	a0,0x6
ffffffffc0208fbc:	ea850513          	addi	a0,a0,-344 # ffffffffc020ee60 <dev_node_ops+0x318>
ffffffffc0208fc0:	e406                	sd	ra,8(sp)
ffffffffc0208fc2:	cdcf70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208fc6 <bitmap_create>:
ffffffffc0208fc6:	7139                	addi	sp,sp,-64
ffffffffc0208fc8:	fc06                	sd	ra,56(sp)
ffffffffc0208fca:	f822                	sd	s0,48(sp)
ffffffffc0208fcc:	f426                	sd	s1,40(sp)
ffffffffc0208fce:	f04a                	sd	s2,32(sp)
ffffffffc0208fd0:	ec4e                	sd	s3,24(sp)
ffffffffc0208fd2:	e852                	sd	s4,16(sp)
ffffffffc0208fd4:	e456                	sd	s5,8(sp)
ffffffffc0208fd6:	c14d                	beqz	a0,ffffffffc0209078 <bitmap_create+0xb2>
ffffffffc0208fd8:	842a                	mv	s0,a0
ffffffffc0208fda:	4541                	li	a0,16
ffffffffc0208fdc:	8cef90ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc0208fe0:	84aa                	mv	s1,a0
ffffffffc0208fe2:	cd25                	beqz	a0,ffffffffc020905a <bitmap_create+0x94>
ffffffffc0208fe4:	02041a13          	slli	s4,s0,0x20
ffffffffc0208fe8:	020a5a13          	srli	s4,s4,0x20
ffffffffc0208fec:	01fa0793          	addi	a5,s4,31
ffffffffc0208ff0:	0057d993          	srli	s3,a5,0x5
ffffffffc0208ff4:	00299a93          	slli	s5,s3,0x2
ffffffffc0208ff8:	8556                	mv	a0,s5
ffffffffc0208ffa:	894e                	mv	s2,s3
ffffffffc0208ffc:	8aef90ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc0209000:	c53d                	beqz	a0,ffffffffc020906e <bitmap_create+0xa8>
ffffffffc0209002:	0134a223          	sw	s3,4(s1) # ffffffff80000004 <_binary_bin_sfs_img_size+0xffffffff7ff8ad04>
ffffffffc0209006:	c080                	sw	s0,0(s1)
ffffffffc0209008:	8656                	mv	a2,s5
ffffffffc020900a:	0ff00593          	li	a1,255
ffffffffc020900e:	620020ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc0209012:	e488                	sd	a0,8(s1)
ffffffffc0209014:	0996                	slli	s3,s3,0x5
ffffffffc0209016:	053a0263          	beq	s4,s3,ffffffffc020905a <bitmap_create+0x94>
ffffffffc020901a:	fff9079b          	addiw	a5,s2,-1
ffffffffc020901e:	0057969b          	slliw	a3,a5,0x5
ffffffffc0209022:	0054561b          	srliw	a2,s0,0x5
ffffffffc0209026:	40d4073b          	subw	a4,s0,a3
ffffffffc020902a:	0054541b          	srliw	s0,s0,0x5
ffffffffc020902e:	08f61463          	bne	a2,a5,ffffffffc02090b6 <bitmap_create+0xf0>
ffffffffc0209032:	fff7069b          	addiw	a3,a4,-1
ffffffffc0209036:	47f9                	li	a5,30
ffffffffc0209038:	04d7ef63          	bltu	a5,a3,ffffffffc0209096 <bitmap_create+0xd0>
ffffffffc020903c:	1402                	slli	s0,s0,0x20
ffffffffc020903e:	8079                	srli	s0,s0,0x1e
ffffffffc0209040:	9522                	add	a0,a0,s0
ffffffffc0209042:	411c                	lw	a5,0(a0)
ffffffffc0209044:	4585                	li	a1,1
ffffffffc0209046:	02000613          	li	a2,32
ffffffffc020904a:	00e596bb          	sllw	a3,a1,a4
ffffffffc020904e:	8fb5                	xor	a5,a5,a3
ffffffffc0209050:	2705                	addiw	a4,a4,1
ffffffffc0209052:	2781                	sext.w	a5,a5
ffffffffc0209054:	fec71be3          	bne	a4,a2,ffffffffc020904a <bitmap_create+0x84>
ffffffffc0209058:	c11c                	sw	a5,0(a0)
ffffffffc020905a:	70e2                	ld	ra,56(sp)
ffffffffc020905c:	7442                	ld	s0,48(sp)
ffffffffc020905e:	7902                	ld	s2,32(sp)
ffffffffc0209060:	69e2                	ld	s3,24(sp)
ffffffffc0209062:	6a42                	ld	s4,16(sp)
ffffffffc0209064:	6aa2                	ld	s5,8(sp)
ffffffffc0209066:	8526                	mv	a0,s1
ffffffffc0209068:	74a2                	ld	s1,40(sp)
ffffffffc020906a:	6121                	addi	sp,sp,64
ffffffffc020906c:	8082                	ret
ffffffffc020906e:	8526                	mv	a0,s1
ffffffffc0209070:	8eaf90ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc0209074:	4481                	li	s1,0
ffffffffc0209076:	b7d5                	j	ffffffffc020905a <bitmap_create+0x94>
ffffffffc0209078:	00006697          	auipc	a3,0x6
ffffffffc020907c:	e0068693          	addi	a3,a3,-512 # ffffffffc020ee78 <dev_node_ops+0x330>
ffffffffc0209080:	00003617          	auipc	a2,0x3
ffffffffc0209084:	a9060613          	addi	a2,a2,-1392 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209088:	45d5                	li	a1,21
ffffffffc020908a:	00006517          	auipc	a0,0x6
ffffffffc020908e:	dd650513          	addi	a0,a0,-554 # ffffffffc020ee60 <dev_node_ops+0x318>
ffffffffc0209092:	c0cf70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209096:	00006697          	auipc	a3,0x6
ffffffffc020909a:	e2268693          	addi	a3,a3,-478 # ffffffffc020eeb8 <dev_node_ops+0x370>
ffffffffc020909e:	00003617          	auipc	a2,0x3
ffffffffc02090a2:	a7260613          	addi	a2,a2,-1422 # ffffffffc020bb10 <commands+0x210>
ffffffffc02090a6:	02b00593          	li	a1,43
ffffffffc02090aa:	00006517          	auipc	a0,0x6
ffffffffc02090ae:	db650513          	addi	a0,a0,-586 # ffffffffc020ee60 <dev_node_ops+0x318>
ffffffffc02090b2:	becf70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02090b6:	00006697          	auipc	a3,0x6
ffffffffc02090ba:	dea68693          	addi	a3,a3,-534 # ffffffffc020eea0 <dev_node_ops+0x358>
ffffffffc02090be:	00003617          	auipc	a2,0x3
ffffffffc02090c2:	a5260613          	addi	a2,a2,-1454 # ffffffffc020bb10 <commands+0x210>
ffffffffc02090c6:	02a00593          	li	a1,42
ffffffffc02090ca:	00006517          	auipc	a0,0x6
ffffffffc02090ce:	d9650513          	addi	a0,a0,-618 # ffffffffc020ee60 <dev_node_ops+0x318>
ffffffffc02090d2:	bccf70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02090d6 <bitmap_alloc>:
ffffffffc02090d6:	4150                	lw	a2,4(a0)
ffffffffc02090d8:	651c                	ld	a5,8(a0)
ffffffffc02090da:	c231                	beqz	a2,ffffffffc020911e <bitmap_alloc+0x48>
ffffffffc02090dc:	4701                	li	a4,0
ffffffffc02090de:	a029                	j	ffffffffc02090e8 <bitmap_alloc+0x12>
ffffffffc02090e0:	2705                	addiw	a4,a4,1
ffffffffc02090e2:	0791                	addi	a5,a5,4
ffffffffc02090e4:	02e60d63          	beq	a2,a4,ffffffffc020911e <bitmap_alloc+0x48>
ffffffffc02090e8:	4394                	lw	a3,0(a5)
ffffffffc02090ea:	dafd                	beqz	a3,ffffffffc02090e0 <bitmap_alloc+0xa>
ffffffffc02090ec:	4501                	li	a0,0
ffffffffc02090ee:	4885                	li	a7,1
ffffffffc02090f0:	8e36                	mv	t3,a3
ffffffffc02090f2:	02000313          	li	t1,32
ffffffffc02090f6:	a021                	j	ffffffffc02090fe <bitmap_alloc+0x28>
ffffffffc02090f8:	2505                	addiw	a0,a0,1
ffffffffc02090fa:	02650463          	beq	a0,t1,ffffffffc0209122 <bitmap_alloc+0x4c>
ffffffffc02090fe:	00a8983b          	sllw	a6,a7,a0
ffffffffc0209102:	0106f633          	and	a2,a3,a6
ffffffffc0209106:	2601                	sext.w	a2,a2
ffffffffc0209108:	da65                	beqz	a2,ffffffffc02090f8 <bitmap_alloc+0x22>
ffffffffc020910a:	010e4833          	xor	a6,t3,a6
ffffffffc020910e:	0057171b          	slliw	a4,a4,0x5
ffffffffc0209112:	9f29                	addw	a4,a4,a0
ffffffffc0209114:	0107a023          	sw	a6,0(a5)
ffffffffc0209118:	c198                	sw	a4,0(a1)
ffffffffc020911a:	4501                	li	a0,0
ffffffffc020911c:	8082                	ret
ffffffffc020911e:	5571                	li	a0,-4
ffffffffc0209120:	8082                	ret
ffffffffc0209122:	1141                	addi	sp,sp,-16
ffffffffc0209124:	00004697          	auipc	a3,0x4
ffffffffc0209128:	c2468693          	addi	a3,a3,-988 # ffffffffc020cd48 <default_pmm_manager+0x598>
ffffffffc020912c:	00003617          	auipc	a2,0x3
ffffffffc0209130:	9e460613          	addi	a2,a2,-1564 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209134:	04300593          	li	a1,67
ffffffffc0209138:	00006517          	auipc	a0,0x6
ffffffffc020913c:	d2850513          	addi	a0,a0,-728 # ffffffffc020ee60 <dev_node_ops+0x318>
ffffffffc0209140:	e406                	sd	ra,8(sp)
ffffffffc0209142:	b5cf70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209146 <bitmap_test>:
ffffffffc0209146:	411c                	lw	a5,0(a0)
ffffffffc0209148:	00f5ff63          	bgeu	a1,a5,ffffffffc0209166 <bitmap_test+0x20>
ffffffffc020914c:	651c                	ld	a5,8(a0)
ffffffffc020914e:	0055d71b          	srliw	a4,a1,0x5
ffffffffc0209152:	070a                	slli	a4,a4,0x2
ffffffffc0209154:	97ba                	add	a5,a5,a4
ffffffffc0209156:	4388                	lw	a0,0(a5)
ffffffffc0209158:	4785                	li	a5,1
ffffffffc020915a:	00b795bb          	sllw	a1,a5,a1
ffffffffc020915e:	8d6d                	and	a0,a0,a1
ffffffffc0209160:	1502                	slli	a0,a0,0x20
ffffffffc0209162:	9101                	srli	a0,a0,0x20
ffffffffc0209164:	8082                	ret
ffffffffc0209166:	1141                	addi	sp,sp,-16
ffffffffc0209168:	e406                	sd	ra,8(sp)
ffffffffc020916a:	e39ff0ef          	jal	ra,ffffffffc0208fa2 <bitmap_translate.part.0>

ffffffffc020916e <bitmap_free>:
ffffffffc020916e:	411c                	lw	a5,0(a0)
ffffffffc0209170:	1141                	addi	sp,sp,-16
ffffffffc0209172:	e406                	sd	ra,8(sp)
ffffffffc0209174:	02f5f463          	bgeu	a1,a5,ffffffffc020919c <bitmap_free+0x2e>
ffffffffc0209178:	651c                	ld	a5,8(a0)
ffffffffc020917a:	0055d71b          	srliw	a4,a1,0x5
ffffffffc020917e:	070a                	slli	a4,a4,0x2
ffffffffc0209180:	97ba                	add	a5,a5,a4
ffffffffc0209182:	4398                	lw	a4,0(a5)
ffffffffc0209184:	4685                	li	a3,1
ffffffffc0209186:	00b695bb          	sllw	a1,a3,a1
ffffffffc020918a:	00b776b3          	and	a3,a4,a1
ffffffffc020918e:	2681                	sext.w	a3,a3
ffffffffc0209190:	ea81                	bnez	a3,ffffffffc02091a0 <bitmap_free+0x32>
ffffffffc0209192:	60a2                	ld	ra,8(sp)
ffffffffc0209194:	8f4d                	or	a4,a4,a1
ffffffffc0209196:	c398                	sw	a4,0(a5)
ffffffffc0209198:	0141                	addi	sp,sp,16
ffffffffc020919a:	8082                	ret
ffffffffc020919c:	e07ff0ef          	jal	ra,ffffffffc0208fa2 <bitmap_translate.part.0>
ffffffffc02091a0:	00006697          	auipc	a3,0x6
ffffffffc02091a4:	d4068693          	addi	a3,a3,-704 # ffffffffc020eee0 <dev_node_ops+0x398>
ffffffffc02091a8:	00003617          	auipc	a2,0x3
ffffffffc02091ac:	96860613          	addi	a2,a2,-1688 # ffffffffc020bb10 <commands+0x210>
ffffffffc02091b0:	05f00593          	li	a1,95
ffffffffc02091b4:	00006517          	auipc	a0,0x6
ffffffffc02091b8:	cac50513          	addi	a0,a0,-852 # ffffffffc020ee60 <dev_node_ops+0x318>
ffffffffc02091bc:	ae2f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02091c0 <bitmap_destroy>:
ffffffffc02091c0:	1141                	addi	sp,sp,-16
ffffffffc02091c2:	e022                	sd	s0,0(sp)
ffffffffc02091c4:	842a                	mv	s0,a0
ffffffffc02091c6:	6508                	ld	a0,8(a0)
ffffffffc02091c8:	e406                	sd	ra,8(sp)
ffffffffc02091ca:	f91f80ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc02091ce:	8522                	mv	a0,s0
ffffffffc02091d0:	6402                	ld	s0,0(sp)
ffffffffc02091d2:	60a2                	ld	ra,8(sp)
ffffffffc02091d4:	0141                	addi	sp,sp,16
ffffffffc02091d6:	f85f806f          	j	ffffffffc020215a <kfree>

ffffffffc02091da <bitmap_getdata>:
ffffffffc02091da:	c589                	beqz	a1,ffffffffc02091e4 <bitmap_getdata+0xa>
ffffffffc02091dc:	00456783          	lwu	a5,4(a0)
ffffffffc02091e0:	078a                	slli	a5,a5,0x2
ffffffffc02091e2:	e19c                	sd	a5,0(a1)
ffffffffc02091e4:	6508                	ld	a0,8(a0)
ffffffffc02091e6:	8082                	ret

ffffffffc02091e8 <sfs_init>:
ffffffffc02091e8:	1141                	addi	sp,sp,-16
ffffffffc02091ea:	00006517          	auipc	a0,0x6
ffffffffc02091ee:	b6650513          	addi	a0,a0,-1178 # ffffffffc020ed50 <dev_node_ops+0x208>
ffffffffc02091f2:	e406                	sd	ra,8(sp)
ffffffffc02091f4:	554000ef          	jal	ra,ffffffffc0209748 <sfs_mount>
ffffffffc02091f8:	e501                	bnez	a0,ffffffffc0209200 <sfs_init+0x18>
ffffffffc02091fa:	60a2                	ld	ra,8(sp)
ffffffffc02091fc:	0141                	addi	sp,sp,16
ffffffffc02091fe:	8082                	ret
ffffffffc0209200:	86aa                	mv	a3,a0
ffffffffc0209202:	00006617          	auipc	a2,0x6
ffffffffc0209206:	cee60613          	addi	a2,a2,-786 # ffffffffc020eef0 <dev_node_ops+0x3a8>
ffffffffc020920a:	45c1                	li	a1,16
ffffffffc020920c:	00006517          	auipc	a0,0x6
ffffffffc0209210:	d0450513          	addi	a0,a0,-764 # ffffffffc020ef10 <dev_node_ops+0x3c8>
ffffffffc0209214:	a8af70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209218 <sfs_unmount>:
ffffffffc0209218:	1141                	addi	sp,sp,-16
ffffffffc020921a:	e406                	sd	ra,8(sp)
ffffffffc020921c:	e022                	sd	s0,0(sp)
ffffffffc020921e:	cd1d                	beqz	a0,ffffffffc020925c <sfs_unmount+0x44>
ffffffffc0209220:	0b052783          	lw	a5,176(a0)
ffffffffc0209224:	842a                	mv	s0,a0
ffffffffc0209226:	eb9d                	bnez	a5,ffffffffc020925c <sfs_unmount+0x44>
ffffffffc0209228:	7158                	ld	a4,160(a0)
ffffffffc020922a:	09850793          	addi	a5,a0,152
ffffffffc020922e:	02f71563          	bne	a4,a5,ffffffffc0209258 <sfs_unmount+0x40>
ffffffffc0209232:	613c                	ld	a5,64(a0)
ffffffffc0209234:	e7a1                	bnez	a5,ffffffffc020927c <sfs_unmount+0x64>
ffffffffc0209236:	7d08                	ld	a0,56(a0)
ffffffffc0209238:	f89ff0ef          	jal	ra,ffffffffc02091c0 <bitmap_destroy>
ffffffffc020923c:	6428                	ld	a0,72(s0)
ffffffffc020923e:	f1df80ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc0209242:	7448                	ld	a0,168(s0)
ffffffffc0209244:	f17f80ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc0209248:	8522                	mv	a0,s0
ffffffffc020924a:	f11f80ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc020924e:	4501                	li	a0,0
ffffffffc0209250:	60a2                	ld	ra,8(sp)
ffffffffc0209252:	6402                	ld	s0,0(sp)
ffffffffc0209254:	0141                	addi	sp,sp,16
ffffffffc0209256:	8082                	ret
ffffffffc0209258:	5545                	li	a0,-15
ffffffffc020925a:	bfdd                	j	ffffffffc0209250 <sfs_unmount+0x38>
ffffffffc020925c:	00006697          	auipc	a3,0x6
ffffffffc0209260:	ccc68693          	addi	a3,a3,-820 # ffffffffc020ef28 <dev_node_ops+0x3e0>
ffffffffc0209264:	00003617          	auipc	a2,0x3
ffffffffc0209268:	8ac60613          	addi	a2,a2,-1876 # ffffffffc020bb10 <commands+0x210>
ffffffffc020926c:	04100593          	li	a1,65
ffffffffc0209270:	00006517          	auipc	a0,0x6
ffffffffc0209274:	ce850513          	addi	a0,a0,-792 # ffffffffc020ef58 <dev_node_ops+0x410>
ffffffffc0209278:	a26f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020927c:	00006697          	auipc	a3,0x6
ffffffffc0209280:	cf468693          	addi	a3,a3,-780 # ffffffffc020ef70 <dev_node_ops+0x428>
ffffffffc0209284:	00003617          	auipc	a2,0x3
ffffffffc0209288:	88c60613          	addi	a2,a2,-1908 # ffffffffc020bb10 <commands+0x210>
ffffffffc020928c:	04500593          	li	a1,69
ffffffffc0209290:	00006517          	auipc	a0,0x6
ffffffffc0209294:	cc850513          	addi	a0,a0,-824 # ffffffffc020ef58 <dev_node_ops+0x410>
ffffffffc0209298:	a06f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020929c <sfs_cleanup>:
ffffffffc020929c:	1101                	addi	sp,sp,-32
ffffffffc020929e:	ec06                	sd	ra,24(sp)
ffffffffc02092a0:	e822                	sd	s0,16(sp)
ffffffffc02092a2:	e426                	sd	s1,8(sp)
ffffffffc02092a4:	e04a                	sd	s2,0(sp)
ffffffffc02092a6:	c525                	beqz	a0,ffffffffc020930e <sfs_cleanup+0x72>
ffffffffc02092a8:	0b052783          	lw	a5,176(a0)
ffffffffc02092ac:	84aa                	mv	s1,a0
ffffffffc02092ae:	e3a5                	bnez	a5,ffffffffc020930e <sfs_cleanup+0x72>
ffffffffc02092b0:	4158                	lw	a4,4(a0)
ffffffffc02092b2:	4514                	lw	a3,8(a0)
ffffffffc02092b4:	00c50913          	addi	s2,a0,12
ffffffffc02092b8:	85ca                	mv	a1,s2
ffffffffc02092ba:	40d7063b          	subw	a2,a4,a3
ffffffffc02092be:	00006517          	auipc	a0,0x6
ffffffffc02092c2:	cca50513          	addi	a0,a0,-822 # ffffffffc020ef88 <dev_node_ops+0x440>
ffffffffc02092c6:	ee1f60ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02092ca:	02000413          	li	s0,32
ffffffffc02092ce:	a019                	j	ffffffffc02092d4 <sfs_cleanup+0x38>
ffffffffc02092d0:	347d                	addiw	s0,s0,-1
ffffffffc02092d2:	c819                	beqz	s0,ffffffffc02092e8 <sfs_cleanup+0x4c>
ffffffffc02092d4:	7cdc                	ld	a5,184(s1)
ffffffffc02092d6:	8526                	mv	a0,s1
ffffffffc02092d8:	9782                	jalr	a5
ffffffffc02092da:	f97d                	bnez	a0,ffffffffc02092d0 <sfs_cleanup+0x34>
ffffffffc02092dc:	60e2                	ld	ra,24(sp)
ffffffffc02092de:	6442                	ld	s0,16(sp)
ffffffffc02092e0:	64a2                	ld	s1,8(sp)
ffffffffc02092e2:	6902                	ld	s2,0(sp)
ffffffffc02092e4:	6105                	addi	sp,sp,32
ffffffffc02092e6:	8082                	ret
ffffffffc02092e8:	6442                	ld	s0,16(sp)
ffffffffc02092ea:	60e2                	ld	ra,24(sp)
ffffffffc02092ec:	64a2                	ld	s1,8(sp)
ffffffffc02092ee:	86ca                	mv	a3,s2
ffffffffc02092f0:	6902                	ld	s2,0(sp)
ffffffffc02092f2:	872a                	mv	a4,a0
ffffffffc02092f4:	00006617          	auipc	a2,0x6
ffffffffc02092f8:	cb460613          	addi	a2,a2,-844 # ffffffffc020efa8 <dev_node_ops+0x460>
ffffffffc02092fc:	05f00593          	li	a1,95
ffffffffc0209300:	00006517          	auipc	a0,0x6
ffffffffc0209304:	c5850513          	addi	a0,a0,-936 # ffffffffc020ef58 <dev_node_ops+0x410>
ffffffffc0209308:	6105                	addi	sp,sp,32
ffffffffc020930a:	9fcf706f          	j	ffffffffc0200506 <__warn>
ffffffffc020930e:	00006697          	auipc	a3,0x6
ffffffffc0209312:	c1a68693          	addi	a3,a3,-998 # ffffffffc020ef28 <dev_node_ops+0x3e0>
ffffffffc0209316:	00002617          	auipc	a2,0x2
ffffffffc020931a:	7fa60613          	addi	a2,a2,2042 # ffffffffc020bb10 <commands+0x210>
ffffffffc020931e:	05400593          	li	a1,84
ffffffffc0209322:	00006517          	auipc	a0,0x6
ffffffffc0209326:	c3650513          	addi	a0,a0,-970 # ffffffffc020ef58 <dev_node_ops+0x410>
ffffffffc020932a:	974f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020932e <sfs_sync>:
ffffffffc020932e:	7179                	addi	sp,sp,-48
ffffffffc0209330:	f406                	sd	ra,40(sp)
ffffffffc0209332:	f022                	sd	s0,32(sp)
ffffffffc0209334:	ec26                	sd	s1,24(sp)
ffffffffc0209336:	e84a                	sd	s2,16(sp)
ffffffffc0209338:	e44e                	sd	s3,8(sp)
ffffffffc020933a:	e052                	sd	s4,0(sp)
ffffffffc020933c:	cd4d                	beqz	a0,ffffffffc02093f6 <sfs_sync+0xc8>
ffffffffc020933e:	0b052783          	lw	a5,176(a0)
ffffffffc0209342:	8a2a                	mv	s4,a0
ffffffffc0209344:	ebcd                	bnez	a5,ffffffffc02093f6 <sfs_sync+0xc8>
ffffffffc0209346:	595010ef          	jal	ra,ffffffffc020b0da <lock_sfs_fs>
ffffffffc020934a:	0a0a3403          	ld	s0,160(s4)
ffffffffc020934e:	098a0913          	addi	s2,s4,152
ffffffffc0209352:	02890763          	beq	s2,s0,ffffffffc0209380 <sfs_sync+0x52>
ffffffffc0209356:	00004997          	auipc	s3,0x4
ffffffffc020935a:	2ea98993          	addi	s3,s3,746 # ffffffffc020d640 <default_pmm_manager+0xe90>
ffffffffc020935e:	7c1c                	ld	a5,56(s0)
ffffffffc0209360:	fc840493          	addi	s1,s0,-56
ffffffffc0209364:	cbb5                	beqz	a5,ffffffffc02093d8 <sfs_sync+0xaa>
ffffffffc0209366:	7b9c                	ld	a5,48(a5)
ffffffffc0209368:	cba5                	beqz	a5,ffffffffc02093d8 <sfs_sync+0xaa>
ffffffffc020936a:	85ce                	mv	a1,s3
ffffffffc020936c:	8526                	mv	a0,s1
ffffffffc020936e:	e28fe0ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0209372:	7c1c                	ld	a5,56(s0)
ffffffffc0209374:	8526                	mv	a0,s1
ffffffffc0209376:	7b9c                	ld	a5,48(a5)
ffffffffc0209378:	9782                	jalr	a5
ffffffffc020937a:	6400                	ld	s0,8(s0)
ffffffffc020937c:	fe8911e3          	bne	s2,s0,ffffffffc020935e <sfs_sync+0x30>
ffffffffc0209380:	8552                	mv	a0,s4
ffffffffc0209382:	569010ef          	jal	ra,ffffffffc020b0ea <unlock_sfs_fs>
ffffffffc0209386:	040a3783          	ld	a5,64(s4)
ffffffffc020938a:	4501                	li	a0,0
ffffffffc020938c:	eb89                	bnez	a5,ffffffffc020939e <sfs_sync+0x70>
ffffffffc020938e:	70a2                	ld	ra,40(sp)
ffffffffc0209390:	7402                	ld	s0,32(sp)
ffffffffc0209392:	64e2                	ld	s1,24(sp)
ffffffffc0209394:	6942                	ld	s2,16(sp)
ffffffffc0209396:	69a2                	ld	s3,8(sp)
ffffffffc0209398:	6a02                	ld	s4,0(sp)
ffffffffc020939a:	6145                	addi	sp,sp,48
ffffffffc020939c:	8082                	ret
ffffffffc020939e:	040a3023          	sd	zero,64(s4)
ffffffffc02093a2:	8552                	mv	a0,s4
ffffffffc02093a4:	41b010ef          	jal	ra,ffffffffc020afbe <sfs_sync_super>
ffffffffc02093a8:	cd01                	beqz	a0,ffffffffc02093c0 <sfs_sync+0x92>
ffffffffc02093aa:	70a2                	ld	ra,40(sp)
ffffffffc02093ac:	7402                	ld	s0,32(sp)
ffffffffc02093ae:	4785                	li	a5,1
ffffffffc02093b0:	04fa3023          	sd	a5,64(s4)
ffffffffc02093b4:	64e2                	ld	s1,24(sp)
ffffffffc02093b6:	6942                	ld	s2,16(sp)
ffffffffc02093b8:	69a2                	ld	s3,8(sp)
ffffffffc02093ba:	6a02                	ld	s4,0(sp)
ffffffffc02093bc:	6145                	addi	sp,sp,48
ffffffffc02093be:	8082                	ret
ffffffffc02093c0:	8552                	mv	a0,s4
ffffffffc02093c2:	443010ef          	jal	ra,ffffffffc020b004 <sfs_sync_freemap>
ffffffffc02093c6:	f175                	bnez	a0,ffffffffc02093aa <sfs_sync+0x7c>
ffffffffc02093c8:	70a2                	ld	ra,40(sp)
ffffffffc02093ca:	7402                	ld	s0,32(sp)
ffffffffc02093cc:	64e2                	ld	s1,24(sp)
ffffffffc02093ce:	6942                	ld	s2,16(sp)
ffffffffc02093d0:	69a2                	ld	s3,8(sp)
ffffffffc02093d2:	6a02                	ld	s4,0(sp)
ffffffffc02093d4:	6145                	addi	sp,sp,48
ffffffffc02093d6:	8082                	ret
ffffffffc02093d8:	00004697          	auipc	a3,0x4
ffffffffc02093dc:	21868693          	addi	a3,a3,536 # ffffffffc020d5f0 <default_pmm_manager+0xe40>
ffffffffc02093e0:	00002617          	auipc	a2,0x2
ffffffffc02093e4:	73060613          	addi	a2,a2,1840 # ffffffffc020bb10 <commands+0x210>
ffffffffc02093e8:	45ed                	li	a1,27
ffffffffc02093ea:	00006517          	auipc	a0,0x6
ffffffffc02093ee:	b6e50513          	addi	a0,a0,-1170 # ffffffffc020ef58 <dev_node_ops+0x410>
ffffffffc02093f2:	8acf70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02093f6:	00006697          	auipc	a3,0x6
ffffffffc02093fa:	b3268693          	addi	a3,a3,-1230 # ffffffffc020ef28 <dev_node_ops+0x3e0>
ffffffffc02093fe:	00002617          	auipc	a2,0x2
ffffffffc0209402:	71260613          	addi	a2,a2,1810 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209406:	45d5                	li	a1,21
ffffffffc0209408:	00006517          	auipc	a0,0x6
ffffffffc020940c:	b5050513          	addi	a0,a0,-1200 # ffffffffc020ef58 <dev_node_ops+0x410>
ffffffffc0209410:	88ef70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209414 <sfs_get_root>:
ffffffffc0209414:	1101                	addi	sp,sp,-32
ffffffffc0209416:	ec06                	sd	ra,24(sp)
ffffffffc0209418:	cd09                	beqz	a0,ffffffffc0209432 <sfs_get_root+0x1e>
ffffffffc020941a:	0b052783          	lw	a5,176(a0)
ffffffffc020941e:	eb91                	bnez	a5,ffffffffc0209432 <sfs_get_root+0x1e>
ffffffffc0209420:	4605                	li	a2,1
ffffffffc0209422:	002c                	addi	a1,sp,8
ffffffffc0209424:	3cc010ef          	jal	ra,ffffffffc020a7f0 <sfs_load_inode>
ffffffffc0209428:	e50d                	bnez	a0,ffffffffc0209452 <sfs_get_root+0x3e>
ffffffffc020942a:	60e2                	ld	ra,24(sp)
ffffffffc020942c:	6522                	ld	a0,8(sp)
ffffffffc020942e:	6105                	addi	sp,sp,32
ffffffffc0209430:	8082                	ret
ffffffffc0209432:	00006697          	auipc	a3,0x6
ffffffffc0209436:	af668693          	addi	a3,a3,-1290 # ffffffffc020ef28 <dev_node_ops+0x3e0>
ffffffffc020943a:	00002617          	auipc	a2,0x2
ffffffffc020943e:	6d660613          	addi	a2,a2,1750 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209442:	03600593          	li	a1,54
ffffffffc0209446:	00006517          	auipc	a0,0x6
ffffffffc020944a:	b1250513          	addi	a0,a0,-1262 # ffffffffc020ef58 <dev_node_ops+0x410>
ffffffffc020944e:	850f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209452:	86aa                	mv	a3,a0
ffffffffc0209454:	00006617          	auipc	a2,0x6
ffffffffc0209458:	b7460613          	addi	a2,a2,-1164 # ffffffffc020efc8 <dev_node_ops+0x480>
ffffffffc020945c:	03700593          	li	a1,55
ffffffffc0209460:	00006517          	auipc	a0,0x6
ffffffffc0209464:	af850513          	addi	a0,a0,-1288 # ffffffffc020ef58 <dev_node_ops+0x410>
ffffffffc0209468:	836f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020946c <sfs_do_mount>:
ffffffffc020946c:	6518                	ld	a4,8(a0)
ffffffffc020946e:	7171                	addi	sp,sp,-176
ffffffffc0209470:	f506                	sd	ra,168(sp)
ffffffffc0209472:	f122                	sd	s0,160(sp)
ffffffffc0209474:	ed26                	sd	s1,152(sp)
ffffffffc0209476:	e94a                	sd	s2,144(sp)
ffffffffc0209478:	e54e                	sd	s3,136(sp)
ffffffffc020947a:	e152                	sd	s4,128(sp)
ffffffffc020947c:	fcd6                	sd	s5,120(sp)
ffffffffc020947e:	f8da                	sd	s6,112(sp)
ffffffffc0209480:	f4de                	sd	s7,104(sp)
ffffffffc0209482:	f0e2                	sd	s8,96(sp)
ffffffffc0209484:	ece6                	sd	s9,88(sp)
ffffffffc0209486:	e8ea                	sd	s10,80(sp)
ffffffffc0209488:	e4ee                	sd	s11,72(sp)
ffffffffc020948a:	6785                	lui	a5,0x1
ffffffffc020948c:	24f71663          	bne	a4,a5,ffffffffc02096d8 <sfs_do_mount+0x26c>
ffffffffc0209490:	892a                	mv	s2,a0
ffffffffc0209492:	4501                	li	a0,0
ffffffffc0209494:	8aae                	mv	s5,a1
ffffffffc0209496:	f00fe0ef          	jal	ra,ffffffffc0207b96 <__alloc_fs>
ffffffffc020949a:	842a                	mv	s0,a0
ffffffffc020949c:	24050463          	beqz	a0,ffffffffc02096e4 <sfs_do_mount+0x278>
ffffffffc02094a0:	0b052b03          	lw	s6,176(a0)
ffffffffc02094a4:	260b1263          	bnez	s6,ffffffffc0209708 <sfs_do_mount+0x29c>
ffffffffc02094a8:	03253823          	sd	s2,48(a0)
ffffffffc02094ac:	6505                	lui	a0,0x1
ffffffffc02094ae:	bfdf80ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc02094b2:	e428                	sd	a0,72(s0)
ffffffffc02094b4:	84aa                	mv	s1,a0
ffffffffc02094b6:	16050363          	beqz	a0,ffffffffc020961c <sfs_do_mount+0x1b0>
ffffffffc02094ba:	85aa                	mv	a1,a0
ffffffffc02094bc:	4681                	li	a3,0
ffffffffc02094be:	6605                	lui	a2,0x1
ffffffffc02094c0:	1008                	addi	a0,sp,32
ffffffffc02094c2:	848fc0ef          	jal	ra,ffffffffc020550a <iobuf_init>
ffffffffc02094c6:	02093783          	ld	a5,32(s2)
ffffffffc02094ca:	85aa                	mv	a1,a0
ffffffffc02094cc:	4601                	li	a2,0
ffffffffc02094ce:	854a                	mv	a0,s2
ffffffffc02094d0:	9782                	jalr	a5
ffffffffc02094d2:	8a2a                	mv	s4,a0
ffffffffc02094d4:	10051e63          	bnez	a0,ffffffffc02095f0 <sfs_do_mount+0x184>
ffffffffc02094d8:	408c                	lw	a1,0(s1)
ffffffffc02094da:	2f8dc637          	lui	a2,0x2f8dc
ffffffffc02094de:	e2a60613          	addi	a2,a2,-470 # 2f8dbe2a <_binary_bin_sfs_img_size+0x2f866b2a>
ffffffffc02094e2:	14c59863          	bne	a1,a2,ffffffffc0209632 <sfs_do_mount+0x1c6>
ffffffffc02094e6:	40dc                	lw	a5,4(s1)
ffffffffc02094e8:	00093603          	ld	a2,0(s2)
ffffffffc02094ec:	02079713          	slli	a4,a5,0x20
ffffffffc02094f0:	9301                	srli	a4,a4,0x20
ffffffffc02094f2:	12e66763          	bltu	a2,a4,ffffffffc0209620 <sfs_do_mount+0x1b4>
ffffffffc02094f6:	020485a3          	sb	zero,43(s1)
ffffffffc02094fa:	0084af03          	lw	t5,8(s1)
ffffffffc02094fe:	00c4ae83          	lw	t4,12(s1)
ffffffffc0209502:	0104ae03          	lw	t3,16(s1)
ffffffffc0209506:	0144a303          	lw	t1,20(s1)
ffffffffc020950a:	0184a883          	lw	a7,24(s1)
ffffffffc020950e:	01c4a803          	lw	a6,28(s1)
ffffffffc0209512:	5090                	lw	a2,32(s1)
ffffffffc0209514:	50d4                	lw	a3,36(s1)
ffffffffc0209516:	5498                	lw	a4,40(s1)
ffffffffc0209518:	6511                	lui	a0,0x4
ffffffffc020951a:	c00c                	sw	a1,0(s0)
ffffffffc020951c:	c05c                	sw	a5,4(s0)
ffffffffc020951e:	01e42423          	sw	t5,8(s0)
ffffffffc0209522:	01d42623          	sw	t4,12(s0)
ffffffffc0209526:	01c42823          	sw	t3,16(s0)
ffffffffc020952a:	00642a23          	sw	t1,20(s0)
ffffffffc020952e:	01142c23          	sw	a7,24(s0)
ffffffffc0209532:	01042e23          	sw	a6,28(s0)
ffffffffc0209536:	d010                	sw	a2,32(s0)
ffffffffc0209538:	d054                	sw	a3,36(s0)
ffffffffc020953a:	d418                	sw	a4,40(s0)
ffffffffc020953c:	b6ff80ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc0209540:	f448                	sd	a0,168(s0)
ffffffffc0209542:	8c2a                	mv	s8,a0
ffffffffc0209544:	18050c63          	beqz	a0,ffffffffc02096dc <sfs_do_mount+0x270>
ffffffffc0209548:	6711                	lui	a4,0x4
ffffffffc020954a:	87aa                	mv	a5,a0
ffffffffc020954c:	972a                	add	a4,a4,a0
ffffffffc020954e:	e79c                	sd	a5,8(a5)
ffffffffc0209550:	e39c                	sd	a5,0(a5)
ffffffffc0209552:	07c1                	addi	a5,a5,16
ffffffffc0209554:	fee79de3          	bne	a5,a4,ffffffffc020954e <sfs_do_mount+0xe2>
ffffffffc0209558:	0044eb83          	lwu	s7,4(s1)
ffffffffc020955c:	67a1                	lui	a5,0x8
ffffffffc020955e:	fff78993          	addi	s3,a5,-1 # 7fff <_binary_bin_swap_img_size+0x2ff>
ffffffffc0209562:	9bce                	add	s7,s7,s3
ffffffffc0209564:	77e1                	lui	a5,0xffff8
ffffffffc0209566:	00fbfbb3          	and	s7,s7,a5
ffffffffc020956a:	2b81                	sext.w	s7,s7
ffffffffc020956c:	855e                	mv	a0,s7
ffffffffc020956e:	a59ff0ef          	jal	ra,ffffffffc0208fc6 <bitmap_create>
ffffffffc0209572:	fc08                	sd	a0,56(s0)
ffffffffc0209574:	8d2a                	mv	s10,a0
ffffffffc0209576:	14050f63          	beqz	a0,ffffffffc02096d4 <sfs_do_mount+0x268>
ffffffffc020957a:	0044e783          	lwu	a5,4(s1)
ffffffffc020957e:	082c                	addi	a1,sp,24
ffffffffc0209580:	97ce                	add	a5,a5,s3
ffffffffc0209582:	00f7d713          	srli	a4,a5,0xf
ffffffffc0209586:	e43a                	sd	a4,8(sp)
ffffffffc0209588:	40f7d993          	srai	s3,a5,0xf
ffffffffc020958c:	c4fff0ef          	jal	ra,ffffffffc02091da <bitmap_getdata>
ffffffffc0209590:	14050c63          	beqz	a0,ffffffffc02096e8 <sfs_do_mount+0x27c>
ffffffffc0209594:	00c9979b          	slliw	a5,s3,0xc
ffffffffc0209598:	66e2                	ld	a3,24(sp)
ffffffffc020959a:	1782                	slli	a5,a5,0x20
ffffffffc020959c:	9381                	srli	a5,a5,0x20
ffffffffc020959e:	14d79563          	bne	a5,a3,ffffffffc02096e8 <sfs_do_mount+0x27c>
ffffffffc02095a2:	6722                	ld	a4,8(sp)
ffffffffc02095a4:	6d89                	lui	s11,0x2
ffffffffc02095a6:	89aa                	mv	s3,a0
ffffffffc02095a8:	00c71c93          	slli	s9,a4,0xc
ffffffffc02095ac:	9caa                	add	s9,s9,a0
ffffffffc02095ae:	40ad8dbb          	subw	s11,s11,a0
ffffffffc02095b2:	e711                	bnez	a4,ffffffffc02095be <sfs_do_mount+0x152>
ffffffffc02095b4:	a079                	j	ffffffffc0209642 <sfs_do_mount+0x1d6>
ffffffffc02095b6:	6785                	lui	a5,0x1
ffffffffc02095b8:	99be                	add	s3,s3,a5
ffffffffc02095ba:	093c8463          	beq	s9,s3,ffffffffc0209642 <sfs_do_mount+0x1d6>
ffffffffc02095be:	013d86bb          	addw	a3,s11,s3
ffffffffc02095c2:	1682                	slli	a3,a3,0x20
ffffffffc02095c4:	6605                	lui	a2,0x1
ffffffffc02095c6:	85ce                	mv	a1,s3
ffffffffc02095c8:	9281                	srli	a3,a3,0x20
ffffffffc02095ca:	1008                	addi	a0,sp,32
ffffffffc02095cc:	f3ffb0ef          	jal	ra,ffffffffc020550a <iobuf_init>
ffffffffc02095d0:	02093783          	ld	a5,32(s2)
ffffffffc02095d4:	85aa                	mv	a1,a0
ffffffffc02095d6:	4601                	li	a2,0
ffffffffc02095d8:	854a                	mv	a0,s2
ffffffffc02095da:	9782                	jalr	a5
ffffffffc02095dc:	dd69                	beqz	a0,ffffffffc02095b6 <sfs_do_mount+0x14a>
ffffffffc02095de:	e42a                	sd	a0,8(sp)
ffffffffc02095e0:	856a                	mv	a0,s10
ffffffffc02095e2:	bdfff0ef          	jal	ra,ffffffffc02091c0 <bitmap_destroy>
ffffffffc02095e6:	67a2                	ld	a5,8(sp)
ffffffffc02095e8:	8a3e                	mv	s4,a5
ffffffffc02095ea:	8562                	mv	a0,s8
ffffffffc02095ec:	b6ff80ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc02095f0:	8526                	mv	a0,s1
ffffffffc02095f2:	b69f80ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc02095f6:	8522                	mv	a0,s0
ffffffffc02095f8:	b63f80ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc02095fc:	70aa                	ld	ra,168(sp)
ffffffffc02095fe:	740a                	ld	s0,160(sp)
ffffffffc0209600:	64ea                	ld	s1,152(sp)
ffffffffc0209602:	694a                	ld	s2,144(sp)
ffffffffc0209604:	69aa                	ld	s3,136(sp)
ffffffffc0209606:	7ae6                	ld	s5,120(sp)
ffffffffc0209608:	7b46                	ld	s6,112(sp)
ffffffffc020960a:	7ba6                	ld	s7,104(sp)
ffffffffc020960c:	7c06                	ld	s8,96(sp)
ffffffffc020960e:	6ce6                	ld	s9,88(sp)
ffffffffc0209610:	6d46                	ld	s10,80(sp)
ffffffffc0209612:	6da6                	ld	s11,72(sp)
ffffffffc0209614:	8552                	mv	a0,s4
ffffffffc0209616:	6a0a                	ld	s4,128(sp)
ffffffffc0209618:	614d                	addi	sp,sp,176
ffffffffc020961a:	8082                	ret
ffffffffc020961c:	5a71                	li	s4,-4
ffffffffc020961e:	bfe1                	j	ffffffffc02095f6 <sfs_do_mount+0x18a>
ffffffffc0209620:	85be                	mv	a1,a5
ffffffffc0209622:	00006517          	auipc	a0,0x6
ffffffffc0209626:	9fe50513          	addi	a0,a0,-1538 # ffffffffc020f020 <dev_node_ops+0x4d8>
ffffffffc020962a:	b7df60ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020962e:	5a75                	li	s4,-3
ffffffffc0209630:	b7c1                	j	ffffffffc02095f0 <sfs_do_mount+0x184>
ffffffffc0209632:	00006517          	auipc	a0,0x6
ffffffffc0209636:	9b650513          	addi	a0,a0,-1610 # ffffffffc020efe8 <dev_node_ops+0x4a0>
ffffffffc020963a:	b6df60ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020963e:	5a75                	li	s4,-3
ffffffffc0209640:	bf45                	j	ffffffffc02095f0 <sfs_do_mount+0x184>
ffffffffc0209642:	00442903          	lw	s2,4(s0)
ffffffffc0209646:	4481                	li	s1,0
ffffffffc0209648:	080b8c63          	beqz	s7,ffffffffc02096e0 <sfs_do_mount+0x274>
ffffffffc020964c:	85a6                	mv	a1,s1
ffffffffc020964e:	856a                	mv	a0,s10
ffffffffc0209650:	af7ff0ef          	jal	ra,ffffffffc0209146 <bitmap_test>
ffffffffc0209654:	c111                	beqz	a0,ffffffffc0209658 <sfs_do_mount+0x1ec>
ffffffffc0209656:	2b05                	addiw	s6,s6,1
ffffffffc0209658:	2485                	addiw	s1,s1,1
ffffffffc020965a:	fe9b99e3          	bne	s7,s1,ffffffffc020964c <sfs_do_mount+0x1e0>
ffffffffc020965e:	441c                	lw	a5,8(s0)
ffffffffc0209660:	0d679463          	bne	a5,s6,ffffffffc0209728 <sfs_do_mount+0x2bc>
ffffffffc0209664:	4585                	li	a1,1
ffffffffc0209666:	05040513          	addi	a0,s0,80
ffffffffc020966a:	04043023          	sd	zero,64(s0)
ffffffffc020966e:	814fb0ef          	jal	ra,ffffffffc0204682 <sem_init>
ffffffffc0209672:	4585                	li	a1,1
ffffffffc0209674:	06840513          	addi	a0,s0,104
ffffffffc0209678:	80afb0ef          	jal	ra,ffffffffc0204682 <sem_init>
ffffffffc020967c:	4585                	li	a1,1
ffffffffc020967e:	08040513          	addi	a0,s0,128
ffffffffc0209682:	800fb0ef          	jal	ra,ffffffffc0204682 <sem_init>
ffffffffc0209686:	09840793          	addi	a5,s0,152
ffffffffc020968a:	f05c                	sd	a5,160(s0)
ffffffffc020968c:	ec5c                	sd	a5,152(s0)
ffffffffc020968e:	874a                	mv	a4,s2
ffffffffc0209690:	86da                	mv	a3,s6
ffffffffc0209692:	4169063b          	subw	a2,s2,s6
ffffffffc0209696:	00c40593          	addi	a1,s0,12
ffffffffc020969a:	00006517          	auipc	a0,0x6
ffffffffc020969e:	a1650513          	addi	a0,a0,-1514 # ffffffffc020f0b0 <dev_node_ops+0x568>
ffffffffc02096a2:	b05f60ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02096a6:	00000797          	auipc	a5,0x0
ffffffffc02096aa:	c8878793          	addi	a5,a5,-888 # ffffffffc020932e <sfs_sync>
ffffffffc02096ae:	fc5c                	sd	a5,184(s0)
ffffffffc02096b0:	00000797          	auipc	a5,0x0
ffffffffc02096b4:	d6478793          	addi	a5,a5,-668 # ffffffffc0209414 <sfs_get_root>
ffffffffc02096b8:	e07c                	sd	a5,192(s0)
ffffffffc02096ba:	00000797          	auipc	a5,0x0
ffffffffc02096be:	b5e78793          	addi	a5,a5,-1186 # ffffffffc0209218 <sfs_unmount>
ffffffffc02096c2:	e47c                	sd	a5,200(s0)
ffffffffc02096c4:	00000797          	auipc	a5,0x0
ffffffffc02096c8:	bd878793          	addi	a5,a5,-1064 # ffffffffc020929c <sfs_cleanup>
ffffffffc02096cc:	e87c                	sd	a5,208(s0)
ffffffffc02096ce:	008ab023          	sd	s0,0(s5)
ffffffffc02096d2:	b72d                	j	ffffffffc02095fc <sfs_do_mount+0x190>
ffffffffc02096d4:	5a71                	li	s4,-4
ffffffffc02096d6:	bf11                	j	ffffffffc02095ea <sfs_do_mount+0x17e>
ffffffffc02096d8:	5a49                	li	s4,-14
ffffffffc02096da:	b70d                	j	ffffffffc02095fc <sfs_do_mount+0x190>
ffffffffc02096dc:	5a71                	li	s4,-4
ffffffffc02096de:	bf09                	j	ffffffffc02095f0 <sfs_do_mount+0x184>
ffffffffc02096e0:	4b01                	li	s6,0
ffffffffc02096e2:	bfb5                	j	ffffffffc020965e <sfs_do_mount+0x1f2>
ffffffffc02096e4:	5a71                	li	s4,-4
ffffffffc02096e6:	bf19                	j	ffffffffc02095fc <sfs_do_mount+0x190>
ffffffffc02096e8:	00006697          	auipc	a3,0x6
ffffffffc02096ec:	96868693          	addi	a3,a3,-1688 # ffffffffc020f050 <dev_node_ops+0x508>
ffffffffc02096f0:	00002617          	auipc	a2,0x2
ffffffffc02096f4:	42060613          	addi	a2,a2,1056 # ffffffffc020bb10 <commands+0x210>
ffffffffc02096f8:	08300593          	li	a1,131
ffffffffc02096fc:	00006517          	auipc	a0,0x6
ffffffffc0209700:	85c50513          	addi	a0,a0,-1956 # ffffffffc020ef58 <dev_node_ops+0x410>
ffffffffc0209704:	d9bf60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209708:	00006697          	auipc	a3,0x6
ffffffffc020970c:	82068693          	addi	a3,a3,-2016 # ffffffffc020ef28 <dev_node_ops+0x3e0>
ffffffffc0209710:	00002617          	auipc	a2,0x2
ffffffffc0209714:	40060613          	addi	a2,a2,1024 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209718:	0a300593          	li	a1,163
ffffffffc020971c:	00006517          	auipc	a0,0x6
ffffffffc0209720:	83c50513          	addi	a0,a0,-1988 # ffffffffc020ef58 <dev_node_ops+0x410>
ffffffffc0209724:	d7bf60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209728:	00006697          	auipc	a3,0x6
ffffffffc020972c:	95868693          	addi	a3,a3,-1704 # ffffffffc020f080 <dev_node_ops+0x538>
ffffffffc0209730:	00002617          	auipc	a2,0x2
ffffffffc0209734:	3e060613          	addi	a2,a2,992 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209738:	0e000593          	li	a1,224
ffffffffc020973c:	00006517          	auipc	a0,0x6
ffffffffc0209740:	81c50513          	addi	a0,a0,-2020 # ffffffffc020ef58 <dev_node_ops+0x410>
ffffffffc0209744:	d5bf60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209748 <sfs_mount>:
ffffffffc0209748:	00000597          	auipc	a1,0x0
ffffffffc020974c:	d2458593          	addi	a1,a1,-732 # ffffffffc020946c <sfs_do_mount>
ffffffffc0209750:	817fe06f          	j	ffffffffc0207f66 <vfs_mount>

ffffffffc0209754 <sfs_opendir>:
ffffffffc0209754:	0235f593          	andi	a1,a1,35
ffffffffc0209758:	4501                	li	a0,0
ffffffffc020975a:	e191                	bnez	a1,ffffffffc020975e <sfs_opendir+0xa>
ffffffffc020975c:	8082                	ret
ffffffffc020975e:	553d                	li	a0,-17
ffffffffc0209760:	8082                	ret

ffffffffc0209762 <sfs_openfile>:
ffffffffc0209762:	4501                	li	a0,0
ffffffffc0209764:	8082                	ret

ffffffffc0209766 <sfs_gettype>:
ffffffffc0209766:	1141                	addi	sp,sp,-16
ffffffffc0209768:	e406                	sd	ra,8(sp)
ffffffffc020976a:	c939                	beqz	a0,ffffffffc02097c0 <sfs_gettype+0x5a>
ffffffffc020976c:	4d34                	lw	a3,88(a0)
ffffffffc020976e:	6785                	lui	a5,0x1
ffffffffc0209770:	23578713          	addi	a4,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc0209774:	04e69663          	bne	a3,a4,ffffffffc02097c0 <sfs_gettype+0x5a>
ffffffffc0209778:	6114                	ld	a3,0(a0)
ffffffffc020977a:	4709                	li	a4,2
ffffffffc020977c:	0046d683          	lhu	a3,4(a3)
ffffffffc0209780:	02e68a63          	beq	a3,a4,ffffffffc02097b4 <sfs_gettype+0x4e>
ffffffffc0209784:	470d                	li	a4,3
ffffffffc0209786:	02e68163          	beq	a3,a4,ffffffffc02097a8 <sfs_gettype+0x42>
ffffffffc020978a:	4705                	li	a4,1
ffffffffc020978c:	00e68f63          	beq	a3,a4,ffffffffc02097aa <sfs_gettype+0x44>
ffffffffc0209790:	00006617          	auipc	a2,0x6
ffffffffc0209794:	99060613          	addi	a2,a2,-1648 # ffffffffc020f120 <dev_node_ops+0x5d8>
ffffffffc0209798:	3a400593          	li	a1,932
ffffffffc020979c:	00006517          	auipc	a0,0x6
ffffffffc02097a0:	96c50513          	addi	a0,a0,-1684 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc02097a4:	cfbf60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02097a8:	678d                	lui	a5,0x3
ffffffffc02097aa:	60a2                	ld	ra,8(sp)
ffffffffc02097ac:	c19c                	sw	a5,0(a1)
ffffffffc02097ae:	4501                	li	a0,0
ffffffffc02097b0:	0141                	addi	sp,sp,16
ffffffffc02097b2:	8082                	ret
ffffffffc02097b4:	60a2                	ld	ra,8(sp)
ffffffffc02097b6:	6789                	lui	a5,0x2
ffffffffc02097b8:	c19c                	sw	a5,0(a1)
ffffffffc02097ba:	4501                	li	a0,0
ffffffffc02097bc:	0141                	addi	sp,sp,16
ffffffffc02097be:	8082                	ret
ffffffffc02097c0:	00006697          	auipc	a3,0x6
ffffffffc02097c4:	91068693          	addi	a3,a3,-1776 # ffffffffc020f0d0 <dev_node_ops+0x588>
ffffffffc02097c8:	00002617          	auipc	a2,0x2
ffffffffc02097cc:	34860613          	addi	a2,a2,840 # ffffffffc020bb10 <commands+0x210>
ffffffffc02097d0:	39800593          	li	a1,920
ffffffffc02097d4:	00006517          	auipc	a0,0x6
ffffffffc02097d8:	93450513          	addi	a0,a0,-1740 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc02097dc:	cc3f60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02097e0 <sfs_fsync>:
ffffffffc02097e0:	7179                	addi	sp,sp,-48
ffffffffc02097e2:	ec26                	sd	s1,24(sp)
ffffffffc02097e4:	7524                	ld	s1,104(a0)
ffffffffc02097e6:	f406                	sd	ra,40(sp)
ffffffffc02097e8:	f022                	sd	s0,32(sp)
ffffffffc02097ea:	e84a                	sd	s2,16(sp)
ffffffffc02097ec:	e44e                	sd	s3,8(sp)
ffffffffc02097ee:	c4bd                	beqz	s1,ffffffffc020985c <sfs_fsync+0x7c>
ffffffffc02097f0:	0b04a783          	lw	a5,176(s1)
ffffffffc02097f4:	e7a5                	bnez	a5,ffffffffc020985c <sfs_fsync+0x7c>
ffffffffc02097f6:	4d38                	lw	a4,88(a0)
ffffffffc02097f8:	6785                	lui	a5,0x1
ffffffffc02097fa:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc02097fe:	842a                	mv	s0,a0
ffffffffc0209800:	06f71e63          	bne	a4,a5,ffffffffc020987c <sfs_fsync+0x9c>
ffffffffc0209804:	691c                	ld	a5,16(a0)
ffffffffc0209806:	4901                	li	s2,0
ffffffffc0209808:	eb89                	bnez	a5,ffffffffc020981a <sfs_fsync+0x3a>
ffffffffc020980a:	70a2                	ld	ra,40(sp)
ffffffffc020980c:	7402                	ld	s0,32(sp)
ffffffffc020980e:	64e2                	ld	s1,24(sp)
ffffffffc0209810:	69a2                	ld	s3,8(sp)
ffffffffc0209812:	854a                	mv	a0,s2
ffffffffc0209814:	6942                	ld	s2,16(sp)
ffffffffc0209816:	6145                	addi	sp,sp,48
ffffffffc0209818:	8082                	ret
ffffffffc020981a:	02050993          	addi	s3,a0,32
ffffffffc020981e:	854e                	mv	a0,s3
ffffffffc0209820:	e6dfa0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc0209824:	681c                	ld	a5,16(s0)
ffffffffc0209826:	ef81                	bnez	a5,ffffffffc020983e <sfs_fsync+0x5e>
ffffffffc0209828:	854e                	mv	a0,s3
ffffffffc020982a:	e5ffa0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc020982e:	70a2                	ld	ra,40(sp)
ffffffffc0209830:	7402                	ld	s0,32(sp)
ffffffffc0209832:	64e2                	ld	s1,24(sp)
ffffffffc0209834:	69a2                	ld	s3,8(sp)
ffffffffc0209836:	854a                	mv	a0,s2
ffffffffc0209838:	6942                	ld	s2,16(sp)
ffffffffc020983a:	6145                	addi	sp,sp,48
ffffffffc020983c:	8082                	ret
ffffffffc020983e:	4414                	lw	a3,8(s0)
ffffffffc0209840:	600c                	ld	a1,0(s0)
ffffffffc0209842:	00043823          	sd	zero,16(s0)
ffffffffc0209846:	4701                	li	a4,0
ffffffffc0209848:	04000613          	li	a2,64
ffffffffc020984c:	8526                	mv	a0,s1
ffffffffc020984e:	6dc010ef          	jal	ra,ffffffffc020af2a <sfs_wbuf>
ffffffffc0209852:	892a                	mv	s2,a0
ffffffffc0209854:	d971                	beqz	a0,ffffffffc0209828 <sfs_fsync+0x48>
ffffffffc0209856:	4785                	li	a5,1
ffffffffc0209858:	e81c                	sd	a5,16(s0)
ffffffffc020985a:	b7f9                	j	ffffffffc0209828 <sfs_fsync+0x48>
ffffffffc020985c:	00005697          	auipc	a3,0x5
ffffffffc0209860:	6cc68693          	addi	a3,a3,1740 # ffffffffc020ef28 <dev_node_ops+0x3e0>
ffffffffc0209864:	00002617          	auipc	a2,0x2
ffffffffc0209868:	2ac60613          	addi	a2,a2,684 # ffffffffc020bb10 <commands+0x210>
ffffffffc020986c:	2dc00593          	li	a1,732
ffffffffc0209870:	00006517          	auipc	a0,0x6
ffffffffc0209874:	89850513          	addi	a0,a0,-1896 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209878:	c27f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020987c:	00006697          	auipc	a3,0x6
ffffffffc0209880:	85468693          	addi	a3,a3,-1964 # ffffffffc020f0d0 <dev_node_ops+0x588>
ffffffffc0209884:	00002617          	auipc	a2,0x2
ffffffffc0209888:	28c60613          	addi	a2,a2,652 # ffffffffc020bb10 <commands+0x210>
ffffffffc020988c:	2dd00593          	li	a1,733
ffffffffc0209890:	00006517          	auipc	a0,0x6
ffffffffc0209894:	87850513          	addi	a0,a0,-1928 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209898:	c07f60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020989c <sfs_fstat>:
ffffffffc020989c:	1101                	addi	sp,sp,-32
ffffffffc020989e:	e426                	sd	s1,8(sp)
ffffffffc02098a0:	84ae                	mv	s1,a1
ffffffffc02098a2:	e822                	sd	s0,16(sp)
ffffffffc02098a4:	02000613          	li	a2,32
ffffffffc02098a8:	842a                	mv	s0,a0
ffffffffc02098aa:	4581                	li	a1,0
ffffffffc02098ac:	8526                	mv	a0,s1
ffffffffc02098ae:	ec06                	sd	ra,24(sp)
ffffffffc02098b0:	57f010ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc02098b4:	c439                	beqz	s0,ffffffffc0209902 <sfs_fstat+0x66>
ffffffffc02098b6:	783c                	ld	a5,112(s0)
ffffffffc02098b8:	c7a9                	beqz	a5,ffffffffc0209902 <sfs_fstat+0x66>
ffffffffc02098ba:	6bbc                	ld	a5,80(a5)
ffffffffc02098bc:	c3b9                	beqz	a5,ffffffffc0209902 <sfs_fstat+0x66>
ffffffffc02098be:	00005597          	auipc	a1,0x5
ffffffffc02098c2:	20258593          	addi	a1,a1,514 # ffffffffc020eac0 <syscalls+0xdb0>
ffffffffc02098c6:	8522                	mv	a0,s0
ffffffffc02098c8:	8cefe0ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc02098cc:	783c                	ld	a5,112(s0)
ffffffffc02098ce:	85a6                	mv	a1,s1
ffffffffc02098d0:	8522                	mv	a0,s0
ffffffffc02098d2:	6bbc                	ld	a5,80(a5)
ffffffffc02098d4:	9782                	jalr	a5
ffffffffc02098d6:	e10d                	bnez	a0,ffffffffc02098f8 <sfs_fstat+0x5c>
ffffffffc02098d8:	4c38                	lw	a4,88(s0)
ffffffffc02098da:	6785                	lui	a5,0x1
ffffffffc02098dc:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc02098e0:	04f71163          	bne	a4,a5,ffffffffc0209922 <sfs_fstat+0x86>
ffffffffc02098e4:	601c                	ld	a5,0(s0)
ffffffffc02098e6:	0067d683          	lhu	a3,6(a5)
ffffffffc02098ea:	0087e703          	lwu	a4,8(a5)
ffffffffc02098ee:	0007e783          	lwu	a5,0(a5)
ffffffffc02098f2:	e494                	sd	a3,8(s1)
ffffffffc02098f4:	e898                	sd	a4,16(s1)
ffffffffc02098f6:	ec9c                	sd	a5,24(s1)
ffffffffc02098f8:	60e2                	ld	ra,24(sp)
ffffffffc02098fa:	6442                	ld	s0,16(sp)
ffffffffc02098fc:	64a2                	ld	s1,8(sp)
ffffffffc02098fe:	6105                	addi	sp,sp,32
ffffffffc0209900:	8082                	ret
ffffffffc0209902:	00005697          	auipc	a3,0x5
ffffffffc0209906:	15668693          	addi	a3,a3,342 # ffffffffc020ea58 <syscalls+0xd48>
ffffffffc020990a:	00002617          	auipc	a2,0x2
ffffffffc020990e:	20660613          	addi	a2,a2,518 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209912:	2cd00593          	li	a1,717
ffffffffc0209916:	00005517          	auipc	a0,0x5
ffffffffc020991a:	7f250513          	addi	a0,a0,2034 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020991e:	b81f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209922:	00005697          	auipc	a3,0x5
ffffffffc0209926:	7ae68693          	addi	a3,a3,1966 # ffffffffc020f0d0 <dev_node_ops+0x588>
ffffffffc020992a:	00002617          	auipc	a2,0x2
ffffffffc020992e:	1e660613          	addi	a2,a2,486 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209932:	2d000593          	li	a1,720
ffffffffc0209936:	00005517          	auipc	a0,0x5
ffffffffc020993a:	7d250513          	addi	a0,a0,2002 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020993e:	b61f60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209942 <sfs_tryseek>:
ffffffffc0209942:	080007b7          	lui	a5,0x8000
ffffffffc0209946:	04f5fd63          	bgeu	a1,a5,ffffffffc02099a0 <sfs_tryseek+0x5e>
ffffffffc020994a:	1101                	addi	sp,sp,-32
ffffffffc020994c:	e822                	sd	s0,16(sp)
ffffffffc020994e:	ec06                	sd	ra,24(sp)
ffffffffc0209950:	e426                	sd	s1,8(sp)
ffffffffc0209952:	842a                	mv	s0,a0
ffffffffc0209954:	c921                	beqz	a0,ffffffffc02099a4 <sfs_tryseek+0x62>
ffffffffc0209956:	4d38                	lw	a4,88(a0)
ffffffffc0209958:	6785                	lui	a5,0x1
ffffffffc020995a:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020995e:	04f71363          	bne	a4,a5,ffffffffc02099a4 <sfs_tryseek+0x62>
ffffffffc0209962:	611c                	ld	a5,0(a0)
ffffffffc0209964:	84ae                	mv	s1,a1
ffffffffc0209966:	0007e783          	lwu	a5,0(a5)
ffffffffc020996a:	02b7d563          	bge	a5,a1,ffffffffc0209994 <sfs_tryseek+0x52>
ffffffffc020996e:	793c                	ld	a5,112(a0)
ffffffffc0209970:	cbb1                	beqz	a5,ffffffffc02099c4 <sfs_tryseek+0x82>
ffffffffc0209972:	73bc                	ld	a5,96(a5)
ffffffffc0209974:	cba1                	beqz	a5,ffffffffc02099c4 <sfs_tryseek+0x82>
ffffffffc0209976:	00005597          	auipc	a1,0x5
ffffffffc020997a:	03a58593          	addi	a1,a1,58 # ffffffffc020e9b0 <syscalls+0xca0>
ffffffffc020997e:	818fe0ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0209982:	783c                	ld	a5,112(s0)
ffffffffc0209984:	8522                	mv	a0,s0
ffffffffc0209986:	6442                	ld	s0,16(sp)
ffffffffc0209988:	60e2                	ld	ra,24(sp)
ffffffffc020998a:	73bc                	ld	a5,96(a5)
ffffffffc020998c:	85a6                	mv	a1,s1
ffffffffc020998e:	64a2                	ld	s1,8(sp)
ffffffffc0209990:	6105                	addi	sp,sp,32
ffffffffc0209992:	8782                	jr	a5
ffffffffc0209994:	60e2                	ld	ra,24(sp)
ffffffffc0209996:	6442                	ld	s0,16(sp)
ffffffffc0209998:	64a2                	ld	s1,8(sp)
ffffffffc020999a:	4501                	li	a0,0
ffffffffc020999c:	6105                	addi	sp,sp,32
ffffffffc020999e:	8082                	ret
ffffffffc02099a0:	5575                	li	a0,-3
ffffffffc02099a2:	8082                	ret
ffffffffc02099a4:	00005697          	auipc	a3,0x5
ffffffffc02099a8:	72c68693          	addi	a3,a3,1836 # ffffffffc020f0d0 <dev_node_ops+0x588>
ffffffffc02099ac:	00002617          	auipc	a2,0x2
ffffffffc02099b0:	16460613          	addi	a2,a2,356 # ffffffffc020bb10 <commands+0x210>
ffffffffc02099b4:	3af00593          	li	a1,943
ffffffffc02099b8:	00005517          	auipc	a0,0x5
ffffffffc02099bc:	75050513          	addi	a0,a0,1872 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc02099c0:	adff60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02099c4:	00005697          	auipc	a3,0x5
ffffffffc02099c8:	f9468693          	addi	a3,a3,-108 # ffffffffc020e958 <syscalls+0xc48>
ffffffffc02099cc:	00002617          	auipc	a2,0x2
ffffffffc02099d0:	14460613          	addi	a2,a2,324 # ffffffffc020bb10 <commands+0x210>
ffffffffc02099d4:	3b100593          	li	a1,945
ffffffffc02099d8:	00005517          	auipc	a0,0x5
ffffffffc02099dc:	73050513          	addi	a0,a0,1840 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc02099e0:	abff60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02099e4 <sfs_close>:
ffffffffc02099e4:	1141                	addi	sp,sp,-16
ffffffffc02099e6:	e406                	sd	ra,8(sp)
ffffffffc02099e8:	e022                	sd	s0,0(sp)
ffffffffc02099ea:	c11d                	beqz	a0,ffffffffc0209a10 <sfs_close+0x2c>
ffffffffc02099ec:	793c                	ld	a5,112(a0)
ffffffffc02099ee:	842a                	mv	s0,a0
ffffffffc02099f0:	c385                	beqz	a5,ffffffffc0209a10 <sfs_close+0x2c>
ffffffffc02099f2:	7b9c                	ld	a5,48(a5)
ffffffffc02099f4:	cf91                	beqz	a5,ffffffffc0209a10 <sfs_close+0x2c>
ffffffffc02099f6:	00004597          	auipc	a1,0x4
ffffffffc02099fa:	c4a58593          	addi	a1,a1,-950 # ffffffffc020d640 <default_pmm_manager+0xe90>
ffffffffc02099fe:	f99fd0ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0209a02:	783c                	ld	a5,112(s0)
ffffffffc0209a04:	8522                	mv	a0,s0
ffffffffc0209a06:	6402                	ld	s0,0(sp)
ffffffffc0209a08:	60a2                	ld	ra,8(sp)
ffffffffc0209a0a:	7b9c                	ld	a5,48(a5)
ffffffffc0209a0c:	0141                	addi	sp,sp,16
ffffffffc0209a0e:	8782                	jr	a5
ffffffffc0209a10:	00004697          	auipc	a3,0x4
ffffffffc0209a14:	be068693          	addi	a3,a3,-1056 # ffffffffc020d5f0 <default_pmm_manager+0xe40>
ffffffffc0209a18:	00002617          	auipc	a2,0x2
ffffffffc0209a1c:	0f860613          	addi	a2,a2,248 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209a20:	21c00593          	li	a1,540
ffffffffc0209a24:	00005517          	auipc	a0,0x5
ffffffffc0209a28:	6e450513          	addi	a0,a0,1764 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209a2c:	a73f60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209a30 <sfs_io.part.0>:
ffffffffc0209a30:	1141                	addi	sp,sp,-16
ffffffffc0209a32:	00005697          	auipc	a3,0x5
ffffffffc0209a36:	69e68693          	addi	a3,a3,1694 # ffffffffc020f0d0 <dev_node_ops+0x588>
ffffffffc0209a3a:	00002617          	auipc	a2,0x2
ffffffffc0209a3e:	0d660613          	addi	a2,a2,214 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209a42:	2ac00593          	li	a1,684
ffffffffc0209a46:	00005517          	auipc	a0,0x5
ffffffffc0209a4a:	6c250513          	addi	a0,a0,1730 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209a4e:	e406                	sd	ra,8(sp)
ffffffffc0209a50:	a4ff60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209a54 <sfs_block_free>:
ffffffffc0209a54:	1101                	addi	sp,sp,-32
ffffffffc0209a56:	e426                	sd	s1,8(sp)
ffffffffc0209a58:	ec06                	sd	ra,24(sp)
ffffffffc0209a5a:	e822                	sd	s0,16(sp)
ffffffffc0209a5c:	4154                	lw	a3,4(a0)
ffffffffc0209a5e:	84ae                	mv	s1,a1
ffffffffc0209a60:	c595                	beqz	a1,ffffffffc0209a8c <sfs_block_free+0x38>
ffffffffc0209a62:	02d5f563          	bgeu	a1,a3,ffffffffc0209a8c <sfs_block_free+0x38>
ffffffffc0209a66:	842a                	mv	s0,a0
ffffffffc0209a68:	7d08                	ld	a0,56(a0)
ffffffffc0209a6a:	edcff0ef          	jal	ra,ffffffffc0209146 <bitmap_test>
ffffffffc0209a6e:	ed05                	bnez	a0,ffffffffc0209aa6 <sfs_block_free+0x52>
ffffffffc0209a70:	7c08                	ld	a0,56(s0)
ffffffffc0209a72:	85a6                	mv	a1,s1
ffffffffc0209a74:	efaff0ef          	jal	ra,ffffffffc020916e <bitmap_free>
ffffffffc0209a78:	441c                	lw	a5,8(s0)
ffffffffc0209a7a:	4705                	li	a4,1
ffffffffc0209a7c:	60e2                	ld	ra,24(sp)
ffffffffc0209a7e:	2785                	addiw	a5,a5,1
ffffffffc0209a80:	e038                	sd	a4,64(s0)
ffffffffc0209a82:	c41c                	sw	a5,8(s0)
ffffffffc0209a84:	6442                	ld	s0,16(sp)
ffffffffc0209a86:	64a2                	ld	s1,8(sp)
ffffffffc0209a88:	6105                	addi	sp,sp,32
ffffffffc0209a8a:	8082                	ret
ffffffffc0209a8c:	8726                	mv	a4,s1
ffffffffc0209a8e:	00005617          	auipc	a2,0x5
ffffffffc0209a92:	6aa60613          	addi	a2,a2,1706 # ffffffffc020f138 <dev_node_ops+0x5f0>
ffffffffc0209a96:	05300593          	li	a1,83
ffffffffc0209a9a:	00005517          	auipc	a0,0x5
ffffffffc0209a9e:	66e50513          	addi	a0,a0,1646 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209aa2:	9fdf60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209aa6:	00005697          	auipc	a3,0x5
ffffffffc0209aaa:	6ca68693          	addi	a3,a3,1738 # ffffffffc020f170 <dev_node_ops+0x628>
ffffffffc0209aae:	00002617          	auipc	a2,0x2
ffffffffc0209ab2:	06260613          	addi	a2,a2,98 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209ab6:	06a00593          	li	a1,106
ffffffffc0209aba:	00005517          	auipc	a0,0x5
ffffffffc0209abe:	64e50513          	addi	a0,a0,1614 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209ac2:	9ddf60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209ac6 <sfs_reclaim>:
ffffffffc0209ac6:	1101                	addi	sp,sp,-32
ffffffffc0209ac8:	e426                	sd	s1,8(sp)
ffffffffc0209aca:	7524                	ld	s1,104(a0)
ffffffffc0209acc:	ec06                	sd	ra,24(sp)
ffffffffc0209ace:	e822                	sd	s0,16(sp)
ffffffffc0209ad0:	e04a                	sd	s2,0(sp)
ffffffffc0209ad2:	0e048a63          	beqz	s1,ffffffffc0209bc6 <sfs_reclaim+0x100>
ffffffffc0209ad6:	0b04a783          	lw	a5,176(s1)
ffffffffc0209ada:	0e079663          	bnez	a5,ffffffffc0209bc6 <sfs_reclaim+0x100>
ffffffffc0209ade:	4d38                	lw	a4,88(a0)
ffffffffc0209ae0:	6785                	lui	a5,0x1
ffffffffc0209ae2:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc0209ae6:	842a                	mv	s0,a0
ffffffffc0209ae8:	10f71f63          	bne	a4,a5,ffffffffc0209c06 <sfs_reclaim+0x140>
ffffffffc0209aec:	8526                	mv	a0,s1
ffffffffc0209aee:	5ec010ef          	jal	ra,ffffffffc020b0da <lock_sfs_fs>
ffffffffc0209af2:	4c1c                	lw	a5,24(s0)
ffffffffc0209af4:	0ef05963          	blez	a5,ffffffffc0209be6 <sfs_reclaim+0x120>
ffffffffc0209af8:	fff7871b          	addiw	a4,a5,-1
ffffffffc0209afc:	cc18                	sw	a4,24(s0)
ffffffffc0209afe:	eb59                	bnez	a4,ffffffffc0209b94 <sfs_reclaim+0xce>
ffffffffc0209b00:	05c42903          	lw	s2,92(s0)
ffffffffc0209b04:	08091863          	bnez	s2,ffffffffc0209b94 <sfs_reclaim+0xce>
ffffffffc0209b08:	601c                	ld	a5,0(s0)
ffffffffc0209b0a:	0067d783          	lhu	a5,6(a5)
ffffffffc0209b0e:	e785                	bnez	a5,ffffffffc0209b36 <sfs_reclaim+0x70>
ffffffffc0209b10:	783c                	ld	a5,112(s0)
ffffffffc0209b12:	10078a63          	beqz	a5,ffffffffc0209c26 <sfs_reclaim+0x160>
ffffffffc0209b16:	73bc                	ld	a5,96(a5)
ffffffffc0209b18:	10078763          	beqz	a5,ffffffffc0209c26 <sfs_reclaim+0x160>
ffffffffc0209b1c:	00005597          	auipc	a1,0x5
ffffffffc0209b20:	e9458593          	addi	a1,a1,-364 # ffffffffc020e9b0 <syscalls+0xca0>
ffffffffc0209b24:	8522                	mv	a0,s0
ffffffffc0209b26:	e71fd0ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0209b2a:	783c                	ld	a5,112(s0)
ffffffffc0209b2c:	4581                	li	a1,0
ffffffffc0209b2e:	8522                	mv	a0,s0
ffffffffc0209b30:	73bc                	ld	a5,96(a5)
ffffffffc0209b32:	9782                	jalr	a5
ffffffffc0209b34:	e559                	bnez	a0,ffffffffc0209bc2 <sfs_reclaim+0xfc>
ffffffffc0209b36:	681c                	ld	a5,16(s0)
ffffffffc0209b38:	c39d                	beqz	a5,ffffffffc0209b5e <sfs_reclaim+0x98>
ffffffffc0209b3a:	783c                	ld	a5,112(s0)
ffffffffc0209b3c:	10078563          	beqz	a5,ffffffffc0209c46 <sfs_reclaim+0x180>
ffffffffc0209b40:	7b9c                	ld	a5,48(a5)
ffffffffc0209b42:	10078263          	beqz	a5,ffffffffc0209c46 <sfs_reclaim+0x180>
ffffffffc0209b46:	8522                	mv	a0,s0
ffffffffc0209b48:	00004597          	auipc	a1,0x4
ffffffffc0209b4c:	af858593          	addi	a1,a1,-1288 # ffffffffc020d640 <default_pmm_manager+0xe90>
ffffffffc0209b50:	e47fd0ef          	jal	ra,ffffffffc0207996 <inode_check>
ffffffffc0209b54:	783c                	ld	a5,112(s0)
ffffffffc0209b56:	8522                	mv	a0,s0
ffffffffc0209b58:	7b9c                	ld	a5,48(a5)
ffffffffc0209b5a:	9782                	jalr	a5
ffffffffc0209b5c:	e13d                	bnez	a0,ffffffffc0209bc2 <sfs_reclaim+0xfc>
ffffffffc0209b5e:	7c18                	ld	a4,56(s0)
ffffffffc0209b60:	603c                	ld	a5,64(s0)
ffffffffc0209b62:	8526                	mv	a0,s1
ffffffffc0209b64:	e71c                	sd	a5,8(a4)
ffffffffc0209b66:	e398                	sd	a4,0(a5)
ffffffffc0209b68:	6438                	ld	a4,72(s0)
ffffffffc0209b6a:	683c                	ld	a5,80(s0)
ffffffffc0209b6c:	e71c                	sd	a5,8(a4)
ffffffffc0209b6e:	e398                	sd	a4,0(a5)
ffffffffc0209b70:	57a010ef          	jal	ra,ffffffffc020b0ea <unlock_sfs_fs>
ffffffffc0209b74:	6008                	ld	a0,0(s0)
ffffffffc0209b76:	00655783          	lhu	a5,6(a0)
ffffffffc0209b7a:	cb85                	beqz	a5,ffffffffc0209baa <sfs_reclaim+0xe4>
ffffffffc0209b7c:	ddef80ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc0209b80:	8522                	mv	a0,s0
ffffffffc0209b82:	da9fd0ef          	jal	ra,ffffffffc020792a <inode_kill>
ffffffffc0209b86:	60e2                	ld	ra,24(sp)
ffffffffc0209b88:	6442                	ld	s0,16(sp)
ffffffffc0209b8a:	64a2                	ld	s1,8(sp)
ffffffffc0209b8c:	854a                	mv	a0,s2
ffffffffc0209b8e:	6902                	ld	s2,0(sp)
ffffffffc0209b90:	6105                	addi	sp,sp,32
ffffffffc0209b92:	8082                	ret
ffffffffc0209b94:	5945                	li	s2,-15
ffffffffc0209b96:	8526                	mv	a0,s1
ffffffffc0209b98:	552010ef          	jal	ra,ffffffffc020b0ea <unlock_sfs_fs>
ffffffffc0209b9c:	60e2                	ld	ra,24(sp)
ffffffffc0209b9e:	6442                	ld	s0,16(sp)
ffffffffc0209ba0:	64a2                	ld	s1,8(sp)
ffffffffc0209ba2:	854a                	mv	a0,s2
ffffffffc0209ba4:	6902                	ld	s2,0(sp)
ffffffffc0209ba6:	6105                	addi	sp,sp,32
ffffffffc0209ba8:	8082                	ret
ffffffffc0209baa:	440c                	lw	a1,8(s0)
ffffffffc0209bac:	8526                	mv	a0,s1
ffffffffc0209bae:	ea7ff0ef          	jal	ra,ffffffffc0209a54 <sfs_block_free>
ffffffffc0209bb2:	6008                	ld	a0,0(s0)
ffffffffc0209bb4:	5d4c                	lw	a1,60(a0)
ffffffffc0209bb6:	d1f9                	beqz	a1,ffffffffc0209b7c <sfs_reclaim+0xb6>
ffffffffc0209bb8:	8526                	mv	a0,s1
ffffffffc0209bba:	e9bff0ef          	jal	ra,ffffffffc0209a54 <sfs_block_free>
ffffffffc0209bbe:	6008                	ld	a0,0(s0)
ffffffffc0209bc0:	bf75                	j	ffffffffc0209b7c <sfs_reclaim+0xb6>
ffffffffc0209bc2:	892a                	mv	s2,a0
ffffffffc0209bc4:	bfc9                	j	ffffffffc0209b96 <sfs_reclaim+0xd0>
ffffffffc0209bc6:	00005697          	auipc	a3,0x5
ffffffffc0209bca:	36268693          	addi	a3,a3,866 # ffffffffc020ef28 <dev_node_ops+0x3e0>
ffffffffc0209bce:	00002617          	auipc	a2,0x2
ffffffffc0209bd2:	f4260613          	addi	a2,a2,-190 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209bd6:	36d00593          	li	a1,877
ffffffffc0209bda:	00005517          	auipc	a0,0x5
ffffffffc0209bde:	52e50513          	addi	a0,a0,1326 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209be2:	8bdf60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209be6:	00005697          	auipc	a3,0x5
ffffffffc0209bea:	5aa68693          	addi	a3,a3,1450 # ffffffffc020f190 <dev_node_ops+0x648>
ffffffffc0209bee:	00002617          	auipc	a2,0x2
ffffffffc0209bf2:	f2260613          	addi	a2,a2,-222 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209bf6:	37300593          	li	a1,883
ffffffffc0209bfa:	00005517          	auipc	a0,0x5
ffffffffc0209bfe:	50e50513          	addi	a0,a0,1294 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209c02:	89df60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209c06:	00005697          	auipc	a3,0x5
ffffffffc0209c0a:	4ca68693          	addi	a3,a3,1226 # ffffffffc020f0d0 <dev_node_ops+0x588>
ffffffffc0209c0e:	00002617          	auipc	a2,0x2
ffffffffc0209c12:	f0260613          	addi	a2,a2,-254 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209c16:	36e00593          	li	a1,878
ffffffffc0209c1a:	00005517          	auipc	a0,0x5
ffffffffc0209c1e:	4ee50513          	addi	a0,a0,1262 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209c22:	87df60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209c26:	00005697          	auipc	a3,0x5
ffffffffc0209c2a:	d3268693          	addi	a3,a3,-718 # ffffffffc020e958 <syscalls+0xc48>
ffffffffc0209c2e:	00002617          	auipc	a2,0x2
ffffffffc0209c32:	ee260613          	addi	a2,a2,-286 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209c36:	37800593          	li	a1,888
ffffffffc0209c3a:	00005517          	auipc	a0,0x5
ffffffffc0209c3e:	4ce50513          	addi	a0,a0,1230 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209c42:	85df60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209c46:	00004697          	auipc	a3,0x4
ffffffffc0209c4a:	9aa68693          	addi	a3,a3,-1622 # ffffffffc020d5f0 <default_pmm_manager+0xe40>
ffffffffc0209c4e:	00002617          	auipc	a2,0x2
ffffffffc0209c52:	ec260613          	addi	a2,a2,-318 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209c56:	37d00593          	li	a1,893
ffffffffc0209c5a:	00005517          	auipc	a0,0x5
ffffffffc0209c5e:	4ae50513          	addi	a0,a0,1198 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209c62:	83df60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209c66 <sfs_block_alloc>:
ffffffffc0209c66:	1101                	addi	sp,sp,-32
ffffffffc0209c68:	e822                	sd	s0,16(sp)
ffffffffc0209c6a:	842a                	mv	s0,a0
ffffffffc0209c6c:	7d08                	ld	a0,56(a0)
ffffffffc0209c6e:	e426                	sd	s1,8(sp)
ffffffffc0209c70:	ec06                	sd	ra,24(sp)
ffffffffc0209c72:	84ae                	mv	s1,a1
ffffffffc0209c74:	c62ff0ef          	jal	ra,ffffffffc02090d6 <bitmap_alloc>
ffffffffc0209c78:	e90d                	bnez	a0,ffffffffc0209caa <sfs_block_alloc+0x44>
ffffffffc0209c7a:	441c                	lw	a5,8(s0)
ffffffffc0209c7c:	cbad                	beqz	a5,ffffffffc0209cee <sfs_block_alloc+0x88>
ffffffffc0209c7e:	37fd                	addiw	a5,a5,-1
ffffffffc0209c80:	c41c                	sw	a5,8(s0)
ffffffffc0209c82:	408c                	lw	a1,0(s1)
ffffffffc0209c84:	4785                	li	a5,1
ffffffffc0209c86:	e03c                	sd	a5,64(s0)
ffffffffc0209c88:	4054                	lw	a3,4(s0)
ffffffffc0209c8a:	c58d                	beqz	a1,ffffffffc0209cb4 <sfs_block_alloc+0x4e>
ffffffffc0209c8c:	02d5f463          	bgeu	a1,a3,ffffffffc0209cb4 <sfs_block_alloc+0x4e>
ffffffffc0209c90:	7c08                	ld	a0,56(s0)
ffffffffc0209c92:	cb4ff0ef          	jal	ra,ffffffffc0209146 <bitmap_test>
ffffffffc0209c96:	ed05                	bnez	a0,ffffffffc0209cce <sfs_block_alloc+0x68>
ffffffffc0209c98:	8522                	mv	a0,s0
ffffffffc0209c9a:	6442                	ld	s0,16(sp)
ffffffffc0209c9c:	408c                	lw	a1,0(s1)
ffffffffc0209c9e:	60e2                	ld	ra,24(sp)
ffffffffc0209ca0:	64a2                	ld	s1,8(sp)
ffffffffc0209ca2:	4605                	li	a2,1
ffffffffc0209ca4:	6105                	addi	sp,sp,32
ffffffffc0209ca6:	3d40106f          	j	ffffffffc020b07a <sfs_clear_block>
ffffffffc0209caa:	60e2                	ld	ra,24(sp)
ffffffffc0209cac:	6442                	ld	s0,16(sp)
ffffffffc0209cae:	64a2                	ld	s1,8(sp)
ffffffffc0209cb0:	6105                	addi	sp,sp,32
ffffffffc0209cb2:	8082                	ret
ffffffffc0209cb4:	872e                	mv	a4,a1
ffffffffc0209cb6:	00005617          	auipc	a2,0x5
ffffffffc0209cba:	48260613          	addi	a2,a2,1154 # ffffffffc020f138 <dev_node_ops+0x5f0>
ffffffffc0209cbe:	05300593          	li	a1,83
ffffffffc0209cc2:	00005517          	auipc	a0,0x5
ffffffffc0209cc6:	44650513          	addi	a0,a0,1094 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209cca:	fd4f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209cce:	00005697          	auipc	a3,0x5
ffffffffc0209cd2:	4fa68693          	addi	a3,a3,1274 # ffffffffc020f1c8 <dev_node_ops+0x680>
ffffffffc0209cd6:	00002617          	auipc	a2,0x2
ffffffffc0209cda:	e3a60613          	addi	a2,a2,-454 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209cde:	06100593          	li	a1,97
ffffffffc0209ce2:	00005517          	auipc	a0,0x5
ffffffffc0209ce6:	42650513          	addi	a0,a0,1062 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209cea:	fb4f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209cee:	00005697          	auipc	a3,0x5
ffffffffc0209cf2:	4ba68693          	addi	a3,a3,1210 # ffffffffc020f1a8 <dev_node_ops+0x660>
ffffffffc0209cf6:	00002617          	auipc	a2,0x2
ffffffffc0209cfa:	e1a60613          	addi	a2,a2,-486 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209cfe:	05f00593          	li	a1,95
ffffffffc0209d02:	00005517          	auipc	a0,0x5
ffffffffc0209d06:	40650513          	addi	a0,a0,1030 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209d0a:	f94f60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209d0e <sfs_bmap_load_nolock>:
ffffffffc0209d0e:	7159                	addi	sp,sp,-112
ffffffffc0209d10:	f85a                	sd	s6,48(sp)
ffffffffc0209d12:	0005bb03          	ld	s6,0(a1)
ffffffffc0209d16:	f45e                	sd	s7,40(sp)
ffffffffc0209d18:	f486                	sd	ra,104(sp)
ffffffffc0209d1a:	008b2b83          	lw	s7,8(s6)
ffffffffc0209d1e:	f0a2                	sd	s0,96(sp)
ffffffffc0209d20:	eca6                	sd	s1,88(sp)
ffffffffc0209d22:	e8ca                	sd	s2,80(sp)
ffffffffc0209d24:	e4ce                	sd	s3,72(sp)
ffffffffc0209d26:	e0d2                	sd	s4,64(sp)
ffffffffc0209d28:	fc56                	sd	s5,56(sp)
ffffffffc0209d2a:	f062                	sd	s8,32(sp)
ffffffffc0209d2c:	ec66                	sd	s9,24(sp)
ffffffffc0209d2e:	18cbe363          	bltu	s7,a2,ffffffffc0209eb4 <sfs_bmap_load_nolock+0x1a6>
ffffffffc0209d32:	47ad                	li	a5,11
ffffffffc0209d34:	8aae                	mv	s5,a1
ffffffffc0209d36:	8432                	mv	s0,a2
ffffffffc0209d38:	84aa                	mv	s1,a0
ffffffffc0209d3a:	89b6                	mv	s3,a3
ffffffffc0209d3c:	04c7f563          	bgeu	a5,a2,ffffffffc0209d86 <sfs_bmap_load_nolock+0x78>
ffffffffc0209d40:	ff46071b          	addiw	a4,a2,-12
ffffffffc0209d44:	0007069b          	sext.w	a3,a4
ffffffffc0209d48:	3ff00793          	li	a5,1023
ffffffffc0209d4c:	1ad7e163          	bltu	a5,a3,ffffffffc0209eee <sfs_bmap_load_nolock+0x1e0>
ffffffffc0209d50:	03cb2a03          	lw	s4,60(s6)
ffffffffc0209d54:	02071793          	slli	a5,a4,0x20
ffffffffc0209d58:	c602                	sw	zero,12(sp)
ffffffffc0209d5a:	c452                	sw	s4,8(sp)
ffffffffc0209d5c:	01e7dc13          	srli	s8,a5,0x1e
ffffffffc0209d60:	0e0a1e63          	bnez	s4,ffffffffc0209e5c <sfs_bmap_load_nolock+0x14e>
ffffffffc0209d64:	0acb8663          	beq	s7,a2,ffffffffc0209e10 <sfs_bmap_load_nolock+0x102>
ffffffffc0209d68:	4a01                	li	s4,0
ffffffffc0209d6a:	40d4                	lw	a3,4(s1)
ffffffffc0209d6c:	8752                	mv	a4,s4
ffffffffc0209d6e:	00005617          	auipc	a2,0x5
ffffffffc0209d72:	3ca60613          	addi	a2,a2,970 # ffffffffc020f138 <dev_node_ops+0x5f0>
ffffffffc0209d76:	05300593          	li	a1,83
ffffffffc0209d7a:	00005517          	auipc	a0,0x5
ffffffffc0209d7e:	38e50513          	addi	a0,a0,910 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209d82:	f1cf60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209d86:	02061793          	slli	a5,a2,0x20
ffffffffc0209d8a:	01e7da13          	srli	s4,a5,0x1e
ffffffffc0209d8e:	9a5a                	add	s4,s4,s6
ffffffffc0209d90:	00ca2583          	lw	a1,12(s4)
ffffffffc0209d94:	c22e                	sw	a1,4(sp)
ffffffffc0209d96:	ed99                	bnez	a1,ffffffffc0209db4 <sfs_bmap_load_nolock+0xa6>
ffffffffc0209d98:	fccb98e3          	bne	s7,a2,ffffffffc0209d68 <sfs_bmap_load_nolock+0x5a>
ffffffffc0209d9c:	004c                	addi	a1,sp,4
ffffffffc0209d9e:	ec9ff0ef          	jal	ra,ffffffffc0209c66 <sfs_block_alloc>
ffffffffc0209da2:	892a                	mv	s2,a0
ffffffffc0209da4:	e921                	bnez	a0,ffffffffc0209df4 <sfs_bmap_load_nolock+0xe6>
ffffffffc0209da6:	4592                	lw	a1,4(sp)
ffffffffc0209da8:	4705                	li	a4,1
ffffffffc0209daa:	00ba2623          	sw	a1,12(s4)
ffffffffc0209dae:	00eab823          	sd	a4,16(s5)
ffffffffc0209db2:	d9dd                	beqz	a1,ffffffffc0209d68 <sfs_bmap_load_nolock+0x5a>
ffffffffc0209db4:	40d4                	lw	a3,4(s1)
ffffffffc0209db6:	10d5ff63          	bgeu	a1,a3,ffffffffc0209ed4 <sfs_bmap_load_nolock+0x1c6>
ffffffffc0209dba:	7c88                	ld	a0,56(s1)
ffffffffc0209dbc:	b8aff0ef          	jal	ra,ffffffffc0209146 <bitmap_test>
ffffffffc0209dc0:	18051363          	bnez	a0,ffffffffc0209f46 <sfs_bmap_load_nolock+0x238>
ffffffffc0209dc4:	4a12                	lw	s4,4(sp)
ffffffffc0209dc6:	fa0a02e3          	beqz	s4,ffffffffc0209d6a <sfs_bmap_load_nolock+0x5c>
ffffffffc0209dca:	40dc                	lw	a5,4(s1)
ffffffffc0209dcc:	f8fa7fe3          	bgeu	s4,a5,ffffffffc0209d6a <sfs_bmap_load_nolock+0x5c>
ffffffffc0209dd0:	7c88                	ld	a0,56(s1)
ffffffffc0209dd2:	85d2                	mv	a1,s4
ffffffffc0209dd4:	b72ff0ef          	jal	ra,ffffffffc0209146 <bitmap_test>
ffffffffc0209dd8:	12051763          	bnez	a0,ffffffffc0209f06 <sfs_bmap_load_nolock+0x1f8>
ffffffffc0209ddc:	008b9763          	bne	s7,s0,ffffffffc0209dea <sfs_bmap_load_nolock+0xdc>
ffffffffc0209de0:	008b2783          	lw	a5,8(s6)
ffffffffc0209de4:	2785                	addiw	a5,a5,1
ffffffffc0209de6:	00fb2423          	sw	a5,8(s6)
ffffffffc0209dea:	4901                	li	s2,0
ffffffffc0209dec:	00098463          	beqz	s3,ffffffffc0209df4 <sfs_bmap_load_nolock+0xe6>
ffffffffc0209df0:	0149a023          	sw	s4,0(s3)
ffffffffc0209df4:	70a6                	ld	ra,104(sp)
ffffffffc0209df6:	7406                	ld	s0,96(sp)
ffffffffc0209df8:	64e6                	ld	s1,88(sp)
ffffffffc0209dfa:	69a6                	ld	s3,72(sp)
ffffffffc0209dfc:	6a06                	ld	s4,64(sp)
ffffffffc0209dfe:	7ae2                	ld	s5,56(sp)
ffffffffc0209e00:	7b42                	ld	s6,48(sp)
ffffffffc0209e02:	7ba2                	ld	s7,40(sp)
ffffffffc0209e04:	7c02                	ld	s8,32(sp)
ffffffffc0209e06:	6ce2                	ld	s9,24(sp)
ffffffffc0209e08:	854a                	mv	a0,s2
ffffffffc0209e0a:	6946                	ld	s2,80(sp)
ffffffffc0209e0c:	6165                	addi	sp,sp,112
ffffffffc0209e0e:	8082                	ret
ffffffffc0209e10:	002c                	addi	a1,sp,8
ffffffffc0209e12:	e55ff0ef          	jal	ra,ffffffffc0209c66 <sfs_block_alloc>
ffffffffc0209e16:	892a                	mv	s2,a0
ffffffffc0209e18:	00c10c93          	addi	s9,sp,12
ffffffffc0209e1c:	fd61                	bnez	a0,ffffffffc0209df4 <sfs_bmap_load_nolock+0xe6>
ffffffffc0209e1e:	85e6                	mv	a1,s9
ffffffffc0209e20:	8526                	mv	a0,s1
ffffffffc0209e22:	e45ff0ef          	jal	ra,ffffffffc0209c66 <sfs_block_alloc>
ffffffffc0209e26:	892a                	mv	s2,a0
ffffffffc0209e28:	e925                	bnez	a0,ffffffffc0209e98 <sfs_bmap_load_nolock+0x18a>
ffffffffc0209e2a:	46a2                	lw	a3,8(sp)
ffffffffc0209e2c:	85e6                	mv	a1,s9
ffffffffc0209e2e:	8762                	mv	a4,s8
ffffffffc0209e30:	4611                	li	a2,4
ffffffffc0209e32:	8526                	mv	a0,s1
ffffffffc0209e34:	0f6010ef          	jal	ra,ffffffffc020af2a <sfs_wbuf>
ffffffffc0209e38:	45b2                	lw	a1,12(sp)
ffffffffc0209e3a:	892a                	mv	s2,a0
ffffffffc0209e3c:	e939                	bnez	a0,ffffffffc0209e92 <sfs_bmap_load_nolock+0x184>
ffffffffc0209e3e:	03cb2683          	lw	a3,60(s6)
ffffffffc0209e42:	4722                	lw	a4,8(sp)
ffffffffc0209e44:	c22e                	sw	a1,4(sp)
ffffffffc0209e46:	f6d706e3          	beq	a4,a3,ffffffffc0209db2 <sfs_bmap_load_nolock+0xa4>
ffffffffc0209e4a:	eef1                	bnez	a3,ffffffffc0209f26 <sfs_bmap_load_nolock+0x218>
ffffffffc0209e4c:	02eb2e23          	sw	a4,60(s6)
ffffffffc0209e50:	4705                	li	a4,1
ffffffffc0209e52:	00eab823          	sd	a4,16(s5)
ffffffffc0209e56:	f00589e3          	beqz	a1,ffffffffc0209d68 <sfs_bmap_load_nolock+0x5a>
ffffffffc0209e5a:	bfa9                	j	ffffffffc0209db4 <sfs_bmap_load_nolock+0xa6>
ffffffffc0209e5c:	00c10c93          	addi	s9,sp,12
ffffffffc0209e60:	8762                	mv	a4,s8
ffffffffc0209e62:	86d2                	mv	a3,s4
ffffffffc0209e64:	4611                	li	a2,4
ffffffffc0209e66:	85e6                	mv	a1,s9
ffffffffc0209e68:	042010ef          	jal	ra,ffffffffc020aeaa <sfs_rbuf>
ffffffffc0209e6c:	892a                	mv	s2,a0
ffffffffc0209e6e:	f159                	bnez	a0,ffffffffc0209df4 <sfs_bmap_load_nolock+0xe6>
ffffffffc0209e70:	45b2                	lw	a1,12(sp)
ffffffffc0209e72:	e995                	bnez	a1,ffffffffc0209ea6 <sfs_bmap_load_nolock+0x198>
ffffffffc0209e74:	fa8b85e3          	beq	s7,s0,ffffffffc0209e1e <sfs_bmap_load_nolock+0x110>
ffffffffc0209e78:	03cb2703          	lw	a4,60(s6)
ffffffffc0209e7c:	47a2                	lw	a5,8(sp)
ffffffffc0209e7e:	c202                	sw	zero,4(sp)
ffffffffc0209e80:	eee784e3          	beq	a5,a4,ffffffffc0209d68 <sfs_bmap_load_nolock+0x5a>
ffffffffc0209e84:	e34d                	bnez	a4,ffffffffc0209f26 <sfs_bmap_load_nolock+0x218>
ffffffffc0209e86:	02fb2e23          	sw	a5,60(s6)
ffffffffc0209e8a:	4785                	li	a5,1
ffffffffc0209e8c:	00fab823          	sd	a5,16(s5)
ffffffffc0209e90:	bde1                	j	ffffffffc0209d68 <sfs_bmap_load_nolock+0x5a>
ffffffffc0209e92:	8526                	mv	a0,s1
ffffffffc0209e94:	bc1ff0ef          	jal	ra,ffffffffc0209a54 <sfs_block_free>
ffffffffc0209e98:	45a2                	lw	a1,8(sp)
ffffffffc0209e9a:	f4ba0de3          	beq	s4,a1,ffffffffc0209df4 <sfs_bmap_load_nolock+0xe6>
ffffffffc0209e9e:	8526                	mv	a0,s1
ffffffffc0209ea0:	bb5ff0ef          	jal	ra,ffffffffc0209a54 <sfs_block_free>
ffffffffc0209ea4:	bf81                	j	ffffffffc0209df4 <sfs_bmap_load_nolock+0xe6>
ffffffffc0209ea6:	03cb2683          	lw	a3,60(s6)
ffffffffc0209eaa:	4722                	lw	a4,8(sp)
ffffffffc0209eac:	c22e                	sw	a1,4(sp)
ffffffffc0209eae:	f8e69ee3          	bne	a3,a4,ffffffffc0209e4a <sfs_bmap_load_nolock+0x13c>
ffffffffc0209eb2:	b709                	j	ffffffffc0209db4 <sfs_bmap_load_nolock+0xa6>
ffffffffc0209eb4:	00005697          	auipc	a3,0x5
ffffffffc0209eb8:	33c68693          	addi	a3,a3,828 # ffffffffc020f1f0 <dev_node_ops+0x6a8>
ffffffffc0209ebc:	00002617          	auipc	a2,0x2
ffffffffc0209ec0:	c5460613          	addi	a2,a2,-940 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209ec4:	16400593          	li	a1,356
ffffffffc0209ec8:	00005517          	auipc	a0,0x5
ffffffffc0209ecc:	24050513          	addi	a0,a0,576 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209ed0:	dcef60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209ed4:	872e                	mv	a4,a1
ffffffffc0209ed6:	00005617          	auipc	a2,0x5
ffffffffc0209eda:	26260613          	addi	a2,a2,610 # ffffffffc020f138 <dev_node_ops+0x5f0>
ffffffffc0209ede:	05300593          	li	a1,83
ffffffffc0209ee2:	00005517          	auipc	a0,0x5
ffffffffc0209ee6:	22650513          	addi	a0,a0,550 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209eea:	db4f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209eee:	00005617          	auipc	a2,0x5
ffffffffc0209ef2:	33260613          	addi	a2,a2,818 # ffffffffc020f220 <dev_node_ops+0x6d8>
ffffffffc0209ef6:	11e00593          	li	a1,286
ffffffffc0209efa:	00005517          	auipc	a0,0x5
ffffffffc0209efe:	20e50513          	addi	a0,a0,526 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209f02:	d9cf60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209f06:	00005697          	auipc	a3,0x5
ffffffffc0209f0a:	26a68693          	addi	a3,a3,618 # ffffffffc020f170 <dev_node_ops+0x628>
ffffffffc0209f0e:	00002617          	auipc	a2,0x2
ffffffffc0209f12:	c0260613          	addi	a2,a2,-1022 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209f16:	16b00593          	li	a1,363
ffffffffc0209f1a:	00005517          	auipc	a0,0x5
ffffffffc0209f1e:	1ee50513          	addi	a0,a0,494 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209f22:	d7cf60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209f26:	00005697          	auipc	a3,0x5
ffffffffc0209f2a:	2e268693          	addi	a3,a3,738 # ffffffffc020f208 <dev_node_ops+0x6c0>
ffffffffc0209f2e:	00002617          	auipc	a2,0x2
ffffffffc0209f32:	be260613          	addi	a2,a2,-1054 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209f36:	11800593          	li	a1,280
ffffffffc0209f3a:	00005517          	auipc	a0,0x5
ffffffffc0209f3e:	1ce50513          	addi	a0,a0,462 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209f42:	d5cf60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209f46:	00005697          	auipc	a3,0x5
ffffffffc0209f4a:	30a68693          	addi	a3,a3,778 # ffffffffc020f250 <dev_node_ops+0x708>
ffffffffc0209f4e:	00002617          	auipc	a2,0x2
ffffffffc0209f52:	bc260613          	addi	a2,a2,-1086 # ffffffffc020bb10 <commands+0x210>
ffffffffc0209f56:	12100593          	li	a1,289
ffffffffc0209f5a:	00005517          	auipc	a0,0x5
ffffffffc0209f5e:	1ae50513          	addi	a0,a0,430 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc0209f62:	d3cf60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209f66 <sfs_io_nolock>:
ffffffffc0209f66:	7175                	addi	sp,sp,-144
ffffffffc0209f68:	fca6                	sd	s1,120(sp)
ffffffffc0209f6a:	84ae                	mv	s1,a1
ffffffffc0209f6c:	618c                	ld	a1,0(a1)
ffffffffc0209f6e:	e506                	sd	ra,136(sp)
ffffffffc0209f70:	e122                	sd	s0,128(sp)
ffffffffc0209f72:	0045d883          	lhu	a7,4(a1)
ffffffffc0209f76:	f8ca                	sd	s2,112(sp)
ffffffffc0209f78:	f4ce                	sd	s3,104(sp)
ffffffffc0209f7a:	f0d2                	sd	s4,96(sp)
ffffffffc0209f7c:	ecd6                	sd	s5,88(sp)
ffffffffc0209f7e:	e8da                	sd	s6,80(sp)
ffffffffc0209f80:	e4de                	sd	s7,72(sp)
ffffffffc0209f82:	e0e2                	sd	s8,64(sp)
ffffffffc0209f84:	fc66                	sd	s9,56(sp)
ffffffffc0209f86:	f86a                	sd	s10,48(sp)
ffffffffc0209f88:	f46e                	sd	s11,40(sp)
ffffffffc0209f8a:	4809                	li	a6,2
ffffffffc0209f8c:	1f088a63          	beq	a7,a6,ffffffffc020a180 <sfs_io_nolock+0x21a>
ffffffffc0209f90:	00073b03          	ld	s6,0(a4) # 4000 <_binary_bin_swap_img_size-0x3d00>
ffffffffc0209f94:	8bba                	mv	s7,a4
ffffffffc0209f96:	000bb023          	sd	zero,0(s7) # 1000 <_binary_bin_swap_img_size-0x6d00>
ffffffffc0209f9a:	08000737          	lui	a4,0x8000
ffffffffc0209f9e:	8a36                	mv	s4,a3
ffffffffc0209fa0:	8cb6                	mv	s9,a3
ffffffffc0209fa2:	9b36                	add	s6,s6,a3
ffffffffc0209fa4:	1ae6f863          	bgeu	a3,a4,ffffffffc020a154 <sfs_io_nolock+0x1ee>
ffffffffc0209fa8:	1adb4663          	blt	s6,a3,ffffffffc020a154 <sfs_io_nolock+0x1ee>
ffffffffc0209fac:	892a                	mv	s2,a0
ffffffffc0209fae:	4501                	li	a0,0
ffffffffc0209fb0:	0d668d63          	beq	a3,s6,ffffffffc020a08a <sfs_io_nolock+0x124>
ffffffffc0209fb4:	8c32                	mv	s8,a2
ffffffffc0209fb6:	01677463          	bgeu	a4,s6,ffffffffc0209fbe <sfs_io_nolock+0x58>
ffffffffc0209fba:	08000b37          	lui	s6,0x8000
ffffffffc0209fbe:	c7ed                	beqz	a5,ffffffffc020a0a8 <sfs_io_nolock+0x142>
ffffffffc0209fc0:	00001797          	auipc	a5,0x1
ffffffffc0209fc4:	e8a78793          	addi	a5,a5,-374 # ffffffffc020ae4a <sfs_wblock>
ffffffffc0209fc8:	e03e                	sd	a5,0(sp)
ffffffffc0209fca:	00001797          	auipc	a5,0x1
ffffffffc0209fce:	f6078793          	addi	a5,a5,-160 # ffffffffc020af2a <sfs_wbuf>
ffffffffc0209fd2:	e43e                	sd	a5,8(sp)
ffffffffc0209fd4:	6785                	lui	a5,0x1
ffffffffc0209fd6:	40ca5413          	srai	s0,s4,0xc
ffffffffc0209fda:	40cb5d13          	srai	s10,s6,0xc
ffffffffc0209fde:	fff78a93          	addi	s5,a5,-1 # fff <_binary_bin_swap_img_size-0x6d01>
ffffffffc0209fe2:	408d09bb          	subw	s3,s10,s0
ffffffffc0209fe6:	015a7ab3          	and	s5,s4,s5
ffffffffc0209fea:	8d4e                	mv	s10,s3
ffffffffc0209fec:	2401                	sext.w	s0,s0
ffffffffc0209fee:	8dd6                	mv	s11,s5
ffffffffc0209ff0:	0c0a8e63          	beqz	s5,ffffffffc020a0cc <sfs_io_nolock+0x166>
ffffffffc0209ff4:	414b0ab3          	sub	s5,s6,s4
ffffffffc0209ff8:	12099663          	bnez	s3,ffffffffc020a124 <sfs_io_nolock+0x1be>
ffffffffc0209ffc:	0854                	addi	a3,sp,20
ffffffffc0209ffe:	8622                	mv	a2,s0
ffffffffc020a000:	85a6                	mv	a1,s1
ffffffffc020a002:	854a                	mv	a0,s2
ffffffffc020a004:	d0bff0ef          	jal	ra,ffffffffc0209d0e <sfs_bmap_load_nolock>
ffffffffc020a008:	12051863          	bnez	a0,ffffffffc020a138 <sfs_io_nolock+0x1d2>
ffffffffc020a00c:	46d2                	lw	a3,20(sp)
ffffffffc020a00e:	67a2                	ld	a5,8(sp)
ffffffffc020a010:	876e                	mv	a4,s11
ffffffffc020a012:	8656                	mv	a2,s5
ffffffffc020a014:	85e2                	mv	a1,s8
ffffffffc020a016:	854a                	mv	a0,s2
ffffffffc020a018:	9782                	jalr	a5
ffffffffc020a01a:	10051f63          	bnez	a0,ffffffffc020a138 <sfs_io_nolock+0x1d2>
ffffffffc020a01e:	015a0cb3          	add	s9,s4,s5
ffffffffc020a022:	04098763          	beqz	s3,ffffffffc020a070 <sfs_io_nolock+0x10a>
ffffffffc020a026:	9c56                	add	s8,s8,s5
ffffffffc020a028:	2405                	addiw	s0,s0,1
ffffffffc020a02a:	fffd099b          	addiw	s3,s10,-1
ffffffffc020a02e:	0c098563          	beqz	s3,ffffffffc020a0f8 <sfs_io_nolock+0x192>
ffffffffc020a032:	4d05                	li	s10,1
ffffffffc020a034:	0834                	addi	a3,sp,24
ffffffffc020a036:	8622                	mv	a2,s0
ffffffffc020a038:	85a6                	mv	a1,s1
ffffffffc020a03a:	854a                	mv	a0,s2
ffffffffc020a03c:	cd3ff0ef          	jal	ra,ffffffffc0209d0e <sfs_bmap_load_nolock>
ffffffffc020a040:	e515                	bnez	a0,ffffffffc020a06c <sfs_io_nolock+0x106>
ffffffffc020a042:	4d85                	li	s11,1
ffffffffc020a044:	01a99c63          	bne	s3,s10,ffffffffc020a05c <sfs_io_nolock+0xf6>
ffffffffc020a048:	a061                	j	ffffffffc020a0d0 <sfs_io_nolock+0x16a>
ffffffffc020a04a:	4662                	lw	a2,24(sp)
ffffffffc020a04c:	4772                	lw	a4,28(sp)
ffffffffc020a04e:	01b606bb          	addw	a3,a2,s11
ffffffffc020a052:	08e69063          	bne	a3,a4,ffffffffc020a0d2 <sfs_io_nolock+0x16c>
ffffffffc020a056:	2d85                	addiw	s11,s11,1
ffffffffc020a058:	0b3d8663          	beq	s11,s3,ffffffffc020a104 <sfs_io_nolock+0x19e>
ffffffffc020a05c:	0874                	addi	a3,sp,28
ffffffffc020a05e:	008d863b          	addw	a2,s11,s0
ffffffffc020a062:	85a6                	mv	a1,s1
ffffffffc020a064:	854a                	mv	a0,s2
ffffffffc020a066:	ca9ff0ef          	jal	ra,ffffffffc0209d0e <sfs_bmap_load_nolock>
ffffffffc020a06a:	d165                	beqz	a0,ffffffffc020a04a <sfs_io_nolock+0xe4>
ffffffffc020a06c:	015a0cb3          	add	s9,s4,s5
ffffffffc020a070:	609c                	ld	a5,0(s1)
ffffffffc020a072:	015bb023          	sd	s5,0(s7)
ffffffffc020a076:	0007e703          	lwu	a4,0(a5)
ffffffffc020a07a:	01977863          	bgeu	a4,s9,ffffffffc020a08a <sfs_io_nolock+0x124>
ffffffffc020a07e:	015a0a3b          	addw	s4,s4,s5
ffffffffc020a082:	0147a023          	sw	s4,0(a5)
ffffffffc020a086:	4785                	li	a5,1
ffffffffc020a088:	e89c                	sd	a5,16(s1)
ffffffffc020a08a:	60aa                	ld	ra,136(sp)
ffffffffc020a08c:	640a                	ld	s0,128(sp)
ffffffffc020a08e:	74e6                	ld	s1,120(sp)
ffffffffc020a090:	7946                	ld	s2,112(sp)
ffffffffc020a092:	79a6                	ld	s3,104(sp)
ffffffffc020a094:	7a06                	ld	s4,96(sp)
ffffffffc020a096:	6ae6                	ld	s5,88(sp)
ffffffffc020a098:	6b46                	ld	s6,80(sp)
ffffffffc020a09a:	6ba6                	ld	s7,72(sp)
ffffffffc020a09c:	6c06                	ld	s8,64(sp)
ffffffffc020a09e:	7ce2                	ld	s9,56(sp)
ffffffffc020a0a0:	7d42                	ld	s10,48(sp)
ffffffffc020a0a2:	7da2                	ld	s11,40(sp)
ffffffffc020a0a4:	6149                	addi	sp,sp,144
ffffffffc020a0a6:	8082                	ret
ffffffffc020a0a8:	0005e783          	lwu	a5,0(a1)
ffffffffc020a0ac:	4501                	li	a0,0
ffffffffc020a0ae:	fcfa5ee3          	bge	s4,a5,ffffffffc020a08a <sfs_io_nolock+0x124>
ffffffffc020a0b2:	0967c563          	blt	a5,s6,ffffffffc020a13c <sfs_io_nolock+0x1d6>
ffffffffc020a0b6:	00001797          	auipc	a5,0x1
ffffffffc020a0ba:	d3478793          	addi	a5,a5,-716 # ffffffffc020adea <sfs_rblock>
ffffffffc020a0be:	e03e                	sd	a5,0(sp)
ffffffffc020a0c0:	00001797          	auipc	a5,0x1
ffffffffc020a0c4:	dea78793          	addi	a5,a5,-534 # ffffffffc020aeaa <sfs_rbuf>
ffffffffc020a0c8:	e43e                	sd	a5,8(sp)
ffffffffc020a0ca:	b729                	j	ffffffffc0209fd4 <sfs_io_nolock+0x6e>
ffffffffc020a0cc:	8cd2                	mv	s9,s4
ffffffffc020a0ce:	b785                	j	ffffffffc020a02e <sfs_io_nolock+0xc8>
ffffffffc020a0d0:	4662                	lw	a2,24(sp)
ffffffffc020a0d2:	6782                	ld	a5,0(sp)
ffffffffc020a0d4:	86ee                	mv	a3,s11
ffffffffc020a0d6:	85e2                	mv	a1,s8
ffffffffc020a0d8:	854a                	mv	a0,s2
ffffffffc020a0da:	9782                	jalr	a5
ffffffffc020a0dc:	f941                	bnez	a0,ffffffffc020a06c <sfs_io_nolock+0x106>
ffffffffc020a0de:	020d9793          	slli	a5,s11,0x20
ffffffffc020a0e2:	0147d713          	srli	a4,a5,0x14
ffffffffc020a0e6:	41b989bb          	subw	s3,s3,s11
ffffffffc020a0ea:	9aba                	add	s5,s5,a4
ffffffffc020a0ec:	9c3a                	add	s8,s8,a4
ffffffffc020a0ee:	9cba                	add	s9,s9,a4
ffffffffc020a0f0:	008d843b          	addw	s0,s11,s0
ffffffffc020a0f4:	f40990e3          	bnez	s3,ffffffffc020a034 <sfs_io_nolock+0xce>
ffffffffc020a0f8:	076cc063          	blt	s9,s6,ffffffffc020a158 <sfs_io_nolock+0x1f2>
ffffffffc020a0fc:	015a0cb3          	add	s9,s4,s5
ffffffffc020a100:	4501                	li	a0,0
ffffffffc020a102:	b7bd                	j	ffffffffc020a070 <sfs_io_nolock+0x10a>
ffffffffc020a104:	6782                	ld	a5,0(sp)
ffffffffc020a106:	86ee                	mv	a3,s11
ffffffffc020a108:	85e2                	mv	a1,s8
ffffffffc020a10a:	854a                	mv	a0,s2
ffffffffc020a10c:	9782                	jalr	a5
ffffffffc020a10e:	fd39                	bnez	a0,ffffffffc020a06c <sfs_io_nolock+0x106>
ffffffffc020a110:	020d9793          	slli	a5,s11,0x20
ffffffffc020a114:	0147d713          	srli	a4,a5,0x14
ffffffffc020a118:	9aba                	add	s5,s5,a4
ffffffffc020a11a:	9c3a                	add	s8,s8,a4
ffffffffc020a11c:	9cba                	add	s9,s9,a4
ffffffffc020a11e:	008d843b          	addw	s0,s11,s0
ffffffffc020a122:	bfd9                	j	ffffffffc020a0f8 <sfs_io_nolock+0x192>
ffffffffc020a124:	0854                	addi	a3,sp,20
ffffffffc020a126:	8622                	mv	a2,s0
ffffffffc020a128:	85a6                	mv	a1,s1
ffffffffc020a12a:	854a                	mv	a0,s2
ffffffffc020a12c:	41b78ab3          	sub	s5,a5,s11
ffffffffc020a130:	bdfff0ef          	jal	ra,ffffffffc0209d0e <sfs_bmap_load_nolock>
ffffffffc020a134:	ec050ce3          	beqz	a0,ffffffffc020a00c <sfs_io_nolock+0xa6>
ffffffffc020a138:	4a81                	li	s5,0
ffffffffc020a13a:	bf1d                	j	ffffffffc020a070 <sfs_io_nolock+0x10a>
ffffffffc020a13c:	8b3e                	mv	s6,a5
ffffffffc020a13e:	00001797          	auipc	a5,0x1
ffffffffc020a142:	cac78793          	addi	a5,a5,-852 # ffffffffc020adea <sfs_rblock>
ffffffffc020a146:	e03e                	sd	a5,0(sp)
ffffffffc020a148:	00001797          	auipc	a5,0x1
ffffffffc020a14c:	d6278793          	addi	a5,a5,-670 # ffffffffc020aeaa <sfs_rbuf>
ffffffffc020a150:	e43e                	sd	a5,8(sp)
ffffffffc020a152:	b549                	j	ffffffffc0209fd4 <sfs_io_nolock+0x6e>
ffffffffc020a154:	5575                	li	a0,-3
ffffffffc020a156:	bf15                	j	ffffffffc020a08a <sfs_io_nolock+0x124>
ffffffffc020a158:	0854                	addi	a3,sp,20
ffffffffc020a15a:	8622                	mv	a2,s0
ffffffffc020a15c:	85a6                	mv	a1,s1
ffffffffc020a15e:	854a                	mv	a0,s2
ffffffffc020a160:	bafff0ef          	jal	ra,ffffffffc0209d0e <sfs_bmap_load_nolock>
ffffffffc020a164:	f501                	bnez	a0,ffffffffc020a06c <sfs_io_nolock+0x106>
ffffffffc020a166:	46d2                	lw	a3,20(sp)
ffffffffc020a168:	67a2                	ld	a5,8(sp)
ffffffffc020a16a:	419b0b33          	sub	s6,s6,s9
ffffffffc020a16e:	4701                	li	a4,0
ffffffffc020a170:	865a                	mv	a2,s6
ffffffffc020a172:	85e2                	mv	a1,s8
ffffffffc020a174:	854a                	mv	a0,s2
ffffffffc020a176:	9782                	jalr	a5
ffffffffc020a178:	ee051ae3          	bnez	a0,ffffffffc020a06c <sfs_io_nolock+0x106>
ffffffffc020a17c:	9ada                	add	s5,s5,s6
ffffffffc020a17e:	b5fd                	j	ffffffffc020a06c <sfs_io_nolock+0x106>
ffffffffc020a180:	00005697          	auipc	a3,0x5
ffffffffc020a184:	0f868693          	addi	a3,a3,248 # ffffffffc020f278 <dev_node_ops+0x730>
ffffffffc020a188:	00002617          	auipc	a2,0x2
ffffffffc020a18c:	98860613          	addi	a2,a2,-1656 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a190:	22b00593          	li	a1,555
ffffffffc020a194:	00005517          	auipc	a0,0x5
ffffffffc020a198:	f7450513          	addi	a0,a0,-140 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a19c:	b02f60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020a1a0 <sfs_read>:
ffffffffc020a1a0:	7139                	addi	sp,sp,-64
ffffffffc020a1a2:	f04a                	sd	s2,32(sp)
ffffffffc020a1a4:	06853903          	ld	s2,104(a0)
ffffffffc020a1a8:	fc06                	sd	ra,56(sp)
ffffffffc020a1aa:	f822                	sd	s0,48(sp)
ffffffffc020a1ac:	f426                	sd	s1,40(sp)
ffffffffc020a1ae:	ec4e                	sd	s3,24(sp)
ffffffffc020a1b0:	04090f63          	beqz	s2,ffffffffc020a20e <sfs_read+0x6e>
ffffffffc020a1b4:	0b092783          	lw	a5,176(s2)
ffffffffc020a1b8:	ebb9                	bnez	a5,ffffffffc020a20e <sfs_read+0x6e>
ffffffffc020a1ba:	4d38                	lw	a4,88(a0)
ffffffffc020a1bc:	6785                	lui	a5,0x1
ffffffffc020a1be:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020a1c2:	842a                	mv	s0,a0
ffffffffc020a1c4:	06f71563          	bne	a4,a5,ffffffffc020a22e <sfs_read+0x8e>
ffffffffc020a1c8:	02050993          	addi	s3,a0,32
ffffffffc020a1cc:	854e                	mv	a0,s3
ffffffffc020a1ce:	84ae                	mv	s1,a1
ffffffffc020a1d0:	cbcfa0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc020a1d4:	0184b803          	ld	a6,24(s1)
ffffffffc020a1d8:	6494                	ld	a3,8(s1)
ffffffffc020a1da:	6090                	ld	a2,0(s1)
ffffffffc020a1dc:	85a2                	mv	a1,s0
ffffffffc020a1de:	4781                	li	a5,0
ffffffffc020a1e0:	0038                	addi	a4,sp,8
ffffffffc020a1e2:	854a                	mv	a0,s2
ffffffffc020a1e4:	e442                	sd	a6,8(sp)
ffffffffc020a1e6:	d81ff0ef          	jal	ra,ffffffffc0209f66 <sfs_io_nolock>
ffffffffc020a1ea:	65a2                	ld	a1,8(sp)
ffffffffc020a1ec:	842a                	mv	s0,a0
ffffffffc020a1ee:	ed81                	bnez	a1,ffffffffc020a206 <sfs_read+0x66>
ffffffffc020a1f0:	854e                	mv	a0,s3
ffffffffc020a1f2:	c96fa0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc020a1f6:	70e2                	ld	ra,56(sp)
ffffffffc020a1f8:	8522                	mv	a0,s0
ffffffffc020a1fa:	7442                	ld	s0,48(sp)
ffffffffc020a1fc:	74a2                	ld	s1,40(sp)
ffffffffc020a1fe:	7902                	ld	s2,32(sp)
ffffffffc020a200:	69e2                	ld	s3,24(sp)
ffffffffc020a202:	6121                	addi	sp,sp,64
ffffffffc020a204:	8082                	ret
ffffffffc020a206:	8526                	mv	a0,s1
ffffffffc020a208:	b78fb0ef          	jal	ra,ffffffffc0205580 <iobuf_skip>
ffffffffc020a20c:	b7d5                	j	ffffffffc020a1f0 <sfs_read+0x50>
ffffffffc020a20e:	00005697          	auipc	a3,0x5
ffffffffc020a212:	d1a68693          	addi	a3,a3,-742 # ffffffffc020ef28 <dev_node_ops+0x3e0>
ffffffffc020a216:	00002617          	auipc	a2,0x2
ffffffffc020a21a:	8fa60613          	addi	a2,a2,-1798 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a21e:	2ab00593          	li	a1,683
ffffffffc020a222:	00005517          	auipc	a0,0x5
ffffffffc020a226:	ee650513          	addi	a0,a0,-282 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a22a:	a74f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a22e:	803ff0ef          	jal	ra,ffffffffc0209a30 <sfs_io.part.0>

ffffffffc020a232 <sfs_write>:
ffffffffc020a232:	7139                	addi	sp,sp,-64
ffffffffc020a234:	f04a                	sd	s2,32(sp)
ffffffffc020a236:	06853903          	ld	s2,104(a0)
ffffffffc020a23a:	fc06                	sd	ra,56(sp)
ffffffffc020a23c:	f822                	sd	s0,48(sp)
ffffffffc020a23e:	f426                	sd	s1,40(sp)
ffffffffc020a240:	ec4e                	sd	s3,24(sp)
ffffffffc020a242:	04090f63          	beqz	s2,ffffffffc020a2a0 <sfs_write+0x6e>
ffffffffc020a246:	0b092783          	lw	a5,176(s2)
ffffffffc020a24a:	ebb9                	bnez	a5,ffffffffc020a2a0 <sfs_write+0x6e>
ffffffffc020a24c:	4d38                	lw	a4,88(a0)
ffffffffc020a24e:	6785                	lui	a5,0x1
ffffffffc020a250:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020a254:	842a                	mv	s0,a0
ffffffffc020a256:	06f71563          	bne	a4,a5,ffffffffc020a2c0 <sfs_write+0x8e>
ffffffffc020a25a:	02050993          	addi	s3,a0,32
ffffffffc020a25e:	854e                	mv	a0,s3
ffffffffc020a260:	84ae                	mv	s1,a1
ffffffffc020a262:	c2afa0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc020a266:	0184b803          	ld	a6,24(s1)
ffffffffc020a26a:	6494                	ld	a3,8(s1)
ffffffffc020a26c:	6090                	ld	a2,0(s1)
ffffffffc020a26e:	85a2                	mv	a1,s0
ffffffffc020a270:	4785                	li	a5,1
ffffffffc020a272:	0038                	addi	a4,sp,8
ffffffffc020a274:	854a                	mv	a0,s2
ffffffffc020a276:	e442                	sd	a6,8(sp)
ffffffffc020a278:	cefff0ef          	jal	ra,ffffffffc0209f66 <sfs_io_nolock>
ffffffffc020a27c:	65a2                	ld	a1,8(sp)
ffffffffc020a27e:	842a                	mv	s0,a0
ffffffffc020a280:	ed81                	bnez	a1,ffffffffc020a298 <sfs_write+0x66>
ffffffffc020a282:	854e                	mv	a0,s3
ffffffffc020a284:	c04fa0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc020a288:	70e2                	ld	ra,56(sp)
ffffffffc020a28a:	8522                	mv	a0,s0
ffffffffc020a28c:	7442                	ld	s0,48(sp)
ffffffffc020a28e:	74a2                	ld	s1,40(sp)
ffffffffc020a290:	7902                	ld	s2,32(sp)
ffffffffc020a292:	69e2                	ld	s3,24(sp)
ffffffffc020a294:	6121                	addi	sp,sp,64
ffffffffc020a296:	8082                	ret
ffffffffc020a298:	8526                	mv	a0,s1
ffffffffc020a29a:	ae6fb0ef          	jal	ra,ffffffffc0205580 <iobuf_skip>
ffffffffc020a29e:	b7d5                	j	ffffffffc020a282 <sfs_write+0x50>
ffffffffc020a2a0:	00005697          	auipc	a3,0x5
ffffffffc020a2a4:	c8868693          	addi	a3,a3,-888 # ffffffffc020ef28 <dev_node_ops+0x3e0>
ffffffffc020a2a8:	00002617          	auipc	a2,0x2
ffffffffc020a2ac:	86860613          	addi	a2,a2,-1944 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a2b0:	2ab00593          	li	a1,683
ffffffffc020a2b4:	00005517          	auipc	a0,0x5
ffffffffc020a2b8:	e5450513          	addi	a0,a0,-428 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a2bc:	9e2f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a2c0:	f70ff0ef          	jal	ra,ffffffffc0209a30 <sfs_io.part.0>

ffffffffc020a2c4 <sfs_dirent_read_nolock>:
ffffffffc020a2c4:	6198                	ld	a4,0(a1)
ffffffffc020a2c6:	7179                	addi	sp,sp,-48
ffffffffc020a2c8:	f406                	sd	ra,40(sp)
ffffffffc020a2ca:	00475883          	lhu	a7,4(a4) # 8000004 <_binary_bin_sfs_img_size+0x7f8ad04>
ffffffffc020a2ce:	f022                	sd	s0,32(sp)
ffffffffc020a2d0:	ec26                	sd	s1,24(sp)
ffffffffc020a2d2:	4809                	li	a6,2
ffffffffc020a2d4:	05089b63          	bne	a7,a6,ffffffffc020a32a <sfs_dirent_read_nolock+0x66>
ffffffffc020a2d8:	4718                	lw	a4,8(a4)
ffffffffc020a2da:	87b2                	mv	a5,a2
ffffffffc020a2dc:	2601                	sext.w	a2,a2
ffffffffc020a2de:	04e7f663          	bgeu	a5,a4,ffffffffc020a32a <sfs_dirent_read_nolock+0x66>
ffffffffc020a2e2:	84b6                	mv	s1,a3
ffffffffc020a2e4:	0074                	addi	a3,sp,12
ffffffffc020a2e6:	842a                	mv	s0,a0
ffffffffc020a2e8:	a27ff0ef          	jal	ra,ffffffffc0209d0e <sfs_bmap_load_nolock>
ffffffffc020a2ec:	c511                	beqz	a0,ffffffffc020a2f8 <sfs_dirent_read_nolock+0x34>
ffffffffc020a2ee:	70a2                	ld	ra,40(sp)
ffffffffc020a2f0:	7402                	ld	s0,32(sp)
ffffffffc020a2f2:	64e2                	ld	s1,24(sp)
ffffffffc020a2f4:	6145                	addi	sp,sp,48
ffffffffc020a2f6:	8082                	ret
ffffffffc020a2f8:	45b2                	lw	a1,12(sp)
ffffffffc020a2fa:	4054                	lw	a3,4(s0)
ffffffffc020a2fc:	c5b9                	beqz	a1,ffffffffc020a34a <sfs_dirent_read_nolock+0x86>
ffffffffc020a2fe:	04d5f663          	bgeu	a1,a3,ffffffffc020a34a <sfs_dirent_read_nolock+0x86>
ffffffffc020a302:	7c08                	ld	a0,56(s0)
ffffffffc020a304:	e43fe0ef          	jal	ra,ffffffffc0209146 <bitmap_test>
ffffffffc020a308:	ed31                	bnez	a0,ffffffffc020a364 <sfs_dirent_read_nolock+0xa0>
ffffffffc020a30a:	46b2                	lw	a3,12(sp)
ffffffffc020a30c:	4701                	li	a4,0
ffffffffc020a30e:	10400613          	li	a2,260
ffffffffc020a312:	85a6                	mv	a1,s1
ffffffffc020a314:	8522                	mv	a0,s0
ffffffffc020a316:	395000ef          	jal	ra,ffffffffc020aeaa <sfs_rbuf>
ffffffffc020a31a:	f971                	bnez	a0,ffffffffc020a2ee <sfs_dirent_read_nolock+0x2a>
ffffffffc020a31c:	100481a3          	sb	zero,259(s1)
ffffffffc020a320:	70a2                	ld	ra,40(sp)
ffffffffc020a322:	7402                	ld	s0,32(sp)
ffffffffc020a324:	64e2                	ld	s1,24(sp)
ffffffffc020a326:	6145                	addi	sp,sp,48
ffffffffc020a328:	8082                	ret
ffffffffc020a32a:	00005697          	auipc	a3,0x5
ffffffffc020a32e:	f6e68693          	addi	a3,a3,-146 # ffffffffc020f298 <dev_node_ops+0x750>
ffffffffc020a332:	00001617          	auipc	a2,0x1
ffffffffc020a336:	7de60613          	addi	a2,a2,2014 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a33a:	18e00593          	li	a1,398
ffffffffc020a33e:	00005517          	auipc	a0,0x5
ffffffffc020a342:	dca50513          	addi	a0,a0,-566 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a346:	958f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a34a:	872e                	mv	a4,a1
ffffffffc020a34c:	00005617          	auipc	a2,0x5
ffffffffc020a350:	dec60613          	addi	a2,a2,-532 # ffffffffc020f138 <dev_node_ops+0x5f0>
ffffffffc020a354:	05300593          	li	a1,83
ffffffffc020a358:	00005517          	auipc	a0,0x5
ffffffffc020a35c:	db050513          	addi	a0,a0,-592 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a360:	93ef60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a364:	00005697          	auipc	a3,0x5
ffffffffc020a368:	e0c68693          	addi	a3,a3,-500 # ffffffffc020f170 <dev_node_ops+0x628>
ffffffffc020a36c:	00001617          	auipc	a2,0x1
ffffffffc020a370:	7a460613          	addi	a2,a2,1956 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a374:	19500593          	li	a1,405
ffffffffc020a378:	00005517          	auipc	a0,0x5
ffffffffc020a37c:	d9050513          	addi	a0,a0,-624 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a380:	91ef60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020a384 <sfs_getdirentry>:
ffffffffc020a384:	715d                	addi	sp,sp,-80
ffffffffc020a386:	ec56                	sd	s5,24(sp)
ffffffffc020a388:	8aaa                	mv	s5,a0
ffffffffc020a38a:	10400513          	li	a0,260
ffffffffc020a38e:	e85a                	sd	s6,16(sp)
ffffffffc020a390:	e486                	sd	ra,72(sp)
ffffffffc020a392:	e0a2                	sd	s0,64(sp)
ffffffffc020a394:	fc26                	sd	s1,56(sp)
ffffffffc020a396:	f84a                	sd	s2,48(sp)
ffffffffc020a398:	f44e                	sd	s3,40(sp)
ffffffffc020a39a:	f052                	sd	s4,32(sp)
ffffffffc020a39c:	e45e                	sd	s7,8(sp)
ffffffffc020a39e:	e062                	sd	s8,0(sp)
ffffffffc020a3a0:	8b2e                	mv	s6,a1
ffffffffc020a3a2:	d09f70ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc020a3a6:	cd61                	beqz	a0,ffffffffc020a47e <sfs_getdirentry+0xfa>
ffffffffc020a3a8:	068abb83          	ld	s7,104(s5)
ffffffffc020a3ac:	0c0b8b63          	beqz	s7,ffffffffc020a482 <sfs_getdirentry+0xfe>
ffffffffc020a3b0:	0b0ba783          	lw	a5,176(s7)
ffffffffc020a3b4:	e7f9                	bnez	a5,ffffffffc020a482 <sfs_getdirentry+0xfe>
ffffffffc020a3b6:	058aa703          	lw	a4,88(s5)
ffffffffc020a3ba:	6785                	lui	a5,0x1
ffffffffc020a3bc:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020a3c0:	0ef71163          	bne	a4,a5,ffffffffc020a4a2 <sfs_getdirentry+0x11e>
ffffffffc020a3c4:	008b3983          	ld	s3,8(s6) # 8000008 <_binary_bin_sfs_img_size+0x7f8ad08>
ffffffffc020a3c8:	892a                	mv	s2,a0
ffffffffc020a3ca:	0a09c163          	bltz	s3,ffffffffc020a46c <sfs_getdirentry+0xe8>
ffffffffc020a3ce:	0ff9f793          	zext.b	a5,s3
ffffffffc020a3d2:	efc9                	bnez	a5,ffffffffc020a46c <sfs_getdirentry+0xe8>
ffffffffc020a3d4:	000ab783          	ld	a5,0(s5)
ffffffffc020a3d8:	0089d993          	srli	s3,s3,0x8
ffffffffc020a3dc:	2981                	sext.w	s3,s3
ffffffffc020a3de:	479c                	lw	a5,8(a5)
ffffffffc020a3e0:	0937eb63          	bltu	a5,s3,ffffffffc020a476 <sfs_getdirentry+0xf2>
ffffffffc020a3e4:	020a8c13          	addi	s8,s5,32
ffffffffc020a3e8:	8562                	mv	a0,s8
ffffffffc020a3ea:	aa2fa0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc020a3ee:	000ab783          	ld	a5,0(s5)
ffffffffc020a3f2:	0087aa03          	lw	s4,8(a5)
ffffffffc020a3f6:	07405663          	blez	s4,ffffffffc020a462 <sfs_getdirentry+0xde>
ffffffffc020a3fa:	4481                	li	s1,0
ffffffffc020a3fc:	a811                	j	ffffffffc020a410 <sfs_getdirentry+0x8c>
ffffffffc020a3fe:	00092783          	lw	a5,0(s2)
ffffffffc020a402:	c781                	beqz	a5,ffffffffc020a40a <sfs_getdirentry+0x86>
ffffffffc020a404:	02098263          	beqz	s3,ffffffffc020a428 <sfs_getdirentry+0xa4>
ffffffffc020a408:	39fd                	addiw	s3,s3,-1
ffffffffc020a40a:	2485                	addiw	s1,s1,1
ffffffffc020a40c:	049a0b63          	beq	s4,s1,ffffffffc020a462 <sfs_getdirentry+0xde>
ffffffffc020a410:	86ca                	mv	a3,s2
ffffffffc020a412:	8626                	mv	a2,s1
ffffffffc020a414:	85d6                	mv	a1,s5
ffffffffc020a416:	855e                	mv	a0,s7
ffffffffc020a418:	eadff0ef          	jal	ra,ffffffffc020a2c4 <sfs_dirent_read_nolock>
ffffffffc020a41c:	842a                	mv	s0,a0
ffffffffc020a41e:	d165                	beqz	a0,ffffffffc020a3fe <sfs_getdirentry+0x7a>
ffffffffc020a420:	8562                	mv	a0,s8
ffffffffc020a422:	a66fa0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc020a426:	a831                	j	ffffffffc020a442 <sfs_getdirentry+0xbe>
ffffffffc020a428:	8562                	mv	a0,s8
ffffffffc020a42a:	a5efa0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc020a42e:	4701                	li	a4,0
ffffffffc020a430:	4685                	li	a3,1
ffffffffc020a432:	10000613          	li	a2,256
ffffffffc020a436:	00490593          	addi	a1,s2,4
ffffffffc020a43a:	855a                	mv	a0,s6
ffffffffc020a43c:	8d8fb0ef          	jal	ra,ffffffffc0205514 <iobuf_move>
ffffffffc020a440:	842a                	mv	s0,a0
ffffffffc020a442:	854a                	mv	a0,s2
ffffffffc020a444:	d17f70ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc020a448:	60a6                	ld	ra,72(sp)
ffffffffc020a44a:	8522                	mv	a0,s0
ffffffffc020a44c:	6406                	ld	s0,64(sp)
ffffffffc020a44e:	74e2                	ld	s1,56(sp)
ffffffffc020a450:	7942                	ld	s2,48(sp)
ffffffffc020a452:	79a2                	ld	s3,40(sp)
ffffffffc020a454:	7a02                	ld	s4,32(sp)
ffffffffc020a456:	6ae2                	ld	s5,24(sp)
ffffffffc020a458:	6b42                	ld	s6,16(sp)
ffffffffc020a45a:	6ba2                	ld	s7,8(sp)
ffffffffc020a45c:	6c02                	ld	s8,0(sp)
ffffffffc020a45e:	6161                	addi	sp,sp,80
ffffffffc020a460:	8082                	ret
ffffffffc020a462:	8562                	mv	a0,s8
ffffffffc020a464:	5441                	li	s0,-16
ffffffffc020a466:	a22fa0ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc020a46a:	bfe1                	j	ffffffffc020a442 <sfs_getdirentry+0xbe>
ffffffffc020a46c:	854a                	mv	a0,s2
ffffffffc020a46e:	cedf70ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc020a472:	5475                	li	s0,-3
ffffffffc020a474:	bfd1                	j	ffffffffc020a448 <sfs_getdirentry+0xc4>
ffffffffc020a476:	ce5f70ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc020a47a:	5441                	li	s0,-16
ffffffffc020a47c:	b7f1                	j	ffffffffc020a448 <sfs_getdirentry+0xc4>
ffffffffc020a47e:	5471                	li	s0,-4
ffffffffc020a480:	b7e1                	j	ffffffffc020a448 <sfs_getdirentry+0xc4>
ffffffffc020a482:	00005697          	auipc	a3,0x5
ffffffffc020a486:	aa668693          	addi	a3,a3,-1370 # ffffffffc020ef28 <dev_node_ops+0x3e0>
ffffffffc020a48a:	00001617          	auipc	a2,0x1
ffffffffc020a48e:	68660613          	addi	a2,a2,1670 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a492:	34f00593          	li	a1,847
ffffffffc020a496:	00005517          	auipc	a0,0x5
ffffffffc020a49a:	c7250513          	addi	a0,a0,-910 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a49e:	800f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a4a2:	00005697          	auipc	a3,0x5
ffffffffc020a4a6:	c2e68693          	addi	a3,a3,-978 # ffffffffc020f0d0 <dev_node_ops+0x588>
ffffffffc020a4aa:	00001617          	auipc	a2,0x1
ffffffffc020a4ae:	66660613          	addi	a2,a2,1638 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a4b2:	35000593          	li	a1,848
ffffffffc020a4b6:	00005517          	auipc	a0,0x5
ffffffffc020a4ba:	c5250513          	addi	a0,a0,-942 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a4be:	fe1f50ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020a4c2 <sfs_dirent_search_nolock.constprop.0>:
ffffffffc020a4c2:	715d                	addi	sp,sp,-80
ffffffffc020a4c4:	f052                	sd	s4,32(sp)
ffffffffc020a4c6:	8a2a                	mv	s4,a0
ffffffffc020a4c8:	8532                	mv	a0,a2
ffffffffc020a4ca:	f44e                	sd	s3,40(sp)
ffffffffc020a4cc:	e85a                	sd	s6,16(sp)
ffffffffc020a4ce:	e45e                	sd	s7,8(sp)
ffffffffc020a4d0:	e486                	sd	ra,72(sp)
ffffffffc020a4d2:	e0a2                	sd	s0,64(sp)
ffffffffc020a4d4:	fc26                	sd	s1,56(sp)
ffffffffc020a4d6:	f84a                	sd	s2,48(sp)
ffffffffc020a4d8:	ec56                	sd	s5,24(sp)
ffffffffc020a4da:	e062                	sd	s8,0(sp)
ffffffffc020a4dc:	8b32                	mv	s6,a2
ffffffffc020a4de:	89ae                	mv	s3,a1
ffffffffc020a4e0:	8bb6                	mv	s7,a3
ffffffffc020a4e2:	0aa010ef          	jal	ra,ffffffffc020b58c <strlen>
ffffffffc020a4e6:	0ff00793          	li	a5,255
ffffffffc020a4ea:	06a7ef63          	bltu	a5,a0,ffffffffc020a568 <sfs_dirent_search_nolock.constprop.0+0xa6>
ffffffffc020a4ee:	10400513          	li	a0,260
ffffffffc020a4f2:	bb9f70ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc020a4f6:	892a                	mv	s2,a0
ffffffffc020a4f8:	c535                	beqz	a0,ffffffffc020a564 <sfs_dirent_search_nolock.constprop.0+0xa2>
ffffffffc020a4fa:	0009b783          	ld	a5,0(s3)
ffffffffc020a4fe:	0087aa83          	lw	s5,8(a5)
ffffffffc020a502:	05505a63          	blez	s5,ffffffffc020a556 <sfs_dirent_search_nolock.constprop.0+0x94>
ffffffffc020a506:	4481                	li	s1,0
ffffffffc020a508:	00450c13          	addi	s8,a0,4
ffffffffc020a50c:	a829                	j	ffffffffc020a526 <sfs_dirent_search_nolock.constprop.0+0x64>
ffffffffc020a50e:	00092783          	lw	a5,0(s2)
ffffffffc020a512:	c799                	beqz	a5,ffffffffc020a520 <sfs_dirent_search_nolock.constprop.0+0x5e>
ffffffffc020a514:	85e2                	mv	a1,s8
ffffffffc020a516:	855a                	mv	a0,s6
ffffffffc020a518:	0bc010ef          	jal	ra,ffffffffc020b5d4 <strcmp>
ffffffffc020a51c:	842a                	mv	s0,a0
ffffffffc020a51e:	cd15                	beqz	a0,ffffffffc020a55a <sfs_dirent_search_nolock.constprop.0+0x98>
ffffffffc020a520:	2485                	addiw	s1,s1,1
ffffffffc020a522:	029a8a63          	beq	s5,s1,ffffffffc020a556 <sfs_dirent_search_nolock.constprop.0+0x94>
ffffffffc020a526:	86ca                	mv	a3,s2
ffffffffc020a528:	8626                	mv	a2,s1
ffffffffc020a52a:	85ce                	mv	a1,s3
ffffffffc020a52c:	8552                	mv	a0,s4
ffffffffc020a52e:	d97ff0ef          	jal	ra,ffffffffc020a2c4 <sfs_dirent_read_nolock>
ffffffffc020a532:	842a                	mv	s0,a0
ffffffffc020a534:	dd69                	beqz	a0,ffffffffc020a50e <sfs_dirent_search_nolock.constprop.0+0x4c>
ffffffffc020a536:	854a                	mv	a0,s2
ffffffffc020a538:	c23f70ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc020a53c:	60a6                	ld	ra,72(sp)
ffffffffc020a53e:	8522                	mv	a0,s0
ffffffffc020a540:	6406                	ld	s0,64(sp)
ffffffffc020a542:	74e2                	ld	s1,56(sp)
ffffffffc020a544:	7942                	ld	s2,48(sp)
ffffffffc020a546:	79a2                	ld	s3,40(sp)
ffffffffc020a548:	7a02                	ld	s4,32(sp)
ffffffffc020a54a:	6ae2                	ld	s5,24(sp)
ffffffffc020a54c:	6b42                	ld	s6,16(sp)
ffffffffc020a54e:	6ba2                	ld	s7,8(sp)
ffffffffc020a550:	6c02                	ld	s8,0(sp)
ffffffffc020a552:	6161                	addi	sp,sp,80
ffffffffc020a554:	8082                	ret
ffffffffc020a556:	5441                	li	s0,-16
ffffffffc020a558:	bff9                	j	ffffffffc020a536 <sfs_dirent_search_nolock.constprop.0+0x74>
ffffffffc020a55a:	00092783          	lw	a5,0(s2)
ffffffffc020a55e:	00fba023          	sw	a5,0(s7)
ffffffffc020a562:	bfd1                	j	ffffffffc020a536 <sfs_dirent_search_nolock.constprop.0+0x74>
ffffffffc020a564:	5471                	li	s0,-4
ffffffffc020a566:	bfd9                	j	ffffffffc020a53c <sfs_dirent_search_nolock.constprop.0+0x7a>
ffffffffc020a568:	00005697          	auipc	a3,0x5
ffffffffc020a56c:	d8068693          	addi	a3,a3,-640 # ffffffffc020f2e8 <dev_node_ops+0x7a0>
ffffffffc020a570:	00001617          	auipc	a2,0x1
ffffffffc020a574:	5a060613          	addi	a2,a2,1440 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a578:	1ba00593          	li	a1,442
ffffffffc020a57c:	00005517          	auipc	a0,0x5
ffffffffc020a580:	b8c50513          	addi	a0,a0,-1140 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a584:	f1bf50ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020a588 <sfs_truncfile>:
ffffffffc020a588:	7175                	addi	sp,sp,-144
ffffffffc020a58a:	e506                	sd	ra,136(sp)
ffffffffc020a58c:	e122                	sd	s0,128(sp)
ffffffffc020a58e:	fca6                	sd	s1,120(sp)
ffffffffc020a590:	f8ca                	sd	s2,112(sp)
ffffffffc020a592:	f4ce                	sd	s3,104(sp)
ffffffffc020a594:	f0d2                	sd	s4,96(sp)
ffffffffc020a596:	ecd6                	sd	s5,88(sp)
ffffffffc020a598:	e8da                	sd	s6,80(sp)
ffffffffc020a59a:	e4de                	sd	s7,72(sp)
ffffffffc020a59c:	e0e2                	sd	s8,64(sp)
ffffffffc020a59e:	fc66                	sd	s9,56(sp)
ffffffffc020a5a0:	f86a                	sd	s10,48(sp)
ffffffffc020a5a2:	f46e                	sd	s11,40(sp)
ffffffffc020a5a4:	080007b7          	lui	a5,0x8000
ffffffffc020a5a8:	16b7e463          	bltu	a5,a1,ffffffffc020a710 <sfs_truncfile+0x188>
ffffffffc020a5ac:	06853c83          	ld	s9,104(a0)
ffffffffc020a5b0:	89aa                	mv	s3,a0
ffffffffc020a5b2:	160c8163          	beqz	s9,ffffffffc020a714 <sfs_truncfile+0x18c>
ffffffffc020a5b6:	0b0ca783          	lw	a5,176(s9) # 10b0 <_binary_bin_swap_img_size-0x6c50>
ffffffffc020a5ba:	14079d63          	bnez	a5,ffffffffc020a714 <sfs_truncfile+0x18c>
ffffffffc020a5be:	4d38                	lw	a4,88(a0)
ffffffffc020a5c0:	6405                	lui	s0,0x1
ffffffffc020a5c2:	23540793          	addi	a5,s0,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020a5c6:	16f71763          	bne	a4,a5,ffffffffc020a734 <sfs_truncfile+0x1ac>
ffffffffc020a5ca:	00053a83          	ld	s5,0(a0)
ffffffffc020a5ce:	147d                	addi	s0,s0,-1
ffffffffc020a5d0:	942e                	add	s0,s0,a1
ffffffffc020a5d2:	000ae783          	lwu	a5,0(s5)
ffffffffc020a5d6:	8031                	srli	s0,s0,0xc
ffffffffc020a5d8:	8a2e                	mv	s4,a1
ffffffffc020a5da:	2401                	sext.w	s0,s0
ffffffffc020a5dc:	02b79763          	bne	a5,a1,ffffffffc020a60a <sfs_truncfile+0x82>
ffffffffc020a5e0:	008aa783          	lw	a5,8(s5)
ffffffffc020a5e4:	4901                	li	s2,0
ffffffffc020a5e6:	18879763          	bne	a5,s0,ffffffffc020a774 <sfs_truncfile+0x1ec>
ffffffffc020a5ea:	60aa                	ld	ra,136(sp)
ffffffffc020a5ec:	640a                	ld	s0,128(sp)
ffffffffc020a5ee:	74e6                	ld	s1,120(sp)
ffffffffc020a5f0:	79a6                	ld	s3,104(sp)
ffffffffc020a5f2:	7a06                	ld	s4,96(sp)
ffffffffc020a5f4:	6ae6                	ld	s5,88(sp)
ffffffffc020a5f6:	6b46                	ld	s6,80(sp)
ffffffffc020a5f8:	6ba6                	ld	s7,72(sp)
ffffffffc020a5fa:	6c06                	ld	s8,64(sp)
ffffffffc020a5fc:	7ce2                	ld	s9,56(sp)
ffffffffc020a5fe:	7d42                	ld	s10,48(sp)
ffffffffc020a600:	7da2                	ld	s11,40(sp)
ffffffffc020a602:	854a                	mv	a0,s2
ffffffffc020a604:	7946                	ld	s2,112(sp)
ffffffffc020a606:	6149                	addi	sp,sp,144
ffffffffc020a608:	8082                	ret
ffffffffc020a60a:	02050b13          	addi	s6,a0,32
ffffffffc020a60e:	855a                	mv	a0,s6
ffffffffc020a610:	87cfa0ef          	jal	ra,ffffffffc020468c <down>
ffffffffc020a614:	008aa483          	lw	s1,8(s5)
ffffffffc020a618:	0a84e663          	bltu	s1,s0,ffffffffc020a6c4 <sfs_truncfile+0x13c>
ffffffffc020a61c:	0c947163          	bgeu	s0,s1,ffffffffc020a6de <sfs_truncfile+0x156>
ffffffffc020a620:	4dad                	li	s11,11
ffffffffc020a622:	4b85                	li	s7,1
ffffffffc020a624:	a09d                	j	ffffffffc020a68a <sfs_truncfile+0x102>
ffffffffc020a626:	ff37091b          	addiw	s2,a4,-13
ffffffffc020a62a:	0009079b          	sext.w	a5,s2
ffffffffc020a62e:	3ff00713          	li	a4,1023
ffffffffc020a632:	04f76563          	bltu	a4,a5,ffffffffc020a67c <sfs_truncfile+0xf4>
ffffffffc020a636:	03cd2c03          	lw	s8,60(s10)
ffffffffc020a63a:	040c0163          	beqz	s8,ffffffffc020a67c <sfs_truncfile+0xf4>
ffffffffc020a63e:	004ca783          	lw	a5,4(s9)
ffffffffc020a642:	18fc7963          	bgeu	s8,a5,ffffffffc020a7d4 <sfs_truncfile+0x24c>
ffffffffc020a646:	038cb503          	ld	a0,56(s9)
ffffffffc020a64a:	85e2                	mv	a1,s8
ffffffffc020a64c:	afbfe0ef          	jal	ra,ffffffffc0209146 <bitmap_test>
ffffffffc020a650:	16051263          	bnez	a0,ffffffffc020a7b4 <sfs_truncfile+0x22c>
ffffffffc020a654:	02091793          	slli	a5,s2,0x20
ffffffffc020a658:	01e7d713          	srli	a4,a5,0x1e
ffffffffc020a65c:	86e2                	mv	a3,s8
ffffffffc020a65e:	4611                	li	a2,4
ffffffffc020a660:	082c                	addi	a1,sp,24
ffffffffc020a662:	8566                	mv	a0,s9
ffffffffc020a664:	e43a                	sd	a4,8(sp)
ffffffffc020a666:	ce02                	sw	zero,28(sp)
ffffffffc020a668:	043000ef          	jal	ra,ffffffffc020aeaa <sfs_rbuf>
ffffffffc020a66c:	892a                	mv	s2,a0
ffffffffc020a66e:	e141                	bnez	a0,ffffffffc020a6ee <sfs_truncfile+0x166>
ffffffffc020a670:	47e2                	lw	a5,24(sp)
ffffffffc020a672:	6722                	ld	a4,8(sp)
ffffffffc020a674:	e3c9                	bnez	a5,ffffffffc020a6f6 <sfs_truncfile+0x16e>
ffffffffc020a676:	008d2603          	lw	a2,8(s10)
ffffffffc020a67a:	367d                	addiw	a2,a2,-1
ffffffffc020a67c:	00cd2423          	sw	a2,8(s10)
ffffffffc020a680:	0179b823          	sd	s7,16(s3)
ffffffffc020a684:	34fd                	addiw	s1,s1,-1
ffffffffc020a686:	04940a63          	beq	s0,s1,ffffffffc020a6da <sfs_truncfile+0x152>
ffffffffc020a68a:	0009bd03          	ld	s10,0(s3)
ffffffffc020a68e:	008d2703          	lw	a4,8(s10)
ffffffffc020a692:	c369                	beqz	a4,ffffffffc020a754 <sfs_truncfile+0x1cc>
ffffffffc020a694:	fff7079b          	addiw	a5,a4,-1
ffffffffc020a698:	0007861b          	sext.w	a2,a5
ffffffffc020a69c:	f8cde5e3          	bltu	s11,a2,ffffffffc020a626 <sfs_truncfile+0x9e>
ffffffffc020a6a0:	02079713          	slli	a4,a5,0x20
ffffffffc020a6a4:	01e75793          	srli	a5,a4,0x1e
ffffffffc020a6a8:	00fd0933          	add	s2,s10,a5
ffffffffc020a6ac:	00c92583          	lw	a1,12(s2)
ffffffffc020a6b0:	d5f1                	beqz	a1,ffffffffc020a67c <sfs_truncfile+0xf4>
ffffffffc020a6b2:	8566                	mv	a0,s9
ffffffffc020a6b4:	ba0ff0ef          	jal	ra,ffffffffc0209a54 <sfs_block_free>
ffffffffc020a6b8:	00092623          	sw	zero,12(s2)
ffffffffc020a6bc:	008d2603          	lw	a2,8(s10)
ffffffffc020a6c0:	367d                	addiw	a2,a2,-1
ffffffffc020a6c2:	bf6d                	j	ffffffffc020a67c <sfs_truncfile+0xf4>
ffffffffc020a6c4:	4681                	li	a3,0
ffffffffc020a6c6:	8626                	mv	a2,s1
ffffffffc020a6c8:	85ce                	mv	a1,s3
ffffffffc020a6ca:	8566                	mv	a0,s9
ffffffffc020a6cc:	e42ff0ef          	jal	ra,ffffffffc0209d0e <sfs_bmap_load_nolock>
ffffffffc020a6d0:	892a                	mv	s2,a0
ffffffffc020a6d2:	ed11                	bnez	a0,ffffffffc020a6ee <sfs_truncfile+0x166>
ffffffffc020a6d4:	2485                	addiw	s1,s1,1
ffffffffc020a6d6:	fe9417e3          	bne	s0,s1,ffffffffc020a6c4 <sfs_truncfile+0x13c>
ffffffffc020a6da:	008aa483          	lw	s1,8(s5)
ffffffffc020a6de:	0a941b63          	bne	s0,s1,ffffffffc020a794 <sfs_truncfile+0x20c>
ffffffffc020a6e2:	014aa023          	sw	s4,0(s5)
ffffffffc020a6e6:	4785                	li	a5,1
ffffffffc020a6e8:	00f9b823          	sd	a5,16(s3)
ffffffffc020a6ec:	4901                	li	s2,0
ffffffffc020a6ee:	855a                	mv	a0,s6
ffffffffc020a6f0:	f99f90ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc020a6f4:	bddd                	j	ffffffffc020a5ea <sfs_truncfile+0x62>
ffffffffc020a6f6:	86e2                	mv	a3,s8
ffffffffc020a6f8:	4611                	li	a2,4
ffffffffc020a6fa:	086c                	addi	a1,sp,28
ffffffffc020a6fc:	8566                	mv	a0,s9
ffffffffc020a6fe:	02d000ef          	jal	ra,ffffffffc020af2a <sfs_wbuf>
ffffffffc020a702:	892a                	mv	s2,a0
ffffffffc020a704:	f56d                	bnez	a0,ffffffffc020a6ee <sfs_truncfile+0x166>
ffffffffc020a706:	45e2                	lw	a1,24(sp)
ffffffffc020a708:	8566                	mv	a0,s9
ffffffffc020a70a:	b4aff0ef          	jal	ra,ffffffffc0209a54 <sfs_block_free>
ffffffffc020a70e:	b7a5                	j	ffffffffc020a676 <sfs_truncfile+0xee>
ffffffffc020a710:	5975                	li	s2,-3
ffffffffc020a712:	bde1                	j	ffffffffc020a5ea <sfs_truncfile+0x62>
ffffffffc020a714:	00005697          	auipc	a3,0x5
ffffffffc020a718:	81468693          	addi	a3,a3,-2028 # ffffffffc020ef28 <dev_node_ops+0x3e0>
ffffffffc020a71c:	00001617          	auipc	a2,0x1
ffffffffc020a720:	3f460613          	addi	a2,a2,1012 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a724:	3be00593          	li	a1,958
ffffffffc020a728:	00005517          	auipc	a0,0x5
ffffffffc020a72c:	9e050513          	addi	a0,a0,-1568 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a730:	d6ff50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a734:	00005697          	auipc	a3,0x5
ffffffffc020a738:	99c68693          	addi	a3,a3,-1636 # ffffffffc020f0d0 <dev_node_ops+0x588>
ffffffffc020a73c:	00001617          	auipc	a2,0x1
ffffffffc020a740:	3d460613          	addi	a2,a2,980 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a744:	3bf00593          	li	a1,959
ffffffffc020a748:	00005517          	auipc	a0,0x5
ffffffffc020a74c:	9c050513          	addi	a0,a0,-1600 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a750:	d4ff50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a754:	00005697          	auipc	a3,0x5
ffffffffc020a758:	bd468693          	addi	a3,a3,-1068 # ffffffffc020f328 <dev_node_ops+0x7e0>
ffffffffc020a75c:	00001617          	auipc	a2,0x1
ffffffffc020a760:	3b460613          	addi	a2,a2,948 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a764:	17b00593          	li	a1,379
ffffffffc020a768:	00005517          	auipc	a0,0x5
ffffffffc020a76c:	9a050513          	addi	a0,a0,-1632 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a770:	d2ff50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a774:	00005697          	auipc	a3,0x5
ffffffffc020a778:	b9c68693          	addi	a3,a3,-1124 # ffffffffc020f310 <dev_node_ops+0x7c8>
ffffffffc020a77c:	00001617          	auipc	a2,0x1
ffffffffc020a780:	39460613          	addi	a2,a2,916 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a784:	3c600593          	li	a1,966
ffffffffc020a788:	00005517          	auipc	a0,0x5
ffffffffc020a78c:	98050513          	addi	a0,a0,-1664 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a790:	d0ff50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a794:	00005697          	auipc	a3,0x5
ffffffffc020a798:	be468693          	addi	a3,a3,-1052 # ffffffffc020f378 <dev_node_ops+0x830>
ffffffffc020a79c:	00001617          	auipc	a2,0x1
ffffffffc020a7a0:	37460613          	addi	a2,a2,884 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a7a4:	3df00593          	li	a1,991
ffffffffc020a7a8:	00005517          	auipc	a0,0x5
ffffffffc020a7ac:	96050513          	addi	a0,a0,-1696 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a7b0:	ceff50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a7b4:	00005697          	auipc	a3,0x5
ffffffffc020a7b8:	b8c68693          	addi	a3,a3,-1140 # ffffffffc020f340 <dev_node_ops+0x7f8>
ffffffffc020a7bc:	00001617          	auipc	a2,0x1
ffffffffc020a7c0:	35460613          	addi	a2,a2,852 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a7c4:	12b00593          	li	a1,299
ffffffffc020a7c8:	00005517          	auipc	a0,0x5
ffffffffc020a7cc:	94050513          	addi	a0,a0,-1728 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a7d0:	ccff50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a7d4:	8762                	mv	a4,s8
ffffffffc020a7d6:	86be                	mv	a3,a5
ffffffffc020a7d8:	00005617          	auipc	a2,0x5
ffffffffc020a7dc:	96060613          	addi	a2,a2,-1696 # ffffffffc020f138 <dev_node_ops+0x5f0>
ffffffffc020a7e0:	05300593          	li	a1,83
ffffffffc020a7e4:	00005517          	auipc	a0,0x5
ffffffffc020a7e8:	92450513          	addi	a0,a0,-1756 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a7ec:	cb3f50ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020a7f0 <sfs_load_inode>:
ffffffffc020a7f0:	7139                	addi	sp,sp,-64
ffffffffc020a7f2:	fc06                	sd	ra,56(sp)
ffffffffc020a7f4:	f822                	sd	s0,48(sp)
ffffffffc020a7f6:	f426                	sd	s1,40(sp)
ffffffffc020a7f8:	f04a                	sd	s2,32(sp)
ffffffffc020a7fa:	84b2                	mv	s1,a2
ffffffffc020a7fc:	892a                	mv	s2,a0
ffffffffc020a7fe:	ec4e                	sd	s3,24(sp)
ffffffffc020a800:	e852                	sd	s4,16(sp)
ffffffffc020a802:	89ae                	mv	s3,a1
ffffffffc020a804:	e456                	sd	s5,8(sp)
ffffffffc020a806:	0d5000ef          	jal	ra,ffffffffc020b0da <lock_sfs_fs>
ffffffffc020a80a:	45a9                	li	a1,10
ffffffffc020a80c:	8526                	mv	a0,s1
ffffffffc020a80e:	0a893403          	ld	s0,168(s2)
ffffffffc020a812:	0e9000ef          	jal	ra,ffffffffc020b0fa <hash32>
ffffffffc020a816:	02051793          	slli	a5,a0,0x20
ffffffffc020a81a:	01c7d713          	srli	a4,a5,0x1c
ffffffffc020a81e:	9722                	add	a4,a4,s0
ffffffffc020a820:	843a                	mv	s0,a4
ffffffffc020a822:	a029                	j	ffffffffc020a82c <sfs_load_inode+0x3c>
ffffffffc020a824:	fc042783          	lw	a5,-64(s0)
ffffffffc020a828:	10978863          	beq	a5,s1,ffffffffc020a938 <sfs_load_inode+0x148>
ffffffffc020a82c:	6400                	ld	s0,8(s0)
ffffffffc020a82e:	fe871be3          	bne	a4,s0,ffffffffc020a824 <sfs_load_inode+0x34>
ffffffffc020a832:	04000513          	li	a0,64
ffffffffc020a836:	875f70ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc020a83a:	8aaa                	mv	s5,a0
ffffffffc020a83c:	16050563          	beqz	a0,ffffffffc020a9a6 <sfs_load_inode+0x1b6>
ffffffffc020a840:	00492683          	lw	a3,4(s2)
ffffffffc020a844:	18048363          	beqz	s1,ffffffffc020a9ca <sfs_load_inode+0x1da>
ffffffffc020a848:	18d4f163          	bgeu	s1,a3,ffffffffc020a9ca <sfs_load_inode+0x1da>
ffffffffc020a84c:	03893503          	ld	a0,56(s2)
ffffffffc020a850:	85a6                	mv	a1,s1
ffffffffc020a852:	8f5fe0ef          	jal	ra,ffffffffc0209146 <bitmap_test>
ffffffffc020a856:	18051763          	bnez	a0,ffffffffc020a9e4 <sfs_load_inode+0x1f4>
ffffffffc020a85a:	4701                	li	a4,0
ffffffffc020a85c:	86a6                	mv	a3,s1
ffffffffc020a85e:	04000613          	li	a2,64
ffffffffc020a862:	85d6                	mv	a1,s5
ffffffffc020a864:	854a                	mv	a0,s2
ffffffffc020a866:	644000ef          	jal	ra,ffffffffc020aeaa <sfs_rbuf>
ffffffffc020a86a:	842a                	mv	s0,a0
ffffffffc020a86c:	0e051563          	bnez	a0,ffffffffc020a956 <sfs_load_inode+0x166>
ffffffffc020a870:	006ad783          	lhu	a5,6(s5)
ffffffffc020a874:	12078b63          	beqz	a5,ffffffffc020a9aa <sfs_load_inode+0x1ba>
ffffffffc020a878:	6405                	lui	s0,0x1
ffffffffc020a87a:	23540513          	addi	a0,s0,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020a87e:	882fd0ef          	jal	ra,ffffffffc0207900 <__alloc_inode>
ffffffffc020a882:	8a2a                	mv	s4,a0
ffffffffc020a884:	c961                	beqz	a0,ffffffffc020a954 <sfs_load_inode+0x164>
ffffffffc020a886:	004ad683          	lhu	a3,4(s5)
ffffffffc020a88a:	4785                	li	a5,1
ffffffffc020a88c:	0cf69c63          	bne	a3,a5,ffffffffc020a964 <sfs_load_inode+0x174>
ffffffffc020a890:	864a                	mv	a2,s2
ffffffffc020a892:	00005597          	auipc	a1,0x5
ffffffffc020a896:	bf658593          	addi	a1,a1,-1034 # ffffffffc020f488 <sfs_node_fileops>
ffffffffc020a89a:	882fd0ef          	jal	ra,ffffffffc020791c <inode_init>
ffffffffc020a89e:	058a2783          	lw	a5,88(s4)
ffffffffc020a8a2:	23540413          	addi	s0,s0,565
ffffffffc020a8a6:	0e879063          	bne	a5,s0,ffffffffc020a986 <sfs_load_inode+0x196>
ffffffffc020a8aa:	4785                	li	a5,1
ffffffffc020a8ac:	00fa2c23          	sw	a5,24(s4)
ffffffffc020a8b0:	015a3023          	sd	s5,0(s4)
ffffffffc020a8b4:	009a2423          	sw	s1,8(s4)
ffffffffc020a8b8:	000a3823          	sd	zero,16(s4)
ffffffffc020a8bc:	4585                	li	a1,1
ffffffffc020a8be:	020a0513          	addi	a0,s4,32
ffffffffc020a8c2:	dc1f90ef          	jal	ra,ffffffffc0204682 <sem_init>
ffffffffc020a8c6:	058a2703          	lw	a4,88(s4)
ffffffffc020a8ca:	6785                	lui	a5,0x1
ffffffffc020a8cc:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020a8d0:	14f71663          	bne	a4,a5,ffffffffc020aa1c <sfs_load_inode+0x22c>
ffffffffc020a8d4:	0a093703          	ld	a4,160(s2)
ffffffffc020a8d8:	038a0793          	addi	a5,s4,56
ffffffffc020a8dc:	008a2503          	lw	a0,8(s4)
ffffffffc020a8e0:	e31c                	sd	a5,0(a4)
ffffffffc020a8e2:	0af93023          	sd	a5,160(s2)
ffffffffc020a8e6:	09890793          	addi	a5,s2,152
ffffffffc020a8ea:	0a893403          	ld	s0,168(s2)
ffffffffc020a8ee:	45a9                	li	a1,10
ffffffffc020a8f0:	04ea3023          	sd	a4,64(s4)
ffffffffc020a8f4:	02fa3c23          	sd	a5,56(s4)
ffffffffc020a8f8:	003000ef          	jal	ra,ffffffffc020b0fa <hash32>
ffffffffc020a8fc:	02051713          	slli	a4,a0,0x20
ffffffffc020a900:	01c75793          	srli	a5,a4,0x1c
ffffffffc020a904:	97a2                	add	a5,a5,s0
ffffffffc020a906:	6798                	ld	a4,8(a5)
ffffffffc020a908:	048a0693          	addi	a3,s4,72
ffffffffc020a90c:	e314                	sd	a3,0(a4)
ffffffffc020a90e:	e794                	sd	a3,8(a5)
ffffffffc020a910:	04ea3823          	sd	a4,80(s4)
ffffffffc020a914:	04fa3423          	sd	a5,72(s4)
ffffffffc020a918:	854a                	mv	a0,s2
ffffffffc020a91a:	7d0000ef          	jal	ra,ffffffffc020b0ea <unlock_sfs_fs>
ffffffffc020a91e:	4401                	li	s0,0
ffffffffc020a920:	0149b023          	sd	s4,0(s3)
ffffffffc020a924:	70e2                	ld	ra,56(sp)
ffffffffc020a926:	8522                	mv	a0,s0
ffffffffc020a928:	7442                	ld	s0,48(sp)
ffffffffc020a92a:	74a2                	ld	s1,40(sp)
ffffffffc020a92c:	7902                	ld	s2,32(sp)
ffffffffc020a92e:	69e2                	ld	s3,24(sp)
ffffffffc020a930:	6a42                	ld	s4,16(sp)
ffffffffc020a932:	6aa2                	ld	s5,8(sp)
ffffffffc020a934:	6121                	addi	sp,sp,64
ffffffffc020a936:	8082                	ret
ffffffffc020a938:	fb840a13          	addi	s4,s0,-72
ffffffffc020a93c:	8552                	mv	a0,s4
ffffffffc020a93e:	840fd0ef          	jal	ra,ffffffffc020797e <inode_ref_inc>
ffffffffc020a942:	4785                	li	a5,1
ffffffffc020a944:	fcf51ae3          	bne	a0,a5,ffffffffc020a918 <sfs_load_inode+0x128>
ffffffffc020a948:	fd042783          	lw	a5,-48(s0)
ffffffffc020a94c:	2785                	addiw	a5,a5,1
ffffffffc020a94e:	fcf42823          	sw	a5,-48(s0)
ffffffffc020a952:	b7d9                	j	ffffffffc020a918 <sfs_load_inode+0x128>
ffffffffc020a954:	5471                	li	s0,-4
ffffffffc020a956:	8556                	mv	a0,s5
ffffffffc020a958:	803f70ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc020a95c:	854a                	mv	a0,s2
ffffffffc020a95e:	78c000ef          	jal	ra,ffffffffc020b0ea <unlock_sfs_fs>
ffffffffc020a962:	b7c9                	j	ffffffffc020a924 <sfs_load_inode+0x134>
ffffffffc020a964:	4789                	li	a5,2
ffffffffc020a966:	08f69f63          	bne	a3,a5,ffffffffc020aa04 <sfs_load_inode+0x214>
ffffffffc020a96a:	864a                	mv	a2,s2
ffffffffc020a96c:	00005597          	auipc	a1,0x5
ffffffffc020a970:	a9c58593          	addi	a1,a1,-1380 # ffffffffc020f408 <sfs_node_dirops>
ffffffffc020a974:	fa9fc0ef          	jal	ra,ffffffffc020791c <inode_init>
ffffffffc020a978:	058a2703          	lw	a4,88(s4)
ffffffffc020a97c:	6785                	lui	a5,0x1
ffffffffc020a97e:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020a982:	f2f704e3          	beq	a4,a5,ffffffffc020a8aa <sfs_load_inode+0xba>
ffffffffc020a986:	00004697          	auipc	a3,0x4
ffffffffc020a98a:	74a68693          	addi	a3,a3,1866 # ffffffffc020f0d0 <dev_node_ops+0x588>
ffffffffc020a98e:	00001617          	auipc	a2,0x1
ffffffffc020a992:	18260613          	addi	a2,a2,386 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a996:	07700593          	li	a1,119
ffffffffc020a99a:	00004517          	auipc	a0,0x4
ffffffffc020a99e:	76e50513          	addi	a0,a0,1902 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a9a2:	afdf50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a9a6:	5471                	li	s0,-4
ffffffffc020a9a8:	bf55                	j	ffffffffc020a95c <sfs_load_inode+0x16c>
ffffffffc020a9aa:	00005697          	auipc	a3,0x5
ffffffffc020a9ae:	9e668693          	addi	a3,a3,-1562 # ffffffffc020f390 <dev_node_ops+0x848>
ffffffffc020a9b2:	00001617          	auipc	a2,0x1
ffffffffc020a9b6:	15e60613          	addi	a2,a2,350 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a9ba:	0ad00593          	li	a1,173
ffffffffc020a9be:	00004517          	auipc	a0,0x4
ffffffffc020a9c2:	74a50513          	addi	a0,a0,1866 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a9c6:	ad9f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a9ca:	8726                	mv	a4,s1
ffffffffc020a9cc:	00004617          	auipc	a2,0x4
ffffffffc020a9d0:	76c60613          	addi	a2,a2,1900 # ffffffffc020f138 <dev_node_ops+0x5f0>
ffffffffc020a9d4:	05300593          	li	a1,83
ffffffffc020a9d8:	00004517          	auipc	a0,0x4
ffffffffc020a9dc:	73050513          	addi	a0,a0,1840 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020a9e0:	abff50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a9e4:	00004697          	auipc	a3,0x4
ffffffffc020a9e8:	78c68693          	addi	a3,a3,1932 # ffffffffc020f170 <dev_node_ops+0x628>
ffffffffc020a9ec:	00001617          	auipc	a2,0x1
ffffffffc020a9f0:	12460613          	addi	a2,a2,292 # ffffffffc020bb10 <commands+0x210>
ffffffffc020a9f4:	0a800593          	li	a1,168
ffffffffc020a9f8:	00004517          	auipc	a0,0x4
ffffffffc020a9fc:	71050513          	addi	a0,a0,1808 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020aa00:	a9ff50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020aa04:	00004617          	auipc	a2,0x4
ffffffffc020aa08:	71c60613          	addi	a2,a2,1820 # ffffffffc020f120 <dev_node_ops+0x5d8>
ffffffffc020aa0c:	02e00593          	li	a1,46
ffffffffc020aa10:	00004517          	auipc	a0,0x4
ffffffffc020aa14:	6f850513          	addi	a0,a0,1784 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020aa18:	a87f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020aa1c:	00004697          	auipc	a3,0x4
ffffffffc020aa20:	6b468693          	addi	a3,a3,1716 # ffffffffc020f0d0 <dev_node_ops+0x588>
ffffffffc020aa24:	00001617          	auipc	a2,0x1
ffffffffc020aa28:	0ec60613          	addi	a2,a2,236 # ffffffffc020bb10 <commands+0x210>
ffffffffc020aa2c:	0b100593          	li	a1,177
ffffffffc020aa30:	00004517          	auipc	a0,0x4
ffffffffc020aa34:	6d850513          	addi	a0,a0,1752 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020aa38:	a67f50ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020aa3c <sfs_lookup>:
ffffffffc020aa3c:	7139                	addi	sp,sp,-64
ffffffffc020aa3e:	ec4e                	sd	s3,24(sp)
ffffffffc020aa40:	06853983          	ld	s3,104(a0)
ffffffffc020aa44:	fc06                	sd	ra,56(sp)
ffffffffc020aa46:	f822                	sd	s0,48(sp)
ffffffffc020aa48:	f426                	sd	s1,40(sp)
ffffffffc020aa4a:	f04a                	sd	s2,32(sp)
ffffffffc020aa4c:	e852                	sd	s4,16(sp)
ffffffffc020aa4e:	0a098c63          	beqz	s3,ffffffffc020ab06 <sfs_lookup+0xca>
ffffffffc020aa52:	0b09a783          	lw	a5,176(s3)
ffffffffc020aa56:	ebc5                	bnez	a5,ffffffffc020ab06 <sfs_lookup+0xca>
ffffffffc020aa58:	0005c783          	lbu	a5,0(a1)
ffffffffc020aa5c:	84ae                	mv	s1,a1
ffffffffc020aa5e:	c7c1                	beqz	a5,ffffffffc020aae6 <sfs_lookup+0xaa>
ffffffffc020aa60:	02f00713          	li	a4,47
ffffffffc020aa64:	08e78163          	beq	a5,a4,ffffffffc020aae6 <sfs_lookup+0xaa>
ffffffffc020aa68:	842a                	mv	s0,a0
ffffffffc020aa6a:	8a32                	mv	s4,a2
ffffffffc020aa6c:	f13fc0ef          	jal	ra,ffffffffc020797e <inode_ref_inc>
ffffffffc020aa70:	4c38                	lw	a4,88(s0)
ffffffffc020aa72:	6785                	lui	a5,0x1
ffffffffc020aa74:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020aa78:	0af71763          	bne	a4,a5,ffffffffc020ab26 <sfs_lookup+0xea>
ffffffffc020aa7c:	6018                	ld	a4,0(s0)
ffffffffc020aa7e:	4789                	li	a5,2
ffffffffc020aa80:	00475703          	lhu	a4,4(a4)
ffffffffc020aa84:	04f71c63          	bne	a4,a5,ffffffffc020aadc <sfs_lookup+0xa0>
ffffffffc020aa88:	02040913          	addi	s2,s0,32
ffffffffc020aa8c:	854a                	mv	a0,s2
ffffffffc020aa8e:	bfff90ef          	jal	ra,ffffffffc020468c <down>
ffffffffc020aa92:	8626                	mv	a2,s1
ffffffffc020aa94:	0054                	addi	a3,sp,4
ffffffffc020aa96:	85a2                	mv	a1,s0
ffffffffc020aa98:	854e                	mv	a0,s3
ffffffffc020aa9a:	a29ff0ef          	jal	ra,ffffffffc020a4c2 <sfs_dirent_search_nolock.constprop.0>
ffffffffc020aa9e:	84aa                	mv	s1,a0
ffffffffc020aaa0:	854a                	mv	a0,s2
ffffffffc020aaa2:	be7f90ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc020aaa6:	cc89                	beqz	s1,ffffffffc020aac0 <sfs_lookup+0x84>
ffffffffc020aaa8:	8522                	mv	a0,s0
ffffffffc020aaaa:	fa3fc0ef          	jal	ra,ffffffffc0207a4c <inode_ref_dec>
ffffffffc020aaae:	70e2                	ld	ra,56(sp)
ffffffffc020aab0:	7442                	ld	s0,48(sp)
ffffffffc020aab2:	7902                	ld	s2,32(sp)
ffffffffc020aab4:	69e2                	ld	s3,24(sp)
ffffffffc020aab6:	6a42                	ld	s4,16(sp)
ffffffffc020aab8:	8526                	mv	a0,s1
ffffffffc020aaba:	74a2                	ld	s1,40(sp)
ffffffffc020aabc:	6121                	addi	sp,sp,64
ffffffffc020aabe:	8082                	ret
ffffffffc020aac0:	4612                	lw	a2,4(sp)
ffffffffc020aac2:	002c                	addi	a1,sp,8
ffffffffc020aac4:	854e                	mv	a0,s3
ffffffffc020aac6:	d2bff0ef          	jal	ra,ffffffffc020a7f0 <sfs_load_inode>
ffffffffc020aaca:	84aa                	mv	s1,a0
ffffffffc020aacc:	8522                	mv	a0,s0
ffffffffc020aace:	f7ffc0ef          	jal	ra,ffffffffc0207a4c <inode_ref_dec>
ffffffffc020aad2:	fcf1                	bnez	s1,ffffffffc020aaae <sfs_lookup+0x72>
ffffffffc020aad4:	67a2                	ld	a5,8(sp)
ffffffffc020aad6:	00fa3023          	sd	a5,0(s4)
ffffffffc020aada:	bfd1                	j	ffffffffc020aaae <sfs_lookup+0x72>
ffffffffc020aadc:	8522                	mv	a0,s0
ffffffffc020aade:	f6ffc0ef          	jal	ra,ffffffffc0207a4c <inode_ref_dec>
ffffffffc020aae2:	54b9                	li	s1,-18
ffffffffc020aae4:	b7e9                	j	ffffffffc020aaae <sfs_lookup+0x72>
ffffffffc020aae6:	00005697          	auipc	a3,0x5
ffffffffc020aaea:	8c268693          	addi	a3,a3,-1854 # ffffffffc020f3a8 <dev_node_ops+0x860>
ffffffffc020aaee:	00001617          	auipc	a2,0x1
ffffffffc020aaf2:	02260613          	addi	a2,a2,34 # ffffffffc020bb10 <commands+0x210>
ffffffffc020aaf6:	3f000593          	li	a1,1008
ffffffffc020aafa:	00004517          	auipc	a0,0x4
ffffffffc020aafe:	60e50513          	addi	a0,a0,1550 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020ab02:	99df50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020ab06:	00004697          	auipc	a3,0x4
ffffffffc020ab0a:	42268693          	addi	a3,a3,1058 # ffffffffc020ef28 <dev_node_ops+0x3e0>
ffffffffc020ab0e:	00001617          	auipc	a2,0x1
ffffffffc020ab12:	00260613          	addi	a2,a2,2 # ffffffffc020bb10 <commands+0x210>
ffffffffc020ab16:	3ef00593          	li	a1,1007
ffffffffc020ab1a:	00004517          	auipc	a0,0x4
ffffffffc020ab1e:	5ee50513          	addi	a0,a0,1518 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020ab22:	97df50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020ab26:	00004697          	auipc	a3,0x4
ffffffffc020ab2a:	5aa68693          	addi	a3,a3,1450 # ffffffffc020f0d0 <dev_node_ops+0x588>
ffffffffc020ab2e:	00001617          	auipc	a2,0x1
ffffffffc020ab32:	fe260613          	addi	a2,a2,-30 # ffffffffc020bb10 <commands+0x210>
ffffffffc020ab36:	3f200593          	li	a1,1010
ffffffffc020ab3a:	00004517          	auipc	a0,0x4
ffffffffc020ab3e:	5ce50513          	addi	a0,a0,1486 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020ab42:	95df50ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020ab46 <sfs_namefile>:
ffffffffc020ab46:	6d98                	ld	a4,24(a1)
ffffffffc020ab48:	7175                	addi	sp,sp,-144
ffffffffc020ab4a:	e506                	sd	ra,136(sp)
ffffffffc020ab4c:	e122                	sd	s0,128(sp)
ffffffffc020ab4e:	fca6                	sd	s1,120(sp)
ffffffffc020ab50:	f8ca                	sd	s2,112(sp)
ffffffffc020ab52:	f4ce                	sd	s3,104(sp)
ffffffffc020ab54:	f0d2                	sd	s4,96(sp)
ffffffffc020ab56:	ecd6                	sd	s5,88(sp)
ffffffffc020ab58:	e8da                	sd	s6,80(sp)
ffffffffc020ab5a:	e4de                	sd	s7,72(sp)
ffffffffc020ab5c:	e0e2                	sd	s8,64(sp)
ffffffffc020ab5e:	fc66                	sd	s9,56(sp)
ffffffffc020ab60:	f86a                	sd	s10,48(sp)
ffffffffc020ab62:	f46e                	sd	s11,40(sp)
ffffffffc020ab64:	e42e                	sd	a1,8(sp)
ffffffffc020ab66:	4789                	li	a5,2
ffffffffc020ab68:	1ae7f363          	bgeu	a5,a4,ffffffffc020ad0e <sfs_namefile+0x1c8>
ffffffffc020ab6c:	89aa                	mv	s3,a0
ffffffffc020ab6e:	10400513          	li	a0,260
ffffffffc020ab72:	d38f70ef          	jal	ra,ffffffffc02020aa <kmalloc>
ffffffffc020ab76:	842a                	mv	s0,a0
ffffffffc020ab78:	18050b63          	beqz	a0,ffffffffc020ad0e <sfs_namefile+0x1c8>
ffffffffc020ab7c:	0689b483          	ld	s1,104(s3)
ffffffffc020ab80:	1e048963          	beqz	s1,ffffffffc020ad72 <sfs_namefile+0x22c>
ffffffffc020ab84:	0b04a783          	lw	a5,176(s1)
ffffffffc020ab88:	1e079563          	bnez	a5,ffffffffc020ad72 <sfs_namefile+0x22c>
ffffffffc020ab8c:	0589ac83          	lw	s9,88(s3)
ffffffffc020ab90:	6785                	lui	a5,0x1
ffffffffc020ab92:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020ab96:	1afc9e63          	bne	s9,a5,ffffffffc020ad52 <sfs_namefile+0x20c>
ffffffffc020ab9a:	6722                	ld	a4,8(sp)
ffffffffc020ab9c:	854e                	mv	a0,s3
ffffffffc020ab9e:	8ace                	mv	s5,s3
ffffffffc020aba0:	6f1c                	ld	a5,24(a4)
ffffffffc020aba2:	00073b03          	ld	s6,0(a4)
ffffffffc020aba6:	02098a13          	addi	s4,s3,32
ffffffffc020abaa:	ffe78b93          	addi	s7,a5,-2
ffffffffc020abae:	9b3e                	add	s6,s6,a5
ffffffffc020abb0:	00005d17          	auipc	s10,0x5
ffffffffc020abb4:	818d0d13          	addi	s10,s10,-2024 # ffffffffc020f3c8 <dev_node_ops+0x880>
ffffffffc020abb8:	dc7fc0ef          	jal	ra,ffffffffc020797e <inode_ref_inc>
ffffffffc020abbc:	00440c13          	addi	s8,s0,4
ffffffffc020abc0:	e066                	sd	s9,0(sp)
ffffffffc020abc2:	8552                	mv	a0,s4
ffffffffc020abc4:	ac9f90ef          	jal	ra,ffffffffc020468c <down>
ffffffffc020abc8:	0854                	addi	a3,sp,20
ffffffffc020abca:	866a                	mv	a2,s10
ffffffffc020abcc:	85d6                	mv	a1,s5
ffffffffc020abce:	8526                	mv	a0,s1
ffffffffc020abd0:	8f3ff0ef          	jal	ra,ffffffffc020a4c2 <sfs_dirent_search_nolock.constprop.0>
ffffffffc020abd4:	8daa                	mv	s11,a0
ffffffffc020abd6:	8552                	mv	a0,s4
ffffffffc020abd8:	ab1f90ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc020abdc:	020d8863          	beqz	s11,ffffffffc020ac0c <sfs_namefile+0xc6>
ffffffffc020abe0:	854e                	mv	a0,s3
ffffffffc020abe2:	e6bfc0ef          	jal	ra,ffffffffc0207a4c <inode_ref_dec>
ffffffffc020abe6:	8522                	mv	a0,s0
ffffffffc020abe8:	d72f70ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc020abec:	60aa                	ld	ra,136(sp)
ffffffffc020abee:	640a                	ld	s0,128(sp)
ffffffffc020abf0:	74e6                	ld	s1,120(sp)
ffffffffc020abf2:	7946                	ld	s2,112(sp)
ffffffffc020abf4:	79a6                	ld	s3,104(sp)
ffffffffc020abf6:	7a06                	ld	s4,96(sp)
ffffffffc020abf8:	6ae6                	ld	s5,88(sp)
ffffffffc020abfa:	6b46                	ld	s6,80(sp)
ffffffffc020abfc:	6ba6                	ld	s7,72(sp)
ffffffffc020abfe:	6c06                	ld	s8,64(sp)
ffffffffc020ac00:	7ce2                	ld	s9,56(sp)
ffffffffc020ac02:	7d42                	ld	s10,48(sp)
ffffffffc020ac04:	856e                	mv	a0,s11
ffffffffc020ac06:	7da2                	ld	s11,40(sp)
ffffffffc020ac08:	6149                	addi	sp,sp,144
ffffffffc020ac0a:	8082                	ret
ffffffffc020ac0c:	4652                	lw	a2,20(sp)
ffffffffc020ac0e:	082c                	addi	a1,sp,24
ffffffffc020ac10:	8526                	mv	a0,s1
ffffffffc020ac12:	bdfff0ef          	jal	ra,ffffffffc020a7f0 <sfs_load_inode>
ffffffffc020ac16:	8daa                	mv	s11,a0
ffffffffc020ac18:	f561                	bnez	a0,ffffffffc020abe0 <sfs_namefile+0x9a>
ffffffffc020ac1a:	854e                	mv	a0,s3
ffffffffc020ac1c:	008aa903          	lw	s2,8(s5)
ffffffffc020ac20:	e2dfc0ef          	jal	ra,ffffffffc0207a4c <inode_ref_dec>
ffffffffc020ac24:	6ce2                	ld	s9,24(sp)
ffffffffc020ac26:	0b3c8463          	beq	s9,s3,ffffffffc020acce <sfs_namefile+0x188>
ffffffffc020ac2a:	100c8463          	beqz	s9,ffffffffc020ad32 <sfs_namefile+0x1ec>
ffffffffc020ac2e:	058ca703          	lw	a4,88(s9)
ffffffffc020ac32:	6782                	ld	a5,0(sp)
ffffffffc020ac34:	0ef71f63          	bne	a4,a5,ffffffffc020ad32 <sfs_namefile+0x1ec>
ffffffffc020ac38:	008ca703          	lw	a4,8(s9)
ffffffffc020ac3c:	8ae6                	mv	s5,s9
ffffffffc020ac3e:	0d270a63          	beq	a4,s2,ffffffffc020ad12 <sfs_namefile+0x1cc>
ffffffffc020ac42:	000cb703          	ld	a4,0(s9)
ffffffffc020ac46:	4789                	li	a5,2
ffffffffc020ac48:	00475703          	lhu	a4,4(a4)
ffffffffc020ac4c:	0cf71363          	bne	a4,a5,ffffffffc020ad12 <sfs_namefile+0x1cc>
ffffffffc020ac50:	020c8a13          	addi	s4,s9,32
ffffffffc020ac54:	8552                	mv	a0,s4
ffffffffc020ac56:	a37f90ef          	jal	ra,ffffffffc020468c <down>
ffffffffc020ac5a:	000cb703          	ld	a4,0(s9)
ffffffffc020ac5e:	00872983          	lw	s3,8(a4)
ffffffffc020ac62:	01304963          	bgtz	s3,ffffffffc020ac74 <sfs_namefile+0x12e>
ffffffffc020ac66:	a899                	j	ffffffffc020acbc <sfs_namefile+0x176>
ffffffffc020ac68:	4018                	lw	a4,0(s0)
ffffffffc020ac6a:	01270e63          	beq	a4,s2,ffffffffc020ac86 <sfs_namefile+0x140>
ffffffffc020ac6e:	2d85                	addiw	s11,s11,1
ffffffffc020ac70:	05b98663          	beq	s3,s11,ffffffffc020acbc <sfs_namefile+0x176>
ffffffffc020ac74:	86a2                	mv	a3,s0
ffffffffc020ac76:	866e                	mv	a2,s11
ffffffffc020ac78:	85e6                	mv	a1,s9
ffffffffc020ac7a:	8526                	mv	a0,s1
ffffffffc020ac7c:	e48ff0ef          	jal	ra,ffffffffc020a2c4 <sfs_dirent_read_nolock>
ffffffffc020ac80:	872a                	mv	a4,a0
ffffffffc020ac82:	d17d                	beqz	a0,ffffffffc020ac68 <sfs_namefile+0x122>
ffffffffc020ac84:	a82d                	j	ffffffffc020acbe <sfs_namefile+0x178>
ffffffffc020ac86:	8552                	mv	a0,s4
ffffffffc020ac88:	a01f90ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc020ac8c:	8562                	mv	a0,s8
ffffffffc020ac8e:	0ff000ef          	jal	ra,ffffffffc020b58c <strlen>
ffffffffc020ac92:	00150793          	addi	a5,a0,1
ffffffffc020ac96:	862a                	mv	a2,a0
ffffffffc020ac98:	06fbe863          	bltu	s7,a5,ffffffffc020ad08 <sfs_namefile+0x1c2>
ffffffffc020ac9c:	fff64913          	not	s2,a2
ffffffffc020aca0:	995a                	add	s2,s2,s6
ffffffffc020aca2:	85e2                	mv	a1,s8
ffffffffc020aca4:	854a                	mv	a0,s2
ffffffffc020aca6:	40fb8bb3          	sub	s7,s7,a5
ffffffffc020acaa:	1d7000ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc020acae:	02f00793          	li	a5,47
ffffffffc020acb2:	fefb0fa3          	sb	a5,-1(s6)
ffffffffc020acb6:	89e6                	mv	s3,s9
ffffffffc020acb8:	8b4a                	mv	s6,s2
ffffffffc020acba:	b721                	j	ffffffffc020abc2 <sfs_namefile+0x7c>
ffffffffc020acbc:	5741                	li	a4,-16
ffffffffc020acbe:	8552                	mv	a0,s4
ffffffffc020acc0:	e03a                	sd	a4,0(sp)
ffffffffc020acc2:	9c7f90ef          	jal	ra,ffffffffc0204688 <up>
ffffffffc020acc6:	6702                	ld	a4,0(sp)
ffffffffc020acc8:	89e6                	mv	s3,s9
ffffffffc020acca:	8dba                	mv	s11,a4
ffffffffc020accc:	bf11                	j	ffffffffc020abe0 <sfs_namefile+0x9a>
ffffffffc020acce:	854e                	mv	a0,s3
ffffffffc020acd0:	d7dfc0ef          	jal	ra,ffffffffc0207a4c <inode_ref_dec>
ffffffffc020acd4:	64a2                	ld	s1,8(sp)
ffffffffc020acd6:	85da                	mv	a1,s6
ffffffffc020acd8:	6c98                	ld	a4,24(s1)
ffffffffc020acda:	6088                	ld	a0,0(s1)
ffffffffc020acdc:	1779                	addi	a4,a4,-2
ffffffffc020acde:	41770bb3          	sub	s7,a4,s7
ffffffffc020ace2:	865e                	mv	a2,s7
ffffffffc020ace4:	0505                	addi	a0,a0,1
ffffffffc020ace6:	15b000ef          	jal	ra,ffffffffc020b640 <memmove>
ffffffffc020acea:	02f00713          	li	a4,47
ffffffffc020acee:	fee50fa3          	sb	a4,-1(a0)
ffffffffc020acf2:	955e                	add	a0,a0,s7
ffffffffc020acf4:	00050023          	sb	zero,0(a0)
ffffffffc020acf8:	85de                	mv	a1,s7
ffffffffc020acfa:	8526                	mv	a0,s1
ffffffffc020acfc:	885fa0ef          	jal	ra,ffffffffc0205580 <iobuf_skip>
ffffffffc020ad00:	8522                	mv	a0,s0
ffffffffc020ad02:	c58f70ef          	jal	ra,ffffffffc020215a <kfree>
ffffffffc020ad06:	b5dd                	j	ffffffffc020abec <sfs_namefile+0xa6>
ffffffffc020ad08:	89e6                	mv	s3,s9
ffffffffc020ad0a:	5df1                	li	s11,-4
ffffffffc020ad0c:	bdd1                	j	ffffffffc020abe0 <sfs_namefile+0x9a>
ffffffffc020ad0e:	5df1                	li	s11,-4
ffffffffc020ad10:	bdf1                	j	ffffffffc020abec <sfs_namefile+0xa6>
ffffffffc020ad12:	00004697          	auipc	a3,0x4
ffffffffc020ad16:	6be68693          	addi	a3,a3,1726 # ffffffffc020f3d0 <dev_node_ops+0x888>
ffffffffc020ad1a:	00001617          	auipc	a2,0x1
ffffffffc020ad1e:	df660613          	addi	a2,a2,-522 # ffffffffc020bb10 <commands+0x210>
ffffffffc020ad22:	30e00593          	li	a1,782
ffffffffc020ad26:	00004517          	auipc	a0,0x4
ffffffffc020ad2a:	3e250513          	addi	a0,a0,994 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020ad2e:	f70f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020ad32:	00004697          	auipc	a3,0x4
ffffffffc020ad36:	39e68693          	addi	a3,a3,926 # ffffffffc020f0d0 <dev_node_ops+0x588>
ffffffffc020ad3a:	00001617          	auipc	a2,0x1
ffffffffc020ad3e:	dd660613          	addi	a2,a2,-554 # ffffffffc020bb10 <commands+0x210>
ffffffffc020ad42:	30d00593          	li	a1,781
ffffffffc020ad46:	00004517          	auipc	a0,0x4
ffffffffc020ad4a:	3c250513          	addi	a0,a0,962 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020ad4e:	f50f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020ad52:	00004697          	auipc	a3,0x4
ffffffffc020ad56:	37e68693          	addi	a3,a3,894 # ffffffffc020f0d0 <dev_node_ops+0x588>
ffffffffc020ad5a:	00001617          	auipc	a2,0x1
ffffffffc020ad5e:	db660613          	addi	a2,a2,-586 # ffffffffc020bb10 <commands+0x210>
ffffffffc020ad62:	2fa00593          	li	a1,762
ffffffffc020ad66:	00004517          	auipc	a0,0x4
ffffffffc020ad6a:	3a250513          	addi	a0,a0,930 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020ad6e:	f30f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020ad72:	00004697          	auipc	a3,0x4
ffffffffc020ad76:	1b668693          	addi	a3,a3,438 # ffffffffc020ef28 <dev_node_ops+0x3e0>
ffffffffc020ad7a:	00001617          	auipc	a2,0x1
ffffffffc020ad7e:	d9660613          	addi	a2,a2,-618 # ffffffffc020bb10 <commands+0x210>
ffffffffc020ad82:	2f900593          	li	a1,761
ffffffffc020ad86:	00004517          	auipc	a0,0x4
ffffffffc020ad8a:	38250513          	addi	a0,a0,898 # ffffffffc020f108 <dev_node_ops+0x5c0>
ffffffffc020ad8e:	f10f50ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020ad92 <sfs_rwblock_nolock>:
ffffffffc020ad92:	7139                	addi	sp,sp,-64
ffffffffc020ad94:	f822                	sd	s0,48(sp)
ffffffffc020ad96:	f426                	sd	s1,40(sp)
ffffffffc020ad98:	fc06                	sd	ra,56(sp)
ffffffffc020ad9a:	842a                	mv	s0,a0
ffffffffc020ad9c:	84b6                	mv	s1,a3
ffffffffc020ad9e:	e211                	bnez	a2,ffffffffc020ada2 <sfs_rwblock_nolock+0x10>
ffffffffc020ada0:	e715                	bnez	a4,ffffffffc020adcc <sfs_rwblock_nolock+0x3a>
ffffffffc020ada2:	405c                	lw	a5,4(s0)
ffffffffc020ada4:	02f67463          	bgeu	a2,a5,ffffffffc020adcc <sfs_rwblock_nolock+0x3a>
ffffffffc020ada8:	00c6169b          	slliw	a3,a2,0xc
ffffffffc020adac:	1682                	slli	a3,a3,0x20
ffffffffc020adae:	6605                	lui	a2,0x1
ffffffffc020adb0:	9281                	srli	a3,a3,0x20
ffffffffc020adb2:	850a                	mv	a0,sp
ffffffffc020adb4:	f56fa0ef          	jal	ra,ffffffffc020550a <iobuf_init>
ffffffffc020adb8:	85aa                	mv	a1,a0
ffffffffc020adba:	7808                	ld	a0,48(s0)
ffffffffc020adbc:	8626                	mv	a2,s1
ffffffffc020adbe:	7118                	ld	a4,32(a0)
ffffffffc020adc0:	9702                	jalr	a4
ffffffffc020adc2:	70e2                	ld	ra,56(sp)
ffffffffc020adc4:	7442                	ld	s0,48(sp)
ffffffffc020adc6:	74a2                	ld	s1,40(sp)
ffffffffc020adc8:	6121                	addi	sp,sp,64
ffffffffc020adca:	8082                	ret
ffffffffc020adcc:	00004697          	auipc	a3,0x4
ffffffffc020add0:	73c68693          	addi	a3,a3,1852 # ffffffffc020f508 <sfs_node_fileops+0x80>
ffffffffc020add4:	00001617          	auipc	a2,0x1
ffffffffc020add8:	d3c60613          	addi	a2,a2,-708 # ffffffffc020bb10 <commands+0x210>
ffffffffc020addc:	45d5                	li	a1,21
ffffffffc020adde:	00004517          	auipc	a0,0x4
ffffffffc020ade2:	76250513          	addi	a0,a0,1890 # ffffffffc020f540 <sfs_node_fileops+0xb8>
ffffffffc020ade6:	eb8f50ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020adea <sfs_rblock>:
ffffffffc020adea:	7139                	addi	sp,sp,-64
ffffffffc020adec:	ec4e                	sd	s3,24(sp)
ffffffffc020adee:	89b6                	mv	s3,a3
ffffffffc020adf0:	f822                	sd	s0,48(sp)
ffffffffc020adf2:	f04a                	sd	s2,32(sp)
ffffffffc020adf4:	e852                	sd	s4,16(sp)
ffffffffc020adf6:	fc06                	sd	ra,56(sp)
ffffffffc020adf8:	f426                	sd	s1,40(sp)
ffffffffc020adfa:	e456                	sd	s5,8(sp)
ffffffffc020adfc:	8a2a                	mv	s4,a0
ffffffffc020adfe:	892e                	mv	s2,a1
ffffffffc020ae00:	8432                	mv	s0,a2
ffffffffc020ae02:	2e0000ef          	jal	ra,ffffffffc020b0e2 <lock_sfs_io>
ffffffffc020ae06:	04098063          	beqz	s3,ffffffffc020ae46 <sfs_rblock+0x5c>
ffffffffc020ae0a:	013409bb          	addw	s3,s0,s3
ffffffffc020ae0e:	6a85                	lui	s5,0x1
ffffffffc020ae10:	a021                	j	ffffffffc020ae18 <sfs_rblock+0x2e>
ffffffffc020ae12:	9956                	add	s2,s2,s5
ffffffffc020ae14:	02898963          	beq	s3,s0,ffffffffc020ae46 <sfs_rblock+0x5c>
ffffffffc020ae18:	8622                	mv	a2,s0
ffffffffc020ae1a:	85ca                	mv	a1,s2
ffffffffc020ae1c:	4705                	li	a4,1
ffffffffc020ae1e:	4681                	li	a3,0
ffffffffc020ae20:	8552                	mv	a0,s4
ffffffffc020ae22:	f71ff0ef          	jal	ra,ffffffffc020ad92 <sfs_rwblock_nolock>
ffffffffc020ae26:	84aa                	mv	s1,a0
ffffffffc020ae28:	2405                	addiw	s0,s0,1
ffffffffc020ae2a:	d565                	beqz	a0,ffffffffc020ae12 <sfs_rblock+0x28>
ffffffffc020ae2c:	8552                	mv	a0,s4
ffffffffc020ae2e:	2c4000ef          	jal	ra,ffffffffc020b0f2 <unlock_sfs_io>
ffffffffc020ae32:	70e2                	ld	ra,56(sp)
ffffffffc020ae34:	7442                	ld	s0,48(sp)
ffffffffc020ae36:	7902                	ld	s2,32(sp)
ffffffffc020ae38:	69e2                	ld	s3,24(sp)
ffffffffc020ae3a:	6a42                	ld	s4,16(sp)
ffffffffc020ae3c:	6aa2                	ld	s5,8(sp)
ffffffffc020ae3e:	8526                	mv	a0,s1
ffffffffc020ae40:	74a2                	ld	s1,40(sp)
ffffffffc020ae42:	6121                	addi	sp,sp,64
ffffffffc020ae44:	8082                	ret
ffffffffc020ae46:	4481                	li	s1,0
ffffffffc020ae48:	b7d5                	j	ffffffffc020ae2c <sfs_rblock+0x42>

ffffffffc020ae4a <sfs_wblock>:
ffffffffc020ae4a:	7139                	addi	sp,sp,-64
ffffffffc020ae4c:	ec4e                	sd	s3,24(sp)
ffffffffc020ae4e:	89b6                	mv	s3,a3
ffffffffc020ae50:	f822                	sd	s0,48(sp)
ffffffffc020ae52:	f04a                	sd	s2,32(sp)
ffffffffc020ae54:	e852                	sd	s4,16(sp)
ffffffffc020ae56:	fc06                	sd	ra,56(sp)
ffffffffc020ae58:	f426                	sd	s1,40(sp)
ffffffffc020ae5a:	e456                	sd	s5,8(sp)
ffffffffc020ae5c:	8a2a                	mv	s4,a0
ffffffffc020ae5e:	892e                	mv	s2,a1
ffffffffc020ae60:	8432                	mv	s0,a2
ffffffffc020ae62:	280000ef          	jal	ra,ffffffffc020b0e2 <lock_sfs_io>
ffffffffc020ae66:	04098063          	beqz	s3,ffffffffc020aea6 <sfs_wblock+0x5c>
ffffffffc020ae6a:	013409bb          	addw	s3,s0,s3
ffffffffc020ae6e:	6a85                	lui	s5,0x1
ffffffffc020ae70:	a021                	j	ffffffffc020ae78 <sfs_wblock+0x2e>
ffffffffc020ae72:	9956                	add	s2,s2,s5
ffffffffc020ae74:	02898963          	beq	s3,s0,ffffffffc020aea6 <sfs_wblock+0x5c>
ffffffffc020ae78:	8622                	mv	a2,s0
ffffffffc020ae7a:	85ca                	mv	a1,s2
ffffffffc020ae7c:	4705                	li	a4,1
ffffffffc020ae7e:	4685                	li	a3,1
ffffffffc020ae80:	8552                	mv	a0,s4
ffffffffc020ae82:	f11ff0ef          	jal	ra,ffffffffc020ad92 <sfs_rwblock_nolock>
ffffffffc020ae86:	84aa                	mv	s1,a0
ffffffffc020ae88:	2405                	addiw	s0,s0,1
ffffffffc020ae8a:	d565                	beqz	a0,ffffffffc020ae72 <sfs_wblock+0x28>
ffffffffc020ae8c:	8552                	mv	a0,s4
ffffffffc020ae8e:	264000ef          	jal	ra,ffffffffc020b0f2 <unlock_sfs_io>
ffffffffc020ae92:	70e2                	ld	ra,56(sp)
ffffffffc020ae94:	7442                	ld	s0,48(sp)
ffffffffc020ae96:	7902                	ld	s2,32(sp)
ffffffffc020ae98:	69e2                	ld	s3,24(sp)
ffffffffc020ae9a:	6a42                	ld	s4,16(sp)
ffffffffc020ae9c:	6aa2                	ld	s5,8(sp)
ffffffffc020ae9e:	8526                	mv	a0,s1
ffffffffc020aea0:	74a2                	ld	s1,40(sp)
ffffffffc020aea2:	6121                	addi	sp,sp,64
ffffffffc020aea4:	8082                	ret
ffffffffc020aea6:	4481                	li	s1,0
ffffffffc020aea8:	b7d5                	j	ffffffffc020ae8c <sfs_wblock+0x42>

ffffffffc020aeaa <sfs_rbuf>:
ffffffffc020aeaa:	7179                	addi	sp,sp,-48
ffffffffc020aeac:	f406                	sd	ra,40(sp)
ffffffffc020aeae:	f022                	sd	s0,32(sp)
ffffffffc020aeb0:	ec26                	sd	s1,24(sp)
ffffffffc020aeb2:	e84a                	sd	s2,16(sp)
ffffffffc020aeb4:	e44e                	sd	s3,8(sp)
ffffffffc020aeb6:	e052                	sd	s4,0(sp)
ffffffffc020aeb8:	6785                	lui	a5,0x1
ffffffffc020aeba:	04f77863          	bgeu	a4,a5,ffffffffc020af0a <sfs_rbuf+0x60>
ffffffffc020aebe:	84ba                	mv	s1,a4
ffffffffc020aec0:	9732                	add	a4,a4,a2
ffffffffc020aec2:	89b2                	mv	s3,a2
ffffffffc020aec4:	04e7e363          	bltu	a5,a4,ffffffffc020af0a <sfs_rbuf+0x60>
ffffffffc020aec8:	8936                	mv	s2,a3
ffffffffc020aeca:	842a                	mv	s0,a0
ffffffffc020aecc:	8a2e                	mv	s4,a1
ffffffffc020aece:	214000ef          	jal	ra,ffffffffc020b0e2 <lock_sfs_io>
ffffffffc020aed2:	642c                	ld	a1,72(s0)
ffffffffc020aed4:	864a                	mv	a2,s2
ffffffffc020aed6:	4705                	li	a4,1
ffffffffc020aed8:	4681                	li	a3,0
ffffffffc020aeda:	8522                	mv	a0,s0
ffffffffc020aedc:	eb7ff0ef          	jal	ra,ffffffffc020ad92 <sfs_rwblock_nolock>
ffffffffc020aee0:	892a                	mv	s2,a0
ffffffffc020aee2:	cd09                	beqz	a0,ffffffffc020aefc <sfs_rbuf+0x52>
ffffffffc020aee4:	8522                	mv	a0,s0
ffffffffc020aee6:	20c000ef          	jal	ra,ffffffffc020b0f2 <unlock_sfs_io>
ffffffffc020aeea:	70a2                	ld	ra,40(sp)
ffffffffc020aeec:	7402                	ld	s0,32(sp)
ffffffffc020aeee:	64e2                	ld	s1,24(sp)
ffffffffc020aef0:	69a2                	ld	s3,8(sp)
ffffffffc020aef2:	6a02                	ld	s4,0(sp)
ffffffffc020aef4:	854a                	mv	a0,s2
ffffffffc020aef6:	6942                	ld	s2,16(sp)
ffffffffc020aef8:	6145                	addi	sp,sp,48
ffffffffc020aefa:	8082                	ret
ffffffffc020aefc:	642c                	ld	a1,72(s0)
ffffffffc020aefe:	864e                	mv	a2,s3
ffffffffc020af00:	8552                	mv	a0,s4
ffffffffc020af02:	95a6                	add	a1,a1,s1
ffffffffc020af04:	77c000ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc020af08:	bff1                	j	ffffffffc020aee4 <sfs_rbuf+0x3a>
ffffffffc020af0a:	00004697          	auipc	a3,0x4
ffffffffc020af0e:	64e68693          	addi	a3,a3,1614 # ffffffffc020f558 <sfs_node_fileops+0xd0>
ffffffffc020af12:	00001617          	auipc	a2,0x1
ffffffffc020af16:	bfe60613          	addi	a2,a2,-1026 # ffffffffc020bb10 <commands+0x210>
ffffffffc020af1a:	05500593          	li	a1,85
ffffffffc020af1e:	00004517          	auipc	a0,0x4
ffffffffc020af22:	62250513          	addi	a0,a0,1570 # ffffffffc020f540 <sfs_node_fileops+0xb8>
ffffffffc020af26:	d78f50ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020af2a <sfs_wbuf>:
ffffffffc020af2a:	7139                	addi	sp,sp,-64
ffffffffc020af2c:	fc06                	sd	ra,56(sp)
ffffffffc020af2e:	f822                	sd	s0,48(sp)
ffffffffc020af30:	f426                	sd	s1,40(sp)
ffffffffc020af32:	f04a                	sd	s2,32(sp)
ffffffffc020af34:	ec4e                	sd	s3,24(sp)
ffffffffc020af36:	e852                	sd	s4,16(sp)
ffffffffc020af38:	e456                	sd	s5,8(sp)
ffffffffc020af3a:	6785                	lui	a5,0x1
ffffffffc020af3c:	06f77163          	bgeu	a4,a5,ffffffffc020af9e <sfs_wbuf+0x74>
ffffffffc020af40:	893a                	mv	s2,a4
ffffffffc020af42:	9732                	add	a4,a4,a2
ffffffffc020af44:	8a32                	mv	s4,a2
ffffffffc020af46:	04e7ec63          	bltu	a5,a4,ffffffffc020af9e <sfs_wbuf+0x74>
ffffffffc020af4a:	842a                	mv	s0,a0
ffffffffc020af4c:	89b6                	mv	s3,a3
ffffffffc020af4e:	8aae                	mv	s5,a1
ffffffffc020af50:	192000ef          	jal	ra,ffffffffc020b0e2 <lock_sfs_io>
ffffffffc020af54:	642c                	ld	a1,72(s0)
ffffffffc020af56:	4705                	li	a4,1
ffffffffc020af58:	4681                	li	a3,0
ffffffffc020af5a:	864e                	mv	a2,s3
ffffffffc020af5c:	8522                	mv	a0,s0
ffffffffc020af5e:	e35ff0ef          	jal	ra,ffffffffc020ad92 <sfs_rwblock_nolock>
ffffffffc020af62:	84aa                	mv	s1,a0
ffffffffc020af64:	cd11                	beqz	a0,ffffffffc020af80 <sfs_wbuf+0x56>
ffffffffc020af66:	8522                	mv	a0,s0
ffffffffc020af68:	18a000ef          	jal	ra,ffffffffc020b0f2 <unlock_sfs_io>
ffffffffc020af6c:	70e2                	ld	ra,56(sp)
ffffffffc020af6e:	7442                	ld	s0,48(sp)
ffffffffc020af70:	7902                	ld	s2,32(sp)
ffffffffc020af72:	69e2                	ld	s3,24(sp)
ffffffffc020af74:	6a42                	ld	s4,16(sp)
ffffffffc020af76:	6aa2                	ld	s5,8(sp)
ffffffffc020af78:	8526                	mv	a0,s1
ffffffffc020af7a:	74a2                	ld	s1,40(sp)
ffffffffc020af7c:	6121                	addi	sp,sp,64
ffffffffc020af7e:	8082                	ret
ffffffffc020af80:	6428                	ld	a0,72(s0)
ffffffffc020af82:	8652                	mv	a2,s4
ffffffffc020af84:	85d6                	mv	a1,s5
ffffffffc020af86:	954a                	add	a0,a0,s2
ffffffffc020af88:	6f8000ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc020af8c:	642c                	ld	a1,72(s0)
ffffffffc020af8e:	4705                	li	a4,1
ffffffffc020af90:	4685                	li	a3,1
ffffffffc020af92:	864e                	mv	a2,s3
ffffffffc020af94:	8522                	mv	a0,s0
ffffffffc020af96:	dfdff0ef          	jal	ra,ffffffffc020ad92 <sfs_rwblock_nolock>
ffffffffc020af9a:	84aa                	mv	s1,a0
ffffffffc020af9c:	b7e9                	j	ffffffffc020af66 <sfs_wbuf+0x3c>
ffffffffc020af9e:	00004697          	auipc	a3,0x4
ffffffffc020afa2:	5ba68693          	addi	a3,a3,1466 # ffffffffc020f558 <sfs_node_fileops+0xd0>
ffffffffc020afa6:	00001617          	auipc	a2,0x1
ffffffffc020afaa:	b6a60613          	addi	a2,a2,-1174 # ffffffffc020bb10 <commands+0x210>
ffffffffc020afae:	06b00593          	li	a1,107
ffffffffc020afb2:	00004517          	auipc	a0,0x4
ffffffffc020afb6:	58e50513          	addi	a0,a0,1422 # ffffffffc020f540 <sfs_node_fileops+0xb8>
ffffffffc020afba:	ce4f50ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020afbe <sfs_sync_super>:
ffffffffc020afbe:	1101                	addi	sp,sp,-32
ffffffffc020afc0:	ec06                	sd	ra,24(sp)
ffffffffc020afc2:	e822                	sd	s0,16(sp)
ffffffffc020afc4:	e426                	sd	s1,8(sp)
ffffffffc020afc6:	842a                	mv	s0,a0
ffffffffc020afc8:	11a000ef          	jal	ra,ffffffffc020b0e2 <lock_sfs_io>
ffffffffc020afcc:	6428                	ld	a0,72(s0)
ffffffffc020afce:	6605                	lui	a2,0x1
ffffffffc020afd0:	4581                	li	a1,0
ffffffffc020afd2:	65c000ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc020afd6:	6428                	ld	a0,72(s0)
ffffffffc020afd8:	85a2                	mv	a1,s0
ffffffffc020afda:	02c00613          	li	a2,44
ffffffffc020afde:	6a2000ef          	jal	ra,ffffffffc020b680 <memcpy>
ffffffffc020afe2:	642c                	ld	a1,72(s0)
ffffffffc020afe4:	4701                	li	a4,0
ffffffffc020afe6:	4685                	li	a3,1
ffffffffc020afe8:	4601                	li	a2,0
ffffffffc020afea:	8522                	mv	a0,s0
ffffffffc020afec:	da7ff0ef          	jal	ra,ffffffffc020ad92 <sfs_rwblock_nolock>
ffffffffc020aff0:	84aa                	mv	s1,a0
ffffffffc020aff2:	8522                	mv	a0,s0
ffffffffc020aff4:	0fe000ef          	jal	ra,ffffffffc020b0f2 <unlock_sfs_io>
ffffffffc020aff8:	60e2                	ld	ra,24(sp)
ffffffffc020affa:	6442                	ld	s0,16(sp)
ffffffffc020affc:	8526                	mv	a0,s1
ffffffffc020affe:	64a2                	ld	s1,8(sp)
ffffffffc020b000:	6105                	addi	sp,sp,32
ffffffffc020b002:	8082                	ret

ffffffffc020b004 <sfs_sync_freemap>:
ffffffffc020b004:	7139                	addi	sp,sp,-64
ffffffffc020b006:	ec4e                	sd	s3,24(sp)
ffffffffc020b008:	e852                	sd	s4,16(sp)
ffffffffc020b00a:	00456983          	lwu	s3,4(a0)
ffffffffc020b00e:	8a2a                	mv	s4,a0
ffffffffc020b010:	7d08                	ld	a0,56(a0)
ffffffffc020b012:	67a1                	lui	a5,0x8
ffffffffc020b014:	17fd                	addi	a5,a5,-1
ffffffffc020b016:	4581                	li	a1,0
ffffffffc020b018:	f822                	sd	s0,48(sp)
ffffffffc020b01a:	fc06                	sd	ra,56(sp)
ffffffffc020b01c:	f426                	sd	s1,40(sp)
ffffffffc020b01e:	f04a                	sd	s2,32(sp)
ffffffffc020b020:	e456                	sd	s5,8(sp)
ffffffffc020b022:	99be                	add	s3,s3,a5
ffffffffc020b024:	9b6fe0ef          	jal	ra,ffffffffc02091da <bitmap_getdata>
ffffffffc020b028:	00f9d993          	srli	s3,s3,0xf
ffffffffc020b02c:	842a                	mv	s0,a0
ffffffffc020b02e:	8552                	mv	a0,s4
ffffffffc020b030:	0b2000ef          	jal	ra,ffffffffc020b0e2 <lock_sfs_io>
ffffffffc020b034:	04098163          	beqz	s3,ffffffffc020b076 <sfs_sync_freemap+0x72>
ffffffffc020b038:	09b2                	slli	s3,s3,0xc
ffffffffc020b03a:	99a2                	add	s3,s3,s0
ffffffffc020b03c:	4909                	li	s2,2
ffffffffc020b03e:	6a85                	lui	s5,0x1
ffffffffc020b040:	a021                	j	ffffffffc020b048 <sfs_sync_freemap+0x44>
ffffffffc020b042:	2905                	addiw	s2,s2,1
ffffffffc020b044:	02898963          	beq	s3,s0,ffffffffc020b076 <sfs_sync_freemap+0x72>
ffffffffc020b048:	85a2                	mv	a1,s0
ffffffffc020b04a:	864a                	mv	a2,s2
ffffffffc020b04c:	4705                	li	a4,1
ffffffffc020b04e:	4685                	li	a3,1
ffffffffc020b050:	8552                	mv	a0,s4
ffffffffc020b052:	d41ff0ef          	jal	ra,ffffffffc020ad92 <sfs_rwblock_nolock>
ffffffffc020b056:	84aa                	mv	s1,a0
ffffffffc020b058:	9456                	add	s0,s0,s5
ffffffffc020b05a:	d565                	beqz	a0,ffffffffc020b042 <sfs_sync_freemap+0x3e>
ffffffffc020b05c:	8552                	mv	a0,s4
ffffffffc020b05e:	094000ef          	jal	ra,ffffffffc020b0f2 <unlock_sfs_io>
ffffffffc020b062:	70e2                	ld	ra,56(sp)
ffffffffc020b064:	7442                	ld	s0,48(sp)
ffffffffc020b066:	7902                	ld	s2,32(sp)
ffffffffc020b068:	69e2                	ld	s3,24(sp)
ffffffffc020b06a:	6a42                	ld	s4,16(sp)
ffffffffc020b06c:	6aa2                	ld	s5,8(sp)
ffffffffc020b06e:	8526                	mv	a0,s1
ffffffffc020b070:	74a2                	ld	s1,40(sp)
ffffffffc020b072:	6121                	addi	sp,sp,64
ffffffffc020b074:	8082                	ret
ffffffffc020b076:	4481                	li	s1,0
ffffffffc020b078:	b7d5                	j	ffffffffc020b05c <sfs_sync_freemap+0x58>

ffffffffc020b07a <sfs_clear_block>:
ffffffffc020b07a:	7179                	addi	sp,sp,-48
ffffffffc020b07c:	f022                	sd	s0,32(sp)
ffffffffc020b07e:	e84a                	sd	s2,16(sp)
ffffffffc020b080:	e44e                	sd	s3,8(sp)
ffffffffc020b082:	f406                	sd	ra,40(sp)
ffffffffc020b084:	89b2                	mv	s3,a2
ffffffffc020b086:	ec26                	sd	s1,24(sp)
ffffffffc020b088:	892a                	mv	s2,a0
ffffffffc020b08a:	842e                	mv	s0,a1
ffffffffc020b08c:	056000ef          	jal	ra,ffffffffc020b0e2 <lock_sfs_io>
ffffffffc020b090:	04893503          	ld	a0,72(s2)
ffffffffc020b094:	6605                	lui	a2,0x1
ffffffffc020b096:	4581                	li	a1,0
ffffffffc020b098:	596000ef          	jal	ra,ffffffffc020b62e <memset>
ffffffffc020b09c:	02098d63          	beqz	s3,ffffffffc020b0d6 <sfs_clear_block+0x5c>
ffffffffc020b0a0:	013409bb          	addw	s3,s0,s3
ffffffffc020b0a4:	a019                	j	ffffffffc020b0aa <sfs_clear_block+0x30>
ffffffffc020b0a6:	02898863          	beq	s3,s0,ffffffffc020b0d6 <sfs_clear_block+0x5c>
ffffffffc020b0aa:	04893583          	ld	a1,72(s2)
ffffffffc020b0ae:	8622                	mv	a2,s0
ffffffffc020b0b0:	4705                	li	a4,1
ffffffffc020b0b2:	4685                	li	a3,1
ffffffffc020b0b4:	854a                	mv	a0,s2
ffffffffc020b0b6:	cddff0ef          	jal	ra,ffffffffc020ad92 <sfs_rwblock_nolock>
ffffffffc020b0ba:	84aa                	mv	s1,a0
ffffffffc020b0bc:	2405                	addiw	s0,s0,1
ffffffffc020b0be:	d565                	beqz	a0,ffffffffc020b0a6 <sfs_clear_block+0x2c>
ffffffffc020b0c0:	854a                	mv	a0,s2
ffffffffc020b0c2:	030000ef          	jal	ra,ffffffffc020b0f2 <unlock_sfs_io>
ffffffffc020b0c6:	70a2                	ld	ra,40(sp)
ffffffffc020b0c8:	7402                	ld	s0,32(sp)
ffffffffc020b0ca:	6942                	ld	s2,16(sp)
ffffffffc020b0cc:	69a2                	ld	s3,8(sp)
ffffffffc020b0ce:	8526                	mv	a0,s1
ffffffffc020b0d0:	64e2                	ld	s1,24(sp)
ffffffffc020b0d2:	6145                	addi	sp,sp,48
ffffffffc020b0d4:	8082                	ret
ffffffffc020b0d6:	4481                	li	s1,0
ffffffffc020b0d8:	b7e5                	j	ffffffffc020b0c0 <sfs_clear_block+0x46>

ffffffffc020b0da <lock_sfs_fs>:
ffffffffc020b0da:	05050513          	addi	a0,a0,80
ffffffffc020b0de:	daef906f          	j	ffffffffc020468c <down>

ffffffffc020b0e2 <lock_sfs_io>:
ffffffffc020b0e2:	06850513          	addi	a0,a0,104
ffffffffc020b0e6:	da6f906f          	j	ffffffffc020468c <down>

ffffffffc020b0ea <unlock_sfs_fs>:
ffffffffc020b0ea:	05050513          	addi	a0,a0,80
ffffffffc020b0ee:	d9af906f          	j	ffffffffc0204688 <up>

ffffffffc020b0f2 <unlock_sfs_io>:
ffffffffc020b0f2:	06850513          	addi	a0,a0,104
ffffffffc020b0f6:	d92f906f          	j	ffffffffc0204688 <up>

ffffffffc020b0fa <hash32>:
ffffffffc020b0fa:	9e3707b7          	lui	a5,0x9e370
ffffffffc020b0fe:	2785                	addiw	a5,a5,1
ffffffffc020b100:	02a7853b          	mulw	a0,a5,a0
ffffffffc020b104:	02000793          	li	a5,32
ffffffffc020b108:	9f8d                	subw	a5,a5,a1
ffffffffc020b10a:	00f5553b          	srlw	a0,a0,a5
ffffffffc020b10e:	8082                	ret

ffffffffc020b110 <printnum>:
ffffffffc020b110:	02071893          	slli	a7,a4,0x20
ffffffffc020b114:	7139                	addi	sp,sp,-64
ffffffffc020b116:	0208d893          	srli	a7,a7,0x20
ffffffffc020b11a:	e456                	sd	s5,8(sp)
ffffffffc020b11c:	0316fab3          	remu	s5,a3,a7
ffffffffc020b120:	f822                	sd	s0,48(sp)
ffffffffc020b122:	f426                	sd	s1,40(sp)
ffffffffc020b124:	f04a                	sd	s2,32(sp)
ffffffffc020b126:	ec4e                	sd	s3,24(sp)
ffffffffc020b128:	fc06                	sd	ra,56(sp)
ffffffffc020b12a:	e852                	sd	s4,16(sp)
ffffffffc020b12c:	84aa                	mv	s1,a0
ffffffffc020b12e:	89ae                	mv	s3,a1
ffffffffc020b130:	8932                	mv	s2,a2
ffffffffc020b132:	fff7841b          	addiw	s0,a5,-1
ffffffffc020b136:	2a81                	sext.w	s5,s5
ffffffffc020b138:	0516f163          	bgeu	a3,a7,ffffffffc020b17a <printnum+0x6a>
ffffffffc020b13c:	8a42                	mv	s4,a6
ffffffffc020b13e:	00805863          	blez	s0,ffffffffc020b14e <printnum+0x3e>
ffffffffc020b142:	347d                	addiw	s0,s0,-1
ffffffffc020b144:	864e                	mv	a2,s3
ffffffffc020b146:	85ca                	mv	a1,s2
ffffffffc020b148:	8552                	mv	a0,s4
ffffffffc020b14a:	9482                	jalr	s1
ffffffffc020b14c:	f87d                	bnez	s0,ffffffffc020b142 <printnum+0x32>
ffffffffc020b14e:	1a82                	slli	s5,s5,0x20
ffffffffc020b150:	00004797          	auipc	a5,0x4
ffffffffc020b154:	45078793          	addi	a5,a5,1104 # ffffffffc020f5a0 <sfs_node_fileops+0x118>
ffffffffc020b158:	020ada93          	srli	s5,s5,0x20
ffffffffc020b15c:	9abe                	add	s5,s5,a5
ffffffffc020b15e:	7442                	ld	s0,48(sp)
ffffffffc020b160:	000ac503          	lbu	a0,0(s5) # 1000 <_binary_bin_swap_img_size-0x6d00>
ffffffffc020b164:	70e2                	ld	ra,56(sp)
ffffffffc020b166:	6a42                	ld	s4,16(sp)
ffffffffc020b168:	6aa2                	ld	s5,8(sp)
ffffffffc020b16a:	864e                	mv	a2,s3
ffffffffc020b16c:	85ca                	mv	a1,s2
ffffffffc020b16e:	69e2                	ld	s3,24(sp)
ffffffffc020b170:	7902                	ld	s2,32(sp)
ffffffffc020b172:	87a6                	mv	a5,s1
ffffffffc020b174:	74a2                	ld	s1,40(sp)
ffffffffc020b176:	6121                	addi	sp,sp,64
ffffffffc020b178:	8782                	jr	a5
ffffffffc020b17a:	0316d6b3          	divu	a3,a3,a7
ffffffffc020b17e:	87a2                	mv	a5,s0
ffffffffc020b180:	f91ff0ef          	jal	ra,ffffffffc020b110 <printnum>
ffffffffc020b184:	b7e9                	j	ffffffffc020b14e <printnum+0x3e>

ffffffffc020b186 <sprintputch>:
ffffffffc020b186:	499c                	lw	a5,16(a1)
ffffffffc020b188:	6198                	ld	a4,0(a1)
ffffffffc020b18a:	6594                	ld	a3,8(a1)
ffffffffc020b18c:	2785                	addiw	a5,a5,1
ffffffffc020b18e:	c99c                	sw	a5,16(a1)
ffffffffc020b190:	00d77763          	bgeu	a4,a3,ffffffffc020b19e <sprintputch+0x18>
ffffffffc020b194:	00170793          	addi	a5,a4,1
ffffffffc020b198:	e19c                	sd	a5,0(a1)
ffffffffc020b19a:	00a70023          	sb	a0,0(a4)
ffffffffc020b19e:	8082                	ret

ffffffffc020b1a0 <vprintfmt>:
ffffffffc020b1a0:	7119                	addi	sp,sp,-128
ffffffffc020b1a2:	f4a6                	sd	s1,104(sp)
ffffffffc020b1a4:	f0ca                	sd	s2,96(sp)
ffffffffc020b1a6:	ecce                	sd	s3,88(sp)
ffffffffc020b1a8:	e8d2                	sd	s4,80(sp)
ffffffffc020b1aa:	e4d6                	sd	s5,72(sp)
ffffffffc020b1ac:	e0da                	sd	s6,64(sp)
ffffffffc020b1ae:	fc5e                	sd	s7,56(sp)
ffffffffc020b1b0:	ec6e                	sd	s11,24(sp)
ffffffffc020b1b2:	fc86                	sd	ra,120(sp)
ffffffffc020b1b4:	f8a2                	sd	s0,112(sp)
ffffffffc020b1b6:	f862                	sd	s8,48(sp)
ffffffffc020b1b8:	f466                	sd	s9,40(sp)
ffffffffc020b1ba:	f06a                	sd	s10,32(sp)
ffffffffc020b1bc:	89aa                	mv	s3,a0
ffffffffc020b1be:	892e                	mv	s2,a1
ffffffffc020b1c0:	84b2                	mv	s1,a2
ffffffffc020b1c2:	8db6                	mv	s11,a3
ffffffffc020b1c4:	8aba                	mv	s5,a4
ffffffffc020b1c6:	02500a13          	li	s4,37
ffffffffc020b1ca:	5bfd                	li	s7,-1
ffffffffc020b1cc:	00004b17          	auipc	s6,0x4
ffffffffc020b1d0:	400b0b13          	addi	s6,s6,1024 # ffffffffc020f5cc <sfs_node_fileops+0x144>
ffffffffc020b1d4:	000dc503          	lbu	a0,0(s11) # 2000 <_binary_bin_swap_img_size-0x5d00>
ffffffffc020b1d8:	001d8413          	addi	s0,s11,1
ffffffffc020b1dc:	01450b63          	beq	a0,s4,ffffffffc020b1f2 <vprintfmt+0x52>
ffffffffc020b1e0:	c129                	beqz	a0,ffffffffc020b222 <vprintfmt+0x82>
ffffffffc020b1e2:	864a                	mv	a2,s2
ffffffffc020b1e4:	85a6                	mv	a1,s1
ffffffffc020b1e6:	0405                	addi	s0,s0,1
ffffffffc020b1e8:	9982                	jalr	s3
ffffffffc020b1ea:	fff44503          	lbu	a0,-1(s0)
ffffffffc020b1ee:	ff4519e3          	bne	a0,s4,ffffffffc020b1e0 <vprintfmt+0x40>
ffffffffc020b1f2:	00044583          	lbu	a1,0(s0)
ffffffffc020b1f6:	02000813          	li	a6,32
ffffffffc020b1fa:	4d01                	li	s10,0
ffffffffc020b1fc:	4301                	li	t1,0
ffffffffc020b1fe:	5cfd                	li	s9,-1
ffffffffc020b200:	5c7d                	li	s8,-1
ffffffffc020b202:	05500513          	li	a0,85
ffffffffc020b206:	48a5                	li	a7,9
ffffffffc020b208:	fdd5861b          	addiw	a2,a1,-35
ffffffffc020b20c:	0ff67613          	zext.b	a2,a2
ffffffffc020b210:	00140d93          	addi	s11,s0,1
ffffffffc020b214:	04c56263          	bltu	a0,a2,ffffffffc020b258 <vprintfmt+0xb8>
ffffffffc020b218:	060a                	slli	a2,a2,0x2
ffffffffc020b21a:	965a                	add	a2,a2,s6
ffffffffc020b21c:	4214                	lw	a3,0(a2)
ffffffffc020b21e:	96da                	add	a3,a3,s6
ffffffffc020b220:	8682                	jr	a3
ffffffffc020b222:	70e6                	ld	ra,120(sp)
ffffffffc020b224:	7446                	ld	s0,112(sp)
ffffffffc020b226:	74a6                	ld	s1,104(sp)
ffffffffc020b228:	7906                	ld	s2,96(sp)
ffffffffc020b22a:	69e6                	ld	s3,88(sp)
ffffffffc020b22c:	6a46                	ld	s4,80(sp)
ffffffffc020b22e:	6aa6                	ld	s5,72(sp)
ffffffffc020b230:	6b06                	ld	s6,64(sp)
ffffffffc020b232:	7be2                	ld	s7,56(sp)
ffffffffc020b234:	7c42                	ld	s8,48(sp)
ffffffffc020b236:	7ca2                	ld	s9,40(sp)
ffffffffc020b238:	7d02                	ld	s10,32(sp)
ffffffffc020b23a:	6de2                	ld	s11,24(sp)
ffffffffc020b23c:	6109                	addi	sp,sp,128
ffffffffc020b23e:	8082                	ret
ffffffffc020b240:	882e                	mv	a6,a1
ffffffffc020b242:	00144583          	lbu	a1,1(s0)
ffffffffc020b246:	846e                	mv	s0,s11
ffffffffc020b248:	00140d93          	addi	s11,s0,1
ffffffffc020b24c:	fdd5861b          	addiw	a2,a1,-35
ffffffffc020b250:	0ff67613          	zext.b	a2,a2
ffffffffc020b254:	fcc572e3          	bgeu	a0,a2,ffffffffc020b218 <vprintfmt+0x78>
ffffffffc020b258:	864a                	mv	a2,s2
ffffffffc020b25a:	85a6                	mv	a1,s1
ffffffffc020b25c:	02500513          	li	a0,37
ffffffffc020b260:	9982                	jalr	s3
ffffffffc020b262:	fff44783          	lbu	a5,-1(s0)
ffffffffc020b266:	8da2                	mv	s11,s0
ffffffffc020b268:	f74786e3          	beq	a5,s4,ffffffffc020b1d4 <vprintfmt+0x34>
ffffffffc020b26c:	ffedc783          	lbu	a5,-2(s11)
ffffffffc020b270:	1dfd                	addi	s11,s11,-1
ffffffffc020b272:	ff479de3          	bne	a5,s4,ffffffffc020b26c <vprintfmt+0xcc>
ffffffffc020b276:	bfb9                	j	ffffffffc020b1d4 <vprintfmt+0x34>
ffffffffc020b278:	fd058c9b          	addiw	s9,a1,-48
ffffffffc020b27c:	00144583          	lbu	a1,1(s0)
ffffffffc020b280:	846e                	mv	s0,s11
ffffffffc020b282:	fd05869b          	addiw	a3,a1,-48
ffffffffc020b286:	0005861b          	sext.w	a2,a1
ffffffffc020b28a:	02d8e463          	bltu	a7,a3,ffffffffc020b2b2 <vprintfmt+0x112>
ffffffffc020b28e:	00144583          	lbu	a1,1(s0)
ffffffffc020b292:	002c969b          	slliw	a3,s9,0x2
ffffffffc020b296:	0196873b          	addw	a4,a3,s9
ffffffffc020b29a:	0017171b          	slliw	a4,a4,0x1
ffffffffc020b29e:	9f31                	addw	a4,a4,a2
ffffffffc020b2a0:	fd05869b          	addiw	a3,a1,-48
ffffffffc020b2a4:	0405                	addi	s0,s0,1
ffffffffc020b2a6:	fd070c9b          	addiw	s9,a4,-48
ffffffffc020b2aa:	0005861b          	sext.w	a2,a1
ffffffffc020b2ae:	fed8f0e3          	bgeu	a7,a3,ffffffffc020b28e <vprintfmt+0xee>
ffffffffc020b2b2:	f40c5be3          	bgez	s8,ffffffffc020b208 <vprintfmt+0x68>
ffffffffc020b2b6:	8c66                	mv	s8,s9
ffffffffc020b2b8:	5cfd                	li	s9,-1
ffffffffc020b2ba:	b7b9                	j	ffffffffc020b208 <vprintfmt+0x68>
ffffffffc020b2bc:	fffc4693          	not	a3,s8
ffffffffc020b2c0:	96fd                	srai	a3,a3,0x3f
ffffffffc020b2c2:	00dc77b3          	and	a5,s8,a3
ffffffffc020b2c6:	00144583          	lbu	a1,1(s0)
ffffffffc020b2ca:	00078c1b          	sext.w	s8,a5
ffffffffc020b2ce:	846e                	mv	s0,s11
ffffffffc020b2d0:	bf25                	j	ffffffffc020b208 <vprintfmt+0x68>
ffffffffc020b2d2:	000aac83          	lw	s9,0(s5)
ffffffffc020b2d6:	00144583          	lbu	a1,1(s0)
ffffffffc020b2da:	0aa1                	addi	s5,s5,8
ffffffffc020b2dc:	846e                	mv	s0,s11
ffffffffc020b2de:	bfd1                	j	ffffffffc020b2b2 <vprintfmt+0x112>
ffffffffc020b2e0:	4705                	li	a4,1
ffffffffc020b2e2:	008a8613          	addi	a2,s5,8
ffffffffc020b2e6:	00674463          	blt	a4,t1,ffffffffc020b2ee <vprintfmt+0x14e>
ffffffffc020b2ea:	1c030c63          	beqz	t1,ffffffffc020b4c2 <vprintfmt+0x322>
ffffffffc020b2ee:	000ab683          	ld	a3,0(s5)
ffffffffc020b2f2:	4741                	li	a4,16
ffffffffc020b2f4:	8ab2                	mv	s5,a2
ffffffffc020b2f6:	2801                	sext.w	a6,a6
ffffffffc020b2f8:	87e2                	mv	a5,s8
ffffffffc020b2fa:	8626                	mv	a2,s1
ffffffffc020b2fc:	85ca                	mv	a1,s2
ffffffffc020b2fe:	854e                	mv	a0,s3
ffffffffc020b300:	e11ff0ef          	jal	ra,ffffffffc020b110 <printnum>
ffffffffc020b304:	bdc1                	j	ffffffffc020b1d4 <vprintfmt+0x34>
ffffffffc020b306:	000aa503          	lw	a0,0(s5)
ffffffffc020b30a:	864a                	mv	a2,s2
ffffffffc020b30c:	85a6                	mv	a1,s1
ffffffffc020b30e:	0aa1                	addi	s5,s5,8
ffffffffc020b310:	9982                	jalr	s3
ffffffffc020b312:	b5c9                	j	ffffffffc020b1d4 <vprintfmt+0x34>
ffffffffc020b314:	4705                	li	a4,1
ffffffffc020b316:	008a8613          	addi	a2,s5,8
ffffffffc020b31a:	00674463          	blt	a4,t1,ffffffffc020b322 <vprintfmt+0x182>
ffffffffc020b31e:	18030d63          	beqz	t1,ffffffffc020b4b8 <vprintfmt+0x318>
ffffffffc020b322:	000ab683          	ld	a3,0(s5)
ffffffffc020b326:	4729                	li	a4,10
ffffffffc020b328:	8ab2                	mv	s5,a2
ffffffffc020b32a:	b7f1                	j	ffffffffc020b2f6 <vprintfmt+0x156>
ffffffffc020b32c:	00144583          	lbu	a1,1(s0)
ffffffffc020b330:	4d05                	li	s10,1
ffffffffc020b332:	846e                	mv	s0,s11
ffffffffc020b334:	bdd1                	j	ffffffffc020b208 <vprintfmt+0x68>
ffffffffc020b336:	864a                	mv	a2,s2
ffffffffc020b338:	85a6                	mv	a1,s1
ffffffffc020b33a:	02500513          	li	a0,37
ffffffffc020b33e:	9982                	jalr	s3
ffffffffc020b340:	bd51                	j	ffffffffc020b1d4 <vprintfmt+0x34>
ffffffffc020b342:	00144583          	lbu	a1,1(s0)
ffffffffc020b346:	2305                	addiw	t1,t1,1
ffffffffc020b348:	846e                	mv	s0,s11
ffffffffc020b34a:	bd7d                	j	ffffffffc020b208 <vprintfmt+0x68>
ffffffffc020b34c:	4705                	li	a4,1
ffffffffc020b34e:	008a8613          	addi	a2,s5,8
ffffffffc020b352:	00674463          	blt	a4,t1,ffffffffc020b35a <vprintfmt+0x1ba>
ffffffffc020b356:	14030c63          	beqz	t1,ffffffffc020b4ae <vprintfmt+0x30e>
ffffffffc020b35a:	000ab683          	ld	a3,0(s5)
ffffffffc020b35e:	4721                	li	a4,8
ffffffffc020b360:	8ab2                	mv	s5,a2
ffffffffc020b362:	bf51                	j	ffffffffc020b2f6 <vprintfmt+0x156>
ffffffffc020b364:	03000513          	li	a0,48
ffffffffc020b368:	864a                	mv	a2,s2
ffffffffc020b36a:	85a6                	mv	a1,s1
ffffffffc020b36c:	e042                	sd	a6,0(sp)
ffffffffc020b36e:	9982                	jalr	s3
ffffffffc020b370:	864a                	mv	a2,s2
ffffffffc020b372:	85a6                	mv	a1,s1
ffffffffc020b374:	07800513          	li	a0,120
ffffffffc020b378:	9982                	jalr	s3
ffffffffc020b37a:	0aa1                	addi	s5,s5,8
ffffffffc020b37c:	6802                	ld	a6,0(sp)
ffffffffc020b37e:	4741                	li	a4,16
ffffffffc020b380:	ff8ab683          	ld	a3,-8(s5)
ffffffffc020b384:	bf8d                	j	ffffffffc020b2f6 <vprintfmt+0x156>
ffffffffc020b386:	000ab403          	ld	s0,0(s5)
ffffffffc020b38a:	008a8793          	addi	a5,s5,8
ffffffffc020b38e:	e03e                	sd	a5,0(sp)
ffffffffc020b390:	14040c63          	beqz	s0,ffffffffc020b4e8 <vprintfmt+0x348>
ffffffffc020b394:	11805063          	blez	s8,ffffffffc020b494 <vprintfmt+0x2f4>
ffffffffc020b398:	02d00693          	li	a3,45
ffffffffc020b39c:	0cd81963          	bne	a6,a3,ffffffffc020b46e <vprintfmt+0x2ce>
ffffffffc020b3a0:	00044683          	lbu	a3,0(s0)
ffffffffc020b3a4:	0006851b          	sext.w	a0,a3
ffffffffc020b3a8:	ce8d                	beqz	a3,ffffffffc020b3e2 <vprintfmt+0x242>
ffffffffc020b3aa:	00140a93          	addi	s5,s0,1
ffffffffc020b3ae:	05e00413          	li	s0,94
ffffffffc020b3b2:	000cc563          	bltz	s9,ffffffffc020b3bc <vprintfmt+0x21c>
ffffffffc020b3b6:	3cfd                	addiw	s9,s9,-1
ffffffffc020b3b8:	037c8363          	beq	s9,s7,ffffffffc020b3de <vprintfmt+0x23e>
ffffffffc020b3bc:	864a                	mv	a2,s2
ffffffffc020b3be:	85a6                	mv	a1,s1
ffffffffc020b3c0:	100d0663          	beqz	s10,ffffffffc020b4cc <vprintfmt+0x32c>
ffffffffc020b3c4:	3681                	addiw	a3,a3,-32
ffffffffc020b3c6:	10d47363          	bgeu	s0,a3,ffffffffc020b4cc <vprintfmt+0x32c>
ffffffffc020b3ca:	03f00513          	li	a0,63
ffffffffc020b3ce:	9982                	jalr	s3
ffffffffc020b3d0:	000ac683          	lbu	a3,0(s5)
ffffffffc020b3d4:	3c7d                	addiw	s8,s8,-1
ffffffffc020b3d6:	0a85                	addi	s5,s5,1
ffffffffc020b3d8:	0006851b          	sext.w	a0,a3
ffffffffc020b3dc:	faf9                	bnez	a3,ffffffffc020b3b2 <vprintfmt+0x212>
ffffffffc020b3de:	01805a63          	blez	s8,ffffffffc020b3f2 <vprintfmt+0x252>
ffffffffc020b3e2:	3c7d                	addiw	s8,s8,-1
ffffffffc020b3e4:	864a                	mv	a2,s2
ffffffffc020b3e6:	85a6                	mv	a1,s1
ffffffffc020b3e8:	02000513          	li	a0,32
ffffffffc020b3ec:	9982                	jalr	s3
ffffffffc020b3ee:	fe0c1ae3          	bnez	s8,ffffffffc020b3e2 <vprintfmt+0x242>
ffffffffc020b3f2:	6a82                	ld	s5,0(sp)
ffffffffc020b3f4:	b3c5                	j	ffffffffc020b1d4 <vprintfmt+0x34>
ffffffffc020b3f6:	4705                	li	a4,1
ffffffffc020b3f8:	008a8d13          	addi	s10,s5,8
ffffffffc020b3fc:	00674463          	blt	a4,t1,ffffffffc020b404 <vprintfmt+0x264>
ffffffffc020b400:	0a030463          	beqz	t1,ffffffffc020b4a8 <vprintfmt+0x308>
ffffffffc020b404:	000ab403          	ld	s0,0(s5)
ffffffffc020b408:	0c044463          	bltz	s0,ffffffffc020b4d0 <vprintfmt+0x330>
ffffffffc020b40c:	86a2                	mv	a3,s0
ffffffffc020b40e:	8aea                	mv	s5,s10
ffffffffc020b410:	4729                	li	a4,10
ffffffffc020b412:	b5d5                	j	ffffffffc020b2f6 <vprintfmt+0x156>
ffffffffc020b414:	000aa783          	lw	a5,0(s5)
ffffffffc020b418:	46e1                	li	a3,24
ffffffffc020b41a:	0aa1                	addi	s5,s5,8
ffffffffc020b41c:	41f7d71b          	sraiw	a4,a5,0x1f
ffffffffc020b420:	8fb9                	xor	a5,a5,a4
ffffffffc020b422:	40e7873b          	subw	a4,a5,a4
ffffffffc020b426:	02e6c663          	blt	a3,a4,ffffffffc020b452 <vprintfmt+0x2b2>
ffffffffc020b42a:	00371793          	slli	a5,a4,0x3
ffffffffc020b42e:	00004697          	auipc	a3,0x4
ffffffffc020b432:	4d268693          	addi	a3,a3,1234 # ffffffffc020f900 <error_string>
ffffffffc020b436:	97b6                	add	a5,a5,a3
ffffffffc020b438:	639c                	ld	a5,0(a5)
ffffffffc020b43a:	cf81                	beqz	a5,ffffffffc020b452 <vprintfmt+0x2b2>
ffffffffc020b43c:	873e                	mv	a4,a5
ffffffffc020b43e:	00000697          	auipc	a3,0x0
ffffffffc020b442:	28268693          	addi	a3,a3,642 # ffffffffc020b6c0 <etext+0x28>
ffffffffc020b446:	8626                	mv	a2,s1
ffffffffc020b448:	85ca                	mv	a1,s2
ffffffffc020b44a:	854e                	mv	a0,s3
ffffffffc020b44c:	0d4000ef          	jal	ra,ffffffffc020b520 <printfmt>
ffffffffc020b450:	b351                	j	ffffffffc020b1d4 <vprintfmt+0x34>
ffffffffc020b452:	00004697          	auipc	a3,0x4
ffffffffc020b456:	16e68693          	addi	a3,a3,366 # ffffffffc020f5c0 <sfs_node_fileops+0x138>
ffffffffc020b45a:	8626                	mv	a2,s1
ffffffffc020b45c:	85ca                	mv	a1,s2
ffffffffc020b45e:	854e                	mv	a0,s3
ffffffffc020b460:	0c0000ef          	jal	ra,ffffffffc020b520 <printfmt>
ffffffffc020b464:	bb85                	j	ffffffffc020b1d4 <vprintfmt+0x34>
ffffffffc020b466:	00004417          	auipc	s0,0x4
ffffffffc020b46a:	15240413          	addi	s0,s0,338 # ffffffffc020f5b8 <sfs_node_fileops+0x130>
ffffffffc020b46e:	85e6                	mv	a1,s9
ffffffffc020b470:	8522                	mv	a0,s0
ffffffffc020b472:	e442                	sd	a6,8(sp)
ffffffffc020b474:	132000ef          	jal	ra,ffffffffc020b5a6 <strnlen>
ffffffffc020b478:	40ac0c3b          	subw	s8,s8,a0
ffffffffc020b47c:	01805c63          	blez	s8,ffffffffc020b494 <vprintfmt+0x2f4>
ffffffffc020b480:	6822                	ld	a6,8(sp)
ffffffffc020b482:	00080a9b          	sext.w	s5,a6
ffffffffc020b486:	3c7d                	addiw	s8,s8,-1
ffffffffc020b488:	864a                	mv	a2,s2
ffffffffc020b48a:	85a6                	mv	a1,s1
ffffffffc020b48c:	8556                	mv	a0,s5
ffffffffc020b48e:	9982                	jalr	s3
ffffffffc020b490:	fe0c1be3          	bnez	s8,ffffffffc020b486 <vprintfmt+0x2e6>
ffffffffc020b494:	00044683          	lbu	a3,0(s0)
ffffffffc020b498:	00140a93          	addi	s5,s0,1
ffffffffc020b49c:	0006851b          	sext.w	a0,a3
ffffffffc020b4a0:	daa9                	beqz	a3,ffffffffc020b3f2 <vprintfmt+0x252>
ffffffffc020b4a2:	05e00413          	li	s0,94
ffffffffc020b4a6:	b731                	j	ffffffffc020b3b2 <vprintfmt+0x212>
ffffffffc020b4a8:	000aa403          	lw	s0,0(s5)
ffffffffc020b4ac:	bfb1                	j	ffffffffc020b408 <vprintfmt+0x268>
ffffffffc020b4ae:	000ae683          	lwu	a3,0(s5)
ffffffffc020b4b2:	4721                	li	a4,8
ffffffffc020b4b4:	8ab2                	mv	s5,a2
ffffffffc020b4b6:	b581                	j	ffffffffc020b2f6 <vprintfmt+0x156>
ffffffffc020b4b8:	000ae683          	lwu	a3,0(s5)
ffffffffc020b4bc:	4729                	li	a4,10
ffffffffc020b4be:	8ab2                	mv	s5,a2
ffffffffc020b4c0:	bd1d                	j	ffffffffc020b2f6 <vprintfmt+0x156>
ffffffffc020b4c2:	000ae683          	lwu	a3,0(s5)
ffffffffc020b4c6:	4741                	li	a4,16
ffffffffc020b4c8:	8ab2                	mv	s5,a2
ffffffffc020b4ca:	b535                	j	ffffffffc020b2f6 <vprintfmt+0x156>
ffffffffc020b4cc:	9982                	jalr	s3
ffffffffc020b4ce:	b709                	j	ffffffffc020b3d0 <vprintfmt+0x230>
ffffffffc020b4d0:	864a                	mv	a2,s2
ffffffffc020b4d2:	85a6                	mv	a1,s1
ffffffffc020b4d4:	02d00513          	li	a0,45
ffffffffc020b4d8:	e042                	sd	a6,0(sp)
ffffffffc020b4da:	9982                	jalr	s3
ffffffffc020b4dc:	6802                	ld	a6,0(sp)
ffffffffc020b4de:	8aea                	mv	s5,s10
ffffffffc020b4e0:	408006b3          	neg	a3,s0
ffffffffc020b4e4:	4729                	li	a4,10
ffffffffc020b4e6:	bd01                	j	ffffffffc020b2f6 <vprintfmt+0x156>
ffffffffc020b4e8:	03805163          	blez	s8,ffffffffc020b50a <vprintfmt+0x36a>
ffffffffc020b4ec:	02d00693          	li	a3,45
ffffffffc020b4f0:	f6d81be3          	bne	a6,a3,ffffffffc020b466 <vprintfmt+0x2c6>
ffffffffc020b4f4:	00004417          	auipc	s0,0x4
ffffffffc020b4f8:	0c440413          	addi	s0,s0,196 # ffffffffc020f5b8 <sfs_node_fileops+0x130>
ffffffffc020b4fc:	02800693          	li	a3,40
ffffffffc020b500:	02800513          	li	a0,40
ffffffffc020b504:	00140a93          	addi	s5,s0,1
ffffffffc020b508:	b55d                	j	ffffffffc020b3ae <vprintfmt+0x20e>
ffffffffc020b50a:	00004a97          	auipc	s5,0x4
ffffffffc020b50e:	0afa8a93          	addi	s5,s5,175 # ffffffffc020f5b9 <sfs_node_fileops+0x131>
ffffffffc020b512:	02800513          	li	a0,40
ffffffffc020b516:	02800693          	li	a3,40
ffffffffc020b51a:	05e00413          	li	s0,94
ffffffffc020b51e:	bd51                	j	ffffffffc020b3b2 <vprintfmt+0x212>

ffffffffc020b520 <printfmt>:
ffffffffc020b520:	7139                	addi	sp,sp,-64
ffffffffc020b522:	02010313          	addi	t1,sp,32
ffffffffc020b526:	f03a                	sd	a4,32(sp)
ffffffffc020b528:	871a                	mv	a4,t1
ffffffffc020b52a:	ec06                	sd	ra,24(sp)
ffffffffc020b52c:	f43e                	sd	a5,40(sp)
ffffffffc020b52e:	f842                	sd	a6,48(sp)
ffffffffc020b530:	fc46                	sd	a7,56(sp)
ffffffffc020b532:	e41a                	sd	t1,8(sp)
ffffffffc020b534:	c6dff0ef          	jal	ra,ffffffffc020b1a0 <vprintfmt>
ffffffffc020b538:	60e2                	ld	ra,24(sp)
ffffffffc020b53a:	6121                	addi	sp,sp,64
ffffffffc020b53c:	8082                	ret

ffffffffc020b53e <snprintf>:
ffffffffc020b53e:	711d                	addi	sp,sp,-96
ffffffffc020b540:	15fd                	addi	a1,a1,-1
ffffffffc020b542:	03810313          	addi	t1,sp,56
ffffffffc020b546:	95aa                	add	a1,a1,a0
ffffffffc020b548:	f406                	sd	ra,40(sp)
ffffffffc020b54a:	fc36                	sd	a3,56(sp)
ffffffffc020b54c:	e0ba                	sd	a4,64(sp)
ffffffffc020b54e:	e4be                	sd	a5,72(sp)
ffffffffc020b550:	e8c2                	sd	a6,80(sp)
ffffffffc020b552:	ecc6                	sd	a7,88(sp)
ffffffffc020b554:	e01a                	sd	t1,0(sp)
ffffffffc020b556:	e42a                	sd	a0,8(sp)
ffffffffc020b558:	e82e                	sd	a1,16(sp)
ffffffffc020b55a:	cc02                	sw	zero,24(sp)
ffffffffc020b55c:	c515                	beqz	a0,ffffffffc020b588 <snprintf+0x4a>
ffffffffc020b55e:	02a5e563          	bltu	a1,a0,ffffffffc020b588 <snprintf+0x4a>
ffffffffc020b562:	75dd                	lui	a1,0xffff7
ffffffffc020b564:	86b2                	mv	a3,a2
ffffffffc020b566:	00000517          	auipc	a0,0x0
ffffffffc020b56a:	c2050513          	addi	a0,a0,-992 # ffffffffc020b186 <sprintputch>
ffffffffc020b56e:	871a                	mv	a4,t1
ffffffffc020b570:	0030                	addi	a2,sp,8
ffffffffc020b572:	ad958593          	addi	a1,a1,-1319 # ffffffffffff6ad9 <end+0x3fd601c9>
ffffffffc020b576:	c2bff0ef          	jal	ra,ffffffffc020b1a0 <vprintfmt>
ffffffffc020b57a:	67a2                	ld	a5,8(sp)
ffffffffc020b57c:	00078023          	sb	zero,0(a5)
ffffffffc020b580:	4562                	lw	a0,24(sp)
ffffffffc020b582:	70a2                	ld	ra,40(sp)
ffffffffc020b584:	6125                	addi	sp,sp,96
ffffffffc020b586:	8082                	ret
ffffffffc020b588:	5575                	li	a0,-3
ffffffffc020b58a:	bfe5                	j	ffffffffc020b582 <snprintf+0x44>

ffffffffc020b58c <strlen>:
ffffffffc020b58c:	00054783          	lbu	a5,0(a0)
ffffffffc020b590:	872a                	mv	a4,a0
ffffffffc020b592:	4501                	li	a0,0
ffffffffc020b594:	cb81                	beqz	a5,ffffffffc020b5a4 <strlen+0x18>
ffffffffc020b596:	0505                	addi	a0,a0,1
ffffffffc020b598:	00a707b3          	add	a5,a4,a0
ffffffffc020b59c:	0007c783          	lbu	a5,0(a5)
ffffffffc020b5a0:	fbfd                	bnez	a5,ffffffffc020b596 <strlen+0xa>
ffffffffc020b5a2:	8082                	ret
ffffffffc020b5a4:	8082                	ret

ffffffffc020b5a6 <strnlen>:
ffffffffc020b5a6:	4781                	li	a5,0
ffffffffc020b5a8:	e589                	bnez	a1,ffffffffc020b5b2 <strnlen+0xc>
ffffffffc020b5aa:	a811                	j	ffffffffc020b5be <strnlen+0x18>
ffffffffc020b5ac:	0785                	addi	a5,a5,1
ffffffffc020b5ae:	00f58863          	beq	a1,a5,ffffffffc020b5be <strnlen+0x18>
ffffffffc020b5b2:	00f50733          	add	a4,a0,a5
ffffffffc020b5b6:	00074703          	lbu	a4,0(a4)
ffffffffc020b5ba:	fb6d                	bnez	a4,ffffffffc020b5ac <strnlen+0x6>
ffffffffc020b5bc:	85be                	mv	a1,a5
ffffffffc020b5be:	852e                	mv	a0,a1
ffffffffc020b5c0:	8082                	ret

ffffffffc020b5c2 <strcpy>:
ffffffffc020b5c2:	87aa                	mv	a5,a0
ffffffffc020b5c4:	0005c703          	lbu	a4,0(a1)
ffffffffc020b5c8:	0785                	addi	a5,a5,1
ffffffffc020b5ca:	0585                	addi	a1,a1,1
ffffffffc020b5cc:	fee78fa3          	sb	a4,-1(a5)
ffffffffc020b5d0:	fb75                	bnez	a4,ffffffffc020b5c4 <strcpy+0x2>
ffffffffc020b5d2:	8082                	ret

ffffffffc020b5d4 <strcmp>:
ffffffffc020b5d4:	00054783          	lbu	a5,0(a0)
ffffffffc020b5d8:	0005c703          	lbu	a4,0(a1)
ffffffffc020b5dc:	cb89                	beqz	a5,ffffffffc020b5ee <strcmp+0x1a>
ffffffffc020b5de:	0505                	addi	a0,a0,1
ffffffffc020b5e0:	0585                	addi	a1,a1,1
ffffffffc020b5e2:	fee789e3          	beq	a5,a4,ffffffffc020b5d4 <strcmp>
ffffffffc020b5e6:	0007851b          	sext.w	a0,a5
ffffffffc020b5ea:	9d19                	subw	a0,a0,a4
ffffffffc020b5ec:	8082                	ret
ffffffffc020b5ee:	4501                	li	a0,0
ffffffffc020b5f0:	bfed                	j	ffffffffc020b5ea <strcmp+0x16>

ffffffffc020b5f2 <strncmp>:
ffffffffc020b5f2:	c20d                	beqz	a2,ffffffffc020b614 <strncmp+0x22>
ffffffffc020b5f4:	962e                	add	a2,a2,a1
ffffffffc020b5f6:	a031                	j	ffffffffc020b602 <strncmp+0x10>
ffffffffc020b5f8:	0505                	addi	a0,a0,1
ffffffffc020b5fa:	00e79a63          	bne	a5,a4,ffffffffc020b60e <strncmp+0x1c>
ffffffffc020b5fe:	00b60b63          	beq	a2,a1,ffffffffc020b614 <strncmp+0x22>
ffffffffc020b602:	00054783          	lbu	a5,0(a0)
ffffffffc020b606:	0585                	addi	a1,a1,1
ffffffffc020b608:	fff5c703          	lbu	a4,-1(a1)
ffffffffc020b60c:	f7f5                	bnez	a5,ffffffffc020b5f8 <strncmp+0x6>
ffffffffc020b60e:	40e7853b          	subw	a0,a5,a4
ffffffffc020b612:	8082                	ret
ffffffffc020b614:	4501                	li	a0,0
ffffffffc020b616:	8082                	ret

ffffffffc020b618 <strchr>:
ffffffffc020b618:	00054783          	lbu	a5,0(a0)
ffffffffc020b61c:	c799                	beqz	a5,ffffffffc020b62a <strchr+0x12>
ffffffffc020b61e:	00f58763          	beq	a1,a5,ffffffffc020b62c <strchr+0x14>
ffffffffc020b622:	00154783          	lbu	a5,1(a0)
ffffffffc020b626:	0505                	addi	a0,a0,1
ffffffffc020b628:	fbfd                	bnez	a5,ffffffffc020b61e <strchr+0x6>
ffffffffc020b62a:	4501                	li	a0,0
ffffffffc020b62c:	8082                	ret

ffffffffc020b62e <memset>:
ffffffffc020b62e:	ca01                	beqz	a2,ffffffffc020b63e <memset+0x10>
ffffffffc020b630:	962a                	add	a2,a2,a0
ffffffffc020b632:	87aa                	mv	a5,a0
ffffffffc020b634:	0785                	addi	a5,a5,1
ffffffffc020b636:	feb78fa3          	sb	a1,-1(a5)
ffffffffc020b63a:	fec79de3          	bne	a5,a2,ffffffffc020b634 <memset+0x6>
ffffffffc020b63e:	8082                	ret

ffffffffc020b640 <memmove>:
ffffffffc020b640:	02a5f263          	bgeu	a1,a0,ffffffffc020b664 <memmove+0x24>
ffffffffc020b644:	00c587b3          	add	a5,a1,a2
ffffffffc020b648:	00f57e63          	bgeu	a0,a5,ffffffffc020b664 <memmove+0x24>
ffffffffc020b64c:	00c50733          	add	a4,a0,a2
ffffffffc020b650:	c615                	beqz	a2,ffffffffc020b67c <memmove+0x3c>
ffffffffc020b652:	fff7c683          	lbu	a3,-1(a5)
ffffffffc020b656:	17fd                	addi	a5,a5,-1
ffffffffc020b658:	177d                	addi	a4,a4,-1
ffffffffc020b65a:	00d70023          	sb	a3,0(a4)
ffffffffc020b65e:	fef59ae3          	bne	a1,a5,ffffffffc020b652 <memmove+0x12>
ffffffffc020b662:	8082                	ret
ffffffffc020b664:	00c586b3          	add	a3,a1,a2
ffffffffc020b668:	87aa                	mv	a5,a0
ffffffffc020b66a:	ca11                	beqz	a2,ffffffffc020b67e <memmove+0x3e>
ffffffffc020b66c:	0005c703          	lbu	a4,0(a1)
ffffffffc020b670:	0585                	addi	a1,a1,1
ffffffffc020b672:	0785                	addi	a5,a5,1
ffffffffc020b674:	fee78fa3          	sb	a4,-1(a5)
ffffffffc020b678:	fed59ae3          	bne	a1,a3,ffffffffc020b66c <memmove+0x2c>
ffffffffc020b67c:	8082                	ret
ffffffffc020b67e:	8082                	ret

ffffffffc020b680 <memcpy>:
ffffffffc020b680:	ca19                	beqz	a2,ffffffffc020b696 <memcpy+0x16>
ffffffffc020b682:	962e                	add	a2,a2,a1
ffffffffc020b684:	87aa                	mv	a5,a0
ffffffffc020b686:	0005c703          	lbu	a4,0(a1)
ffffffffc020b68a:	0585                	addi	a1,a1,1
ffffffffc020b68c:	0785                	addi	a5,a5,1
ffffffffc020b68e:	fee78fa3          	sb	a4,-1(a5)
ffffffffc020b692:	fec59ae3          	bne	a1,a2,ffffffffc020b686 <memcpy+0x6>
ffffffffc020b696:	8082                	ret

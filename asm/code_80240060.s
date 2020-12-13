.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

lbl_80240060:
/* 80240060 0023BCC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80240064 0023BCC4  7C 08 02 A6 */	mflr r0
/* 80240068 0023BCC8  C0 22 9E 20 */	lfs f1, lbl_80642420-_SDA2_BASE_(r2)
/* 8024006C 0023BCCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80240070 0023BCD0  FC 40 08 90 */	fmr f2, f1
/* 80240074 0023BCD4  C0 62 9E 24 */	lfs f3, lbl_80642424-_SDA2_BASE_(r2)
/* 80240078 0023BCD8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8024007C 0023BCDC  3B E0 00 00 */	li r31, 0
/* 80240080 0023BCE0  FC A0 08 90 */	fmr f5, f1
/* 80240084 0023BCE4  C0 82 9E 28 */	lfs f4, lbl_80642428-_SDA2_BASE_(r2)
/* 80240088 0023BCE8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8024008C 0023BCEC  3B C0 00 01 */	li r30, 1
/* 80240090 0023BCF0  C0 C2 9E 2C */	lfs f6, lbl_8064242C-_SDA2_BASE_(r2)
/* 80240094 0023BCF4  80 8D A3 D8 */	lwz r4, lbl_8063F698-_SDA_BASE_(r13)
/* 80240098 0023BCF8  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 8024009C 0023BCFC  9B C3 0A 36 */	stb r30, 0xa36(r3)
/* 802400A0 0023BD00  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 802400A4 0023BD04  9B E3 0A 37 */	stb r31, 0xa37(r3)
/* 802400A8 0023BD08  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 802400AC 0023BD0C  9B E3 0A 38 */	stb r31, 0xa38(r3)
/* 802400B0 0023BD10  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 802400B4 0023BD14  80 03 00 64 */	lwz r0, 0x64(r3)
/* 802400B8 0023BD18  60 00 00 04 */	ori r0, r0, 4
/* 802400BC 0023BD1C  90 03 00 64 */	stw r0, 0x64(r3)
/* 802400C0 0023BD20  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 802400C4 0023BD24  80 03 00 00 */	lwz r0, 0(r3)
/* 802400C8 0023BD28  60 00 00 40 */	ori r0, r0, 0x40
/* 802400CC 0023BD2C  90 03 00 00 */	stw r0, 0(r3)
/* 802400D0 0023BD30  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 802400D4 0023BD34  4B FF 4F 0D */	bl func_80234FE0
/* 802400D8 0023BD38  81 0D A3 D8 */	lwz r8, lbl_8063F698-_SDA_BASE_(r13)
/* 802400DC 0023BD3C  38 E0 00 04 */	li r7, 4
/* 802400E0 0023BD40  38 C0 00 05 */	li r6, 5
/* 802400E4 0023BD44  38 A0 00 03 */	li r5, 3
/* 802400E8 0023BD48  80 68 16 38 */	lwz r3, 0x1638(r8)
/* 802400EC 0023BD4C  38 00 00 07 */	li r0, 7
/* 802400F0 0023BD50  93 C3 0A 24 */	stw r30, 0xa24(r3)
/* 802400F4 0023BD54  38 60 00 00 */	li r3, 0
/* 802400F8 0023BD58  80 88 16 38 */	lwz r4, 0x1638(r8)
/* 802400FC 0023BD5C  90 E4 0A 28 */	stw r7, 0xa28(r4)
/* 80240100 0023BD60  80 88 16 38 */	lwz r4, 0x1638(r8)
/* 80240104 0023BD64  90 C4 0A 2C */	stw r6, 0xa2c(r4)
/* 80240108 0023BD68  80 88 16 38 */	lwz r4, 0x1638(r8)
/* 8024010C 0023BD6C  90 C4 0A 30 */	stw r6, 0xa30(r4)
/* 80240110 0023BD70  80 C8 16 38 */	lwz r6, 0x1638(r8)
/* 80240114 0023BD74  80 86 00 64 */	lwz r4, 0x64(r6)
/* 80240118 0023BD78  60 84 00 01 */	ori r4, r4, 1
/* 8024011C 0023BD7C  90 86 00 64 */	stw r4, 0x64(r6)
/* 80240120 0023BD80  80 C8 16 38 */	lwz r6, 0x1638(r8)
/* 80240124 0023BD84  80 86 00 00 */	lwz r4, 0(r6)
/* 80240128 0023BD88  60 84 00 40 */	ori r4, r4, 0x40
/* 8024012C 0023BD8C  90 86 00 00 */	stw r4, 0(r6)
/* 80240130 0023BD90  80 CD A3 D8 */	lwz r6, lbl_8063F698-_SDA_BASE_(r13)
/* 80240134 0023BD94  80 86 16 38 */	lwz r4, 0x1638(r6)
/* 80240138 0023BD98  9B E4 0A 3C */	stb r31, 0xa3c(r4)
/* 8024013C 0023BD9C  80 86 16 38 */	lwz r4, 0x1638(r6)
/* 80240140 0023BDA0  90 A4 0A 40 */	stw r5, 0xa40(r4)
/* 80240144 0023BDA4  80 A6 16 38 */	lwz r5, 0x1638(r6)
/* 80240148 0023BDA8  80 85 00 64 */	lwz r4, 0x64(r5)
/* 8024014C 0023BDAC  60 84 00 08 */	ori r4, r4, 8
/* 80240150 0023BDB0  90 85 00 64 */	stw r4, 0x64(r5)
/* 80240154 0023BDB4  80 A6 16 38 */	lwz r5, 0x1638(r6)
/* 80240158 0023BDB8  80 85 00 00 */	lwz r4, 0(r5)
/* 8024015C 0023BDBC  60 84 00 40 */	ori r4, r4, 0x40
/* 80240160 0023BDC0  90 85 00 00 */	stw r4, 0(r5)
/* 80240164 0023BDC4  80 AD A3 D8 */	lwz r5, lbl_8063F698-_SDA_BASE_(r13)
/* 80240168 0023BDC8  80 85 16 38 */	lwz r4, 0x1638(r5)
/* 8024016C 0023BDCC  90 04 0A 44 */	stw r0, 0xa44(r4)
/* 80240170 0023BDD0  80 85 16 38 */	lwz r4, 0x1638(r5)
/* 80240174 0023BDD4  9B E4 0A 50 */	stb r31, 0xa50(r4)
/* 80240178 0023BDD8  80 85 16 38 */	lwz r4, 0x1638(r5)
/* 8024017C 0023BDDC  93 E4 0A 48 */	stw r31, 0xa48(r4)
/* 80240180 0023BDE0  80 85 16 38 */	lwz r4, 0x1638(r5)
/* 80240184 0023BDE4  90 04 0A 4C */	stw r0, 0xa4c(r4)
/* 80240188 0023BDE8  80 85 16 38 */	lwz r4, 0x1638(r5)
/* 8024018C 0023BDEC  9B E4 0A 51 */	stb r31, 0xa51(r4)
/* 80240190 0023BDF0  80 85 16 38 */	lwz r4, 0x1638(r5)
/* 80240194 0023BDF4  9B C4 0A 52 */	stb r30, 0xa52(r4)
/* 80240198 0023BDF8  80 85 16 38 */	lwz r4, 0x1638(r5)
/* 8024019C 0023BDFC  80 04 00 64 */	lwz r0, 0x64(r4)
/* 802401A0 0023BE00  60 00 00 10 */	ori r0, r0, 0x10
/* 802401A4 0023BE04  90 04 00 64 */	stw r0, 0x64(r4)
/* 802401A8 0023BE08  80 85 16 38 */	lwz r4, 0x1638(r5)
/* 802401AC 0023BE0C  80 04 00 00 */	lwz r0, 0(r4)
/* 802401B0 0023BE10  60 00 00 40 */	ori r0, r0, 0x40
/* 802401B4 0023BE14  90 04 00 00 */	stw r0, 0(r4)
/* 802401B8 0023BE18  80 AD A3 D8 */	lwz r5, lbl_8063F698-_SDA_BASE_(r13)
/* 802401BC 0023BE1C  80 85 16 38 */	lwz r4, 0x1638(r5)
/* 802401C0 0023BE20  93 E4 01 84 */	stw r31, 0x184(r4)
/* 802401C4 0023BE24  80 85 16 38 */	lwz r4, 0x1638(r5)
/* 802401C8 0023BE28  80 04 00 10 */	lwz r0, 0x10(r4)
/* 802401CC 0023BE2C  60 00 00 02 */	ori r0, r0, 2
/* 802401D0 0023BE30  90 04 00 10 */	stw r0, 0x10(r4)
/* 802401D4 0023BE34  80 85 16 38 */	lwz r4, 0x1638(r5)
/* 802401D8 0023BE38  80 04 00 00 */	lwz r0, 0(r4)
/* 802401DC 0023BE3C  60 00 00 02 */	ori r0, r0, 2
/* 802401E0 0023BE40  90 04 00 00 */	stw r0, 0(r4)
/* 802401E4 0023BE44  80 AD A3 D8 */	lwz r5, lbl_8063F698-_SDA_BASE_(r13)
/* 802401E8 0023BE48  80 85 16 38 */	lwz r4, 0x1638(r5)
/* 802401EC 0023BE4C  93 C4 01 88 */	stw r30, 0x188(r4)
/* 802401F0 0023BE50  80 85 16 38 */	lwz r4, 0x1638(r5)
/* 802401F4 0023BE54  80 04 00 10 */	lwz r0, 0x10(r4)
/* 802401F8 0023BE58  60 00 00 04 */	ori r0, r0, 4
/* 802401FC 0023BE5C  90 04 00 10 */	stw r0, 0x10(r4)
/* 80240200 0023BE60  80 85 16 38 */	lwz r4, 0x1638(r5)
/* 80240204 0023BE64  80 04 00 00 */	lwz r0, 0(r4)
/* 80240208 0023BE68  60 00 00 02 */	ori r0, r0, 2
/* 8024020C 0023BE6C  90 04 00 00 */	stw r0, 0(r4)
/* 80240210 0023BE70  4B FF CD 0D */	bl func_8023CF1C
/* 80240214 0023BE74  7C 64 1B 78 */	mr r4, r3
/* 80240218 0023BE78  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 8024021C 0023BE7C  4B FF 7E A1 */	bl func_802380BC
/* 80240220 0023BE80  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 80240224 0023BE84  38 00 00 98 */	li r0, 0x98
/* 80240228 0023BE88  38 80 00 04 */	li r4, 4
/* 8024022C 0023BE8C  90 03 17 38 */	stw r0, 0x1738(r3)
/* 80240230 0023BE90  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 80240234 0023BE94  4B FF 32 F9 */	bl begin_drawing
/* 80240238 0023BE98  C0 02 9E 20 */	lfs f0, lbl_80642420-_SDA2_BASE_(r2)
/* 8024023C 0023BE9C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80240240 0023BEA0  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 80240244 0023BEA4  C0 02 9E 20 */	lfs f0, lbl_80642420-_SDA2_BASE_(r2)
/* 80240248 0023BEA8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8024024C 0023BEAC  C0 02 9E 20 */	lfs f0, lbl_80642420-_SDA2_BASE_(r2)
/* 80240250 0023BEB0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80240254 0023BEB4  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 80240258 0023BEB8  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 8024025C 0023BEBC  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 80240260 0023BEC0  80 0D A4 D8 */	lwz r0, lbl_8063F798-_SDA_BASE_(r13)
/* 80240264 0023BEC4  98 03 80 00 */	stb r0, -0x8000(r3)
/* 80240268 0023BEC8  C0 02 9E 24 */	lfs f0, lbl_80642424-_SDA2_BASE_(r2)
/* 8024026C 0023BECC  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80240270 0023BED0  C0 02 9E 20 */	lfs f0, lbl_80642420-_SDA2_BASE_(r2)
/* 80240274 0023BED4  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80240278 0023BED8  C0 02 9E 20 */	lfs f0, lbl_80642420-_SDA2_BASE_(r2)
/* 8024027C 0023BEDC  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80240280 0023BEE0  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 80240284 0023BEE4  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 80240288 0023BEE8  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 8024028C 0023BEEC  98 03 80 00 */	stb r0, -0x8000(r3)
/* 80240290 0023BEF0  C0 02 9E 20 */	lfs f0, lbl_80642420-_SDA2_BASE_(r2)
/* 80240294 0023BEF4  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80240298 0023BEF8  C0 02 9E 28 */	lfs f0, lbl_80642428-_SDA2_BASE_(r2)
/* 8024029C 0023BEFC  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802402A0 0023BF00  C0 02 9E 20 */	lfs f0, lbl_80642420-_SDA2_BASE_(r2)
/* 802402A4 0023BF04  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802402A8 0023BF08  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 802402AC 0023BF0C  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 802402B0 0023BF10  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 802402B4 0023BF14  98 03 80 00 */	stb r0, -0x8000(r3)
/* 802402B8 0023BF18  C0 02 9E 24 */	lfs f0, lbl_80642424-_SDA2_BASE_(r2)
/* 802402BC 0023BF1C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802402C0 0023BF20  C0 02 9E 28 */	lfs f0, lbl_80642428-_SDA2_BASE_(r2)
/* 802402C4 0023BF24  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802402C8 0023BF28  C0 02 9E 20 */	lfs f0, lbl_80642420-_SDA2_BASE_(r2)
/* 802402CC 0023BF2C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802402D0 0023BF30  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 802402D4 0023BF34  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 802402D8 0023BF38  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 802402DC 0023BF3C  98 03 80 00 */	stb r0, -0x8000(r3)
/* 802402E0 0023BF40  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 802402E4 0023BF44  4B FF 32 9D */	bl end_drawing
/* 802402E8 0023BF48  80 0D A4 D8 */	lwz r0, lbl_8063F798-_SDA_BASE_(r13)
/* 802402EC 0023BF4C  2C 00 00 FF */	cmpwi r0, 0xff
/* 802402F0 0023BF50  40 82 00 10 */	bne lbl_80240300
/* 802402F4 0023BF54  93 ED A4 D8 */	stw r31, lbl_8063F798-_SDA_BASE_(r13)
/* 802402F8 0023BF58  38 60 00 01 */	li r3, 1
/* 802402FC 0023BF5C  48 00 00 74 */	b lbl_80240370
lbl_80240300:
/* 80240300 0023BF60  80 CD A4 C8 */	lwz r6, lbl_8063F788-_SDA_BASE_(r13)
/* 80240304 0023BF64  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80240308 0023BF68  3C 80 43 30 */	lis r4, 0x4330
/* 8024030C 0023BF6C  38 60 01 00 */	li r3, 0x100
/* 80240310 0023BF70  88 06 00 59 */	lbz r0, 0x59(r6)
/* 80240314 0023BF74  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80240318 0023BF78  7C 03 03 D6 */	divw r0, r3, r0
/* 8024031C 0023BF7C  C8 42 9E 30 */	lfd f2, lbl_80642430-_SDA2_BASE_(r2)
/* 80240320 0023BF80  90 81 00 08 */	stw r4, 8(r1)
/* 80240324 0023BF84  C0 66 00 90 */	lfs f3, 0x90(r6)
/* 80240328 0023BF88  C8 01 00 08 */	lfd f0, 8(r1)
/* 8024032C 0023BF8C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80240330 0023BF90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80240334 0023BF94  EC 20 10 28 */	fsubs f1, f0, f2
/* 80240338 0023BF98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024033C 0023BF9C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80240340 0023BFA0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80240344 0023BFA4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80240348 0023BFA8  EC 01 00 2A */	fadds f0, f1, f0
/* 8024034C 0023BFAC  FC 00 00 1E */	fctiwz f0, f0
/* 80240350 0023BFB0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80240354 0023BFB4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80240358 0023BFB8  2C 00 00 FF */	cmpwi r0, 0xff
/* 8024035C 0023BFBC  90 0D A4 D8 */	stw r0, lbl_8063F798-_SDA_BASE_(r13)
/* 80240360 0023BFC0  40 81 00 0C */	ble lbl_8024036C
/* 80240364 0023BFC4  38 00 00 FF */	li r0, 0xff
/* 80240368 0023BFC8  90 0D A4 D8 */	stw r0, lbl_8063F798-_SDA_BASE_(r13)
lbl_8024036C:
/* 8024036C 0023BFCC  38 60 00 00 */	li r3, 0
lbl_80240370:
/* 80240370 0023BFD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80240374 0023BFD4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80240378 0023BFD8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8024037C 0023BFDC  7C 08 03 A6 */	mtlr r0
/* 80240380 0023BFE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80240384 0023BFE4  4E 80 00 20 */	blr

.global func_80240388
func_80240388:
/* 80240388 0023BFE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024038C 0023BFEC  7C 08 02 A6 */	mflr r0
/* 80240390 0023BFF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80240394 0023BFF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80240398 0023BFF8  7C 7F 1B 78 */	mr r31, r3
/* 8024039C 0023BFFC  48 03 70 21 */	bl DBIsDebuggerPresent
/* 802403A0 0023C000  2C 03 00 01 */	cmpwi r3, 1
/* 802403A4 0023C004  40 82 00 10 */	bne lbl_802403B4
/* 802403A8 0023C008  38 00 00 00 */	li r0, 0
/* 802403AC 0023C00C  98 1F 17 1B */	stb r0, 0x171b(r31)
/* 802403B0 0023C010  48 00 00 58 */	b lbl_80240408
lbl_802403B4:
/* 802403B4 0023C014  7F E3 FB 78 */	mr r3, r31
/* 802403B8 0023C018  4B FF 0D 09 */	bl func_802310C0
/* 802403BC 0023C01C  80 1F 17 1C */	lwz r0, 0x171c(r31)
/* 802403C0 0023C020  2C 00 00 02 */	cmpwi r0, 2
/* 802403C4 0023C024  41 82 00 38 */	beq lbl_802403FC
/* 802403C8 0023C028  40 80 00 14 */	bge lbl_802403DC
/* 802403CC 0023C02C  2C 00 00 00 */	cmpwi r0, 0
/* 802403D0 0023C030  41 82 00 18 */	beq lbl_802403E8
/* 802403D4 0023C034  40 80 00 20 */	bge lbl_802403F4
/* 802403D8 0023C038  48 00 00 30 */	b lbl_80240408
lbl_802403DC:
/* 802403DC 0023C03C  2C 00 00 04 */	cmpwi r0, 4
/* 802403E0 0023C040  40 80 00 28 */	bge lbl_80240408
/* 802403E4 0023C044  48 00 00 20 */	b lbl_80240404
lbl_802403E8:
/* 802403E8 0023C048  38 60 00 00 */	li r3, 0
/* 802403EC 0023C04C  48 02 FD D9 */	bl OSRestart
/* 802403F0 0023C050  48 00 00 18 */	b lbl_80240408
lbl_802403F4:
/* 802403F4 0023C054  48 02 FB 65 */	bl OSRebootSystem
/* 802403F8 0023C058  48 00 00 10 */	b lbl_80240408
lbl_802403FC:
/* 802403FC 0023C05C  48 02 FE 55 */	bl OSReturnToMenu
/* 80240400 0023C060  48 00 00 08 */	b lbl_80240408
lbl_80240404:
/* 80240404 0023C064  48 02 FB FD */	bl OSShutdownSystem
lbl_80240408:
/* 80240408 0023C068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024040C 0023C06C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80240410 0023C070  7C 08 03 A6 */	mtlr r0
/* 80240414 0023C074  38 21 00 10 */	addi r1, r1, 0x10
/* 80240418 0023C078  4E 80 00 20 */	blr

.global func_8024041C
func_8024041C:
/* 8024041C 0023C07C  3C 80 80 24 */	lis r4, lbl_80240060@ha
/* 80240420 0023C080  38 00 00 00 */	li r0, 0
/* 80240424 0023C084  38 84 00 60 */	addi r4, r4, lbl_80240060@l
/* 80240428 0023C088  98 03 17 1A */	stb r0, 0x171a(r3)
/* 8024042C 0023C08C  98 03 17 1B */	stb r0, 0x171b(r3)
/* 80240430 0023C090  90 83 17 20 */	stw r4, 0x1720(r3)
/* 80240434 0023C094  90 03 17 24 */	stw r0, 0x1724(r3)
/* 80240438 0023C098  90 03 17 28 */	stw r0, 0x1728(r3)
/* 8024043C 0023C09C  4E 80 00 20 */	blr

.global func_80240440
func_80240440:
/* 80240440 0023C0A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80240444 0023C0A4  7C 08 02 A6 */	mflr r0
/* 80240448 0023C0A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024044C 0023C0AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80240450 0023C0B0  7C 7F 1B 78 */	mr r31, r3
/* 80240454 0023C0B4  88 03 17 1B */	lbz r0, 0x171b(r3)
/* 80240458 0023C0B8  2C 00 00 02 */	cmpwi r0, 2
/* 8024045C 0023C0BC  41 82 00 74 */	beq lbl_802404D0
/* 80240460 0023C0C0  40 80 00 14 */	bge lbl_80240474
/* 80240464 0023C0C4  2C 00 00 00 */	cmpwi r0, 0
/* 80240468 0023C0C8  41 82 00 18 */	beq lbl_80240480
/* 8024046C 0023C0CC  40 80 00 38 */	bge lbl_802404A4
/* 80240470 0023C0D0  48 00 00 88 */	b lbl_802404F8
lbl_80240474:
/* 80240474 0023C0D4  2C 00 00 04 */	cmpwi r0, 4
/* 80240478 0023C0D8  40 80 00 80 */	bge lbl_802404F8
/* 8024047C 0023C0DC  48 00 00 78 */	b lbl_802404F4
lbl_80240480:
/* 80240480 0023C0E0  88 03 17 1A */	lbz r0, 0x171a(r3)
/* 80240484 0023C0E4  2C 00 00 00 */	cmpwi r0, 0
/* 80240488 0023C0E8  41 82 00 70 */	beq lbl_802404F8
/* 8024048C 0023C0EC  48 03 2D B9 */	bl OSGetResetButtonState
/* 80240490 0023C0F0  2C 03 00 01 */	cmpwi r3, 1
/* 80240494 0023C0F4  40 82 00 64 */	bne lbl_802404F8
/* 80240498 0023C0F8  38 00 00 01 */	li r0, 1
/* 8024049C 0023C0FC  98 1F 17 1B */	stb r0, 0x171b(r31)
/* 802404A0 0023C100  48 00 00 58 */	b lbl_802404F8
lbl_802404A4:
/* 802404A4 0023C104  88 03 17 1A */	lbz r0, 0x171a(r3)
/* 802404A8 0023C108  2C 00 00 00 */	cmpwi r0, 0
/* 802404AC 0023C10C  41 82 00 4C */	beq lbl_802404F8
/* 802404B0 0023C110  48 03 2D 95 */	bl OSGetResetButtonState
/* 802404B4 0023C114  2C 03 00 00 */	cmpwi r3, 0
/* 802404B8 0023C118  40 82 00 40 */	bne lbl_802404F8
/* 802404BC 0023C11C  38 60 00 02 */	li r3, 2
/* 802404C0 0023C120  38 00 00 00 */	li r0, 0
/* 802404C4 0023C124  98 7F 17 1B */	stb r3, 0x171b(r31)
/* 802404C8 0023C128  90 1F 17 1C */	stw r0, 0x171c(r31)
/* 802404CC 0023C12C  48 00 00 2C */	b lbl_802404F8
lbl_802404D0:
/* 802404D0 0023C130  81 9F 17 20 */	lwz r12, 0x1720(r31)
/* 802404D4 0023C134  80 63 17 24 */	lwz r3, 0x1724(r3)
/* 802404D8 0023C138  7D 89 03 A6 */	mtctr r12
/* 802404DC 0023C13C  4E 80 04 21 */	bctrl
/* 802404E0 0023C140  28 03 00 01 */	cmplwi r3, 1
/* 802404E4 0023C144  40 82 00 14 */	bne lbl_802404F8
/* 802404E8 0023C148  38 00 00 03 */	li r0, 3
/* 802404EC 0023C14C  98 1F 17 1B */	stb r0, 0x171b(r31)
/* 802404F0 0023C150  48 00 00 08 */	b lbl_802404F8
lbl_802404F4:
/* 802404F4 0023C154  4B FF FE 95 */	bl func_80240388
lbl_802404F8:
/* 802404F8 0023C158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802404FC 0023C15C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80240500 0023C160  7C 08 03 A6 */	mtlr r0
/* 80240504 0023C164  38 21 00 10 */	addi r1, r1, 0x10
/* 80240508 0023C168  4E 80 00 20 */	blr

.global func_8024050C
func_8024050C:
/* 8024050C 0023C16C  38 A0 00 01 */	li r5, 1
/* 80240510 0023C170  38 6D A4 D0 */	addi r3, r13, lbl_8063F790-_SDA_BASE_
/* 80240514 0023C174  38 80 00 04 */	li r4, 4
/* 80240518 0023C178  38 00 00 00 */	li r0, 0
/* 8024051C 0023C17C  98 AD A4 D0 */	stb r5, lbl_8063F790-_SDA_BASE_(r13)
/* 80240520 0023C180  B0 83 00 02 */	sth r4, 2(r3)
/* 80240524 0023C184  98 03 00 04 */	stb r0, 4(r3)
/* 80240528 0023C188  4E 80 00 20 */	blr

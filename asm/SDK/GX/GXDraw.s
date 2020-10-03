.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global GXDrawSphere
GXDrawSphere:
/* 8028582C 0028148C  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80285830 00281490  7C 08 02 A6 */	mflr r0
/* 80285834 00281494  90 01 01 14 */	stw r0, 0x114(r1)
/* 80285838 00281498  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8028583C 0028149C  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 80285840 002814A0  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 80285844 002814A4  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, qr0
/* 80285848 002814A8  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 8028584C 002814AC  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, qr0
/* 80285850 002814B0  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 80285854 002814B4  F3 81 00 D8 */	psq_st f28, 216(r1), 0, qr0
/* 80285858 002814B8  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 8028585C 002814BC  F3 61 00 C8 */	psq_st f27, 200(r1), 0, qr0
/* 80285860 002814C0  DB 41 00 B0 */	stfd f26, 0xb0(r1)
/* 80285864 002814C4  F3 41 00 B8 */	psq_st f26, 184(r1), 0, qr0
/* 80285868 002814C8  DB 21 00 A0 */	stfd f25, 0xa0(r1)
/* 8028586C 002814CC  F3 21 00 A8 */	psq_st f25, 168(r1), 0, qr0
/* 80285870 002814D0  DB 01 00 90 */	stfd f24, 0x90(r1)
/* 80285874 002814D4  F3 01 00 98 */	psq_st f24, 152(r1), 0, qr0
/* 80285878 002814D8  DA E1 00 80 */	stfd f23, 0x80(r1)
/* 8028587C 002814DC  F2 E1 00 88 */	psq_st f23, 136(r1), 0, qr0
/* 80285880 002814E0  DA C1 00 70 */	stfd f22, 0x70(r1)
/* 80285884 002814E4  F2 C1 00 78 */	psq_st f22, 120(r1), 0, qr0
/* 80285888 002814E8  DA A1 00 60 */	stfd f21, 0x60(r1)
/* 8028588C 002814EC  F2 A1 00 68 */	psq_st f21, 104(r1), 0, qr0
/* 80285890 002814F0  DA 81 00 50 */	stfd f20, 0x50(r1)
/* 80285894 002814F4  F2 81 00 58 */	psq_st f20, 88(r1), 0, qr0
/* 80285898 002814F8  DA 61 00 40 */	stfd f19, 0x40(r1)
/* 8028589C 002814FC  F2 61 00 48 */	psq_st f19, 72(r1), 0, qr0
/* 802858A0 00281500  39 61 00 40 */	addi r11, r1, 0x40
/* 802858A4 00281504  4B F4 18 7D */	bl _savegpr_25
/* 802858A8 00281508  3C 00 43 30 */	lis r0, 0x4330
/* 802858AC 0028150C  90 61 00 14 */	stw r3, 0x14(r1)
/* 802858B0 00281510  7C 79 1B 78 */	mr r25, r3
/* 802858B4 00281514  C8 82 A1 F0 */	lfd f4, lbl_806427F0-_SDA2_BASE_(r2)
/* 802858B8 00281518  90 01 00 10 */	stw r0, 0x10(r1)
/* 802858BC 0028151C  7C 9A 23 78 */	mr r26, r4
/* 802858C0 00281520  C0 42 A1 D4 */	lfs f2, lbl_806427D4-_SDA2_BASE_(r2)
/* 802858C4 00281524  38 60 00 0D */	li r3, 0xd
/* 802858C8 00281528  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802858CC 0028152C  38 81 00 08 */	addi r4, r1, 8
/* 802858D0 00281530  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802858D4 00281534  90 01 00 18 */	stw r0, 0x18(r1)
/* 802858D8 00281538  EC 60 20 28 */	fsubs f3, f0, f4
/* 802858DC 0028153C  C0 02 A1 F8 */	lfs f0, lbl_806427F8-_SDA2_BASE_(r2)
/* 802858E0 00281540  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 802858E4 00281544  C3 42 A1 D0 */	lfs f26, lbl_806427D0-_SDA2_BASE_(r2)
/* 802858E8 00281548  EC 21 20 28 */	fsubs f1, f1, f4
/* 802858EC 0028154C  EF 22 18 24 */	fdivs f25, f2, f3
/* 802858F0 00281550  EF 00 08 24 */	fdivs f24, f0, f1
/* 802858F4 00281554  4B FF A1 4D */	bl GXGetVtxDesc
/* 802858F8 00281558  3C 60 80 51 */	lis r3, lbl_80515FF8@ha
/* 802858FC 0028155C  38 63 5F F8 */	addi r3, r3, lbl_80515FF8@l
/* 80285900 00281560  4B FF A2 F5 */	bl GXGetVtxDescv
/* 80285904 00281564  3C 80 80 51 */	lis r4, lbl_805160D0@ha
/* 80285908 00281568  38 60 00 03 */	li r3, 3
/* 8028590C 0028156C  38 84 60 D0 */	addi r4, r4, lbl_805160D0@l
/* 80285910 00281570  4B FF A9 F9 */	bl GXGetVtxAttrFmtv
/* 80285914 00281574  4B FF A3 71 */	bl GXClearVtxDesc
/* 80285918 00281578  38 60 00 09 */	li r3, 9
/* 8028591C 0028157C  38 80 00 01 */	li r4, 1
/* 80285920 00281580  4B FF 9A D5 */	bl GXSetVtxDesc
/* 80285924 00281584  38 60 00 0A */	li r3, 0xa
/* 80285928 00281588  38 80 00 01 */	li r4, 1
/* 8028592C 0028158C  4B FF 9A C9 */	bl GXSetVtxDesc
/* 80285930 00281590  38 60 00 03 */	li r3, 3
/* 80285934 00281594  38 80 00 09 */	li r4, 9
/* 80285938 00281598  38 A0 00 01 */	li r5, 1
/* 8028593C 0028159C  38 C0 00 04 */	li r6, 4
/* 80285940 002815A0  38 E0 00 00 */	li r7, 0
/* 80285944 002815A4  4B FF A3 75 */	bl GXSetVtxAttrFmt
/* 80285948 002815A8  38 60 00 03 */	li r3, 3
/* 8028594C 002815AC  38 80 00 0A */	li r4, 0xa
/* 80285950 002815B0  38 A0 00 00 */	li r5, 0
/* 80285954 002815B4  38 C0 00 04 */	li r6, 4
/* 80285958 002815B8  38 E0 00 00 */	li r7, 0
/* 8028595C 002815BC  4B FF A3 5D */	bl GXSetVtxAttrFmt
/* 80285960 002815C0  80 01 00 08 */	lwz r0, 8(r1)
/* 80285964 002815C4  2C 00 00 00 */	cmpwi r0, 0
/* 80285968 002815C8  41 82 00 28 */	beq lbl_80285990
/* 8028596C 002815CC  38 60 00 0D */	li r3, 0xd
/* 80285970 002815D0  38 80 00 01 */	li r4, 1
/* 80285974 002815D4  4B FF 9A 81 */	bl GXSetVtxDesc
/* 80285978 002815D8  38 60 00 03 */	li r3, 3
/* 8028597C 002815DC  38 80 00 0D */	li r4, 0xd
/* 80285980 002815E0  38 A0 00 01 */	li r5, 1
/* 80285984 002815E4  38 C0 00 04 */	li r6, 4
/* 80285988 002815E8  38 E0 00 00 */	li r7, 0
/* 8028598C 002815EC  4B FF A3 2D */	bl GXSetVtxAttrFmt
lbl_80285990:
/* 80285990 002815F0  38 1A 00 01 */	addi r0, r26, 1
/* 80285994 002815F4  CB 82 A1 E8 */	lfd f28, lbl_806427E8-_SDA2_BASE_(r2)
/* 80285998 002815F8  CB C2 A1 F0 */	lfd f30, lbl_806427F0-_SDA2_BASE_(r2)
/* 8028599C 002815FC  54 1E 08 3C */	slwi r30, r0, 1
/* 802859A0 00281600  3B 80 00 00 */	li r28, 0
/* 802859A4 00281604  3F E0 CC 01 */	lis r31, 0xcc01
/* 802859A8 00281608  48 00 01 B0 */	b lbl_80285B58
lbl_802859AC:
/* 802859AC 0028160C  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 802859B0 00281610  90 01 00 14 */	stw r0, 0x14(r1)
/* 802859B4 00281614  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802859B8 00281618  EC 00 E0 28 */	fsubs f0, f0, f28
/* 802859BC 0028161C  EE 80 06 72 */	fmuls f20, f0, f25
/* 802859C0 00281620  FC 20 A0 90 */	fmr f1, f20
/* 802859C4 00281624  EE B4 C8 2A */	fadds f21, f20, f25
/* 802859C8 00281628  4B F4 EA BD */	bl sin
/* 802859CC 0028162C  FC 00 08 18 */	frsp f0, f1
/* 802859D0 00281630  FC 20 A8 90 */	fmr f1, f21
/* 802859D4 00281634  EE FA 00 32 */	fmuls f23, f26, f0
/* 802859D8 00281638  4B F4 EA AD */	bl sin
/* 802859DC 0028163C  FC 00 08 18 */	frsp f0, f1
/* 802859E0 00281640  FC 20 A0 90 */	fmr f1, f20
/* 802859E4 00281644  EE DA 00 32 */	fmuls f22, f26, f0
/* 802859E8 00281648  4B F4 E6 91 */	bl cos
/* 802859EC 0028164C  FC 00 08 18 */	frsp f0, f1
/* 802859F0 00281650  FC 20 A8 90 */	fmr f1, f21
/* 802859F4 00281654  EE BA 00 32 */	fmuls f21, f26, f0
/* 802859F8 00281658  4B F4 E6 81 */	bl cos
/* 802859FC 0028165C  FC 00 08 18 */	frsp f0, f1
/* 80285A00 00281660  57 C5 04 3E */	clrlwi r5, r30, 0x10
/* 80285A04 00281664  38 60 00 98 */	li r3, 0x98
/* 80285A08 00281668  38 80 00 03 */	li r4, 3
/* 80285A0C 0028166C  EE 9A 00 32 */	fmuls f20, f26, f0
/* 80285A10 00281670  4B FF B7 39 */	bl GXBegin
/* 80285A14 00281674  EF B4 D0 24 */	fdivs f29, f20, f26
/* 80285A18 00281678  83 A1 00 08 */	lwz r29, 8(r1)
/* 80285A1C 0028167C  3B 60 00 00 */	li r27, 0
/* 80285A20 00281680  EF F5 D0 24 */	fdivs f31, f21, f26
/* 80285A24 00281684  48 00 01 28 */	b lbl_80285B4C
lbl_80285A28:
/* 80285A28 00281688  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 80285A2C 0028168C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80285A30 00281690  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80285A34 00281694  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80285A38 00281698  EE 60 06 32 */	fmuls f19, f0, f24
/* 80285A3C 0028169C  FC 20 98 90 */	fmr f1, f19
/* 80285A40 002816A0  4B F4 E6 39 */	bl cos
/* 80285A44 002816A4  FF 60 08 18 */	frsp f27, f1
/* 80285A48 002816A8  FC 20 98 90 */	fmr f1, f19
/* 80285A4C 002816AC  4B F4 EA 39 */	bl sin
/* 80285A50 002816B0  FC 80 08 18 */	frsp f4, f1
/* 80285A54 002816B4  2C 1D 00 00 */	cmpwi r29, 0
/* 80285A58 002816B8  EC 5B 05 B2 */	fmuls f2, f27, f22
/* 80285A5C 002816BC  EC 04 05 B2 */	fmuls f0, f4, f22
/* 80285A60 002816C0  D0 5F 80 00 */	stfs f2, -0x8000(r31)
/* 80285A64 002816C4  EC 22 D0 24 */	fdivs f1, f2, f26
/* 80285A68 002816C8  D0 1F 80 00 */	stfs f0, -0x8000(r31)
/* 80285A6C 002816CC  D2 9F 80 00 */	stfs f20, -0x8000(r31)
/* 80285A70 002816D0  EC 00 D0 24 */	fdivs f0, f0, f26
/* 80285A74 002816D4  D0 3F 80 00 */	stfs f1, -0x8000(r31)
/* 80285A78 002816D8  D0 1F 80 00 */	stfs f0, -0x8000(r31)
/* 80285A7C 002816DC  D3 BF 80 00 */	stfs f29, -0x8000(r31)
/* 80285A80 002816E0  41 82 00 50 */	beq lbl_80285AD0
/* 80285A84 002816E4  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 80285A88 002816E8  93 41 00 1C */	stw r26, 0x1c(r1)
/* 80285A8C 002816EC  38 1C 00 01 */	addi r0, r28, 1
/* 80285A90 002816F0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80285A94 002816F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80285A98 002816F8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80285A9C 002816FC  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80285AA0 00281700  93 21 00 1C */	stw r25, 0x1c(r1)
/* 80285AA4 00281704  EC 40 F0 28 */	fsubs f2, f0, f30
/* 80285AA8 00281708  EC 61 E0 28 */	fsubs f3, f1, f28
/* 80285AAC 0028170C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285AB0 00281710  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80285AB4 00281714  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80285AB8 00281718  EC 43 10 24 */	fdivs f2, f3, f2
/* 80285ABC 0028171C  EC 21 E0 28 */	fsubs f1, f1, f28
/* 80285AC0 00281720  D0 5F 80 00 */	stfs f2, -0x8000(r31)
/* 80285AC4 00281724  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80285AC8 00281728  EC 01 00 24 */	fdivs f0, f1, f0
/* 80285ACC 0028172C  D0 1F 80 00 */	stfs f0, -0x8000(r31)
lbl_80285AD0:
/* 80285AD0 00281730  EC 5B 05 F2 */	fmuls f2, f27, f23
/* 80285AD4 00281734  2C 1D 00 00 */	cmpwi r29, 0
/* 80285AD8 00281738  EC 04 05 F2 */	fmuls f0, f4, f23
/* 80285ADC 0028173C  D0 5F 80 00 */	stfs f2, -0x8000(r31)
/* 80285AE0 00281740  EC 22 D0 24 */	fdivs f1, f2, f26
/* 80285AE4 00281744  D0 1F 80 00 */	stfs f0, -0x8000(r31)
/* 80285AE8 00281748  D2 BF 80 00 */	stfs f21, -0x8000(r31)
/* 80285AEC 0028174C  EC 00 D0 24 */	fdivs f0, f0, f26
/* 80285AF0 00281750  D0 3F 80 00 */	stfs f1, -0x8000(r31)
/* 80285AF4 00281754  D0 1F 80 00 */	stfs f0, -0x8000(r31)
/* 80285AF8 00281758  D3 FF 80 00 */	stfs f31, -0x8000(r31)
/* 80285AFC 0028175C  41 82 00 4C */	beq lbl_80285B48
/* 80285B00 00281760  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 80285B04 00281764  93 41 00 1C */	stw r26, 0x1c(r1)
/* 80285B08 00281768  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80285B0C 0028176C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80285B10 00281770  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80285B14 00281774  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80285B18 00281778  93 21 00 1C */	stw r25, 0x1c(r1)
/* 80285B1C 0028177C  EC 40 F0 28 */	fsubs f2, f0, f30
/* 80285B20 00281780  EC 61 E0 28 */	fsubs f3, f1, f28
/* 80285B24 00281784  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285B28 00281788  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80285B2C 0028178C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80285B30 00281790  EC 43 10 24 */	fdivs f2, f3, f2
/* 80285B34 00281794  EC 21 E0 28 */	fsubs f1, f1, f28
/* 80285B38 00281798  D0 5F 80 00 */	stfs f2, -0x8000(r31)
/* 80285B3C 0028179C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80285B40 002817A0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80285B44 002817A4  D0 1F 80 00 */	stfs f0, -0x8000(r31)
lbl_80285B48:
/* 80285B48 002817A8  3B 7B 00 01 */	addi r27, r27, 1
lbl_80285B4C:
/* 80285B4C 002817AC  7C 1B D0 00 */	cmpw r27, r26
/* 80285B50 002817B0  40 81 FE D8 */	ble lbl_80285A28
/* 80285B54 002817B4  3B 9C 00 01 */	addi r28, r28, 1
lbl_80285B58:
/* 80285B58 002817B8  7C 1C C8 00 */	cmpw r28, r25
/* 80285B5C 002817BC  41 80 FE 50 */	blt lbl_802859AC
/* 80285B60 002817C0  3C 60 80 51 */	lis r3, lbl_80515FF8@ha
/* 80285B64 002817C4  38 63 5F F8 */	addi r3, r3, lbl_80515FF8@l
/* 80285B68 002817C8  4B FF 9A F1 */	bl GXSetVtxDescv
/* 80285B6C 002817CC  3C 80 80 51 */	lis r4, lbl_805160D0@ha
/* 80285B70 002817D0  38 60 00 03 */	li r3, 3
/* 80285B74 002817D4  38 84 60 D0 */	addi r4, r4, lbl_805160D0@l
/* 80285B78 002817D8  4B FF A2 E1 */	bl GXSetVtxAttrFmtv
/* 80285B7C 002817DC  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 80285B80 002817E0  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80285B84 002817E4  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, qr0
/* 80285B88 002817E8  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 80285B8C 002817EC  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, qr0
/* 80285B90 002817F0  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 80285B94 002817F4  E3 81 00 D8 */	psq_l f28, 216(r1), 0, qr0
/* 80285B98 002817F8  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 80285B9C 002817FC  E3 61 00 C8 */	psq_l f27, 200(r1), 0, qr0
/* 80285BA0 00281800  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 80285BA4 00281804  E3 41 00 B8 */	psq_l f26, 184(r1), 0, qr0
/* 80285BA8 00281808  CB 41 00 B0 */	lfd f26, 0xb0(r1)
/* 80285BAC 0028180C  E3 21 00 A8 */	psq_l f25, 168(r1), 0, qr0
/* 80285BB0 00281810  CB 21 00 A0 */	lfd f25, 0xa0(r1)
/* 80285BB4 00281814  E3 01 00 98 */	psq_l f24, 152(r1), 0, qr0
/* 80285BB8 00281818  CB 01 00 90 */	lfd f24, 0x90(r1)
/* 80285BBC 0028181C  E2 E1 00 88 */	psq_l f23, 136(r1), 0, qr0
/* 80285BC0 00281820  CA E1 00 80 */	lfd f23, 0x80(r1)
/* 80285BC4 00281824  E2 C1 00 78 */	psq_l f22, 120(r1), 0, qr0
/* 80285BC8 00281828  CA C1 00 70 */	lfd f22, 0x70(r1)
/* 80285BCC 0028182C  E2 A1 00 68 */	psq_l f21, 104(r1), 0, qr0
/* 80285BD0 00281830  CA A1 00 60 */	lfd f21, 0x60(r1)
/* 80285BD4 00281834  E2 81 00 58 */	psq_l f20, 88(r1), 0, qr0
/* 80285BD8 00281838  CA 81 00 50 */	lfd f20, 0x50(r1)
/* 80285BDC 0028183C  E2 61 00 48 */	psq_l f19, 72(r1), 0, qr0
/* 80285BE0 00281840  39 61 00 40 */	addi r11, r1, 0x40
/* 80285BE4 00281844  CA 61 00 40 */	lfd f19, 0x40(r1)
/* 80285BE8 00281848  4B F4 15 85 */	bl _restgpr_25
/* 80285BEC 0028184C  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80285BF0 00281850  7C 08 03 A6 */	mtlr r0
/* 80285BF4 00281854  38 21 01 10 */	addi r1, r1, 0x110
/* 80285BF8 00281858  4E 80 00 20 */	blr

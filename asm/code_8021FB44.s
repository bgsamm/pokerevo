.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_8021FB44
func_8021FB44:
/* 8021FB44 0021B7A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021FB48 0021B7A8  7C 08 02 A6 */	mflr r0
/* 8021FB4C 0021B7AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021FB50 0021B7B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021FB54 0021B7B4  7C 9F 23 78 */	mr r31, r4
/* 8021FB58 0021B7B8  93 C1 00 08 */	stw r30, 8(r1)
/* 8021FB5C 0021B7BC  7C 7E 1B 78 */	mr r30, r3
/* 8021FB60 0021B7C0  4B FF D5 81 */	bl func_8021D0E0
/* 8021FB64 0021B7C4  C0 62 9B D0 */	lfs f3, lbl_806421D0-_SDA2_BASE_(r2)
/* 8021FB68 0021B7C8  3C 60 80 42 */	lis r3, lbl_80423BE0@ha
/* 8021FB6C 0021B7CC  38 63 3B E0 */	addi r3, r3, lbl_80423BE0@l
/* 8021FB70 0021B7D0  3D 20 80 49 */	lis r9, lbl_80493614@ha
/* 8021FB74 0021B7D4  90 7E 00 0C */	stw r3, 0xc(r30)
/* 8021FB78 0021B7D8  3C E0 80 49 */	lis r7, lbl_80493608@ha
/* 8021FB7C 0021B7DC  3C A0 80 49 */	lis r5, lbl_80493620@ha
/* 8021FB80 0021B7E0  39 09 36 14 */	addi r8, r9, lbl_80493614@l
/* 8021FB84 0021B7E4  93 FE 00 10 */	stw r31, 0x10(r30)
/* 8021FB88 0021B7E8  38 C7 36 08 */	addi r6, r7, lbl_80493608@l
/* 8021FB8C 0021B7EC  38 85 36 20 */	addi r4, r5, lbl_80493620@l
/* 8021FB90 0021B7F0  C0 22 9B D4 */	lfs f1, lbl_806421D4-_SDA2_BASE_(r2)
/* 8021FB94 0021B7F4  D0 7E 00 14 */	stfs f3, 0x14(r30)
/* 8021FB98 0021B7F8  7F C3 F3 78 */	mr r3, r30
/* 8021FB9C 0021B7FC  C0 02 9B D8 */	lfs f0, lbl_806421D8-_SDA2_BASE_(r2)
/* 8021FBA0 0021B800  D0 7E 00 18 */	stfs f3, 0x18(r30)
/* 8021FBA4 0021B804  D0 7E 00 1C */	stfs f3, 0x1c(r30)
/* 8021FBA8 0021B808  C0 49 36 14 */	lfs f2, 0x3614(r9)
/* 8021FBAC 0021B80C  D0 5E 00 20 */	stfs f2, 0x20(r30)
/* 8021FBB0 0021B810  C0 48 00 04 */	lfs f2, 4(r8)
/* 8021FBB4 0021B814  D0 5E 00 24 */	stfs f2, 0x24(r30)
/* 8021FBB8 0021B818  C0 48 00 08 */	lfs f2, 8(r8)
/* 8021FBBC 0021B81C  D0 5E 00 28 */	stfs f2, 0x28(r30)
/* 8021FBC0 0021B820  C0 47 36 08 */	lfs f2, 0x3608(r7)
/* 8021FBC4 0021B824  D0 5E 00 2C */	stfs f2, 0x2c(r30)
/* 8021FBC8 0021B828  C0 46 00 04 */	lfs f2, 4(r6)
/* 8021FBCC 0021B82C  D0 5E 00 30 */	stfs f2, 0x30(r30)
/* 8021FBD0 0021B830  C0 46 00 08 */	lfs f2, 8(r6)
/* 8021FBD4 0021B834  D0 5E 00 34 */	stfs f2, 0x34(r30)
/* 8021FBD8 0021B838  C0 45 36 20 */	lfs f2, 0x3620(r5)
/* 8021FBDC 0021B83C  D0 5E 00 38 */	stfs f2, 0x38(r30)
/* 8021FBE0 0021B840  C0 44 00 04 */	lfs f2, 4(r4)
/* 8021FBE4 0021B844  D0 5E 00 3C */	stfs f2, 0x3c(r30)
/* 8021FBE8 0021B848  C0 44 00 08 */	lfs f2, 8(r4)
/* 8021FBEC 0021B84C  D0 5E 00 40 */	stfs f2, 0x40(r30)
/* 8021FBF0 0021B850  D0 7E 00 44 */	stfs f3, 0x44(r30)
/* 8021FBF4 0021B854  D0 3E 00 48 */	stfs f1, 0x48(r30)
/* 8021FBF8 0021B858  D0 3E 00 4C */	stfs f1, 0x4c(r30)
/* 8021FBFC 0021B85C  D0 7E 00 70 */	stfs f3, 0x70(r30)
/* 8021FC00 0021B860  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 8021FC04 0021B864  D0 7E 00 50 */	stfs f3, 0x50(r30)
/* 8021FC08 0021B868  D0 7E 00 54 */	stfs f3, 0x54(r30)
/* 8021FC0C 0021B86C  D0 3E 00 58 */	stfs f1, 0x58(r30)
/* 8021FC10 0021B870  D0 7E 00 5C */	stfs f3, 0x5c(r30)
/* 8021FC14 0021B874  D0 3E 00 60 */	stfs f1, 0x60(r30)
/* 8021FC18 0021B878  D0 3E 00 64 */	stfs f1, 0x64(r30)
/* 8021FC1C 0021B87C  D0 7E 00 68 */	stfs f3, 0x68(r30)
/* 8021FC20 0021B880  D0 3E 00 6C */	stfs f1, 0x6c(r30)
/* 8021FC24 0021B884  80 8D A1 A8 */	lwz r4, lbl_8063F468-_SDA_BASE_(r13)
/* 8021FC28 0021B888  88 04 00 04 */	lbz r0, 4(r4)
/* 8021FC2C 0021B88C  64 00 00 02 */	oris r0, r0, 2
/* 8021FC30 0021B890  60 00 08 00 */	ori r0, r0, 0x800
/* 8021FC34 0021B894  90 1E 00 04 */	stw r0, 4(r30)
/* 8021FC38 0021B898  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021FC3C 0021B89C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8021FC40 0021B8A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021FC44 0021B8A4  7C 08 03 A6 */	mtlr r0
/* 8021FC48 0021B8A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8021FC4C 0021B8AC  4E 80 00 20 */	blr
/* 8021FC50 0021B8B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021FC54 0021B8B4  7C 08 02 A6 */	mflr r0
/* 8021FC58 0021B8B8  2C 03 00 00 */	cmpwi r3, 0
/* 8021FC5C 0021B8BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021FC60 0021B8C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021FC64 0021B8C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8021FC68 0021B8C8  7C 9E 23 78 */	mr r30, r4
/* 8021FC6C 0021B8CC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8021FC70 0021B8D0  7C 7D 1B 78 */	mr r29, r3
/* 8021FC74 0021B8D4  41 82 00 74 */	beq lbl_8021FCE8
/* 8021FC78 0021B8D8  88 03 00 08 */	lbz r0, 8(r3)
/* 8021FC7C 0021B8DC  3C 80 80 42 */	lis r4, lbl_80423BE0@ha
/* 8021FC80 0021B8E0  38 84 3B E0 */	addi r4, r4, lbl_80423BE0@l
/* 8021FC84 0021B8E4  2C 00 00 00 */	cmpwi r0, 0
/* 8021FC88 0021B8E8  90 83 00 0C */	stw r4, 0xc(r3)
/* 8021FC8C 0021B8EC  41 82 00 3C */	beq lbl_8021FCC8
/* 8021FC90 0021B8F0  83 E3 00 04 */	lwz r31, 4(r3)
/* 8021FC94 0021B8F4  57 E3 86 3E */	rlwinm r3, r31, 0x10, 0x18, 0x1f
/* 8021FC98 0021B8F8  48 01 B3 C1 */	bl func_8023B058
/* 8021FC9C 0021B8FC  2C 03 00 00 */	cmpwi r3, 0
/* 8021FCA0 0021B900  41 82 00 0C */	beq lbl_8021FCAC
/* 8021FCA4 0021B904  7F E4 FB 78 */	mr r4, r31
/* 8021FCA8 0021B908  48 01 B7 79 */	bl func_8023B420
lbl_8021FCAC:
/* 8021FCAC 0021B90C  81 9D 00 0C */	lwz r12, 0xc(r29)
/* 8021FCB0 0021B910  7F A3 EB 78 */	mr r3, r29
/* 8021FCB4 0021B914  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8021FCB8 0021B918  7D 89 03 A6 */	mtctr r12
/* 8021FCBC 0021B91C  4E 80 04 21 */	bctrl
/* 8021FCC0 0021B920  38 00 00 00 */	li r0, 0
/* 8021FCC4 0021B924  98 1D 00 08 */	stb r0, 8(r29)
lbl_8021FCC8:
/* 8021FCC8 0021B928  7F A3 EB 78 */	mr r3, r29
/* 8021FCCC 0021B92C  38 80 00 00 */	li r4, 0
/* 8021FCD0 0021B930  4B FF D4 75 */	bl func_8021D144
/* 8021FCD4 0021B934  2C 1E 00 00 */	cmpwi r30, 0
/* 8021FCD8 0021B938  40 81 00 10 */	ble lbl_8021FCE8
/* 8021FCDC 0021B93C  80 6D 96 38 */	lwz r3, lbl_8063E8F8-_SDA_BASE_(r13)
/* 8021FCE0 0021B940  7F A4 EB 78 */	mr r4, r29
/* 8021FCE4 0021B944  4B FB B0 65 */	bl func_801DAD48
lbl_8021FCE8:
/* 8021FCE8 0021B948  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021FCEC 0021B94C  7F A3 EB 78 */	mr r3, r29
/* 8021FCF0 0021B950  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8021FCF4 0021B954  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8021FCF8 0021B958  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021FCFC 0021B95C  7C 08 03 A6 */	mtlr r0
/* 8021FD00 0021B960  38 21 00 20 */	addi r1, r1, 0x20
/* 8021FD04 0021B964  4E 80 00 20 */	blr
/* 8021FD08 0021B968  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8021FD0C 0021B96C  2C 00 00 00 */	cmpwi r0, 0
/* 8021FD10 0021B970  40 82 00 0C */	bne lbl_8021FD1C
/* 8021FD14 0021B974  38 60 00 00 */	li r3, 0
/* 8021FD18 0021B978  4E 80 00 20 */	blr
lbl_8021FD1C:
/* 8021FD1C 0021B97C  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 8021FD20 0021B980  C0 02 9B DC */	lfs f0, lbl_806421DC-_SDA2_BASE_(r2)
/* 8021FD24 0021B984  D0 23 00 70 */	stfs f1, 0x70(r3)
/* 8021FD28 0021B988  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8021FD2C 0021B98C  7C 60 00 26 */	mfcr r3
/* 8021FD30 0021B990  54 63 17 FE */	rlwinm r3, r3, 2, 0x1f, 0x1f
/* 8021FD34 0021B994  4E 80 00 20 */	blr

.global ColourBlendScreenTransition_Reset
ColourBlendScreenTransition_Reset:
/* 8021FD38 0021B998  C0 02 9B D0 */	lfs f0, lbl_806421D0-_SDA2_BASE_(r2)
/* 8021FD3C 0021B99C  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 8021FD40 0021B9A0  4E 80 00 20 */	blr
/* 8021FD44 0021B9A4  C0 43 00 70 */	lfs f2, 0x70(r3)
/* 8021FD48 0021B9A8  C0 02 9B DC */	lfs f0, lbl_806421DC-_SDA2_BASE_(r2)
/* 8021FD4C 0021B9AC  EC 22 08 28 */	fsubs f1, f2, f1
/* 8021FD50 0021B9B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8021FD54 0021B9B4  D0 23 00 70 */	stfs f1, 0x70(r3)
/* 8021FD58 0021B9B8  7C 60 00 26 */	mfcr r3
/* 8021FD5C 0021B9BC  54 63 17 FE */	rlwinm r3, r3, 2, 0x1f, 0x1f
/* 8021FD60 0021B9C0  4E 80 00 20 */	blr
/* 8021FD64 0021B9C4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8021FD68 0021B9C8  7C 08 02 A6 */	mflr r0
/* 8021FD6C 0021B9CC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8021FD70 0021B9D0  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8021FD74 0021B9D4  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8021FD78 0021B9D8  7C 7E 1B 78 */	mr r30, r3
/* 8021FD7C 0021B9DC  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8021FD80 0021B9E0  80 CD A3 D8 */	lwz r6, lbl_8063F698-_SDA_BASE_(r13)
/* 8021FD84 0021B9E4  80 A6 16 38 */	lwz r5, 0x1638(r6)
/* 8021FD88 0021B9E8  88 85 0A 87 */	lbz r4, 0xa87(r5)
/* 8021FD8C 0021B9EC  7C 04 00 D0 */	neg r0, r4
/* 8021FD90 0021B9F0  7C 00 23 78 */	or r0, r0, r4
/* 8021FD94 0021B9F4  54 1F 0F FF */	rlwinm. r31, r0, 1, 0x1f, 0x1f
/* 8021FD98 0021B9F8  41 82 00 2C */	beq lbl_8021FDC4
/* 8021FD9C 0021B9FC  38 00 00 00 */	li r0, 0
/* 8021FDA0 0021BA00  98 05 0A 87 */	stb r0, 0xa87(r5)
/* 8021FDA4 0021BA04  80 86 16 38 */	lwz r4, 0x1638(r6)
/* 8021FDA8 0021BA08  80 04 00 64 */	lwz r0, 0x64(r4)
/* 8021FDAC 0021BA0C  60 00 00 40 */	ori r0, r0, 0x40
/* 8021FDB0 0021BA10  90 04 00 64 */	stw r0, 0x64(r4)
/* 8021FDB4 0021BA14  80 86 16 38 */	lwz r4, 0x1638(r6)
/* 8021FDB8 0021BA18  80 04 00 00 */	lwz r0, 0(r4)
/* 8021FDBC 0021BA1C  60 00 00 40 */	ori r0, r0, 0x40
/* 8021FDC0 0021BA20  90 04 00 00 */	stw r0, 0(r4)
lbl_8021FDC4:
/* 8021FDC4 0021BA24  81 4D A3 D8 */	lwz r10, lbl_8063F698-_SDA_BASE_(r13)
/* 8021FDC8 0021BA28  38 C0 00 01 */	li r6, 1
/* 8021FDCC 0021BA2C  39 20 00 05 */	li r9, 5
/* 8021FDD0 0021BA30  38 A0 00 00 */	li r5, 0
/* 8021FDD4 0021BA34  81 0A 16 38 */	lwz r8, 0x1638(r10)
/* 8021FDD8 0021BA38  38 80 00 FF */	li r4, 0xff
/* 8021FDDC 0021BA3C  38 00 00 07 */	li r0, 7
/* 8021FDE0 0021BA40  38 E0 00 03 */	li r7, 3
/* 8021FDE4 0021BA44  90 C8 0A 24 */	stw r6, 0xa24(r8)
/* 8021FDE8 0021BA48  81 0A 16 38 */	lwz r8, 0x1638(r10)
/* 8021FDEC 0021BA4C  90 C8 0A 28 */	stw r6, 0xa28(r8)
/* 8021FDF0 0021BA50  81 0A 16 38 */	lwz r8, 0x1638(r10)
/* 8021FDF4 0021BA54  90 C8 0A 2C */	stw r6, 0xa2c(r8)
/* 8021FDF8 0021BA58  81 0A 16 38 */	lwz r8, 0x1638(r10)
/* 8021FDFC 0021BA5C  91 28 0A 30 */	stw r9, 0xa30(r8)
/* 8021FE00 0021BA60  81 2A 16 38 */	lwz r9, 0x1638(r10)
/* 8021FE04 0021BA64  81 09 00 64 */	lwz r8, 0x64(r9)
/* 8021FE08 0021BA68  61 08 00 01 */	ori r8, r8, 1
/* 8021FE0C 0021BA6C  91 09 00 64 */	stw r8, 0x64(r9)
/* 8021FE10 0021BA70  81 2A 16 38 */	lwz r9, 0x1638(r10)
/* 8021FE14 0021BA74  81 09 00 00 */	lwz r8, 0(r9)
/* 8021FE18 0021BA78  61 08 00 40 */	ori r8, r8, 0x40
/* 8021FE1C 0021BA7C  91 09 00 00 */	stw r8, 0(r9)
/* 8021FE20 0021BA80  81 4D A3 D8 */	lwz r10, lbl_8063F698-_SDA_BASE_(r13)
/* 8021FE24 0021BA84  81 0A 16 38 */	lwz r8, 0x1638(r10)
/* 8021FE28 0021BA88  98 C8 0A 36 */	stb r6, 0xa36(r8)
/* 8021FE2C 0021BA8C  81 0A 16 38 */	lwz r8, 0x1638(r10)
/* 8021FE30 0021BA90  98 A8 0A 37 */	stb r5, 0xa37(r8)
/* 8021FE34 0021BA94  81 0A 16 38 */	lwz r8, 0x1638(r10)
/* 8021FE38 0021BA98  98 A8 0A 38 */	stb r5, 0xa38(r8)
/* 8021FE3C 0021BA9C  81 2A 16 38 */	lwz r9, 0x1638(r10)
/* 8021FE40 0021BAA0  81 09 00 64 */	lwz r8, 0x64(r9)
/* 8021FE44 0021BAA4  61 08 00 04 */	ori r8, r8, 4
/* 8021FE48 0021BAA8  91 09 00 64 */	stw r8, 0x64(r9)
/* 8021FE4C 0021BAAC  81 2A 16 38 */	lwz r9, 0x1638(r10)
/* 8021FE50 0021BAB0  81 09 00 00 */	lwz r8, 0(r9)
/* 8021FE54 0021BAB4  61 08 00 40 */	ori r8, r8, 0x40
/* 8021FE58 0021BAB8  91 09 00 00 */	stw r8, 0(r9)
/* 8021FE5C 0021BABC  81 4D A3 D8 */	lwz r10, lbl_8063F698-_SDA_BASE_(r13)
/* 8021FE60 0021BAC0  81 0A 16 38 */	lwz r8, 0x1638(r10)
/* 8021FE64 0021BAC4  98 A8 0A 34 */	stb r5, 0xa34(r8)
/* 8021FE68 0021BAC8  81 0A 16 38 */	lwz r8, 0x1638(r10)
/* 8021FE6C 0021BACC  98 88 0A 35 */	stb r4, 0xa35(r8)
/* 8021FE70 0021BAD0  81 2A 16 38 */	lwz r9, 0x1638(r10)
/* 8021FE74 0021BAD4  81 09 00 64 */	lwz r8, 0x64(r9)
/* 8021FE78 0021BAD8  61 08 00 02 */	ori r8, r8, 2
/* 8021FE7C 0021BADC  91 09 00 64 */	stw r8, 0x64(r9)
/* 8021FE80 0021BAE0  81 2A 16 38 */	lwz r9, 0x1638(r10)
/* 8021FE84 0021BAE4  81 09 00 00 */	lwz r8, 0(r9)
/* 8021FE88 0021BAE8  61 08 00 40 */	ori r8, r8, 0x40
/* 8021FE8C 0021BAEC  91 09 00 00 */	stw r8, 0(r9)
/* 8021FE90 0021BAF0  81 2D A3 D8 */	lwz r9, lbl_8063F698-_SDA_BASE_(r13)
/* 8021FE94 0021BAF4  81 09 16 38 */	lwz r8, 0x1638(r9)
/* 8021FE98 0021BAF8  90 08 0A 44 */	stw r0, 0xa44(r8)
/* 8021FE9C 0021BAFC  81 09 16 38 */	lwz r8, 0x1638(r9)
/* 8021FEA0 0021BB00  98 A8 0A 50 */	stb r5, 0xa50(r8)
/* 8021FEA4 0021BB04  81 09 16 38 */	lwz r8, 0x1638(r9)
/* 8021FEA8 0021BB08  90 A8 0A 48 */	stw r5, 0xa48(r8)
/* 8021FEAC 0021BB0C  81 09 16 38 */	lwz r8, 0x1638(r9)
/* 8021FEB0 0021BB10  90 08 0A 4C */	stw r0, 0xa4c(r8)
/* 8021FEB4 0021BB14  81 09 16 38 */	lwz r8, 0x1638(r9)
/* 8021FEB8 0021BB18  98 A8 0A 51 */	stb r5, 0xa51(r8)
/* 8021FEBC 0021BB1C  81 09 16 38 */	lwz r8, 0x1638(r9)
/* 8021FEC0 0021BB20  98 C8 0A 52 */	stb r6, 0xa52(r8)
/* 8021FEC4 0021BB24  81 09 16 38 */	lwz r8, 0x1638(r9)
/* 8021FEC8 0021BB28  80 08 00 64 */	lwz r0, 0x64(r8)
/* 8021FECC 0021BB2C  60 00 00 10 */	ori r0, r0, 0x10
/* 8021FED0 0021BB30  90 08 00 64 */	stw r0, 0x64(r8)
/* 8021FED4 0021BB34  81 09 16 38 */	lwz r8, 0x1638(r9)
/* 8021FED8 0021BB38  80 08 00 00 */	lwz r0, 0(r8)
/* 8021FEDC 0021BB3C  60 00 00 40 */	ori r0, r0, 0x40
/* 8021FEE0 0021BB40  90 08 00 00 */	stw r0, 0(r8)
/* 8021FEE4 0021BB44  81 2D A3 D8 */	lwz r9, lbl_8063F698-_SDA_BASE_(r13)
/* 8021FEE8 0021BB48  81 09 16 38 */	lwz r8, 0x1638(r9)
/* 8021FEEC 0021BB4C  98 C8 0A 3C */	stb r6, 0xa3c(r8)
/* 8021FEF0 0021BB50  81 09 16 38 */	lwz r8, 0x1638(r9)
/* 8021FEF4 0021BB54  90 E8 0A 40 */	stw r7, 0xa40(r8)
/* 8021FEF8 0021BB58  81 09 16 38 */	lwz r8, 0x1638(r9)
/* 8021FEFC 0021BB5C  80 08 00 64 */	lwz r0, 0x64(r8)
/* 8021FF00 0021BB60  60 00 00 08 */	ori r0, r0, 8
/* 8021FF04 0021BB64  90 08 00 64 */	stw r0, 0x64(r8)
/* 8021FF08 0021BB68  81 09 16 38 */	lwz r8, 0x1638(r9)
/* 8021FF0C 0021BB6C  80 08 00 00 */	lwz r0, 0(r8)
/* 8021FF10 0021BB70  60 00 00 40 */	ori r0, r0, 0x40
/* 8021FF14 0021BB74  90 08 00 00 */	stw r0, 0(r8)
/* 8021FF18 0021BB78  81 4D A3 D8 */	lwz r10, lbl_8063F698-_SDA_BASE_(r13)
/* 8021FF1C 0021BB7C  38 00 00 02 */	li r0, 2
/* 8021FF20 0021BB80  C0 62 9B E4 */	lfs f3, lbl_806421E4-_SDA2_BASE_(r2)
/* 8021FF24 0021BB84  81 0A 16 38 */	lwz r8, 0x1638(r10)
/* 8021FF28 0021BB88  C0 02 9B E0 */	lfs f0, lbl_806421E0-_SDA2_BASE_(r2)
/* 8021FF2C 0021BB8C  90 08 01 84 */	stw r0, 0x184(r8)
/* 8021FF30 0021BB90  81 2A 16 38 */	lwz r9, 0x1638(r10)
/* 8021FF34 0021BB94  81 09 00 10 */	lwz r8, 0x10(r9)
/* 8021FF38 0021BB98  61 08 00 02 */	ori r8, r8, 2
/* 8021FF3C 0021BB9C  91 09 00 10 */	stw r8, 0x10(r9)
/* 8021FF40 0021BBA0  81 2A 16 38 */	lwz r9, 0x1638(r10)
/* 8021FF44 0021BBA4  81 09 00 00 */	lwz r8, 0(r9)
/* 8021FF48 0021BBA8  61 08 00 02 */	ori r8, r8, 2
/* 8021FF4C 0021BBAC  91 09 00 00 */	stw r8, 0(r9)
/* 8021FF50 0021BBB0  81 4D A3 D8 */	lwz r10, lbl_8063F698-_SDA_BASE_(r13)
/* 8021FF54 0021BBB4  81 0A 16 38 */	lwz r8, 0x1638(r10)
/* 8021FF58 0021BBB8  90 A8 01 88 */	stw r5, 0x188(r8)
/* 8021FF5C 0021BBBC  81 2A 16 38 */	lwz r9, 0x1638(r10)
/* 8021FF60 0021BBC0  81 09 00 10 */	lwz r8, 0x10(r9)
/* 8021FF64 0021BBC4  61 08 00 04 */	ori r8, r8, 4
/* 8021FF68 0021BBC8  91 09 00 10 */	stw r8, 0x10(r9)
/* 8021FF6C 0021BBCC  81 2A 16 38 */	lwz r9, 0x1638(r10)
/* 8021FF70 0021BBD0  81 09 00 00 */	lwz r8, 0(r9)
/* 8021FF74 0021BBD4  61 08 00 02 */	ori r8, r8, 2
/* 8021FF78 0021BBD8  91 09 00 00 */	stw r8, 0(r9)
/* 8021FF7C 0021BBDC  81 4D A3 D8 */	lwz r10, lbl_8063F698-_SDA_BASE_(r13)
/* 8021FF80 0021BBE0  81 0A 16 38 */	lwz r8, 0x1638(r10)
/* 8021FF84 0021BBE4  98 A8 01 8C */	stb r5, 0x18c(r8)
/* 8021FF88 0021BBE8  81 2A 16 38 */	lwz r9, 0x1638(r10)
/* 8021FF8C 0021BBEC  81 09 00 14 */	lwz r8, 0x14(r9)
/* 8021FF90 0021BBF0  61 08 00 01 */	ori r8, r8, 1
/* 8021FF94 0021BBF4  91 09 00 14 */	stw r8, 0x14(r9)
/* 8021FF98 0021BBF8  81 2A 16 38 */	lwz r9, 0x1638(r10)
/* 8021FF9C 0021BBFC  81 09 00 00 */	lwz r8, 0(r9)
/* 8021FFA0 0021BC00  61 08 00 04 */	ori r8, r8, 4
/* 8021FFA4 0021BC04  91 09 00 00 */	stw r8, 0(r9)
/* 8021FFA8 0021BC08  81 4D A3 D8 */	lwz r10, lbl_8063F698-_SDA_BASE_(r13)
/* 8021FFAC 0021BC0C  81 0A 16 38 */	lwz r8, 0x1638(r10)
/* 8021FFB0 0021BC10  98 C8 00 68 */	stb r6, 0x68(r8)
/* 8021FFB4 0021BC14  81 2A 16 38 */	lwz r9, 0x1638(r10)
/* 8021FFB8 0021BC18  81 09 00 04 */	lwz r8, 4(r9)
/* 8021FFBC 0021BC1C  61 08 00 01 */	ori r8, r8, 1
/* 8021FFC0 0021BC20  91 09 00 04 */	stw r8, 4(r9)
/* 8021FFC4 0021BC24  81 2A 16 38 */	lwz r9, 0x1638(r10)
/* 8021FFC8 0021BC28  81 09 00 00 */	lwz r8, 0(r9)
/* 8021FFCC 0021BC2C  61 08 00 01 */	ori r8, r8, 1
/* 8021FFD0 0021BC30  91 09 00 00 */	stw r8, 0(r9)
/* 8021FFD4 0021BC34  81 4D A3 D8 */	lwz r10, lbl_8063F698-_SDA_BASE_(r13)
/* 8021FFD8 0021BC38  81 0A 16 38 */	lwz r8, 0x1638(r10)
/* 8021FFDC 0021BC3C  98 C8 02 80 */	stb r6, 0x280(r8)
/* 8021FFE0 0021BC40  81 2A 16 38 */	lwz r9, 0x1638(r10)
/* 8021FFE4 0021BC44  81 09 00 24 */	lwz r8, 0x24(r9)
/* 8021FFE8 0021BC48  61 08 00 01 */	ori r8, r8, 1
/* 8021FFEC 0021BC4C  91 09 00 24 */	stw r8, 0x24(r9)
/* 8021FFF0 0021BC50  81 2A 16 38 */	lwz r9, 0x1638(r10)
/* 8021FFF4 0021BC54  81 09 00 00 */	lwz r8, 0(r9)
/* 8021FFF8 0021BC58  61 08 00 08 */	ori r8, r8, 8
/* 8021FFFC 0021BC5C  91 09 00 00 */	stw r8, 0(r9)
/* 80220000 0021BC60  C0 43 00 74 */	lfs f2, 0x74(r3)
/* 80220004 0021BC64  C0 23 00 70 */	lfs f1, 0x70(r3)
/* 80220008 0021BC68  EC 43 10 24 */	fdivs f2, f3, f2
/* 8022000C 0021BC6C  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80220010 0021BC70  EC 00 08 2A */	fadds f0, f0, f1
/* 80220014 0021BC74  F0 01 A0 08 */	psq_st f0, 8(r1), 1, qr2
/* 80220018 0021BC78  89 01 00 08 */	lbz r8, 8(r1)
/* 8022001C 0021BC7C  81 2D A3 D8 */	lwz r9, lbl_8063F698-_SDA_BASE_(r13)
/* 80220020 0021BC80  99 01 00 0C */	stb r8, 0xc(r1)
/* 80220024 0021BC84  80 69 16 38 */	lwz r3, 0x1638(r9)
/* 80220028 0021BC88  99 01 00 0D */	stb r8, 0xd(r1)
/* 8022002C 0021BC8C  99 01 00 0E */	stb r8, 0xe(r1)
/* 80220030 0021BC90  98 81 00 0F */	stb r4, 0xf(r1)
/* 80220034 0021BC94  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80220038 0021BC98  90 83 08 DC */	stw r4, 0x8dc(r3)
/* 8022003C 0021BC9C  80 89 16 38 */	lwz r4, 0x1638(r9)
/* 80220040 0021BCA0  80 64 00 50 */	lwz r3, 0x50(r4)
/* 80220044 0021BCA4  60 63 00 04 */	ori r3, r3, 4
/* 80220048 0021BCA8  90 64 00 50 */	stw r3, 0x50(r4)
/* 8022004C 0021BCAC  80 89 16 38 */	lwz r4, 0x1638(r9)
/* 80220050 0021BCB0  80 64 00 00 */	lwz r3, 0(r4)
/* 80220054 0021BCB4  60 63 00 10 */	ori r3, r3, 0x10
/* 80220058 0021BCB8  90 64 00 00 */	stw r3, 0(r4)
/* 8022005C 0021BCBC  81 4D A3 D8 */	lwz r10, lbl_8063F698-_SDA_BASE_(r13)
/* 80220060 0021BCC0  80 6A 16 38 */	lwz r3, 0x1638(r10)
/* 80220064 0021BCC4  90 A3 09 E4 */	stw r5, 0x9e4(r3)
/* 80220068 0021BCC8  90 C3 09 E8 */	stw r6, 0x9e8(r3)
/* 8022006C 0021BCCC  38 80 00 00 */	li r4, 0
/* 80220070 0021BCD0  38 A0 00 01 */	li r5, 1
/* 80220074 0021BCD4  38 C0 00 04 */	li r6, 4
/* 80220078 0021BCD8  90 03 09 EC */	stw r0, 0x9ec(r3)
/* 8022007C 0021BCDC  39 00 00 00 */	li r8, 0
/* 80220080 0021BCE0  39 20 00 00 */	li r9, 0
/* 80220084 0021BCE4  90 E3 09 F0 */	stw r7, 0x9f0(r3)
/* 80220088 0021BCE8  38 E0 00 00 */	li r7, 0
/* 8022008C 0021BCEC  80 6A 16 38 */	lwz r3, 0x1638(r10)
/* 80220090 0021BCF0  80 03 00 60 */	lwz r0, 0x60(r3)
/* 80220094 0021BCF4  60 00 00 01 */	ori r0, r0, 1
/* 80220098 0021BCF8  90 03 00 60 */	stw r0, 0x60(r3)
/* 8022009C 0021BCFC  80 6A 16 38 */	lwz r3, 0x1638(r10)
/* 802200A0 0021BD00  80 03 00 00 */	lwz r0, 0(r3)
/* 802200A4 0021BD04  60 00 00 20 */	ori r0, r0, 0x20
/* 802200A8 0021BD08  90 03 00 00 */	stw r0, 0(r3)
/* 802200AC 0021BD0C  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 802200B0 0021BD10  48 01 43 C5 */	bl func_80234474
/* 802200B4 0021BD14  38 60 00 04 */	li r3, 4
/* 802200B8 0021BD18  48 01 CE 65 */	bl func_8023CF1C
/* 802200BC 0021BD1C  80 8D A3 D8 */	lwz r4, lbl_8063F698-_SDA_BASE_(r13)
/* 802200C0 0021BD20  90 64 17 3C */	stw r3, 0x173c(r4)
/* 802200C4 0021BD24  80 AD A3 D8 */	lwz r5, lbl_8063F698-_SDA_BASE_(r13)
/* 802200C8 0021BD28  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 802200CC 0021BD2C  80 65 16 38 */	lwz r3, 0x1638(r5)
/* 802200D0 0021BD30  80 03 15 3C */	lwz r0, 0x153c(r3)
/* 802200D4 0021BD34  7C 00 20 40 */	cmplw r0, r4
/* 802200D8 0021BD38  40 82 00 14 */	bne lbl_802200EC
/* 802200DC 0021BD3C  88 04 00 07 */	lbz r0, 7(r4)
/* 802200E0 0021BD40  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 802200E4 0021BD44  2C 00 00 01 */	cmpwi r0, 1
/* 802200E8 0021BD48  40 82 00 1C */	bne lbl_80220104
lbl_802200EC:
/* 802200EC 0021BD4C  80 65 16 38 */	lwz r3, 0x1638(r5)
/* 802200F0 0021BD50  90 83 15 3C */	stw r4, 0x153c(r3)
/* 802200F4 0021BD54  80 65 16 38 */	lwz r3, 0x1638(r5)
/* 802200F8 0021BD58  80 03 15 38 */	lwz r0, 0x1538(r3)
/* 802200FC 0021BD5C  60 00 00 01 */	ori r0, r0, 1
/* 80220100 0021BD60  90 03 15 38 */	stw r0, 0x1538(r3)
lbl_80220104:
/* 80220104 0021BD64  81 6D A3 D8 */	lwz r11, lbl_8063F698-_SDA_BASE_(r13)
/* 80220108 0021BD68  38 00 00 0E */	li r0, 0xe
/* 8022010C 0021BD6C  39 20 00 1E */	li r9, 0x1e
/* 80220110 0021BD70  39 00 00 00 */	li r8, 0
/* 80220114 0021BD74  80 6B 16 38 */	lwz r3, 0x1638(r11)
/* 80220118 0021BD78  38 A0 00 FF */	li r5, 0xff
/* 8022011C 0021BD7C  38 E0 00 01 */	li r7, 1
/* 80220120 0021BD80  38 80 00 0F */	li r4, 0xf
/* 80220124 0021BD84  90 03 08 E4 */	stw r0, 0x8e4(r3)
/* 80220128 0021BD88  38 60 00 08 */	li r3, 8
/* 8022012C 0021BD8C  81 4B 16 38 */	lwz r10, 0x1638(r11)
/* 80220130 0021BD90  80 CA 00 54 */	lwz r6, 0x54(r10)
/* 80220134 0021BD94  60 C6 00 01 */	ori r6, r6, 1
/* 80220138 0021BD98  90 CA 00 54 */	stw r6, 0x54(r10)
/* 8022013C 0021BD9C  81 4B 16 38 */	lwz r10, 0x1638(r11)
/* 80220140 0021BDA0  80 CA 00 00 */	lwz r6, 0(r10)
/* 80220144 0021BDA4  60 C6 00 10 */	ori r6, r6, 0x10
/* 80220148 0021BDA8  90 CA 00 00 */	stw r6, 0(r10)
/* 8022014C 0021BDAC  80 CB 16 38 */	lwz r6, 0x1638(r11)
/* 80220150 0021BDB0  91 26 09 24 */	stw r9, 0x924(r6)
/* 80220154 0021BDB4  81 2B 16 38 */	lwz r9, 0x1638(r11)
/* 80220158 0021BDB8  80 C9 00 58 */	lwz r6, 0x58(r9)
/* 8022015C 0021BDBC  60 C6 00 01 */	ori r6, r6, 1
/* 80220160 0021BDC0  90 C9 00 58 */	stw r6, 0x58(r9)
/* 80220164 0021BDC4  81 2B 16 38 */	lwz r9, 0x1638(r11)
/* 80220168 0021BDC8  80 C9 00 00 */	lwz r6, 0(r9)
/* 8022016C 0021BDCC  60 C6 00 10 */	ori r6, r6, 0x10
/* 80220170 0021BDD0  90 C9 00 00 */	stw r6, 0(r9)
/* 80220174 0021BDD4  81 2D A3 D8 */	lwz r9, lbl_8063F698-_SDA_BASE_(r13)
/* 80220178 0021BDD8  80 C9 16 38 */	lwz r6, 0x1638(r9)
/* 8022017C 0021BDDC  91 06 02 84 */	stw r8, 0x284(r6)
/* 80220180 0021BDE0  91 06 02 88 */	stw r8, 0x288(r6)
/* 80220184 0021BDE4  90 A6 02 8C */	stw r5, 0x28c(r6)
/* 80220188 0021BDE8  80 C9 16 38 */	lwz r6, 0x1638(r9)
/* 8022018C 0021BDEC  80 A6 00 28 */	lwz r5, 0x28(r6)
/* 80220190 0021BDF0  60 A5 00 01 */	ori r5, r5, 1
/* 80220194 0021BDF4  90 A6 00 28 */	stw r5, 0x28(r6)
/* 80220198 0021BDF8  80 C9 16 38 */	lwz r6, 0x1638(r9)
/* 8022019C 0021BDFC  80 A6 00 00 */	lwz r5, 0(r6)
/* 802201A0 0021BE00  60 A5 00 08 */	ori r5, r5, 8
/* 802201A4 0021BE04  90 A6 00 00 */	stw r5, 0(r6)
/* 802201A8 0021BE08  81 2D A3 D8 */	lwz r9, lbl_8063F698-_SDA_BASE_(r13)
/* 802201AC 0021BE0C  80 A9 16 38 */	lwz r5, 0x1638(r9)
/* 802201B0 0021BE10  91 05 05 44 */	stw r8, 0x544(r5)
/* 802201B4 0021BE14  91 05 05 48 */	stw r8, 0x548(r5)
/* 802201B8 0021BE18  91 05 05 4C */	stw r8, 0x54c(r5)
/* 802201BC 0021BE1C  98 E5 05 50 */	stb r7, 0x550(r5)
/* 802201C0 0021BE20  91 05 05 54 */	stw r8, 0x554(r5)
/* 802201C4 0021BE24  80 C9 16 38 */	lwz r6, 0x1638(r9)
/* 802201C8 0021BE28  80 A6 00 34 */	lwz r5, 0x34(r6)
/* 802201CC 0021BE2C  60 A5 00 01 */	ori r5, r5, 1
/* 802201D0 0021BE30  90 A6 00 34 */	stw r5, 0x34(r6)
/* 802201D4 0021BE34  80 C9 16 38 */	lwz r6, 0x1638(r9)
/* 802201D8 0021BE38  80 A6 00 00 */	lwz r5, 0(r6)
/* 802201DC 0021BE3C  60 A5 00 08 */	ori r5, r5, 8
/* 802201E0 0021BE40  90 A6 00 00 */	stw r5, 0(r6)
/* 802201E4 0021BE44  81 2D A3 D8 */	lwz r9, lbl_8063F698-_SDA_BASE_(r13)
/* 802201E8 0021BE48  80 A9 16 38 */	lwz r5, 0x1638(r9)
/* 802201EC 0021BE4C  91 05 06 84 */	stw r8, 0x684(r5)
/* 802201F0 0021BE50  91 05 06 88 */	stw r8, 0x688(r5)
/* 802201F4 0021BE54  91 05 06 8C */	stw r8, 0x68c(r5)
/* 802201F8 0021BE58  98 E5 06 90 */	stb r7, 0x690(r5)
/* 802201FC 0021BE5C  91 05 06 94 */	stw r8, 0x694(r5)
/* 80220200 0021BE60  80 C9 16 38 */	lwz r6, 0x1638(r9)
/* 80220204 0021BE64  80 A6 00 38 */	lwz r5, 0x38(r6)
/* 80220208 0021BE68  60 A5 00 01 */	ori r5, r5, 1
/* 8022020C 0021BE6C  90 A6 00 38 */	stw r5, 0x38(r6)
/* 80220210 0021BE70  80 C9 16 38 */	lwz r6, 0x1638(r9)
/* 80220214 0021BE74  80 A6 00 00 */	lwz r5, 0(r6)
/* 80220218 0021BE78  60 A5 00 08 */	ori r5, r5, 8
/* 8022021C 0021BE7C  90 A6 00 00 */	stw r5, 0(r6)
/* 80220220 0021BE80  80 CD A3 D8 */	lwz r6, lbl_8063F698-_SDA_BASE_(r13)
/* 80220224 0021BE84  80 A6 16 38 */	lwz r5, 0x1638(r6)
/* 80220228 0021BE88  90 85 03 44 */	stw r4, 0x344(r5)
/* 8022022C 0021BE8C  90 65 03 48 */	stw r3, 0x348(r5)
/* 80220230 0021BE90  90 05 03 4C */	stw r0, 0x34c(r5)
/* 80220234 0021BE94  90 85 03 50 */	stw r4, 0x350(r5)
/* 80220238 0021BE98  80 66 16 38 */	lwz r3, 0x1638(r6)
/* 8022023C 0021BE9C  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80220240 0021BEA0  60 00 00 01 */	ori r0, r0, 1
/* 80220244 0021BEA4  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80220248 0021BEA8  80 86 16 38 */	lwz r4, 0x1638(r6)
/* 8022024C 0021BEAC  38 00 00 07 */	li r0, 7
/* 80220250 0021BEB0  C0 02 9B DC */	lfs f0, lbl_806421DC-_SDA2_BASE_(r2)
/* 80220254 0021BEB4  80 64 00 00 */	lwz r3, 0(r4)
/* 80220258 0021BEB8  60 63 00 08 */	ori r3, r3, 8
/* 8022025C 0021BEBC  90 64 00 00 */	stw r3, 0(r4)
/* 80220260 0021BEC0  80 8D A3 D8 */	lwz r4, lbl_8063F698-_SDA_BASE_(r13)
/* 80220264 0021BEC4  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 80220268 0021BEC8  90 03 04 44 */	stw r0, 0x444(r3)
/* 8022026C 0021BECC  90 03 04 48 */	stw r0, 0x448(r3)
/* 80220270 0021BED0  90 03 04 4C */	stw r0, 0x44c(r3)
/* 80220274 0021BED4  90 03 04 50 */	stw r0, 0x450(r3)
/* 80220278 0021BED8  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 8022027C 0021BEDC  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80220280 0021BEE0  60 00 00 01 */	ori r0, r0, 1
/* 80220284 0021BEE4  90 03 00 30 */	stw r0, 0x30(r3)
/* 80220288 0021BEE8  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 8022028C 0021BEEC  80 03 00 00 */	lwz r0, 0(r3)
/* 80220290 0021BEF0  60 00 00 08 */	ori r0, r0, 8
/* 80220294 0021BEF4  90 03 00 00 */	stw r0, 0(r3)
/* 80220298 0021BEF8  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8022029C 0021BEFC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 802202A0 0021BF00  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 802202A4 0021BF04  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 802202A8 0021BF08  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 802202AC 0021BF0C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 802202B0 0021BF10  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 802202B4 0021BF14  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 802202B8 0021BF18  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 802202BC 0021BF1C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 802202C0 0021BF20  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 802202C4 0021BF24  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 802202C8 0021BF28  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 802202CC 0021BF2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802202D0 0021BF30  40 80 00 10 */	bge lbl_802202E0
/* 802202D4 0021BF34  C0 02 9B E8 */	lfs f0, lbl_806421E8-_SDA2_BASE_(r2)
/* 802202D8 0021BF38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802202DC 0021BF3C  41 81 00 2C */	bgt lbl_80220308
lbl_802202E0:
/* 802202E0 0021BF40  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 802202E4 0021BF44  38 61 00 10 */	addi r3, r1, 0x10
/* 802202E8 0021BF48  38 9E 00 20 */	addi r4, r30, 0x20
/* 802202EC 0021BF4C  48 05 CE 39 */	bl C_QUATRotAxisRad
/* 802202F0 0021BF50  38 61 00 2C */	addi r3, r1, 0x2c
/* 802202F4 0021BF54  38 81 00 10 */	addi r4, r1, 0x10
/* 802202F8 0021BF58  48 00 37 15 */	bl func_80223A0C
/* 802202FC 0021BF5C  38 61 00 20 */	addi r3, r1, 0x20
/* 80220300 0021BF60  38 81 00 10 */	addi r4, r1, 0x10
/* 80220304 0021BF64  48 00 37 09 */	bl func_80223A0C
lbl_80220308:
/* 80220308 0021BF68  38 61 00 2C */	addi r3, r1, 0x2c
/* 8022030C 0021BF6C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80220310 0021BF70  7C 64 1B 78 */	mr r4, r3
/* 80220314 0021BF74  48 05 C9 F9 */	bl PSVECScale
/* 80220318 0021BF78  38 61 00 20 */	addi r3, r1, 0x20
/* 8022031C 0021BF7C  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80220320 0021BF80  7C 64 1B 78 */	mr r4, r3
/* 80220324 0021BF84  48 05 C9 E9 */	bl PSVECScale
/* 80220328 0021BF88  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 8022032C 0021BF8C  38 00 00 80 */	li r0, 0x80
/* 80220330 0021BF90  38 80 00 04 */	li r4, 4
/* 80220334 0021BF94  90 03 17 38 */	stw r0, 0x1738(r3)
/* 80220338 0021BF98  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 8022033C 0021BF9C  48 01 31 F1 */	bl begin_drawing
/* 80220340 0021BFA0  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80220344 0021BFA4  38 61 00 38 */	addi r3, r1, 0x38
/* 80220348 0021BFA8  7C 65 1B 78 */	mr r5, r3
/* 8022034C 0021BFAC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80220350 0021BFB0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80220354 0021BFB4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80220358 0021BFB8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8022035C 0021BFBC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80220360 0021BFC0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80220364 0021BFC4  48 05 C9 85 */	bl PSVECSubtract
/* 80220368 0021BFC8  38 61 00 38 */	addi r3, r1, 0x38
/* 8022036C 0021BFCC  38 81 00 20 */	addi r4, r1, 0x20
/* 80220370 0021BFD0  7C 65 1B 78 */	mr r5, r3
/* 80220374 0021BFD4  48 05 C9 51 */	bl PSVECAdd
/* 80220378 0021BFD8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8022037C 0021BFDC  38 61 00 38 */	addi r3, r1, 0x38
/* 80220380 0021BFE0  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80220384 0021BFE4  3F A0 CC 01 */	lis r29, 0xCC008000@ha
/* 80220388 0021BFE8  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8022038C 0021BFEC  7C 65 1B 78 */	mr r5, r3
/* 80220390 0021BFF0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80220394 0021BFF4  D0 5D 80 00 */	stfs f2, 0xCC008000@l(r29)
/* 80220398 0021BFF8  D0 3D 80 00 */	stfs f1, -0x8000(r29)
/* 8022039C 0021BFFC  D0 1D 80 00 */	stfs f0, -0x8000(r29)
/* 802203A0 0021C000  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 802203A4 0021C004  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 802203A8 0021C008  D0 3D 80 00 */	stfs f1, -0x8000(r29)
/* 802203AC 0021C00C  D0 1D 80 00 */	stfs f0, -0x8000(r29)
/* 802203B0 0021C010  48 05 C9 15 */	bl PSVECAdd
/* 802203B4 0021C014  38 61 00 38 */	addi r3, r1, 0x38
/* 802203B8 0021C018  38 81 00 2C */	addi r4, r1, 0x2c
/* 802203BC 0021C01C  7C 65 1B 78 */	mr r5, r3
/* 802203C0 0021C020  48 05 C9 05 */	bl PSVECAdd
/* 802203C4 0021C024  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 802203C8 0021C028  38 61 00 38 */	addi r3, r1, 0x38
/* 802203CC 0021C02C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 802203D0 0021C030  7C 65 1B 78 */	mr r5, r3
/* 802203D4 0021C034  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 802203D8 0021C038  38 81 00 20 */	addi r4, r1, 0x20
/* 802203DC 0021C03C  D0 5D 80 00 */	stfs f2, -0x8000(r29)
/* 802203E0 0021C040  D0 3D 80 00 */	stfs f1, -0x8000(r29)
/* 802203E4 0021C044  D0 1D 80 00 */	stfs f0, -0x8000(r29)
/* 802203E8 0021C048  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 802203EC 0021C04C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 802203F0 0021C050  D0 3D 80 00 */	stfs f1, -0x8000(r29)
/* 802203F4 0021C054  D0 1D 80 00 */	stfs f0, -0x8000(r29)
/* 802203F8 0021C058  48 05 C8 F1 */	bl PSVECSubtract
/* 802203FC 0021C05C  38 61 00 38 */	addi r3, r1, 0x38
/* 80220400 0021C060  38 81 00 20 */	addi r4, r1, 0x20
/* 80220404 0021C064  7C 65 1B 78 */	mr r5, r3
/* 80220408 0021C068  48 05 C8 E1 */	bl PSVECSubtract
/* 8022040C 0021C06C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80220410 0021C070  38 61 00 38 */	addi r3, r1, 0x38
/* 80220414 0021C074  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80220418 0021C078  7C 65 1B 78 */	mr r5, r3
/* 8022041C 0021C07C  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80220420 0021C080  38 81 00 2C */	addi r4, r1, 0x2c
/* 80220424 0021C084  D0 5D 80 00 */	stfs f2, -0x8000(r29)
/* 80220428 0021C088  D0 3D 80 00 */	stfs f1, -0x8000(r29)
/* 8022042C 0021C08C  D0 1D 80 00 */	stfs f0, -0x8000(r29)
/* 80220430 0021C090  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80220434 0021C094  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80220438 0021C098  D0 3D 80 00 */	stfs f1, -0x8000(r29)
/* 8022043C 0021C09C  D0 1D 80 00 */	stfs f0, -0x8000(r29)
/* 80220440 0021C0A0  48 05 C8 A9 */	bl PSVECSubtract
/* 80220444 0021C0A4  38 61 00 38 */	addi r3, r1, 0x38
/* 80220448 0021C0A8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8022044C 0021C0AC  7C 65 1B 78 */	mr r5, r3
/* 80220450 0021C0B0  48 05 C8 99 */	bl PSVECSubtract
/* 80220454 0021C0B4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80220458 0021C0B8  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8022045C 0021C0BC  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80220460 0021C0C0  D0 5D 80 00 */	stfs f2, -0x8000(r29)
/* 80220464 0021C0C4  D0 3D 80 00 */	stfs f1, -0x8000(r29)
/* 80220468 0021C0C8  D0 1D 80 00 */	stfs f0, -0x8000(r29)
/* 8022046C 0021C0CC  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80220470 0021C0D0  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80220474 0021C0D4  D0 3D 80 00 */	stfs f1, -0x8000(r29)
/* 80220478 0021C0D8  D0 1D 80 00 */	stfs f0, -0x8000(r29)
/* 8022047C 0021C0DC  80 6D A3 D8 */	lwz r3, lbl_8063F698-_SDA_BASE_(r13)
/* 80220480 0021C0E0  48 01 31 01 */	bl end_drawing
/* 80220484 0021C0E4  2C 1F 00 00 */	cmpwi r31, 0
/* 80220488 0021C0E8  41 82 00 60 */	beq lbl_802204E8
/* 8022048C 0021C0EC  80 8D A3 D8 */	lwz r4, lbl_8063F698-_SDA_BASE_(r13)
/* 80220490 0021C0F0  38 00 00 01 */	li r0, 1
/* 80220494 0021C0F4  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 80220498 0021C0F8  98 03 0A 87 */	stb r0, 0xa87(r3)
/* 8022049C 0021C0FC  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 802204A0 0021C100  80 03 00 64 */	lwz r0, 0x64(r3)
/* 802204A4 0021C104  60 00 00 40 */	ori r0, r0, 0x40
/* 802204A8 0021C108  90 03 00 64 */	stw r0, 0x64(r3)
/* 802204AC 0021C10C  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 802204B0 0021C110  80 03 00 64 */	lwz r0, 0x64(r3)
/* 802204B4 0021C114  60 00 02 00 */	ori r0, r0, 0x200
/* 802204B8 0021C118  90 03 00 64 */	stw r0, 0x64(r3)
/* 802204BC 0021C11C  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 802204C0 0021C120  88 03 0A 86 */	lbz r0, 0xa86(r3)
/* 802204C4 0021C124  2C 00 00 00 */	cmpwi r0, 0
/* 802204C8 0021C128  41 82 00 10 */	beq lbl_802204D8
/* 802204CC 0021C12C  80 03 00 64 */	lwz r0, 0x64(r3)
/* 802204D0 0021C130  60 00 01 00 */	ori r0, r0, 0x100
/* 802204D4 0021C134  90 03 00 64 */	stw r0, 0x64(r3)
lbl_802204D8:
/* 802204D8 0021C138  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 802204DC 0021C13C  80 03 00 00 */	lwz r0, 0(r3)
/* 802204E0 0021C140  60 00 00 40 */	ori r0, r0, 0x40
/* 802204E4 0021C144  90 03 00 00 */	stw r0, 0(r3)
lbl_802204E8:
/* 802204E8 0021C148  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802204EC 0021C14C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 802204F0 0021C150  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 802204F4 0021C154  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 802204F8 0021C158  7C 08 03 A6 */	mtlr r0
/* 802204FC 0021C15C  38 21 00 60 */	addi r1, r1, 0x60
/* 80220500 0021C160  4E 80 00 20 */	blr

.global func_80220504
func_80220504:
/* 80220504 0021C164  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80220508 0021C168  7C 08 02 A6 */	mflr r0
/* 8022050C 0021C16C  C0 44 00 00 */	lfs f2, 0(r4)
/* 80220510 0021C170  3C A0 80 49 */	lis r5, lbl_80493620@ha
/* 80220514 0021C174  90 01 00 44 */	stw r0, 0x44(r1)
/* 80220518 0021C178  C0 24 00 04 */	lfs f1, 4(r4)
/* 8022051C 0021C17C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80220520 0021C180  7C 7F 1B 78 */	mr r31, r3
/* 80220524 0021C184  C0 04 00 08 */	lfs f0, 8(r4)
/* 80220528 0021C188  38 85 36 20 */	addi r4, r5, lbl_80493620@l
/* 8022052C 0021C18C  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 80220530 0021C190  38 A1 00 20 */	addi r5, r1, 0x20
/* 80220534 0021C194  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 80220538 0021C198  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8022053C 0021C19C  38 63 00 20 */	addi r3, r3, 0x20
/* 80220540 0021C1A0  48 05 C8 A9 */	bl PSVECCrossProduct
/* 80220544 0021C1A4  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 80220548 0021C1A8  C0 22 9B DC */	lfs f1, lbl_806421DC-_SDA2_BASE_(r2)
/* 8022054C 0021C1AC  D0 9F 00 2C */	stfs f4, 0x2c(r31)
/* 80220550 0021C1B0  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 80220554 0021C1B4  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 80220558 0021C1B8  D0 7F 00 30 */	stfs f3, 0x30(r31)
/* 8022055C 0021C1BC  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80220560 0021C1C0  D0 5F 00 34 */	stfs f2, 0x34(r31)
/* 80220564 0021C1C4  40 80 00 30 */	bge lbl_80220594
/* 80220568 0021C1C8  C0 02 9B E8 */	lfs f0, lbl_806421E8-_SDA2_BASE_(r2)
/* 8022056C 0021C1CC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80220570 0021C1D0  40 81 00 24 */	ble lbl_80220594
/* 80220574 0021C1D4  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80220578 0021C1D8  40 80 00 1C */	bge lbl_80220594
/* 8022057C 0021C1DC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80220580 0021C1E0  40 81 00 14 */	ble lbl_80220594
/* 80220584 0021C1E4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80220588 0021C1E8  40 80 00 0C */	bge lbl_80220594
/* 8022058C 0021C1EC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80220590 0021C1F0  41 81 00 0C */	bgt lbl_8022059C
lbl_80220594:
/* 80220594 0021C1F4  38 00 00 00 */	li r0, 0
/* 80220598 0021C1F8  48 00 00 08 */	b lbl_802205A0
lbl_8022059C:
/* 8022059C 0021C1FC  38 00 00 01 */	li r0, 1
lbl_802205A0:
/* 802205A0 0021C200  2C 00 00 00 */	cmpwi r0, 0
/* 802205A4 0021C204  41 82 00 30 */	beq lbl_802205D4
/* 802205A8 0021C208  3C 80 80 49 */	lis r4, lbl_80493620@ha
/* 802205AC 0021C20C  38 7F 00 20 */	addi r3, r31, 0x20
/* 802205B0 0021C210  38 84 36 20 */	addi r4, r4, lbl_80493620@l
/* 802205B4 0021C214  38 A1 00 14 */	addi r5, r1, 0x14
/* 802205B8 0021C218  48 05 C8 31 */	bl PSVECCrossProduct
/* 802205BC 0021C21C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802205C0 0021C220  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 802205C4 0021C224  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802205C8 0021C228  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 802205CC 0021C22C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802205D0 0021C230  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_802205D4:
/* 802205D4 0021C234  38 7F 00 2C */	addi r3, r31, 0x2c
/* 802205D8 0021C238  7C 64 1B 78 */	mr r4, r3
/* 802205DC 0021C23C  48 05 C7 4D */	bl PSVECNormalize
/* 802205E0 0021C240  38 7F 00 20 */	addi r3, r31, 0x20
/* 802205E4 0021C244  38 9F 00 2C */	addi r4, r31, 0x2c
/* 802205E8 0021C248  38 A1 00 08 */	addi r5, r1, 8
/* 802205EC 0021C24C  48 05 C7 FD */	bl PSVECCrossProduct
/* 802205F0 0021C250  C0 01 00 08 */	lfs f0, 8(r1)
/* 802205F4 0021C254  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 802205F8 0021C258  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802205FC 0021C25C  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80220600 0021C260  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80220604 0021C264  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80220608 0021C268  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8022060C 0021C26C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80220610 0021C270  7C 08 03 A6 */	mtlr r0
/* 80220614 0021C274  38 21 00 40 */	addi r1, r1, 0x40
/* 80220618 0021C278  4E 80 00 20 */	blr

.global func_8022061C
func_8022061C:
/* 8022061C 0021C27C  38 A0 00 01 */	li r5, 1
/* 80220620 0021C280  38 6D A2 A8 */	addi r3, r13, lbl_8063F568-_SDA_BASE_
/* 80220624 0021C284  38 80 00 04 */	li r4, 4
/* 80220628 0021C288  38 00 00 00 */	li r0, 0
/* 8022062C 0021C28C  98 AD A2 A8 */	stb r5, lbl_8063F568-_SDA_BASE_(r13)
/* 80220630 0021C290  B0 83 00 02 */	sth r4, 2(r3)
/* 80220634 0021C294  98 03 00 04 */	stb r0, 4(r3)
/* 80220638 0021C298  4E 80 00 20 */	blr

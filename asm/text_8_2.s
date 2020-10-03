.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_80285BFC
func_80285BFC:
/* 80285BFC 0028185C  ED 61 20 2A */	fadds f11, f1, f4
/* 80285C00 00281860  C1 82 A1 FC */	lfs f12, lbl_806427FC-_SDA2_BASE_(r2)
/* 80285C04 00281864  ED 42 28 2A */	fadds f10, f2, f5
/* 80285C08 00281868  C0 01 00 08 */	lfs f0, 8(r1)
/* 80285C0C 0028186C  ED 23 30 2A */	fadds f9, f3, f6
/* 80285C10 00281870  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80285C14 00281874  ED 67 58 2A */	fadds f11, f7, f11
/* 80285C18 00281878  2C 03 00 00 */	cmpwi r3, 0
/* 80285C1C 0028187C  ED 48 50 2A */	fadds f10, f8, f10
/* 80285C20 00281880  ED 20 48 2A */	fadds f9, f0, f9
/* 80285C24 00281884  ED 6C 02 F2 */	fmuls f11, f12, f11
/* 80285C28 00281888  ED 4C 02 B2 */	fmuls f10, f12, f10
/* 80285C2C 0028188C  ED 2C 02 72 */	fmuls f9, f12, f9
/* 80285C30 00281890  D1 65 80 00 */	stfs f11, 0xCC008000@l(r5)
/* 80285C34 00281894  D1 45 80 00 */	stfs f10, -0x8000(r5)
/* 80285C38 00281898  D1 25 80 00 */	stfs f9, -0x8000(r5)
/* 80285C3C 0028189C  D0 25 80 00 */	stfs f1, -0x8000(r5)
/* 80285C40 002818A0  D0 45 80 00 */	stfs f2, -0x8000(r5)
/* 80285C44 002818A4  D0 65 80 00 */	stfs f3, -0x8000(r5)
/* 80285C48 002818A8  41 82 00 1C */	beq lbl_80285C64
/* 80285C4C 002818AC  D0 85 80 00 */	stfs f4, -0x8000(r5)
/* 80285C50 002818B0  D0 A5 80 00 */	stfs f5, -0x8000(r5)
/* 80285C54 002818B4  D0 C5 80 00 */	stfs f6, -0x8000(r5)
/* 80285C58 002818B8  D0 E5 80 00 */	stfs f7, -0x8000(r5)
/* 80285C5C 002818BC  D1 05 80 00 */	stfs f8, -0x8000(r5)
/* 80285C60 002818C0  D0 05 80 00 */	stfs f0, -0x8000(r5)
lbl_80285C64:
/* 80285C64 002818C4  2C 04 00 00 */	cmpwi r4, 0
/* 80285C68 002818C8  41 82 00 14 */	beq lbl_80285C7C
/* 80285C6C 002818CC  38 00 00 01 */	li r0, 1
/* 80285C70 002818D0  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80285C74 002818D4  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 80285C78 002818D8  98 05 80 00 */	stb r0, -0x8000(r5)
lbl_80285C7C:
/* 80285C7C 002818DC  ED 61 20 28 */	fsubs f11, f1, f4
/* 80285C80 002818E0  C1 82 A1 FC */	lfs f12, lbl_806427FC-_SDA2_BASE_(r2)
/* 80285C84 002818E4  ED 42 28 28 */	fsubs f10, f2, f5
/* 80285C88 002818E8  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80285C8C 002818EC  ED 23 30 28 */	fsubs f9, f3, f6
/* 80285C90 002818F0  2C 03 00 00 */	cmpwi r3, 0
/* 80285C94 002818F4  ED 67 58 2A */	fadds f11, f7, f11
/* 80285C98 002818F8  ED 48 50 2A */	fadds f10, f8, f10
/* 80285C9C 002818FC  ED 20 48 2A */	fadds f9, f0, f9
/* 80285CA0 00281900  ED 6C 02 F2 */	fmuls f11, f12, f11
/* 80285CA4 00281904  ED 4C 02 B2 */	fmuls f10, f12, f10
/* 80285CA8 00281908  ED 2C 02 72 */	fmuls f9, f12, f9
/* 80285CAC 0028190C  D1 65 80 00 */	stfs f11, 0xCC008000@l(r5)
/* 80285CB0 00281910  D1 45 80 00 */	stfs f10, -0x8000(r5)
/* 80285CB4 00281914  D1 25 80 00 */	stfs f9, -0x8000(r5)
/* 80285CB8 00281918  D0 25 80 00 */	stfs f1, -0x8000(r5)
/* 80285CBC 0028191C  D0 45 80 00 */	stfs f2, -0x8000(r5)
/* 80285CC0 00281920  D0 65 80 00 */	stfs f3, -0x8000(r5)
/* 80285CC4 00281924  41 82 00 1C */	beq lbl_80285CE0
/* 80285CC8 00281928  D0 85 80 00 */	stfs f4, -0x8000(r5)
/* 80285CCC 0028192C  D0 A5 80 00 */	stfs f5, -0x8000(r5)
/* 80285CD0 00281930  D0 C5 80 00 */	stfs f6, -0x8000(r5)
/* 80285CD4 00281934  D0 E5 80 00 */	stfs f7, -0x8000(r5)
/* 80285CD8 00281938  D1 05 80 00 */	stfs f8, -0x8000(r5)
/* 80285CDC 0028193C  D0 05 80 00 */	stfs f0, -0x8000(r5)
lbl_80285CE0:
/* 80285CE0 00281940  2C 04 00 00 */	cmpwi r4, 0
/* 80285CE4 00281944  41 82 00 18 */	beq lbl_80285CFC
/* 80285CE8 00281948  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80285CEC 0028194C  38 00 00 00 */	li r0, 0
/* 80285CF0 00281950  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 80285CF4 00281954  38 00 00 01 */	li r0, 1
/* 80285CF8 00281958  98 05 80 00 */	stb r0, -0x8000(r5)
lbl_80285CFC:
/* 80285CFC 0028195C  ED 61 20 28 */	fsubs f11, f1, f4
/* 80285D00 00281960  C1 82 A1 FC */	lfs f12, lbl_806427FC-_SDA2_BASE_(r2)
/* 80285D04 00281964  ED 42 28 28 */	fsubs f10, f2, f5
/* 80285D08 00281968  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80285D0C 0028196C  ED 23 30 28 */	fsubs f9, f3, f6
/* 80285D10 00281970  2C 03 00 00 */	cmpwi r3, 0
/* 80285D14 00281974  ED 6B 38 28 */	fsubs f11, f11, f7
/* 80285D18 00281978  ED 4A 40 28 */	fsubs f10, f10, f8
/* 80285D1C 0028197C  ED 29 00 28 */	fsubs f9, f9, f0
/* 80285D20 00281980  ED 6C 02 F2 */	fmuls f11, f12, f11
/* 80285D24 00281984  ED 4C 02 B2 */	fmuls f10, f12, f10
/* 80285D28 00281988  ED 2C 02 72 */	fmuls f9, f12, f9
/* 80285D2C 0028198C  D1 65 80 00 */	stfs f11, 0xCC008000@l(r5)
/* 80285D30 00281990  D1 45 80 00 */	stfs f10, -0x8000(r5)
/* 80285D34 00281994  D1 25 80 00 */	stfs f9, -0x8000(r5)
/* 80285D38 00281998  D0 25 80 00 */	stfs f1, -0x8000(r5)
/* 80285D3C 0028199C  D0 45 80 00 */	stfs f2, -0x8000(r5)
/* 80285D40 002819A0  D0 65 80 00 */	stfs f3, -0x8000(r5)
/* 80285D44 002819A4  41 82 00 1C */	beq lbl_80285D60
/* 80285D48 002819A8  D0 85 80 00 */	stfs f4, -0x8000(r5)
/* 80285D4C 002819AC  D0 A5 80 00 */	stfs f5, -0x8000(r5)
/* 80285D50 002819B0  D0 C5 80 00 */	stfs f6, -0x8000(r5)
/* 80285D54 002819B4  D0 E5 80 00 */	stfs f7, -0x8000(r5)
/* 80285D58 002819B8  D1 05 80 00 */	stfs f8, -0x8000(r5)
/* 80285D5C 002819BC  D0 05 80 00 */	stfs f0, -0x8000(r5)
lbl_80285D60:
/* 80285D60 002819C0  2C 04 00 00 */	cmpwi r4, 0
/* 80285D64 002819C4  41 82 00 14 */	beq lbl_80285D78
/* 80285D68 002819C8  38 00 00 00 */	li r0, 0
/* 80285D6C 002819CC  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80285D70 002819D0  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 80285D74 002819D4  98 05 80 00 */	stb r0, -0x8000(r5)
lbl_80285D78:
/* 80285D78 002819D8  ED 61 20 2A */	fadds f11, f1, f4
/* 80285D7C 002819DC  C1 82 A1 FC */	lfs f12, lbl_806427FC-_SDA2_BASE_(r2)
/* 80285D80 002819E0  ED 42 28 2A */	fadds f10, f2, f5
/* 80285D84 002819E4  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80285D88 002819E8  ED 23 30 2A */	fadds f9, f3, f6
/* 80285D8C 002819EC  2C 03 00 00 */	cmpwi r3, 0
/* 80285D90 002819F0  ED 6B 38 28 */	fsubs f11, f11, f7
/* 80285D94 002819F4  ED 4A 40 28 */	fsubs f10, f10, f8
/* 80285D98 002819F8  ED 29 00 28 */	fsubs f9, f9, f0
/* 80285D9C 002819FC  ED 6C 02 F2 */	fmuls f11, f12, f11
/* 80285DA0 00281A00  ED 4C 02 B2 */	fmuls f10, f12, f10
/* 80285DA4 00281A04  ED 2C 02 72 */	fmuls f9, f12, f9
/* 80285DA8 00281A08  D1 65 80 00 */	stfs f11, 0xCC008000@l(r5)
/* 80285DAC 00281A0C  D1 45 80 00 */	stfs f10, -0x8000(r5)
/* 80285DB0 00281A10  D1 25 80 00 */	stfs f9, -0x8000(r5)
/* 80285DB4 00281A14  D0 25 80 00 */	stfs f1, -0x8000(r5)
/* 80285DB8 00281A18  D0 45 80 00 */	stfs f2, -0x8000(r5)
/* 80285DBC 00281A1C  D0 65 80 00 */	stfs f3, -0x8000(r5)
/* 80285DC0 00281A20  41 82 00 1C */	beq lbl_80285DDC
/* 80285DC4 00281A24  D0 85 80 00 */	stfs f4, -0x8000(r5)
/* 80285DC8 00281A28  D0 A5 80 00 */	stfs f5, -0x8000(r5)
/* 80285DCC 00281A2C  D0 C5 80 00 */	stfs f6, -0x8000(r5)
/* 80285DD0 00281A30  D0 E5 80 00 */	stfs f7, -0x8000(r5)
/* 80285DD4 00281A34  D1 05 80 00 */	stfs f8, -0x8000(r5)
/* 80285DD8 00281A38  D0 05 80 00 */	stfs f0, -0x8000(r5)
lbl_80285DDC:
/* 80285DDC 00281A3C  2C 04 00 00 */	cmpwi r4, 0
/* 80285DE0 00281A40  4D 82 00 20 */	beqlr
/* 80285DE4 00281A44  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80285DE8 00281A48  38 00 00 01 */	li r0, 1
/* 80285DEC 00281A4C  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80285DF0 00281A50  38 00 00 00 */	li r0, 0
/* 80285DF4 00281A54  98 03 80 00 */	stb r0, -0x8000(r3)
/* 80285DF8 00281A58  4E 80 00 20 */	blr

.global func_80285DFC
func_80285DFC:
/* 80285DFC 00281A5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80285E00 00281A60  7C 08 02 A6 */	mflr r0
/* 80285E04 00281A64  38 60 00 19 */	li r3, 0x19
/* 80285E08 00281A68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80285E0C 00281A6C  38 81 00 14 */	addi r4, r1, 0x14
/* 80285E10 00281A70  4B FF 9C 31 */	bl GXGetVtxDesc
/* 80285E14 00281A74  38 81 00 10 */	addi r4, r1, 0x10
/* 80285E18 00281A78  38 60 00 0D */	li r3, 0xd
/* 80285E1C 00281A7C  4B FF 9C 25 */	bl GXGetVtxDesc
/* 80285E20 00281A80  3C 60 80 51 */	lis r3, lbl_80515FF8@ha
/* 80285E24 00281A84  38 63 5F F8 */	addi r3, r3, lbl_80515FF8@l
/* 80285E28 00281A88  4B FF 9D CD */	bl GXGetVtxDescv
/* 80285E2C 00281A8C  3C 80 80 51 */	lis r4, lbl_805160D0@ha
/* 80285E30 00281A90  38 60 00 03 */	li r3, 3
/* 80285E34 00281A94  38 84 60 D0 */	addi r4, r4, lbl_805160D0@l
/* 80285E38 00281A98  4B FF A4 D1 */	bl GXGetVtxAttrFmtv
/* 80285E3C 00281A9C  4B FF 9E 49 */	bl GXClearVtxDesc
/* 80285E40 00281AA0  38 60 00 09 */	li r3, 9
/* 80285E44 00281AA4  38 80 00 01 */	li r4, 1
/* 80285E48 00281AA8  4B FF 95 AD */	bl GXSetVtxDesc
/* 80285E4C 00281AAC  38 60 00 0A */	li r3, 0xa
/* 80285E50 00281AB0  38 80 00 01 */	li r4, 1
/* 80285E54 00281AB4  4B FF 95 A1 */	bl GXSetVtxDesc
/* 80285E58 00281AB8  38 60 00 03 */	li r3, 3
/* 80285E5C 00281ABC  38 80 00 09 */	li r4, 9
/* 80285E60 00281AC0  38 A0 00 01 */	li r5, 1
/* 80285E64 00281AC4  38 C0 00 04 */	li r6, 4
/* 80285E68 00281AC8  38 E0 00 00 */	li r7, 0
/* 80285E6C 00281ACC  4B FF 9E 4D */	bl GXSetVtxAttrFmt
/* 80285E70 00281AD0  38 60 00 03 */	li r3, 3
/* 80285E74 00281AD4  38 80 00 0A */	li r4, 0xa
/* 80285E78 00281AD8  38 A0 00 00 */	li r5, 0
/* 80285E7C 00281ADC  38 C0 00 04 */	li r6, 4
/* 80285E80 00281AE0  38 E0 00 00 */	li r7, 0
/* 80285E84 00281AE4  4B FF 9E 35 */	bl GXSetVtxAttrFmt
/* 80285E88 00281AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285E8C 00281AEC  2C 00 00 00 */	cmpwi r0, 0
/* 80285E90 00281AF0  41 82 00 28 */	beq lbl_80285EB8
/* 80285E94 00281AF4  38 60 00 19 */	li r3, 0x19
/* 80285E98 00281AF8  38 80 00 01 */	li r4, 1
/* 80285E9C 00281AFC  4B FF 95 59 */	bl GXSetVtxDesc
/* 80285EA0 00281B00  38 60 00 03 */	li r3, 3
/* 80285EA4 00281B04  38 80 00 19 */	li r4, 0x19
/* 80285EA8 00281B08  38 A0 00 01 */	li r5, 1
/* 80285EAC 00281B0C  38 C0 00 04 */	li r6, 4
/* 80285EB0 00281B10  38 E0 00 00 */	li r7, 0
/* 80285EB4 00281B14  4B FF 9E 05 */	bl GXSetVtxAttrFmt
lbl_80285EB8:
/* 80285EB8 00281B18  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80285EBC 00281B1C  2C 00 00 00 */	cmpwi r0, 0
/* 80285EC0 00281B20  41 82 00 28 */	beq lbl_80285EE8
/* 80285EC4 00281B24  38 60 00 0D */	li r3, 0xd
/* 80285EC8 00281B28  38 80 00 01 */	li r4, 1
/* 80285ECC 00281B2C  4B FF 95 29 */	bl GXSetVtxDesc
/* 80285ED0 00281B30  38 60 00 03 */	li r3, 3
/* 80285ED4 00281B34  38 80 00 0D */	li r4, 0xd
/* 80285ED8 00281B38  38 A0 00 01 */	li r5, 1
/* 80285EDC 00281B3C  38 C0 00 01 */	li r6, 1
/* 80285EE0 00281B40  38 E0 00 00 */	li r7, 0
/* 80285EE4 00281B44  4B FF 9D D5 */	bl GXSetVtxAttrFmt
lbl_80285EE8:
/* 80285EE8 00281B48  38 60 00 80 */	li r3, 0x80
/* 80285EEC 00281B4C  38 80 00 03 */	li r4, 3
/* 80285EF0 00281B50  38 A0 00 18 */	li r5, 0x18
/* 80285EF4 00281B54  4B FF B2 55 */	bl GXBegin
/* 80285EF8 00281B58  C0 42 A1 DC */	lfs f2, lbl_806427DC-_SDA2_BASE_(r2)
/* 80285EFC 00281B5C  C0 22 A1 E0 */	lfs f1, lbl_806427E0-_SDA2_BASE_(r2)
/* 80285F00 00281B60  D0 41 00 08 */	stfs f2, 8(r1)
/* 80285F04 00281B64  FC 60 10 90 */	fmr f3, f2
/* 80285F08 00281B68  FC 80 10 90 */	fmr f4, f2
/* 80285F0C 00281B6C  C1 02 A1 D0 */	lfs f8, lbl_806427D0-_SDA2_BASE_(r2)
/* 80285F10 00281B70  FC A0 10 90 */	fmr f5, f2
/* 80285F14 00281B74  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80285F18 00281B78  FC C0 08 90 */	fmr f6, f1
/* 80285F1C 00281B7C  FC E0 10 90 */	fmr f7, f2
/* 80285F20 00281B80  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80285F24 00281B84  4B FF FC D9 */	bl func_80285BFC
/* 80285F28 00281B88  C0 02 A1 E0 */	lfs f0, lbl_806427E0-_SDA2_BASE_(r2)
/* 80285F2C 00281B8C  C0 42 A1 DC */	lfs f2, lbl_806427DC-_SDA2_BASE_(r2)
/* 80285F30 00281B90  D0 01 00 08 */	stfs f0, 8(r1)
/* 80285F34 00281B94  C0 22 A1 D0 */	lfs f1, lbl_806427D0-_SDA2_BASE_(r2)
/* 80285F38 00281B98  FC 60 10 90 */	fmr f3, f2
/* 80285F3C 00281B9C  FC 80 10 90 */	fmr f4, f2
/* 80285F40 00281BA0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80285F44 00281BA4  FC A0 08 90 */	fmr f5, f1
/* 80285F48 00281BA8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80285F4C 00281BAC  FC C0 10 90 */	fmr f6, f2
/* 80285F50 00281BB0  FC E0 10 90 */	fmr f7, f2
/* 80285F54 00281BB4  FD 00 10 90 */	fmr f8, f2
/* 80285F58 00281BB8  4B FF FC A5 */	bl func_80285BFC
/* 80285F5C 00281BBC  C0 02 A1 D0 */	lfs f0, lbl_806427D0-_SDA2_BASE_(r2)
/* 80285F60 00281BC0  C0 22 A1 DC */	lfs f1, lbl_806427DC-_SDA2_BASE_(r2)
/* 80285F64 00281BC4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80285F68 00281BC8  C0 42 A1 E0 */	lfs f2, lbl_806427E0-_SDA2_BASE_(r2)
/* 80285F6C 00281BCC  FC 60 08 90 */	fmr f3, f1
/* 80285F70 00281BD0  FC A0 08 90 */	fmr f5, f1
/* 80285F74 00281BD4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80285F78 00281BD8  FC 80 10 90 */	fmr f4, f2
/* 80285F7C 00281BDC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80285F80 00281BE0  FC C0 08 90 */	fmr f6, f1
/* 80285F84 00281BE4  FC E0 08 90 */	fmr f7, f1
/* 80285F88 00281BE8  FD 00 08 90 */	fmr f8, f1
/* 80285F8C 00281BEC  4B FF FC 71 */	bl func_80285BFC
/* 80285F90 00281BF0  C0 22 A1 DC */	lfs f1, lbl_806427DC-_SDA2_BASE_(r2)
/* 80285F94 00281BF4  C0 42 A1 D0 */	lfs f2, lbl_806427D0-_SDA2_BASE_(r2)
/* 80285F98 00281BF8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80285F9C 00281BFC  FC 60 08 90 */	fmr f3, f1
/* 80285FA0 00281C00  FC 80 08 90 */	fmr f4, f1
/* 80285FA4 00281C04  C0 E2 A1 E0 */	lfs f7, lbl_806427E0-_SDA2_BASE_(r2)
/* 80285FA8 00281C08  FC A0 08 90 */	fmr f5, f1
/* 80285FAC 00281C0C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80285FB0 00281C10  FC C0 10 90 */	fmr f6, f2
/* 80285FB4 00281C14  FD 00 08 90 */	fmr f8, f1
/* 80285FB8 00281C18  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80285FBC 00281C1C  4B FF FC 41 */	bl func_80285BFC
/* 80285FC0 00281C20  C0 22 A1 DC */	lfs f1, lbl_806427DC-_SDA2_BASE_(r2)
/* 80285FC4 00281C24  C0 62 A1 E0 */	lfs f3, lbl_806427E0-_SDA2_BASE_(r2)
/* 80285FC8 00281C28  D0 21 00 08 */	stfs f1, 8(r1)
/* 80285FCC 00281C2C  FC 40 08 90 */	fmr f2, f1
/* 80285FD0 00281C30  FC 80 08 90 */	fmr f4, f1
/* 80285FD4 00281C34  C0 E2 A1 D0 */	lfs f7, lbl_806427D0-_SDA2_BASE_(r2)
/* 80285FD8 00281C38  FC A0 18 90 */	fmr f5, f3
/* 80285FDC 00281C3C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80285FE0 00281C40  FC C0 08 90 */	fmr f6, f1
/* 80285FE4 00281C44  FD 00 08 90 */	fmr f8, f1
/* 80285FE8 00281C48  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80285FEC 00281C4C  4B FF FC 11 */	bl func_80285BFC
/* 80285FF0 00281C50  C0 22 A1 DC */	lfs f1, lbl_806427DC-_SDA2_BASE_(r2)
/* 80285FF4 00281C54  C0 62 A1 D0 */	lfs f3, lbl_806427D0-_SDA2_BASE_(r2)
/* 80285FF8 00281C58  D0 21 00 08 */	stfs f1, 8(r1)
/* 80285FFC 00281C5C  FC 40 08 90 */	fmr f2, f1
/* 80286000 00281C60  FC 80 18 90 */	fmr f4, f3
/* 80286004 00281C64  C1 02 A1 E0 */	lfs f8, lbl_806427E0-_SDA2_BASE_(r2)
/* 80286008 00281C68  FC A0 08 90 */	fmr f5, f1
/* 8028600C 00281C6C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80286010 00281C70  FC C0 08 90 */	fmr f6, f1
/* 80286014 00281C74  FC E0 08 90 */	fmr f7, f1
/* 80286018 00281C78  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8028601C 00281C7C  4B FF FB E1 */	bl func_80285BFC
/* 80286020 00281C80  3C 60 80 51 */	lis r3, lbl_80515FF8@ha
/* 80286024 00281C84  38 63 5F F8 */	addi r3, r3, lbl_80515FF8@l
/* 80286028 00281C88  4B FF 96 31 */	bl GXSetVtxDescv
/* 8028602C 00281C8C  3C 80 80 51 */	lis r4, lbl_805160D0@ha
/* 80286030 00281C90  38 60 00 03 */	li r3, 3
/* 80286034 00281C94  38 84 60 D0 */	addi r4, r4, lbl_805160D0@l
/* 80286038 00281C98  4B FF 9E 21 */	bl GXSetVtxAttrFmtv
/* 8028603C 00281C9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80286040 00281CA0  7C 08 03 A6 */	mtlr r0
/* 80286044 00281CA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80286048 00281CA8  4E 80 00 20 */	blr

.global func_8028604C
func_8028604C:
/* 8028604C 00281CAC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80286050 00281CB0  7C 08 02 A6 */	mflr r0
/* 80286054 00281CB4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80286058 00281CB8  39 61 00 60 */	addi r11, r1, 0x60
/* 8028605C 00281CBC  4B F4 10 C5 */	bl _savegpr_25
/* 80286060 00281CC0  3C 60 80 51 */	lis r3, lbl_80515FF8@ha
/* 80286064 00281CC4  38 63 5F F8 */	addi r3, r3, lbl_80515FF8@l
/* 80286068 00281CC8  4B FF 9B 8D */	bl GXGetVtxDescv
/* 8028606C 00281CCC  3C 80 80 51 */	lis r4, lbl_805160D0@ha
/* 80286070 00281CD0  38 60 00 03 */	li r3, 3
/* 80286074 00281CD4  38 84 60 D0 */	addi r4, r4, lbl_805160D0@l
/* 80286078 00281CD8  4B FF A2 91 */	bl GXGetVtxAttrFmtv
/* 8028607C 00281CDC  4B FF 9C 09 */	bl GXClearVtxDesc
/* 80286080 00281CE0  38 60 00 09 */	li r3, 9
/* 80286084 00281CE4  38 80 00 01 */	li r4, 1
/* 80286088 00281CE8  4B FF 93 6D */	bl GXSetVtxDesc
/* 8028608C 00281CEC  38 60 00 0A */	li r3, 0xa
/* 80286090 00281CF0  38 80 00 01 */	li r4, 1
/* 80286094 00281CF4  4B FF 93 61 */	bl GXSetVtxDesc
/* 80286098 00281CF8  38 60 00 03 */	li r3, 3
/* 8028609C 00281CFC  38 80 00 09 */	li r4, 9
/* 802860A0 00281D00  38 A0 00 01 */	li r5, 1
/* 802860A4 00281D04  38 C0 00 04 */	li r6, 4
/* 802860A8 00281D08  38 E0 00 00 */	li r7, 0
/* 802860AC 00281D0C  4B FF 9C 0D */	bl GXSetVtxAttrFmt
/* 802860B0 00281D10  38 60 00 03 */	li r3, 3
/* 802860B4 00281D14  38 80 00 0A */	li r4, 0xa
/* 802860B8 00281D18  38 A0 00 00 */	li r5, 0
/* 802860BC 00281D1C  38 C0 00 04 */	li r6, 4
/* 802860C0 00281D20  38 E0 00 00 */	li r7, 0
/* 802860C4 00281D24  4B FF 9B F5 */	bl GXSetVtxAttrFmt
/* 802860C8 00281D28  3F A0 80 43 */	lis r29, lbl_80435968@ha
/* 802860CC 00281D2C  3F C0 80 43 */	lis r30, lbl_80435A58@ha
/* 802860D0 00281D30  3B BD 59 68 */	addi r29, r29, lbl_80435968@l
/* 802860D4 00281D34  3B 80 00 00 */	li r28, 0
/* 802860D8 00281D38  3B DE 5A 58 */	addi r30, r30, lbl_80435A58@l
/* 802860DC 00281D3C  3F E0 CC 01 */	lis r31, 0xcc01
lbl_802860E0:
/* 802860E0 00281D40  80 9D 00 00 */	lwz r4, 0(r29)
/* 802860E4 00281D44  80 7D 00 04 */	lwz r3, 4(r29)
/* 802860E8 00281D48  1C 84 00 0C */	mulli r4, r4, 0xc
/* 802860EC 00281D4C  80 1D 00 08 */	lwz r0, 8(r29)
/* 802860F0 00281D50  1C 63 00 0C */	mulli r3, r3, 0xc
/* 802860F4 00281D54  7C 5E 24 2E */	lfsx f2, r30, r4
/* 802860F8 00281D58  7F 7E 22 14 */	add r27, r30, r4
/* 802860FC 00281D5C  C0 3B 00 04 */	lfs f1, 4(r27)
/* 80286100 00281D60  7F 5E 1A 14 */	add r26, r30, r3
/* 80286104 00281D64  7C BE 1C 2E */	lfsx f5, r30, r3
/* 80286108 00281D68  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8028610C 00281D6C  C0 9A 00 04 */	lfs f4, 4(r26)
/* 80286110 00281D70  ED 02 28 28 */	fsubs f8, f2, f5
/* 80286114 00281D74  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80286118 00281D78  C0 7A 00 08 */	lfs f3, 8(r26)
/* 8028611C 00281D7C  EC E1 20 28 */	fsubs f7, f1, f4
/* 80286120 00281D80  7F 3E 02 14 */	add r25, r30, r0
/* 80286124 00281D84  EC C0 18 28 */	fsubs f6, f0, f3
/* 80286128 00281D88  7C 5E 04 2E */	lfsx f2, r30, r0
/* 8028612C 00281D8C  C0 39 00 04 */	lfs f1, 4(r25)
/* 80286130 00281D90  C0 19 00 08 */	lfs f0, 8(r25)
/* 80286134 00281D94  EC A2 28 28 */	fsubs f5, f2, f5
/* 80286138 00281D98  ED 41 20 28 */	fsubs f10, f1, f4
/* 8028613C 00281D9C  D1 01 00 20 */	stfs f8, 0x20(r1)
/* 80286140 00281DA0  ED 20 18 28 */	fsubs f9, f0, f3
/* 80286144 00281DA4  EC 05 01 B2 */	fmuls f0, f5, f6
/* 80286148 00281DA8  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 8028614C 00281DAC  EC 8A 01 B2 */	fmuls f4, f10, f6
/* 80286150 00281DB0  EC 49 01 F2 */	fmuls f2, f9, f7
/* 80286154 00281DB4  D1 41 00 30 */	stfs f10, 0x30(r1)
/* 80286158 00281DB8  EC 65 01 F2 */	fmuls f3, f5, f7
/* 8028615C 00281DBC  EC 29 02 32 */	fmuls f1, f9, f8
/* 80286160 00281DC0  D1 21 00 34 */	stfs f9, 0x34(r1)
/* 80286164 00281DC4  EC A4 10 28 */	fsubs f5, f4, f2
/* 80286168 00281DC8  EC 4A 02 32 */	fmuls f2, f10, f8
/* 8028616C 00281DCC  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 80286170 00281DD0  EC 81 00 28 */	fsubs f4, f1, f0
/* 80286174 00281DD4  EC 25 01 72 */	fmuls f1, f5, f5
/* 80286178 00281DD8  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 8028617C 00281DDC  EC 43 10 28 */	fsubs f2, f3, f2
/* 80286180 00281DE0  EC 04 01 32 */	fmuls f0, f4, f4
/* 80286184 00281DE4  D0 A1 00 08 */	stfs f5, 8(r1)
/* 80286188 00281DE8  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8028618C 00281DEC  EC 01 00 2A */	fadds f0, f1, f0
/* 80286190 00281DF0  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80286194 00281DF4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80286198 00281DF8  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 8028619C 00281DFC  EC 21 00 2A */	fadds f1, f1, f0
/* 802861A0 00281E00  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 802861A4 00281E04  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 802861A8 00281E08  4B F4 E6 8D */	bl sqrt
/* 802861AC 00281E0C  FC 60 08 18 */	frsp f3, f1
/* 802861B0 00281E10  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 802861B4 00281E14  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 802861B8 00281E18  38 60 00 A0 */	li r3, 0xa0
/* 802861BC 00281E1C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802861C0 00281E20  38 80 00 03 */	li r4, 3
/* 802861C4 00281E24  EC 42 18 24 */	fdivs f2, f2, f3
/* 802861C8 00281E28  38 A0 00 05 */	li r5, 5
/* 802861CC 00281E2C  EC 21 18 24 */	fdivs f1, f1, f3
/* 802861D0 00281E30  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 802861D4 00281E34  EC 00 18 24 */	fdivs f0, f0, f3
/* 802861D8 00281E38  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802861DC 00281E3C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802861E0 00281E40  4B FF AF 69 */	bl GXBegin
/* 802861E4 00281E44  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 802861E8 00281E48  3B 9C 00 01 */	addi r28, r28, 1
/* 802861EC 00281E4C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 802861F0 00281E50  28 1C 00 0C */	cmplwi r28, 0xc
/* 802861F4 00281E54  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802861F8 00281E58  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 802861FC 00281E5C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80286200 00281E60  7C 7E 02 14 */	add r3, r30, r0
/* 80286204 00281E64  7C BE 04 2E */	lfsx f5, r30, r0
/* 80286208 00281E68  C0 63 00 08 */	lfs f3, 8(r3)
/* 8028620C 00281E6C  C0 83 00 04 */	lfs f4, 4(r3)
/* 80286210 00281E70  D0 BF 80 00 */	stfs f5, -0x8000(r31)
/* 80286214 00281E74  D0 9F 80 00 */	stfs f4, -0x8000(r31)
/* 80286218 00281E78  D0 7F 80 00 */	stfs f3, -0x8000(r31)
/* 8028621C 00281E7C  D0 5F 80 00 */	stfs f2, -0x8000(r31)
/* 80286220 00281E80  D0 3F 80 00 */	stfs f1, -0x8000(r31)
/* 80286224 00281E84  D0 1F 80 00 */	stfs f0, -0x8000(r31)
/* 80286228 00281E88  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8028622C 00281E8C  3B BD 00 14 */	addi r29, r29, 0x14
/* 80286230 00281E90  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80286234 00281E94  7C 7E 02 14 */	add r3, r30, r0
/* 80286238 00281E98  7C BE 04 2E */	lfsx f5, r30, r0
/* 8028623C 00281E9C  C0 63 00 08 */	lfs f3, 8(r3)
/* 80286240 00281EA0  C0 83 00 04 */	lfs f4, 4(r3)
/* 80286244 00281EA4  D0 BF 80 00 */	stfs f5, -0x8000(r31)
/* 80286248 00281EA8  D0 9F 80 00 */	stfs f4, -0x8000(r31)
/* 8028624C 00281EAC  D0 7F 80 00 */	stfs f3, -0x8000(r31)
/* 80286250 00281EB0  D0 5F 80 00 */	stfs f2, -0x8000(r31)
/* 80286254 00281EB4  D0 3F 80 00 */	stfs f1, -0x8000(r31)
/* 80286258 00281EB8  D0 1F 80 00 */	stfs f0, -0x8000(r31)
/* 8028625C 00281EBC  C0 79 00 08 */	lfs f3, 8(r25)
/* 80286260 00281EC0  C0 99 00 04 */	lfs f4, 4(r25)
/* 80286264 00281EC4  C0 B9 00 00 */	lfs f5, 0(r25)
/* 80286268 00281EC8  D0 BF 80 00 */	stfs f5, -0x8000(r31)
/* 8028626C 00281ECC  D0 9F 80 00 */	stfs f4, -0x8000(r31)
/* 80286270 00281ED0  D0 7F 80 00 */	stfs f3, -0x8000(r31)
/* 80286274 00281ED4  D0 5F 80 00 */	stfs f2, -0x8000(r31)
/* 80286278 00281ED8  D0 3F 80 00 */	stfs f1, -0x8000(r31)
/* 8028627C 00281EDC  D0 1F 80 00 */	stfs f0, -0x8000(r31)
/* 80286280 00281EE0  C0 7A 00 08 */	lfs f3, 8(r26)
/* 80286284 00281EE4  C0 9A 00 04 */	lfs f4, 4(r26)
/* 80286288 00281EE8  C0 BA 00 00 */	lfs f5, 0(r26)
/* 8028628C 00281EEC  D0 BF 80 00 */	stfs f5, -0x8000(r31)
/* 80286290 00281EF0  D0 9F 80 00 */	stfs f4, -0x8000(r31)
/* 80286294 00281EF4  D0 7F 80 00 */	stfs f3, -0x8000(r31)
/* 80286298 00281EF8  D0 5F 80 00 */	stfs f2, -0x8000(r31)
/* 8028629C 00281EFC  D0 3F 80 00 */	stfs f1, -0x8000(r31)
/* 802862A0 00281F00  D0 1F 80 00 */	stfs f0, -0x8000(r31)
/* 802862A4 00281F04  C0 7B 00 08 */	lfs f3, 8(r27)
/* 802862A8 00281F08  C0 9B 00 04 */	lfs f4, 4(r27)
/* 802862AC 00281F0C  C0 BB 00 00 */	lfs f5, 0(r27)
/* 802862B0 00281F10  D0 BF 80 00 */	stfs f5, -0x8000(r31)
/* 802862B4 00281F14  D0 9F 80 00 */	stfs f4, -0x8000(r31)
/* 802862B8 00281F18  D0 7F 80 00 */	stfs f3, -0x8000(r31)
/* 802862BC 00281F1C  D0 5F 80 00 */	stfs f2, -0x8000(r31)
/* 802862C0 00281F20  D0 3F 80 00 */	stfs f1, -0x8000(r31)
/* 802862C4 00281F24  D0 1F 80 00 */	stfs f0, -0x8000(r31)
/* 802862C8 00281F28  41 80 FE 18 */	blt lbl_802860E0
/* 802862CC 00281F2C  3C 60 80 51 */	lis r3, lbl_80515FF8@ha
/* 802862D0 00281F30  38 63 5F F8 */	addi r3, r3, lbl_80515FF8@l
/* 802862D4 00281F34  4B FF 93 85 */	bl GXSetVtxDescv
/* 802862D8 00281F38  3C 80 80 51 */	lis r4, lbl_805160D0@ha
/* 802862DC 00281F3C  38 60 00 03 */	li r3, 3
/* 802862E0 00281F40  38 84 60 D0 */	addi r4, r4, lbl_805160D0@l
/* 802862E4 00281F44  4B FF 9B 75 */	bl GXSetVtxAttrFmtv
/* 802862E8 00281F48  39 61 00 60 */	addi r11, r1, 0x60
/* 802862EC 00281F4C  4B F4 0E 81 */	bl _restgpr_25
/* 802862F0 00281F50  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802862F4 00281F54  7C 08 03 A6 */	mtlr r0
/* 802862F8 00281F58  38 21 00 60 */	addi r1, r1, 0x60
/* 802862FC 00281F5C  4E 80 00 20 */	blr

.global func_80286300
func_80286300:
/* 80286300 00281F60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80286304 00281F64  7C 08 02 A6 */	mflr r0
/* 80286308 00281F68  3C 60 80 51 */	lis r3, lbl_80515FF8@ha
/* 8028630C 00281F6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80286310 00281F70  38 63 5F F8 */	addi r3, r3, lbl_80515FF8@l
/* 80286314 00281F74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80286318 00281F78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8028631C 00281F7C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80286320 00281F80  4B FF 98 D5 */	bl GXGetVtxDescv
/* 80286324 00281F84  3C 80 80 51 */	lis r4, lbl_805160D0@ha
/* 80286328 00281F88  38 60 00 03 */	li r3, 3
/* 8028632C 00281F8C  38 84 60 D0 */	addi r4, r4, lbl_805160D0@l
/* 80286330 00281F90  4B FF 9F D9 */	bl GXGetVtxAttrFmtv
/* 80286334 00281F94  4B FF 99 51 */	bl GXClearVtxDesc
/* 80286338 00281F98  38 60 00 09 */	li r3, 9
/* 8028633C 00281F9C  38 80 00 01 */	li r4, 1
/* 80286340 00281FA0  4B FF 90 B5 */	bl GXSetVtxDesc
/* 80286344 00281FA4  38 60 00 0A */	li r3, 0xa
/* 80286348 00281FA8  38 80 00 01 */	li r4, 1
/* 8028634C 00281FAC  4B FF 90 A9 */	bl GXSetVtxDesc
/* 80286350 00281FB0  38 60 00 03 */	li r3, 3
/* 80286354 00281FB4  38 80 00 09 */	li r4, 9
/* 80286358 00281FB8  38 A0 00 01 */	li r5, 1
/* 8028635C 00281FBC  38 C0 00 04 */	li r6, 4
/* 80286360 00281FC0  38 E0 00 00 */	li r7, 0
/* 80286364 00281FC4  4B FF 99 55 */	bl GXSetVtxAttrFmt
/* 80286368 00281FC8  38 60 00 03 */	li r3, 3
/* 8028636C 00281FCC  38 80 00 0A */	li r4, 0xa
/* 80286370 00281FD0  38 A0 00 00 */	li r5, 0
/* 80286374 00281FD4  38 C0 00 04 */	li r6, 4
/* 80286378 00281FD8  38 E0 00 00 */	li r7, 0
/* 8028637C 00281FDC  4B FF 99 3D */	bl GXSetVtxAttrFmt
/* 80286380 00281FE0  3F C0 80 43 */	lis r30, lbl_80435B90@ha
/* 80286384 00281FE4  3F E0 80 43 */	lis r31, lbl_80435B48@ha
/* 80286388 00281FE8  3B DE 5B 90 */	addi r30, r30, lbl_80435B90@l
/* 8028638C 00281FEC  3B A0 00 07 */	li r29, 7
/* 80286390 00281FF0  3B FF 5B 48 */	addi r31, r31, lbl_80435B48@l
lbl_80286394:
/* 80286394 00281FF4  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 80286398 00281FF8  57 A0 15 BA */	rlwinm r0, r29, 2, 0x16, 0x1d
/* 8028639C 00281FFC  7C 03 00 50 */	subf r0, r3, r0
/* 802863A0 00282000  7C DE 02 14 */	add r6, r30, r0
/* 802863A4 00282004  7C BE 00 AE */	lbzx r5, r30, r0
/* 802863A8 00282008  88 06 00 02 */	lbz r0, 2(r6)
/* 802863AC 0028200C  38 60 00 00 */	li r3, 0
/* 802863B0 00282010  88 86 00 01 */	lbz r4, 1(r6)
/* 802863B4 00282014  1C C5 00 0C */	mulli r6, r5, 0xc
/* 802863B8 00282018  1C A4 00 0C */	mulli r5, r4, 0xc
/* 802863BC 0028201C  7C 9F 32 14 */	add r4, r31, r6
/* 802863C0 00282020  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802863C4 00282024  7C BF 2A 14 */	add r5, r31, r5
/* 802863C8 00282028  7C DF 02 14 */	add r6, r31, r0
/* 802863CC 0028202C  4B FF E5 85 */	bl func_80284950
/* 802863D0 00282030  37 BD FF FF */	addic. r29, r29, -1
/* 802863D4 00282034  40 80 FF C0 */	bge lbl_80286394
/* 802863D8 00282038  3C 60 80 51 */	lis r3, lbl_80515FF8@ha
/* 802863DC 0028203C  38 63 5F F8 */	addi r3, r3, lbl_80515FF8@l
/* 802863E0 00282040  4B FF 92 79 */	bl GXSetVtxDescv
/* 802863E4 00282044  3C 80 80 51 */	lis r4, lbl_805160D0@ha
/* 802863E8 00282048  38 60 00 03 */	li r3, 3
/* 802863EC 0028204C  38 84 60 D0 */	addi r4, r4, lbl_805160D0@l
/* 802863F0 00282050  4B FF 9A 69 */	bl GXSetVtxAttrFmtv
/* 802863F4 00282054  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802863F8 00282058  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802863FC 0028205C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80286400 00282060  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80286404 00282064  7C 08 03 A6 */	mtlr r0
/* 80286408 00282068  38 21 00 20 */	addi r1, r1, 0x20
/* 8028640C 0028206C  4E 80 00 20 */	blr

.global func_80286410
func_80286410:
/* 80286410 00282070  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80286414 00282074  7C 08 02 A6 */	mflr r0
/* 80286418 00282078  3C 60 80 51 */	lis r3, lbl_80515FF8@ha
/* 8028641C 0028207C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80286420 00282080  38 63 5F F8 */	addi r3, r3, lbl_80515FF8@l
/* 80286424 00282084  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80286428 00282088  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8028642C 0028208C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80286430 00282090  4B FF 97 C5 */	bl GXGetVtxDescv
/* 80286434 00282094  3C 80 80 51 */	lis r4, lbl_805160D0@ha
/* 80286438 00282098  38 60 00 03 */	li r3, 3
/* 8028643C 0028209C  38 84 60 D0 */	addi r4, r4, lbl_805160D0@l
/* 80286440 002820A0  4B FF 9E C9 */	bl GXGetVtxAttrFmtv
/* 80286444 002820A4  4B FF 98 41 */	bl GXClearVtxDesc
/* 80286448 002820A8  38 60 00 09 */	li r3, 9
/* 8028644C 002820AC  38 80 00 01 */	li r4, 1
/* 80286450 002820B0  4B FF 8F A5 */	bl GXSetVtxDesc
/* 80286454 002820B4  38 60 00 0A */	li r3, 0xa
/* 80286458 002820B8  38 80 00 01 */	li r4, 1
/* 8028645C 002820BC  4B FF 8F 99 */	bl GXSetVtxDesc
/* 80286460 002820C0  38 60 00 03 */	li r3, 3
/* 80286464 002820C4  38 80 00 09 */	li r4, 9
/* 80286468 002820C8  38 A0 00 01 */	li r5, 1
/* 8028646C 002820CC  38 C0 00 04 */	li r6, 4
/* 80286470 002820D0  38 E0 00 00 */	li r7, 0
/* 80286474 002820D4  4B FF 98 45 */	bl GXSetVtxAttrFmt
/* 80286478 002820D8  38 60 00 03 */	li r3, 3
/* 8028647C 002820DC  38 80 00 0A */	li r4, 0xa
/* 80286480 002820E0  38 A0 00 00 */	li r5, 0
/* 80286484 002820E4  38 C0 00 04 */	li r6, 4
/* 80286488 002820E8  38 E0 00 00 */	li r7, 0
/* 8028648C 002820EC  4B FF 98 2D */	bl GXSetVtxAttrFmt
/* 80286490 002820F0  3F C0 80 43 */	lis r30, lbl_80435C38@ha
/* 80286494 002820F4  3F E0 80 43 */	lis r31, lbl_80435BA8@ha
/* 80286498 002820F8  3B DE 5C 38 */	addi r30, r30, lbl_80435C38@l
/* 8028649C 002820FC  3B A0 00 13 */	li r29, 0x13
/* 802864A0 00282100  3B FF 5B A8 */	addi r31, r31, lbl_80435BA8@l
lbl_802864A4:
/* 802864A4 00282104  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 802864A8 00282108  57 A0 15 BA */	rlwinm r0, r29, 2, 0x16, 0x1d
/* 802864AC 0028210C  7C 03 00 50 */	subf r0, r3, r0
/* 802864B0 00282110  7C DE 02 14 */	add r6, r30, r0
/* 802864B4 00282114  7C BE 00 AE */	lbzx r5, r30, r0
/* 802864B8 00282118  88 06 00 02 */	lbz r0, 2(r6)
/* 802864BC 0028211C  38 60 00 00 */	li r3, 0
/* 802864C0 00282120  88 86 00 01 */	lbz r4, 1(r6)
/* 802864C4 00282124  1C C5 00 0C */	mulli r6, r5, 0xc
/* 802864C8 00282128  1C A4 00 0C */	mulli r5, r4, 0xc
/* 802864CC 0028212C  7C 9F 32 14 */	add r4, r31, r6
/* 802864D0 00282130  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802864D4 00282134  7C BF 2A 14 */	add r5, r31, r5
/* 802864D8 00282138  7C DF 02 14 */	add r6, r31, r0
/* 802864DC 0028213C  4B FF E4 75 */	bl func_80284950
/* 802864E0 00282140  37 BD FF FF */	addic. r29, r29, -1
/* 802864E4 00282144  40 80 FF C0 */	bge lbl_802864A4
/* 802864E8 00282148  3C 60 80 51 */	lis r3, lbl_80515FF8@ha
/* 802864EC 0028214C  38 63 5F F8 */	addi r3, r3, lbl_80515FF8@l
/* 802864F0 00282150  4B FF 91 69 */	bl GXSetVtxDescv
/* 802864F4 00282154  3C 80 80 51 */	lis r4, lbl_805160D0@ha
/* 802864F8 00282158  38 60 00 03 */	li r3, 3
/* 802864FC 0028215C  38 84 60 D0 */	addi r4, r4, lbl_805160D0@l
/* 80286500 00282160  4B FF 99 59 */	bl GXSetVtxAttrFmtv
/* 80286504 00282164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80286508 00282168  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028650C 0028216C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80286510 00282170  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80286514 00282174  7C 08 03 A6 */	mtlr r0
/* 80286518 00282178  38 21 00 20 */	addi r1, r1, 0x20
/* 8028651C 0028217C  4E 80 00 20 */	blr

.global func_80286520
func_80286520:
/* 80286520 00282180  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80286524 00282184  7C 08 02 A6 */	mflr r0
/* 80286528 00282188  3C 80 80 51 */	lis r4, lbl_80515FF8@ha
/* 8028652C 0028218C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80286530 00282190  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80286534 00282194  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80286538 00282198  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8028653C 0028219C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80286540 002821A0  7C 7C 1B 78 */	mr r28, r3
/* 80286544 002821A4  38 64 5F F8 */	addi r3, r4, lbl_80515FF8@l
/* 80286548 002821A8  4B FF 96 AD */	bl GXGetVtxDescv
/* 8028654C 002821AC  3C 80 80 51 */	lis r4, lbl_805160D0@ha
/* 80286550 002821B0  38 60 00 03 */	li r3, 3
/* 80286554 002821B4  38 84 60 D0 */	addi r4, r4, lbl_805160D0@l
/* 80286558 002821B8  4B FF 9D B1 */	bl GXGetVtxAttrFmtv
/* 8028655C 002821BC  4B FF 97 29 */	bl GXClearVtxDesc
/* 80286560 002821C0  38 60 00 09 */	li r3, 9
/* 80286564 002821C4  38 80 00 01 */	li r4, 1
/* 80286568 002821C8  4B FF 8E 8D */	bl GXSetVtxDesc
/* 8028656C 002821CC  38 60 00 0A */	li r3, 0xa
/* 80286570 002821D0  38 80 00 01 */	li r4, 1
/* 80286574 002821D4  4B FF 8E 81 */	bl GXSetVtxDesc
/* 80286578 002821D8  38 60 00 03 */	li r3, 3
/* 8028657C 002821DC  38 80 00 09 */	li r4, 9
/* 80286580 002821E0  38 A0 00 01 */	li r5, 1
/* 80286584 002821E4  38 C0 00 04 */	li r6, 4
/* 80286588 002821E8  38 E0 00 00 */	li r7, 0
/* 8028658C 002821EC  4B FF 97 2D */	bl GXSetVtxAttrFmt
/* 80286590 002821F0  38 60 00 03 */	li r3, 3
/* 80286594 002821F4  38 80 00 0A */	li r4, 0xa
/* 80286598 002821F8  38 A0 00 00 */	li r5, 0
/* 8028659C 002821FC  38 C0 00 04 */	li r6, 4
/* 802865A0 00282200  38 E0 00 00 */	li r7, 0
/* 802865A4 00282204  4B FF 97 15 */	bl GXSetVtxAttrFmt
/* 802865A8 00282208  3F C0 80 43 */	lis r30, lbl_80435C38@ha
/* 802865AC 0028220C  3F E0 80 43 */	lis r31, lbl_80435BA8@ha
/* 802865B0 00282210  3B DE 5C 38 */	addi r30, r30, lbl_80435C38@l
/* 802865B4 00282214  3B A0 00 13 */	li r29, 0x13
/* 802865B8 00282218  3B FF 5B A8 */	addi r31, r31, lbl_80435BA8@l
lbl_802865BC:
/* 802865BC 0028221C  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 802865C0 00282220  57 A0 15 BA */	rlwinm r0, r29, 2, 0x16, 0x1d
/* 802865C4 00282224  7C 03 00 50 */	subf r0, r3, r0
/* 802865C8 00282228  7C DE 02 14 */	add r6, r30, r0
/* 802865CC 0028222C  7C BE 00 AE */	lbzx r5, r30, r0
/* 802865D0 00282230  88 06 00 02 */	lbz r0, 2(r6)
/* 802865D4 00282234  7F 83 E3 78 */	mr r3, r28
/* 802865D8 00282238  88 86 00 01 */	lbz r4, 1(r6)
/* 802865DC 0028223C  1C C5 00 0C */	mulli r6, r5, 0xc
/* 802865E0 00282240  1C A4 00 0C */	mulli r5, r4, 0xc
/* 802865E4 00282244  7C 9F 32 14 */	add r4, r31, r6
/* 802865E8 00282248  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802865EC 0028224C  7C BF 2A 14 */	add r5, r31, r5
/* 802865F0 00282250  7C DF 02 14 */	add r6, r31, r0
/* 802865F4 00282254  4B FF E3 5D */	bl func_80284950
/* 802865F8 00282258  37 BD FF FF */	addic. r29, r29, -1
/* 802865FC 0028225C  40 80 FF C0 */	bge lbl_802865BC
/* 80286600 00282260  3C 60 80 51 */	lis r3, lbl_80515FF8@ha
/* 80286604 00282264  38 63 5F F8 */	addi r3, r3, lbl_80515FF8@l
/* 80286608 00282268  4B FF 90 51 */	bl GXSetVtxDescv
/* 8028660C 0028226C  3C 80 80 51 */	lis r4, lbl_805160D0@ha
/* 80286610 00282270  38 60 00 03 */	li r3, 3
/* 80286614 00282274  38 84 60 D0 */	addi r4, r4, lbl_805160D0@l
/* 80286618 00282278  4B FF 98 41 */	bl GXSetVtxAttrFmtv
/* 8028661C 0028227C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80286620 00282280  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80286624 00282284  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80286628 00282288  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8028662C 0028228C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80286630 00282290  7C 08 03 A6 */	mtlr r0
/* 80286634 00282294  38 21 00 20 */	addi r1, r1, 0x20
/* 80286638 00282298  4E 80 00 20 */	blr

.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __ct__Q44nw4r3snd6detail10TaskThreadFv
__ct__Q44nw4r3snd6detail10TaskThreadFv:
/* 80380008 0037BC68  38 00 00 00 */	li r0, 0
/* 8038000C 0037BC6C  90 03 03 18 */	stw r0, 0x318(r3)
/* 80380010 0037BC70  98 03 03 1C */	stb r0, 0x31c(r3)
/* 80380014 0037BC74  98 03 03 1D */	stb r0, 0x31d(r3)
/* 80380018 0037BC78  4E 80 00 20 */	blr

.global __dt__Q44nw4r3snd6detail10TaskThreadFv
__dt__Q44nw4r3snd6detail10TaskThreadFv:
/* 8038001C 0037BC7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80380020 0037BC80  7C 08 02 A6 */	mflr r0
/* 80380024 0037BC84  2C 03 00 00 */	cmpwi r3, 0
/* 80380028 0037BC88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038002C 0037BC8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80380030 0037BC90  7C 9F 23 78 */	mr r31, r4
/* 80380034 0037BC94  93 C1 00 08 */	stw r30, 8(r1)
/* 80380038 0037BC98  7C 7E 1B 78 */	mr r30, r3
/* 8038003C 0037BC9C  41 82 00 48 */	beq lbl_80380084
/* 80380040 0037BCA0  88 03 03 1D */	lbz r0, 0x31d(r3)
/* 80380044 0037BCA4  2C 00 00 00 */	cmpwi r0, 0
/* 80380048 0037BCA8  41 82 00 2C */	beq lbl_80380074
/* 8038004C 0037BCAC  41 82 00 28 */	beq lbl_80380074
/* 80380050 0037BCB0  38 00 00 01 */	li r0, 1
/* 80380054 0037BCB4  98 03 03 1C */	stb r0, 0x31c(r3)
/* 80380058 0037BCB8  4B FF F9 29 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 8038005C 0037BCBC  4B FF FF 5D */	bl CancelWaitTask__Q44nw4r3snd6detail11TaskManagerFv
/* 80380060 0037BCC0  7F C3 F3 78 */	mr r3, r30
/* 80380064 0037BCC4  38 80 00 00 */	li r4, 0
/* 80380068 0037BCC8  4B EF 1D A1 */	bl func_80271E08
/* 8038006C 0037BCCC  38 00 00 00 */	li r0, 0
/* 80380070 0037BCD0  98 1E 03 1D */	stb r0, 0x31d(r30)
lbl_80380074:
/* 80380074 0037BCD4  2C 1F 00 00 */	cmpwi r31, 0
/* 80380078 0037BCD8  40 81 00 0C */	ble lbl_80380084
/* 8038007C 0037BCDC  7F C3 F3 78 */	mr r3, r30
/* 80380080 0037BCE0  4B E5 AA 39 */	bl func_801DAAB8
lbl_80380084:
/* 80380084 0037BCE4  7F C3 F3 78 */	mr r3, r30
/* 80380088 0037BCE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038008C 0037BCEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80380090 0037BCF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80380094 0037BCF4  7C 08 03 A6 */	mtlr r0
/* 80380098 0037BCF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8038009C 0037BCFC  4E 80 00 20 */	blr

.global Create__Q44nw4r3snd6detail10TaskThreadFlPvUl
Create__Q44nw4r3snd6detail10TaskThreadFlPvUl:
/* 803800A0 0037BD00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803800A4 0037BD04  7C 08 02 A6 */	mflr r0
/* 803800A8 0037BD08  90 01 00 24 */	stw r0, 0x24(r1)
/* 803800AC 0037BD0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803800B0 0037BD10  7C DF 33 78 */	mr r31, r6
/* 803800B4 0037BD14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803800B8 0037BD18  7C BE 2B 78 */	mr r30, r5
/* 803800BC 0037BD1C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803800C0 0037BD20  7C 9D 23 78 */	mr r29, r4
/* 803800C4 0037BD24  93 81 00 10 */	stw r28, 0x10(r1)
/* 803800C8 0037BD28  7C 7C 1B 78 */	mr r28, r3
/* 803800CC 0037BD2C  88 03 03 1D */	lbz r0, 0x31d(r3)
/* 803800D0 0037BD30  2C 00 00 00 */	cmpwi r0, 0
/* 803800D4 0037BD34  41 82 00 2C */	beq lbl_80380100
/* 803800D8 0037BD38  41 82 00 28 */	beq lbl_80380100
/* 803800DC 0037BD3C  38 00 00 01 */	li r0, 1
/* 803800E0 0037BD40  98 03 03 1C */	stb r0, 0x31c(r3)
/* 803800E4 0037BD44  4B FF F8 9D */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 803800E8 0037BD48  4B FF FE D1 */	bl CancelWaitTask__Q44nw4r3snd6detail11TaskManagerFv
/* 803800EC 0037BD4C  7F 83 E3 78 */	mr r3, r28
/* 803800F0 0037BD50  38 80 00 00 */	li r4, 0
/* 803800F4 0037BD54  4B EF 1D 15 */	bl func_80271E08
/* 803800F8 0037BD58  38 00 00 00 */	li r0, 0
/* 803800FC 0037BD5C  98 1C 03 1D */	stb r0, 0x31d(r28)
lbl_80380100:
/* 80380100 0037BD60  3C 80 80 38 */	lis r4, ThreadFunc__Q44nw4r3snd6detail10TaskThreadFPv@ha
/* 80380104 0037BD64  7F 83 E3 78 */	mr r3, r28
/* 80380108 0037BD68  7F 85 E3 78 */	mr r5, r28
/* 8038010C 0037BD6C  7F E7 FB 78 */	mr r7, r31
/* 80380110 0037BD70  7F A8 EB 78 */	mr r8, r29
/* 80380114 0037BD74  38 84 01 74 */	addi r4, r4, ThreadFunc__Q44nw4r3snd6detail10TaskThreadFPv@l
/* 80380118 0037BD78  7C DE FA 14 */	add r6, r30, r31
/* 8038011C 0037BD7C  39 20 00 00 */	li r9, 0
/* 80380120 0037BD80  4B EF 17 C1 */	bl func_802718E0
/* 80380124 0037BD84  2C 03 00 00 */	cmpwi r3, 0
/* 80380128 0037BD88  40 82 00 0C */	bne lbl_80380134
/* 8038012C 0037BD8C  38 60 00 00 */	li r3, 0
/* 80380130 0037BD90  48 00 00 24 */	b lbl_80380154
lbl_80380134:
/* 80380134 0037BD94  38 80 00 00 */	li r4, 0
/* 80380138 0037BD98  38 00 00 01 */	li r0, 1
/* 8038013C 0037BD9C  93 DC 03 18 */	stw r30, 0x318(r28)
/* 80380140 0037BDA0  7F 83 E3 78 */	mr r3, r28
/* 80380144 0037BDA4  98 9C 03 1C */	stb r4, 0x31c(r28)
/* 80380148 0037BDA8  98 1C 03 1D */	stb r0, 0x31d(r28)
/* 8038014C 0037BDAC  4B EF 1D FD */	bl func_80271F48
/* 80380150 0037BDB0  38 60 00 01 */	li r3, 1
lbl_80380154:
/* 80380154 0037BDB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80380158 0037BDB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038015C 0037BDBC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80380160 0037BDC0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80380164 0037BDC4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80380168 0037BDC8  7C 08 03 A6 */	mtlr r0
/* 8038016C 0037BDCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80380170 0037BDD0  4E 80 00 20 */	blr

.global ThreadFunc__Q44nw4r3snd6detail10TaskThreadFPv
ThreadFunc__Q44nw4r3snd6detail10TaskThreadFPv:
/* 80380174 0037BDD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80380178 0037BDD8  7C 08 02 A6 */	mflr r0
/* 8038017C 0037BDDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80380180 0037BDE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80380184 0037BDE4  7C 7F 1B 78 */	mr r31, r3
/* 80380188 0037BDE8  48 00 00 20 */	b lbl_803801A8
lbl_8038018C:
/* 8038018C 0037BDEC  4B FF F7 F5 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 80380190 0037BDF0  4B FF FD B9 */	bl WaitTask__Q44nw4r3snd6detail11TaskManagerFv
/* 80380194 0037BDF4  88 1F 03 1C */	lbz r0, 0x31c(r31)
/* 80380198 0037BDF8  2C 00 00 00 */	cmpwi r0, 0
/* 8038019C 0037BDFC  40 82 00 18 */	bne lbl_803801B4
/* 803801A0 0037BE00  4B FF F7 E1 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 803801A4 0037BE04  4B FF FC 39 */	bl ExecuteTask__Q44nw4r3snd6detail11TaskManagerFv
lbl_803801A8:
/* 803801A8 0037BE08  88 1F 03 1C */	lbz r0, 0x31c(r31)
/* 803801AC 0037BE0C  2C 00 00 00 */	cmpwi r0, 0
/* 803801B0 0037BE10  41 82 FF DC */	beq lbl_8038018C
lbl_803801B4:
/* 803801B4 0037BE14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803801B8 0037BE18  38 60 00 00 */	li r3, 0
/* 803801BC 0037BE1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803801C0 0037BE20  7C 08 03 A6 */	mtlr r0
/* 803801C4 0037BE24  38 21 00 10 */	addi r1, r1, 0x10
/* 803801C8 0037BE28  4E 80 00 20 */	blr

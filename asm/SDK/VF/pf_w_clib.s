.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global VFipf_w_strlen
VFipf_w_strlen:
/* 80305860 003014C0  7C 64 1B 78 */	mr r4, r3
/* 80305864 003014C4  48 00 00 08 */	b lbl_8030586C
lbl_80305868:
/* 80305868 003014C8  38 84 00 02 */	addi r4, r4, 2
lbl_8030586C:
/* 8030586C 003014CC  A0 04 00 00 */	lhz r0, 0(r4)
/* 80305870 003014D0  2C 00 00 00 */	cmpwi r0, 0
/* 80305874 003014D4  40 82 FF F4 */	bne lbl_80305868
/* 80305878 003014D8  7C 03 20 50 */	subf r0, r3, r4
/* 8030587C 003014DC  7C 03 0E 70 */	srawi r3, r0, 1
/* 80305880 003014E0  4E 80 00 20 */	blr

.global VFipf_w_strcpy
VFipf_w_strcpy:
/* 80305884 003014E4  7C 65 1B 78 */	mr r5, r3
/* 80305888 003014E8  48 00 00 0C */	b lbl_80305894
lbl_8030588C:
/* 8030588C 003014EC  38 84 00 02 */	addi r4, r4, 2
/* 80305890 003014F0  38 A5 00 02 */	addi r5, r5, 2
lbl_80305894:
/* 80305894 003014F4  A0 04 00 00 */	lhz r0, 0(r4)
/* 80305898 003014F8  2C 00 00 00 */	cmpwi r0, 0
/* 8030589C 003014FC  B0 05 00 00 */	sth r0, 0(r5)
/* 803058A0 00301500  40 82 FF EC */	bne lbl_8030588C
/* 803058A4 00301504  4E 80 00 20 */	blr

.global VFipf_w_strncmp
VFipf_w_strncmp:
/* 803058A8 00301508  7C A9 03 A6 */	mtctr r5
/* 803058AC 0030150C  2C 05 00 00 */	cmpwi r5, 0
/* 803058B0 00301510  41 82 00 3C */	beq lbl_803058EC
lbl_803058B4:
/* 803058B4 00301514  A0 A3 00 00 */	lhz r5, 0(r3)
/* 803058B8 00301518  2C 05 00 00 */	cmpwi r5, 0
/* 803058BC 0030151C  41 82 00 18 */	beq lbl_803058D4
/* 803058C0 00301520  A0 04 00 00 */	lhz r0, 0(r4)
/* 803058C4 00301524  2C 00 00 00 */	cmpwi r0, 0
/* 803058C8 00301528  41 82 00 0C */	beq lbl_803058D4
/* 803058CC 0030152C  7C 05 00 40 */	cmplw r5, r0
/* 803058D0 00301530  41 82 00 10 */	beq lbl_803058E0
lbl_803058D4:
/* 803058D4 00301534  A0 04 00 00 */	lhz r0, 0(r4)
/* 803058D8 00301538  7C 60 28 50 */	subf r3, r0, r5
/* 803058DC 0030153C  4E 80 00 20 */	blr
lbl_803058E0:
/* 803058E0 00301540  38 63 00 02 */	addi r3, r3, 2
/* 803058E4 00301544  38 84 00 02 */	addi r4, r4, 2
/* 803058E8 00301548  42 00 FF CC */	bdnz lbl_803058B4
lbl_803058EC:
/* 803058EC 0030154C  38 60 00 00 */	li r3, 0
/* 803058F0 00301550  4E 80 00 20 */	blr

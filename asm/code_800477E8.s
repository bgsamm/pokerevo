.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_800477E8
func_800477E8:
/* 800477E8 00043448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800477EC 0004344C  7C 08 02 A6 */	mflr r0
/* 800477F0 00043450  90 01 00 14 */	stw r0, 0x14(r1)
/* 800477F4 00043454  4B FF 68 49 */	bl func_8003E03C
/* 800477F8 00043458  4B FF 89 A9 */	bl func_800401A0
/* 800477FC 0004345C  4B FE B8 25 */	bl func_80033020
/* 80047800 00043460  4B FF CF E5 */	bl func_800447E4
/* 80047804 00043464  4B FF DD 4D */	bl func_80045550
/* 80047808 00043468  4B FE E5 51 */	bl func_80035D58
/* 8004780C 0004346C  48 00 7B 71 */	bl func_8004F37C
/* 80047810 00043470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80047814 00043474  7C 08 03 A6 */	mtlr r0
/* 80047818 00043478  38 21 00 10 */	addi r1, r1, 0x10
/* 8004781C 0004347C  4E 80 00 20 */	blr

.global func_80047820
func_80047820:
/* 80047820 00043480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80047824 00043484  7C 08 02 A6 */	mflr r0
/* 80047828 00043488  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004782C 0004348C  4B FF 89 C9 */	bl func_800401F4
/* 80047830 00043490  2C 03 00 00 */	cmpwi r3, 0
/* 80047834 00043494  41 82 00 0C */	beq lbl_80047840
/* 80047838 00043498  38 00 00 01 */	li r0, 1
/* 8004783C 0004349C  98 03 00 00 */	stb r0, 0(r3)
lbl_80047840:
/* 80047840 000434A0  4B FE B8 49 */	bl func_80033088
/* 80047844 000434A4  2C 03 00 00 */	cmpwi r3, 0
/* 80047848 000434A8  41 82 00 08 */	beq lbl_80047850
/* 8004784C 000434AC  4B FE BC 3D */	bl func_80033488
lbl_80047850:
/* 80047850 000434B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80047854 000434B4  7C 08 03 A6 */	mtlr r0
/* 80047858 000434B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8004785C 000434BC  4E 80 00 20 */	blr

.global func_80047860
func_80047860:
/* 80047860 000434C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80047864 000434C4  7C 08 02 A6 */	mflr r0
/* 80047868 000434C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004786C 000434CC  4B FF 89 89 */	bl func_800401F4
/* 80047870 000434D0  2C 03 00 00 */	cmpwi r3, 0
/* 80047874 000434D4  41 82 00 0C */	beq lbl_80047880
/* 80047878 000434D8  38 00 00 00 */	li r0, 0
/* 8004787C 000434DC  98 03 00 00 */	stb r0, 0(r3)
lbl_80047880:
/* 80047880 000434E0  4B FE B8 09 */	bl func_80033088
/* 80047884 000434E4  2C 03 00 00 */	cmpwi r3, 0
/* 80047888 000434E8  41 82 00 08 */	beq lbl_80047890
/* 8004788C 000434EC  4B FE BC 09 */	bl func_80033494
lbl_80047890:
/* 80047890 000434F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80047894 000434F4  7C 08 03 A6 */	mtlr r0
/* 80047898 000434F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8004789C 000434FC  4E 80 00 20 */	blr

.global func_800478A0
func_800478A0:
/* 800478A0 00043500  38 A0 00 01 */	li r5, 1
/* 800478A4 00043504  38 6D 98 00 */	addi r3, r13, lbl_8063EAC0-_SDA_BASE_
/* 800478A8 00043508  38 80 00 04 */	li r4, 4
/* 800478AC 0004350C  38 00 00 00 */	li r0, 0
/* 800478B0 00043510  98 AD 98 00 */	stb r5, lbl_8063EAC0-_SDA_BASE_(r13)
/* 800478B4 00043514  B0 83 00 02 */	sth r4, 2(r3)
/* 800478B8 00043518  98 03 00 04 */	stb r0, 4(r3)
/* 800478BC 0004351C  4E 80 00 20 */	blr

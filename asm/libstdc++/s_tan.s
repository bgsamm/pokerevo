.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global tan
tan:
/* 801D455C 001D01BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D4560 001D01C0  7C 08 02 A6 */	mflr r0
/* 801D4564 001D01C4  3C 60 3F E9 */	lis r3, 0x3FE921FB@ha
/* 801D4568 001D01C8  C8 42 95 D0 */	lfd f2, lbl_80641BD0-_SDA2_BASE_(r2)
/* 801D456C 001D01CC  D8 21 00 08 */	stfd f1, 8(r1)
/* 801D4570 001D01D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D4574 001D01D4  38 03 21 FB */	addi r0, r3, 0x3FE921FB@l
/* 801D4578 001D01D8  80 61 00 08 */	lwz r3, 8(r1)
/* 801D457C 001D01DC  54 63 00 7E */	clrlwi r3, r3, 1
/* 801D4580 001D01E0  7C 03 00 00 */	cmpw r3, r0
/* 801D4584 001D01E4  41 81 00 10 */	bgt lbl_801D4594
/* 801D4588 001D01E8  38 60 00 01 */	li r3, 1
/* 801D458C 001D01EC  4B FF F6 29 */	bl __kernel_tan
/* 801D4590 001D01F0  48 00 00 34 */	b lbl_801D45C4
lbl_801D4594:
/* 801D4594 001D01F4  3C 00 7F F0 */	lis r0, 0x7ff0
/* 801D4598 001D01F8  7C 03 00 00 */	cmpw r3, r0
/* 801D459C 001D01FC  41 80 00 0C */	blt lbl_801D45A8
/* 801D45A0 001D0200  FC 21 08 28 */	fsub f1, f1, f1
/* 801D45A4 001D0204  48 00 00 20 */	b lbl_801D45C4
lbl_801D45A8:
/* 801D45A8 001D0208  38 61 00 10 */	addi r3, r1, 0x10
/* 801D45AC 001D020C  4B FF D9 95 */	bl __ieee754_rem_pio2
/* 801D45B0 001D0210  54 60 0F BC */	rlwinm r0, r3, 1, 0x1e, 0x1e
/* 801D45B4 001D0214  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 801D45B8 001D0218  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 801D45BC 001D021C  20 60 00 01 */	subfic r3, r0, 1
/* 801D45C0 001D0220  4B FF F5 F5 */	bl __kernel_tan
lbl_801D45C4:
/* 801D45C4 001D0224  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D45C8 001D0228  7C 08 03 A6 */	mtlr r0
/* 801D45CC 001D022C  38 21 00 20 */	addi r1, r1, 0x20
/* 801D45D0 001D0230  4E 80 00 20 */	blr

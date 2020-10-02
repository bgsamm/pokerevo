.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global WriteSramCallback
WriteSramCallback:
/* 802703DC 0026C03C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802703E0 0026C040  7C 08 02 A6 */	mflr r0
/* 802703E4 0026C044  3C C0 80 51 */	lis r6, lbl_80514780@ha
/* 802703E8 0026C048  3C A0 80 27 */	lis r5, WriteSramCallback@ha
/* 802703EC 0026C04C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802703F0 0026C050  38 C6 47 80 */	addi r6, r6, lbl_80514780@l
/* 802703F4 0026C054  38 60 00 00 */	li r3, 0
/* 802703F8 0026C058  38 A5 03 DC */	addi r5, r5, WriteSramCallback@l
/* 802703FC 0026C05C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80270400 0026C060  38 80 00 01 */	li r4, 1
/* 80270404 0026C064  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80270408 0026C068  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8027040C 0026C06C  83 E6 00 40 */	lwz r31, 0x40(r6)
/* 80270410 0026C070  23 BF 00 40 */	subfic r29, r31, 0x40
/* 80270414 0026C074  7F C6 FA 14 */	add r30, r6, r31
/* 80270418 0026C078  48 00 54 2D */	bl EXILock
/* 8027041C 0026C07C  2C 03 00 00 */	cmpwi r3, 0
/* 80270420 0026C080  40 82 00 0C */	bne lbl_8027042C
/* 80270424 0026C084  38 00 00 00 */	li r0, 0
/* 80270428 0026C088  48 00 00 B4 */	b lbl_802704DC
lbl_8027042C:
/* 8027042C 0026C08C  38 60 00 00 */	li r3, 0
/* 80270430 0026C090  38 80 00 01 */	li r4, 1
/* 80270434 0026C094  38 A0 00 03 */	li r5, 3
/* 80270438 0026C098  48 00 4C 79 */	bl EXISelect
/* 8027043C 0026C09C  2C 03 00 00 */	cmpwi r3, 0
/* 80270440 0026C0A0  40 82 00 14 */	bne lbl_80270454
/* 80270444 0026C0A4  38 60 00 00 */	li r3, 0
/* 80270448 0026C0A8  48 00 54 F9 */	bl EXIUnlock
/* 8027044C 0026C0AC  38 00 00 00 */	li r0, 0
/* 80270450 0026C0B0  48 00 00 8C */	b lbl_802704DC
lbl_80270454:
/* 80270454 0026C0B4  57 E3 30 32 */	slwi r3, r31, 6
/* 80270458 0026C0B8  38 81 00 08 */	addi r4, r1, 8
/* 8027045C 0026C0BC  38 03 01 00 */	addi r0, r3, 0x100
/* 80270460 0026C0C0  38 A0 00 04 */	li r5, 4
/* 80270464 0026C0C4  64 00 A0 00 */	oris r0, r0, 0xa000
/* 80270468 0026C0C8  38 60 00 00 */	li r3, 0
/* 8027046C 0026C0CC  90 01 00 08 */	stw r0, 8(r1)
/* 80270470 0026C0D0  38 C0 00 01 */	li r6, 1
/* 80270474 0026C0D4  38 E0 00 00 */	li r7, 0
/* 80270478 0026C0D8  48 00 41 D1 */	bl EXIImm
/* 8027047C 0026C0DC  7C 60 00 34 */	cntlzw r0, r3
/* 80270480 0026C0E0  38 60 00 00 */	li r3, 0
/* 80270484 0026C0E4  54 1F D9 7E */	srwi r31, r0, 5
/* 80270488 0026C0E8  48 00 45 D9 */	bl EXISync
/* 8027048C 0026C0EC  7C 60 00 34 */	cntlzw r0, r3
/* 80270490 0026C0F0  7F C4 F3 78 */	mr r4, r30
/* 80270494 0026C0F4  54 00 D9 7E */	srwi r0, r0, 5
/* 80270498 0026C0F8  7F A5 EB 78 */	mr r5, r29
/* 8027049C 0026C0FC  7F FD 03 78 */	or r29, r31, r0
/* 802704A0 0026C100  38 60 00 00 */	li r3, 0
/* 802704A4 0026C104  38 C0 00 01 */	li r6, 1
/* 802704A8 0026C108  48 00 44 1D */	bl EXIImmEx
/* 802704AC 0026C10C  7C 60 00 34 */	cntlzw r0, r3
/* 802704B0 0026C110  38 60 00 00 */	li r3, 0
/* 802704B4 0026C114  54 00 D9 7E */	srwi r0, r0, 5
/* 802704B8 0026C118  7F BD 03 78 */	or r29, r29, r0
/* 802704BC 0026C11C  48 00 4D 25 */	bl EXIDeselect
/* 802704C0 0026C120  7C 60 00 34 */	cntlzw r0, r3
/* 802704C4 0026C124  38 60 00 00 */	li r3, 0
/* 802704C8 0026C128  54 00 D9 7E */	srwi r0, r0, 5
/* 802704CC 0026C12C  7F BD 03 78 */	or r29, r29, r0
/* 802704D0 0026C130  48 00 54 71 */	bl EXIUnlock
/* 802704D4 0026C134  7F A0 00 34 */	cntlzw r0, r29
/* 802704D8 0026C138  54 00 D9 7E */	srwi r0, r0, 5
lbl_802704DC:
/* 802704DC 0026C13C  3C 60 80 51 */	lis r3, lbl_80514780@ha
/* 802704E0 0026C140  2C 00 00 00 */	cmpwi r0, 0
/* 802704E4 0026C144  38 63 47 80 */	addi r3, r3, lbl_80514780@l
/* 802704E8 0026C148  90 03 00 4C */	stw r0, 0x4c(r3)
/* 802704EC 0026C14C  41 82 00 0C */	beq lbl_802704F8
/* 802704F0 0026C150  38 00 00 40 */	li r0, 0x40
/* 802704F4 0026C154  90 03 00 40 */	stw r0, 0x40(r3)
lbl_802704F8:
/* 802704F8 0026C158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802704FC 0026C15C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80270500 0026C160  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80270504 0026C164  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80270508 0026C168  7C 08 03 A6 */	mtlr r0
/* 8027050C 0026C16C  38 21 00 20 */	addi r1, r1, 0x20
/* 80270510 0026C170  4E 80 00 20 */	blr

.global __OSInitSram
__OSInitSram:
/* 80270514 0026C174  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80270518 0026C178  7C 08 02 A6 */	mflr r0
/* 8027051C 0026C17C  38 80 00 40 */	li r4, 0x40
/* 80270520 0026C180  90 01 00 24 */	stw r0, 0x24(r1)
/* 80270524 0026C184  38 00 00 00 */	li r0, 0
/* 80270528 0026C188  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027052C 0026C18C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80270530 0026C190  3F C0 80 51 */	lis r30, lbl_80514780@ha
/* 80270534 0026C194  3B DE 47 80 */	addi r30, r30, lbl_80514780@l
/* 80270538 0026C198  90 1E 00 44 */	stw r0, 0x44(r30)
/* 8027053C 0026C19C  7F C3 F3 78 */	mr r3, r30
/* 80270540 0026C1A0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80270544 0026C1A4  4B FF A0 E5 */	bl DCInvalidateRange
/* 80270548 0026C1A8  38 60 00 00 */	li r3, 0
/* 8027054C 0026C1AC  38 80 00 01 */	li r4, 1
/* 80270550 0026C1B0  38 A0 00 00 */	li r5, 0
/* 80270554 0026C1B4  48 00 52 F1 */	bl EXILock
/* 80270558 0026C1B8  2C 03 00 00 */	cmpwi r3, 0
/* 8027055C 0026C1BC  40 82 00 0C */	bne lbl_80270568
/* 80270560 0026C1C0  38 60 00 00 */	li r3, 0
/* 80270564 0026C1C4  48 00 00 C8 */	b lbl_8027062C
lbl_80270568:
/* 80270568 0026C1C8  38 60 00 00 */	li r3, 0
/* 8027056C 0026C1CC  38 80 00 01 */	li r4, 1
/* 80270570 0026C1D0  38 A0 00 03 */	li r5, 3
/* 80270574 0026C1D4  48 00 4B 3D */	bl EXISelect
/* 80270578 0026C1D8  2C 03 00 00 */	cmpwi r3, 0
/* 8027057C 0026C1DC  40 82 00 14 */	bne lbl_80270590
/* 80270580 0026C1E0  38 60 00 00 */	li r3, 0
/* 80270584 0026C1E4  48 00 53 BD */	bl EXIUnlock
/* 80270588 0026C1E8  38 60 00 00 */	li r3, 0
/* 8027058C 0026C1EC  48 00 00 A0 */	b lbl_8027062C
lbl_80270590:
/* 80270590 0026C1F0  3C 60 20 00 */	lis r3, 0x20000100@ha
/* 80270594 0026C1F4  38 81 00 08 */	addi r4, r1, 8
/* 80270598 0026C1F8  38 03 01 00 */	addi r0, r3, 0x20000100@l
/* 8027059C 0026C1FC  38 A0 00 04 */	li r5, 4
/* 802705A0 0026C200  90 01 00 08 */	stw r0, 8(r1)
/* 802705A4 0026C204  38 60 00 00 */	li r3, 0
/* 802705A8 0026C208  38 C0 00 01 */	li r6, 1
/* 802705AC 0026C20C  38 E0 00 00 */	li r7, 0
/* 802705B0 0026C210  48 00 40 99 */	bl EXIImm
/* 802705B4 0026C214  7C 60 00 34 */	cntlzw r0, r3
/* 802705B8 0026C218  38 60 00 00 */	li r3, 0
/* 802705BC 0026C21C  54 1F D9 7E */	srwi r31, r0, 5
/* 802705C0 0026C220  48 00 44 A1 */	bl EXISync
/* 802705C4 0026C224  7C 60 00 34 */	cntlzw r0, r3
/* 802705C8 0026C228  7F C4 F3 78 */	mr r4, r30
/* 802705CC 0026C22C  54 00 D9 7E */	srwi r0, r0, 5
/* 802705D0 0026C230  38 60 00 00 */	li r3, 0
/* 802705D4 0026C234  7F FE 03 78 */	or r30, r31, r0
/* 802705D8 0026C238  38 A0 00 40 */	li r5, 0x40
/* 802705DC 0026C23C  38 C0 00 00 */	li r6, 0
/* 802705E0 0026C240  38 E0 00 00 */	li r7, 0
/* 802705E4 0026C244  48 00 43 85 */	bl EXIDma
/* 802705E8 0026C248  7C 60 00 34 */	cntlzw r0, r3
/* 802705EC 0026C24C  38 60 00 00 */	li r3, 0
/* 802705F0 0026C250  54 00 D9 7E */	srwi r0, r0, 5
/* 802705F4 0026C254  7F DE 03 78 */	or r30, r30, r0
/* 802705F8 0026C258  48 00 44 69 */	bl EXISync
/* 802705FC 0026C25C  7C 60 00 34 */	cntlzw r0, r3
/* 80270600 0026C260  38 60 00 00 */	li r3, 0
/* 80270604 0026C264  54 00 D9 7E */	srwi r0, r0, 5
/* 80270608 0026C268  7F DE 03 78 */	or r30, r30, r0
/* 8027060C 0026C26C  48 00 4B D5 */	bl EXIDeselect
/* 80270610 0026C270  7C 60 00 34 */	cntlzw r0, r3
/* 80270614 0026C274  38 60 00 00 */	li r3, 0
/* 80270618 0026C278  54 00 D9 7E */	srwi r0, r0, 5
/* 8027061C 0026C27C  7F DE 03 78 */	or r30, r30, r0
/* 80270620 0026C280  48 00 53 21 */	bl EXIUnlock
/* 80270624 0026C284  7F C0 00 34 */	cntlzw r0, r30
/* 80270628 0026C288  54 03 D9 7E */	srwi r3, r0, 5
lbl_8027062C:
/* 8027062C 0026C28C  3F E0 80 51 */	lis r31, lbl_80514780@ha
/* 80270630 0026C290  38 00 00 40 */	li r0, 0x40
/* 80270634 0026C294  3B FF 47 80 */	addi r31, r31, lbl_80514780@l
/* 80270638 0026C298  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 8027063C 0026C29C  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80270640 0026C2A0  4B FF E1 1D */	bl OSDisableInterrupts
/* 80270644 0026C2A4  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80270648 0026C2A8  2C 00 00 00 */	cmpwi r0, 0
/* 8027064C 0026C2AC  41 82 00 10 */	beq lbl_8027065C
/* 80270650 0026C2B0  4B FF E1 35 */	bl OSRestoreInterrupts
/* 80270654 0026C2B4  38 60 00 00 */	li r3, 0
/* 80270658 0026C2B8  48 00 00 14 */	b lbl_8027066C
lbl_8027065C:
/* 8027065C 0026C2BC  38 00 00 01 */	li r0, 1
/* 80270660 0026C2C0  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80270664 0026C2C4  38 7F 00 14 */	addi r3, r31, 0x14
/* 80270668 0026C2C8  90 1F 00 48 */	stw r0, 0x48(r31)
lbl_8027066C:
/* 8027066C 0026C2CC  A3 C3 00 28 */	lhz r30, 0x28(r3)
/* 80270670 0026C2D0  38 60 00 00 */	li r3, 0
/* 80270674 0026C2D4  38 80 00 14 */	li r4, 0x14
/* 80270678 0026C2D8  48 00 00 9D */	bl UnlockSram
/* 8027067C 0026C2DC  57 C0 04 6A */	rlwinm r0, r30, 0, 0x11, 0x15
/* 80270680 0026C2E0  28 00 50 00 */	cmplwi r0, 0x5000
/* 80270684 0026C2E4  41 82 00 10 */	beq lbl_80270694
/* 80270688 0026C2E8  57 C0 06 32 */	rlwinm r0, r30, 0, 0x18, 0x19
/* 8027068C 0026C2EC  28 00 00 C0 */	cmplwi r0, 0xc0
/* 80270690 0026C2F0  40 82 00 08 */	bne lbl_80270698
lbl_80270694:
/* 80270694 0026C2F4  3B C0 00 00 */	li r30, 0
lbl_80270698:
/* 80270698 0026C2F8  4B FF E0 C5 */	bl OSDisableInterrupts
/* 8027069C 0026C2FC  3C 80 80 51 */	lis r4, lbl_80514780@ha
/* 802706A0 0026C300  38 84 47 80 */	addi r4, r4, lbl_80514780@l
/* 802706A4 0026C304  80 04 00 48 */	lwz r0, 0x48(r4)
/* 802706A8 0026C308  2C 00 00 00 */	cmpwi r0, 0
/* 802706AC 0026C30C  41 82 00 10 */	beq lbl_802706BC
/* 802706B0 0026C310  4B FF E0 D5 */	bl OSRestoreInterrupts
/* 802706B4 0026C314  38 A0 00 00 */	li r5, 0
/* 802706B8 0026C318  48 00 00 14 */	b lbl_802706CC
lbl_802706BC:
/* 802706BC 0026C31C  38 00 00 01 */	li r0, 1
/* 802706C0 0026C320  90 64 00 44 */	stw r3, 0x44(r4)
/* 802706C4 0026C324  38 A4 00 14 */	addi r5, r4, 0x14
/* 802706C8 0026C328  90 04 00 48 */	stw r0, 0x48(r4)
lbl_802706CC:
/* 802706CC 0026C32C  A0 05 00 28 */	lhz r0, 0x28(r5)
/* 802706D0 0026C330  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 802706D4 0026C334  7C 03 00 40 */	cmplw r3, r0
/* 802706D8 0026C338  40 82 00 14 */	bne lbl_802706EC
/* 802706DC 0026C33C  38 60 00 00 */	li r3, 0
/* 802706E0 0026C340  38 80 00 14 */	li r4, 0x14
/* 802706E4 0026C344  48 00 00 31 */	bl UnlockSram
/* 802706E8 0026C348  48 00 00 14 */	b lbl_802706FC
lbl_802706EC:
/* 802706EC 0026C34C  B3 C5 00 28 */	sth r30, 0x28(r5)
/* 802706F0 0026C350  38 60 00 01 */	li r3, 1
/* 802706F4 0026C354  38 80 00 14 */	li r4, 0x14
/* 802706F8 0026C358  48 00 00 1D */	bl UnlockSram
lbl_802706FC:
/* 802706FC 0026C35C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80270700 0026C360  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80270704 0026C364  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80270708 0026C368  7C 08 03 A6 */	mtlr r0
/* 8027070C 0026C36C  38 21 00 20 */	addi r1, r1, 0x20
/* 80270710 0026C370  4E 80 00 20 */	blr

.global UnlockSram
UnlockSram:
/* 80270714 0026C374  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80270718 0026C378  7C 08 02 A6 */	mflr r0
/* 8027071C 0026C37C  2C 03 00 00 */	cmpwi r3, 0
/* 80270720 0026C380  90 01 00 24 */	stw r0, 0x24(r1)
/* 80270724 0026C384  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80270728 0026C388  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8027072C 0026C38C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80270730 0026C390  41 82 02 8C */	beq lbl_802709BC
/* 80270734 0026C394  2C 04 00 00 */	cmpwi r4, 0
/* 80270738 0026C398  40 82 01 30 */	bne lbl_80270868
/* 8027073C 0026C39C  3D 00 80 51 */	lis r8, lbl_80514780@ha
/* 80270740 0026C3A0  39 08 47 80 */	addi r8, r8, lbl_80514780@l
/* 80270744 0026C3A4  88 68 00 13 */	lbz r3, 0x13(r8)
/* 80270748 0026C3A8  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 8027074C 0026C3AC  28 00 00 02 */	cmplwi r0, 2
/* 80270750 0026C3B0  40 81 00 0C */	ble lbl_8027075C
/* 80270754 0026C3B4  54 60 06 3A */	rlwinm r0, r3, 0, 0x18, 0x1d
/* 80270758 0026C3B8  98 08 00 13 */	stb r0, 0x13(r8)
lbl_8027075C:
/* 8027075C 0026C3BC  3C 60 80 51 */	lis r3, lbl_80514780@ha
/* 80270760 0026C3C0  38 00 00 00 */	li r0, 0
/* 80270764 0026C3C4  38 63 47 80 */	addi r3, r3, lbl_80514780@l
/* 80270768 0026C3C8  38 E8 00 0C */	addi r7, r8, 0xc
/* 8027076C 0026C3CC  38 A3 00 14 */	addi r5, r3, 0x14
/* 80270770 0026C3D0  B0 08 00 02 */	sth r0, 2(r8)
/* 80270774 0026C3D4  38 65 00 01 */	addi r3, r5, 1
/* 80270778 0026C3D8  7C 67 18 50 */	subf r3, r7, r3
/* 8027077C 0026C3DC  7C 07 28 40 */	cmplw r7, r5
/* 80270780 0026C3E0  B0 08 00 00 */	sth r0, 0(r8)
/* 80270784 0026C3E4  54 63 F8 7E */	srwi r3, r3, 1
/* 80270788 0026C3E8  40 80 00 E0 */	bge lbl_80270868
/* 8027078C 0026C3EC  54 60 F0 BF */	rlwinm. r0, r3, 0x1e, 2, 0x1f
/* 80270790 0026C3F0  7C 09 03 A6 */	mtctr r0
/* 80270794 0026C3F4  41 82 00 A4 */	beq lbl_80270838
lbl_80270798:
/* 80270798 0026C3F8  A0 C8 00 00 */	lhz r6, 0(r8)
/* 8027079C 0026C3FC  A0 07 00 00 */	lhz r0, 0(r7)
/* 802707A0 0026C400  A0 A8 00 02 */	lhz r5, 2(r8)
/* 802707A4 0026C404  7C 06 02 14 */	add r0, r6, r0
/* 802707A8 0026C408  B0 08 00 00 */	sth r0, 0(r8)
/* 802707AC 0026C40C  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 802707B0 0026C410  A0 07 00 00 */	lhz r0, 0(r7)
/* 802707B4 0026C414  7C 00 00 F8 */	nor r0, r0, r0
/* 802707B8 0026C418  7C 05 02 14 */	add r0, r5, r0
/* 802707BC 0026C41C  B0 08 00 02 */	sth r0, 2(r8)
/* 802707C0 0026C420  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 802707C4 0026C424  A0 07 00 02 */	lhz r0, 2(r7)
/* 802707C8 0026C428  7C 06 02 14 */	add r0, r6, r0
/* 802707CC 0026C42C  B0 08 00 00 */	sth r0, 0(r8)
/* 802707D0 0026C430  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 802707D4 0026C434  A0 07 00 02 */	lhz r0, 2(r7)
/* 802707D8 0026C438  7C 00 00 F8 */	nor r0, r0, r0
/* 802707DC 0026C43C  7C 05 02 14 */	add r0, r5, r0
/* 802707E0 0026C440  B0 08 00 02 */	sth r0, 2(r8)
/* 802707E4 0026C444  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 802707E8 0026C448  A0 07 00 04 */	lhz r0, 4(r7)
/* 802707EC 0026C44C  7C 06 02 14 */	add r0, r6, r0
/* 802707F0 0026C450  B0 08 00 00 */	sth r0, 0(r8)
/* 802707F4 0026C454  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 802707F8 0026C458  A0 07 00 04 */	lhz r0, 4(r7)
/* 802707FC 0026C45C  7C 00 00 F8 */	nor r0, r0, r0
/* 80270800 0026C460  7C 05 02 14 */	add r0, r5, r0
/* 80270804 0026C464  B0 08 00 02 */	sth r0, 2(r8)
/* 80270808 0026C468  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8027080C 0026C46C  A0 07 00 06 */	lhz r0, 6(r7)
/* 80270810 0026C470  7C 06 02 14 */	add r0, r6, r0
/* 80270814 0026C474  B0 08 00 00 */	sth r0, 0(r8)
/* 80270818 0026C478  A0 07 00 06 */	lhz r0, 6(r7)
/* 8027081C 0026C47C  38 E7 00 08 */	addi r7, r7, 8
/* 80270820 0026C480  7C 00 00 F8 */	nor r0, r0, r0
/* 80270824 0026C484  7C 05 02 14 */	add r0, r5, r0
/* 80270828 0026C488  B0 08 00 02 */	sth r0, 2(r8)
/* 8027082C 0026C48C  42 00 FF 6C */	bdnz lbl_80270798
/* 80270830 0026C490  70 63 00 03 */	andi. r3, r3, 3
/* 80270834 0026C494  41 82 00 34 */	beq lbl_80270868
lbl_80270838:
/* 80270838 0026C498  7C 69 03 A6 */	mtctr r3
lbl_8027083C:
/* 8027083C 0026C49C  A0 C8 00 00 */	lhz r6, 0(r8)
/* 80270840 0026C4A0  A0 07 00 00 */	lhz r0, 0(r7)
/* 80270844 0026C4A4  A0 A8 00 02 */	lhz r5, 2(r8)
/* 80270848 0026C4A8  7C 06 02 14 */	add r0, r6, r0
/* 8027084C 0026C4AC  B0 08 00 00 */	sth r0, 0(r8)
/* 80270850 0026C4B0  A0 07 00 00 */	lhz r0, 0(r7)
/* 80270854 0026C4B4  38 E7 00 02 */	addi r7, r7, 2
/* 80270858 0026C4B8  7C 00 00 F8 */	nor r0, r0, r0
/* 8027085C 0026C4BC  7C 05 02 14 */	add r0, r5, r0
/* 80270860 0026C4C0  B0 08 00 02 */	sth r0, 2(r8)
/* 80270864 0026C4C4  42 00 FF D8 */	bdnz lbl_8027083C
lbl_80270868:
/* 80270868 0026C4C8  3C 60 80 51 */	lis r3, lbl_80514780@ha
/* 8027086C 0026C4CC  38 63 47 80 */	addi r3, r3, lbl_80514780@l
/* 80270870 0026C4D0  80 03 00 40 */	lwz r0, 0x40(r3)
/* 80270874 0026C4D4  7C 04 00 40 */	cmplw r4, r0
/* 80270878 0026C4D8  40 80 00 08 */	bge lbl_80270880
/* 8027087C 0026C4DC  90 83 00 40 */	stw r4, 0x40(r3)
lbl_80270880:
/* 80270880 0026C4E0  3C 80 80 51 */	lis r4, lbl_80514780@ha
/* 80270884 0026C4E4  38 84 47 80 */	addi r4, r4, lbl_80514780@l
/* 80270888 0026C4E8  80 04 00 40 */	lwz r0, 0x40(r4)
/* 8027088C 0026C4EC  28 00 00 14 */	cmplwi r0, 0x14
/* 80270890 0026C4F0  41 81 00 28 */	bgt lbl_802708B8
/* 80270894 0026C4F4  A0 64 00 3C */	lhz r3, 0x3c(r4)
/* 80270898 0026C4F8  54 60 04 6A */	rlwinm r0, r3, 0, 0x11, 0x15
/* 8027089C 0026C4FC  28 00 50 00 */	cmplwi r0, 0x5000
/* 802708A0 0026C500  41 82 00 10 */	beq lbl_802708B0
/* 802708A4 0026C504  54 60 06 32 */	rlwinm r0, r3, 0, 0x18, 0x19
/* 802708A8 0026C508  28 00 00 C0 */	cmplwi r0, 0xc0
/* 802708AC 0026C50C  40 82 00 0C */	bne lbl_802708B8
lbl_802708B0:
/* 802708B0 0026C510  38 00 00 00 */	li r0, 0
/* 802708B4 0026C514  B0 04 00 3C */	sth r0, 0x3c(r4)
lbl_802708B8:
/* 802708B8 0026C518  3C C0 80 51 */	lis r6, lbl_80514780@ha
/* 802708BC 0026C51C  3C A0 80 27 */	lis r5, WriteSramCallback@ha
/* 802708C0 0026C520  38 C6 47 80 */	addi r6, r6, lbl_80514780@l
/* 802708C4 0026C524  38 60 00 00 */	li r3, 0
/* 802708C8 0026C528  83 E6 00 40 */	lwz r31, 0x40(r6)
/* 802708CC 0026C52C  38 A5 03 DC */	addi r5, r5, WriteSramCallback@l
/* 802708D0 0026C530  38 80 00 01 */	li r4, 1
/* 802708D4 0026C534  23 BF 00 40 */	subfic r29, r31, 0x40
/* 802708D8 0026C538  7F C6 FA 14 */	add r30, r6, r31
/* 802708DC 0026C53C  48 00 4F 69 */	bl EXILock
/* 802708E0 0026C540  2C 03 00 00 */	cmpwi r3, 0
/* 802708E4 0026C544  40 82 00 0C */	bne lbl_802708F0
/* 802708E8 0026C548  38 00 00 00 */	li r0, 0
/* 802708EC 0026C54C  48 00 00 B4 */	b lbl_802709A0
lbl_802708F0:
/* 802708F0 0026C550  38 60 00 00 */	li r3, 0
/* 802708F4 0026C554  38 80 00 01 */	li r4, 1
/* 802708F8 0026C558  38 A0 00 03 */	li r5, 3
/* 802708FC 0026C55C  48 00 47 B5 */	bl EXISelect
/* 80270900 0026C560  2C 03 00 00 */	cmpwi r3, 0
/* 80270904 0026C564  40 82 00 14 */	bne lbl_80270918
/* 80270908 0026C568  38 60 00 00 */	li r3, 0
/* 8027090C 0026C56C  48 00 50 35 */	bl EXIUnlock
/* 80270910 0026C570  38 00 00 00 */	li r0, 0
/* 80270914 0026C574  48 00 00 8C */	b lbl_802709A0
lbl_80270918:
/* 80270918 0026C578  57 E3 30 32 */	slwi r3, r31, 6
/* 8027091C 0026C57C  38 81 00 08 */	addi r4, r1, 8
/* 80270920 0026C580  38 03 01 00 */	addi r0, r3, 0x100
/* 80270924 0026C584  38 A0 00 04 */	li r5, 4
/* 80270928 0026C588  64 00 A0 00 */	oris r0, r0, 0xa000
/* 8027092C 0026C58C  38 60 00 00 */	li r3, 0
/* 80270930 0026C590  90 01 00 08 */	stw r0, 8(r1)
/* 80270934 0026C594  38 C0 00 01 */	li r6, 1
/* 80270938 0026C598  38 E0 00 00 */	li r7, 0
/* 8027093C 0026C59C  48 00 3D 0D */	bl EXIImm
/* 80270940 0026C5A0  7C 60 00 34 */	cntlzw r0, r3
/* 80270944 0026C5A4  38 60 00 00 */	li r3, 0
/* 80270948 0026C5A8  54 1F D9 7E */	srwi r31, r0, 5
/* 8027094C 0026C5AC  48 00 41 15 */	bl EXISync
/* 80270950 0026C5B0  7C 60 00 34 */	cntlzw r0, r3
/* 80270954 0026C5B4  7F C4 F3 78 */	mr r4, r30
/* 80270958 0026C5B8  54 00 D9 7E */	srwi r0, r0, 5
/* 8027095C 0026C5BC  7F A5 EB 78 */	mr r5, r29
/* 80270960 0026C5C0  7F FD 03 78 */	or r29, r31, r0
/* 80270964 0026C5C4  38 60 00 00 */	li r3, 0
/* 80270968 0026C5C8  38 C0 00 01 */	li r6, 1
/* 8027096C 0026C5CC  48 00 3F 59 */	bl EXIImmEx
/* 80270970 0026C5D0  7C 60 00 34 */	cntlzw r0, r3
/* 80270974 0026C5D4  38 60 00 00 */	li r3, 0
/* 80270978 0026C5D8  54 00 D9 7E */	srwi r0, r0, 5
/* 8027097C 0026C5DC  7F BD 03 78 */	or r29, r29, r0
/* 80270980 0026C5E0  48 00 48 61 */	bl EXIDeselect
/* 80270984 0026C5E4  7C 60 00 34 */	cntlzw r0, r3
/* 80270988 0026C5E8  38 60 00 00 */	li r3, 0
/* 8027098C 0026C5EC  54 00 D9 7E */	srwi r0, r0, 5
/* 80270990 0026C5F0  7F BD 03 78 */	or r29, r29, r0
/* 80270994 0026C5F4  48 00 4F AD */	bl EXIUnlock
/* 80270998 0026C5F8  7F A0 00 34 */	cntlzw r0, r29
/* 8027099C 0026C5FC  54 00 D9 7E */	srwi r0, r0, 5
lbl_802709A0:
/* 802709A0 0026C600  3C 60 80 51 */	lis r3, lbl_80514780@ha
/* 802709A4 0026C604  2C 00 00 00 */	cmpwi r0, 0
/* 802709A8 0026C608  38 63 47 80 */	addi r3, r3, lbl_80514780@l
/* 802709AC 0026C60C  90 03 00 4C */	stw r0, 0x4c(r3)
/* 802709B0 0026C610  41 82 00 0C */	beq lbl_802709BC
/* 802709B4 0026C614  38 00 00 40 */	li r0, 0x40
/* 802709B8 0026C618  90 03 00 40 */	stw r0, 0x40(r3)
lbl_802709BC:
/* 802709BC 0026C61C  3F E0 80 51 */	lis r31, lbl_80514780@ha
/* 802709C0 0026C620  38 00 00 00 */	li r0, 0
/* 802709C4 0026C624  3B FF 47 80 */	addi r31, r31, lbl_80514780@l
/* 802709C8 0026C628  90 1F 00 48 */	stw r0, 0x48(r31)
/* 802709CC 0026C62C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802709D0 0026C630  4B FF DD B5 */	bl OSRestoreInterrupts
/* 802709D4 0026C634  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 802709D8 0026C638  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802709DC 0026C63C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802709E0 0026C640  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802709E4 0026C644  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802709E8 0026C648  7C 08 03 A6 */	mtlr r0
/* 802709EC 0026C64C  38 21 00 20 */	addi r1, r1, 0x20
/* 802709F0 0026C650  4E 80 00 20 */	blr

.global __OSSyncSram
__OSSyncSram:
/* 802709F4 0026C654  3C 60 80 51 */	lis r3, lbl_80514780@ha
/* 802709F8 0026C658  38 63 47 80 */	addi r3, r3, lbl_80514780@l
/* 802709FC 0026C65C  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 80270A00 0026C660  4E 80 00 20 */	blr

.global __OSReadROM
__OSReadROM:
/* 80270A04 0026C664  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80270A08 0026C668  7C 08 02 A6 */	mflr r0
/* 80270A0C 0026C66C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80270A10 0026C670  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80270A14 0026C674  7C BF 2B 78 */	mr r31, r5
/* 80270A18 0026C678  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80270A1C 0026C67C  7C 9E 23 78 */	mr r30, r4
/* 80270A20 0026C680  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80270A24 0026C684  7C 7D 1B 78 */	mr r29, r3
/* 80270A28 0026C688  4B FF 9C 01 */	bl DCInvalidateRange
/* 80270A2C 0026C68C  38 60 00 00 */	li r3, 0
/* 80270A30 0026C690  38 80 00 01 */	li r4, 1
/* 80270A34 0026C694  38 A0 00 00 */	li r5, 0
/* 80270A38 0026C698  48 00 4E 0D */	bl EXILock
/* 80270A3C 0026C69C  2C 03 00 00 */	cmpwi r3, 0
/* 80270A40 0026C6A0  40 82 00 0C */	bne lbl_80270A4C
/* 80270A44 0026C6A4  38 60 00 00 */	li r3, 0
/* 80270A48 0026C6A8  48 00 00 C4 */	b lbl_80270B0C
lbl_80270A4C:
/* 80270A4C 0026C6AC  38 60 00 00 */	li r3, 0
/* 80270A50 0026C6B0  38 80 00 01 */	li r4, 1
/* 80270A54 0026C6B4  38 A0 00 03 */	li r5, 3
/* 80270A58 0026C6B8  48 00 46 59 */	bl EXISelect
/* 80270A5C 0026C6BC  2C 03 00 00 */	cmpwi r3, 0
/* 80270A60 0026C6C0  40 82 00 14 */	bne lbl_80270A74
/* 80270A64 0026C6C4  38 60 00 00 */	li r3, 0
/* 80270A68 0026C6C8  48 00 4E D9 */	bl EXIUnlock
/* 80270A6C 0026C6CC  38 60 00 00 */	li r3, 0
/* 80270A70 0026C6D0  48 00 00 9C */	b lbl_80270B0C
lbl_80270A74:
/* 80270A74 0026C6D4  57 E0 30 32 */	slwi r0, r31, 6
/* 80270A78 0026C6D8  38 81 00 08 */	addi r4, r1, 8
/* 80270A7C 0026C6DC  90 01 00 08 */	stw r0, 8(r1)
/* 80270A80 0026C6E0  38 60 00 00 */	li r3, 0
/* 80270A84 0026C6E4  38 A0 00 04 */	li r5, 4
/* 80270A88 0026C6E8  38 C0 00 01 */	li r6, 1
/* 80270A8C 0026C6EC  38 E0 00 00 */	li r7, 0
/* 80270A90 0026C6F0  48 00 3B B9 */	bl EXIImm
/* 80270A94 0026C6F4  7C 60 00 34 */	cntlzw r0, r3
/* 80270A98 0026C6F8  38 60 00 00 */	li r3, 0
/* 80270A9C 0026C6FC  54 1F D9 7E */	srwi r31, r0, 5
/* 80270AA0 0026C700  48 00 3F C1 */	bl EXISync
/* 80270AA4 0026C704  7C 60 00 34 */	cntlzw r0, r3
/* 80270AA8 0026C708  7F A4 EB 78 */	mr r4, r29
/* 80270AAC 0026C70C  54 00 D9 7E */	srwi r0, r0, 5
/* 80270AB0 0026C710  7F C5 F3 78 */	mr r5, r30
/* 80270AB4 0026C714  7F FF 03 78 */	or r31, r31, r0
/* 80270AB8 0026C718  38 60 00 00 */	li r3, 0
/* 80270ABC 0026C71C  38 C0 00 00 */	li r6, 0
/* 80270AC0 0026C720  38 E0 00 00 */	li r7, 0
/* 80270AC4 0026C724  48 00 3E A5 */	bl EXIDma
/* 80270AC8 0026C728  7C 60 00 34 */	cntlzw r0, r3
/* 80270ACC 0026C72C  38 60 00 00 */	li r3, 0
/* 80270AD0 0026C730  54 00 D9 7E */	srwi r0, r0, 5
/* 80270AD4 0026C734  7F FF 03 78 */	or r31, r31, r0
/* 80270AD8 0026C738  48 00 3F 89 */	bl EXISync
/* 80270ADC 0026C73C  7C 60 00 34 */	cntlzw r0, r3
/* 80270AE0 0026C740  38 60 00 00 */	li r3, 0
/* 80270AE4 0026C744  54 00 D9 7E */	srwi r0, r0, 5
/* 80270AE8 0026C748  7F FF 03 78 */	or r31, r31, r0
/* 80270AEC 0026C74C  48 00 46 F5 */	bl EXIDeselect
/* 80270AF0 0026C750  7C 60 00 34 */	cntlzw r0, r3
/* 80270AF4 0026C754  38 60 00 00 */	li r3, 0
/* 80270AF8 0026C758  54 00 D9 7E */	srwi r0, r0, 5
/* 80270AFC 0026C75C  7F FF 03 78 */	or r31, r31, r0
/* 80270B00 0026C760  48 00 4E 41 */	bl EXIUnlock
/* 80270B04 0026C764  7F E0 00 34 */	cntlzw r0, r31
/* 80270B08 0026C768  54 03 D9 7E */	srwi r3, r0, 5
lbl_80270B0C:
/* 80270B0C 0026C76C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80270B10 0026C770  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80270B14 0026C774  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80270B18 0026C778  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80270B1C 0026C77C  7C 08 03 A6 */	mtlr r0
/* 80270B20 0026C780  38 21 00 20 */	addi r1, r1, 0x20
/* 80270B24 0026C784  4E 80 00 20 */	blr

.global OSGetWirelessID
OSGetWirelessID:
/* 80270B28 0026C788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80270B2C 0026C78C  7C 08 02 A6 */	mflr r0
/* 80270B30 0026C790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80270B34 0026C794  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80270B38 0026C798  7C 7F 1B 78 */	mr r31, r3
/* 80270B3C 0026C79C  4B FF DC 21 */	bl OSDisableInterrupts
/* 80270B40 0026C7A0  3C 80 80 51 */	lis r4, lbl_80514780@ha
/* 80270B44 0026C7A4  38 84 47 80 */	addi r4, r4, lbl_80514780@l
/* 80270B48 0026C7A8  80 04 00 48 */	lwz r0, 0x48(r4)
/* 80270B4C 0026C7AC  2C 00 00 00 */	cmpwi r0, 0
/* 80270B50 0026C7B0  41 82 00 10 */	beq lbl_80270B60
/* 80270B54 0026C7B4  4B FF DC 31 */	bl OSRestoreInterrupts
/* 80270B58 0026C7B8  38 A0 00 00 */	li r5, 0
/* 80270B5C 0026C7BC  48 00 00 14 */	b lbl_80270B70
lbl_80270B60:
/* 80270B60 0026C7C0  38 00 00 01 */	li r0, 1
/* 80270B64 0026C7C4  90 64 00 44 */	stw r3, 0x44(r4)
/* 80270B68 0026C7C8  38 A4 00 14 */	addi r5, r4, 0x14
/* 80270B6C 0026C7CC  90 04 00 48 */	stw r0, 0x48(r4)
lbl_80270B70:
/* 80270B70 0026C7D0  57 E0 08 3C */	slwi r0, r31, 1
/* 80270B74 0026C7D4  38 60 00 00 */	li r3, 0
/* 80270B78 0026C7D8  7C A5 02 14 */	add r5, r5, r0
/* 80270B7C 0026C7DC  38 80 00 14 */	li r4, 0x14
/* 80270B80 0026C7E0  A3 E5 00 1C */	lhz r31, 0x1c(r5)
/* 80270B84 0026C7E4  4B FF FB 91 */	bl UnlockSram
/* 80270B88 0026C7E8  7F E3 FB 78 */	mr r3, r31
/* 80270B8C 0026C7EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80270B90 0026C7F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80270B94 0026C7F4  7C 08 03 A6 */	mtlr r0
/* 80270B98 0026C7F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80270B9C 0026C7FC  4E 80 00 20 */	blr

.global OSSetWirelessID
OSSetWirelessID:
/* 80270BA0 0026C800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80270BA4 0026C804  7C 08 02 A6 */	mflr r0
/* 80270BA8 0026C808  90 01 00 14 */	stw r0, 0x14(r1)
/* 80270BAC 0026C80C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80270BB0 0026C810  7C 9F 23 78 */	mr r31, r4
/* 80270BB4 0026C814  93 C1 00 08 */	stw r30, 8(r1)
/* 80270BB8 0026C818  7C 7E 1B 78 */	mr r30, r3
/* 80270BBC 0026C81C  4B FF DB A1 */	bl OSDisableInterrupts
/* 80270BC0 0026C820  3C 80 80 51 */	lis r4, lbl_80514780@ha
/* 80270BC4 0026C824  38 84 47 80 */	addi r4, r4, lbl_80514780@l
/* 80270BC8 0026C828  80 04 00 48 */	lwz r0, 0x48(r4)
/* 80270BCC 0026C82C  2C 00 00 00 */	cmpwi r0, 0
/* 80270BD0 0026C830  41 82 00 10 */	beq lbl_80270BE0
/* 80270BD4 0026C834  4B FF DB B1 */	bl OSRestoreInterrupts
/* 80270BD8 0026C838  38 60 00 00 */	li r3, 0
/* 80270BDC 0026C83C  48 00 00 14 */	b lbl_80270BF0
lbl_80270BE0:
/* 80270BE0 0026C840  38 00 00 01 */	li r0, 1
/* 80270BE4 0026C844  90 64 00 44 */	stw r3, 0x44(r4)
/* 80270BE8 0026C848  38 64 00 14 */	addi r3, r4, 0x14
/* 80270BEC 0026C84C  90 04 00 48 */	stw r0, 0x48(r4)
lbl_80270BF0:
/* 80270BF0 0026C850  57 C0 08 3C */	slwi r0, r30, 1
/* 80270BF4 0026C854  7C 63 02 14 */	add r3, r3, r0
/* 80270BF8 0026C858  A0 03 00 1C */	lhz r0, 0x1c(r3)
/* 80270BFC 0026C85C  7C 1F 00 40 */	cmplw r31, r0
/* 80270C00 0026C860  41 82 00 18 */	beq lbl_80270C18
/* 80270C04 0026C864  B3 E3 00 1C */	sth r31, 0x1c(r3)
/* 80270C08 0026C868  38 60 00 01 */	li r3, 1
/* 80270C0C 0026C86C  38 80 00 14 */	li r4, 0x14
/* 80270C10 0026C870  4B FF FB 05 */	bl UnlockSram
/* 80270C14 0026C874  48 00 00 10 */	b lbl_80270C24
lbl_80270C18:
/* 80270C18 0026C878  38 60 00 00 */	li r3, 0
/* 80270C1C 0026C87C  38 80 00 14 */	li r4, 0x14
/* 80270C20 0026C880  4B FF FA F5 */	bl UnlockSram
lbl_80270C24:
/* 80270C24 0026C884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80270C28 0026C888  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80270C2C 0026C88C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80270C30 0026C890  7C 08 03 A6 */	mtlr r0
/* 80270C34 0026C894  38 21 00 10 */	addi r1, r1, 0x10
/* 80270C38 0026C898  4E 80 00 20 */	blr

.global __OSGetRTCFlags
__OSGetRTCFlags:
/* 80270C3C 0026C89C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80270C40 0026C8A0  7C 08 02 A6 */	mflr r0
/* 80270C44 0026C8A4  38 80 00 01 */	li r4, 1
/* 80270C48 0026C8A8  38 A0 00 00 */	li r5, 0
/* 80270C4C 0026C8AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80270C50 0026C8B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80270C54 0026C8B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80270C58 0026C8B8  7C 7E 1B 78 */	mr r30, r3
/* 80270C5C 0026C8BC  38 60 00 00 */	li r3, 0
/* 80270C60 0026C8C0  48 00 4B E5 */	bl EXILock
/* 80270C64 0026C8C4  2C 03 00 00 */	cmpwi r3, 0
/* 80270C68 0026C8C8  40 82 00 0C */	bne lbl_80270C74
/* 80270C6C 0026C8CC  38 60 00 00 */	li r3, 0
/* 80270C70 0026C8D0  48 00 00 D0 */	b lbl_80270D40
lbl_80270C74:
/* 80270C74 0026C8D4  38 60 00 00 */	li r3, 0
/* 80270C78 0026C8D8  38 80 00 01 */	li r4, 1
/* 80270C7C 0026C8DC  38 A0 00 03 */	li r5, 3
/* 80270C80 0026C8E0  48 00 44 31 */	bl EXISelect
/* 80270C84 0026C8E4  2C 03 00 00 */	cmpwi r3, 0
/* 80270C88 0026C8E8  40 82 00 14 */	bne lbl_80270C9C
/* 80270C8C 0026C8EC  38 60 00 00 */	li r3, 0
/* 80270C90 0026C8F0  48 00 4C B1 */	bl EXIUnlock
/* 80270C94 0026C8F4  38 60 00 00 */	li r3, 0
/* 80270C98 0026C8F8  48 00 00 A8 */	b lbl_80270D40
lbl_80270C9C:
/* 80270C9C 0026C8FC  3C 60 21 00 */	lis r3, 0x21000800@ha
/* 80270CA0 0026C900  38 81 00 08 */	addi r4, r1, 8
/* 80270CA4 0026C904  38 03 08 00 */	addi r0, r3, 0x21000800@l
/* 80270CA8 0026C908  38 A0 00 04 */	li r5, 4
/* 80270CAC 0026C90C  90 01 00 08 */	stw r0, 8(r1)
/* 80270CB0 0026C910  38 60 00 00 */	li r3, 0
/* 80270CB4 0026C914  38 C0 00 01 */	li r6, 1
/* 80270CB8 0026C918  38 E0 00 00 */	li r7, 0
/* 80270CBC 0026C91C  48 00 39 8D */	bl EXIImm
/* 80270CC0 0026C920  7C 60 00 34 */	cntlzw r0, r3
/* 80270CC4 0026C924  38 60 00 00 */	li r3, 0
/* 80270CC8 0026C928  54 1F D9 7E */	srwi r31, r0, 5
/* 80270CCC 0026C92C  48 00 3D 95 */	bl EXISync
/* 80270CD0 0026C930  7C 60 00 34 */	cntlzw r0, r3
/* 80270CD4 0026C934  38 81 00 08 */	addi r4, r1, 8
/* 80270CD8 0026C938  54 00 D9 7E */	srwi r0, r0, 5
/* 80270CDC 0026C93C  38 60 00 00 */	li r3, 0
/* 80270CE0 0026C940  7F FF 03 78 */	or r31, r31, r0
/* 80270CE4 0026C944  38 A0 00 04 */	li r5, 4
/* 80270CE8 0026C948  38 C0 00 00 */	li r6, 0
/* 80270CEC 0026C94C  38 E0 00 00 */	li r7, 0
/* 80270CF0 0026C950  48 00 39 59 */	bl EXIImm
/* 80270CF4 0026C954  7C 60 00 34 */	cntlzw r0, r3
/* 80270CF8 0026C958  38 60 00 00 */	li r3, 0
/* 80270CFC 0026C95C  54 00 D9 7E */	srwi r0, r0, 5
/* 80270D00 0026C960  7F FF 03 78 */	or r31, r31, r0
/* 80270D04 0026C964  48 00 3D 5D */	bl EXISync
/* 80270D08 0026C968  7C 60 00 34 */	cntlzw r0, r3
/* 80270D0C 0026C96C  38 60 00 00 */	li r3, 0
/* 80270D10 0026C970  54 00 D9 7E */	srwi r0, r0, 5
/* 80270D14 0026C974  7F FF 03 78 */	or r31, r31, r0
/* 80270D18 0026C978  48 00 44 C9 */	bl EXIDeselect
/* 80270D1C 0026C97C  7C 60 00 34 */	cntlzw r0, r3
/* 80270D20 0026C980  38 60 00 00 */	li r3, 0
/* 80270D24 0026C984  54 00 D9 7E */	srwi r0, r0, 5
/* 80270D28 0026C988  7F FF 03 78 */	or r31, r31, r0
/* 80270D2C 0026C98C  48 00 4C 15 */	bl EXIUnlock
/* 80270D30 0026C990  80 81 00 08 */	lwz r4, 8(r1)
/* 80270D34 0026C994  7F E0 00 34 */	cntlzw r0, r31
/* 80270D38 0026C998  54 03 D9 7E */	srwi r3, r0, 5
/* 80270D3C 0026C99C  90 9E 00 00 */	stw r4, 0(r30)
lbl_80270D40:
/* 80270D40 0026C9A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80270D44 0026C9A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80270D48 0026C9A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80270D4C 0026C9AC  7C 08 03 A6 */	mtlr r0
/* 80270D50 0026C9B0  38 21 00 20 */	addi r1, r1, 0x20
/* 80270D54 0026C9B4  4E 80 00 20 */	blr

.global __OSClearRTCFlags
__OSClearRTCFlags:
/* 80270D58 0026C9B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80270D5C 0026C9BC  7C 08 02 A6 */	mflr r0
/* 80270D60 0026C9C0  38 60 00 00 */	li r3, 0
/* 80270D64 0026C9C4  38 80 00 01 */	li r4, 1
/* 80270D68 0026C9C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80270D6C 0026C9CC  38 00 00 00 */	li r0, 0
/* 80270D70 0026C9D0  38 A0 00 00 */	li r5, 0
/* 80270D74 0026C9D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80270D78 0026C9D8  90 01 00 08 */	stw r0, 8(r1)
/* 80270D7C 0026C9DC  48 00 4A C9 */	bl EXILock
/* 80270D80 0026C9E0  2C 03 00 00 */	cmpwi r3, 0
/* 80270D84 0026C9E4  40 82 00 0C */	bne lbl_80270D90
/* 80270D88 0026C9E8  38 60 00 00 */	li r3, 0
/* 80270D8C 0026C9EC  48 00 00 C8 */	b lbl_80270E54
lbl_80270D90:
/* 80270D90 0026C9F0  38 60 00 00 */	li r3, 0
/* 80270D94 0026C9F4  38 80 00 01 */	li r4, 1
/* 80270D98 0026C9F8  38 A0 00 03 */	li r5, 3
/* 80270D9C 0026C9FC  48 00 43 15 */	bl EXISelect
/* 80270DA0 0026CA00  2C 03 00 00 */	cmpwi r3, 0
/* 80270DA4 0026CA04  40 82 00 14 */	bne lbl_80270DB8
/* 80270DA8 0026CA08  38 60 00 00 */	li r3, 0
/* 80270DAC 0026CA0C  48 00 4B 95 */	bl EXIUnlock
/* 80270DB0 0026CA10  38 60 00 00 */	li r3, 0
/* 80270DB4 0026CA14  48 00 00 A0 */	b lbl_80270E54
lbl_80270DB8:
/* 80270DB8 0026CA18  3C 60 A1 00 */	lis r3, 0xA1000800@ha
/* 80270DBC 0026CA1C  38 81 00 0C */	addi r4, r1, 0xc
/* 80270DC0 0026CA20  38 03 08 00 */	addi r0, r3, 0xA1000800@l
/* 80270DC4 0026CA24  38 A0 00 04 */	li r5, 4
/* 80270DC8 0026CA28  90 01 00 0C */	stw r0, 0xc(r1)
/* 80270DCC 0026CA2C  38 60 00 00 */	li r3, 0
/* 80270DD0 0026CA30  38 C0 00 01 */	li r6, 1
/* 80270DD4 0026CA34  38 E0 00 00 */	li r7, 0
/* 80270DD8 0026CA38  48 00 38 71 */	bl EXIImm
/* 80270DDC 0026CA3C  7C 60 00 34 */	cntlzw r0, r3
/* 80270DE0 0026CA40  38 60 00 00 */	li r3, 0
/* 80270DE4 0026CA44  54 1F D9 7E */	srwi r31, r0, 5
/* 80270DE8 0026CA48  48 00 3C 79 */	bl EXISync
/* 80270DEC 0026CA4C  7C 60 00 34 */	cntlzw r0, r3
/* 80270DF0 0026CA50  38 81 00 08 */	addi r4, r1, 8
/* 80270DF4 0026CA54  54 00 D9 7E */	srwi r0, r0, 5
/* 80270DF8 0026CA58  38 60 00 00 */	li r3, 0
/* 80270DFC 0026CA5C  7F FF 03 78 */	or r31, r31, r0
/* 80270E00 0026CA60  38 A0 00 04 */	li r5, 4
/* 80270E04 0026CA64  38 C0 00 01 */	li r6, 1
/* 80270E08 0026CA68  38 E0 00 00 */	li r7, 0
/* 80270E0C 0026CA6C  48 00 38 3D */	bl EXIImm
/* 80270E10 0026CA70  7C 60 00 34 */	cntlzw r0, r3
/* 80270E14 0026CA74  38 60 00 00 */	li r3, 0
/* 80270E18 0026CA78  54 00 D9 7E */	srwi r0, r0, 5
/* 80270E1C 0026CA7C  7F FF 03 78 */	or r31, r31, r0
/* 80270E20 0026CA80  48 00 3C 41 */	bl EXISync
/* 80270E24 0026CA84  7C 60 00 34 */	cntlzw r0, r3
/* 80270E28 0026CA88  38 60 00 00 */	li r3, 0
/* 80270E2C 0026CA8C  54 00 D9 7E */	srwi r0, r0, 5
/* 80270E30 0026CA90  7F FF 03 78 */	or r31, r31, r0
/* 80270E34 0026CA94  48 00 43 AD */	bl EXIDeselect
/* 80270E38 0026CA98  7C 60 00 34 */	cntlzw r0, r3
/* 80270E3C 0026CA9C  38 60 00 00 */	li r3, 0
/* 80270E40 0026CAA0  54 00 D9 7E */	srwi r0, r0, 5
/* 80270E44 0026CAA4  7F FF 03 78 */	or r31, r31, r0
/* 80270E48 0026CAA8  48 00 4A F9 */	bl EXIUnlock
/* 80270E4C 0026CAAC  7F E0 00 34 */	cntlzw r0, r31
/* 80270E50 0026CAB0  54 03 D9 7E */	srwi r3, r0, 5
lbl_80270E54:
/* 80270E54 0026CAB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80270E58 0026CAB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80270E5C 0026CABC  7C 08 03 A6 */	mtlr r0
/* 80270E60 0026CAC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80270E64 0026CAC4  4E 80 00 20 */	blr

.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global fread
fread:
/* 801C9584 001C51E4  48 00 00 04 */	b __fread

__fread:
/* 801C9588 001C51E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C958C 001C51EC  7C 08 02 A6 */	mflr r0
/* 801C9590 001C51F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C9594 001C51F4  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 801C9598 001C51F8  7C 9B 23 78 */	mr r27, r4
/* 801C959C 001C51FC  7C DC 33 78 */	mr r28, r6
/* 801C95A0 001C5200  7C 7A 1B 78 */	mr r26, r3
/* 801C95A4 001C5204  7C B9 2B 78 */	mr r25, r5
/* 801C95A8 001C5208  38 80 00 00 */	li r4, 0
/* 801C95AC 001C520C  7F 83 E3 78 */	mr r3, r28
/* 801C95B0 001C5210  48 00 72 B5 */	bl fwide
/* 801C95B4 001C5214  2C 03 00 00 */	cmpwi r3, 0
/* 801C95B8 001C5218  40 82 00 10 */	bne lbl_801C95C8
/* 801C95BC 001C521C  7F 83 E3 78 */	mr r3, r28
/* 801C95C0 001C5220  38 80 FF FF */	li r4, -1
/* 801C95C4 001C5224  48 00 72 A1 */	bl fwide
lbl_801C95C8:
/* 801C95C8 001C5228  7F DB C9 D7 */	mullw. r30, r27, r25
/* 801C95CC 001C522C  41 82 00 1C */	beq lbl_801C95E8
/* 801C95D0 001C5230  88 1C 00 0A */	lbz r0, 0xa(r28)
/* 801C95D4 001C5234  2C 00 00 00 */	cmpwi r0, 0
/* 801C95D8 001C5238  40 82 00 10 */	bne lbl_801C95E8
/* 801C95DC 001C523C  80 7C 00 04 */	lwz r3, 4(r28)
/* 801C95E0 001C5240  54 60 57 7F */	rlwinm. r0, r3, 0xa, 0x1d, 0x1f
/* 801C95E4 001C5244  40 82 00 0C */	bne lbl_801C95F0
lbl_801C95E8:
/* 801C95E8 001C5248  38 60 00 00 */	li r3, 0
/* 801C95EC 001C524C  48 00 02 C8 */	b lbl_801C98B4
lbl_801C95F0:
/* 801C95F0 001C5250  54 60 6F FF */	rlwinm. r0, r3, 0xd, 0x1f, 0x1f
/* 801C95F4 001C5254  3B E0 00 01 */	li r31, 1
/* 801C95F8 001C5258  41 82 00 14 */	beq lbl_801C960C
/* 801C95FC 001C525C  54 60 3F BE */	rlwinm r0, r3, 7, 0x1e, 0x1f
/* 801C9600 001C5260  28 00 00 02 */	cmplwi r0, 2
/* 801C9604 001C5264  41 82 00 08 */	beq lbl_801C960C
/* 801C9608 001C5268  3B E0 00 00 */	li r31, 0
lbl_801C960C:
/* 801C960C 001C526C  80 7C 00 08 */	lwz r3, 8(r28)
/* 801C9610 001C5270  54 60 1F 7F */	rlwinm. r0, r3, 3, 0x1d, 0x1f
/* 801C9614 001C5274  40 82 00 24 */	bne lbl_801C9638
/* 801C9618 001C5278  80 1C 00 04 */	lwz r0, 4(r28)
/* 801C961C 001C527C  54 00 2F FF */	rlwinm. r0, r0, 5, 0x1f, 0x1f
/* 801C9620 001C5280  41 82 00 18 */	beq lbl_801C9638
/* 801C9624 001C5284  38 00 00 02 */	li r0, 2
/* 801C9628 001C5288  50 03 E8 04 */	rlwimi r3, r0, 0x1d, 0, 2
/* 801C962C 001C528C  38 00 00 00 */	li r0, 0
/* 801C9630 001C5290  90 7C 00 08 */	stw r3, 8(r28)
/* 801C9634 001C5294  90 1C 00 28 */	stw r0, 0x28(r28)
lbl_801C9638:
/* 801C9638 001C5298  80 1C 00 08 */	lwz r0, 8(r28)
/* 801C963C 001C529C  54 00 1F 7E */	srwi r0, r0, 0x1d
/* 801C9640 001C52A0  28 00 00 02 */	cmplwi r0, 2
/* 801C9644 001C52A4  40 80 00 1C */	bge lbl_801C9660
/* 801C9648 001C52A8  38 60 00 01 */	li r3, 1
/* 801C964C 001C52AC  38 00 00 00 */	li r0, 0
/* 801C9650 001C52B0  98 7C 00 0A */	stb r3, 0xa(r28)
/* 801C9654 001C52B4  38 60 00 00 */	li r3, 0
/* 801C9658 001C52B8  90 1C 00 28 */	stw r0, 0x28(r28)
/* 801C965C 001C52BC  48 00 02 58 */	b lbl_801C98B4
lbl_801C9660:
/* 801C9660 001C52C0  80 1C 00 04 */	lwz r0, 4(r28)
/* 801C9664 001C52C4  54 00 3F FF */	rlwinm. r0, r0, 7, 0x1f, 0x1f
/* 801C9668 001C52C8  41 82 00 28 */	beq lbl_801C9690
/* 801C966C 001C52CC  4B FF E2 CD */	bl __flush_line_buffered_output_files
/* 801C9670 001C52D0  2C 03 00 00 */	cmpwi r3, 0
/* 801C9674 001C52D4  41 82 00 1C */	beq lbl_801C9690
/* 801C9678 001C52D8  38 60 00 01 */	li r3, 1
/* 801C967C 001C52DC  38 00 00 00 */	li r0, 0
/* 801C9680 001C52E0  98 7C 00 0A */	stb r3, 0xa(r28)
/* 801C9684 001C52E4  38 60 00 00 */	li r3, 0
/* 801C9688 001C52E8  90 1C 00 28 */	stw r0, 0x28(r28)
/* 801C968C 001C52EC  48 00 02 28 */	b lbl_801C98B4
lbl_801C9690:
/* 801C9690 001C52F0  2C 1E 00 00 */	cmpwi r30, 0
/* 801C9694 001C52F4  3B A0 00 00 */	li r29, 0
/* 801C9698 001C52F8  41 82 00 AC */	beq lbl_801C9744
/* 801C969C 001C52FC  80 1C 00 08 */	lwz r0, 8(r28)
/* 801C96A0 001C5300  54 00 1F 7E */	srwi r0, r0, 0x1d
/* 801C96A4 001C5304  28 00 00 03 */	cmplwi r0, 3
/* 801C96A8 001C5308  41 80 00 9C */	blt lbl_801C9744
lbl_801C96AC:
/* 801C96AC 001C530C  7F 83 E3 78 */	mr r3, r28
/* 801C96B0 001C5310  38 80 00 00 */	li r4, 0
/* 801C96B4 001C5314  48 00 71 B1 */	bl fwide
/* 801C96B8 001C5318  2C 03 00 01 */	cmpwi r3, 1
/* 801C96BC 001C531C  40 82 00 28 */	bne lbl_801C96E4
/* 801C96C0 001C5320  80 1C 00 08 */	lwz r0, 8(r28)
/* 801C96C4 001C5324  3B BD 00 02 */	addi r29, r29, 2
/* 801C96C8 001C5328  3B DE FF FE */	addi r30, r30, -2
/* 801C96CC 001C532C  54 00 27 3C */	rlwinm r0, r0, 4, 0x1c, 0x1e
/* 801C96D0 001C5330  7C 7C 02 14 */	add r3, r28, r0
/* 801C96D4 001C5334  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 801C96D8 001C5338  B0 1A 00 00 */	sth r0, 0(r26)
/* 801C96DC 001C533C  3B 5A 00 02 */	addi r26, r26, 2
/* 801C96E0 001C5340  48 00 00 24 */	b lbl_801C9704
lbl_801C96E4:
/* 801C96E4 001C5344  80 1C 00 08 */	lwz r0, 8(r28)
/* 801C96E8 001C5348  3B BD 00 01 */	addi r29, r29, 1
/* 801C96EC 001C534C  3B DE FF FF */	addi r30, r30, -1
/* 801C96F0 001C5350  54 00 1F 7E */	srwi r0, r0, 0x1d
/* 801C96F4 001C5354  7C 7C 02 14 */	add r3, r28, r0
/* 801C96F8 001C5358  88 03 00 0C */	lbz r0, 0xc(r3)
/* 801C96FC 001C535C  98 1A 00 00 */	stb r0, 0(r26)
/* 801C9700 001C5360  3B 5A 00 01 */	addi r26, r26, 1
lbl_801C9704:
/* 801C9704 001C5364  80 9C 00 08 */	lwz r4, 8(r28)
/* 801C9708 001C5368  2C 1E 00 00 */	cmpwi r30, 0
/* 801C970C 001C536C  54 83 1F 7E */	srwi r3, r4, 0x1d
/* 801C9710 001C5370  38 03 FF FF */	addi r0, r3, -1
/* 801C9714 001C5374  50 04 E8 04 */	rlwimi r4, r0, 0x1d, 0, 2
/* 801C9718 001C5378  90 9C 00 08 */	stw r4, 8(r28)
/* 801C971C 001C537C  41 82 00 10 */	beq lbl_801C972C
/* 801C9720 001C5380  54 80 1F 7E */	srwi r0, r4, 0x1d
/* 801C9724 001C5384  28 00 00 03 */	cmplwi r0, 3
/* 801C9728 001C5388  40 80 FF 84 */	bge lbl_801C96AC
lbl_801C972C:
/* 801C972C 001C538C  80 1C 00 08 */	lwz r0, 8(r28)
/* 801C9730 001C5390  54 00 1F 7E */	srwi r0, r0, 0x1d
/* 801C9734 001C5394  28 00 00 02 */	cmplwi r0, 2
/* 801C9738 001C5398  40 82 00 0C */	bne lbl_801C9744
/* 801C973C 001C539C  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 801C9740 001C53A0  90 1C 00 28 */	stw r0, 0x28(r28)
lbl_801C9744:
/* 801C9744 001C53A4  2C 1E 00 00 */	cmpwi r30, 0
/* 801C9748 001C53A8  41 82 00 D8 */	beq lbl_801C9820
/* 801C974C 001C53AC  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 801C9750 001C53B0  2C 00 00 00 */	cmpwi r0, 0
/* 801C9754 001C53B4  40 82 00 0C */	bne lbl_801C9760
/* 801C9758 001C53B8  2C 1F 00 00 */	cmpwi r31, 0
/* 801C975C 001C53BC  41 82 00 C4 */	beq lbl_801C9820
lbl_801C9760:
/* 801C9760 001C53C0  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 801C9764 001C53C4  2C 00 00 00 */	cmpwi r0, 0
/* 801C9768 001C53C8  40 82 00 5C */	bne lbl_801C97C4
/* 801C976C 001C53CC  7F 83 E3 78 */	mr r3, r28
/* 801C9770 001C53D0  38 80 00 00 */	li r4, 0
/* 801C9774 001C53D4  38 A0 00 00 */	li r5, 0
/* 801C9778 001C53D8  4B FF FC 59 */	bl __load_buffer
/* 801C977C 001C53DC  2C 03 00 00 */	cmpwi r3, 0
/* 801C9780 001C53E0  41 82 00 44 */	beq lbl_801C97C4
/* 801C9784 001C53E4  2C 03 00 01 */	cmpwi r3, 1
/* 801C9788 001C53E8  40 82 00 18 */	bne lbl_801C97A0
/* 801C978C 001C53EC  38 60 00 01 */	li r3, 1
/* 801C9790 001C53F0  38 00 00 00 */	li r0, 0
/* 801C9794 001C53F4  98 7C 00 0A */	stb r3, 0xa(r28)
/* 801C9798 001C53F8  90 1C 00 28 */	stw r0, 0x28(r28)
/* 801C979C 001C53FC  48 00 00 20 */	b lbl_801C97BC
lbl_801C97A0:
/* 801C97A0 001C5400  80 7C 00 08 */	lwz r3, 8(r28)
/* 801C97A4 001C5404  38 80 00 00 */	li r4, 0
/* 801C97A8 001C5408  38 00 00 01 */	li r0, 1
/* 801C97AC 001C540C  90 9C 00 28 */	stw r4, 0x28(r28)
/* 801C97B0 001C5410  54 63 00 FE */	clrlwi r3, r3, 3
/* 801C97B4 001C5414  90 7C 00 08 */	stw r3, 8(r28)
/* 801C97B8 001C5418  98 1C 00 09 */	stb r0, 9(r28)
lbl_801C97BC:
/* 801C97BC 001C541C  3B C0 00 00 */	li r30, 0
/* 801C97C0 001C5420  48 00 00 60 */	b lbl_801C9820
lbl_801C97C4:
/* 801C97C4 001C5424  80 BC 00 28 */	lwz r5, 0x28(r28)
/* 801C97C8 001C5428  7C 05 F0 40 */	cmplw r5, r30
/* 801C97CC 001C542C  90 A1 00 08 */	stw r5, 8(r1)
/* 801C97D0 001C5430  40 81 00 0C */	ble lbl_801C97DC
/* 801C97D4 001C5434  7F C5 F3 78 */	mr r5, r30
/* 801C97D8 001C5438  93 C1 00 08 */	stw r30, 8(r1)
lbl_801C97DC:
/* 801C97DC 001C543C  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 801C97E0 001C5440  7F 43 D3 78 */	mr r3, r26
/* 801C97E4 001C5444  4B E3 A8 1D */	bl memcpy
/* 801C97E8 001C5448  80 81 00 08 */	lwz r4, 8(r1)
/* 801C97EC 001C544C  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 801C97F0 001C5450  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 801C97F4 001C5454  7F C4 F0 51 */	subf. r30, r4, r30
/* 801C97F8 001C5458  7C 63 22 14 */	add r3, r3, r4
/* 801C97FC 001C545C  7F 5A 22 14 */	add r26, r26, r4
/* 801C9800 001C5460  90 7C 00 24 */	stw r3, 0x24(r28)
/* 801C9804 001C5464  7F BD 22 14 */	add r29, r29, r4
/* 801C9808 001C5468  80 61 00 08 */	lwz r3, 8(r1)
/* 801C980C 001C546C  7C 03 00 50 */	subf r0, r3, r0
/* 801C9810 001C5470  90 1C 00 28 */	stw r0, 0x28(r28)
/* 801C9814 001C5474  41 82 00 0C */	beq lbl_801C9820
/* 801C9818 001C5478  2C 1F 00 00 */	cmpwi r31, 0
/* 801C981C 001C547C  40 82 FF 44 */	bne lbl_801C9760
lbl_801C9820:
/* 801C9820 001C5480  2C 1E 00 00 */	cmpwi r30, 0
/* 801C9824 001C5484  41 82 00 8C */	beq lbl_801C98B0
/* 801C9828 001C5488  2C 1F 00 00 */	cmpwi r31, 0
/* 801C982C 001C548C  40 82 00 84 */	bne lbl_801C98B0
/* 801C9830 001C5490  83 FC 00 1C */	lwz r31, 0x1c(r28)
/* 801C9834 001C5494  7F 83 E3 78 */	mr r3, r28
/* 801C9838 001C5498  83 3C 00 20 */	lwz r25, 0x20(r28)
/* 801C983C 001C549C  38 81 00 08 */	addi r4, r1, 8
/* 801C9840 001C54A0  93 5C 00 1C */	stw r26, 0x1c(r28)
/* 801C9844 001C54A4  38 A0 00 01 */	li r5, 1
/* 801C9848 001C54A8  93 DC 00 20 */	stw r30, 0x20(r28)
/* 801C984C 001C54AC  4B FF FB 85 */	bl __load_buffer
/* 801C9850 001C54B0  2C 03 00 00 */	cmpwi r3, 0
/* 801C9854 001C54B4  41 82 00 3C */	beq lbl_801C9890
/* 801C9858 001C54B8  2C 03 00 01 */	cmpwi r3, 1
/* 801C985C 001C54BC  40 82 00 18 */	bne lbl_801C9874
/* 801C9860 001C54C0  38 60 00 01 */	li r3, 1
/* 801C9864 001C54C4  38 00 00 00 */	li r0, 0
/* 801C9868 001C54C8  98 7C 00 0A */	stb r3, 0xa(r28)
/* 801C986C 001C54CC  90 1C 00 28 */	stw r0, 0x28(r28)
/* 801C9870 001C54D0  48 00 00 20 */	b lbl_801C9890
lbl_801C9874:
/* 801C9874 001C54D4  80 7C 00 08 */	lwz r3, 8(r28)
/* 801C9878 001C54D8  38 80 00 00 */	li r4, 0
/* 801C987C 001C54DC  38 00 00 01 */	li r0, 1
/* 801C9880 001C54E0  90 9C 00 28 */	stw r4, 0x28(r28)
/* 801C9884 001C54E4  54 63 00 FE */	clrlwi r3, r3, 3
/* 801C9888 001C54E8  90 7C 00 08 */	stw r3, 8(r28)
/* 801C988C 001C54EC  98 1C 00 09 */	stb r0, 9(r28)
lbl_801C9890:
/* 801C9890 001C54F0  80 01 00 08 */	lwz r0, 8(r1)
/* 801C9894 001C54F4  7F 83 E3 78 */	mr r3, r28
/* 801C9898 001C54F8  93 FC 00 1C */	stw r31, 0x1c(r28)
/* 801C989C 001C54FC  7F BD 02 14 */	add r29, r29, r0
/* 801C98A0 001C5500  93 3C 00 20 */	stw r25, 0x20(r28)
/* 801C98A4 001C5504  4B FF FB 05 */	bl __prep_buffer
/* 801C98A8 001C5508  38 00 00 00 */	li r0, 0
/* 801C98AC 001C550C  90 1C 00 28 */	stw r0, 0x28(r28)
lbl_801C98B0:
/* 801C98B0 001C5510  7C 7D DB 96 */	divwu r3, r29, r27
lbl_801C98B4:
/* 801C98B4 001C5514  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 801C98B8 001C5518  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C98BC 001C551C  7C 08 03 A6 */	mtlr r0
/* 801C98C0 001C5520  38 21 00 30 */	addi r1, r1, 0x30
/* 801C98C4 001C5524  4E 80 00 20 */	blr

.global __fwrite
__fwrite:
/* 801C98C8 001C5528  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C98CC 001C552C  7C 08 02 A6 */	mflr r0
/* 801C98D0 001C5530  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C98D4 001C5534  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 801C98D8 001C5538  7C 9B 23 78 */	mr r27, r4
/* 801C98DC 001C553C  7C DC 33 78 */	mr r28, r6
/* 801C98E0 001C5540  7C 7A 1B 78 */	mr r26, r3
/* 801C98E4 001C5544  7C B9 2B 78 */	mr r25, r5
/* 801C98E8 001C5548  38 80 00 00 */	li r4, 0
/* 801C98EC 001C554C  7F 83 E3 78 */	mr r3, r28
/* 801C98F0 001C5550  48 00 6F 75 */	bl fwide
/* 801C98F4 001C5554  2C 03 00 00 */	cmpwi r3, 0
/* 801C98F8 001C5558  40 82 00 10 */	bne lbl_801C9908
/* 801C98FC 001C555C  7F 83 E3 78 */	mr r3, r28
/* 801C9900 001C5560  38 80 FF FF */	li r4, -1
/* 801C9904 001C5564  48 00 6F 61 */	bl fwide
lbl_801C9908:
/* 801C9908 001C5568  7F DB C9 D7 */	mullw. r30, r27, r25
/* 801C990C 001C556C  41 82 00 1C */	beq lbl_801C9928
/* 801C9910 001C5570  88 1C 00 0A */	lbz r0, 0xa(r28)
/* 801C9914 001C5574  2C 00 00 00 */	cmpwi r0, 0
/* 801C9918 001C5578  40 82 00 10 */	bne lbl_801C9928
/* 801C991C 001C557C  80 1C 00 04 */	lwz r0, 4(r28)
/* 801C9920 001C5580  54 00 57 7F */	rlwinm. r0, r0, 0xa, 0x1d, 0x1f
/* 801C9924 001C5584  40 82 00 0C */	bne lbl_801C9930
lbl_801C9928:
/* 801C9928 001C5588  38 60 00 00 */	li r3, 0
/* 801C992C 001C558C  48 00 02 90 */	b lbl_801C9BBC
lbl_801C9930:
/* 801C9930 001C5590  28 00 00 02 */	cmplwi r0, 2
/* 801C9934 001C5594  40 82 00 08 */	bne lbl_801C993C
/* 801C9938 001C5598  48 00 0E 79 */	bl __stdio_atexit
lbl_801C993C:
/* 801C993C 001C559C  80 7C 00 04 */	lwz r3, 4(r28)
/* 801C9940 001C55A0  3B E0 00 01 */	li r31, 1
/* 801C9944 001C55A4  38 80 00 00 */	li r4, 0
/* 801C9948 001C55A8  54 60 6F FF */	rlwinm. r0, r3, 0xd, 0x1f, 0x1f
/* 801C994C 001C55AC  41 82 00 10 */	beq lbl_801C995C
/* 801C9950 001C55B0  54 60 3F BE */	rlwinm r0, r3, 7, 0x1e, 0x1f
/* 801C9954 001C55B4  28 00 00 02 */	cmplwi r0, 2
/* 801C9958 001C55B8  40 82 00 08 */	bne lbl_801C9960
lbl_801C995C:
/* 801C995C 001C55BC  38 80 00 01 */	li r4, 1
lbl_801C9960:
/* 801C9960 001C55C0  2C 04 00 00 */	cmpwi r4, 0
/* 801C9964 001C55C4  40 82 00 18 */	bne lbl_801C997C
/* 801C9968 001C55C8  80 1C 00 04 */	lwz r0, 4(r28)
/* 801C996C 001C55CC  54 00 3F BE */	rlwinm r0, r0, 7, 0x1e, 0x1f
/* 801C9970 001C55D0  28 00 00 01 */	cmplwi r0, 1
/* 801C9974 001C55D4  41 82 00 08 */	beq lbl_801C997C
/* 801C9978 001C55D8  3B E0 00 00 */	li r31, 0
lbl_801C997C:
/* 801C997C 001C55DC  80 1C 00 08 */	lwz r0, 8(r28)
/* 801C9980 001C55E0  54 00 1F 7F */	rlwinm. r0, r0, 3, 0x1d, 0x1f
/* 801C9984 001C55E4  40 82 00 54 */	bne lbl_801C99D8
/* 801C9988 001C55E8  80 7C 00 04 */	lwz r3, 4(r28)
/* 801C998C 001C55EC  54 60 2F BD */	rlwinm. r0, r3, 5, 0x1e, 0x1e
/* 801C9990 001C55F0  54 60 2F 7E */	rlwinm r0, r3, 5, 0x1d, 0x1f
/* 801C9994 001C55F4  41 82 00 44 */	beq lbl_801C99D8
/* 801C9998 001C55F8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801C999C 001C55FC  41 82 00 24 */	beq lbl_801C99C0
/* 801C99A0 001C5600  7F 83 E3 78 */	mr r3, r28
/* 801C99A4 001C5604  38 80 00 00 */	li r4, 0
/* 801C99A8 001C5608  38 A0 00 02 */	li r5, 2
/* 801C99AC 001C560C  48 00 05 81 */	bl _fseek
/* 801C99B0 001C5610  2C 03 00 00 */	cmpwi r3, 0
/* 801C99B4 001C5614  41 82 00 0C */	beq lbl_801C99C0
/* 801C99B8 001C5618  38 60 00 00 */	li r3, 0
/* 801C99BC 001C561C  48 00 02 00 */	b lbl_801C9BBC
lbl_801C99C0:
/* 801C99C0 001C5620  80 1C 00 08 */	lwz r0, 8(r28)
/* 801C99C4 001C5624  38 60 00 01 */	li r3, 1
/* 801C99C8 001C5628  50 60 E8 04 */	rlwimi r0, r3, 0x1d, 0, 2
/* 801C99CC 001C562C  90 1C 00 08 */	stw r0, 8(r28)
/* 801C99D0 001C5630  7F 83 E3 78 */	mr r3, r28
/* 801C99D4 001C5634  4B FF F9 D5 */	bl __prep_buffer
lbl_801C99D8:
/* 801C99D8 001C5638  80 1C 00 08 */	lwz r0, 8(r28)
/* 801C99DC 001C563C  54 00 1F 7E */	srwi r0, r0, 0x1d
/* 801C99E0 001C5640  28 00 00 01 */	cmplwi r0, 1
/* 801C99E4 001C5644  41 82 00 1C */	beq lbl_801C9A00
/* 801C99E8 001C5648  38 60 00 01 */	li r3, 1
/* 801C99EC 001C564C  38 00 00 00 */	li r0, 0
/* 801C99F0 001C5650  98 7C 00 0A */	stb r3, 0xa(r28)
/* 801C99F4 001C5654  38 60 00 00 */	li r3, 0
/* 801C99F8 001C5658  90 1C 00 28 */	stw r0, 0x28(r28)
/* 801C99FC 001C565C  48 00 01 C0 */	b lbl_801C9BBC
lbl_801C9A00:
/* 801C9A00 001C5660  2C 1E 00 00 */	cmpwi r30, 0
/* 801C9A04 001C5664  3B A0 00 00 */	li r29, 0
/* 801C9A08 001C5668  41 82 01 28 */	beq lbl_801C9B30
/* 801C9A0C 001C566C  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 801C9A10 001C5670  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 801C9A14 001C5674  7C 04 18 40 */	cmplw r4, r3
/* 801C9A18 001C5678  40 82 00 0C */	bne lbl_801C9A24
/* 801C9A1C 001C567C  2C 1F 00 00 */	cmpwi r31, 0
/* 801C9A20 001C5680  41 82 01 10 */	beq lbl_801C9B30
lbl_801C9A24:
/* 801C9A24 001C5684  80 1C 00 20 */	lwz r0, 0x20(r28)
/* 801C9A28 001C5688  7C 63 20 50 */	subf r3, r3, r4
/* 801C9A2C 001C568C  7C 03 00 50 */	subf r0, r3, r0
/* 801C9A30 001C5690  90 1C 00 28 */	stw r0, 0x28(r28)
lbl_801C9A34:
/* 801C9A34 001C5694  80 BC 00 28 */	lwz r5, 0x28(r28)
/* 801C9A38 001C5698  3B 20 00 00 */	li r25, 0
/* 801C9A3C 001C569C  7C 05 F0 40 */	cmplw r5, r30
/* 801C9A40 001C56A0  90 A1 00 08 */	stw r5, 8(r1)
/* 801C9A44 001C56A4  40 81 00 0C */	ble lbl_801C9A50
/* 801C9A48 001C56A8  7F C5 F3 78 */	mr r5, r30
/* 801C9A4C 001C56AC  93 C1 00 08 */	stw r30, 8(r1)
lbl_801C9A50:
/* 801C9A50 001C56B0  80 1C 00 04 */	lwz r0, 4(r28)
/* 801C9A54 001C56B4  54 00 3F BE */	rlwinm r0, r0, 7, 0x1e, 0x1f
/* 801C9A58 001C56B8  28 00 00 01 */	cmplwi r0, 1
/* 801C9A5C 001C56BC  40 82 00 30 */	bne lbl_801C9A8C
/* 801C9A60 001C56C0  2C 05 00 00 */	cmpwi r5, 0
/* 801C9A64 001C56C4  41 82 00 28 */	beq lbl_801C9A8C
/* 801C9A68 001C56C8  7F 43 D3 78 */	mr r3, r26
/* 801C9A6C 001C56CC  38 80 00 0A */	li r4, 0xa
/* 801C9A70 001C56D0  48 00 08 FD */	bl __memrchr
/* 801C9A74 001C56D4  2C 03 00 00 */	cmpwi r3, 0
/* 801C9A78 001C56D8  7C 79 1B 78 */	mr r25, r3
/* 801C9A7C 001C56DC  41 82 00 10 */	beq lbl_801C9A8C
/* 801C9A80 001C56E0  38 03 00 01 */	addi r0, r3, 1
/* 801C9A84 001C56E4  7C BA 00 50 */	subf r5, r26, r0
/* 801C9A88 001C56E8  90 A1 00 08 */	stw r5, 8(r1)
lbl_801C9A8C:
/* 801C9A8C 001C56EC  80 A1 00 08 */	lwz r5, 8(r1)
/* 801C9A90 001C56F0  2C 05 00 00 */	cmpwi r5, 0
/* 801C9A94 001C56F4  41 82 00 38 */	beq lbl_801C9ACC
/* 801C9A98 001C56F8  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 801C9A9C 001C56FC  7F 44 D3 78 */	mr r4, r26
/* 801C9AA0 001C5700  4B E3 A5 61 */	bl memcpy
/* 801C9AA4 001C5704  80 81 00 08 */	lwz r4, 8(r1)
/* 801C9AA8 001C5708  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 801C9AAC 001C570C  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 801C9AB0 001C5710  7F 5A 22 14 */	add r26, r26, r4
/* 801C9AB4 001C5714  7C 63 22 14 */	add r3, r3, r4
/* 801C9AB8 001C5718  7F C4 F0 50 */	subf r30, r4, r30
/* 801C9ABC 001C571C  90 7C 00 24 */	stw r3, 0x24(r28)
/* 801C9AC0 001C5720  80 61 00 08 */	lwz r3, 8(r1)
/* 801C9AC4 001C5724  7C 03 00 50 */	subf r0, r3, r0
/* 801C9AC8 001C5728  90 1C 00 28 */	stw r0, 0x28(r28)
lbl_801C9ACC:
/* 801C9ACC 001C572C  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 801C9AD0 001C5730  2C 00 00 00 */	cmpwi r0, 0
/* 801C9AD4 001C5734  41 82 00 18 */	beq lbl_801C9AEC
/* 801C9AD8 001C5738  2C 19 00 00 */	cmpwi r25, 0
/* 801C9ADC 001C573C  40 82 00 10 */	bne lbl_801C9AEC
/* 801C9AE0 001C5740  80 1C 00 04 */	lwz r0, 4(r28)
/* 801C9AE4 001C5744  54 00 3F BF */	rlwinm. r0, r0, 7, 0x1e, 0x1f
/* 801C9AE8 001C5748  40 82 00 30 */	bne lbl_801C9B18
lbl_801C9AEC:
/* 801C9AEC 001C574C  7F 83 E3 78 */	mr r3, r28
/* 801C9AF0 001C5750  38 80 00 00 */	li r4, 0
/* 801C9AF4 001C5754  4B FF F9 D9 */	bl __flush_buffer
/* 801C9AF8 001C5758  2C 03 00 00 */	cmpwi r3, 0
/* 801C9AFC 001C575C  41 82 00 1C */	beq lbl_801C9B18
/* 801C9B00 001C5760  38 60 00 01 */	li r3, 1
/* 801C9B04 001C5764  38 00 00 00 */	li r0, 0
/* 801C9B08 001C5768  98 7C 00 0A */	stb r3, 0xa(r28)
/* 801C9B0C 001C576C  3B C0 00 00 */	li r30, 0
/* 801C9B10 001C5770  90 1C 00 28 */	stw r0, 0x28(r28)
/* 801C9B14 001C5774  48 00 00 1C */	b lbl_801C9B30
lbl_801C9B18:
/* 801C9B18 001C5778  80 01 00 08 */	lwz r0, 8(r1)
/* 801C9B1C 001C577C  2C 1E 00 00 */	cmpwi r30, 0
/* 801C9B20 001C5780  7F BD 02 14 */	add r29, r29, r0
/* 801C9B24 001C5784  41 82 00 0C */	beq lbl_801C9B30
/* 801C9B28 001C5788  2C 1F 00 00 */	cmpwi r31, 0
/* 801C9B2C 001C578C  40 82 FF 08 */	bne lbl_801C9A34
lbl_801C9B30:
/* 801C9B30 001C5790  2C 1E 00 00 */	cmpwi r30, 0
/* 801C9B34 001C5794  41 82 00 6C */	beq lbl_801C9BA0
/* 801C9B38 001C5798  2C 1F 00 00 */	cmpwi r31, 0
/* 801C9B3C 001C579C  40 82 00 64 */	bne lbl_801C9BA0
/* 801C9B40 001C57A0  83 3C 00 1C */	lwz r25, 0x1c(r28)
/* 801C9B44 001C57A4  7C 1A F2 14 */	add r0, r26, r30
/* 801C9B48 001C57A8  83 FC 00 20 */	lwz r31, 0x20(r28)
/* 801C9B4C 001C57AC  7F 83 E3 78 */	mr r3, r28
/* 801C9B50 001C57B0  93 5C 00 1C */	stw r26, 0x1c(r28)
/* 801C9B54 001C57B4  38 81 00 08 */	addi r4, r1, 8
/* 801C9B58 001C57B8  93 DC 00 20 */	stw r30, 0x20(r28)
/* 801C9B5C 001C57BC  90 1C 00 24 */	stw r0, 0x24(r28)
/* 801C9B60 001C57C0  4B FF F9 6D */	bl __flush_buffer
/* 801C9B64 001C57C4  2C 03 00 00 */	cmpwi r3, 0
/* 801C9B68 001C57C8  41 82 00 18 */	beq lbl_801C9B80
/* 801C9B6C 001C57CC  38 60 00 01 */	li r3, 1
/* 801C9B70 001C57D0  38 00 00 00 */	li r0, 0
/* 801C9B74 001C57D4  98 7C 00 0A */	stb r3, 0xa(r28)
/* 801C9B78 001C57D8  90 1C 00 28 */	stw r0, 0x28(r28)
/* 801C9B7C 001C57DC  48 00 00 0C */	b lbl_801C9B88
lbl_801C9B80:
/* 801C9B80 001C57E0  80 01 00 08 */	lwz r0, 8(r1)
/* 801C9B84 001C57E4  7F BD 02 14 */	add r29, r29, r0
lbl_801C9B88:
/* 801C9B88 001C57E8  93 3C 00 1C */	stw r25, 0x1c(r28)
/* 801C9B8C 001C57EC  7F 83 E3 78 */	mr r3, r28
/* 801C9B90 001C57F0  93 FC 00 20 */	stw r31, 0x20(r28)
/* 801C9B94 001C57F4  4B FF F8 15 */	bl __prep_buffer
/* 801C9B98 001C57F8  38 00 00 00 */	li r0, 0
/* 801C9B9C 001C57FC  90 1C 00 28 */	stw r0, 0x28(r28)
lbl_801C9BA0:
/* 801C9BA0 001C5800  80 1C 00 04 */	lwz r0, 4(r28)
/* 801C9BA4 001C5804  54 00 3F BE */	rlwinm r0, r0, 7, 0x1e, 0x1f
/* 801C9BA8 001C5808  28 00 00 02 */	cmplwi r0, 2
/* 801C9BAC 001C580C  41 82 00 0C */	beq lbl_801C9BB8
/* 801C9BB0 001C5810  38 00 00 00 */	li r0, 0
/* 801C9BB4 001C5814  90 1C 00 28 */	stw r0, 0x28(r28)
lbl_801C9BB8:
/* 801C9BB8 001C5818  7C 7D DB 96 */	divwu r3, r29, r27
lbl_801C9BBC:
/* 801C9BBC 001C581C  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 801C9BC0 001C5820  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C9BC4 001C5824  7C 08 03 A6 */	mtlr r0
/* 801C9BC8 001C5828  38 21 00 30 */	addi r1, r1, 0x30
/* 801C9BCC 001C582C  4E 80 00 20 */	blr

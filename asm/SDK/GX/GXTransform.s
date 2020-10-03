.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global GXProject
GXProject:
/* 8028680C 0028246C  C0 A3 00 00 */	lfs f5, 0(r3)
/* 80286810 00282470  C0 83 00 04 */	lfs f4, 4(r3)
/* 80286814 00282474  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80286818 00282478  ED 85 00 72 */	fmuls f12, f5, f1
/* 8028681C 0028247C  C0 A3 00 14 */	lfs f5, 0x14(r3)
/* 80286820 00282480  EC E4 00 B2 */	fmuls f7, f4, f2
/* 80286824 00282484  ED 20 00 72 */	fmuls f9, f0, f1
/* 80286828 00282488  C0 83 00 20 */	lfs f4, 0x20(r3)
/* 8028682C 0028248C  ED 05 00 B2 */	fmuls f8, f5, f2
/* 80286830 00282490  EC A4 00 72 */	fmuls f5, f4, f1
/* 80286834 00282494  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80286838 00282498  C1 63 00 08 */	lfs f11, 8(r3)
/* 8028683C 0028249C  EC 80 00 B2 */	fmuls f4, f0, f2
/* 80286840 002824A0  C1 43 00 18 */	lfs f10, 0x18(r3)
/* 80286844 002824A4  C0 C3 00 28 */	lfs f6, 0x28(r3)
/* 80286848 002824A8  ED AB 00 F2 */	fmuls f13, f11, f3
/* 8028684C 002824AC  C1 63 00 0C */	lfs f11, 0xc(r3)
/* 80286850 002824B0  EC 0C 38 2A */	fadds f0, f12, f7
/* 80286854 002824B4  ED 09 40 2A */	fadds f8, f9, f8
/* 80286858 002824B8  C0 E3 00 1C */	lfs f7, 0x1c(r3)
/* 8028685C 002824BC  ED 4A 00 F2 */	fmuls f10, f10, f3
/* 80286860 002824C0  ED 2D 00 2A */	fadds f9, f13, f0
/* 80286864 002824C4  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 80286868 002824C8  EC C6 00 F2 */	fmuls f6, f6, f3
/* 8028686C 002824CC  EC 65 20 2A */	fadds f3, f5, f4
/* 80286870 002824D0  C0 22 A2 00 */	lfs f1, lbl_80642800-_SDA2_BASE_(r2)
/* 80286874 002824D4  EC 8A 40 2A */	fadds f4, f10, f8
/* 80286878 002824D8  C0 04 00 00 */	lfs f0, 0(r4)
/* 8028687C 002824DC  ED 2B 48 2A */	fadds f9, f11, f9
/* 80286880 002824E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80286884 002824E4  ED 07 20 2A */	fadds f8, f7, f4
/* 80286888 002824E8  EC 66 18 2A */	fadds f3, f6, f3
/* 8028688C 002824EC  D1 21 00 08 */	stfs f9, 8(r1)
/* 80286890 002824F0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80286894 002824F4  D1 01 00 0C */	stfs f8, 0xc(r1)
/* 80286898 002824F8  EC E2 18 2A */	fadds f7, f2, f3
/* 8028689C 002824FC  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 802868A0 00282500  40 82 00 4C */	bne lbl_802868EC
/* 802868A4 00282504  FC 20 38 50 */	fneg f1, f7
/* 802868A8 00282508  C0 02 A2 04 */	lfs f0, lbl_80642804-_SDA2_BASE_(r2)
/* 802868AC 0028250C  C0 C4 00 04 */	lfs f6, 4(r4)
/* 802868B0 00282510  C0 A4 00 08 */	lfs f5, 8(r4)
/* 802868B4 00282514  EC 00 08 24 */	fdivs f0, f0, f1
/* 802868B8 00282518  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 802868BC 0028251C  C0 64 00 10 */	lfs f3, 0x10(r4)
/* 802868C0 00282520  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 802868C4 00282524  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 802868C8 00282528  EC 47 00 B2 */	fmuls f2, f7, f2
/* 802868CC 0028252C  EC C9 01 B2 */	fmuls f6, f9, f6
/* 802868D0 00282530  EC A7 01 72 */	fmuls f5, f7, f5
/* 802868D4 00282534  EC 67 00 F2 */	fmuls f3, f7, f3
/* 802868D8 00282538  EC 88 01 32 */	fmuls f4, f8, f4
/* 802868DC 0028253C  EC E6 28 2A */	fadds f7, f6, f5
/* 802868E0 00282540  ED 41 10 2A */	fadds f10, f1, f2
/* 802868E4 00282544  EC 64 18 2A */	fadds f3, f4, f3
/* 802868E8 00282548  48 00 00 38 */	b lbl_80286920
lbl_802868EC:
/* 802868EC 0028254C  C0 44 00 04 */	lfs f2, 4(r4)
/* 802868F0 00282550  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 802868F4 00282554  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 802868F8 00282558  EC C9 00 B2 */	fmuls f6, f9, f2
/* 802868FC 0028255C  EC 88 00 72 */	fmuls f4, f8, f1
/* 80286900 00282560  C0 64 00 10 */	lfs f3, 0x10(r4)
/* 80286904 00282564  EC 47 00 32 */	fmuls f2, f7, f0
/* 80286908 00282568  C0 A4 00 08 */	lfs f5, 8(r4)
/* 8028690C 0028256C  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 80286910 00282570  EC E5 30 2A */	fadds f7, f5, f6
/* 80286914 00282574  EC 63 20 2A */	fadds f3, f3, f4
/* 80286918 00282578  C0 02 A2 04 */	lfs f0, lbl_80642804-_SDA2_BASE_(r2)
/* 8028691C 0028257C  ED 41 10 2A */	fadds f10, f1, f2
lbl_80286920:
/* 80286920 00282580  C0 C5 00 08 */	lfs f6, 8(r5)
/* 80286924 00282584  FC 20 18 50 */	fneg f1, f3
/* 80286928 00282588  C0 A5 00 0C */	lfs f5, 0xc(r5)
/* 8028692C 0028258C  EC 87 01 B2 */	fmuls f4, f7, f6
/* 80286930 00282590  C1 22 A2 08 */	lfs f9, lbl_80642808-_SDA2_BASE_(r2)
/* 80286934 00282594  EC 61 01 72 */	fmuls f3, f1, f5
/* 80286938 00282598  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 8028693C 0028259C  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 80286940 002825A0  ED 06 02 72 */	fmuls f8, f6, f9
/* 80286944 002825A4  EC E4 02 72 */	fmuls f7, f4, f9
/* 80286948 002825A8  C0 C5 00 00 */	lfs f6, 0(r5)
/* 8028694C 002825AC  EC 83 02 72 */	fmuls f4, f3, f9
/* 80286950 002825B0  C0 65 00 04 */	lfs f3, 4(r5)
/* 80286954 002825B4  EC 22 08 28 */	fsubs f1, f2, f1
/* 80286958 002825B8  EC E0 01 F2 */	fmuls f7, f0, f7
/* 8028695C 002825BC  EC 80 01 32 */	fmuls f4, f0, f4
/* 80286960 002825C0  EC 2A 00 72 */	fmuls f1, f10, f1
/* 80286964 002825C4  EC C6 38 2A */	fadds f6, f6, f7
/* 80286968 002825C8  EC 63 20 2A */	fadds f3, f3, f4
/* 8028696C 002825CC  EC A5 02 72 */	fmuls f5, f5, f9
/* 80286970 002825D0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80286974 002825D4  EC 88 30 2A */	fadds f4, f8, f6
/* 80286978 002825D8  EC 25 18 2A */	fadds f1, f5, f3
/* 8028697C 002825DC  EC 02 00 2A */	fadds f0, f2, f0
/* 80286980 002825E0  D0 86 00 00 */	stfs f4, 0(r6)
/* 80286984 002825E4  D0 27 00 00 */	stfs f1, 0(r7)
/* 80286988 002825E8  D0 08 00 00 */	stfs f0, 0(r8)
/* 8028698C 002825EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80286990 002825F0  4E 80 00 20 */	blr

.global __GXSetProjection
__GXSetProjection:
/* 80286994 002825F4  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80286998 002825F8  38 00 00 10 */	li r0, 0x10
/* 8028699C 002825FC  3C 60 00 06 */	lis r3, 0x00061020@ha
/* 802869A0 00282600  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 802869A4 00282604  38 03 10 20 */	addi r0, r3, 0x00061020@l
/* 802869A8 00282608  80 62 A0 D0 */	lwz r3, lbl_806426D0-_SDA2_BASE_(r2)
/* 802869AC 0028260C  90 04 80 00 */	stw r0, -0x8000(r4)
/* 802869B0 00282610  38 A4 80 00 */	addi r5, r4, -32768
/* 802869B4 00282614  E0 43 05 2C */	psq_l f2, 1324(r3), 0, qr0
/* 802869B8 00282618  E0 23 05 34 */	psq_l f1, 1332(r3), 0, qr0
/* 802869BC 0028261C  E0 03 05 3C */	psq_l f0, 1340(r3), 0, qr0
/* 802869C0 00282620  F0 45 00 00 */	psq_st f2, 0(r5), 0, qr0
/* 802869C4 00282624  F0 25 00 00 */	psq_st f1, 0(r5), 0, qr0
/* 802869C8 00282628  F0 05 00 00 */	psq_st f0, 0(r5), 0, qr0
/* 802869CC 0028262C  80 03 05 28 */	lwz r0, 0x528(r3)
/* 802869D0 00282630  90 04 80 00 */	stw r0, -0x8000(r4)
/* 802869D4 00282634  4E 80 00 20 */	blr

.global GXSetProjection
GXSetProjection:
/* 802869D8 00282638  80 A2 A0 D0 */	lwz r5, lbl_806426D0-_SDA2_BASE_(r2)
/* 802869DC 0028263C  2C 04 00 01 */	cmpwi r4, 1
/* 802869E0 00282640  C0 23 00 00 */	lfs f1, 0(r3)
/* 802869E4 00282644  90 85 05 28 */	stw r4, 0x528(r5)
/* 802869E8 00282648  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 802869EC 0028264C  D0 25 05 2C */	stfs f1, 0x52c(r5)
/* 802869F0 00282650  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 802869F4 00282654  D0 05 05 34 */	stfs f0, 0x534(r5)
/* 802869F8 00282658  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 802869FC 0028265C  D0 25 05 3C */	stfs f1, 0x53c(r5)
/* 80286A00 00282660  D0 05 05 40 */	stfs f0, 0x540(r5)
/* 80286A04 00282664  40 82 00 18 */	bne lbl_80286A1C
/* 80286A08 00282668  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80286A0C 0028266C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80286A10 00282670  D0 25 05 30 */	stfs f1, 0x530(r5)
/* 80286A14 00282674  D0 05 05 38 */	stfs f0, 0x538(r5)
/* 80286A18 00282678  48 00 00 14 */	b lbl_80286A2C
lbl_80286A1C:
/* 80286A1C 0028267C  C0 23 00 08 */	lfs f1, 8(r3)
/* 80286A20 00282680  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80286A24 00282684  D0 25 05 30 */	stfs f1, 0x530(r5)
/* 80286A28 00282688  D0 05 05 38 */	stfs f0, 0x538(r5)
lbl_80286A2C:
/* 80286A2C 0028268C  80 05 05 FC */	lwz r0, 0x5fc(r5)
/* 80286A30 00282690  64 00 08 00 */	oris r0, r0, 0x800
/* 80286A34 00282694  90 05 05 FC */	stw r0, 0x5fc(r5)
/* 80286A38 00282698  4E 80 00 20 */	blr

.global GXSetProjectionv
GXSetProjectionv:
/* 80286A3C 0028269C  C0 22 A2 00 */	lfs f1, lbl_80642800-_SDA2_BASE_(r2)
/* 80286A40 002826A0  C0 03 00 00 */	lfs f0, 0(r3)
/* 80286A44 002826A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80286A48 002826A8  40 82 00 0C */	bne lbl_80286A54
/* 80286A4C 002826AC  38 00 00 00 */	li r0, 0
/* 80286A50 002826B0  48 00 00 08 */	b lbl_80286A58
lbl_80286A54:
/* 80286A54 002826B4  38 00 00 01 */	li r0, 1
lbl_80286A58:
/* 80286A58 002826B8  80 82 A0 D0 */	lwz r4, lbl_806426D0-_SDA2_BASE_(r2)
/* 80286A5C 002826BC  90 04 05 28 */	stw r0, 0x528(r4)
/* 80286A60 002826C0  E0 43 00 04 */	psq_l f2, 4(r3), 0, qr0
/* 80286A64 002826C4  E0 23 00 0C */	psq_l f1, 12(r3), 0, qr0
/* 80286A68 002826C8  E0 03 00 14 */	psq_l f0, 20(r3), 0, qr0
/* 80286A6C 002826CC  F0 44 05 2C */	psq_st f2, 1324(r4), 0, qr0
/* 80286A70 002826D0  F0 24 05 34 */	psq_st f1, 1332(r4), 0, qr0
/* 80286A74 002826D4  F0 04 05 3C */	psq_st f0, 1340(r4), 0, qr0
/* 80286A78 002826D8  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 80286A7C 002826DC  64 00 08 00 */	oris r0, r0, 0x800
/* 80286A80 002826E0  90 04 05 FC */	stw r0, 0x5fc(r4)
/* 80286A84 002826E4  4E 80 00 20 */	blr

.global GXLoadPosMtxImm
GXLoadPosMtxImm:
/* 80286A88 002826E8  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80286A8C 002826EC  38 00 00 10 */	li r0, 0x10
/* 80286A90 002826F0  54 84 10 3A */	slwi r4, r4, 2
/* 80286A94 002826F4  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 80286A98 002826F8  64 80 00 0B */	oris r0, r4, 0xb
/* 80286A9C 002826FC  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80286AA0 00282700  38 85 80 00 */	addi r4, r5, -32768
/* 80286AA4 00282704  E0 A3 00 00 */	psq_l f5, 0(r3), 0, qr0
/* 80286AA8 00282708  E0 83 00 08 */	psq_l f4, 8(r3), 0, qr0
/* 80286AAC 0028270C  E0 63 00 10 */	psq_l f3, 16(r3), 0, qr0
/* 80286AB0 00282710  E0 43 00 18 */	psq_l f2, 24(r3), 0, qr0
/* 80286AB4 00282714  E0 23 00 20 */	psq_l f1, 32(r3), 0, qr0
/* 80286AB8 00282718  E0 03 00 28 */	psq_l f0, 40(r3), 0, qr0
/* 80286ABC 0028271C  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 80286AC0 00282720  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 80286AC4 00282724  F0 64 00 00 */	psq_st f3, 0(r4), 0, qr0
/* 80286AC8 00282728  F0 44 00 00 */	psq_st f2, 0(r4), 0, qr0
/* 80286ACC 0028272C  F0 24 00 00 */	psq_st f1, 0(r4), 0, qr0
/* 80286AD0 00282730  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 80286AD4 00282734  4E 80 00 20 */	blr

.global GXLoadNrmMtxImm
GXLoadNrmMtxImm:
/* 80286AD8 00282738  54 80 10 3A */	slwi r0, r4, 2
/* 80286ADC 0028273C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80286AE0 00282740  7C 84 00 50 */	subf r4, r4, r0
/* 80286AE4 00282744  38 00 00 10 */	li r0, 0x10
/* 80286AE8 00282748  38 84 04 00 */	addi r4, r4, 0x400
/* 80286AEC 0028274C  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 80286AF0 00282750  64 80 00 08 */	oris r0, r4, 8
/* 80286AF4 00282754  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80286AF8 00282758  38 85 80 00 */	addi r4, r5, -32768
/* 80286AFC 0028275C  E0 A3 00 00 */	psq_l f5, 0(r3), 0, qr0
/* 80286B00 00282760  C0 83 00 08 */	lfs f4, 8(r3)
/* 80286B04 00282764  E0 63 00 10 */	psq_l f3, 16(r3), 0, qr0
/* 80286B08 00282768  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 80286B0C 0028276C  E0 23 00 20 */	psq_l f1, 32(r3), 0, qr0
/* 80286B10 00282770  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80286B14 00282774  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 80286B18 00282778  D0 85 80 00 */	stfs f4, -0x8000(r5)
/* 80286B1C 0028277C  F0 64 00 00 */	psq_st f3, 0(r4), 0, qr0
/* 80286B20 00282780  D0 45 80 00 */	stfs f2, -0x8000(r5)
/* 80286B24 00282784  F0 24 00 00 */	psq_st f1, 0(r4), 0, qr0
/* 80286B28 00282788  D0 05 80 00 */	stfs f0, -0x8000(r5)
/* 80286B2C 0028278C  4E 80 00 20 */	blr

.global GXSetCurrentMtx
GXSetCurrentMtx:
/* 80286B30 00282790  80 82 A0 D0 */	lwz r4, lbl_806426D0-_SDA2_BASE_(r2)
/* 80286B34 00282794  80 04 00 80 */	lwz r0, 0x80(r4)
/* 80286B38 00282798  50 60 06 BE */	rlwimi r0, r3, 0, 0x1a, 0x1f
/* 80286B3C 0028279C  90 04 00 80 */	stw r0, 0x80(r4)
/* 80286B40 002827A0  80 04 05 FC */	lwz r0, 0x5fc(r4)
/* 80286B44 002827A4  64 00 04 00 */	oris r0, r0, 0x400
/* 80286B48 002827A8  90 04 05 FC */	stw r0, 0x5fc(r4)
/* 80286B4C 002827AC  4E 80 00 20 */	blr

.global GXLoadTexMtxImm
GXLoadTexMtxImm:
/* 80286B50 002827B0  28 04 00 40 */	cmplwi r4, 0x40
/* 80286B54 002827B4  41 80 00 14 */	blt lbl_80286B68
/* 80286B58 002827B8  38 04 FF C0 */	addi r0, r4, -64
/* 80286B5C 002827BC  54 04 10 3A */	slwi r4, r0, 2
/* 80286B60 002827C0  38 E4 05 00 */	addi r7, r4, 0x500
/* 80286B64 002827C4  48 00 00 08 */	b lbl_80286B6C
lbl_80286B68:
/* 80286B68 002827C8  54 87 10 3A */	slwi r7, r4, 2
lbl_80286B6C:
/* 80286B6C 002827CC  2C 05 00 01 */	cmpwi r5, 1
/* 80286B70 002827D0  40 82 00 0C */	bne lbl_80286B7C
/* 80286B74 002827D4  38 80 00 08 */	li r4, 8
/* 80286B78 002827D8  48 00 00 08 */	b lbl_80286B80
lbl_80286B7C:
/* 80286B7C 002827DC  38 80 00 0C */	li r4, 0xc
lbl_80286B80:
/* 80286B80 002827E0  38 C4 FF FF */	addi r6, r4, -1
/* 80286B84 002827E4  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80286B88 002827E8  38 00 00 10 */	li r0, 0x10
/* 80286B8C 002827EC  2C 05 00 00 */	cmpwi r5, 0
/* 80286B90 002827F0  54 C5 80 1E */	slwi r5, r6, 0x10
/* 80286B94 002827F4  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 80286B98 002827F8  7C E0 2B 78 */	or r0, r7, r5
/* 80286B9C 002827FC  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80286BA0 00282800  40 82 00 3C */	bne lbl_80286BDC
/* 80286BA4 00282804  38 84 80 00 */	addi r4, r4, -32768
/* 80286BA8 00282808  E0 A3 00 00 */	psq_l f5, 0(r3), 0, qr0
/* 80286BAC 0028280C  E0 83 00 08 */	psq_l f4, 8(r3), 0, qr0
/* 80286BB0 00282810  E0 63 00 10 */	psq_l f3, 16(r3), 0, qr0
/* 80286BB4 00282814  E0 43 00 18 */	psq_l f2, 24(r3), 0, qr0
/* 80286BB8 00282818  E0 23 00 20 */	psq_l f1, 32(r3), 0, qr0
/* 80286BBC 0028281C  E0 03 00 28 */	psq_l f0, 40(r3), 0, qr0
/* 80286BC0 00282820  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 80286BC4 00282824  F0 84 00 00 */	psq_st f4, 0(r4), 0, qr0
/* 80286BC8 00282828  F0 64 00 00 */	psq_st f3, 0(r4), 0, qr0
/* 80286BCC 0028282C  F0 44 00 00 */	psq_st f2, 0(r4), 0, qr0
/* 80286BD0 00282830  F0 24 00 00 */	psq_st f1, 0(r4), 0, qr0
/* 80286BD4 00282834  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 80286BD8 00282838  4E 80 00 20 */	blr
lbl_80286BDC:
/* 80286BDC 0028283C  38 84 80 00 */	addi r4, r4, -32768
/* 80286BE0 00282840  E0 63 00 00 */	psq_l f3, 0(r3), 0, qr0
/* 80286BE4 00282844  E0 43 00 08 */	psq_l f2, 8(r3), 0, qr0
/* 80286BE8 00282848  E0 23 00 10 */	psq_l f1, 16(r3), 0, qr0
/* 80286BEC 0028284C  E0 03 00 18 */	psq_l f0, 24(r3), 0, qr0
/* 80286BF0 00282850  F0 64 00 00 */	psq_st f3, 0(r4), 0, qr0
/* 80286BF4 00282854  F0 44 00 00 */	psq_st f2, 0(r4), 0, qr0
/* 80286BF8 00282858  F0 24 00 00 */	psq_st f1, 0(r4), 0, qr0
/* 80286BFC 0028285C  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 80286C00 00282860  4E 80 00 20 */	blr

.global __GXSetViewport
__GXSetViewport:
/* 80286C04 00282864  80 C2 A0 D0 */	lwz r6, lbl_806426D0-_SDA2_BASE_(r2)
/* 80286C08 00282868  3C 60 00 05 */	lis r3, 0x0005101A@ha
/* 80286C0C 0028286C  C0 C2 A2 08 */	lfs f6, lbl_80642808-_SDA2_BASE_(r2)
/* 80286C10 00282870  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80286C14 00282874  C0 46 05 50 */	lfs f2, 0x550(r6)
/* 80286C18 00282878  38 A0 00 10 */	li r5, 0x10
/* 80286C1C 0028287C  C0 66 05 4C */	lfs f3, 0x54c(r6)
/* 80286C20 00282880  38 03 10 1A */	addi r0, r3, 0x0005101A@l
/* 80286C24 00282884  FC 20 10 50 */	fneg f1, f2
/* 80286C28 00282888  C0 06 05 44 */	lfs f0, 0x544(r6)
/* 80286C2C 0028288C  EC E3 01 B2 */	fmuls f7, f3, f6
/* 80286C30 00282890  C0 86 05 48 */	lfs f4, 0x548(r6)
/* 80286C34 00282894  EC A2 01 B2 */	fmuls f5, f2, f6
/* 80286C38 00282898  C0 66 05 54 */	lfs f3, 0x554(r6)
/* 80286C3C 0028289C  ED 01 01 B2 */	fmuls f8, f1, f6
/* 80286C40 002828A0  C0 46 05 60 */	lfs f2, 0x560(r6)
/* 80286C44 002828A4  C0 26 05 58 */	lfs f1, 0x558(r6)
/* 80286C48 002828A8  EC C0 38 2A */	fadds f6, f0, f7
/* 80286C4C 002828AC  C0 06 05 5C */	lfs f0, 0x55c(r6)
/* 80286C50 002828B0  EC 63 00 B2 */	fmuls f3, f3, f2
/* 80286C54 002828B4  ED 21 00 B2 */	fmuls f9, f1, f2
/* 80286C58 002828B8  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 80286C5C 002828BC  C0 42 A2 0C */	lfs f2, lbl_8064280C-_SDA2_BASE_(r2)
/* 80286C60 002828C0  EC 24 28 2A */	fadds f1, f4, f5
/* 80286C64 002828C4  90 04 80 00 */	stw r0, -0x8000(r4)
/* 80286C68 002828C8  EC 69 18 28 */	fsubs f3, f9, f3
/* 80286C6C 002828CC  D0 E4 80 00 */	stfs f7, -0x8000(r4)
/* 80286C70 002828D0  EC 82 30 2A */	fadds f4, f2, f6
/* 80286C74 002828D4  EC 22 08 2A */	fadds f1, f2, f1
/* 80286C78 002828D8  D1 04 80 00 */	stfs f8, -0x8000(r4)
/* 80286C7C 002828DC  EC 09 00 2A */	fadds f0, f9, f0
/* 80286C80 002828E0  D0 64 80 00 */	stfs f3, -0x8000(r4)
/* 80286C84 002828E4  D0 84 80 00 */	stfs f4, -0x8000(r4)
/* 80286C88 002828E8  D0 24 80 00 */	stfs f1, -0x8000(r4)
/* 80286C8C 002828EC  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 80286C90 002828F0  4E 80 00 20 */	blr

.global GXSetViewportJitter
GXSetViewportJitter:
/* 80286C94 002828F4  2C 03 00 00 */	cmpwi r3, 0
/* 80286C98 002828F8  40 82 00 0C */	bne lbl_80286CA4
/* 80286C9C 002828FC  C0 02 A2 08 */	lfs f0, lbl_80642808-_SDA2_BASE_(r2)
/* 80286CA0 00282900  EC 42 00 28 */	fsubs f2, f2, f0
lbl_80286CA4:
/* 80286CA4 00282904  80 62 A0 D0 */	lwz r3, lbl_806426D0-_SDA2_BASE_(r2)
/* 80286CA8 00282908  D0 23 05 44 */	stfs f1, 0x544(r3)
/* 80286CAC 0028290C  D0 43 05 48 */	stfs f2, 0x548(r3)
/* 80286CB0 00282910  D0 63 05 4C */	stfs f3, 0x54c(r3)
/* 80286CB4 00282914  D0 83 05 50 */	stfs f4, 0x550(r3)
/* 80286CB8 00282918  D0 A3 05 54 */	stfs f5, 0x554(r3)
/* 80286CBC 0028291C  D0 C3 05 58 */	stfs f6, 0x558(r3)
/* 80286CC0 00282920  80 03 05 FC */	lwz r0, 0x5fc(r3)
/* 80286CC4 00282924  64 00 10 00 */	oris r0, r0, 0x1000
/* 80286CC8 00282928  90 03 05 FC */	stw r0, 0x5fc(r3)
/* 80286CCC 0028292C  4E 80 00 20 */	blr

.global GXSetViewport
GXSetViewport:
/* 80286CD0 00282930  80 62 A0 D0 */	lwz r3, lbl_806426D0-_SDA2_BASE_(r2)
/* 80286CD4 00282934  D0 23 05 44 */	stfs f1, 0x544(r3)
/* 80286CD8 00282938  D0 43 05 48 */	stfs f2, 0x548(r3)
/* 80286CDC 0028293C  D0 63 05 4C */	stfs f3, 0x54c(r3)
/* 80286CE0 00282940  D0 83 05 50 */	stfs f4, 0x550(r3)
/* 80286CE4 00282944  D0 A3 05 54 */	stfs f5, 0x554(r3)
/* 80286CE8 00282948  D0 C3 05 58 */	stfs f6, 0x558(r3)
/* 80286CEC 0028294C  80 03 05 FC */	lwz r0, 0x5fc(r3)
/* 80286CF0 00282950  64 00 10 00 */	oris r0, r0, 0x1000
/* 80286CF4 00282954  90 03 05 FC */	stw r0, 0x5fc(r3)
/* 80286CF8 00282958  4E 80 00 20 */	blr

.global GXSetScissor
GXSetScissor:
/* 80286CFC 0028295C  81 02 A0 D0 */	lwz r8, lbl_806426D0-_SDA2_BASE_(r2)
/* 80286D00 00282960  38 84 01 56 */	addi r4, r4, 0x156
/* 80286D04 00282964  39 23 01 56 */	addi r9, r3, 0x156
/* 80286D08 00282968  3C E0 CC 01 */	lis r7, 0xCC008000@ha
/* 80286D0C 0028296C  80 08 01 48 */	lwz r0, 0x148(r8)
/* 80286D10 00282970  50 80 05 7E */	rlwimi r0, r4, 0, 0x15, 0x1f
/* 80286D14 00282974  51 20 62 66 */	rlwimi r0, r9, 0xc, 9, 0x13
/* 80286D18 00282978  7C C4 32 14 */	add r6, r4, r6
/* 80286D1C 0028297C  90 08 01 48 */	stw r0, 0x148(r8)
/* 80286D20 00282980  7C 69 2A 14 */	add r3, r9, r5
/* 80286D24 00282984  38 A6 FF FF */	addi r5, r6, -1
/* 80286D28 00282988  38 80 00 61 */	li r4, 0x61
/* 80286D2C 0028298C  80 C8 01 4C */	lwz r6, 0x14c(r8)
/* 80286D30 00282990  38 63 FF FF */	addi r3, r3, -1
/* 80286D34 00282994  50 A6 05 7E */	rlwimi r6, r5, 0, 0x15, 0x1f
/* 80286D38 00282998  38 00 00 00 */	li r0, 0
/* 80286D3C 0028299C  50 66 62 66 */	rlwimi r6, r3, 0xc, 9, 0x13
/* 80286D40 002829A0  90 C8 01 4C */	stw r6, 0x14c(r8)
/* 80286D44 002829A4  98 87 80 00 */	stb r4, 0xCC008000@l(r7)
/* 80286D48 002829A8  80 68 01 48 */	lwz r3, 0x148(r8)
/* 80286D4C 002829AC  90 67 80 00 */	stw r3, -0x8000(r7)
/* 80286D50 002829B0  98 87 80 00 */	stb r4, -0x8000(r7)
/* 80286D54 002829B4  80 68 01 4C */	lwz r3, 0x14c(r8)
/* 80286D58 002829B8  90 67 80 00 */	stw r3, -0x8000(r7)
/* 80286D5C 002829BC  B0 08 00 02 */	sth r0, 2(r8)
/* 80286D60 002829C0  4E 80 00 20 */	blr

.global GXSetScissorBoxOffset
GXSetScissorBoxOffset:
/* 80286D64 002829C4  38 03 01 56 */	addi r0, r3, 0x156
/* 80286D68 002829C8  38 C0 00 00 */	li r6, 0
/* 80286D6C 002829CC  50 06 FD BE */	rlwimi r6, r0, 0x1f, 0x16, 0x1f
/* 80286D70 002829D0  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80286D74 002829D4  38 00 00 61 */	li r0, 0x61
/* 80286D78 002829D8  38 64 01 56 */	addi r3, r4, 0x156
/* 80286D7C 002829DC  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 80286D80 002829E0  50 66 4B 2A */	rlwimi r6, r3, 9, 0xc, 0x15
/* 80286D84 002829E4  38 00 00 59 */	li r0, 0x59
/* 80286D88 002829E8  80 62 A0 D0 */	lwz r3, lbl_806426D0-_SDA2_BASE_(r2)
/* 80286D8C 002829EC  50 06 C0 0E */	rlwimi r6, r0, 0x18, 0, 7
/* 80286D90 002829F0  90 C5 80 00 */	stw r6, -0x8000(r5)
/* 80286D94 002829F4  38 00 00 00 */	li r0, 0
/* 80286D98 002829F8  B0 03 00 02 */	sth r0, 2(r3)
/* 80286D9C 002829FC  4E 80 00 20 */	blr

.global GXSetClipMode
GXSetClipMode:
/* 80286DA0 00282A00  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 80286DA4 00282A04  38 00 00 10 */	li r0, 0x10
/* 80286DA8 00282A08  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 80286DAC 00282A0C  38 A0 10 05 */	li r5, 0x1005
/* 80286DB0 00282A10  80 82 A0 D0 */	lwz r4, lbl_806426D0-_SDA2_BASE_(r2)
/* 80286DB4 00282A14  38 00 00 01 */	li r0, 1
/* 80286DB8 00282A18  90 A6 80 00 */	stw r5, -0x8000(r6)
/* 80286DBC 00282A1C  90 66 80 00 */	stw r3, -0x8000(r6)
/* 80286DC0 00282A20  B0 04 00 02 */	sth r0, 2(r4)
/* 80286DC4 00282A24  4E 80 00 20 */	blr

.global __GXSetMatrixIndex
__GXSetMatrixIndex:
/* 80286DC8 00282A28  2C 03 00 05 */	cmpwi r3, 5
/* 80286DCC 00282A2C  40 80 00 40 */	bge lbl_80286E0C
/* 80286DD0 00282A30  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80286DD4 00282A34  38 00 00 08 */	li r0, 8
/* 80286DD8 00282A38  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 80286DDC 00282A3C  38 00 00 30 */	li r0, 0x30
/* 80286DE0 00282A40  80 C2 A0 D0 */	lwz r6, lbl_806426D0-_SDA2_BASE_(r2)
/* 80286DE4 00282A44  38 60 00 10 */	li r3, 0x10
/* 80286DE8 00282A48  98 05 80 00 */	stb r0, -0x8000(r5)
/* 80286DEC 00282A4C  38 00 10 18 */	li r0, 0x1018
/* 80286DF0 00282A50  80 86 00 80 */	lwz r4, 0x80(r6)
/* 80286DF4 00282A54  90 85 80 00 */	stw r4, -0x8000(r5)
/* 80286DF8 00282A58  98 65 80 00 */	stb r3, -0x8000(r5)
/* 80286DFC 00282A5C  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80286E00 00282A60  80 06 00 80 */	lwz r0, 0x80(r6)
/* 80286E04 00282A64  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80286E08 00282A68  48 00 00 3C */	b lbl_80286E44
lbl_80286E0C:
/* 80286E0C 00282A6C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80286E10 00282A70  38 00 00 08 */	li r0, 8
/* 80286E14 00282A74  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 80286E18 00282A78  38 00 00 40 */	li r0, 0x40
/* 80286E1C 00282A7C  80 C2 A0 D0 */	lwz r6, lbl_806426D0-_SDA2_BASE_(r2)
/* 80286E20 00282A80  38 60 00 10 */	li r3, 0x10
/* 80286E24 00282A84  98 05 80 00 */	stb r0, -0x8000(r5)
/* 80286E28 00282A88  38 00 10 19 */	li r0, 0x1019
/* 80286E2C 00282A8C  80 86 00 84 */	lwz r4, 0x84(r6)
/* 80286E30 00282A90  90 85 80 00 */	stw r4, -0x8000(r5)
/* 80286E34 00282A94  98 65 80 00 */	stb r3, -0x8000(r5)
/* 80286E38 00282A98  90 05 80 00 */	stw r0, -0x8000(r5)
/* 80286E3C 00282A9C  80 06 00 84 */	lwz r0, 0x84(r6)
/* 80286E40 00282AA0  90 05 80 00 */	stw r0, -0x8000(r5)
lbl_80286E44:
/* 80286E44 00282AA4  38 00 00 01 */	li r0, 1
/* 80286E48 00282AA8  B0 06 00 02 */	sth r0, 2(r6)
/* 80286E4C 00282AAC  4E 80 00 20 */	blr

lbl_80BC8008:
/* 80BC8008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC800C  7C 08 02 A6 */	mflr r0
/* 80BC8010  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC8014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC8018  7C 7F 1B 78 */	mr r31, r3
/* 80BC801C  3C 60 80 BD */	lis r3, l_arcName@ha /* 0x80BC8D64@ha */
/* 80BC8020  38 63 8D 64 */	addi r3, r3, l_arcName@l /* 0x80BC8D64@l */
/* 80BC8024  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC8028  38 80 00 04 */	li r4, 4
/* 80BC802C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC8030  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC8034  3C A5 00 02 */	addis r5, r5, 2
/* 80BC8038  38 C0 00 80 */	li r6, 0x80
/* 80BC803C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BC8040  4B 47 42 AD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC8044  3C 80 00 08 */	lis r4, 8
/* 80BC8048  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BC804C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BC8050  4B 44 CC 05 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BC8054  90 7F 05 E8 */	stw r3, 0x5e8(r31)
/* 80BC8058  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BC805C  30 03 FF FF */	addic r0, r3, -1
/* 80BC8060  7C 60 19 10 */	subfe r3, r0, r3
/* 80BC8064  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC8068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC806C  7C 08 03 A6 */	mtlr r0
/* 80BC8070  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC8074  4E 80 00 20 */	blr 

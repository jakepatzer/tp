lbl_80D36F54:
/* 80D36F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D36F58  7C 08 02 A6 */	mflr r0
/* 80D36F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D36F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D36F64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D36F68  41 82 00 10 */	beq lbl_80D36F78
/* 80D36F6C  7C 80 07 35 */	extsh. r0, r4
/* 80D36F70  40 81 00 08 */	ble lbl_80D36F78
/* 80D36F74  4B 59 7D C9 */	bl __dl__FPv
lbl_80D36F78:
/* 80D36F78  7F E3 FB 78 */	mr r3, r31
/* 80D36F7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D36F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D36F84  7C 08 03 A6 */	mtlr r0
/* 80D36F88  38 21 00 10 */	addi r1, r1, 0x10
/* 80D36F8C  4E 80 00 20 */	blr 

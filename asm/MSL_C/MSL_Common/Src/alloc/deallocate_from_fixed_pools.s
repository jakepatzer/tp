lbl_80362C20:
/* 80362C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80362C24  7C 08 02 A6 */	mflr r0
/* 80362C28  3C C0 80 3A */	lis r6, fix_pool_sizes@ha /* 0x803A2220@ha */
/* 80362C2C  38 E0 00 00 */	li r7, 0
/* 80362C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80362C34  38 C6 22 20 */	addi r6, r6, fix_pool_sizes@l /* 0x803A2220@l */
/* 80362C38  48 00 00 0C */	b lbl_80362C44
lbl_80362C3C:
/* 80362C3C  38 C6 00 04 */	addi r6, r6, 4
/* 80362C40  38 E7 00 01 */	addi r7, r7, 1
lbl_80362C44:
/* 80362C44  80 06 00 00 */	lwz r0, 0(r6)
/* 80362C48  7C 05 00 40 */	cmplw r5, r0
/* 80362C4C  41 81 FF F0 */	bgt lbl_80362C3C
/* 80362C50  39 04 FF FC */	addi r8, r4, -4
/* 80362C54  54 E5 18 38 */	slwi r5, r7, 3
/* 80362C58  80 84 FF FC */	lwz r4, -4(r4)
/* 80362C5C  38 A5 00 04 */	addi r5, r5, 4
/* 80362C60  7C A3 2A 14 */	add r5, r3, r5
/* 80362C64  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80362C68  28 00 00 00 */	cmplwi r0, 0
/* 80362C6C  40 82 00 74 */	bne lbl_80362CE0
/* 80362C70  80 C5 00 04 */	lwz r6, 4(r5)
/* 80362C74  7C 06 20 40 */	cmplw r6, r4
/* 80362C78  41 82 00 68 */	beq lbl_80362CE0
/* 80362C7C  80 05 00 00 */	lwz r0, 0(r5)
/* 80362C80  7C 00 20 40 */	cmplw r0, r4
/* 80362C84  40 82 00 1C */	bne lbl_80362CA0
/* 80362C88  80 06 00 00 */	lwz r0, 0(r6)
/* 80362C8C  90 05 00 04 */	stw r0, 4(r5)
/* 80362C90  80 C5 00 00 */	lwz r6, 0(r5)
/* 80362C94  80 06 00 00 */	lwz r0, 0(r6)
/* 80362C98  90 05 00 00 */	stw r0, 0(r5)
/* 80362C9C  48 00 00 44 */	b lbl_80362CE0
lbl_80362CA0:
/* 80362CA0  80 04 00 04 */	lwz r0, 4(r4)
/* 80362CA4  80 C4 00 00 */	lwz r6, 0(r4)
/* 80362CA8  90 06 00 04 */	stw r0, 4(r6)
/* 80362CAC  80 04 00 00 */	lwz r0, 0(r4)
/* 80362CB0  80 C4 00 04 */	lwz r6, 4(r4)
/* 80362CB4  90 06 00 00 */	stw r0, 0(r6)
/* 80362CB8  80 05 00 04 */	lwz r0, 4(r5)
/* 80362CBC  90 04 00 04 */	stw r0, 4(r4)
/* 80362CC0  80 C4 00 04 */	lwz r6, 4(r4)
/* 80362CC4  80 06 00 00 */	lwz r0, 0(r6)
/* 80362CC8  90 04 00 00 */	stw r0, 0(r4)
/* 80362CCC  80 C4 00 00 */	lwz r6, 0(r4)
/* 80362CD0  90 86 00 04 */	stw r4, 4(r6)
/* 80362CD4  80 C4 00 04 */	lwz r6, 4(r4)
/* 80362CD8  90 86 00 00 */	stw r4, 0(r6)
/* 80362CDC  90 85 00 04 */	stw r4, 4(r5)
lbl_80362CE0:
/* 80362CE0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80362CE4  90 08 00 04 */	stw r0, 4(r8)
/* 80362CE8  91 04 00 0C */	stw r8, 0xc(r4)
/* 80362CEC  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 80362CF0  34 06 FF FF */	addic. r0, r6, -1
/* 80362CF4  90 04 00 10 */	stw r0, 0x10(r4)
/* 80362CF8  40 82 00 70 */	bne lbl_80362D68
/* 80362CFC  80 05 00 04 */	lwz r0, 4(r5)
/* 80362D00  7C 00 20 40 */	cmplw r0, r4
/* 80362D04  40 82 00 0C */	bne lbl_80362D10
/* 80362D08  80 04 00 04 */	lwz r0, 4(r4)
/* 80362D0C  90 05 00 04 */	stw r0, 4(r5)
lbl_80362D10:
/* 80362D10  80 05 00 00 */	lwz r0, 0(r5)
/* 80362D14  7C 00 20 40 */	cmplw r0, r4
/* 80362D18  40 82 00 0C */	bne lbl_80362D24
/* 80362D1C  80 04 00 00 */	lwz r0, 0(r4)
/* 80362D20  90 05 00 00 */	stw r0, 0(r5)
lbl_80362D24:
/* 80362D24  80 04 00 04 */	lwz r0, 4(r4)
/* 80362D28  80 C4 00 00 */	lwz r6, 0(r4)
/* 80362D2C  90 06 00 04 */	stw r0, 4(r6)
/* 80362D30  80 04 00 00 */	lwz r0, 0(r4)
/* 80362D34  80 C4 00 04 */	lwz r6, 4(r4)
/* 80362D38  90 06 00 00 */	stw r0, 0(r6)
/* 80362D3C  80 05 00 04 */	lwz r0, 4(r5)
/* 80362D40  7C 00 20 40 */	cmplw r0, r4
/* 80362D44  40 82 00 0C */	bne lbl_80362D50
/* 80362D48  38 00 00 00 */	li r0, 0
/* 80362D4C  90 05 00 04 */	stw r0, 4(r5)
lbl_80362D50:
/* 80362D50  80 05 00 00 */	lwz r0, 0(r5)
/* 80362D54  7C 00 20 40 */	cmplw r0, r4
/* 80362D58  40 82 00 0C */	bne lbl_80362D64
/* 80362D5C  38 00 00 00 */	li r0, 0
/* 80362D60  90 05 00 00 */	stw r0, 0(r5)
lbl_80362D64:
/* 80362D64  48 00 00 15 */	bl deallocate_from_var_pools
lbl_80362D68:
/* 80362D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80362D6C  7C 08 03 A6 */	mtlr r0
/* 80362D70  38 21 00 10 */	addi r1, r1, 0x10
/* 80362D74  4E 80 00 20 */	blr 

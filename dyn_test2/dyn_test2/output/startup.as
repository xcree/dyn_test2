
	; HI-TECH C COMPILER (Cypress PSOC) V9.61PL6
	; Copyright (C) 1984-2009 HI-TECH Software
	;Licensed for evaluation purposes only.
	;This licence will expire on Sat, 30 Jun 2012

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --asmlist --errformat --chip=CY8C21323MLF --WARN=0 \
	; --ROM=default,-C00-1000 --OPT=asm,9 -Odyn_test2 -Moutput/dyn_test2.mp \
	; --OUTDIR=./output ./obj/boot.obj ./obj/main.p1 lib/libpsoc.lib \
	; lib/libpsoc.lpp \
	; C:/PROGRA~1/Cypress/PSOCDE~1/5.2/Common/CY3E64~1/tools/lib/CY8C21020/cms.lib
	;


	processor	CY8C21323MLF
	macro	M8C_ClearWDT
	mov reg[0xE3],0x38
	endm

	psect	PD_startup,class=CODE
	psect	init,class=CODE
	psect	end_init,class=CODE
	psect	powerup,class=CODE
	psect	vectors,ovrld,class=CODE
	psect	text,class=CODE
	psect	maintext,class=CODE
	psect	intrtext,class=CODE
	psect	bss,class=RAM,space=1
	psect	InterruptRAM,class=RAM,space=1
	psect	cdata,class=ROM,space=0,reloc=256
	psect	psoc_config,class=ROM
	psect	UserModules,class=ROM
	psect	strings,class=ROM
	psect	fnauto,class=RAM,space=1,limit=0100h
	psect	SSCParmBlk,abs,ovrld,class=RAM,space=1
	org	0xF8
	blk	8

	psect	stackps,class=RAM
	global	__Lstackps, __stack_start__
__stack_start__:
	psect	bss0,class=RAM,space=1
	psect	nvram0,class=RAM,space=1
	psect	rbit0,bit,class=RAM,space=1
	psect	nvbit0,bit,class=RAM,space=1
	psect	ramdata0,class=RAM,space=1
	psect	romdata0,class=BANKROM,space=0

;Declare areas defined in usermodules and other assembler code
	psect	InterruptRAM,class=RAM,space=1

	global	start,startup,_main
	global	reset_vec,intlevel0,intlevel1,intlevel2
intlevel0:
intlevel1:
intlevel2:		; for C funcs called from assembler

	fnconf	fnauto,??,?
	fnroot	_main
TMP_DR0	equ	108
TMP_DR1	equ	109
TMP_DR2	equ	110
TMP_DR3	equ	111
CUR_PP	equ	208
STK_PP	equ	209
IDX_PP	equ	211
MVR_PP	equ	212
MVW_PP	equ	213
CPU_F	equ	247
	psect	vectors
reset_vec:
start:
	global	__Start
	ljmp	__Start

	psect	init
startup:
	M8C_ClearWDT

;	Clear uninitialized variables in bank 0
	global	__Lbss0
	mov	a,low __Lbss0
	swap	a,sp
	mov	a,0
	mov	x,188
bssloop0:
	push	a
	dec	x
	jnz	bssloop0
	mov	reg[CUR_PP],0
	mov	a,low __Lstackps
	swap	a,sp

	ljmp	_main

	end	start

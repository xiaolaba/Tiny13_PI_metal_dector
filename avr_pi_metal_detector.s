	.file	"main.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C (WinAVR 20100110) version 4.3.3 (avr)
 ; 	compiled by GNU C version 3.4.5 (mingw-vista special r3), GMP version 4.2.3, MPFR version 2.4.1.
 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed:  -imultilib avr25 -iprefix
 ;  c:\winavr-20100110\bin\../lib/gcc/avr/4.3.3/ main.c -mmcu=attiny13
 ;  -auxbase-strip avr_pi_metal_detector.s -gdwarf-2 -g0 -Os -Wall
 ;  -fverbose-asm
 ;  options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
 ;  -fbranch-count-reg -fcaller-saves -fcommon -fcprop-registers
 ;  -fcrossjumping -fcse-follow-jumps -fdefer-pop -fearly-inlining
 ;  -feliminate-unused-debug-types -fexpensive-optimizations
 ;  -fforward-propagate -ffunction-cse -fgcse -fgcse-lm
 ;  -fguess-branch-probability -fident -fif-conversion -fif-conversion2
 ;  -finline-functions -finline-functions-called-once
 ;  -finline-small-functions -fipa-pure-const -fipa-reference -fivopts
 ;  -fkeep-static-consts -fleading-underscore -fmath-errno
 ;  -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
 ;  -fomit-frame-pointer -foptimize-register-move -foptimize-sibling-calls
 ;  -fpeephole -fpeephole2 -freg-struct-return -fregmove
 ;  -freorder-functions -frerun-cse-after-loop -fsched-interblock
 ;  -fsched-spec -fsched-stalled-insns-dep -fsigned-zeros
 ;  -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-aliasing
 ;  -fstrict-overflow -fthread-jumps -ftoplevel-reorder -ftrapping-math
 ;  -ftree-ccp -ftree-copy-prop -ftree-copyrename -ftree-dce
 ;  -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
 ;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
 ;  -ftree-reassoc -ftree-salias -ftree-scev-cprop -ftree-sink -ftree-sra
 ;  -ftree-store-ccp -ftree-ter -ftree-vect-loop-version -ftree-vrp
 ;  -funit-at-a-time -fverbose-asm -fzero-initialized-in-bss

 ;  Compiler executable checksum: 61d68a374065d489330774d2533cbbdf

	.text
	.type	measure_decay, @function
measure_decay:
/* prologue: function */
/* frame size = 0 */
	sbi 56-32,2	 ; ,,
	ldi r24,lo8(10)	 ;  __count,
/* #APP */
 ;  83 "c:/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: dec r24	 ;  __count
	brne 1b
 ;  0 "" 2
/* #NOAPP */
	cbi 56-32,2	 ; ,,
	ldi r18,lo8(0)	 ;  i,
	ldi r19,hi8(0)	 ;  i,
	ldi r20,lo8(0)	 ;  decay,
	ldi r21,hi8(0)	 ;  decay,
.L3:
	sbic 40-32,5	 ; ,,
	movw r20,r18	 ;  decay, i
.L2:
	subi r18,lo8(-(1))	 ;  i,
	sbci r19,hi8(-(1))	 ;  i,
	ldi r24,hi8(2048)	 ; ,
	cpi r18,lo8(2048)	 ;  i,
	cpc r19,r24	 ;  i,
	brne .L3	 ; ,
	movw r24,r20	 ; ,
/* epilogue start */
	ret
	.size	measure_decay, .-measure_decay
.global	main
	.type	main, @function
main:
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
	ldi r24,lo8(28)	 ;  tmp67,
	out 55-32,r24	 ; ,, tmp67
	out 40-32,__zero_reg__	 ; ,,
	ldi r28,lo8(0)	 ;  decay.57,
	ldi r29,hi8(0)	 ;  decay.57,
	ldi r17,lo8(0)	 ;  i,
.L8:
	rcall measure_decay	 ; 
	cp r28,r24	 ;  decay.57, decay
	cpc r29,r25	 ;  decay.57, decay
	brsh .L7	 ; ,
	movw r28,r24	 ;  decay.57, decay
.L7:
	subi r17,lo8(-(1))	 ;  i,
	cpi r17,lo8(-128)	 ;  i,
	brne .L8	 ; ,
	ldi r20,lo8(0)	 ;  i.56,
	ldi r22,lo8(75)	 ;  tmp88,
	ldi r23,hi8(75)	 ;  tmp88,
	ldi r30,lo8(16000)	 ;  tmp90,
	ldi r31,hi8(16000)	 ;  tmp90,
	rjmp .L9	 ; 
.L10:
	in r24,56-32	 ;  D.1374,,
	ori r24,lo8(24)	 ;  D.1374,
	out 56-32,r24	 ; ,, D.1374
	movw r24,r22	 ;  __count, tmp88
/* #APP */
 ;  105 "c:/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: sbiw r24,1	 ;  __count
	brne 1b
 ;  0 "" 2
/* #NOAPP */
	in r24,56-32	 ;  D.1376,,
	andi r24,lo8(-25)	 ;  D.1376,
	out 56-32,r24	 ; ,, D.1376
	movw r24,r22	 ;  __count, tmp88
/* #APP */
 ;  105 "c:/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: sbiw r24,1	 ;  __count
	brne 1b
 ;  0 "" 2
/* #NOAPP */
	subi r18,lo8(-(1))	 ;  tmp,
	sbci r19,hi8(-(1))	 ;  tmp,
	cpi r18,64	 ;  tmp,
	cpc r19,__zero_reg__	 ;  tmp
	brne .L10	 ; ,
	movw r24,r30	 ;  __count, tmp90
/* #APP */
 ;  105 "c:/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: sbiw r24,1	 ;  __count
	brne 1b
 ;  0 "" 2
/* #NOAPP */
	subi r20,lo8(-(1))	 ;  i.56,
	cpi r20,lo8(3)	 ;  i.56,
	breq .L11	 ; ,
.L9:
	ldi r18,lo8(0)	 ;  tmp,
	ldi r19,hi8(0)	 ;  tmp,
	rjmp .L10	 ; 
.L11:
	sbiw r28,2	 ;  decay_max,
	ldi r24,lo8(5000)	 ;  __ticks,
	ldi r25,hi8(5000)	 ;  __ticks,
	ldi r18,lo8(25)	 ;  tmp85,
	ldi r19,hi8(25)	 ;  tmp85,
.L12:
	movw r30,r18	 ;  __count, tmp85
/* #APP */
 ;  105 "c:/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: sbiw r30,1	 ;  __count
	brne 1b
 ;  0 "" 2
/* #NOAPP */
	sbiw r24,1	 ;  __ticks,
	brne .L12	 ; ,
	ldi r17,lo8(33)	 ;  tmp84,
.L19:
	rcall measure_decay	 ; 
	cp r24,r28	 ; , decay_max
	cpc r25,r29	 ; , decay_max
	brsh .L13	 ; ,
	in r24,56-32	 ;  D.1291,,
	ori r24,lo8(24)	 ;  D.1291,
	out 56-32,r24	 ; ,, D.1291
	mov r24,r17	 ;  __count, tmp84
/* #APP */
 ;  83 "c:/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: dec r24	 ;  __count
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.L13:
	in r24,56-32	 ;  D.1293,,
	andi r24,lo8(-25)	 ;  D.1293,
	out 56-32,r24	 ; ,, D.1293
	rjmp .L19	 ; 
	.size	main, .-main

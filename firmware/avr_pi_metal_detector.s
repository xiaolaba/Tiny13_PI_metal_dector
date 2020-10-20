	.file	"main.c"
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C11 (AVR_8_bit_GNU_Toolchain_3.6.2_1778) version 5.4.0 (avr)
 ; 	compiled by GNU C version 4.7.4, GMP version 5.0.2, MPFR version 3.0.0, MPC version 0.9
 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed:  -imultilib avr25/tiny-stack
 ;  -iprefix c:\avr8-gnu-toolchain-win32_x86\bin\../lib/gcc/avr/5.4.0/
 ;  -D__AVR_ATtiny13__ -D__AVR_DEVICE_NAME__=attiny13 -D F_CPU=9600000
 ;  main.c -mn-flash=1 -mno-skip-bug -mmcu=avr25 -msp8
 ;  -auxbase-strip firmware\avr_pi_metal_detector.s -gdwarf-2 -g0 -Os -Wall
 ;  -fverbose-asm
 ;  options enabled:  -Wmisspelled-isr -faggressive-loop-optimizations
 ;  -falign-functions -falign-jumps -falign-labels -falign-loops
 ;  -fauto-inc-dec -fbranch-count-reg -fchkp-check-incomplete-type
 ;  -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
 ;  -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
 ;  -fchkp-use-static-bounds -fchkp-use-static-const-bounds
 ;  -fchkp-use-wrappers -fcombine-stack-adjustments -fcommon -fcompare-elim
 ;  -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
 ;  -fdevirtualize -fdevirtualize-speculatively -fdwarf2-cfi-asm
 ;  -fearly-inlining -feliminate-unused-debug-types
 ;  -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
 ;  -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
 ;  -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
 ;  -findirect-inlining -finline -finline-atomics -finline-functions
 ;  -finline-functions-called-once -finline-small-functions -fipa-cp
 ;  -fipa-cp-alignment -fipa-icf -fipa-icf-functions -fipa-icf-variables
 ;  -fipa-profile -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra
 ;  -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
 ;  -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
 ;  -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
 ;  -fmath-errno -fmerge-constants -fmerge-debug-strings
 ;  -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
 ;  -fpartial-inlining -fpeephole -fpeephole2 -fprefetch-loop-arrays
 ;  -freg-struct-return -freorder-blocks -freorder-functions
 ;  -frerun-cse-after-loop -fsched-critical-path-heuristic
 ;  -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
 ;  -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
 ;  -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
 ;  -fsemantic-interposition -fshow-column -fshrink-wrap -fsigned-zeros
 ;  -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-phiopt -fstdarg-opt
 ;  -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
 ;  -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftrapping-math
 ;  -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp -ftree-ch
 ;  -ftree-coalesce-vars -ftree-copy-prop -ftree-copyrename -ftree-dce
 ;  -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
 ;  -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
 ;  -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
 ;  -ftree-pre -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
 ;  -ftree-slsr -ftree-sra -ftree-switch-conversion -ftree-tail-merge
 ;  -ftree-ter -ftree-vrp -funit-at-a-time -fverbose-asm
 ;  -fzero-initialized-in-bss -msp8

	.text
	.type	measure_decay, @function
measure_decay:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sbi 0x18,2	 ; ,
	ldi r20,lo8(102)	 ; ,
1:	dec r20	 ; 
	brne 1b
	rjmp .
	cbi 0x18,2	 ; ,
	ldi r24,0	 ;  decay
	ldi r25,0	 ;  decay
	ldi r18,0	 ;  decay
	ldi r19,0	 ;  decay
.L3:
	sbic 0x8,5	 ; ,
	movw r24,r18	 ; ,
.L2:
	subi r18,-1	 ;  decay,
	sbci r19,-1	 ;  decay,
	cp r18,__zero_reg__	 ;  decay
	ldi r20,8	 ; ,
	cpc r19,r20	 ;  decay,
	brne .L3	 ; ,
/* epilogue start */
	ret
	.size	measure_decay, .-measure_decay
	.section	.text.startup,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(28)	 ;  tmp61,
	out 0x17,r24	 ;  MEM[(volatile uint8_t *)55B], tmp61
	out 0x8,__zero_reg__	 ;  MEM[(volatile uint8_t *)40B],
	ldi r17,0	 ;  i
	ldi r28,0	 ;  decay
	ldi r29,0	 ;  decay
.L11:
	rcall measure_decay	 ; 
	cp r28,r24	 ;  decay, decay
	cpc r29,r25	 ;  decay, decay
	brsh .L10	 ; ,
	movw r28,r24	 ;  decay, decay
.L10:
	subi r17,lo8(-(1))	 ;  i,
	cpi r17,lo8(-128)	 ;  i,
	brne .L11	 ; ,
	ldi r18,lo8(3)	 ;  D.1864,
.L14:
	ldi r24,lo8(64)	 ;  D.1865,
	ldi r25,0	 ;  D.1865
.L13:
	in r19,0x18	 ;  D.1863, MEM[(volatile uint8_t *)56B]
	ori r19,lo8(24)	 ;  D.1863,
	out 0x18,r19	 ;  MEM[(volatile uint8_t *)56B], D.1863
	ldi r30,lo8(719)	 ; ,
	ldi r31,hi8(719)	 ; ,
1:	sbiw r30,1	 ; 
	brne 1b
	rjmp .
	nop
	in r19,0x18	 ;  D.1863, MEM[(volatile uint8_t *)56B]
	andi r19,lo8(-25)	 ;  D.1863,
	out 0x18,r19	 ;  MEM[(volatile uint8_t *)56B], D.1863
	ldi r30,lo8(719)	 ; ,
	ldi r31,hi8(719)	 ; ,
1:	sbiw r30,1	 ; 
	brne 1b
	rjmp .
	nop
	sbiw r24,1	 ;  D.1865,
	brne .L13	 ; ,
	ldi r31,lo8(122879)	 ; ,
	ldi r19,hi8(122879)	 ; ,
	ldi r24,hlo8(122879)	 ; ,
1:	subi r31,1	 ; 
	sbci r19,0	 ; 
	sbci r24,0	 ; 
	brne 1b
	rjmp .
	nop
	subi r18,lo8(-(-1))	 ;  D.1864,
	brne .L14	 ; ,
	sbiw r28,2	 ;  decay_max,
	ldi r25,lo8(959999)	 ; ,
	ldi r30,hi8(959999)	 ; ,
	ldi r31,hlo8(959999)	 ; ,
1:	subi r25,1	 ; 
	sbci r30,0	 ; 
	sbci r31,0	 ; 
	brne 1b
	rjmp .
	nop
.L17:
	rcall measure_decay	 ; 
	cp r24,r28	 ; , decay_max
	cpc r25,r29	 ; , decay_max
	brsh .L16	 ; ,
	in r24,0x18	 ;  D.1863, MEM[(volatile uint8_t *)56B]
	ori r24,lo8(24)	 ;  D.1863,
	out 0x18,r24	 ;  MEM[(volatile uint8_t *)56B], D.1863
	ldi r24,lo8(240)	 ; ,
	ldi r25,hi8(240)	 ; ,
1:	sbiw r24,1	 ; 
	brne 1b
.L16:
	in r24,0x18	 ;  D.1863, MEM[(volatile uint8_t *)56B]
	andi r24,lo8(-25)	 ;  D.1863,
	out 0x18,r24	 ;  MEM[(volatile uint8_t *)56B], D.1863
	rjmp .L17	 ; 
	.size	main, .-main
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"

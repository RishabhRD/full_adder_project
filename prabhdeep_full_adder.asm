.include "./m328Pdef.inc"

initialise:
	ldi r16,0b11000000
	out ddrd,r16
	ldi r16,0b00000000
	out ddrb,r16
main:
	in r16,pinb
	andi r16,0b00000111
	ldi r17,0b00000001
	ldi r18,0b00000010
	ldi r19,0b00000100
;input a
	and r17,r16
;input b
	and r18,r16
	lsr r18
;input c
	and r19,r16
	lsr r19
	lsr r19
;output calulation
	ldi r25,0b00000000
	add r25,r17
	add r25,r18
	add r25,r19
;output
	lsl r25
	lsl r25
	lsl r25
	lsl r25
	lsl r25
	lsl r25
	out portd, r25
	rjmp main

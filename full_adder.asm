.include "./m328Pdef.inc"
main:
ldi r16,0b11000000		;for port d configuration for LED output
out ddrd,r16
ldi r16,0b00000000		;for port b configuration for switches
out ddrb,r16
loop:
in r16,pinb
andi r16,0b00000111

ldi r23 ,0x00			;real sum

;input from a
mov r22,r16
andi r22,0x01
add r23,r22


;input from b
mov r22,r16
andi r22,2
lsr r22
add r23 , r22

;input from c
mov r22,r16
andi r22,4
lsr r22
lsr r22
add r23 , r22


;write output
lsl r23
lsl r23
lsl r23
lsl r23
lsl r23
lsl r23
out portd,r23
rjmp loop

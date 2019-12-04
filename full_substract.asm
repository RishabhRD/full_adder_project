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
ldi r27,0x00;a`
ldi r28,0x00;b
ldi r29,0x00;c
ldi r30,0x00;result
ldi r31,0x00;bc

;input from a
mov r22,r16
andi r22,0x01
add r23,r22
com r22
andi r22, 0x01
add r27,r22


;input from b
mov r22,r16
andi r22,2
lsr r22
add r23 , r22
mov r28,r22

;input from c
mov r22,r16
andi r22,4
lsr r22
lsr r22
add r23 , r22


;calculate borrow
mov r29,r22
mov r30,r28
or r30,r29
and r30,r27
mov r31,r28
and r31,r29
or r30,r31
lsl r30
andi r23,0x01
add r23,r30

;write output
lsl r23
lsl r23
lsl r23
lsl r23
lsl r23
lsl r23
out portd,r23
rjmp loop

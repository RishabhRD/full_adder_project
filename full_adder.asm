.include "./m328Pdef.inc"
main:
ldi r16,0b11000000		;for port d configuration for LED output
out ddrd,r16
ldi r16,0b00000000		;for port b configuration for switches

in r16,pinb
andi r16,0b00000111

ldi r17,0x00			;a
ldi r18,0x00			;b
ldi r19,0x00			;c


ldi r20,0x00			;sum
ldi r21,0x00			;carry

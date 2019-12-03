# FULL ADDER AVR ASSEMBLY
This project demonstrates the working of full adder using AVR assembly.

Tested on Arduino UNO R3 board.

### Team Members
Rishabh Dwivedi (**rishabhdwivedi17@gmail.com**)

Prabhdeep Singh Parmar (**prabhcoder@gmail.com**)

### Requirements
	avra

	avrdude

### Installation Instructions
	avra  full_adder.asm
	sudo avrdude -C /etc/avrdude.conf -v -p atmega328p -c arduino -P /dev/ttyACM0 -b 115200 -D -U flash:w:path/to/full_adder.hex:i

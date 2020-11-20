CBI DDRB, 5 //assuming input 
SBI DDRB, 3 //assuming output


L1:
SBIS PINB, 5 //waiting for HIGH on input
RJMP L1
SBI PORTB, 3 // produces pulse
CALL LOOP //will generate 23 microsecond delay
CBI PORTB, 3 //turns off pulse
CALL LOOP //delay

RJMP L1 // continuously check for button press and perform pulse


LOOP: 


LDI R16, 5 
AGAIN: DEC R16 
BRNE AGAIN 
ret

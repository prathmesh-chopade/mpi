DATA SEGMENT
X DB 01H,02H,03H,04H,05H ;Initialize Data Segments Memory Locations
Y DB 05 DUP (0)
DATA ENDS
CODE SEGMENT
ASSUME CS: CODE, DS: DATA
START: MOV AX, DATA; Initialize DS to point to start of the memory
MOV DS, AX; set aside for storing of data
MOV CX, 05H ; Load counter
LEA SI, X+04; SI pointer pointed to top of the memory block
LEA DI, X+04+03; 03 is displacement of over lapping, DI pointed to the top of the destination block
CODE ENDS
END START

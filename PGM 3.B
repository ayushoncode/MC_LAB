        AREA PGM1, CODE, READONLY
        ENTRY

        LDR R7, =TABLE
        MOV R0, #10
        MOV R1, #0

LOOP
        LDRH R2, [R7], #2
        ADD R1, R1, R2
        SUBS R0, R0, #1
        BNE LOOP

        MOV R3, #10
        MOV R4, #0
        MOV R5, R1

DIV
        SUBS R5, R5, R3
        ADDPL R4, R4, #1
        BPL DIV

        ADDMI R5, R5, R3

STOP
        B STOP

TABLE
        DCW 10,20,30,40,50,60,70,80,90,100

        END

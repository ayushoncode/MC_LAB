        AREA PGM1, CODE, READONLY
        ENTRY

        MOV R1, #0
        MOV R2, #1

LOOP
        BL SQV
        ADD R1, R1, R0
        ADD R2, R2, #1
        CMP R2, #6
        BNE LOOP

STOP
        B STOP

SQV
        MUL R0, R2, R2
        MOV PC, LR

        END

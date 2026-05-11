        AREA PROG1, CODE, READONLY

PREV   RN 0
CURR   RN 1

        ENTRY

        MOV CURR, #1
        LDR R2, =TABLE
        LDR R3, =NUMFIBO

        LDRB R4, [R3]
        STRB CURR, [R2], #1

        MOV PREV, #0
        MOV CURR, #1
        MOV R5, #1

        SUBS R4, R4, #1

LOOP
        ADD R6, PREV, CURR
        STRB R6, [R2], #1

        MOV PREV, CURR
        MOV CURR, R6

        ADD R5, R5, #1
        CMP R5, R4
        BLS LOOP

STOP
        B STOP

NUMFIBO
        DCB 10

TABLE
        SPACE 20

        END

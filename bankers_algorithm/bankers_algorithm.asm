.Orig x3000
INIT_CODE
LEA R6, #-1
ADD R5, R6, #0
ADD R6, R6, R6
ADD R6, R6, R6
ADD R6, R6, R5
ADD R6, R6, #-1
ADD R5, R5, R5
ADD R5, R6, #0
LD R4, GLOBAL_DATA_POINTER
LD R7, GLOBAL_MAIN_POINTER
LD R0, GLOBAL_MAIN_POINTER
jsrr R0
HALT

GLOBAL_DATA_POINTER .FILL GLOBAL_DATA_START
GLOBAL_MAIN_POINTER .FILL main
;;;;;;;;;;;;;;;;;;;;;;;;;;;;main;;;;;;;;;;;;;;;;;;;;;;;;;;;;
main
ADD R6, R6, #-2
STR R7, R6, #0
ADD R6, R6, #-1
STR R5, R6, #0
ADD R5, R6, #-1

ADD R6, R6, #-16
ADD R6, R6, #-16
ADD R6, R6, #-16
ADD R6, R6, #-16
ADD R1, R5, #-16
ADD R1, R1, #-16
ADD R1, R1, #-3
ADD R0, R4, #0
;ASGNB
ADD R6, R6, #-1
STR R2, R6, #0
ADD R6, R6, #-1
STR R3, R6, #0
;blkloop!!!!
AND R3, R3, #0
ADD R3, R3, #15
L52
LDR R2, R0, #0
STR R2, R1, #0
ADD R0, R0, #1
ADD R1, R1, #1
ADD R3, R3, #-1
BRnp L52
LDR R3, R6, #0
ADD R6, R6, #1
LDR R2, R6, #0
ADD R6, R6, #1
ADD R1, R5, #-16
ADD R1, R1, #-16
ADD R1, R1, #-16
ADD R1, R1, #-7
ADD R0, R4, #15
ADD R0, R0, #0
;ASGNB
ADD R6, R6, #-1
STR R2, R6, #0
ADD R6, R6, #-1
STR R3, R6, #0
;blkloop!!!!
AND R3, R3, #0
ADD R3, R3, #15
L53
LDR R2, R0, #0
STR R2, R1, #0
ADD R0, R0, #1
ADD R1, R1, #1
ADD R3, R3, #-1
BRnp L53
LDR R3, R6, #0
ADD R6, R6, #1
LDR R2, R6, #0
ADD R6, R6, #1
ADD R1, R5, #-5
ADD R0, R4, #15
ADD R0, R0, #15
;ASGNB
ADD R6, R6, #-1
STR R2, R6, #0
ADD R6, R6, #-1
STR R3, R6, #0
;blkloop!!!!
AND R3, R3, #0
ADD R3, R3, #3
L54
LDR R2, R0, #0
STR R2, R1, #0
ADD R0, R0, #1
ADD R1, R1, #1
ADD R3, R3, #-1
BRnp L54
LDR R3, R6, #0
ADD R6, R6, #1
LDR R2, R6, #0
ADD R6, R6, #1
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #12
ldr R7, R7, #0
;spilling -62
STR R4, R6, #-1
ADD R4, R5, #-16
ADD R4, R4, #-16
ADD R4, R4, #-16
STR R7, R4, #-14
LDR R4, R6, #-1
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #12
ldr R7, R7, #0
;spilling -56
STR R4, R6, #-1
ADD R4, R5, #-16
ADD R4, R4, #-16
ADD R4, R4, #-16
STR R7, R4, #-8
LDR R4, R6, #-1
lc3_L6_bankers_algorithm
ADD R7, R5, #-16
ADD R7, R7, #-16
ADD R7, R7, #-16
ADD R7, R7, #-8
ldr R7, R7, #0
ADD R3, R5, #-16
ADD R3, R3, #-16
ADD R3, R3, #-8
add R7, R7, R3
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #12
ldr R3, R3, #0
str R3, R7, #0
lc3_L7_bankers_algorithm
ADD R7, R5, #-16
ADD R7, R7, #-16
ADD R7, R7, #-16
ADD R7, R7, #-8
ldr R7, R7, #0
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #14
ldr R3, R3, #0
add R7, R7, R3
;spilling -56
STR R4, R6, #-1
ADD R4, R5, #-16
ADD R4, R4, #-16
ADD R4, R4, #-16
STR R7, R4, #-8
LDR R4, R6, #-1
ADD R7, R5, #-16
ADD R7, R7, #-16
ADD R7, R7, #-16
ADD R7, R7, #-8
ldr R7, R7, #0
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #11
ldr R3, R3, #0
NOT R7, R7
ADD R7, R7, #1
ADD R7, R7, R3
BRnz L55
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #3
LDR R7, R7, #0
jmp R7
L55
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #12
ldr R7, R7, #0
str R7, R5, #-1
lc3_L12_bankers_algorithm
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #12
ldr R7, R7, #0
str R7, R5, #0
lc3_L16_bankers_algorithm
ldr R7, R5, #0
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #13
ldr R3, R3, #0
ldr R2, R5, #-1
ADD R6, R6, #-1
STR R0, R6, #0
ADD R6, R6, #-1
STR R2, R6, #0
AND R0, R0, #0
ADD R2, R2, #0
BRz L57
BRp L56
NOT R2, R2
ADD R2, R2, #1
L56
ADD R0, R0, R3
ADD R2, R2, #-1
BRnp L56
L57
LDR R2, R6, #0
ADD R6, R6, #1
ADD R2, R2, #0
BRzp L58
NOT R0, R0
ADD R0, R0, #1
L58
;bef epilogue x=0 y=3 z=2
ADD R3, R0, #0
LDR R0, R6, #0
ADD R6, R6, #1
;aft epilogue x=0 y=3 z=2
ADD R2, R5, #-16
ADD R2, R2, #-4
add R2, R3, R2
add R2, R7, R2
ADD R1, R5, #-16
ADD R1, R1, #-16
ADD R1, R1, #-16
ADD R1, R1, #-7
add R1, R3, R1
add R1, R7, R1
ldr R1, R1, #0
ADD R0, R5, #-16
ADD R0, R0, #-16
ADD R0, R0, #-3
add R3, R3, R0
add R7, R7, R3
ldr R7, R7, #0
ADD R6, R6, #-1
STR R0, R6, #0
ADD R6, R6, #-1
STR R7, R6, #0
NOT R7, R7
ADD R7, R7, #1
ADD R0, R1, R7
LDR R7, R6, #0
ADD R6, R6, #1
ADD R7, R0, #0
LDR R0, R6, #0
ADD R6, R6, #1
str R7, R2, #0
lc3_L17_bankers_algorithm
ldr R7, R5, #0
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #14
ldr R3, R3, #0
add R7, R7, R3
str R7, R5, #0
ldr R7, R5, #0
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #13
ldr R3, R3, #0
NOT R7, R7
ADD R7, R7, #1
ADD R7, R7, R3
BRnz L59
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #6
LDR R7, R7, #0
jmp R7
L59
lc3_L13_bankers_algorithm
ldr R7, R5, #-1
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #14
ldr R3, R3, #0
add R7, R7, R3
str R7, R5, #-1
ldr R7, R5, #-1
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #11
ldr R3, R3, #0
NOT R7, R7
ADD R7, R7, #1
ADD R7, R7, R3
BRnz L60
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #5
LDR R7, R7, #0
jmp R7
L60
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #12
ldr R7, R7, #0
;spilling -56
STR R4, R6, #-1
ADD R4, R5, #-16
ADD R4, R4, #-16
ADD R4, R4, #-16
STR R7, R4, #-8
LDR R4, R6, #-1
lc3_L21_bankers_algorithm
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #12
ldr R7, R7, #0
str R7, R5, #-1
lc3_L25_bankers_algorithm
ldr R7, R5, #-1
ADD R3, R5, #-16
ADD R3, R3, #-16
ADD R3, R3, #-8
add R7, R7, R3
ldr R7, R7, #0
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #12
ldr R3, R3, #0
NOT R7, R7
ADD R7, R7, #1
ADD R7, R7, R3
BRz L61
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #3
LDR R7, R7, #0
jmp R7
L61
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #12
ldr R7, R7, #0
;spilling -63
STR R4, R6, #-1
ADD R4, R5, #-16
ADD R4, R4, #-16
ADD R4, R4, #-16
STR R7, R4, #-15
LDR R4, R6, #-1
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #12
ldr R7, R7, #0
str R7, R5, #0
lc3_L31_bankers_algorithm
ldr R7, R5, #0
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #13
ldr R3, R3, #0
ldr R2, R5, #-1
ADD R6, R6, #-1
STR R0, R6, #0
ADD R6, R6, #-1
STR R2, R6, #0
AND R0, R0, #0
ADD R2, R2, #0
BRz L63
BRp L62
NOT R2, R2
ADD R2, R2, #1
L62
ADD R0, R0, R3
ADD R2, R2, #-1
BRnp L62
L63
LDR R2, R6, #0
ADD R6, R6, #1
ADD R2, R2, #0
BRzp L64
NOT R0, R0
ADD R0, R0, #1
L64
;bef epilogue x=0 y=3 z=2
ADD R3, R0, #0
LDR R0, R6, #0
ADD R6, R6, #1
;aft epilogue x=0 y=3 z=2
ADD R2, R5, #-16
ADD R2, R2, #-4
add R3, R3, R2
add R3, R7, R3
ldr R3, R3, #0
ADD R2, R5, #-5
add R7, R7, R2
ldr R7, R7, #0
NOT R7, R7
ADD R7, R7, #1
ADD R7, R7, R3
BRp L65
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #12
LDR R7, R7, #0
jmp R7
L65
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #14
ldr R7, R7, #0
;spilling -63
STR R4, R6, #-1
ADD R4, R5, #-16
ADD R4, R4, #-16
ADD R4, R4, #-16
STR R7, R4, #-15
LDR R4, R6, #-1
ADD R0, R4, #15
ADD R0, R0, #15
ADD R0, R0, #14
LDR R0, R0, #0
JMP R0
lc3_L35_bankers_algorithm
lc3_L32_bankers_algorithm
ldr R7, R5, #0
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #14
ldr R3, R3, #0
add R7, R7, R3
str R7, R5, #0
ldr R7, R5, #0
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #13
ldr R3, R3, #0
NOT R7, R7
ADD R7, R7, #1
ADD R7, R7, R3
BRnz L66
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #11
LDR R7, R7, #0
jmp R7
L66
lc3_L33_bankers_algorithm
ADD R7, R5, #-16
ADD R7, R7, #-16
ADD R7, R7, #-16
ADD R7, R7, #-15
ldr R7, R7, #0
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #12
ldr R3, R3, #0
NOT R7, R7
ADD R7, R7, #1
ADD R7, R7, R3
BRz L67
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #2
LDR R7, R7, #0
jmp R7
L67
ADD R7, R5, #-16
ADD R7, R7, #-16
ADD R7, R7, #-16
ADD R7, R7, #-14
ldr R7, R7, #0
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #14
ldr R3, R3, #0
add R3, R7, R3
;spilling -62
STR R4, R6, #-1
ADD R4, R5, #-16
ADD R4, R4, #-16
ADD R4, R4, #-16
STR R3, R4, #-14
LDR R4, R6, #-1
ADD R3, R5, #-16
ADD R3, R3, #-16
ADD R3, R3, #-16
ADD R3, R3, #-13
add R7, R7, R3
ldr R3, R5, #-1
str R3, R7, #0
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #12
ldr R7, R7, #0
str R7, R5, #-2
lc3_L39_bankers_algorithm
ldr R7, R5, #-2
ADD R3, R5, #-5
add R3, R7, R3
ldr R2, R3, #0
ADD R1, R4, #15
ADD R1, R1, #15
ADD R1, R1, #15
ADD R1, R1, #15
ADD R1, R1, #15
ADD R1, R1, #13
ldr R1, R1, #0
ldr R0, R5, #-1
ADD R6, R6, #-1
STR R2, R6, #0
ADD R6, R6, #-1
STR R0, R6, #0
AND R2, R2, #0
ADD R0, R0, #0
BRz L69
BRp L68
NOT R0, R0
ADD R0, R0, #1
L68
ADD R2, R2, R1
ADD R0, R0, #-1
BRnp L68
L69
LDR R0, R6, #0
ADD R6, R6, #1
ADD R0, R0, #0
BRzp L70
NOT R2, R2
ADD R2, R2, #1
L70
;bef epilogue x=2 y=1 z=0
ADD R1, R2, #0
LDR R2, R6, #0
ADD R6, R6, #1
;aft epilogue x=2 y=1 z=0
ADD R0, R5, #-16
ADD R0, R0, #-16
ADD R0, R0, #-3
add R1, R1, R0
add R7, R7, R1
ldr R7, R7, #0
add R7, R2, R7
str R7, R3, #0
lc3_L40_bankers_algorithm
ldr R7, R5, #-2
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #14
ldr R3, R3, #0
add R7, R7, R3
str R7, R5, #-2
ldr R7, R5, #-2
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #13
ldr R3, R3, #0
NOT R7, R7
ADD R7, R7, #1
ADD R7, R7, R3
BRnz L71
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
LDR R7, R7, #0
jmp R7
L71
ldr R7, R5, #-1
ADD R3, R5, #-16
ADD R3, R3, #-16
ADD R3, R3, #-8
add R7, R7, R3
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #14
ldr R3, R3, #0
str R3, R7, #0
lc3_L37_bankers_algorithm
lc3_L29_bankers_algorithm
lc3_L26_bankers_algorithm
ldr R7, R5, #-1
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #14
ldr R3, R3, #0
add R7, R7, R3
str R7, R5, #-1
ldr R7, R5, #-1
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #11
ldr R3, R3, #0
NOT R7, R7
ADD R7, R7, #1
ADD R7, R7, R3
BRnz L72
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #10
LDR R7, R7, #0
jmp R7
L72
lc3_L22_bankers_algorithm
ADD R7, R5, #-16
ADD R7, R7, #-16
ADD R7, R7, #-16
ADD R7, R7, #-8
ldr R7, R7, #0
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #14
ldr R3, R3, #0
add R7, R7, R3
;spilling -56
STR R4, R6, #-1
ADD R4, R5, #-16
ADD R4, R4, #-16
ADD R4, R4, #-16
STR R7, R4, #-8
LDR R4, R6, #-1
ADD R7, R5, #-16
ADD R7, R7, #-16
ADD R7, R7, #-16
ADD R7, R7, #-8
ldr R7, R7, #0
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #11
ldr R3, R3, #0
NOT R7, R7
ADD R7, R7, #1
ADD R7, R7, R3
BRnz L73
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #9
LDR R7, R7, #0
jmp R7
L73
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #10
ADD R6, R6, #-1
STR R7, R6, #0
ADD R0, R4, #15
ADD R0, R0, #15
ADD R0, R0, #15
ADD R0, R0, #10
LDR R0, R0, #0
jsrr R0
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #12
ldr R7, R7, #0
str R7, R5, #-1
lc3_L44_bankers_algorithm
ldr R7, R5, #-1
ADD R3, R5, #-16
ADD R3, R3, #-16
ADD R3, R3, #-16
ADD R3, R3, #-13
add R7, R7, R3
ldr R7, R7, #0
ADD R6, R6, #-1
STR R7, R6, #0
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #2
ADD R6, R6, #-1
STR R7, R6, #0
ADD R0, R4, #15
ADD R0, R0, #15
ADD R0, R0, #15
ADD R0, R0, #10
LDR R0, R0, #0
jsrr R0
lc3_L45_bankers_algorithm
ldr R7, R5, #-1
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #14
ldr R3, R3, #0
add R7, R7, R3
str R7, R5, #-1
ldr R7, R5, #-1
ADD R3, R4, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #15
ADD R3, R3, #1
ldr R3, R3, #0
NOT R7, R7
ADD R7, R7, #1
ADD R7, R7, R3
BRnz L74
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #6
LDR R7, R7, #0
jmp R7
L74
ADD R7, R5, #-16
ADD R7, R7, #-16
ADD R7, R7, #-16
ADD R7, R7, #-9
ldr R7, R7, #0
ADD R6, R6, #-1
STR R7, R6, #0
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #11
ADD R6, R6, #-1
STR R7, R6, #0
ADD R0, R4, #15
ADD R0, R0, #15
ADD R0, R0, #15
ADD R0, R0, #10
LDR R0, R0, #0
jsrr R0
ADD R7, R4, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #15
ADD R7, R7, #12
ldr R7, R7, #0
lc3_L1_bankers_algorithm
STR R7, R5, #3
ADD R6, R5, #1
LDR R5, R6, #0
ADD R6, R6, #1
LDR R7, R6, #0
ADD R6, R6, #1
RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;	void scanf(const char *format, ...) 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 

SCANF_PERCENT .FILL -37
SCANF_C .FILL -99
SCANF_D .FILL -100
SCANF_S .FILL -115 
SCANF_0 .FILL -48 
SCANF_9 .FILL -57  
SCANF_MINUS .FILL -45  
SCANF_BUF .BLKW 6
 
lc3_scanf 
ADD R6, R6, #-2 
STR R7, R6, #0 
 
ADD R6, R6, #-1		;save R5 = bp 
STR R5, R6, #0		 
ADD R5, R6, #-1 
 
ADD R6, R6, #-1		;save R4 = gp 
STR R4, R6, #0 
 
ADD R5, R5, #4		;cheating with the bp (no longer bp) 
LDR R4, R5, #0		;got addr of format string 
 

 

SCANF_LOOP	;outer loop, R0=tmp register for use with GETC 
			;R2 holds either cur letter of format string or 
			;current addr to store a char, dec, or string 
 
 
 
LDR R2, R4, #0 
 
ADD R2, R2, #0		;End of format string? (0x0000) 
BRz SCANF_DONE
 
LD R1, SCANF_PERCENT
ADD R0, R2, #0 
ADD R0, R0, R1		
BRnp SCANF_MATCHCHAR		 ;% not found
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;% found! 
ADD R4, R4, #1		;R4 points to next char of format string 
LDR R2, R4, #0 
 
LD R1, SCANF_C
ADD R0, R2, #0		;next char = c? 
ADD R0, R0, R1 
BRnp SCANF_CHECKD    

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;%c found
ADD R5, R5, #1 
LDR R2, R5, #0		;R2 has addr for char to be read into 

GETC 
OUT
STR R0, R2, #0 
 
ADD R4, R4, #1 
BRnzp SCANF_LOOP
 
SCANF_CHECKD 
;is it %d? 
LD R1, SCANF_D
ADD R0, R2, #0 
ADD R0, R0, R1 
BRnp SCANF_STR  
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;%d found
;consider using vars to store reg
;registers 0,1,2,3,7 available as tmp regs
 
 
ADD R6, R6, #-1		;saving current ptr into format string 
STR R4, R6, #0 
 
;ADD R6, R6, #-7		  ;making 7byte buffer for ascbin 
;ADD R4, R6, #0		  ;ptr into that buffer 
LEA R4, SCANF_BUF 
LD R2, SCANF_0
LD R1, SCANF_9
 
SCANF_SCANNUM 
 
GETC 
OUT
STR R0, R4, #0		;Reading and storing typed char 
 
ADD R0, R2, R0 
BRZP SCANF_CHECKEDLOWER 

LDR R0, R4, #0 
LD R7, SCANF_MINUS
ADD R0, R0, R7
BRz SCANF_CHECKEDLOWER
 
LEA R0, SCANF_BUF 
NOT R0, R0 
ADD R0, R0, #1 
ADD R0, R4, R0 
BRz SCANF_SCANNUM	  ;buffer is empty and wrong char, go to error?
 
ADD R4, R4, #-1 		;fixme: need to save this char
BRnzp SCANF_NUMDONE 
 
 
SCANF_CHECKEDLOWER 
 
LDR R0, R4, #0 
ADD R0, R1, R0 
BRNZ SCANF_CHECKEDUPPER 
 
LEA R0, SCANF_BUF 
NOT R0, R0 
ADD R0, R0, #1 
ADD R0, R4, R0 
BRz SCANF_SCANNUM	  ;buffer is empty and wrong char, go to error?
 
ADD R4, R4, #-1 		;fixme: need to save this char
BRnzp SCANF_NUMDONE 
 
SCANF_CHECKEDUPPER 
 
LEA R0, SCANF_BUF 
ADD R0, R0, #5 

NOT R0, R0 
ADD R0, R0, #1 
ADD R0, R4, R0 
BRz SCANF_NUMDONE	  ;buffer is full 
 
ADD R4, R4, #1 
BRnzp SCANF_SCANNUM 
 
SCANF_NUMDONE 
		 ;R4 points to last char entered in (ones digit) 
 
;ADD R7, R6, #0	 ;R7 points to the highest order digit 
LEA R7, SCANF_BUF 
LD R0, SCANF_MINUS
LD R1, SCANF_BUF
ADD R0, R0, R1
BRnp SCANF_NOTMINUS
ADD R7, R7, #1 	;fixme check for - -

SCANF_NOTMINUS
 
;STR R2, R6, #-1  ;psuedo stored -'0' on stack 
AND R2, R2, #0	 ;R2 acts as the acumulator 
 
SCANF_CALC 
 
LDR R0, R7, #0 
;LDR R1, R6, #-1 
LD R1, SCANF_0
ADD R0, R0, R1 
ADD R2, R2, R0 
 
NOT R1, R7 
ADD R1, R1, #1 
ADD R1, R4, R1 
BRz SCANF_CALCDONE 
			 ;R2 = 10*R2 
ADD R0, R2, #0 
AND R1, R1, #0 
ADD R1, R1, #9 ;R1 = counter 
 
SCANF_MULLOOP 
ADD R2, R2, R0 
ADD R1, R1, #-1 
BRnp SCANF_MULLOOP 
 
ADD R7, R7, #1 
BRnzp SCANF_CALC 
 
SCANF_CALCDONE			  

LD R0, SCANF_MINUS
LD R1, SCANF_BUF
ADD R0, R0, R1
BRnp SCANF_NOTNEG
NOT R2, R2
ADD R2, R2, #1

SCANF_NOTNEG
 
 
ADD R5, R5, #1 
LDR R0, R5, #0 		
 
STR R2, R0, #0	   ;store decimal number into address 
 
;ADD R6, R6, #7 
 
LDR R4, R6, #0 
ADD R6, R6, #1		;restoring current ptr into format string 
 
 
ADD R4, R4, #1	   ;point to next element of format string 
BRnzp SCANF_LOOP
 
 
SCANF_STR  
LD R1, SCANF_S
ADD R0, R2, #0 
ADD R0, R0, R1 
BRnp SCANF_ERROR
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;%s found
ADD R6, R6, #-1		;saving current ptr into format string 
STR R4, R6, #0 
 
ADD R5, R5, #1		;getting starting addr of space for string to be read in 
LDR R4, R5, #0 
 
SCANSTRLOOP 
GETC 
OUT
STR R0, R4, #0		;Reading and storing typed char 
ADD R4, R4, #1 
 
ADD R0, R0, #-10	;End of string? Looking for CR (0x000A) 
BRnp SCANSTRLOOP   
 
SCANSTRDONE  
AND R0, R0, #0		;null terminate string 
STR R0, R4, #-1 
 
LDR R4, R6, #0		;restore r4 
ADD R6, R6, #1 
 
ADD R4, R4, #1 
BRnzp SCANF_LOOP
 
 
SCANF_MATCHCHAR 
ADD R4, R4, #1
GETC 
OUT
NOT R0, R0
ADD R0, R0, #1
ADD R0, R0, R2 
BRz SCANF_LOOP
 
SCANF_ERROR
SCANF_DONE
 
LDR R4, R6, #0		;restore R4 
ADD R6, R6, #1 
 
LDR R5, R6, #0		;restore bp 
ADD R6, R6, #1 
 
LDR R7, R6, #0		;restore ret addr 
ADD R6, R6, #1 
 
RET 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	void printf(const char *format, ...)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PRINTF_PERCENT .FILL -37
PRINTF_C .FILL -99
PRINTF_D .FILL -100
PRINTF_S .FILL -115
PRINTF_B .FILL -98
PRINTF_O .FILL -111
PRINTF_X .FILL -120
PRINTF_ASCII .FILL 48 		;postive ascii value of '0'
.FILL 49
.FILL 50
.FILL 51
.FILL 52
.FILL 53
.FILL 54
.FILL 55
.FILL 56
.FILL 57
.FILL 65        ;A
.FILL 66
.FILL 67
.FILL 68
.FILL 69
.FILL 70
PRINTF_MINUS .FILL 45  
PRINTF_BUF .BLKW 18
 

lc3_printf
ADD R6, R6, #-2
STR R7, R6, #0		;return address
ADD R6, R6, #-1
STR R5, R6, #0
ADD R5, R6, #-1

ADD R6, R6, #-1
STR R4, R6, #0

ADD R5, R5, #4		;cheating with the bp (no longer bp)
LDR R4, R5, #0		;got addr of format string


PRINTF_LOOP	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

LDR R0, R4, #0

ADD R0, R0, #0		;End of string? (0x0000)
BRz PRINTF_DONE

ADD R2, R0, #0
LD R1, PRINTF_PERCENT
ADD R2, R2, R1
BRnp PRINTF_CHAR		

ADD R4, R4, #1
LDR R0, R4, #0
;is it %c?
ADD R2, R0, #0
LD R3, PRINTF_C
ADD R2, R2, R3
BRnp PRINTF_CHECKSTR
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;%c
ADD R5, R5, #1
LDR R0, R5, #0

PRINTF_CHAR
OUT

ADD R4, R4, #1
BRnzp PRINTF_LOOP

PRINTF_CHECKSTR
;is it %s?
ADD R2, R0, #0
LD R7, PRINTF_S
ADD R2, R2, R7
BRnp PRINTF_CHECKDEC		

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;%s

ADD R5, R5, #1
LDR R0, R5, #0
PUTS

ADD R4, R4, #1
BRnzp PRINTF_LOOP

PRINTF_CHECKDEC
;is it %d?
ADD R2, R0, #0
LD R7, PRINTF_D
ADD R2, R2, R7
;BRnp PRINTF_ERROR
BRnp PRINTF_CHECKHEX

AND R2, R2, #0
ADD R2, R2, #-10		;going to divide by 10 by using sub loop
BRnzp PRINTF_NUM

PRINTF_CHECKHEX

ADD R2, R0, #0
LD R7, PRINTF_X
ADD R2, R2, R7
BRnp PRINTF_CHECKOCT

AND R2, R2, #0
ADD R2, R2, #-16		;going to divide by 10 by using sub loop
BRnzp PRINTF_NUM

PRINTF_CHECKOCT

ADD R2, R0, #0
LD R7, PRINTF_O
ADD R2, R2, R7
BRnp PRINTF_CHECKBIN

AND R2, R2, #0
ADD R2, R2, #-8		;going to divide by 10 by using sub loop
BRnzp PRINTF_NUM

PRINTF_CHECKBIN

ADD R2, R0, #0
LD R7, PRINTF_B
ADD R2, R2, R7
BRnp PRINTF_ERROR

AND R2, R2, #0
ADD R2, R2, #-2		;going to divide by 10 by using sub loop
;BRnzp PRINTF_NUM



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;%d
PRINTF_NUM

LEA R7, PRINTF_BUF
ADD R7, R7, #15 
ADD R7, R7, #1 

;AND R2, R2, #0
;ADD R2, R2, #-10		;going to divide by 10 by using sub loop

ADD R5, R5, #1			;acquire the binary number
LDR R0, R5, #0

ADD R0, R0, #0
BRzp PRINTF_DECPOS 

NOT R0, R0				;make num positive for sub loop
ADD R0, R0, #1

PRINTF_DECPOS

AND R3, R3, #0
ADD R3, R3, #-1

PRINTF_DIVLOOP
ADD R3, R3, #1			;num/10 
ADD R0, R0, R2			;R0 = num % 10 - 10
BRzp PRINTF_DIVLOOP

ADD R3, R3, #0
BRz PRINTF_LASTDIGIT

;LD R1, PRINTF_ASCII
;ADD R1, R1, R0
;NOT R2, R2
;ADD R1, R1, R2 
;ADD R1, R1, #1
;NOT R2, R2
;;;;;ADD R1, R1, #10
;STR R1, R7, #0
;ADD R7, R7, #-1			;stored ascii value of one digit

LEA R1, PRINTF_ASCII
ADD R1, R1, R0
NOT R2, R2
ADD R1, R1, R2 
ADD R1, R1, #1
NOT R2, R2
LDR R1, R1, #0
STR R1, R7, #0
ADD R7, R7, #-1			;stored ascii value of one digit

ADD R0, R3, #0			;num/10

BRnzp PRINTF_DECPOS

PRINTF_LASTDIGIT

;LD R1, PRINTF_ASCII
;ADD R1, R1, R0
;ADD R1, R1, #10
;STR R1, R7, #0

LEA R1, PRINTF_ASCII
ADD R1, R1, R0
NOT R2, R2
ADD R1, R1, R2 
ADD R1, R1, #1
NOT R2, R2
LDR R1, R1, #0
STR R1, R7, #0			;stored ascii value of highest order digit

LDR R0, R5, #0
ADD R0, R0, #0
BRzp PRINTF_DECSTRING

LD R0, PRINTF_MINUS		;num was negative
ADD R7, R7, #-1
STR R0, R7, #0			;stored ascii value negative sign

PRINTF_DECSTRING		;print the calculated string
ADD R0, R7, #0
PUTS

ADD R4, R4, #1
BRnzp PRINTF_LOOP

PRINTF_ERROR
PRINTF_DONE

LDR R4, R6, #0		;restore R4
ADD R6, R6, #1

LDR R5, R6, #0		;restore bp
ADD R6, R6, #1

LDR R7, R6, #0		;restore ret addr
ADD R6, R6, #1

RET

GLOBAL_DATA_START
L2_bankers_algorithm .FILL #0
.FILL #1
.FILL #0
.FILL #2
.FILL #0
.FILL #0
.FILL #3
.FILL #0
.FILL #2
.FILL #2
.FILL #1
.FILL #1
.FILL #0
.FILL #0
.FILL #2
L3_bankers_algorithm .FILL #7
.FILL #5
.FILL #3
.FILL #3
.FILL #2
.FILL #2
.FILL #9
.FILL #0
.FILL #2
.FILL #2
.FILL #2
.FILL #2
.FILL #4
.FILL #3
.FILL #3
L4_bankers_algorithm .FILL #3
.FILL #3
.FILL #2
L6_bankers_algorithm .FILL lc3_L6_bankers_algorithm
L7_bankers_algorithm .FILL lc3_L7_bankers_algorithm
L12_bankers_algorithm .FILL lc3_L12_bankers_algorithm
L16_bankers_algorithm .FILL lc3_L16_bankers_algorithm
L17_bankers_algorithm .FILL lc3_L17_bankers_algorithm
L13_bankers_algorithm .FILL lc3_L13_bankers_algorithm
L21_bankers_algorithm .FILL lc3_L21_bankers_algorithm
L25_bankers_algorithm .FILL lc3_L25_bankers_algorithm
L31_bankers_algorithm .FILL lc3_L31_bankers_algorithm
L35_bankers_algorithm .FILL lc3_L35_bankers_algorithm
L32_bankers_algorithm .FILL lc3_L32_bankers_algorithm
L33_bankers_algorithm .FILL lc3_L33_bankers_algorithm
L39_bankers_algorithm .FILL lc3_L39_bankers_algorithm
L40_bankers_algorithm .FILL lc3_L40_bankers_algorithm
L37_bankers_algorithm .FILL lc3_L37_bankers_algorithm
L29_bankers_algorithm .FILL lc3_L29_bankers_algorithm
L26_bankers_algorithm .FILL lc3_L26_bankers_algorithm
L22_bankers_algorithm .FILL lc3_L22_bankers_algorithm
L44_bankers_algorithm .FILL lc3_L44_bankers_algorithm
L45_bankers_algorithm .FILL lc3_L45_bankers_algorithm
L1_bankers_algorithm .FILL lc3_L1_bankers_algorithm
scanf .FILL lc3_scanf
printf .FILL lc3_printf
L50_bankers_algorithm .STRINGZ "P%d\n"
L49_bankers_algorithm .FILL #4
L48_bankers_algorithm .STRINGZ "P%d -> "
L43_bankers_algorithm .STRINGZ "Safe sequence:\n"
L11_bankers_algorithm .FILL #5
L5_bankers_algorithm .FILL #0
L20_bankers_algorithm .FILL #3
L10_bankers_algorithm .FILL #1
.END

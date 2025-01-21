.MODEL LARGE
.STACK 1000H

.DATA
    P1 DB 10,13,10,13,'                 **Welcome to Laptop Shop$',10,13 
    P2 DB 10,13,10,13,'Enter your Choice $'
   P3 DB 10,13,'  **                 1. Display all Laptops            **$' 
    P4 DB 10,13,'  **                 2. Display all Desktops           **$'
    P5 DB 10,13,'  **                 3. Display all Accessories        **$'
   P6 DB 10,13,'  **                 4. Display all Software           **$'
    P7 DB 10,13,'  **                 5. Go Back to Main Menu            **$'
    P8 DB 10,13,'  **                 6. Exit                           **$'   
    
    
    M9 DB 10,13,'  **           1.Dell Latitude 3540                            1000/-    **$'
    P10 DB 10,13,'  **           2.Dell Vostro 3520 i5-1235U                    1500/-     **$'
    P11 DB 10,13,'  **           3.MSI Titan 18 HX A14VIG-036US i9-14900HX      6000/-     **$'
    P12 DB 10,13,'  **           4.Hp Notebook 15 FC0100au Ryzen 5              3000/-     **$'
    P13 DB 10,13,'  **           5.Lenovo V15 G3 Alder Lake i5-1235u            2000/-     **$'
    P14 DB 10,13,'  **           6.Acer Predator Helios 300 Lake i7             2900/-     **$'
    P15 DB 10,13,'  **           7.Dell XPS 15 9520 i9-12900HK                  8000/-     **$'
    P16 DB 10,13,'  **           8.Lenovo Yoga Book 9 Raptor Lake i7            7000/-     **$'
    P17 DB 10,13,'  **           9.HP EliteBook x360 Convertible 13 i7          6900/-     **$' 
    
    
    
    P18 DB 10,13,'  **           1.Dell Inspiron Desktop i5-1235U                1200/-     **$'
    P19 DB 10,13,'  **           2.HP Pavilion Gaming Desktop Ryzen 5            1800/-     **$'
    P20 DB 10,13,'  **           3.Acer Aspire TC-895-UA92 Desktop i7            2500/-     **$'
    P21 DB 10,13,'  **           4.Lenovo ThinkCentre P80q Desktop i5            1500/-     **$'
    P22 DB 10,13,'  **           5.MSI Trident X Desktop i9-12900K                4000/-     **$'
    P23 DB 10,13,'  **           6.ASUS ROG Zephyrus Desktop i7                   3500/-     **$'
    P24 DB 10,13,'  **           7.Dell XPS Tower Special Edition i9-12900K       5000/-     **$'  
    
    
    
    P25 DB 10,13,'  **           1.Logitech K380 Multi-Device Bluetooth Keyboard  50/-       **$'
    P26 DB 10,13,'  **           2.Razer DeathAdder Essential Gaming Mouse        70/-       **$'
    P27 DB 10,13,'  **           3.Samsung 24" Curved Monitor                    200/-       **$'
    P28 DB 10,13,'  **           4.Western Digital 1TB External Hard Drive      100/-       **$'
    P29 DB 10,13,'  **           5.Corsair Vengeance LPX 16GB RAM                80/-        **$'
    
    
    '
   P30 DB 10,13,'  **           1.Microsoft Office 365 Home                     100/-       **$'
   P31 DB 10,13,'  **           2.Adobe Creative Cloud                           150/-       **$'
   P32 DB 10,13,'  **           3.Norton Antivirus Plus                         50/-        **$'
   P33 DB 10,13,'  **           4.Autodesk AutoCAD                              200/-       **$'  
    
    
   P34 DB 10,13,10,13,'Enter your choice  $'                  
   P35 DB 10,13,'Quantity:   $'
   P36 DB 10,13,'Total Price:     $'
   P37 DB 10,13,10,13,'1.Go Back to Main Menu$'
   P38 DB 10,13,'2.EXIT$'
   P39 DB 10,13,10,13,'***   INVALID ENTRY  ***$'
    P40 DB 10,13,'      ***   Try Again      ***$'  
    
    LAPTOP_PRICES DW 1000, 1500, 6000, 3000, 2000, 2900, 8000, 7000, 6900
    DESKTOP_PRICES DW 1200, 1800, 2500, 1500, 4000, 3500, 5000
    ACCESSORY_PRICES DW 50, 70, 200, 100, 80
    SOFTWARE_PRICES DW 100, 150, 50, 200
    NUM_BUFFER DB 10 DUP('$')

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

TOP:
    CALL NEW_FRAME

    LEA DX, P1
    MOV AH, 9
    INT 21H

    LEA DX,P3
    MOV AH, 9
    INT 21H  
    
    LEA DX, P4
    MOV AH, 9
    INT 21H 
    
    LEA DX, P5
    MOV AH, 9
    INT 21H 
    
    LEA DX,P6
    MOV AH, 9
    INT 21H
    LEA DX, P7
    MOV AH, 9
    INT 21H
    LEA DX, P8
    MOV AH, 9
    INT 21H

    LEA DX,P34
    MOV AH, 9
    INT 21H

    MOV AH, 1
    INT 21H
    SUB AL, 48
    MOV BL, AL

    CMP BL, 1
    JE LAPTOPS   
    
    CMP BL, 2
    JE DESKTOPS 
    
    CMP BL, 3
    JE ACCESSORIES 
    
    CMP BL, 4
    JE SOFTWARE  
    
    CMP BL, 5
    JE TOP     
    
    CMP BL, 6
    JE EXIT

    JMP INVALID

LAPTOPS:
    CALL NEW_FRAME

    LEA DX, M9
    MOV AH, 9
    INT 21H   
    
    LEA DX, P10
    MOV AH, 9
    INT 21H   
    
    LEA DX, P11
    MOV AH, 9
    INT 21H  
    
    LEA DX, P12
    MOV AH, 9
    INT 21H  
    
    LEA DX, P13
    MOV AH, 9
    INT 21H    
    
    LEA DX, P14
    MOV AH, 9
    INT 21H  
    
    LEA DX, P15
    MOV AH, 9
    INT 21H  
    
    LEA DX, P16
    MOV AH, 9
    INT 21H    
    
    LEA DX, P17
    MOV AH, 9
    INT 21H

    LEA DX,P34
    MOV AH, 9
    INT 21H

    MOV AH, 1
    INT 21H
    SUB AL, 48
    MOV BL, AL

    CMP BL, 1
    JB INVALID   
    
    CMP BL, 9
    JA INVALID

    MOV SI, BX
    DEC SI
    SHL SI, 1
    MOV BX, LAPTOP_PRICES[SI]

    LEA DX,P35
    MOV AH, 9
    INT 21H

    MOV AH, 1
    INT 21H
    SUB AL, 48
    MOV CX, 0
    MOV CL, AL

    MOV AX, BX
    MUL CX

    PUSH AX

    LEA DX,P36
    MOV AH, 9
    INT 21H

    POP AX

    CALL DISPLAY_NUMBER

    CALL GO_BACK_OR_EXIT

DESKTOPS:
    CALL NEW_FRAME

    LEA DX, P18
    MOV AH, 9
    INT 21H        
    
    LEA DX, P19
    MOV AH, 9
    INT 21H   
    
    LEA DX, P20
    MOV AH, 9
    INT 21H  
    
    LEA DX, P21
    MOV AH, 9
    INT 21H    
    
    LEA DX, P22
    MOV AH, 9
    INT 21H  
    
    LEA DX, P23
    MOV AH, 9
    INT 21H   
    
    LEA DX, P24
    MOV AH, 9
    INT 21H

    LEA DX,P34
    MOV AH, 9
    INT 21H

    MOV AH, 1
    INT 21H
    SUB AL, 48
    MOV BL, AL

    CMP BL, 1
    JB INVALID
    CMP BL, 7
    JA INVALID

    MOV SI, BX
    DEC SI
    SHL SI, 1
    MOV BX, DESKTOP_PRICES[SI]

    LEA DX,P35
    MOV AH, 9
    INT 21H

    MOV AH, 1
    INT 21H
    SUB AL, 48
    MOV CX, 0
    MOV CL, AL

    MOV AX, BX
    MUL CX

    PUSH AX

    LEA DX,P36
    MOV AH, 9
    INT 21H

    POP AX

    CALL DISPLAY_NUMBER

    CALL GO_BACK_OR_EXIT
    
    
    
ACCESSORIES:
    CALL NEW_FRAME

    LEA DX, P25
    MOV AH, 9
    INT 21H
    LEA DX, P26
    MOV AH, 9
    INT 21H
    LEA DX, P27
    MOV AH, 9
    INT 21H
    LEA DX, P28
    MOV AH, 9
    INT 21H
    LEA DX, P29
    MOV AH, 9
    INT 21H

    LEA DX,P34
    MOV AH, 9
    INT 21H

    MOV AH, 1
    INT 21H
    SUB AL, 48
    MOV BL, AL

    CMP BL, 1
    JB INVALID
    CMP BL, 5
    JA INVALID

    MOV SI, BX
    DEC SI
    SHL SI, 1
    MOV BX, ACCESSORY_PRICES[SI]

    LEA DX,P35
    MOV AH, 9
    INT 21H

    MOV AH, 1
    INT 21H
    SUB AL, 48
    MOV CX, 0
    MOV CL, AL

    MOV AX, BX
    MUL CX

    PUSH AX

    LEA DX,P36
    MOV AH, 9
    INT 21H

    POP AX

    CALL DISPLAY_NUMBER

    CALL GO_BACK_OR_EXIT


SOFTWARE:
    CALL NEW_FRAME

    LEA DX,P30
    MOV AH, 9
    INT 21H
    LEA DX,P31
    MOV AH, 9
    INT 21H
    LEA DX,P32
    MOV AH, 9
    INT 21H
    LEA DX,P33
    MOV AH, 9
    INT 21H

    LEA DX,P34
    MOV AH, 9
    INT 21H

    MOV AH, 1
    INT 21H
    SUB AL, 48
    MOV BL, AL

    CMP BL, 1
    JB INVALID
    CMP BL, 4
    JA INVALID

    MOV SI, BX
    DEC SI
    SHL SI, 1
    MOV BX, SOFTWARE_PRICES[SI]

    LEA DX,P35
    MOV AH, 9
    INT 21H

    MOV AH, 1
    INT 21H
    SUB AL, 48
    MOV CX, 0
    MOV CL, AL

    MOV AX, BX
    MUL CX

    PUSH AX

    LEA DX,P36
    MOV AH, 9
    INT 21H

    POP AX

    CALL DISPLAY_NUMBER

    CALL GO_BACK_OR_EXIT

INVALID:
    LEA DX,P39
    MOV AH, 9
    INT 21H
    LEA DX, P40
    MOV AH, 9
    INT 21H

    JMP TOP

EXIT:
    MOV AX, 4C00H
    INT 21H

DISPLAY_NUMBER PROC
    MOV CX, 0
    MOV BX, 10

CONVERT_LOOP:
    XOR DX, DX
    DIV BX
    ADD DL, '0'
    PUSH DX
    INC CX
    CMP AX, 0
    JNE CONVERT_LOOP

DISPLAY_LOOP:
    POP DX
    MOV AH, 2
    INT 21H
    LOOP DISPLAY_LOOP

    RET
DISPLAY_NUMBER ENDP

GO_BACK_OR_EXIT PROC
    LEA DX,P37
    MOV AH, 9
    INT 21H

    LEA DX,P38
    MOV AH, 9
    INT 21H

    MOV AH, 1
    INT 21H
    SUB AL, 48

    CMP AL, 1
    JE TOP
    CMP AL, 2
    JE EXIT

    JMP INVALID
GO_BACK_OR_EXIT ENDP

NEW_FRAME PROC
    MOV AH, 06H
    MOV AL, 0
    MOV BH, 07H
    MOV CX, 0000H
    MOV DX, 184FH
    INT 10H

    MOV AH, 02H
    MOV BH, 0
    MOV DH, 0
    MOV DL, 0
    INT 10H

    RET
NEW_FRAME ENDP

END MAIN
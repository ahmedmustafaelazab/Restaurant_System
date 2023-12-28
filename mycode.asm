
.MODEL LARGE
.STACK 1000H
.DATA


M1 DB '                 ****Welcome to Ten pounds Restaurant****$',10,13 


M2 DB 0ah,0dh,0ah,0dh,'Enter your Choise $'

M3 DB 0ah,0dh,'  **                 1.Breakfast Menu         **$' 

M7 DB 0ah,0dh,'  **                 2.Drinks                  **$'  
               
               
M8 DB 0ah,0dh,0ah,0dh,'***Choise your food from the menu***$'
  
;BREAKFAST  
M9 DB 0ah,0dh,'  **           1.fool            10/-                      **$' ;breakfast
M10 DB 0ah,0dh,'  **           2.flafel                     10/-                      **$'
M11 DB 0ah,0dh,'  **           3.potato sandwitch                10/-                      **$'
M12 DB 0ah,0dh,'  **           4.kebda                     10/-                      **$'
M13 DB 0ah,0dh,'  **           5.Fried Egg        10/-                      **$'
M14 DB 0ah,0dh,'  **           6.Halawa tahinya                   10/-                      **$'
M15 DB 0ah,0dh,'  **           7.suguq                   10/-                      **$'
M16 DB 0ah,0dh,'  **           8.Fried Egg               10/-                      **$'

 


;Drinks
M49 DB 0ah,0dh,'  **  1.Shoft Drinks 8/-                      **$'
M50 DB 0ah,0dh,'  **  2.herbs       6/-                      **$'
M51 DB 0ah,0dh,'  **  3.espresso     9/-                      **$'
M52 DB 0ah,0dh,'  **  4.moka       9/-                      **$'
M53 DB 0ah,0dh,'  **  5.Coffee       7/-                      **$'
M54 DB 0ah,0dh,'  **  6.Tea          5/-                      **$'



;INVALID
M55 DB 10,13,10,13,'***&&INVALID ENTRY&&***$'
M56 DB 10,13,'      ***&&Try Again&&***$'



M57 DB 10,13,10,13,'Enter your order: $'
M58 DB 10,13,'Quantity: $'
M59 DB 10,13,'Total Price: $'


DRINK DB ?
QUANTITY DB ?


M60 DB 10,13,10,13,'1.Go Back to Main Menu$'
M61 DB 10,13,'2.EXIT$'

;STAR RESIZE


MR1 DB 10,13,'  **                                           **$'
MR2 DB 10,13,'  ***********************************************$'

MR3 DB 10,13,'  **                                           **$'


MR4 DB 10,13,'  **                                                               **$'
MR5 DB 10,13,'  ****************************************************************************$'



MR6 DB 10,13,'  **                                          **$'
MR7 DB 10,13,'  **********************************************$'


SEJ DB 10,13,10,13,' $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
  TOP:
    

    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    LEA DX,M1
    MOV AH,9
    INT 21H     
    
    
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
       
    LEA DX,MR2
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR3
    MOV AH,9
    INT 21H   
    
    
     
    
    LEA DX,M3
    MOV AH,9
    INT 21H
    


    
    LEA DX,M7
    MOV AH,9
    INT 21H
    
    LEA DX,MR1
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE BREATFAST
 
    CMP BH,2
    JE DRINKS
    
    
    JMP INVALID
    
       
    
    
   BREATFAST:
    
    
    LEA DX,M8    ;BREATFAST STARTS
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
   
    LEA DX,M9    ;item 1
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M10  ;item 2
    MOV AH,9
    INT 21H
    
    LEA DX,M11
    MOV AH,9          ;3nd
    INT 21H 
    
    LEA DX,M12
    MOV AH,9           ;4rd
    INT 21H
    
    
    LEA DX,M13         ;5th
    MOV AH,9
    INT 21H
    
    
    LEA DX,M14     ;6th
    MOV AH,9
    INT 21H
            
    
    LEA DX,M15
    MOV AH,9           ;7th
    INT 21H
            
            
    LEA DX,M16        ;8th
    MOV AH,9
    INT 21H 
    

    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,M57              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE TEN
    
    CMP BL,2
    JE TEN
    
    CMP BL,3
    JE TEN 
    
    CMP BL,4
    JE TEN
    
    CMP BL,5
    JE TEN
    
    CMP BL,6
    JE TEN
    
    CMP BL,7
    JE TEN
    
    CMP BL,8
    JE TEN 
    
    CMP BL,9
    JE TEN
    

    
    JMP INVALID 
      



         
    
   TEN:
    MOV BL,1
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H  
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
     
    ;GO BACK TO MAIN MENU   

   

    
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H          
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
    
 
    
   DRINKS:  
    LEA DX,M8
    MOV AH,9            ;DRINKS STARTS
    INT 21H 
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
   
   
    LEA DX,M49               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M50               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,M51               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M52               ;4th
    MOV AH,9
    INT 21H 
    
    LEA DX,M53               ;5th
    MOV AH,9
    INT 21H
    
    LEA DX,M54               ;6th
    MOV AH,9
    INT 21H
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    LEA DX,M57              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE SOFTDRINK
    
    CMP BL,2
    JE HERBS
    
    CMP BL,3
    JE ESPRESSO
    
    CMP BL,4
    JE MOKA
    
    CMP BL,5
    JE COFFEE 
    
    CMP BL,6
    JE TEA 
    
    JMP INVALID
    
   SOFTDRINK:
    MOV BL,8
    JMP COMMON
    
   HERBS:
    MOV BL,6
    JMP COMMON
   
    
   ESPRESSO:
    MOV BL,9
    JMP COMMON
    
   MOKA:
    MOV BL,9
    JMP COMMON
    
    
   COFFEE:
    MOV BL,7
    JMP COMMON
    
 
   TEA:
    MOV BL,5
    JMP COMMON
   
   
    
    
   COMMON: 
    LEA DX,M58              
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H 
    
    
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU       
    


    
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT:
    
    
   INVALID:
   
    LEA DX,M55
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M56 
    MOV AH,9
    INT 21H 
    
    
    
    JMP EXIT 
    
        
    
    
     EXIT:
    
  
    
END MAIN

ret



; PICBASIC PRO(TM) Compiler 2.60C, (c) 1998, 2011 microEngineering Labs, Inc. All Rights Reserved. 
_USED			EQU	1

	INCLUDE	"C:\PBP\12F683.INC"


; Define statements.
; C:\PBP\12F683.BAS        	00016	DEFINE	CCP1_REG GPIO
#define		CCP1_REG		 GPIO
; C:\PBP\12F683.BAS        	00017	DEFINE	CCP1_BIT 2
#define		CCP1_BIT		 2

RAM_START       		EQU	00020h
RAM_END         		EQU	000BFh
RAM_BANKS       		EQU	00002h
BANK0_START     		EQU	00020h
BANK0_END       		EQU	0007Fh
BANK1_START     		EQU	000A0h
BANK1_END       		EQU	000BFh
EEPROM_START    		EQU	02100h
EEPROM_END      		EQU	021FFh

; C:\PBP\PBPPIC14.RAM      	00012	A00020	R0      VAR     WORD BANK0 SYSTEM       ' System Register
R0              		EQU	RAM_START + 000h
; C:\PBP\PBPPIC14.RAM      	00013	A00022	R1      VAR     WORD BANK0 SYSTEM       ' System Register
R1              		EQU	RAM_START + 002h
; C:\PBP\PBPPIC14.RAM      	00014	A00024	R2      VAR     WORD BANK0 SYSTEM       ' System Register
R2              		EQU	RAM_START + 004h
; C:\PBP\PBPPIC14.RAM      	00015	A00026	R3      VAR     WORD BANK0 SYSTEM       ' System Register
R3              		EQU	RAM_START + 006h
; C:\PBP\PBPPIC14.RAM      	00016	A00028	R4      VAR     WORD BANK0 SYSTEM       ' System Register
R4              		EQU	RAM_START + 008h
; C:\PBP\PBPPIC14.RAM      	00017	A0002A	R5      VAR     WORD BANK0 SYSTEM       ' System Register
R5              		EQU	RAM_START + 00Ah
; C:\PBP\PBPPIC14.RAM      	00018	A0002C	R6      VAR     WORD BANK0 SYSTEM       ' System Register
R6              		EQU	RAM_START + 00Ch
; C:\PBP\PBPPIC14.RAM      	00019	A0002E	R7      VAR     WORD BANK0 SYSTEM       ' System Register
R7              		EQU	RAM_START + 00Eh
; C:\PBP\PBPPIC14.RAM      	00020	A00030	R8      VAR     WORD BANK0 SYSTEM       ' System Register
R8              		EQU	RAM_START + 010h
; C:\PBP\PBPPIC14.RAM      	00026	A00032	FLAGS   VAR     BYTE BANK0 SYSTEM       ' Static flags
FLAGS           		EQU	RAM_START + 012h
; C:\PBP\PBPPIC14.RAM      	00025	A00033	GOP     VAR     BYTE BANK0 SYSTEM       ' Gen Op Parameter
GOP             		EQU	RAM_START + 013h
; C:\PBP\PBPPIC14.RAM      	00022	A00034	RM1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Mask
RM1             		EQU	RAM_START + 014h
; C:\PBP\PBPPIC14.RAM      	00024	A00035	RM2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Mask
RM2             		EQU	RAM_START + 015h
; C:\PBP\PBPPIC14.RAM      	00021	A00036	RR1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Register
RR1             		EQU	RAM_START + 016h
; C:\PBP\PBPPIC14.RAM      	00023	A00037	RR2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Register
RR2             		EQU	RAM_START + 017h
; E:\@BASIC\TAP_V6.PBP     	00030	A00038	ANALOGO         VAR WORD
_ANALOGO         		EQU	RAM_START + 018h
; E:\@BASIC\TAP_V6.PBP     	00001	A0003A	' configuracion : 000011000100
T1              		EQU	RAM_START + 01Ah
; E:\@BASIC\TAP_V6.PBP     	00001	A0003C	' configuracion : 000011000100
T2              		EQU	RAM_START + 01Ch
; E:\@BASIC\TAP_V6.PBP     	00028	A0003E	TIEMPO          VAR WORD
_TIEMPO          		EQU	RAM_START + 01Eh
; E:\@BASIC\TAP_V6.PBP     	00019	A00040	VALOR2          VAR WORD
_VALOR2          		EQU	RAM_START + 020h
; E:\@BASIC\TAP_V6.PBP     	00020	A00042	VALOR3          VAR WORD
_VALOR3          		EQU	RAM_START + 022h
; E:\@BASIC\TAP_V6.PBP     	00021	A00044	VALOR4          VAR WORD
_VALOR4          		EQU	RAM_START + 024h
; E:\@BASIC\TAP_V6.PBP     	00018	A00046	VALOR_PR        VAR WORD
_VALOR_PR        		EQU	RAM_START + 026h
; E:\@BASIC\TAP_V6.PBP     	00022	A00048	BUCLE           VAR BYTE
_BUCLE           		EQU	RAM_START + 028h
; E:\@BASIC\TAP_V6.PBP     	00023	A00049	BUCLE1          VAR BYTE
_BUCLE1          		EQU	RAM_START + 029h
; E:\@BASIC\TAP_V6.PBP     	00024	A0004A	BUCLE2          VAR BYTE
_BUCLE2          		EQU	RAM_START + 02Ah
; E:\@BASIC\TAP_V6.PBP     	00025	A0004B	BUCLE3          VAR BYTE
_BUCLE3          		EQU	RAM_START + 02Bh
; E:\@BASIC\TAP_V6.PBP     	00027	A0004C	CLICKS          VAR BYTE
_CLICKS          		EQU	RAM_START + 02Ch
; E:\@BASIC\TAP_V6.PBP     	00029	A0004D	DELAY           VAR BYTE
_DELAY           		EQU	RAM_START + 02Dh
; E:\@BASIC\TAP_V6.PBP     	00026	A0004E	DESBORDE        VAR BYTE
_DESBORDE        		EQU	RAM_START + 02Eh
; E:\@BASIC\TAP_V6.PBP     	00001	A0004F	' configuracion : 000011000100
PB01            		EQU	RAM_START + 02Fh
; C:\PBP\12F683.BAS        	00021	PORTL   VAR     GPIO
_PORTL           		EQU	 GPIO
; C:\PBP\12F683.BAS        	00022	PORTH   VAR     GPIO
_PORTH           		EQU	 GPIO
; C:\PBP\12F683.BAS        	00023	TRISL   VAR     TRISIO
_TRISL           		EQU	 TRISIO
; C:\PBP\12F683.BAS        	00024	TRISH   VAR     TRISIO
_TRISH           		EQU	 TRISIO
_VALOR_PR??BYTE0 		EQU	_VALOR_PR
_VALOR_PR??BYTE1 		EQU	_VALOR_PR + 001h
_VALOR2??BYTE0   		EQU	_VALOR2
_VALOR2??BYTE1   		EQU	_VALOR2 + 001h
_VALOR3??BYTE0   		EQU	_VALOR3
_VALOR3??BYTE1   		EQU	_VALOR3 + 001h
_VALOR4??BYTE0   		EQU	_VALOR4
_VALOR4??BYTE1   		EQU	_VALOR4 + 001h
#define _FLASH           	 PB01, 000h
#define _GPIO??0         	 GPIO, 000h
#define _ADCON0??1       	 ADCON0, 001h
#define _PIR1??6         	 PIR1, 006h
#define _T1CON??0        	 T1CON, 000h
#define _GPIO??3         	 GPIO, 003h
#define _PIE1??0         	 PIE1, 000h
#define _PIR1??0         	 PIR1, 000h
	INCLUDE	"TAP_V6.MAC"
	INCLUDE	"C:\PBP\PBPPIC14.LIB"


; C:\PBP\12F683.BAS        	00012	BANK0   $0020, $007F
; C:\PBP\12F683.BAS        	00013	BANK1   $00A0, $00BF
; C:\PBP\12F683.BAS        	00014	EEPROM  $2100, $21FF
; C:\PBP\12F683.BAS        	00015	LIBRARY "PBPPIC14"
; C:\PBP\12F683.BAS        	00016	DEFINE	CCP1_REG GPIO
; C:\PBP\12F683.BAS        	00017	DEFINE	CCP1_BIT 2

; C:\PBP\12F683.BAS        	00019	        include "PIC14EXT.BAS"

; C:\PBP\12F683.BAS        	00026	        include "PBPPIC14.RAM"

; E:\@BASIC\TAP_V6.PBP     	00003	OSCCON      = %01110111
	MOVE?CB	077h, OSCCON

; E:\@BASIC\TAP_V6.PBP     	00004	TRISIO      = %00011000
	MOVE?CB	018h, TRISIO

; E:\@BASIC\TAP_V6.PBP     	00005	ANSEL       = %00001000
	MOVE?CB	008h, ANSEL

; E:\@BASIC\TAP_V6.PBP     	00006	ADCON0      = %10001101
	MOVE?CB	08Dh, ADCON0

; E:\@BASIC\TAP_V6.PBP     	00007	CMCON0      = %00000111
	MOVE?CB	007h, CMCON0

; E:\@BASIC\TAP_V6.PBP     	00008	CMCON1      = %00000000
	MOVE?CB	000h, CMCON1

; E:\@BASIC\TAP_V6.PBP     	00009	OPTION_REG  = %00000000
	MOVE?CB	000h, OPTION_REG

; E:\@BASIC\TAP_V6.PBP     	00010	INTCON      = %11000000
	MOVE?CB	0C0h, INTCON

; E:\@BASIC\TAP_V6.PBP     	00011	PIE1        = %00000000
	MOVE?CB	000h, PIE1

; E:\@BASIC\TAP_V6.PBP     	00012	PIR1        = %00000000
	MOVE?CB	000h, PIR1

; E:\@BASIC\TAP_V6.PBP     	00013	T1CON       = %00010100
	MOVE?CB	014h, T1CON

; E:\@BASIC\TAP_V6.PBP     	00014	CCP1CON     = %00001110
	MOVE?CB	00Eh, CCP1CON

; E:\@BASIC\TAP_V6.PBP     	00016	on interrupt goto interrupcion
	ONINT?LL	_interrupcion, L00001

; E:\@BASIC\TAP_V6.PBP     	00033	INICIO:        

	LABEL?L	_INICIO	

; E:\@BASIC\TAP_V6.PBP     	00035	    CCPR1L          = 0
	ICALL?L	L00001
	MOVE?CB	000h, CCPR1L

; E:\@BASIC\TAP_V6.PBP     	00036	    CCPR1H          = 0
	ICALL?L	L00001
	MOVE?CB	000h, CCPR1H

; E:\@BASIC\TAP_V6.PBP     	00037	    CLICKS          = 0
	ICALL?L	L00001
	MOVE?CB	000h, _CLICKS

; E:\@BASIC\TAP_V6.PBP     	00038	    ADRESL          = 0
	ICALL?L	L00001
	MOVE?CB	000h, ADRESL

; E:\@BASIC\TAP_V6.PBP     	00039	    ADRESH          = 0
	ICALL?L	L00001
	MOVE?CB	000h, ADRESH

; E:\@BASIC\TAP_V6.PBP     	00040	    ANALOGO         = 0    
	ICALL?L	L00001
	MOVE?CW	000h, _ANALOGO

; E:\@BASIC\TAP_V6.PBP     	00041	    FLASH           = 0
	ICALL?L	L00001
	MOVE?CT	000h, _FLASH

; E:\@BASIC\TAP_V6.PBP     	00042	    GPIO.0          = 0
	ICALL?L	L00001
	MOVE?CT	000h, _GPIO??0

; E:\@BASIC\TAP_V6.PBP     	00045	MAIN:

	LABEL?L	_MAIN	

; E:\@BASIC\TAP_V6.PBP     	00047	    adcon0.1 = 1
	ICALL?L	L00001
	MOVE?CT	001h, _ADCON0??1

; E:\@BASIC\TAP_V6.PBP     	00048	esp:    

	LABEL?L	_esp	

; E:\@BASIC\TAP_V6.PBP     	00049	    if pir1.6 = 0 then esp
	ICALL?L	L00001
	CMPEQ?TCL	_PIR1??6, 000h, _esp

; E:\@BASIC\TAP_V6.PBP     	00050	    analogo = adresl + (255 * adresh)
	ICALL?L	L00001
	MUL?CBW	0FFh, ADRESH, T1
	ADD?BWW	ADRESL, T1, _ANALOGO

; E:\@BASIC\TAP_V6.PBP     	00051	    delay = analogo / 4
	ICALL?L	L00001
	DIV?WCB	_ANALOGO, 004h, _DELAY

; E:\@BASIC\TAP_V6.PBP     	00052	    hpwm 1,delay,10000
	ICALL?L	L00001
	HPWM?CBC	001h, _DELAY, 02710h

; E:\@BASIC\TAP_V6.PBP     	00054	    pause 200
	ICALL?L	L00001
	PAUSE?C	0C8h

; E:\@BASIC\TAP_V6.PBP     	00056	    goto main
	ICALL?L	L00001
	GOTO?L	_MAIN

; E:\@BASIC\TAP_V6.PBP     	00059	    IF FLASH = 1 THEN
	ICALL?L	L00001
	CMPNE?TCL	_FLASH, 001h, L00002

; E:\@BASIC\TAP_V6.PBP     	00060	UNO:              

	LABEL?L	_UNO	

; E:\@BASIC\TAP_V6.PBP     	00061	        IF TMR1L <> VALOR_PR.BYTE0 THEN UNO
	ICALL?L	L00001
	CMPNE?BBL	TMR1L, _VALOR_PR??BYTE0, _UNO

; E:\@BASIC\TAP_V6.PBP     	00062	DOS:             

	LABEL?L	_DOS	

; E:\@BASIC\TAP_V6.PBP     	00063	        IF TMR1H <> Valor_pr.byte1 then DOS
	ICALL?L	L00001
	CMPNE?BBL	TMR1H, _VALOR_PR??BYTE1, _DOS

; E:\@BASIC\TAP_V6.PBP     	00065	        T1CON.0     = 0
	ICALL?L	L00001
	MOVE?CT	000h, _T1CON??0

; E:\@BASIC\TAP_V6.PBP     	00066	        TMR1H       = 0
	ICALL?L	L00001
	MOVE?CB	000h, TMR1H

; E:\@BASIC\TAP_V6.PBP     	00067	        TMR1L       = 0
	ICALL?L	L00001
	MOVE?CB	000h, TMR1L

; E:\@BASIC\TAP_V6.PBP     	00068	        DESBORDE    = 0
	ICALL?L	L00001
	MOVE?CB	000h, _DESBORDE

; E:\@BASIC\TAP_V6.PBP     	00069	        T1CON.0     = 1            
	ICALL?L	L00001
	MOVE?CT	001h, _T1CON??0

; E:\@BASIC\TAP_V6.PBP     	00070	        GPIO.0 = 1
	ICALL?L	L00001
	MOVE?CT	001h, _GPIO??0

; E:\@BASIC\TAP_V6.PBP     	00071	        pausEUS 500
	ICALL?L	L00001
	PAUSEUS?C	001F4h

; E:\@BASIC\TAP_V6.PBP     	00072	        GPIO.0 = 0                
	ICALL?L	L00001
	MOVE?CT	000h, _GPIO??0

; E:\@BASIC\TAP_V6.PBP     	00073	        FLASH = 0
	ICALL?L	L00001
	MOVE?CT	000h, _FLASH

; E:\@BASIC\TAP_V6.PBP     	00074	    endif
	ICALL?L	L00001
	LABEL?L	L00002	

; E:\@BASIC\TAP_V6.PBP     	00077	    IF (GPIO.3 = 0) THEN    
	ICALL?L	L00001
	CMPNE?TCL	_GPIO??3, 000h, L00004

; E:\@BASIC\TAP_V6.PBP     	00078	        GOSUB AR
	ICALL?L	L00001
	GOSUB?L	_AR

; E:\@BASIC\TAP_V6.PBP     	00079	        clicks = clicks + 1
	ICALL?L	L00001
	ADD?BCB	_CLICKS, 001h, _CLICKS

; E:\@BASIC\TAP_V6.PBP     	00080	        select case clicks
	ICALL?L	L00001

; E:\@BASIC\TAP_V6.PBP     	00081	            case 1
	ICALL?L	L00001
	CMPNE?BCL	_CLICKS, 001h, L00008

; E:\@BASIC\TAP_V6.PBP     	00082	                T1CON.0     = 0
	ICALL?L	L00001
	MOVE?CT	000h, _T1CON??0

; E:\@BASIC\TAP_V6.PBP     	00083	                PIE1        = 0
	ICALL?L	L00001
	MOVE?CB	000h, PIE1

; E:\@BASIC\TAP_V6.PBP     	00084	                PIR1        = 0                
	ICALL?L	L00001
	MOVE?CB	000h, PIR1

; E:\@BASIC\TAP_V6.PBP     	00085	                TMR1H       = 0
	ICALL?L	L00001
	MOVE?CB	000h, TMR1H

; E:\@BASIC\TAP_V6.PBP     	00086	                TMR1L       = 0
	ICALL?L	L00001
	MOVE?CB	000h, TMR1L

; E:\@BASIC\TAP_V6.PBP     	00087	                DESBORDE    = 0
	ICALL?L	L00001
	MOVE?CB	000h, _DESBORDE

; E:\@BASIC\TAP_V6.PBP     	00088	                BUCLE       = 0
	ICALL?L	L00001
	MOVE?CB	000h, _BUCLE

; E:\@BASIC\TAP_V6.PBP     	00089	                BUCLE1      = 0
	ICALL?L	L00001
	MOVE?CB	000h, _BUCLE1

; E:\@BASIC\TAP_V6.PBP     	00090	                BUCLE2      = 0
	ICALL?L	L00001
	MOVE?CB	000h, _BUCLE2

; E:\@BASIC\TAP_V6.PBP     	00091	                BUCLE3      = 0
	ICALL?L	L00001
	MOVE?CB	000h, _BUCLE3

; E:\@BASIC\TAP_V6.PBP     	00092	                VALOR2      = 0
	ICALL?L	L00001
	MOVE?CW	000h, _VALOR2

; E:\@BASIC\TAP_V6.PBP     	00093	                VALOR3      = 0
	ICALL?L	L00001
	MOVE?CW	000h, _VALOR3

; E:\@BASIC\TAP_V6.PBP     	00094	                VALOR4      = 0
	ICALL?L	L00001
	MOVE?CW	000h, _VALOR4

; E:\@BASIC\TAP_V6.PBP     	00095	                VALOR_PR    = 0
	ICALL?L	L00001
	MOVE?CW	000h, _VALOR_PR

; E:\@BASIC\TAP_V6.PBP     	00096	                PIE1.0      = 1                               
	ICALL?L	L00001
	MOVE?CT	001h, _PIE1??0

; E:\@BASIC\TAP_V6.PBP     	00097	                T1CON.0     = 1
	ICALL?L	L00001
	MOVE?CT	001h, _T1CON??0

; E:\@BASIC\TAP_V6.PBP     	00099	            case 2
	ICALL?L	L00001
	GOTO?L	L00007
	LABEL?L	L00008	
	CMPNE?BCL	_CLICKS, 002h, L00009

; E:\@BASIC\TAP_V6.PBP     	00100	                T1CON.0         = 0
	ICALL?L	L00001
	MOVE?CT	000h, _T1CON??0

; E:\@BASIC\TAP_V6.PBP     	00101	                PIE1            = 0                
	ICALL?L	L00001
	MOVE?CB	000h, PIE1

; E:\@BASIC\TAP_V6.PBP     	00102	                PIR1            = 0                                                           
	ICALL?L	L00001
	MOVE?CB	000h, PIR1

; E:\@BASIC\TAP_V6.PBP     	00103	                VALOR2.BYTE0    = TMR1L
	ICALL?L	L00001
	MOVE?BB	TMR1L, _VALOR2??BYTE0

; E:\@BASIC\TAP_V6.PBP     	00104	                VALOR2.BYTE1    = TMR1H
	ICALL?L	L00001
	MOVE?BB	TMR1H, _VALOR2??BYTE1

; E:\@BASIC\TAP_V6.PBP     	00105	                TMR1H           = 0
	ICALL?L	L00001
	MOVE?CB	000h, TMR1H

; E:\@BASIC\TAP_V6.PBP     	00106	                TMR1L           = 0                
	ICALL?L	L00001
	MOVE?CB	000h, TMR1L

; E:\@BASIC\TAP_V6.PBP     	00107	                BUCLE1          = DESBORDE
	ICALL?L	L00001
	MOVE?BB	_DESBORDE, _BUCLE1

; E:\@BASIC\TAP_V6.PBP     	00108	                DESBORDE        = 0
	ICALL?L	L00001
	MOVE?CB	000h, _DESBORDE

; E:\@BASIC\TAP_V6.PBP     	00109	                PIE1.0          = 1                
	ICALL?L	L00001
	MOVE?CT	001h, _PIE1??0

; E:\@BASIC\TAP_V6.PBP     	00110	                T1CON.0         = 1
	ICALL?L	L00001
	MOVE?CT	001h, _T1CON??0

; E:\@BASIC\TAP_V6.PBP     	00112	            case 3
	ICALL?L	L00001
	GOTO?L	L00007
	LABEL?L	L00009	
	CMPNE?BCL	_CLICKS, 003h, L00010

; E:\@BASIC\TAP_V6.PBP     	00113	                T1CON.0         = 0
	ICALL?L	L00001
	MOVE?CT	000h, _T1CON??0

; E:\@BASIC\TAP_V6.PBP     	00114	                PIE1            = 0                
	ICALL?L	L00001
	MOVE?CB	000h, PIE1

; E:\@BASIC\TAP_V6.PBP     	00115	                PIR1            = 0                                            
	ICALL?L	L00001
	MOVE?CB	000h, PIR1

; E:\@BASIC\TAP_V6.PBP     	00116	                VALOR3.BYTE0    = TMR1L
	ICALL?L	L00001
	MOVE?BB	TMR1L, _VALOR3??BYTE0

; E:\@BASIC\TAP_V6.PBP     	00117	                VALOR3.BYTE1    = TMR1H
	ICALL?L	L00001
	MOVE?BB	TMR1H, _VALOR3??BYTE1

; E:\@BASIC\TAP_V6.PBP     	00118	                TMR1H           = 0
	ICALL?L	L00001
	MOVE?CB	000h, TMR1H

; E:\@BASIC\TAP_V6.PBP     	00119	                TMR1L           = 0                                 
	ICALL?L	L00001
	MOVE?CB	000h, TMR1L

; E:\@BASIC\TAP_V6.PBP     	00120	                BUCLE2          = DESBORDE
	ICALL?L	L00001
	MOVE?BB	_DESBORDE, _BUCLE2

; E:\@BASIC\TAP_V6.PBP     	00121	                DESBORDE        = 0
	ICALL?L	L00001
	MOVE?CB	000h, _DESBORDE

; E:\@BASIC\TAP_V6.PBP     	00122	                PIE1.0          = 1                
	ICALL?L	L00001
	MOVE?CT	001h, _PIE1??0

; E:\@BASIC\TAP_V6.PBP     	00123	                T1CON.0         = 1
	ICALL?L	L00001
	MOVE?CT	001h, _T1CON??0

; E:\@BASIC\TAP_V6.PBP     	00125	            case 4                                                   
	ICALL?L	L00001
	GOTO?L	L00007
	LABEL?L	L00010	
	CMPNE?BCL	_CLICKS, 004h, L00011

; E:\@BASIC\TAP_V6.PBP     	00126	                T1CON.0         = 0
	ICALL?L	L00001
	MOVE?CT	000h, _T1CON??0

; E:\@BASIC\TAP_V6.PBP     	00127	                PIE1            = 0                
	ICALL?L	L00001
	MOVE?CB	000h, PIE1

; E:\@BASIC\TAP_V6.PBP     	00128	                PIR1            = 0                            
	ICALL?L	L00001
	MOVE?CB	000h, PIR1

; E:\@BASIC\TAP_V6.PBP     	00129	                VALOR4.BYTE0    = TMR1L
	ICALL?L	L00001
	MOVE?BB	TMR1L, _VALOR4??BYTE0

; E:\@BASIC\TAP_V6.PBP     	00130	                VALOR4.BYTE1    = TMR1H                                 
	ICALL?L	L00001
	MOVE?BB	TMR1H, _VALOR4??BYTE1

; E:\@BASIC\TAP_V6.PBP     	00131	                BUCLE3          = DESBORDE
	ICALL?L	L00001
	MOVE?BB	_DESBORDE, _BUCLE3

; E:\@BASIC\TAP_V6.PBP     	00133	                BUCLE = (BUCLE1 + BUCLE2 + BUCLE3)
	ICALL?L	L00001
	ADD?BBW	_BUCLE1, _BUCLE2, T1
	ADD?WBB	T1, _BUCLE3, _BUCLE

; E:\@BASIC\TAP_V6.PBP     	00134	                BUCLE = BUCLE / 3
	ICALL?L	L00001
	DIV?BCB	_BUCLE, 003h, _BUCLE

; E:\@BASIC\TAP_V6.PBP     	00136	                if bucle > 7 then bucle = 7
	ICALL?L	L00001
	CMPLE?BCL	_BUCLE, 007h, L00012
	MOVE?CB	007h, _BUCLE
	LABEL?L	L00012	

; E:\@BASIC\TAP_V6.PBP     	00138	                valor_pr    = (VALOR2.BYTE0 + VALOR3.BYTE0 + VALOR4.BYTE0) 
	ICALL?L	L00001
	ADD?BBW	_VALOR2??BYTE0, _VALOR3??BYTE0, T1
	ADD?WBW	T1, _VALOR4??BYTE0, _VALOR_PR

; E:\@BASIC\TAP_V6.PBP     	00139	                VALOR_PR    = (VALOR_PR) / 3
	ICALL?L	L00001
	DIV?WCW	_VALOR_PR, 003h, _VALOR_PR

; E:\@BASIC\TAP_V6.PBP     	00140	                CCPR1L      = VALOR_PR.BYTE0                
	ICALL?L	L00001
	MOVE?BB	_VALOR_PR??BYTE0, CCPR1L

; E:\@BASIC\TAP_V6.PBP     	00141	                valor_pr    = (VALOR2.BYTE1 + VALOR3.BYTE1 + VALOR4.BYTE1) 
	ICALL?L	L00001
	ADD?BBW	_VALOR2??BYTE1, _VALOR3??BYTE1, T1
	ADD?WBW	T1, _VALOR4??BYTE1, _VALOR_PR

; E:\@BASIC\TAP_V6.PBP     	00142	                VALOR_PR    = (VALOR_PR) / 3 
	ICALL?L	L00001
	DIV?WCW	_VALOR_PR, 003h, _VALOR_PR

; E:\@BASIC\TAP_V6.PBP     	00143	                CCPR1H      = VALOR_PR.BYTE0
	ICALL?L	L00001
	MOVE?BB	_VALOR_PR??BYTE0, CCPR1H

; E:\@BASIC\TAP_V6.PBP     	00145	                VALOR_PR.BYTE0  = CCPR1L
	ICALL?L	L00001
	MOVE?BB	CCPR1L, _VALOR_PR??BYTE0

; E:\@BASIC\TAP_V6.PBP     	00146	                VALOR_PR.BYTE1  = CCPR1H
	ICALL?L	L00001
	MOVE?BB	CCPR1H, _VALOR_PR??BYTE1

; E:\@BASIC\TAP_V6.PBP     	00148	                ANALOGO = VALOR_PR / 10
	ICALL?L	L00001
	DIV?WCW	_VALOR_PR, 00Ah, _ANALOGO

; E:\@BASIC\TAP_V6.PBP     	00149	                TIEMPO = 6553 * BUCLE
	ICALL?L	L00001
	MUL?CBW	01999h, _BUCLE, _TIEMPO

; E:\@BASIC\TAP_V6.PBP     	00150	                TIEMPO = TIEMPO + ANALOGO
	ICALL?L	L00001
	ADD?WWW	_TIEMPO, _ANALOGO, _TIEMPO

; E:\@BASIC\TAP_V6.PBP     	00151	                DELAY = TIEMPO / 255
	ICALL?L	L00001
	DIV?WCB	_TIEMPO, 0FFh, _DELAY

; E:\@BASIC\TAP_V6.PBP     	00153	                HPWM 1,DELAY,255                
	ICALL?L	L00001
	HPWM?CBC	001h, _DELAY, 0FFh

; E:\@BASIC\TAP_V6.PBP     	00155	                DESBORDE        = 0
	ICALL?L	L00001
	MOVE?CB	000h, _DESBORDE

; E:\@BASIC\TAP_V6.PBP     	00156	                clicks          = 0                
	ICALL?L	L00001
	MOVE?CB	000h, _CLICKS

; E:\@BASIC\TAP_V6.PBP     	00157	                TMR1H           = 0
	ICALL?L	L00001
	MOVE?CB	000h, TMR1H

; E:\@BASIC\TAP_V6.PBP     	00158	                TMR1L           = 0
	ICALL?L	L00001
	MOVE?CB	000h, TMR1L

; E:\@BASIC\TAP_V6.PBP     	00159	                PIE1.0          = 1                                                                                             
	ICALL?L	L00001
	MOVE?CT	001h, _PIE1??0

; E:\@BASIC\TAP_V6.PBP     	00160	                T1CON.0         = 1                                                                                                                                                                                    
	ICALL?L	L00001
	MOVE?CT	001h, _T1CON??0

; E:\@BASIC\TAP_V6.PBP     	00162	        end select
	ICALL?L	L00001
	LABEL?L	L00011	
	LABEL?L	L00007	

; E:\@BASIC\TAP_V6.PBP     	00164	    endif              
	ICALL?L	L00001
	LABEL?L	L00004	

; E:\@BASIC\TAP_V6.PBP     	00166	    goto main   
	ICALL?L	L00001
	GOTO?L	_MAIN

; E:\@BASIC\TAP_V6.PBP     	00168	AR:

	LABEL?L	_AR	

; E:\@BASIC\TAP_V6.PBP     	00169	    REPEAT
	ICALL?L	L00001
	LABEL?L	L00014	

; E:\@BASIC\TAP_V6.PBP     	00170	    PAUSE 100     
	ICALL?L	L00001
	PAUSE?C	064h

; E:\@BASIC\TAP_V6.PBP     	00171	    UNTIL GPIO.3 = 1
	ICALL?L	L00001
	CMPNE?TCL	_GPIO??3, 001h, L00014
	LABEL?L	L00015	

; E:\@BASIC\TAP_V6.PBP     	00172	    RETURN   
	ICALL?L	L00001
	RETURN?	

; E:\@BASIC\TAP_V6.PBP     	00174	disable    
	DISABLE?	

; E:\@BASIC\TAP_V6.PBP     	00175	INTERRUPCION:           

	LABEL?L	_interrupcion	

; E:\@BASIC\TAP_V6.PBP     	00177	    if ((PIE1.0 = 1) AND (PIR1.0 = 1)) THEN
	CMPEQ?TCB	_PIE1??0, 001h, T1
	CMPEQ?TCB	_PIR1??0, 001h, T2
	LAND?BBW	T1, T2, T2
	CMPF?WL	T2, L00016

; E:\@BASIC\TAP_V6.PBP     	00178	        DESBORDE    = DESBORDE + 1
	ADD?BCB	_DESBORDE, 001h, _DESBORDE

; E:\@BASIC\TAP_V6.PBP     	00179	        IF DESBORDE = BUCLE THEN FLASH = 1                       
	CMPNE?BBL	_DESBORDE, _BUCLE, L00018
	MOVE?CT	001h, _FLASH
	LABEL?L	L00018	

; E:\@BASIC\TAP_V6.PBP     	00180	        PIR1.0      = 0                       
	MOVE?CT	000h, _PIR1??0

; E:\@BASIC\TAP_V6.PBP     	00181	    ENDIF
	LABEL?L	L00016	

; E:\@BASIC\TAP_V6.PBP     	00183	RESUME
	RESUME?	

; E:\@BASIC\TAP_V6.PBP     	00184	ENABLE            
	ENABLE?	

; E:\@BASIC\TAP_V6.PBP     	00186	END
	ICALL?L	L00001
	END?	

	END

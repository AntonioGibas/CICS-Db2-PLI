         PRINT  NOGEN
NAUTHM1 DFHMSD TYPE=&SYSPARM,                                          X
               LANG=PLI,                                               X
               MODE=INOUT,                                             X
               TERM=3270-2,                                            X
               CTRL=FREEKB,                                            X
               STORAGE=AUTO,                                           X
               MAPATTS=(COLOR),                                        X
               TIOAPFX=YES
*
*********************************************************************
*
NAUTH1   DFHMDI SIZE=(24,80),                                          X
               COLUMN=1,                                               X
               LINE=1
*
*********************************************************************
*
NASLOV1  DFHMDF POS=(1,1),                                             X
               LENGTH=6,                                               X
               ATTRB=(PROT,NORM,ASKIP),                                X
               COLOR=BLUE,                                             X
               INITIAL='NAUTH1'
*
NASLOV2  DFHMDF POS=(3,2),                                             X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=42,                                              X
               COLOR=GREEN,                                            X
               INITIAL='DODAVANJE NOVOG AUTORA U SUSTAV KNJIZNICE'
*
NASLOV3  DFHMDF POS=(5,2),                                             X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=42,                                              X
               COLOR=GREEN,                                            X
               INITIAL='NAPOMENA: ID CLANA SE GENERIRA AUTOMATSKI!'
*
NASLOV4  DFHMDF POS=(7,12),                                            X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=23,                                              X
               COLOR=GREEN,                                            X
               INITIAL='UNESI SVA OSTALA POLJA!'
*
* POLJE ZA UNOS VRSTE SADRZAJA
*
IDUNOS   DFHMDF POS=(10,7),                                            X  
               LENGTH=3,                                               X
               ATTRB=(PROT),                                           X
               INITIAL='ID:'         
ID00001 DFHMDF POS=(10,11),                                            X
               LENGTH=5,                                               X
               ATTRB=(UNPROT,IC),                                      X
               COLOR=TURQUOISE,                                        X
               INITIAL='_____'
PREZ01   DFHMDF POS=(12,2),                                            X
               LENGTH=8,                                               X
               ATTRB=(PROT),                                           X
               INITIAL='PREZIME:'
UNOSP1   DFHMDF POS=(12,11),                                           X
               LENGTH=60,                                              X
               ATTRB=(UNPROT,IC),                                      X
               COLOR=TURQUOISE,                                        X
               INITIAL='________________________________________'
*
IME001   DFHMDF POS=(14,6),                                            X
               LENGTH=4,                                               X
               ATTRB=(PROT),                                           X
               INITIAL='IME:'
UNIME1   DFHMDF POS=(14,11),                                           X
               LENGTH=60,                                              X
               ATTRB=(UNPROT),                                         X
               COLOR=TURQUOISE,                                        X
               INITIAL='________________________________________'
*
*
INFO1A   DFHMDF POS=(23,2),                                            X
               LENGTH=5,                                               X
               ATTRB=(PROT,BRT),                                       X
               COLOR=YELLOW,                                           X
               INITIAL='INFO:'
*
INFO1B   DFHMDF POS=(23,8),                                            X
               LENGTH=65,                                              X
               ATTRB=(PROT),                                           X
               COLOR=YELLOW,                                           X
               INITIAL=' '
*
PFKEYS   DFHMDF POS=(24,2),                                            X
               LENGTH=33,                                              X
               ATTRB=(PROT,NORM),                                      X
               COLOR=BLUE,                                             X
               INITIAL='PF3-NATRAG,PF5-REFRESH,CTRL-ENTER'
*
PROT1    DFHMDF POS=(24,79),                                           X
               LENGTH=1,                                               X
               ATTRB=(PROT,NORM),                                      X
               INITIAL=' '
*
*********************************************************************
*
         DFHMSD TYPE=FINAL
         END
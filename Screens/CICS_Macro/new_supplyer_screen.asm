         PRINT  NOGEN
NSUPPM1 DFHMSD TYPE=&SYSPARM,                                          X
               LANG=PLI,                                               X
               MODE=INOUT,                                             X
               TERM=3270-2,                                            X
               CTRL=FREEKB,                                            X
               STORAGE=AUTO,                                           X
               MAPATTS=(COLOR),                                        X
               TIOAPFX=NO
*
*********************************************************************
*
NSUPP1   DFHMDI SIZE=(24,80),                                          X
               COLUMN=1,                                               X
               LINE=1
*
*********************************************************************
*
NASLOV1  DFHMDF POS=(1,1),                                             X
               LENGTH=46,                                              X
               ATTRB=(PROT,NORM,ASKIP),                                X
               COLOR=BLUE,                                             X
               INITIAL='NSUPP1'
*
NASLOV2  DFHMDF POS=(3,2),                                             X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=46,                                              X
               COLOR=GREEN,                                            X
               INITIAL='DODAVANJE NOVOG DOBAVLJACA U SUSTAV KNJIZNICE'
*
NASLOV3  DFHMDF POS=(5,2),                                             X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=36,                                              X
               COLOR=GREEN,                                            X
               INITIAL='NAPOMENA: ID SE GENERIRA AUTOMATSKI!'
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
NAZIV1   DFHMDF POS=(12,6),                                            X
               LENGTH=6,                                               X
               ATTRB=(PROT),                                           X
               INITIAL='NAZIV:'
UNOSP1   DFHMDF POS=(12,13),                                           X
               LENGTH=60,                                              X
               ATTRB=(UNPROT,IC),                                      X
               COLOR=TURQUOISE,                                        X
               INITIAL='________________________________________'
*
KONTBR1  DFHMDF POS=(14,5),                                            X
               LENGTH=7,                                               X
               ATTRB=(PROT),                                           X
               INITIAL='KONTBR:'
UKONT1   DFHMDF POS=(14,13),                                           X
               LENGTH=5,                                               X
               ATTRB=(UNPROT),                                         X
               COLOR=TURQUOISE,                                        X
               INITIAL='_____'
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
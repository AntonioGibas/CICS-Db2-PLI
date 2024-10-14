         PRINT  NOGEN
NBOOKM1 DFHMSD TYPE=&SYSPARM,                                          X
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
NBOOK1   DFHMDI SIZE=(24,80),                                          X
               COLUMN=1,                                               X
               LINE=1
*
*********************************************************************
*
NASLOV1  DFHMDF POS=(1,1),                                             X
               LENGTH=6,                                               X
               ATTRB=(PROT,NORM,ASKIP),                                X
               COLOR=BLUE,                                             X
               INITIAL='NBOOK1'
*
NASLOV2  DFHMDF POS=(3,2),                                             X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=25,                                              X
               COLOR=GREEN,                                            X
               INITIAL='UNOS NOVE KNJIGE U SUSTAV'
*
* POLJE ZA UNOS VRSTE SADRZAJA
*
IDUNOS   DFHMDF POS=(10,2),                                            X  
               LENGTH=11,                                              X
               ATTRB=(PROT),                                           X
               INITIAL='ID        :'         
ID00001 DFHMDF POS=(10,14),                                            X
               LENGTH=5,                                               X
               ATTRB=(UNPROT,IC),                                      X
               COLOR=TURQUOISE,                                        X
               INITIAL='_____'
NAZIV1   DFHMDF POS=(12,2),                                            X
               LENGTH=11,                                              X
               ATTRB=(PROT),                                           X
               INITIAL='NAZIV     :'
UNOSP1   DFHMDF POS=(12,14),                                           X
               LENGTH=60,                                              X
               ATTRB=(UNPROT,IC),                                      X
               COLOR=TURQUOISE,                                        X
               INITIAL='________________________________________'
* NAZIV AUTORA
NAUTO1   DFHMDF POS=(14,2),                                            X
               LENGTH=11,                                              X
               ATTRB=(PROT),                                           X
               INITIAL='AUTOR     :'
UNAUT1   DFHMDF POS=(14,14),                                           X
               LENGTH=60,                                              X
               ATTRB=(UNPROT),                                         X
               COLOR=TURQUOISE,                                        X
               INITIAL='________________________________________'
* KATEGORIJA
KATGRJ1  DFHMDF POS=(16,2),                                            X
               LENGTH=11,                                              X
               ATTRB=(PROT),                                           X
               INITIAL='KATEGORIJA:'
UNKAT1   DFHMDF POS=(16,14),                                           X
               LENGTH=20,                                              X
               ATTRB=(UNPROT),                                         X
               COLOR=TURQUOISE,                                        X
               INITIAL='____________________'
* GODINA IZDANJA
GODIZD1  DFHMDF POS=(18,2),                                            X
               LENGTH=11,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='GODINA    :'
UNGOD1   DFHMDF POS=(18,14),                                           X
               LENGTH=5,                                               X
               ATTRB=(UNPROT),                                         X
               COLOR=TURQUOISE,                                        X
               INITIAL='_____'
* BROJ KNJIGA
BRKNJ1   DFHMDF POS=(20,2),                                            X
               LENGTH=11,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='BROJ      :'
UNBRK1   DFHMDF POS=(20,14),                                           X
               LENGTH=5,                                               X
               ATTRB=(UNPROT),                                         X
               COLOR=TURQUOISE,                                        X
               INITIAL='_____'
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
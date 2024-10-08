         PRINT  NOGEN
EDITM1  DFHMSD TYPE=&SYSPARM,                                          X
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
EDIT1    DFHMDI SIZE=(24,80),                                          X
               COLUMN=1,                                               X
               LINE=1
*
*********************************************************************
*
         DFHMDF POS=(1,1),                                             X
               LENGTH=5,                                               X
               ATTRB=(PROT,NORM,ASKIP),                                X
               COLOR=BLUE,                                             X
               INITIAL='EDIT1'
*
         DFHMDF POS=(2,32),                                            X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=16,                                              X
               COLOR=GREEN,                                            X
               INITIAL='PRIKAZ INVENTARA'
*
         DFHMDF POS=(3,32),                                            X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=16,                                              X
               COLOR=GREEN,                                            X
               INITIAL='ZA UNESENU VRSTU'
*
         DFHMDF POS=(3,50),                                            X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=10,                                              X
               COLOR=RED,                                              X
               INITIAL='EDIT MODE!'
*
*
* POLJE ZA UNOS VRSTE SADRZAJA
*
VRSTA1   DFHMDF POS=(5,2),                                             X
               LENGTH=6,                                               X
               ATTRB=(PROT),                                           X
               INITIAL='VRSTA:'
UNOS01   DFHMDF POS=(5,9),                                             X
               LENGTH=11,                                              X
               ATTRB=(UNPROT,IC),                                      X
               COLOR=TURQUOISE,                                        X
               INITIAL='___________'
* OPIS POLJA
OPIS1A   DFHMDF POS=(5,22),                                            X
               LENGTH=42,                                              X
               ATTRB=(PROT,NORM),                                      X
               COLOR=GREEN,                                            X
               INITIAL='(KNJIGE,DOBAVLJACI,AUTORI,CLANOVI,POSUDBA,'
OPIS1B   DFHMDF POS=(6,22),                                            X
               LENGTH=30,                                              X
               ATTRB=(PROT,NORM),                                      X
               COLOR=GREEN,                                            X
               INITIAL='REZERVACIJA,POSUDBA,ZAKASNINA'
* UNOS ID-A
ID001A   DFHMDF POS=(7,2),                                             X
               LENGTH=6,                                               X
               ATTRB=(PROT),                                           X
               INITIAL='ID   :'
ID001B   DFHMDF POS=(7,9),                                             X
               LENGTH=5,                                               X
               ATTRB=(UNPROT,NUM),                                     X
               COLOR=TURQUOISE,                                        X
               INITIAL='_____'
*
OPIS2    DFHMDF POS=(7,22),                                            X
               LENGTH=10,                                              X
               ATTRB=(PROT,NORM),                                      X
               COLOR=GREEN,                                            X
               INITIAL='(ID VRSTE)'
*
OUTPF1   DFHMDF POS=(9,2),                                             X
               LENGTH=71,                                              X
               ATTRB=(UNPROT),                                         X
               COLOR=TURQUOISE,                                        X
               INITIAL=' '
*
OUTPF2   DFHMDF POS=(11,2),                                            X
               LENGTH=71,                                              X
               ATTRB=(UNPROT),                                         X
               COLOR=TURQUOISE,                                        X
               INITIAL=' '
*
OUTPF3   DFHMDF POS=(13,2),                                            X
               LENGTH=71,                                              X
               ATTRB=(UNPROT),                                         X
               COLOR=TURQUOISE,                                        X
               INITIAL=' '
*
OUTPF4   DFHMDF POS=(15,2),                                            X
               LENGTH=71,                                              X
               ATTRB=(UNPROT),                                         X
               COLOR=TURQUOISE,                                        X
               INITIAL=' '
*
OUTPF5   DFHMDF POS=(17,2),                                            X
               LENGTH=71,                                              X
               ATTRB=(UNPROT),                                         X
               COLOR=TURQUOISE,                                        X
               INITIAL=' '
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
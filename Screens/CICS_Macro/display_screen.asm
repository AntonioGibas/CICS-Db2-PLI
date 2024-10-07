         PRINT  NOGEN
DISPM1  DFHMSD TYPE=&SYSPARM,                                          X
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
DISP1    DFHMDI SIZE=(24,80),                                          X
               COLUMN=1,                                               X
               LINE=1
*
*********************************************************************
*
         DFHMDF POS=(1,1),                                             X
               LENGTH=5,                                               X
               ATTRB=(PROT,NORM,ASKIP),                                X
               INITIAL='DISP1'
*
         DFHMDF POS=(2,32),                                            X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=16,                                              X
               INITIAL='PRIKAZ INVENTARA'
*
         DFHMDF POS=(3,32),                                            X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=16,                                              X
               INITIAL='ZA UNESENU VRSTU'
*
*
* POLJE ZA UNOS VRSTE SADRZAJA
*
VRSTA1   DFHMDF POS=(5,2),                                             X
               LENGTH=6,                                               X
               ATTRB=(PROT),                                           X
               COLOR=GREEN,                                            X
               INITIAL='VRSTA:'
UNOS01   DFHMDF POS=(5,9),                                             X
               LENGTH=11,                                              X
               ATTRB=(UNPROT,NUM,IC),                                  X
               COLOR=RED,                                              X
               INITIAL='___________'
* OPIS POLJA
OPIS1A   DFHMDF POS=(5,22),                                            X
               LENGTH=42,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='(KNJIGE,DOBAVLJACI,AUTORI,CLANOVI,POSUDBA,'
OPIS1B   DFHMDF POS=(6,22),                                            X
               LENGTH=30,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='REZERVACIJA,POSUDBA,ZAKASNINA'
* UNOS ID-A
ID001A   DFHMDF POS=(7,2),                                             X
               LENGTH=6,                                               X
               ATTRB=(PROT),                                           X
               COLOR=GREEN,                                            X
               INITIAL='ID   :'
ID001B   DFHMDF POS=(7,9),                                             X
               LENGTH=5,                                               X
               ATTRB=(UNPROT,NUM),                                     X
               COLOR=RED,                                              X
               INITIAL='_____'
*
OPIS2    DFHMDF POS=(7,22),                                            X
               LENGTH=10,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='(ID VRSTE)'
*
OUTPF1   DFHMDF POS=(9,2),                                             X
               LENGTH=71,                                              X
               ATTRB=(PROT),                                           X
               INITIAL=' '
*
OUTPF2   DFHMDF POS=(11,2),                                            X
               LENGTH=71,                                              X
               ATTRB=(PROT),                                           X
               INITIAL=' '
*
OUTPF3   DFHMDF POS=(13,2),                                            X
               LENGTH=71,                                              X
               ATTRB=(PROT),                                           X
               INITIAL=' '
*
OUTPF4   DFHMDF POS=(15,2),                                            X
               LENGTH=71,                                              X
               ATTRB=(PROT),                                           X
               INITIAL=' '
*
OUTPF5   DFHMDF POS=(17,2),                                            X
               LENGTH=71,                                              X
               ATTRB=(PROT),                                           X
               INITIAL=' '
*
INFO1A   DFHMDF POS=(22,2),                                            X
               LENGTH=5,                                               X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='INFO:'
*
INFO1B   DFHMDF POS=(22,2),                                            X
               LENGTH=65,                                              X
               ATTRB=(PROT),                                           X
               INITIAL=' '
*
*********************************************************************
*
         DFHMSD TYPE=FINAL
         END
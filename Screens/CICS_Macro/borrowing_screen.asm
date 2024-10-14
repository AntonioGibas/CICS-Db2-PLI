         PRINT  NOGEN
POSUDM1 DFHMSD TYPE=&SYSPARM,                                          X
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
POSUD1   DFHMDI SIZE=(24,80),                                          X
               COLUMN=1,                                               X
               LINE=1
*
*********************************************************************
*
NASLOV1  DFHMDF POS=(1,1),                                             X
               LENGTH=6,                                               X
               ATTRB=(PROT,NORM,ASKIP),                                X
               COLOR=BLUE,                                             X
               INITIAL='POSUD1'
*
NASLOV2  DFHMDF POS=(3,2),                                             X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=14,                                              X
               COLOR=GREEN,                                            X
               INITIAL='POSUDBA KNJIGA'
*
NASLOV3  DFHMDF POS=(5,2),                                             X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=42,                                              X
               COLOR=GREEN,                                            X
               INITIAL='UNOS ID-A KNJIGE (SKENIRATI NA POLEDJINI),'
*
NASLOV4  DFHMDF POS=(7,12),                                            X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=37,                                              X
               COLOR=GREEN,                                            X
               INITIAL='I ID KORISNIKA (SKRENIRATI ISKAZNICU)'
*
* POLJE ZA UNOS VRSTE SADRZAJA
*
KNJID1   DFHMDF POS=(10,4),                                            X
               LENGTH=6,                                               X
               ATTRB=(PROT),                                           X
               INITIAL='IDKNJ:'
UNOSP1   DFHMDF POS=(10,11),                                           X
               LENGTH=5,                                               X
               ATTRB=(UNPROT,NUM,IC),                                  X
               COLOR=TURQUOISE,                                        X
               INITIAL='_____'
*
IDKOR1   DFHMDF POS=(12,4),                                            X
               LENGTH=6,                                               X
               ATTRB=(PROT),                                           X
               INITIAL='IDKOR:'
UNIKR1   DFHMDF POS=(12,11),                                           X
               LENGTH=5,                                               X
               ATTRB=(UNPROT,NUM),                                     X
               COLOR=TURQUOISE,                                        X
               INITIAL='_____'
*
DATPOS1  DFHMDF POS=(14,3),                                            X
               LENGTH=7,                                               X
               ATTRB=(PROT),                                           X
               INITIAL='DATPOS:'
UNDPOS1  DFHMDF POS=(14,11),                                           X
               LENGTH=8,                                               X
               ATTRB=(UNPROT),                                         X
               COLOR=TURQUOISE,                                        X
               INITIAL='________'
OPDOD1   DFHMDF POS=(14,21),                                           X
               LENGTH=12,                                              X
               ATTRB=(PROT,NORM),                                      X
               COLOR=GREEN,                                            X
               INITIAL='(DD/MM/GGGG)'
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
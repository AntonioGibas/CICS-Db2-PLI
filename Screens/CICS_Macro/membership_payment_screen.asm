         PRINT  NOGEN
MEMPYM1 DFHMSD TYPE=&SYSPARM,                                          X
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
MEMPY1   DFHMDI SIZE=(24,80),                                          X
               COLUMN=1,                                               X
               LINE=1
*
*********************************************************************
*
NASLOV1  DFHMDF POS=(1,1),                                             X
               LENGTH=6,                                               X
               ATTRB=(PROT,NORM,ASKIP),                                X
               COLOR=BLUE,                                             X
               INITIAL='MEMPY1'
*
NASLOV2  DFHMDF POS=(3,2),                                             X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=16,                                              X
               COLOR=GREEN,                                            X
               INITIAL='UPLATA CLANARINE'
*
NASLOV3  DFHMDF POS=(3,19),                                            X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=41,                                              X
               COLOR=GREEN,                                            X
               INITIAL='SKENIRATI S ISKAZNICE I PROMJENITI STATUS'
*
* ID
*
IDKOR1   DFHMDF POS=(6,7),                                             X
               LENGTH=3,                                               X
               ATTRB=(PROT),                                           X
               INITIAL='ID:'
UNIDK1   DFHMDF POS=(6,11),                                            X
               LENGTH=60,                                              X
               ATTRB=(UNPROT,IC),                                      X
               COLOR=TURQUOISE,                                        X
               INITIAL='_____'
* PREZIME
PEZIME1  DFHMDF POS=(8,2),                                             X
               LENGTH=8,                                               X
               ATTRB=(PROT),                                           X
               INITIAL='PREZIME:'
UNPREZ1  DFHMDF POS=(8,11),                                            X
               LENGTH=60,                                              X
               ATTRB=(UNPROT),                                         X
               COLOR=TURQUOISE,                                        X
               INITIAL='________________________________________'
* IME
IME001   DFHMDF POS=(10,6),                                            X
               LENGTH=4,                                               X
               ATTRB=(PROT),                                           X
               INITIAL='IME:'
UNIME1   DFHMDF POS=(10,11),                                           X
               LENGTH=60,                                              X
               ATTRB=(UNPROT),                                         X
               COLOR=TURQUOISE,                                        X
               INITIAL='________________________________________'
* DATUM OBNOVE CLANARINE
DATOD1   DFHMDF POS=(16,4),                                            X
               LENGTH=6,                                               X
               ATTRB=(PROT),                                           X
               INITIAL='DATOD:'
UNDOD1   DFHMDF POS=(16,11),                                           X
               LENGTH=8,                                               X
               ATTRB=(UNPROT),                                         X
               COLOR=TURQUOISE,                                        X
               INITIAL='________'
OPDOD1   DFHMDF POS=(16,21),                                           X
               LENGTH=12,                                              X
               ATTRB=(PROT,NORM),                                      X
               COLOR=GREEN,                                            X
               INITIAL='(DD/MM/GGGG)'
* STATUS CLANSTVA
STATUS1  DFHMDF POS=(18,3),                                            X
               LENGTH=7,                                               X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='STATUS:'
STATU1   DFHMDF POS=(18,11),                                           X
               LENGTH=5,                                               X
               ATTRB=(UNPROT),                                         X
               COLOR=TURQUOISE,                                        X
               INITIAL='_____'
OPSTS1   DFHMDF POS=(18,21),                                           X
               LENGTH=15,                                              X
               ATTRB=(PROT,NORM),                                      X
               COLOR=GREEN,                                            X
               INITIAL='00001 - AKTIVNA'
OPSTS2   DFHMDF POS=(19,21),                                           X
               LENGTH=40,                                              X
               ATTRB=(PROT,NORM),                                      X
               COLOR=GREEN,                                            X
               INITIAL='00002 - CEKANJE POTVRDE UPLATE CLANARINE'
OPSTS3   DFHMDF POS=(20,21),                                           X
               LENGTH=17,                                              X
               ATTRB=(PROT,NORM),                                      X
               COLOR=GREEN,                                            X
               INITIAL='00003 - NEAKTIVNA'
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
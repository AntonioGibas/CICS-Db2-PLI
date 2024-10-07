         PRINT  NOGEN
MAINM1  DFHMSD TYPE=&SYSPARM,                                          X
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
MAIN01   DFHMDI SIZE=(24,80),                                          X
               COLUMN=1,                                               X
               LINE=1
*
*********************************************************************
*
         DFHMDF POS=(1,1),                                             X
               LENGTH=6,                                               X
               ATTRB=(PROT,NORM,ASKIP),                                X
               INITIAL='MAIN01'
*
         DFHMDF POS=(2,30),                                            X
               LENGTH=20,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='********************'
*
         DFHMDF POS=(3,30),                                            X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=20,                                              X
               INITIAL='* SUSTAV ZA OBRADU *'
*
         DFHMDF POS=(4,30),                                            X
               ATTRB=(PROT,NORM),                                      X
               LENGTH=20,                                              X
               INITIAL='*PODATAKA KNJIZNICE*'
*
*
         DFHMDF POS=(5,30),                                            X
               LENGTH=20,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='********************'
*
* POLJE ZA UNOS OPCIJE *
*
UNASL1   DFHMDF POS=(7,32),                                            X
               LENGTH=15,                                              X
               ATTRB=(PROT),                                           X
               COLOR=BLUE,                                             X
               INITIAL='UNESITE OPCIJU:'
*
UNOS01   DFHMDF POS=(7,48),                                            X
               LENGTH=2,                                               X
               ATTRB=(UNPROT,NUM,IC),                                  X
               COLOR=RED,                                              X
               INITIAL='__'
*
*********************************************************************
*
OPISI    DFHMDF POS=(9,3),                                             X
               LENGTH=6,                                               X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='OPISI:'
OPIS2    DFHMDF POS=(11,4),                                            X
               LENGTH=19,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='02-Prikaz inventara'
OPIS10   DFHMDF POS=(11,40),                                           x
               LENGTH=10,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='10-Posudba'
OPIS3    DFHMDF POS=(12,4),                                            x
               LENGTH=31,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='03-Uredi (ZA BRISANJE PODATAKA)'
OPIS4    DFHMDF POS=(13,4),                                            x
               LENGTH=16,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='04-Novi korisnik'
OPIS5    DFHMDF POS=(14,4),                                            x
               LENGTH=13,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='05-Novi autor'
OPIS6   DFHMDF POS=(15,4),                                             x
               LENGTH=17,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='06-Novi dobavljac'
OPIS7    DFHMDF POS=(16,4),                                            x
               LENGTH=14,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='07-Rezervacije'
OPIS8    DFHMDF POS=(17,4),                                            x
               LENGTH=14,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='08-Nova knjiga'
OPIS9    DFHMDF POS=(18,4),                                            x
               LENGTH=12,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='09-Clanarine'
*
INFO1    DFHMDF POS=(21,2),                                            X
               LENGTH=5,                                               X
               COLOR=GREEN,                                            X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='INFO:'
         DFHMDF POS=(21,8),                                            X
               LENGTH=64,                                              X
               COLOR=GREEN,                                            X
               ATTRB=(PROT),                                           X
               INITIAL=' '
*
PFKEYS   DFHMDF POS=(23,2),                                            X
               LENGTH=32,                                              X
               ATTRB=(PROT,NORM),                                      X
               INITIAL='PF3 - NATRAG        CTRL - ENTER'
*
*********************************************************************
*
         DFHMSD TYPE=FINAL
         END
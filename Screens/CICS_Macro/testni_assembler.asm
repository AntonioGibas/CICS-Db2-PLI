         PRINT  NOGEN
ZBROJ01  DFHMSD TYPE=&SYSPARM,                                         X
                LANG=PLI,                                              X
                MODE=INOUT,                                            X
                TERM=3270-2,                                           X
                CTRL=FREEKB,                                           X
                STORAGE=AUTO,                                          X
                MAPATTS=(COLOR),                                       X
                TIOAPFX=NO
*
*********************************************************************
*
ZBRJ01   DFHMDI SIZE=(24,80),                                          X
                LINE=1,                                                X
                COLUMN=1
*
*********************************************************************
*
         DFHMDF POS=(1,1),                                             X
                LENGTH=7,                                              X
                ATTRB=(PROT,NORM,ASKIP),                               X
                INITIAL='MAPZBRJ'
*
         DFHMDF POS=(3,20),                                            X
                LENGTH=26,                                             X
                ATTRB=(PROT,NORM),                                     X
                COLOR=BLUE,                                            X
                INITIAL='**************************'
*
         DFHMDF POS=(4,20),                                            X
                LENGTH=1,                                              X
                ATTRB=(PROT,NORM),                                     X
                COLOR=BLUE,                                            X
                INITIAL='*'
*
         DFHMDF POS=(4,21),                                            X
                LENGTH=24,                                             X
                ATTRB=(PROT,NORM),                                     X
                INITIAL='UNESI DVA BROJA ZA ZBROJ'
*
         DFHMDF POS=(4,45),                                            X
                LENGTH=1,                                              X
                ATTRB=(PROT,NORM),                                     X
                COLOR=BLUE,                                            X
                INITIAL='*'
*
         DFHMDF POS=(5,20),                                            X
                LENGTH=26,                                             X
                ATTRB=(PROT,NORM),                                     X
                COLOR=BLUE,                                            X
                INITIAL='**************************'
*
*********************************************************************
*
BROJ1    DFHMDF POS=(8,21),                                            X
                LENGTH=6,                                              X
                ATTRB=(PROT),                                          X
                COLOR=BLUE,                                            X
                INITIAL='BROJ1:'
*
UNOS1    DFHMDF POS=(8,28),                                            X
                LENGTH=5,                                              X
                ATTRB=(UNPROT,NUM,IC),                                 X
                COLOR=RED,                                             X
                INITIAL='_____'
*
*********************************************************************
*
BROJ2    DFHMDF POS=(8,34),                                            X
                LENGTH=6,                                              X
                ATTRB=(PROT),                                          X
                COLOR=BLUE,                                            X
                INITIAL='BROJ2:'
*
UNOS2    DFHMDF POS=(8,41),                                            X
                LENGTH=5,                                              X
                ATTRB=(UNPROT,NUM),                                    X
                COLOR=RED,                                             X
                INITIAL='_____'
*
*********************************************************************
ZBROJ    DFHMDF POS=(12,25),                                           X
                LENGTH=6,                                              X
                ATTRB=(PROT),                                          X
                COLOR=BLUE,                                            X
                INITIAL='ZBROJ:'
*
REZULT   DFHMDF POS=(12,31),                                           X
                LENGTH=6,                                              X
                ATTRB=(ASKIP,NUM),                                     X
                COLOR=RED,                                             X
                INITIAL='______'
*
*********************************************************************
         DFHMSD TYPE=FINAL
         END
/* Kreiranje tablice NABAVA s primarnim i stranim kljucevima */
CREATE TABLE NABAVA (
    TABID INTEGER NOT NULL GENERATED BY DEFAULT AS IDENTITY 
        (START WITH 1 INCREMENT BY 1 NO MAXVALUE ORDER), /* TABID - ID nabave */
    TABIDKNJ INTEGER NOT NULL, /* TABIDKNJ - ID knjige (strani kljuc) */
    TABIDDOB INTEGER NOT NULL, /* TABIDDOB - ID dobavljaca (strani kljuc) */
    TABDATNAB DATE, /* TABDATNAB - Datum nabave */
    
    /* Definiranje primarnog kljuca s imenom */
    CONSTRAINT PK_NABAVA PRIMARY KEY (TABID), 

    /* Definiranje stranog kljuca za knjige */
    CONSTRAINT FK_NABAVA_KNJ FOREIGN KEY (TABIDKNJ) 
        REFERENCES KNJIGE(TABID) 
        ON DELETE NO ACTION, 

    /* Definiranje stranog kljuca za dobavljace */
    CONSTRAINT FK_NABAVA_DOB FOREIGN KEY (TABIDDOB) 
        REFERENCES DOBAVLJ(TABID) 
        ON DELETE NO ACTION
);

/* Kreiranje jedinstvenog indeksa za primarni kljuc */
CREATE UNIQUE INDEX IDX_UNIQUE_NABAVA_ID ON NABAVA (TABID);

/* Kreiranje view-a za tablicu NABAVA */
CREATE VIEW VIEW_NABAVA AS
    SELECT 
        TABID AS ID, /* ID nabave */
        TABIDKNJ AS IDKNJ, /* ID knjige */
        TABIDDOB AS IDDOB, /* ID dobavljaca */
        TABDATNAB AS DATNAB /* Datum nabave */
    FROM NABAVA;

/* Dodavanje komentara na stupce */
COMMENT ON COLUMN NABAVA.TABID IS 'TABID - ID nabave';
COMMENT ON COLUMN NABAVA.TABIDKNJ IS 'TABIDKNJ - ID knjige';
COMMENT ON COLUMN NABAVA.TABIDDOB IS 'TABIDDOB - ID dobavljaca';
COMMENT ON COLUMN NABAVA.TABDATNAB IS 'TABDATNAB - Datum nabave';

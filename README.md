# CICS-Db2-PLI
Szstav za obradu podataka knjižnice

Za napraviti:
  Dizajn projekta na najvišoj razini - graf
  Dizajn svih ekrana poslovne logike
  Dizajn Db2 baze na osnovu ekrana i poslovne logike
  Uspostaviti CICS - Db2 vezu
  Isprogramirati svaku transakciju u PL/I-u
  Testiranje sustava.


DB Design:
  - Knjige  (ID, NAZIV, AUTOR, KATGRJ, GODIZD)
  - �lanovi (ID, PREZIME, IME, DATOD, STATUS)
  - Autori  (ID, PREZIME, IME)
  - Posudba (ID, IDKNJ, IDCLAN, DATPOS)
  - Nabava  (ID, IDKNJ, IDDOB, DATNAB)
  - Vezna1  (ID, IDAUTOR, IDKNJ)
  - Rezerv  (ID, IDKNJ, IDCLAN, DATREZ, REZSTAT)
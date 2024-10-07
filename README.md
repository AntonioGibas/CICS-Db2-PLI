# CICS-Db2-PLI
Sustav za obradu podataka knjižnice

Za napraviti:
  Dizajn projekta na najvišoj razini - graf
  Dizajn svih ekrana poslovne logike
  Dizajn Db2 baze na osnovu ekrana i poslovne logike
  Uspostaviti CICS - Db2 vezu
  Isprogramirati svaku transakciju u PL/I-u
  Testiranje sustava.

DB Design:

  - Knjige  (ID, NAZIV, AUTOR, KATGRJ, GODIZD)
  - Članovi (ID, PREZIME, IME, DATOD, STATUS)
  - Autori  (ID, PREZIME, IME)
  - Posudba (ID, IDKNJ, IDCLAN, DATPOS)
  - Nabava  (ID, IDKNJ, IDDOB, DATNAB)
  - Vezna1  (ID, IDAUTOR, IDKNJ)
  - Rezerv  (ID, IDKNJ, IDCLAN, DATREZ, REZSTAT)

Screen definitions:
  - MIRO Graph: https://miro.com/welcomeonboard/eUpSZGhRbW51NVhlcGdhR0k2UE9JR0ZOYUwwUnZVQ3dmaXdyblZiQVFrUmFzMDQ4VmtGYktyMUhQWEplbWs4M3wzNDU4NzY0NjAyMzUxNjcxMDkxfDI=?share_link_id=291142519916

Every book has unique ID number.
Members can search by title, author, category or year
One book can have 'n' authors
Library can have 'n' copies of a book
Members can borrow books, system stores the date when the book was borrowed 
Bookeeper can see members borrow inventory, dates, membership expiration date
Members can reserve up to 2 copies of the book to borrow later.
Fines for not returning the borrowed book can be imposed on members if the books are not returned within 25 days.
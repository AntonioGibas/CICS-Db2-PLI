//PROGA JOB 1,NOTIFY=&SYSUID,MSGLEVEL=(1,1),MSGCLASS=X               
//* SQL Precompile                                                     
//PRECOMP EXEC PGM=DSNHPC,                                             
// PARM='HOST(PLI) SQL(DB2)',                                          
// REGION=0M                                                           
//STEPLIB  DD  DSN=DSNC10.SDSNLOAD,DISP=SHR                            
//SYSLIB   DD  DSN=ANGI.INCLUDE,DISP=SHR                               
//         DD  DSN=DFH610.CICS.SDFHMAC,DISP=SHR                        
//SYSIN    DD  DSN=ANGI.PLI(PROGA),DISP=SHR                          
//SYSLIN   DD  DSN=&&SYSPUNCH(PROGA),                                
//             DISP=(NEW,PASS),                                        
//             SPACE=(CYL,(10,100,100)),                               
//             DSORG=PO,                                               
//             LRECL=80,                                               
//             RECFM=FB,                                               
//             BLKSIZE=0,                                              
//             DSNTYPE=LIBRARY                                         
//SYSPRINT DD  SYSOUT=*                                                
//SYSUT1   DD  DSN=&&SYSUT1,UNIT=SYSDA,                                
//             SPACE=(CYL,(5,5)),DISP=(MOD,PASS)                       
//SYSUT2   DD  DSN=&&SYSUT2,UNIT=SYSDA,                                
//             SPACE=(CYL,(5,5)),DISP=(MOD,PASS)                       
//SYSCIN   DD  DSN=&&SYSCIN,DISP=(MOD,PASS),UNIT=SYSDA,                
//             SPACE=(CYL,(5,5))                                       
//DBRMLIB  DD  DSN=DSNC10.DBCG.DBRMLIB.DATA(PROGA),DISP=SHR          
//SYSDUMP  DD  SYSOUT=*                                                
//* PL/I COMPILER CALL                                                 
//PLI    EXEC PGM=IBMZPLI,                                             
//    PARM='+DD:OPTIONS',                                              
//    REGION=0M                                                        
//* COMPILER INPUT MEMBER:                                             
//SYSIN    DD  DSN=ANGI.PLI(PROGA),DISP=SHR                          
//STEPLIB  DD  DSN=IEL610.SIBMZCMP,DISP=SHR                            
//         DD  DSN=CEE.SCEERUN,DISP=SHR                                
//         DD  DSN=DSNC10.DBCG.SDSNEXIT,DISP=SHR                        
//         DD  DSN=DSNC10.SDSNLOAD,DISP=SHR                             
//SYSLIB   DD  DSN=ANGI.PROCLIB,DISP=SHR                                
//         DD  DSN=DSNC10.DBCG.SRCLIB.DATA,DISP=SHR                     
//         DD  DSN=CEE.SCEESAMP,DISP=SHR                                
//         DD  DSN=ANGI.INCLUDE,DISP=SHR                                
//         DD  DSN=DFH610.CICS.SDFHMAC,DISP=SHR                         
//SYSPRINT DD  SYSOUT=*                                                 
//SYSUEXIT DD  DSN=USER.Z31A.PARMLIB(ANGIPARM),DISP=SHR                 
//SYSOUT   DD  SYSOUT=*                                                 
//SYSLIN   DD  DSN=&&SYSPUNCH(PROGA),                                
//             DISP=(OLD,PASS)                                          
//ULAZ     DD  DSN=ANGI.INCLUDE,DISP=SHR                                
//         DD  DSN=DFH610.CICS.SDFHMAC,DISP=SHR                         
//* COMPILER OPCIJE:                                                    
//*                                                                     
//* AGGREGATE - Korištenje agregata u PL/I-u, dopuštajući operacije na  
//*             cijelim strukturama i nizovima u kodu.                  
//*                                                                     
//* ATTRIBUTES - Ispis variajbli i konstanti iz programa na listingu.   
//*                                                                     
//* CMPAT(V2) - Kompitabilnost s PL/I verzijom 2.                       
//*                                                                     
//* DEFAULT(LINKAGE(SYSTEM)) - Postavlja zadanu vrijednost konverzije   
//*            vanjskih procedura na SYSTEM - vanjske procedure će      
//*            sljediti konvenciju "linkanja".                          
//*                                                                     
//* DEFAULT(OVERLAP) - Optimizacija memorijskog prostora.               
//*                                                                     
//* EXIT - Zahtijev compileru da ukljućii izlazni kod u listing, za     
//*        diagnostiku.                                                 
//*                                                                     
//* EXTRN(FULL) - Sve vanjske reference su razrijeđene njihovim imenom. 
//*                                                                     
//* FLAG(I) - Ispis informacijskih poruka u kompajlerskom ispisu PL/I-a.
//*                                                                     
//* INITAUTO - Automatska inicijalizacija svih varijabli u kodu na svoju
//*            najni?u vrijednost, prema njihovom tipu podatka.         
//*                                                                     
//* LIMITS(EXTNAME(7)) - Limitacija vanjskih imena procedura i kodova na
//*            7 znakova - radi kompitabilnosti s ostalim sustavima.    
//*                                                                     
//* LIMITS(FIXEDDEC(31)) - Limitacija decimalnih brojeva na 31 decimalu.
//*                                                                     
//* MACRO - Omogućuje korištenje kompilerskih uputa u kodu.             
//*                                                                     
//* MARGINS(2,72,0) - Definiranje radnog prostora unutar koda:          
//*                 - 2  - Lijeva margina                               
//*                 - 72 - Desna margina                   
//*                 - 0  - Nema nastavka                                
//*                                                                     
//* MAXNEST(BLOCK(50) DO(50) IF(50)) - Maksimalna ugnježđivanja         
//*                                                                     
//* OBJECT - Kreiranje kompajlerskog modula kao output - Load modul.    
//*                                                                     
//* NOOPTIMIZE - Instrukcija kompileru da ne optimizira kod.            
//*                                                                     
//* OPTIONS - Ispis kompilerskih opcija u kompilersko izlistavanje na   
//*           spoolu.                                                   
//*                                                                     
//* PP(SQL('DEC(15)')) - SQL decimal preciznost brojeva                 
//*                                                                     
//* PREFIX(SUBSCRIPTRANGE) - dodaje prefix određenim simbolima ili      
//*                          funkcijama tijekom predkompilacije ili     
//*                          kompilacije.                               
//*                                                                     
//* NOREDUCE - Onemogući compiler da pokuša smanjiti kod zbog           
//*            optimiziranja - kod se kompajlira točno kako je i napisan
//*                                                                     
//* NORENT - Određuje da kompajlirani program neće biti "reentrant" -   
//*          ne mo?e ih se više pozvati u više dretvi simultano.        
//*                                                                     
//* RULES(LAXCTL) - Instrukcija za bla?e postavljanje sintaktičkih      
//*                 pravila kodiranja za kod.                           
//*                                                                     
//* SOURCE - Ukljućuje cijeli source kod u kompiler izlistavanju.       
//*                                                                     
//* STMT - Zahtijev da brojevi retka u kodu budu ukljućeni u            
//*        kompilersko izlistavanje.                                    
//*                                                                     
//* SYSTEM(MVS) - "Multiple Virtual Storage" - target OS.               
//*                                                                     
//* NOWRITABLE - Kompajler ne smije generirati programske izraze -      
//*              kompileani program je pohranjen kao READ-ONLY memorija 
//* XREF - "Cross-refference listing" - pokazuje gdje i kako su sve     
//*        variajble i labele definirane i iskorištene u kodu.          
//*                                                                     
//OPTIONS  DD  *                                                        
  AGGREGATE,                                                            
  ATTRIBUTES,                                                           
  CMPAT(V2),                                                            
  DEFAULT(LINKAGE(SYSTEM)),                                             
  DEFAULT(OVERLAP),                                                     
  EXIT,                                                                 
  EXTRN(FULL),                                                          
  FLAG(I),                                                              
  INITAUTO,                                                             
  LIMITS(EXTNAME(7)),                                                   
  LIMITS(FIXEDDEC(31)),                                                 
  MACRO,                                                                
  MARGINS(2,72,0),                                                      
  MAXNEST(BLOCK(50) DO(50) IF(50)),                                     
  OBJECT,                                                               
  NOOPTIMIZE,                                                           
  OPTIONS,                                                              
  PP(SQL('DEC(15)')),                                                   
  PREFIX(SUBSCRIPTRANGE),                                               
  NOREDUCE,                                                             
  NORENT,                                                               
  RULES(NOLAXDCL),                                                      
  SOURCE,                                                               
  STMT,                                                                 
  SYSTEM(MVS),                                                          
  NOWRITABLE,                                                           
  XREF                                                                  
/*                                                                      
//DBRMLIB  DD DSN=DSNC10.DBCG.DBRMLIB.DATA(PROGA),DISP=SHR      
//SYSUT1   DD DSN=&&SYSUT1,UNIT=SYSALLDA,                              
//            SPACE=(1024,(200,50),,CONTIG,ROUND),DCB=BLKSIZE=1024     
//* SYSLIB SADR�I INCLUDEOVE                                           
//SYSUDUMP  DD  SYSOUT=*                                               
//* LINK-EDIT                                                          
//LKED     EXEC PGM=IEWL,                                              
//   PARM='LIST,XREF,MAP',                                             
//   REGION=0M                                                         
//SYSLIB   DD DSN=CEE.SCEELKED,DISP=SHR                                
//         DD DSN=ANGI.LOAD(PROGA),DISP=SHR                          
//         DD DSN=DSNC10.SDSNLOAD,DISP=SHR                             
//         DD DSN=DSNC10.DBCG.RUNLIB.LOAD,DISP=SHR                     
//SYSUT1   DD UNIT=SYSDA,SPACE=(1024,(100,10))                         
//SYSPRINT DD SYSOUT=*                                                 
//SYSUDUMP DD SYSOUT=*                                                 
//SYSLIN   DD DSN=&&SYSPUNCH(PROGA),DISP=(OLD,DELETE)                
//SYSLMOD  DD DSN=ANGI.LOAD(PROGA),DISP=SHR                          
//* CREEBIND - nepotrebno za sada                                      
//*CREBIND  EXEC PGM=SORT,                                             
//* PARM='JP1"ANGI"'                                                   
//*SYSOUT    DD  SYSOUT=*                                              
//*SYSPRINT  DD  SYSOUT=*                                              
//*SYSUDUMP  DD  SYSOUT=*                                              
//*SORTIN    DD  *,SYMBOLS=(EXECSYS)                                   
//* ANGI.PROGA                                                       
//*                                                                    
//SORTOUT   DD  DSN=DSNC10.DBCG.BIND.DATA(PROGA),DISP=SHR            
//SYSIN     DD  DSN=ANGI.COMPILE(PLICMPSC),DISP=SHR                    
//* DB2 BIND                                                           
//BIND  EXEC PGM=IKJEFT01,                                             
// DYNAMNBR=20,                                                        
// COND=(5,LT,LKED),                                                   
// REGION=4096K                                                        
//STEPLIB  DD DSN=DSNC10.SDSNLOAD,DISP=SHR                                      
//DBRMLIB  DD DSN=DSNC10.DBCG.DBRMLIB.DATA,DISP=SHR                     
//SYSTSPRT DD SYSOUT=*,BLKSIZE=13300                                    
//SYSDUMP  DD SYSOUT=*,BLKSIZE=13300                                    
//SYSOUT   DD SYSOUT=*,BLKSIZE=13300                                    
//REPORT   DD SYSOUT=*,BLKSIZE=13300                                    
//SYSTSIN  DD *                                                         
  DSN SYSTEM(DBCG)                                                      
  BIND PACKAGE(CRDB)    -                                               
       MEMBER(PROGA)   -                                             
       ACT(REPLACE)     -                                               
       VALIDATE(BIND)   -                                               
       EXPLAIN(NO)      -                                               
       ISOLATION(CS)    -                                               
       DEGREE(ANY)      -                                               
       QUALIFIER(IBMUSER)  -                                            
       OWNER(IBMUSER)                                                   
  BIND PLAN(PROGA)     -                                             
     QUALIFIER(IBMUSER)    -                                            
     OWNER(IBMUSER)    -                                                
     PKLIST(CRDB.*,CBBX.*) -                                            
     NODEFER(PREPARE)   -                                               
     VALIDATE(BIND)     -                                               
     ISOLATION(CS)      -                                               
     ACQUIRE(USE)       -                                               
     RELEASE(COMMIT)    -                                               
     EXPLAIN(NO)        -                                               
     CURRENTDATA(NO)    -                                               
     ACTION(REPLACE)    -                                               
     RETAIN             -                                               
     DEGREE(ANY)        -                                               
     SQLRULES(DB2)      -                                               
     DISCONNECT(EXPLICIT)                                               
/*                                                                              
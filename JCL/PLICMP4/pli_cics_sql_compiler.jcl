//* COMPILER ZA PL/I + CICS + SQL                                      
//PLSQCIC JOB 1,NOTIFY=&SYSUID,MSGLEVEL=(1,1),MSGCLASS=X               
//* PL/I COMPILER CALL                                                 
//PLI    EXEC PGM=IBMZPLI,                                             
//    PARM='+DD:OPTIONS',                                              
//    REGION=0M                                                        
//SYSIN    DD  DSN=ANGI.PLI(naziv_programa),DISP=SHR                            
//STEPLIB  DD  DSN=IEL610.SIBMZCMP,DISP=SHR                            
//         DD  DSN=CEE.SCEERUN,DISP=SHR                                
//         DD  DSN=DSNC10.DBCG.SDSNEXIT,DISP=SHR                       
//         DD  DSN=DSNC10.SDSNLOAD,DISP=SHR                            
//         DD  DSN=DFH610.CICS.SDFHLOAD,DISP=SHR                       
//         DD  DSN=DFH610.CICS.ADFHMOD,DISP=SHR                        
//SYSLIB   DD  DSN=ANGI.PROCLIB,DISP=SHR                               
//         DD  DSN=ANGI.INCLUDE,DISP=SHR                               
//         DD  DSN=DSNC10.DBCG.SRCLIB.DATA,DISP=SHR                    
//         DD  DSN=CEE.SCEESAMP,DISP=SHR                               
//         DD  DSN=DFH610.CICS.SDFHMAC,DISP=SHR                        
//SYSPRINT DD  SYSOUT=*                                                
//SYSPUNCH DD  SYSOUT=*                                                
//SYSUEXIT DD  DSN=USER.Z31A.PARMLIB(ANGIPARM),DISP=SHR                
//SYSOUT   DD  SYSOUT=*                                                
//SYSLIN   DD  DSN=&&SQLPRE(naziv_programa),                                    
//             DISP=(NEW,PASS),                                        
//             SPACE=(CYL,(10,100,100)),                               
//             DSORG=PO,                                               
//             LRECL=80,                                               
//             RECFM=FB,                                               
//             BLKSIZE=0,                                              
//             DSNTYPE=LIBRARY                                         
//OPTIONS  DD  *                                                       
  PP(CICS),                                                            
  PP(SQL()),                                                           
  DFT(EBCDIC),                                                         
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
  NOREDUCE,                                                           
  NORENT,                                                             
  RULES(LAXCTL),                                                      
  SOURCE,                                                             
  STMT,                                                               
  SYSTEM(CICS),                                                       
  NOWRITABLE,                                                         
  XREF                                                                
/*                                                                    
//DBRMLIB  DD DSN=DSNC10.DBCG.DBRMLIB.DATA(PROGA),DISP=SHR            
//SYSUT1   DD  DSN=&&SYSUT1,UNIT=SYSALLDA,                            
//             SPACE=(1024,(200,50),,CONTIG,ROUND),DCB=BLKSIZE=1024   
//SYSUDUMP  DD  SYSOUT=*                                              
//* PRECOMPILE SQL                                                    
//PRECOMP EXEC PGM=DSNHPC,                                            
// PARM='HOST(PLI),APOST,STDSQL(NO)',                                 
// REGION=0M                                                          
//STEPLIB  DD  DSN=DSNC10.SDSNLOAD,DISP=SHR                            
//SYSLIB   DD  DSN=ANGI.INCLUDE,DISP=SHR                               
//         DD  DSN=DFH610.CICS.SDFHMAC,DISP=SHR                        
//         DD  DSN=DFH610.CICS.ADFHMOD,DISP=SHR                        
//         DD  DSN=DFH610.CICS.SDFHMSGS,DISP=SHR                       
//SYSIN    DD  DSN=ANGI.PLI(naziv_programa),DISP=SHR                            
//SYSLIN   DD  DSN=&&SQLPRE(naziv_programa),DISP=SHR                            
//SYSPRINT DD  SYSOUT=*                                                
//SYSTERM  DD  SYSOUT=X                                                
//SYSUT1   DD  DSN=&&SYSUT1,UNIT=SYSDA,                                
//             SPACE=(CYL,(5,5)),DISP=(MOD,PASS)                       
//SYSUT2   DD  DSN=&&SYSUT2,UNIT=SYSDA,                                
//             SPACE=(CYL,(5,5)),DISP=(MOD,PASS)                       
//SYSCIN   DD  DSN=&&SYSCIN,DISP=(MOD,PASS),UNIT=SYSDA,                
//             SPACE=(CYL,(5,5))                                       
//DBRMLIB  DD  DSN=DSNC10.DBCG.DBRMLIB.DATA(naziv_programa),DISP=SHR            
//SYSDUMP  DD  SYSOUT=*                                                
//* LINK-EDIT                                                          
//LKED     EXEC PGM=IEWL,                                              
//   PARM='LIST,XREF,MAP',                                             
//   REGION=0M                                                         
//SYSLIB   DD DSN=CEE.SCEELKED,DISP=SHR                                
//         DD DSN=ANGI.LOAD(naziv_programa),DISP=SHR                            
//         DD DSN=DSNC10.SDSNLOAD,DISP=SHR                             
//         DD DSN=DSNC10.DBCG.RUNLIB.LOAD,DISP=SHR                     
//         DD DSN=DFH610.CICS.SDFHMAC,DISP=SHR                         
//         DD DSN=DSNC10.DBCG.SRCLIB.DATA,DISP=SHR                     
//SYSUT1   DD UNIT=SYSDA,SPACE=(1024,(100,10))                         
//SYSPRINT DD SYSOUT=*                                                 
//SYSUDUMP DD  SYSOUT=*                                                
//SYSLIN   DD DSN=&&SQLPRE(naziv_programa),DISP=(OLD,DELETE)                    
//SYSLMOD  DD DSN=ANGI.LOAD(naziv_programa),DISP=SHR                            
//SORTOUT  DD  DSN=DSNC10.DBCG.BIND.DATA(naziv_programa),DISP=SHR               
//* BIND                                                               
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
       MEMBER(naziv_programa)   -                                               
       ACT(REPLACE)     -                                              
       VALIDATE(BIND)   -                                              
       EXPLAIN(NO)      -                                              
       ISOLATION(CS)    -                                              
       DEGREE(ANY)      -                                              
       QUALIFIER(IBMUSER)  -                                           
       OWNER(IBMUSER)                                                  
  BIND PLAN(naziv_programa)     -                                               
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
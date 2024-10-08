//* COMPILER ZA PL/I
//PLICOMP JOB 1,NOTIFY=&SYSUID,MSGLEVEL=(1,1),MSGCLASS=X
//* PL/I COMPILER CALL
//PLI    EXEC PGM=IBMZPLI,
//    PARM='+DD:OPTIONS',
//    REGION=0M
//* COMPILER INPUT CODE:
//SYSIN    DD  DSN=ANGI.PLI(NEW01),DISP=SHR
//STEPLIB  DD  DSN=IEL610.SIBMZCMP,DISP=SHR
//         DD  DSN=CEE.SCEERUN,DISP=SHR
//SYSLIB   DD  DSN=ANGI.PROCLIB,DISP=SHR
//SYSPRINT DD  SYSOUT=*
//SYSUEXIT DD  DSN=USER.Z31A.PARMLIB(ANGIPARM),DISP=SHR
//SYSOUT   DD  SYSOUT=*
//SYSLIN   DD  DSN=&&SYSPUNCH(NEW01),
//             DISP=(NEW,PASS),
//             SPACE=(CYL,(10,100,100)),
//             DSORG=PO,
//             LRECL=80,
//             RECFM=FB,
//             BLKSIZE=0,
//             DSNTYPE=LIBRARY
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
  NOREDUCE,
  NORENT,
  RULES(LAXCTL),
  SOURCE,
  STMT,
  SYSTEM(MVS),
  NOWRITABLE,
  XREF
/*
//SYSUT1   DD  DSN=&&SYSUT1,UNIT=SYSALLDA,
//             SPACE=(1024,(200,50),,CONTIG,ROUND),DCB=BLKSIZE=1024
//* SYSLIB SADRZI INCLUDEOVE
//SYSUDUMP  DD  SYSOUT=*
//* LINK-EDIT
//LKED     EXEC PGM=IEWL,
//   PARM='LIST,XREF,MAP',
//   REGION=0M
//SYSLIB   DD DSN=CEE.SCEELKED,DISP=SHR
//         DD DSN=ANGI.LOAD(NEW01),DISP=SHR
//SYSUT1   DD UNIT=SYSDA,SPACE=(1024,(100,10))
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSLIN   DD DSN=&&SYSPUNCH(NEW01),DISP=(OLD,DELETE)
//SYSLMOD  DD DSN=ANGI.LOAD(NEW01),DISP=SHR
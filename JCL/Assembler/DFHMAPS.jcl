//********************************************************************* 
//DFHMAPS PROC INDEX='DFH610.CICS',           FOR SDFHMAC               
//             MAPLIB='DFH610.CICS.SDFHLOAD', TARGET FOR MAP            
//             DSCTLIB='DFH610.CICS.SDFHMAC', TARGET FOR DSECT          
//             MAPNAME=,                      NAME OF MAPSET - REQUIRED 
//             A=A,                           A=A FOR ALIGNED MAP       
//             AMODE=31,                      24/31                     
//             RMODE=ANY,                     24/ANY                    
//             ASMBLR=ASMA90,                 ASSEMBLER PROGRAM NAME    
//             REG=2048K,                     REGION FOR ASSEMBLY       
//             OUTC=A,                        PRINT SYSOUT CLASS        
//             WORK=SYSDA                     WORK FILE UNIT            
//*                                                                     
//* This procedure creates a physical map (load module) and a           
//* symbolic map (copybook) from a BMS mapset source definition.        
//* It consists of four steps, as follows.                              
//*                                                                     
//* COPY - this step copies the mapset definition (which must be        
//*        provided by the user via a SYSUT1 DD statement) to a         
//*        temporary dataset.                                           
//*                                                                     
//* ASMMAP - this step assembles the mapset to produce an object        
//*        which constitutes the physical mapset.                       
//*                                                                     
//* LINKMAP - this step executes the binder to create a load module     
//*        from the object created by the ASMMAP step. By default       
//*        options AMODE(31) and RMODE(ANY) are specified.              
//*                                                                     
//* ASMDSECT - this step produces a copybook (symbolic map) from        
//*        supplied mapset source definition.                           
//*                                                                     
//COPY     EXEC PGM=IEBGENER                                            
//SYSPRINT DD SYSOUT=&OUTC                                              
//SYSUT2   DD DSN=&&TEMPM,UNIT=&WORK,DISP=(,PASS),                      
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=400),                     
//            SPACE=(400,(50,50))                                      
//SYSIN    DD DUMMY                                                    
//* SYSUT1 DD * NEEDED FOR THE MAP SOURCE                              
//ASMMAP   EXEC PGM=&ASMBLR,REGION=&REG,                               
//* NOLOAD CHANGED TO NOOBJECT                                         
//  PARM='SYSPARM(&A.MAP),DECK,NOOBJECT'                               
//SYSPRINT DD SYSOUT=&OUTC                                             
//SYSLIB   DD DSN=&INDEX..SDFHMAC,DISP=SHR                             
//         DD DSN=SYS1.MACLIB,DISP=SHR                                 
//SYSUT1   DD UNIT=&WORK,SPACE=(CYL,(5,5))                             
//SYSUT2   DD UNIT=&WORK,SPACE=(CYL,(5,5))                             
//SYSUT3   DD UNIT=&WORK,SPACE=(CYL,(5,5))                             
//SYSPUNCH DD DSN=&&MAP,DISP=(,PASS),UNIT=&WORK,                       
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=400),                     
//            SPACE=(400,(50,50))                                      
//SYSIN    DD DSN=&&TEMPM,DISP=(OLD,PASS)                              
//LINKMAP  EXEC PGM=IEWL,PARM=('LIST,LET,XREF,RMODE(&RMODE)',          
//            'AMODE(&AMODE)')                                         
//SYSPRINT DD SYSOUT=&OUTC                                             
//SYSLMOD  DD DSN=&MAPLIB(&MAPNAME),DISP=SHR                           
//SYSUT1   DD UNIT=&WORK,SPACE=(1024,(20,20))                          
//SYSLIN   DD DSN=&&MAP,DISP=(OLD,DELETE)                              
//* NOLOAD CHANGED TO NOOBJECT                                         
//ASMDSECT EXEC PGM=&ASMBLR,REGION=&REG,                               
//  PARM='SYSPARM(&A.DSECT),DECK,NOOBJECT'                             
//SYSPRINT DD SYSOUT=&OUTC                                             
//SYSLIB   DD DSN=&INDEX..SDFHMAC,DISP=SHR                             
//         DD DSN=SYS1.MACLIB,DISP=SHR                                 
//SYSUT1   DD UNIT=&WORK,SPACE=(CYL,(5,5))                             
//SYSUT2   DD UNIT=&WORK,SPACE=(CYL,(5,5))                             
//SYSUT3   DD UNIT=&WORK,SPACE=(CYL,(5,5))                             
//SYSPUNCH DD DSN=&DSCTLIB(&MAPNAME),DISP=OLD                          
//SYSIN    DD DSN=&&TEMPM,DISP=(OLD,DELETE)                            
// PEND  
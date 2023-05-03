C     ******************************************************************
C     TIME FUNCTION FOR WATFOR-77. INCLUDES "OREGON.F".
C     ******************************************************************
*$NOEXTENSIONS
*$INCLUDE OREGON.F
C     ******************************************************************
      INTEGER FUNCTION TIME()
      INTEGER*2 AX, BX, CX, DX, BP, DI, SI, ES, DS, FLAGS
      PARAMETER (AX=1, BX=2, CX=3, DX=4, BP=5, DI=6, SI=7)
      PARAMETER (ES=8, DS=9, FLAGS=10)
      INTEGER NUM_REGS
      PARAMETER (NUM_REGS=10)
      INTEGER*2 GETTIME, DOSCALL
      PARAMETER (DOSCALL=33, GETTIME=44)
      INTEGER*2 REGS(NUM_REGS)
      INTEGER*1 HRS_MIN(2), SEC_TIC(2)
      INTEGER*1 HOURS, MINS, SECS, TICS
      EQUIVALENCE (REGS(CX), HRS_MIN)
      EQUIVALENCE (REGS(DX), SEC_TIC)
      EQUIVALENCE (HOURS,    HRS_MIN(2))
      EQUIVALENCE (MINS,     HRS_MIN(1))
      EQUIVALENCE (SECS,     SEC_TIC(2))
      EQUIVALENCE (TICS,     HRS_MIN(1))
      REGS(AX) = GETTIME * 256
      CALL INTR(DOSCALL, REGS)
      TIME = (HOURS * 3600) + (MINS * 60) + SECS
      END

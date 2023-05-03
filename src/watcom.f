C     ******************************************************************
C     TIME FUNCTION FOR (OPEN) WATCOM FORTRAN 77 COMPILERS.
C     ******************************************************************
      INTEGER FUNCTION TIME()
      INTEGER*2 HRS, MINS, SECS, HSECS
      CALL GETTIM(HRS, MINS, SECS, HSECS)
      TIME = (HRS * 3600) + (MINS * 60) + SECS
      END

C     ******************************************************************
C     TIME FUNCTION FOR CRAY CF77 AND CF90 COMPILERS. RENAME "TIME()"
C     IN "OREGON.F" TO "ITIME()" TO AVOID CONFLICT WITH THE
C     COMPILER EXTENSION OF THE SAME NAME.
C     ******************************************************************
      INTEGER FUNCTION ITIME()
      CHARACTER*8 T
      INTEGER     IHR, IMIN, ISEC
      CALL CLOCK(T)
      READ (T(1:2), 100) IHR
      READ (T(4:5), 100) IMIN
      READ (T(7:8), 100) ISEC
  100 FORMAT (I2)
      ITIME = (IHR * 3600) + (IMIN * 60) + ISEC
      END

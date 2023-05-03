C     ******************************************************************
C     TIME FUNCTION FOR LAHEY FORTRAN COMPILERS.
C     ******************************************************************
      INTEGER FUNCTION TIME()
      INTEGER ITICKS
      CALL TIMER(ITICKS)
      TIME = ITICKS
      END

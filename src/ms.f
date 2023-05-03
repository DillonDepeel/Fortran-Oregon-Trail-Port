C     ******************************************************************
C     TIME FUNCTION FOR MICROSOFT, MICROWAY, RM, IBM FORTRAN COMPILERS.
C     ******************************************************************
      INTEGER FUNCTION TIME()
      INTEGER IHR, IMIN, ISEC, I100TH
      CALL GETTIM(IHR, IMIN, ISEC, I100TH)
      TIME = (IHR * 3600) + (IMIN * 60) + ISEC
      END

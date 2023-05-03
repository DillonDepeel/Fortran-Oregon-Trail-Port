C     ******************************************************************
C     TIME FUNCTION FOR SALFORD FTN77 AND SILVERFROST FTN95.
C     ******************************************************************
      INTEGER FUNCTION TIME()
      REAL R
      CALL CLOCK@(R)
      TIME = INT(R)
      END

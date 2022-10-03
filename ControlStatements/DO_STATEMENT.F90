!*************************************************
!PROGRAM TO PRINT A TABLE OF SIN AND COSINE VALUES
!USING A SINGLE DO STATEMENT
!*************************************************

IMPLICIT NONE
REAL*4 X, DELTA, START, END
INTEGER N

READ(*, *) START, END

DELTA = (END - START) * 0.05
X = START

WRITE(*, *) '	X(RAD)		SINE		COSINE'

DO N = 1, 21
	WRITE(*, *) X, SIN(X), COS(X)
	X = X + DELTA
END DO

END

!*************************************************************
!PROGRAM TO COMPUTE THE SOLUTIONS FOR A SECOND DEGREE EQUATION
!USING VARIOUS "IF" STATEMENTS
!*************************************************************


IMPLICIT NONE
REAL*8 A, B, C, D, X1, X2, XR, XI

WRITE(*, *) 'SOLUTIONS FOR SECOND DEGREE EQUATION'
WRITE(*, *) 'AX^2 + BX + C = 0'
WRITE(*, *) ''

WRITE(*, *) 'ENTER THE COEFFICIENT A:'
READ(*, *) A

WRITE(*, *) 'ENTER THE COEFFICIENT B:'
READ(*, *) B

WRITE(*, *) 'ENTER THE COEFFICIENT C:'
READ(*, *) C

!IF THE A COEFFICIENT IS ZERO, THEN IT IS NOT A SECOND DEGREE 
!EQUATION AND THE RESOLUTION IS DIFFERENT
IF (A /= 0.D0) THEN 
	IF (B == 0.D0 .AND. C == 0.D0) THEN
		X1 = 0.D0
		X2 = 0.D0
		WRITE(*, *) 'DOUBLE SOLUTION X1 = X2 =', X1
	ELSE 
		D = B**2.D0 - 4.D0 * A * C
		IF (D >= 0.D0) THEN
			X1 = (-B + DSQRT(D)) / (2.D0 * A)
			X2 = (-B - DSQRT(D)) / (2.D0 * A)
			WRITE(*, *) 'REAL SOLUTIONS:'
			WRITE(*, *) 'X1=', X1
			WRITE(*, *) 'X2=', X2
		ELSE
			XR = -B / (2.D0 * A)
			XI = DSQRT(-D) / (2.D0 * A)
			WRITE(*, *) 'COMPLEX SOLUTIONS'
			WRITE(*, *) 'X1=', XR, '+ I', XI
			WRITE(*, *) 'X2=', XR, '- I', XI
		ENDIF
	ENDIF
ELSE
	IF (B == 0.D0 .AND. C == 0.D0) THEN
		WRITE(*, *) 'INDETERMINATE SOLUTION'
	ELSEIF (B == 0.D0) THEN
		WRITE(*, *) 'IT HAS NO SOLUTION'
	ELSEIF (C == 0.D0) THEN
		X1 = 0.D0
		WRITE(*, *) 'UNIQUE SOLUTION X=', X1
	ELSE
		X1 = -C / B
		WRITE(*, *) 'UNIQUE SOLUTION X=', X1
	ENDIF
ENDIF

END

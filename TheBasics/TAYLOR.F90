!***************************************************
!Program to evaluate the Taylor series up to power 5
!***************************************************

	  REAL X, SIN, PI
1	  WRITE(*, *) ' '  !PRINTS A BLANK LINE AND SET A REFERENCE
	  WRITE(*, *) 'ENTER THE VALUE OF X (DEGREES)'
	  WRITE(*, *) 'IN A ZERO ENVIROMENT'
	  READ(*, *) X
	  WRITE(*, *) ' '
	  PI = 3.14159265358979
	  X = X * (PI / 180.0)  !FROM DEGREES TO RADIANS
	  SIN = X - X**3 / 6.0 + X**5 / 120.0
	  WRITE(*, *) 'THE RESULT OF THE SERIES IS:', SIN
	  WRITE(*, *) '-----------------------------------------'
	  GOTO 1  !GO TO THE 1 REFERENCE
	  END
!*********************************************
!Program to evaluate a second grade polynomial
!*********************************************

REAL A, B, C, X, P

WRITE(*, *) 'ENTER THE VALUE FOR A PARAMETER:'
READ(*, *) A

WRITE(*, *) 'ENTER THE VALUE FOR B PARAMETER:'
READ(*, *) B

WRITE(*, *) 'ENTER THE VALUE FOR C PARAMETER:'
READ(*, *) C

WRITE(*, *) 'ENTER THE VALUE FOR X:'
READ(*, *) X

P = A * X**2 + B * X + C
WRITE(*, *) 'THE VALUE OF THE POLYNOMIAL A X^2 + B X + C IS:', P

END

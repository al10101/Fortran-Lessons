!***********************************************
!Program to sum and multiply two complex numbers
!***********************************************
!DEFINITION OF DATA TYPE AND RESULTS
COMPLEX A, B, C, D

!READ DATA
WRITE(*, *) 'ENTER THE FIRST NUMBER AS'
WRITE(*, *) '(REAL PART, IMAGINARY PART)'
READ(*, *) A
WRITE(*, *) 'ENTER THE SECOND NUMBER'
WRITE(*, *) 'USING THE SAME NOTATION'
READ(*, *) B

!COMPUTATIONS
C = A + B
D = A * B

!WRITE RESULTS
WRITE(*, *) 'THE RESULT OF THE SUM IS', C
WRITE(*, *) 'THE RESULT OF THE PRODUCT IS', D

!END OF THE PROGRAM
END
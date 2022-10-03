# How to compile fortran codes?


This is a set of instructions to compile a particular .f90 fortran file.

Imagine that we have a code to compute the area of a circle:

CIRCLE.F90
!***************************************
!Program to compute the area of a circle
!***************************************
REAL\*8 R, A
READ(\*,\*)R
A = 3.141592 * R * R
WRITE(\*,\*)A
END

The simplest way to compile it is to type on terminal:

gfortran CIRCLE.F90

The real compiled program will be a.out, and you can use it typing on terminal:

./a.out

If you want to change the name of the output file, type this:

gfortran -o circle CIRCLE.F90

on the output file will be called "circle", for example.

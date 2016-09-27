# Stop on first error
set -e

# Test C compiler
echo "Testing h5cc"
h5cc -show
h5cc h5_cmprss.c -o h5_cmprss
./h5_cmprss

# Test C++ compiler
echo "Testing h5c++"
h5c++ -show
h5c++ h5tutr_cmprss.cpp -o h5tutr_cmprss
./h5tutr_cmprss

# Test Fortran compiler
echo "Testing h5fc"
h5fc -show
h5fc h5_cmprss.f90 -o h5_cmprss
./h5_cmprss
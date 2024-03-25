pragma circom 2.1.4;

// Input : a , length of 2 .
// Output : c .
// In this exercise , you have to check that a[0] is NOT equal to a[1], if not equal, output 1, else output 0.
// You are free to use any operator you may like . 
// HINT:NEGATION

template NotEqual() {
    signal input a[2];
    signal ne_check; // intermediate signal
    signal output c;

    ne_check <-- a[0] - a[1] != 0 ? 1 : 0;
    c <== ne_check;
}

component main = NotEqual();

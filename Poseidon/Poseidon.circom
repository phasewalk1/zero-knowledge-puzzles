pragma circom 2.1.4;

include "../node_modules/circomlib/circuits/poseidon.circom";


// Go through the circomlib library and import the poseidon hashing template using node_modules
// Input 4 variables,namely,'a','b','c','d' , and output variable 'out' .
// Now , hash all the 4 inputs using poseidon and output it . 
template poseidon() {
    signal input a;
    signal input b;
    signal input c;
    signal input d;
    signal output out;

    component poseidonHasher = Poseidon(4);
    poseidonHasher.inputs[0] <== a;
    poseidonHasher.inputs[1] <== b;
    poseidonHasher.inputs[2] <== c;
    poseidonHasher.inputs[3] <== d;

    out <== poseidonHasher.out;
}

component main = poseidon();

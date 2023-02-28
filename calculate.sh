#!/bin/bash

echo 'Enter integer'
read n

toBinary(){
    local n bits sign=''
    (($1<0)) && sign=-
    for (( n=$sign$1 ; n>0 ; n >>= 1 )); do bits=$((n&1))$bits; done
    printf "%s\n" "$sign${bits-0}"
}

toBinary $n


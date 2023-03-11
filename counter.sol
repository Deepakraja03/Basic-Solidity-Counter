pragma solidity ^0.8.9;

//SPDX-License-Identifier: UNLICENSED

contract counter{
    int count;

    event Incremented(int value);
    event Decremented(int value);

    constructor(){
        count = 1;
    }

    function getValue() view public returns(int){
        return count;
    }

    function increment() public{
        count++;
        emit Incremented(count);
    }
    function decrement() public{
        count--;
        emit Decremented(count);
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
contract Ex1 {
    bool public b;
    constructor() {
        b = true;
    }
    function get_b() public view returns (bool){
        return b;
    }
}
contract Ex2{
    uint public x;
    function addTOX2(uint y) public {
        x = x + y;
    }
}  
contract Ex3{ 
    uint public x;
    modifier conditionIncreaseX(uint paramater) {
        require (paramater > 0,"x cannot be reduced");
        _;
        x = x + paramater;
    }
    function increaseX(uint paramater) public conditionIncreaseX(paramater){
        //Than ham trong
    }
}
contract Ex4 {
    int public value1;
    bool public value2;
    event Values(int value1, bool value2);
    function returnTwo() public{
        value1 = -2;
        value2 = true;
        emit Values(value1, value2);
    }
}
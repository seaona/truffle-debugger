// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract Base {
    
    uint x;
    
    constructor() {
        x = 10;
    }
    
    function setX(uint _x) public returns(bool) {
        x = _x;
        return true;
    }
    
    function getX() public view returns(uint) {
        return x;
    }
}

contract Caller {
    function getBaseX(address baseAddress) public view returns(uint) {
        Base baseContract = Base(baseAddress);
        return baseContract.getX();
    }
}
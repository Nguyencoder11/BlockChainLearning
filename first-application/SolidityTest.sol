// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Strings.sol";

contract SolidityTest {
    constructor() {
        
    }

    function add() public pure returns(uint) {
        uint a = 14;
        uint b = 2;
        uint result = a + b;
        return result;
    }

    function subs() public pure returns(uint) {
        uint a = 14;
        uint b = 2;
        uint result = a - b;
        return result;
    }

    function multi() public pure returns(uint) {
        uint a = 14;
        uint b = 2;
        uint result = a * b;
        return result;
    }

    function div() public pure returns(uint) {
        uint a = 14;
        uint b = 3;
        require(b != 0, "Divide by Zero");
        uint result = (a * 1000) / b;
        return result;
    }

    function getDivResult() public pure returns (string memory){
        uint result = div();
        uint integerPart = result / 1000;
        uint fractionalPart = result % 1000;

        string memory intPartStr = Strings.toString(integerPart);
        string memory fracPartStr = Strings.toString(fractionalPart);

        return string(abi.encodePacked(intPartStr, ".", fracPartStr));
    }
}
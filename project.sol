// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Test {
    uint256 public value;
    
    function setValue(uint256 _value) external {
        require(_value > 0, "Value cannot be default or negative as its unsigned");
        value = _value;
    }
    
    function getValue() external view returns (uint256) {
        return value;
    }
    
    function add(uint256 a, uint256 b) external pure returns (uint256) {
        uint256 c = a + b;
        assert(c >= a); // assert statement
        
        return c;
    }
    
    function revert() external pure {
        revert("Function will always revert");
    }
}

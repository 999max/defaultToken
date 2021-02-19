pragma solidity 0.6.1;

import '../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol';


contract MyDefaultToken is ERC20 {
    constructor() public ERC20("MyDefaultToken", "MDT") {
    }

    // custom burn without amount 1 ;) 
    function burn(uint256 amount) public returns (bool) {
        require(amount >= 1);
        amount -= 1;
        _burn(msg.sender, amount);
        return true;
    }
}
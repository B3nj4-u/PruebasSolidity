// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Owner: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// Receptor: 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
// Operador: 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB

import "@openzeppelin/contracts@4.5.0/token/ERC1155/ERC1155.sol";

contract erc1155 is ERC1155 {

    // Variables
    uint256 public constant CHARIZARD = 0;
    uint public constant VENUSAUR = 1;
    uint public constant BLASTOISE = 2;
    uint public constant PIKACHU = 3;
    uint public constant DITTO = 4;

    // Constructor del Smart Contract
    constructor() ERC1155("https://game.example/api/item/{id}.json"){
        _mint(msg.sender, CHARIZARD, 10**5, "");
        _mint(msg.sender, VENUSAUR, 10**4, "");
        _mint(msg.sender, BLASTOISE, 10**3, "");
        _mint(msg.sender, PIKACHU, 10**2, "");
        _mint(msg.sender, DITTO, 10**1, "");
    }

}

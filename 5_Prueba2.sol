// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./4_Prueba.sol";

contract StorageFactory is Prueba{
    Prueba[] public simpleStorageArray;
    function createSimpleStorageContract() public{
        Prueba simpleStorage = new Prueba();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        Prueba(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        return Prueba(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
    }
}

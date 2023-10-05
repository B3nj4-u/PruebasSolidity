// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Prueba{
    uint256 Id;

    struct Candidato{
        string nombre;
        uint256 Id;
    }

    mapping(string => uint256) public nombreAId;

    Candidato [] candida;

    function store(uint256 _Id) public {
        Id = _Id;
    }

    function retrieve() public view returns(uint256){
        return Id;
    }

    function agregarCandidato(string memory _nombre, uint256 _Id) public {
        candida.push(Candidato(_nombre, _Id));
        nombreAId[_nombre] = _Id;
    }
}

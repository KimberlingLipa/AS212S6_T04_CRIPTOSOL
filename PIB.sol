// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract TransferenciaSepoliaETH {
    address public propietario;
    mapping(address => uint256) public saldos;
    
    event Transferencia(address indexed desde, address indexed hacia, uint256 cantidad);
    
    constructor() {
        propietario = msg.sender;
    }
    
    function transferir(address _hacia) public {
        uint256 _cantidad = 1; // 1 SepoliaETH
        require(saldos[msg.sender] >= _cantidad, "Saldo insuficiente");
        
        saldos[msg.sender] -= _cantidad;
        saldos[_hacia] += _cantidad;
        
        emit Transferencia(msg.sender, _hacia, _cantidad);
    }
    
    function obtenerSaldo(address _cuenta) public view returns (uint256) {
        return saldos[_cuenta];
    }
    
    receive() external payable {
        saldos[msg.sender] += msg.value;
    }
    
}

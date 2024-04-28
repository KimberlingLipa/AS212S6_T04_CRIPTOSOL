# Solidity API

## TransferenciaSepoliaETH

### Contract
TransferenciaSepoliaETH : contracts/PIB.sol

 --- 
### Functions:
### constructor

```solidity
constructor() public
```

### transferir

```solidity
function transferir(address _hacia) public
```

### obtenerSaldo

```solidity
function obtenerSaldo(address _cuenta) public view returns (uint256)
```

### receive

```solidity
receive() external payable
```

 --- 
### Events:
### Transferencia

```solidity
event Transferencia(address desde, address hacia, uint256 cantidad)
```


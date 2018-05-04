pragma solidity ^0.4.20;


contract PagarRecibos{
    function PagarRecibos() payable public { }

    function enviarDinero() payable public  { }

    function retirar(uint cantidad) public { 
        msg.sender.transfer(cantidad);
    }

    function verFondos() public view returns (uint)  {
        return this.balance;
    }
    
    function verFondosSender() view public returns(uint){
        return msg.sender.balance;
    }

}
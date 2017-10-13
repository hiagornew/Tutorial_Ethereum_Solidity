
pragma solidity ^0.4.15;

contract HelloWord {
    address public owner;
   mapping(address => uint) balances;
    //contructor
    // runs onde upon contract creation
     function  HelloWord() {
      owner = msg.sender;
      balances[owner] = 1000;
        
    }

    function transfer(address _to, uint _value) public returns (bool success) {
        if (balances[msg.sender] < _value) {            return false;
        }

        balances[msg.sender] -= _value;
        balances[_to] += _value;
        return true;
    }

     function getBalance(address _user) public constant returns (uint _balance) {
        return balances[_user];
    }
    

}
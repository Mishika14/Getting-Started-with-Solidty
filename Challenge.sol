// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract MyToken {

    // public variables here
    string public token_name="Fruit";
    string public  token_abre="FRT";
    uint public total_supply=0;




    // mapping variable here
    mapping (address => uint) public balances;

    // mint function
      function mints(uint val,address adr) public {
        total_supply+=val;
        balances[adr]+=val;


      }
    // burn function
    function burn(uint val,address adr) public {
        if(balances[adr]>=val){
        total_supply-=val;
        balances[adr]-=val;}
    }
    

}

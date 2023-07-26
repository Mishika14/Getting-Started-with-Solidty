# Mint a Token (METACRAFTERS CHALLENGE-2)
In this Challenge The requirements of the program were to create a contract that should have the following functions and variables.

-> Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply):-
For this,the smart contract is created and named My Token and in this contract i have created three variables that are as follows:-
 ```javascript
pragma solidity 0.8.18;


    // public variables here
    string public token_name="Fruit";
    string public  token_abre="FRT";
    uint public total_supply=0;

```
2. Your contract will have a mapping of addresses to balances (address => uint)
   
   Mapping in Solidity acts like a hash table or dictionary in any other language. These are used to store the data in the form of key-value pairs, a key can be any of the built-in data types but reference types are not allowed while the value can be of any type. Mappings are mostly used to associate the unique Ethereum address with the associated value type.
   for this contract we have created  mapping variable  in which data type  address is mapped to the data type uint has been done and we have named it balances.
   ```javascript
   pragma solidity 0.8.18
   // mapping variable here
    mapping (address => uint) public balances;


   ```

  3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount.
       This looks like the following code..
       ```javascript
       pragma solidity 0.8.18;
       function mints(uint val,address adr) public {
        total_supply+=val;
        balances[adr]+=val; }
       ```
     
  4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.Implementation is as follows:-
     
     ```javascript
     pragma solidity 0.8.18;
     function burn(uint val,address adr) public {
        if(balances[adr]>=val){
        total_supply-=val;
        balances[adr]-=val;}
    }
    ```
    
  5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned. This is implemented as :-
     ```javascipt
     pragma solidity 0.8.18;
      if(balances[adr]>=val){
        total_supply-=val;
        balances[adr]-=val;}
     ```

# MINT AND BURN TOKENS
This smart contract contains a Token which contains the function to mint and burn the token. To achieve this we have done following steps:-
1) Creating the variables for the token for example:-
   
   a) Token name-"FRUIT".
   
   b)Token abbreviation-"FRT".
   
   c)Token balance:- Initialised to 0 .
   
3) After we have created the variable we have mapped the data type  address to  data type unit for the balances purpose.
4) In Mint function we have taken parameters such as  value to be added to the balance and at what particular address. The function increases the total supply by the given value and adds the same value to the balance of the specified address.
5) Burn function also takes two parameters same as above of the mint function and works opposite as mint function.This function decreases the total supply by the given value and reduces  the same value to the balance  of the specified address only if the condition is met that the balance of the sender is greater than or equal to the amount that is supposed to be burned.




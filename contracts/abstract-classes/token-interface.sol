pragma solidity ^ 0.4.17;
//Todo : Add token owner transfer ? 
//Todo add allow whitelist from ERC20 standard
interface Token {

    /*
     * @dev get balance of a tokens address
     * @params an address representing target wallet
     * @return A uint256 representing an address balance
     */
    function balanceOf(address addr) public view returns(uint256);

    /*
     * @dev get total amount of tokens created
     * @return A uint256 representing the number oif tokens created.
     */
    function totalSupply() public view returns(uint256);

    /*
     * @dev transfer function that is called when user or a contract wants to transfer tokens.
     * @params to is the address tokens are being transferred to
     * @params amount is the amount of tokens being transfered
     * @params data is of type bytes that represents the message being sent
     * @return A uint8 representing token's decimals
     */
    function transfer(address receiver, uint256 amount, bytes data) public returns(bool);

    /*
     * @dev transfer function that is called when user or a contract wants to transfer tokens.
     * @dev it is identical to ERC20 Standard's transfer function
     * @params to is the address tokens are being transferred to
     * @params amount is the amount of tokens being transfered
     * @return A uint8 representing token's decimals
     */
    function transfer(address receiver, uint256 amount) public returns(bool);

    /*
     * @dev this is the function that is called when tokens are being burnt
     * @params amount is of type uint 256 representingnumber of tokens being burnt
     * @return a boolean alue indication success or failure of the operation
     */
    function burn(uint256 amount) public returns(bool);
    /*
     * @dev get the tokens creator address
     * @return token creator's (owner) address 
     */
    function getOwner() public returns(address);

}
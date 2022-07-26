//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract BasicChat{

    mapping(string => Message) private users;
    Message [] private messages; 


    struct Message{
        address _sender;
        string _content;
    }

    
    function getMessages() public view returns (Message[] memory) {
        return (messages);
    }

    function newMessage(string memory _text) public {
 
        messages.push( Message(address(msg.sender), _text)  ); 
    }


}
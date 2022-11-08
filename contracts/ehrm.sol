//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract ehrm {
    mapping(address => string[]) private userData;
    mapping(address => address[]) private dataccess;

    function getOtherFiles(address t) public view returns (string[] memory) {
        address[] memory t1=dataccess[t];
        for(uint i=0;i<t1.length;i++){
            if(t1[i]==msg.sender){
                return userData[t];
            }
        }
        string[] memory t2;
        return t2;
    }

    function addaccess(address t) public {
        dataccess[msg.sender].push(t);
    }

    function addFile(string memory t) public {
        userData[msg.sender].push(t);
    }

    function getFiles() public view returns (string[] memory) {
        return userData[msg.sender];
    }
}

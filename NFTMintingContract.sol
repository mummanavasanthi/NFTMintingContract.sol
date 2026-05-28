// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract NFTMintingContract {

    string public name = "NFT Minting Contract";
    string public symbol = "NFTM";

    uint256 public totalSupply;

    mapping(uint256 => address) public ownerOf;
    mapping(address => uint256) public balanceOf;

    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    function mint() external {

        totalSupply++;

        uint256 tokenId = totalSupply;

        ownerOf[tokenId] = msg.sender;

        balanceOf[msg.sender]++;

        emit Transfer(address(0), msg.sender, tokenId);
    }
}
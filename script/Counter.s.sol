// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.15;

import "forge-std/Script.sol";
import "../src/Counter.sol";

error NotEnoughBalance(address owner, uint256 balance);

contract MyScript is Script {
    function run() external {
        vm.startBroadcast();

        // get balance
        address deployer = 0xd8dA6BF26964aF9D7eEd9e03E53415D37aA96045;
        uint256 balance = deployer.balance;
        console.log("balance::");
        console.log(balance);
        if(!(balance > 0))
            revert NotEnoughBalance({owner: deployer, balance: balance});

        // deploy contract
        Counter counter = new Counter();

        vm.stopBroadcast();
    }
}
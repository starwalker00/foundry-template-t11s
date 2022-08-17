// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.15;

import "forge-std/Script.sol";
import "../src/Counter.sol";

contract MyScript is Script {
    function run() external {
        vm.startBroadcast();

        Counter counter = new Counter();

        vm.stopBroadcast();
    }
}
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.15;

import "forge-std/Script.sol";
import "../src/Counter.sol";

error NotEnoughBalance(address owner, uint256 balance);

contract SetNumberParam is Script {
    function run() external {
        // get number from env
        string memory key = "UINT_VALUE";
        uint256 number = vm.envUint(key);

        vm.startBroadcast();

        // initiate contract interface
        address counterAddress = 0x5b704F6cBf37Cd582d5791f7940DA0D0C68b7F26;
        Counter counterContract = Counter(counterAddress);

        // setNumber from env
        uint256 previousNumber = counterContract.number();
        console.log("previousNumber::");
        console.log(previousNumber);
        counterContract.setNumber(number);
        uint256 currentNumber = counterContract.number();
        console.log("currentNumber::");
        console.log(currentNumber);

        vm.stopBroadcast();
    }
}

contract SetNumber is Script {
    function run() external {
        vm.startBroadcast();

        // initiate contract interface
        address counterAddress = 0x5b704F6cBf37Cd582d5791f7940DA0D0C68b7F26;
        Counter counterContract = Counter(counterAddress);

        // setNumber
        uint256 previousNumber = counterContract.number();
        console.log("previousNumber::");
        console.log(previousNumber);
        counterContract.setNumber(42);
        uint256 currentNumber = counterContract.number();
        console.log("currentNumber::");
        console.log(currentNumber);

        vm.stopBroadcast();
    }
}

contract CurrentNumber is Script {
    function run() external {
        vm.startBroadcast();

        // initiate contract interface
        address counterAddress = 0x5b704F6cBf37Cd582d5791f7940DA0D0C68b7F26;
        Counter counterContract = Counter(counterAddress);

        // increment current number
        uint256 currentNumber = counterContract.number();
        console.log("currentNumber::");
        console.log(currentNumber);

        vm.stopBroadcast();
    }
}

contract IncrementNumber is Script {
    function run() external {
        vm.startBroadcast();

        // initiate contract interface
        address counterAddress = 0x5b704F6cBf37Cd582d5791f7940DA0D0C68b7F26;
        Counter counterContract = Counter(counterAddress);

        // typical use case
        uint256 previousNumber = counterContract.number();
        console.log("previousNumber::");
        console.log(previousNumber);
        counterContract.increment();
        uint256 currentNumber = counterContract.number();
        console.log("currentNumber::");
        console.log(currentNumber);

        vm.stopBroadcast();
    }
}

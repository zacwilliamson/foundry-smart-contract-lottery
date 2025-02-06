// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;
import {Script} from "forge-std/Script.sol";
import {Raffle} from "../src/Raffle.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployRaffle is Script {
    function run() external {
        deployContract();
    }

    function deployContract() internal returns (Raffle, HelperConfig) {
        // Implementation will go here
    }
}

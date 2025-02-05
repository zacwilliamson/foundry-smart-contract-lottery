// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

/**
 * @title A sample Raffle Contract
 * @author Zac Williamson
 * @notice This contract is for creating a sample raffle
 * @dev It implements Chainlink VRFv2.5 and Chainlink Automation
 */
contract Raffle {
    /* Errors */
    error Raffle__NotEnoughEthSent();

    uint256 private immutable i_entranceFee;
    // 'payable' because one of the participants will win the raffle
    address payable[] private s_players;

    // events are a way for smart contracts to communicate with the outside world, primarily with the front-end.
    event EnteredRaffle(address indexed player);

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    // anytime we update storage, we want to emit an event
    function enterRaffle() external payable {
        if (msg.value < i_entranceFee) revert Raffle__NotEnoughEthSent();
        s_players.push(payable(msg.sender));
        emit EnteredRaffle(msg.sender);
    }

    function pickWinner() public {}

    /** Getter Function */

    function getEntranceFee() external view returns (uint256) {
        return i_entranceFee;
    }
}

// Style Guide

// Layout of the contract file:
// version
// imports
// errors
// interfaces, libraries, contract

// Inside Contract:
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private

// view & pure functions

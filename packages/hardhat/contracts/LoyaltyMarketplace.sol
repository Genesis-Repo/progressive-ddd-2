// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "./LoyaltyApp.sol";

contract LoyaltyMarketplace {
    address public owner;
    LoyaltyApp public loyaltyApp;

    constructor(address loyaltyAppAddress) {
        owner = msg.sender;
        loyaltyApp = LoyaltyApp(loyaltyAppAddress);
    }

    function buyWithLoyaltyPoints(uint256[] memory amounts) external {
        require(amounts.length > 0, "Amounts array can't be empty");

        for (uint256 i = 0; i < amounts.length; i++) {
            uint256 points = amounts[i];
            loyaltyApp.redeemLoyaltyPoints(points);
            // Add logic for item purchase with loyalty points
        }
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract CrowdFunding {
    address public immutable beneficiary; // 受益人
    uint256 public immutable fundingGoal; // 筹资目标数量
    uint256 public fundingAmount; // 当前的金额
    mapping(address => uint256) private funders;
    mapping(address => bool) private fundersInserted;
    address[] public fundersKey;
    bool public AVAILABLED = true;

    constructor(address _beneficiary, uint256 _goal) {
        beneficiary = _beneficiary;
        fundingGoal = _goal;
    }


    function contribute() external payable  {
        require(AVAILABLED, "is closed");
        uint256 potentialFundingAmount = fundingAmount + msg.value;
        uint256 refundAmount = 0;
        if (potentialFundingAmount > fundingGoal) {
            refundAmount = potentialFundingAmount - fundingGoal;
            funders[msg.sender] += (msg.value - refundAmount);
        } else {
            funders[msg.sender] += msg.value;
            fundingAmount += msg.value;
        }

        if(!fundersInserted[msg.sender]) {
            fundersInserted[msg.sender] = true;
            fundersKey.push(msg.sender);
        }

        if (refundAmount > 0) {
            payable(msg.sender).transfer(refundAmount);
        }
    }

    function close() external returns(bool) {
        if (fundingAmount < fundingGoal) {
            return false;
        }
        uint256 amount = fundingAmount;
        fundingAmount = 0;
        AVAILABLED = false;
        payable(beneficiary).transfer(amount);
        return true;
    }

    function fundersLenght() public view returns (uint256) {
        return fundersKey.length;
    }
}

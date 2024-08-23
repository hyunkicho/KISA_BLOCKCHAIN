// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.0 <0.9.0;

// Funder라는 구조체에는 2개의 타입을 내부적으로 정의하고 있습니다.
struct Funder {
    address addr;
    uint amount;
}

contract CrowdFunding {
		//구조체의 경우에는 컨트렉트 안에도 정의할 수 있습니다. 또한 내부적으로 배열이나 mapping을 선언할 수도 있습니다.
    struct Campaign {
        address payable beneficiary;
        uint fundingGoal;
        uint numFunders;
        uint amount;
        mapping (uint => Funder) funders;
    }

    uint numCampaigns;
    mapping (uint => Campaign) campaigns;

    function newCampaign(address payable beneficiary, uint goal) public returns (uint campaignID) {
        campaignID = numCampaigns++; // campaignID는 mapping에서 Index 역할을 합니다. 
        Campaign storage c = campaigns[campaignID]; // 입력된 인덱스에 Campagin 타입의 구조체를 저장하게 됩니다.
        c.beneficiary = beneficiary; // 이와 같이 구조체에 들어가는 요소들을 지정하여 넣어 줄 수 있습니다.
        c.fundingGoal = goal;
    }

    function contribute(uint campaignID) public payable {
        Campaign storage c = campaigns[campaignID]; //
        c.funders[c.numFunders++] = Funder({addr: msg.sender, amount: msg.value});
        c.amount += msg.value;
    }

    function checkGoalReached(uint campaignID) public returns (bool reached) {
        Campaign storage c = campaigns[campaignID];
        if (c.amount < c.fundingGoal)
            return false;
        uint amount = c.amount;
        c.amount = 0;
        c.beneficiary.transfer(amount);
        return true;
    }
}
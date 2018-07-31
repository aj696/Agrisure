pragma solidity ^0.4.19;

import "./AgriInsuranceDatabaseModel.sol";


contract AgriPolicyContractInterface  {

    //function receiveFunds(address _to) payable;

    //function sendFunds(address _recipient, address _from, uint _amount) returns (bool _success);

    function createPolicy(address _customer, uint _premium, bytes32 _customerId, bytes32 _riskId) returns (uint _policyId);

    function getPolicyData(uint _policyId) returns (address _customer, uint _premium);

    //function payout(address _to,uint amount ) private returns (bool);
}

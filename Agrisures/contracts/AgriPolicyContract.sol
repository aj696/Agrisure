pragma solidity ^0.4.9;

import "./AgriInsuranceDatabaseModel.sol";
/// @title A contract for basic math operations
/// @author Abhilash
/// @notice Agri insurance contract for customer
contract AgriPolicyContract  {
      //New Policy created event
      event NewPolicy(uint policyId);

        struct Policy {

       //uint policyId;
          //  the customer
        address customer;
        //  premium
        uint premium;

        string policyType;
    }

    Policy[] policies ;
   //List of Customers
    mapping (uint => address) public policyToCustomer;
    //List of customer policies
    mapping (address => uint)public customerPolicycount;

    //Customer details
    struct Customer  {
        string name;
        string location;
        bool isKYVDone;
        string AadharIDNumber;
    }

    //Create a new Policy for customer
    function createPolicy(address _customer, uint _premium) returns (uint _policyId) {
       uint id  = policies.push(Policy(_customer,_premium,"Rain Deficit"))-1;
       policyToCustomer[id] = msg.sender;
        customerPolicycount[msg.sender]++;
        NewPolicy(id);

    }
    //Get Policy Details of customers
    function getPolicyData(uint _policyId) view returns (address _customer) {
        return policyToCustomer[_policyId];
    }
}

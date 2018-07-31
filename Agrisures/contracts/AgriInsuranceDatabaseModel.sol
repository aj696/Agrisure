pragma solidity ^0.4.19;

contract AgriInsuranceDatabaseModel {

    enum policyState
    { Applied, Accepted,  PaidOut, Expired, Declined }

  
    //Individual policy details of the customer
    struct Policy {

        uint policyId;
          //  the customer
        Customer customer;
        //  premium
        uint premium;
          // calculated Payout
        uint calculatedPayout;
        // actual Payout
        uint actualPayout;

        policyState state;

    }



    //Customer details
    struct Customer {
        string name;
        string location;
        bool isKYVDone;
        string AadharIDNumber;
    }
}

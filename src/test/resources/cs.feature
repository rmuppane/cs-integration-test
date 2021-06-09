Feature: Test case 'cs'

    Scenario: 1
    		Given a request to check for 'LoanApprovalDMN.loanapprovalprocess' when the customer financial status is 
	      |CreditScore   			|630   				|
	      |DTI								|0.34					|
	      And customer Loan might be 'Approved'
	  Scenario: 2
        Given a request to check for 'LoanApprovalDMN.loanapprovalprocess' when the customer financial status is 
	      |CreditScore   			|740   				|
	      |DTI								|0.56					|
	      And customer Loan might be 'Declined'
	  Scenario: 3
        Given a request to check for 'LoanApprovalDMN.loanapprovalprocess' when the customer financial status is 
	      |CreditScore   			|500  				|
	      |DTI								|1.56					|
	      And customer Loan might be 'Declined'

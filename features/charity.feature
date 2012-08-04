Feature:  Charities need to be able to setup accounts and payments

Scenario: A charity receives an invitation
	Given that a champion has created a fundraiser for my charity
	And they have sent me an invite to join the site
	Then I should get a link to sign up
	And the fundraiser id should be in the email link
	And that id should be tied to my charity after I sign up
	
Scenario: A charity signs themselves up
	Given that I am on the home page
	And I click on the "Sign up your charity" link
	Then I should be taken to a sign up page
	And I should enter fields for Charity name, address, phone, contact email, username, password, twitter handle, facebook page, and website
	When I press the submit button then I should be taken to a confirmation page
	
Scenario: A charity signs up for a payment type
	Given that I am a charity already signed up
	When I sign in then I should be able to setup my payment options
	And I should see an option to integrate Donor Town Square with my account
	And I can enter my Donor Town Square username and password in order to link the accounts
	And there is a link to Donor Town Square's setup page if I don't have an account yet
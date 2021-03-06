Feature: As a champion I want to be able to create an account for myself, and view my fundraisers.

Scenario: Create a champion
	Given I am on the new champions page
	When I enter my user info
	And I optionally enter my twitter user name
	And I create my champion
	Then I should see my info on the show page
	And I should see "Create fundraiser"

Scenario: Create a fundraiser
	Given I am a champion on the show champions page
	When I click create fundraiser
	And I fill out the fundraiser fields
	And I create a fundraiser
	Then I should see the fundraiser info on the champion's page
	And I should see a form to invite the charity via email to setup a payment account with us

Scenario: Edit fundraisers
	Given I have created a champion and that champion has a fundraiser
	When I click on the edit link for the fundraiser
	And I change the goal to "50"
	And I change the title to "2nd Title"
	And I click update fundraiser
	Then I should see that the fundraiser has been successfully updated


Scenario: Create Champion with missing fields
	Given I am on the new champions page again
	When I click create Champion without filling out fields
	Then I should recieve an error message
	When I successfully fill out the champion form
	And I click create champion again
	Then I should see the champion on the show page

Scenario: Create Fundraiser with missing fields
	Given I am a champion on the show champion page
	When I click create fundraiser
	And I create a fundraiser
	Then I should get an error message
	When I correctly fill out the form
	And I create a fundraiser
	Then I should see the fundraiser was successfully created
	
Scenario: Champions page sharing
	Given I am a champion and I have multiple fundraisers setup
	When I go to the url /c/my_user_name
	Then I should see a list of just my fundraisers
	And there should be a donation link next to each one
	And there should be a "Share this on twitter link" next to each one
	And the Twitter link should populate a default tweet with my twitter name on it.

Feature: As a champion I want to be able to create an account for myself, and view my fundraisers.

Scenario: Create a champion
	Given I am on the new champions page
	When I enter my user info
	And I create my champion
	Then I should see my info on the show page
	And I should see "Create fundraiser"

Scenario: Create a fundraiser
	Given I am a champion on the show champions page
	When I click create fundraiser
	And I fill out the fundraiser fields
	And I create a fundraiser
	Then I should see the fundraiser info on the champion's page

@wip
Scenario: View fundraisers
	Given I have created a champion and that champion has a fundraiser
	When I click show on the champions page
	

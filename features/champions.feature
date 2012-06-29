Feature: As a champion I want to be able to create an account for myself

Scenario: Create a champion
	Given I am on the new champions page
	When I enter my user info
	And I create my champion
	Then I should see my info on the show page
	And I should see "Create a fundraiser"
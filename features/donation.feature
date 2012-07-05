Feature: As a donor, I want to contribute towards the goal of a champion's fundraiser.

@wip
Scenario:  Place a donation and update the
	Given a champion exists
	And that champion has setup a fundraiser with a goal of "35"
	When I go to the show view for that fundraiser
	Then I see a goal of "35" with progress of "0"
	When I donate to this fundraiser
	Then I see a form to fill out
	And I fill out the donation form for an amount of "25"
	When I click donate
	Then I am taken to a success page
	And the progress bar for the fundraiser shows that "10" remains towards the goal

Feature: Homepage
	Shows the homepage of a registered user

	Scenario: Logged out
		Given I'm on the User homepage
		When I click logout
		Then I should go back to Login page

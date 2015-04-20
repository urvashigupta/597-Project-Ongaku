Feature: Homepage
	Shows the homepage of a registered user

	Scenario: Reset search field
		Given I'm on the User homepage
		When I click clear
		Then I should see the a cleared search field

	Scenario: Logged out
		Given I'm on the User homepage
		When I click logout
		Then I should go back to Login page
Feature: Homepage
	Shows the homepage of a registered user

	Scenario: Click a song
		Given I'm on the User homepage
		When I click on a song
		Then I should go to song page

	Scenario: Success in search bar
		Given I'm on the User homepage
		When I click search
		Then I should see the results

	Scenario: Logged out
		Given I'm on the User homepage
		When I click logout
		Then I should go back to Login page

	Scenario: Pop button clicked
		Given I'm on the User homepage
		When I click pop button
		Then I should see the pop songs results

	Scenario: Hip-Hop button clicked
		Given I'm on the User homepage
		When I click Hip-Hop button
		Then I should see the Hip-Hop songs results

	Scenario: Rock button clicked
		Given I'm on the User homepage
		When I click rock button
		Then I should see the rock songs results

	Scenario: Rnb button clicked
		Given I'm on the User homepage
		When I click Rnb button
		Then I should see the Rnb songs results

	Scenario: Alternative Rock button clicked
		Given I'm on the User homepage
		When I click Alternative Rock button
		Then I should see the Alternative Rock songs results

	Scenario: Country button clicked
		Given I'm on the User homepage
		When I click Country button
		Then I should see the Country songs results

	Scenario: Classical button clicked
		Given I'm on the User homepage
		When I click Classical button
		Then I should see the Classical songs results

	Scenario: Jazz button clicked
		Given I'm on the User homepage
		When I click Jazz button
		Then I should see the Jazz songs results

	Scenario: Reggae button clicked
		Given I'm on the User homepage
		When I click Reggae button
		Then I should see the Reggae songs results

	Scenario: Blues button clicked
		Given I'm on the User homepage
		When I click Blues button
		Then I should see the Blues songs results
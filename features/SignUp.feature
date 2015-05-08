Feature: signup
	In order to sign up as a new user
	
	Scenario: Successful signup
		Given I'm on the signup page
		When I fill in the form and submit the correct signup details of the user
		Then I should see the users info
		
	Scenario: No Value entered in email field
		Given I'm on the signup page
		When I fill in the form and submit empty email details of the user
		Then Signup page should display notice message
		
	Scenario: Password not given
		Given I'm on the signup page
		When I fill in the form and submit empty password
		Then Signup page should have notice message

	Scenario: After signing up edit user
		Given I'm on the signup page
		When I click the edit button
		Then edit user page should come

	Scenario: After editing user
		Given I'm on the signup page
		When I click the update signup button
		Then edited user successfully page should come

	Scenario: List of users
		Given I'm on the signup page
		When I vist the signups page
		Then list of users page should come
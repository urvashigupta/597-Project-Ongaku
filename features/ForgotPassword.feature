Feature: Forgot Password
	If the user forgets password send him a new password
	
	Scenario: Successful Forgot Password
		Given I'm on the Forgot Password page
		When I fill in the form and submit the correct email of the user
		Then I should go back to the Login Page
		
	Scenario: No Value entered in Forgot Password
		Given I'm on the Forgot Password page
		When I fill in the form and submit empty email of the user
		Then forgot password page should have notice message
		
	Scenario: Wrong Value entered in Forgot Password
		Given I'm on the Forgot Password page
		When I fill in the form and submit wrong email of the user
		Then forgot password page should display notice message
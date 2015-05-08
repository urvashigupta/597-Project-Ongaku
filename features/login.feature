Feature: Login
	In order to login into our application
	
	Scenario: Loggedin
		Given I'm on the login page
		When I fill in the form and submit the correct login details of the user
		Then I should see the users homepage
		
	Scenario: Not Loggedin
		Given I'm on the login page
		When I fill in the form and submit the incorrect username details of the user
		Then page should display notice message
		
	Scenario: Not Loggedin password
		Given I'm on the login page
		When I fill in the form and submit the incorrect password details of the user
		Then page should have notice message

	Scenario: Blank Field
		Given I'm on the login page
		When I submit the form without an details
		Then page should have field blank notice message
		
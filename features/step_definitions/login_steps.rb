Given(/^I'm on the login page$/) do
  visit login_index_path
  # @signup = Signup.create!({
#       :first_name => "sibi",
#       :last_name => "vijayakumar",
#       :email_id => "sibivkumar@gmail.com",
#       :username => "sibivkumar",
#       :password => "sibi123",
#       :dob => 2015-04-05
#              })
end

When(/^I fill in the form and submit the correct login details of the user$/) do
	fill_in 'login_validate_username', :with => "sibiv"
	fill_in 'login_validate_password', :with => "anime"
	click_button 'login'
end

Then(/^I should see the users homepage$/) do
  assert page.has_content?('Logged in successfully')
end

When(/^I fill in the form and submit the incorrect username details of the user$/) do
	fill_in 'login_validate_username', :with => "0sibi"
	fill_in 'login_validate_password', :with => "sibi123"
	click_button 'login'
end

Then(/^page should display notice message$/) do
  assert page.has_content?('Invalid username/password')
end

When(/^I fill in the form and submit the incorrect password details of the user$/) do
	fill_in 'login_validate_username', :with => "shashank160"
	fill_in 'login_validate_password', :with => "0sibi123"
	click_button 'login'
end

Then(/^page should have notice message$/) do
   assert page.has_content?('Invalid username/password')
end

When(/^I submit the form without an details$/) do
	#fill_in 'login_validate_username', :with => "shashank160"
	#fill_in 'login_validate_password', :with => "0sibi123"
	click_button 'login'
end

Then(/^page should have field blank notice message$/) do
   assert page.has_content?('Fields cannot be blank')
end


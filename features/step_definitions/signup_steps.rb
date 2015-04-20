Given(/^I'm on the signup page$/) do
  visit(register_path)
end

When(/^I fill in the form and submit the correct signup details of the user$/) do
	fill_in 'signup_first_name', :with => "sibi"
	fill_in 'signup_last_name', :with => "vijayakumar"
	fill_in 'signup_username', :with => "sibivkumar"
	fill_in 'signup_email_id', :with => "sibivkumar@gmail.com"
	fill_in 'signup_password', :with => "sibi123"
	click_button 'Create Signup'
end

Then(/^I should see the users info$/) do
  assert page.has_content?('You were registered successfully')
end

When(/^I fill in the form and submit empty email details of the user$/) do
	fill_in 'signup_first_name', :with => "sibi"
	fill_in 'signup_last_name', :with => "vijayakumar"
	fill_in 'signup_username', :with => "sibivkumar3223"
	fill_in 'signup_email_id', :with => ""
	fill_in 'signup_password', :with => "sibi123"
	click_button 'Create Signup'
end

Then(/^Signup page should display notice message$/) do
   assert page.has_content?('Email can\'t be blank')
end

When(/^I fill in the form and submit empty password$/) do
	fill_in 'signup_first_name', :with => "sibi"
	fill_in 'signup_last_name', :with => "vijyakumar"
	fill_in 'signup_username', :with => "sidsadbivkumar"
	fill_in 'signup_email_id', :with => "assibi@gmail.com"
	fill_in 'signup_password', :with => ""
	click_button 'Create Signup'
end

Then(/^Signup page should have notice message$/) do
   assert page.has_content?('Password can\'t be blank')
end
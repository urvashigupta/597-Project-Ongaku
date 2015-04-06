Given(/^I'm on the Forgot Password page$/) do
  visit(forgot_password_path)
end

When(/^I fill in the form and submit the correct email of the user$/) do
	fill_in 'login_email', :with => "sibi@gmail.com"
	click_button 'Get Password'
end

Then(/^I should go back to the Login Page$/) do
  assert page.has_content?('Login')
end

When(/^I fill in the form and submit empty email of the user$/) do
	fill_in 'login_email', :with => ""
	click_button 'Get Password'
end

Then(/^forgot password page should have notice message$/) do
   assert page.has_content?('Your email field was empty.')
end

When(/^I fill in the form and submit wrong email of the user$/) do
	fill_in 'login_email', :with => "0sibi@gmail.com"
	click_button 'Get Password'
end

Then(/^forgot password page should display notice message$/) do
   assert page.has_content?('Your email was incorrect.')
end
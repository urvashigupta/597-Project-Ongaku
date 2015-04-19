Given(/^I'm on the Forgot Password page$/) do
  visit(forgot_password_index_path)
end

When(/^I fill in the form and submit the correct email of the user$/) do
	fill_in 'forgot_password_validate_email_id', :with => "sibivkumar@gmail.com"
	click_button 'Get Information'
end

Then(/^I should go back to the Login Page$/) do
  assert page.has_content?('Login')
end

When(/^I fill in the form and submit empty email of the user$/) do
	fill_in 'forgot_password_validate_email_id', :with => ""
	click_button 'Get Information'
end

Then(/^forgot password page should have notice message$/) do
   assert page.has_content?('Field cannot be blank')
end

When(/^I fill in the form and submit wrong email of the user$/) do
	fill_in 'forgot_password_validate_email_id', :with => "0sibi@gmail.com"
	click_button 'Get Information'
end

Then(/^forgot password page should display notice message$/) do
   assert page.has_content?('Email Address does not exist')
end
Given(/^I'm on the login page$/) do
  visit login_index_path
end

When(/^I fill in the form and submit the correct login details of the user$/) do
	fill_in 'login_validate_username', :with => "shashank1601"
	fill_in 'login_validate_password', :with => "shashank1601"
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


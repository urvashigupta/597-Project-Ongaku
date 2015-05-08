Given(/^I'm on the signup page$/) do
  visit(register_path)
end

When(/^I fill in the form and submit the correct signup details of the user$/) do
	fill_in 'signup_first_name', :with => "urvashi"
	fill_in 'signup_last_name', :with => "gupta"
	fill_in 'signup_username', :with => "urva"
	fill_in 'signup_email_id', :with => "urva.gupta@gmail.com"
	fill_in 'signup_password', :with => "urva"
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

When(/^I click the edit button$/) do
  visit 'http://localhost:3000/signups/1/edit'
end

Then(/^edit user page should come$/) do
   assert page.has_content?('Editing user')
end

When(/^I click the update signup button$/) do
  visit 'http://localhost:3000/signups/1/edit'
  fill_in 'signup_password',:with => "anime"
  click_button 'Update Signup'
end

Then(/^edited user successfully page should come$/) do
   assert page.has_content?('Information Updated successfully')
end

When(/^I vist the signups page$/) do
  visit 'http://localhost:3000/signups'
end

Then(/^list of users page should come$/) do
   assert page.has_content?('List of Users')
end


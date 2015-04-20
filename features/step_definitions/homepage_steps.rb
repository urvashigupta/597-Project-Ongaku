Given(/^I'm on the User homepage$/) do
  visit home_index_path
  fill_in 'searching', :with => "sibivkumar"
end

When(/^I click logout$/) do
  click_link 'Logout?'
end

Then(/^I should go back to Login page$/) do
  assert page.has_content?('You have been logged out')
end

When(/^I click clear$/) do
  click_button 'Clear'
end

Then(/^I should see the a cleared search field$/) do
  assert page.has_field?('searching', :with => '') 
end
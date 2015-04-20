Given(/^I'm on the User homepage$/) do
  visit home_index_path
end

When(/^I click logout$/) do
  click_link 'Logout?'
end

Then(/^I should go back to Login page$/) do
  assert page.has_content?('You have been logged out')
end
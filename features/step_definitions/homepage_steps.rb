Given(/^I'm on the User homepage$/) do
  visit home_index_path
  #fill_in 'searching', :with => "sibivkumar"
end

When(/^I click logout$/) do
  click_link 'Logout?'
end

Then(/^I should go back to Login page$/) do
  assert page.has_content?('You have been logged out')
end

When(/^I click search$/) do
  fill_in "home_search_songs_find_songs", :with => "revolver"
  click_button 'Search'
end

Then(/^I should see the results$/) do
  assert page.has_content?('Here are your songs..')
end

When(/^I click pop button$/) do
  click_button 'Pop'
  #save_and_open_page
end

Then(/^I should see the pop songs results$/) do
  assert page.has_content?('Here are your songs..')
end

When(/^I click Hip-Hop button$/) do
  click_button 'Hip-Hop'
end

Then(/^I should see the Hip-Hop songs results$/) do
  assert page.has_content?('Here are your songs..')
end

When(/^I click rock button$/) do
  click_button 'Rock'
end

Then(/^I should see the rock songs results$/) do
  assert page.has_content?('Here are your songs..')
end

#
When(/^I click Alternative Rock button$/) do
  click_button 'Alternative Rock'
end

Then(/^I should see the Alternative Rock songs results$/) do
  assert page.has_content?('Here are your songs..')
end

When(/^I click Rnb button$/) do
  click_button 'RnB'
end

Then(/^I should see the Rnb songs results$/) do
  assert page.has_content?('Here are your songs..')
end

When(/^I click Country button$/) do
  click_button 'Country'
end

Then(/^I should see the Country songs results$/) do
  assert page.has_content?('Here are your songs..')
end
#
When(/^I click Classical button$/) do
  click_button 'Classical'
end

Then(/^I should see the Classical songs results$/) do
  assert page.has_content?('Here are your songs..')
end

When(/^I click Jazz button$/) do
  click_button 'Jazz'
end

Then(/^I should see the Jazz songs results$/) do
  assert page.has_content?('Here are your songs..')
end

When(/^I click Reggae button$/) do
  click_button 'Reggae'
end

Then(/^I should see the Reggae songs results$/) do
  assert page.has_content?('Here are your songs..')
end

When(/^I click Blues button$/) do
  click_button 'Blues'
end

Then(/^I should see the Blues songs results$/) do
  assert page.has_content?('Here are your songs..')
end
#
When(/^I click on a song$/) do
  #expect(page).to have_xpath?('/table/tr').click
  #find(:xpath, "//table/tr[2]").click
  visit 'http://localhost:3000/home/index?aname=Wiz%20Khalifa&song=Ink%20My%20Whole%20Body'
end

Then(/^I should go to song page$/) do
  assert page.has_content?('Wonderful choice!')
end
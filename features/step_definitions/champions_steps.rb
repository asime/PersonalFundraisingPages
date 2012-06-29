Given /^I am on the new champions page$/ do
  visit('/champions/new')
  page.has_content?('Champion')
end

When /^I enter my user info$/ do
  fill_in('champion_username', :with => 'JohnTee')
  fill_in('champion_fname', :with => 'John')
  fill_in('champion_lname', :with => 'Test')
  fill_in('champion_city', :with => 'cville')
  fill_in('champion_state', :with => 'VA')
  fill_in('champion_email', :with => 'JT@internet.com')
  fill_in('champion_password', :with => 'passwordtest')
end

When /^I create my champion$/ do
  click_button('Create Champion')
end

Then /^I should see my info on the show page$/ do
  page.should have_content('JohnTee')
  page.should have_content('John')
  page.should have_content('Test')
  page.should have_content('cville')
  page.should have_content('VA')
  page.should have_content('JT@internet.com')
  page.should have_content('passwordtest')
end

Then /^I should see "(.*?)"$/ do |arg1|
  page.should have_content(arg1)
end

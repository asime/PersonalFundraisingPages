Given /^a champion exists$/ do
  visit('/champions/new')
  page.has_content?('Champion')
  fill_in('champion_username', :with => 'JohnTee')
  fill_in('champion_fname', :with => 'John')
  fill_in('champion_lname', :with => 'Test')
  fill_in('champion_city', :with => 'cville')
  fill_in('champion_state', :with => 'VA')
  fill_in('champion_email', :with => 'JT@internet.com')
  fill_in('champion_password', :with => 'passwordtest')
  click_button('Create Champion')
end

Given /^that champion has setup a fundraiser with a goal of "(.*?)"$/ do |arg1|
  click_link('Create fundraiser')
  fill_in('fundraiser_title', :with => 'fun title test')
  fill_in('fundraiser_description', :with => 'I am raising money for children with ailments. And this is a description of my	fundraising attempts.')
  fill_in('fundraiser_goal', :with => arg1)
  select('2013', :from => 'fundraiser_deadline_1i')
  select('July', :from => 'fundraiser_deadline_2i')
  select('4', :from => 'fundraiser_deadline_3i')
  select('04', :from => 'fundraiser_deadline_4i')
  select('20', :from => 'fundraiser_deadline_5i')
  click_button('Create Fundraiser')
end

When /^I go to the show view for that fundraiser$/ do
  #user should already be there after the last step
end

Then /^I see a goal of "(.*?)" with progress of "(.*?)"$/ do |arg1, arg2|
  page.should have_content('Goal: ' + arg1)
  page.should have_content('Progress: ' + arg2)
end

When /^I donate to this fundraiser$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I see a form to fill out$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I fill out the donation form for an amount of "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

When /^I click donate$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I am taken to a success page$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the progress bar for the fundraiser shows that "(.*?)" remains towards the goal$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end


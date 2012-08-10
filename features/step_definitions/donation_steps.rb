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
  fill_in('fundraiser_charity', :with => 'nice people')
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
  click_button('Donate')
end

Then /^I see a form to fill out$/ do
  page.should have_content('Username')
end

Then /^I fill out the donation form for an amount of "(.*?)"$/ do |arg1|
  fill_in('donor_username', :with => '1_username')
  fill_in('donor_password', :with => 'secretpassword')
  fill_in('donor_fname', :with => 'bob')
  fill_in('donor_lname', :with => 'jones')
  fill_in('donor_email', :with => 'email@wesite.com')
  fill_in('donor_street1', :with => 'main street')
  fill_in('donor_street2', :with => 'secondary street')
  fill_in('donor_city', :with => 'cville')
  fill_in('donor_state', :with => 'VA')
  fill_in('donor_postal_code', :with => '22911')
  check('donor_display_name')
  fill_in('donor_donations_attributes_0_amount', :with => arg1)
  fill_in('donor_donations_attributes_0_comments', :with => 'Im so happy to be donating to this cause. Its awesome!')
end

When /^I click donate$/ do
  click_button('Complete Donation')
end

Then /^I am taken to a success page$/ do
  page.should have_content('Thank you for your donation!')
end

Then /^the progress bar for the fundraiser shows that "(.*?)" remains towards the goal$/ do |arg1|
  page.should have_content(arg1)
end


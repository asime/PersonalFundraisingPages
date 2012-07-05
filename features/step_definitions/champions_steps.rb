#create a new champion test
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

Given /^I am a champion on the show champions page$/ do
	step "I am on the new champions page"
	step "I enter my user info"
	step "I create my champion"
end

When /^I click create fundraiser$/ do
	click_link('Create fundraiser')
end


When /^I fill out the fundraiser fields$/ do
	fill_in('fundraiser_title', :with => 'fun title test')
	fill_in('fundraiser_description', :with => 'I am raising money for children with ailments. And this is a description of my	fundraising attempts.')
	fill_in('fundraiser_goal', :with => '50')
	select('2013', :from => 'fundraiser_deadline_1i')
	select('July', :from => 'fundraiser_deadline_2i')
	select('4', :from => 'fundraiser_deadline_3i')
	select('04', :from => 'fundraiser_deadline_4i')
	select('20', :from => 'fundraiser_deadline_5i')
end

When /^I create a fundraiser$/ do
	click_button('Create Fundraiser')
end

Then /^I should see the fundraiser info on the champion's page$/ do
  page.should have_content('fun title test')
  page.should have_content('50')
  page.should have_content('I am raising')
end


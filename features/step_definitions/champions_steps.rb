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

When /^I optionally enter my twitter user name$/ do
  fill_in('champion_twitter_handle', :with => 'tweeter')
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
  page.should have_content('tweeter')
end

Then /^I should see "(.*?)"$/ do |arg1|
  page.should have_content(arg1)
end

#create a fundraiser
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
	fill_in('fundraiser_charity', :with => 'nice people')
	fill_in('fundraiser_description', :with => 'I am raising money for children with ailments. And this is a description of my	fundraising attempts.')
	fill_in('fundraiser_goal', :with => '500')
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
  page.should have_content('500')
  page.should have_content('I am raising')
  page.should have_content('nice people')
end

Then /^I should see a form to invite the charity via email to setup a payment account with us$/ do
  pending # express the regexp above with the code you wish you had
end


#scenario: update a fundraiser
Given /^I have created a champion and that champion has a fundraiser$/ do
	step "I am on the new champions page"
	step "I enter my user info"
	step "I create my champion"
	step "I click create fundraiser"
	step "I fill out the fundraiser fields"
	step "I create a fundraiser"
end

When /^I click on the edit link for the fundraiser$/ do
  click_link('Edit')
  page.has_content?('Editing fundraiser')
end

When /^I change the goal to "(.*?)"$/ do |arg1|
  fill_in 'fundraiser_goal', :with => arg1
end

When /^I change the title to "(.*?)"$/ do |arg1|
  fill_in 'fundraiser_title', :with => arg1
end

When /^I click update fundraiser$/ do
  click_button('Update Fundraiser')
end

Then /^I should see that the fundraiser has been successfully updated$/ do
  page.should have_content('Fundraiser was successfully updated.')
end

#creating a champion with blank fields
Given /^I am on the new champions page again$/ do
  visit('/champions/new')
  page.has_content?('Champion')
end

When /^I click create Champion without filling out fields$/ do
  click_button('Create Champion')
end


Then /^I should recieve an error message$/ do
  page.should have_content("City can't be blank")
  page.should have_content("Email can't be blank")
  page.should have_content("Fname can't be blank")
  page.should have_content("Lname can't be blank")
  page.should have_content("Password can't be blank")
  page.should have_content("State can't be blank")
  page.should have_content("Username can't be blank")
end


When /^I successfully fill out the champion form$/ do
  fill_in('champion_username', :with => 'JohnTest 2')
  fill_in('champion_fname', :with => 'John')
  fill_in('champion_lname', :with => 'isTest')
  fill_in('champion_city', :with => 'cville')
  fill_in('champion_state', :with => 'VA')
  fill_in('champion_email', :with => 'JTest@internet.com')
  fill_in('champion_password', :with => 'passwordtest')
end

When /^I click create champion again$/ do
  click_button('Create Champion')
end


Then /^I should see the champion on the show page$/ do
  page.should have_content('JohnTest 2')
  page.should have_content('John')
  page.should have_content('isTest')
  page.should have_content('cville')
  page.should have_content('VA')
  page.should have_content('JTest@internet.com')
  page.should have_content('passwordtest')
end

#creating a fundraiser with missing fields
Given /^I am a champion on the show champion page$/ do
  step "I am on the new champions page again"
  step "I successfully fill out the champion form"
  step "I click create champion again"
end

Then /^I should get an error message$/ do
  page.should have_content("4 errors prohibited this fundraiser from being saved:")
end

When /^I correctly fill out the form$/ do
    fill_in('fundraiser_title', :with => 'a test run')
	fill_in('fundraiser_charity', :with => 'ok people')
	fill_in('fundraiser_description', :with => 'I am testing a program, for charity!')
	fill_in('fundraiser_goal', :with => '50')
	select('2011', :from => 'fundraiser_deadline_1i')
	select('August', :from => 'fundraiser_deadline_2i')
	select('15', :from => 'fundraiser_deadline_3i')
	select('15', :from => 'fundraiser_deadline_4i')
	select('20', :from => 'fundraiser_deadline_5i')
end

Then /^I should see the fundraiser was successfully created$/ do
  page.should have_content('a test run')
  page.should have_content('50')
  page.should have_content('I am testing')
  page.should have_content('ok people')
end

#scenario: sharing a page
Given /^I am a champion and I have multiple fundraisers setup$/ do
	step "I am on the new champions page"
	step "I enter my user info"
	step "I optionally enter my twitter user name"
	step "I create my champion"
	step "I click create fundraiser"
	step "I fill out the fundraiser fields"
	step "I create a fundraiser"
end

When /^I go to the url \/c\/my_user_name$/ do
  visit('/champ/JOHNTEE')
end

Then /^I should see a list of just my fundraisers$/ do
  page.should have_content('Fundraisers')
  page.should have_content('fun title test')
end


Then /^there should be a donation link next to each one$/ do
  find_link('fun title test').visible?
end

Then /^there should be a "(.*?)" next to each one$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^the Twitter link should populate a default tweet with my twitter name on it\.$/ do
  pending # express the regexp above with the code you wish you had
end

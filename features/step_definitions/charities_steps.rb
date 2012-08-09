Given /^I am a champion and I have multiple fundraisers setup$/ do
  visit('/champions/new')
  fill_in('champion_username', :with => 'JohnTee')
  fill_in('champion_fname', :with => 'John')
  fill_in('champion_lname', :with => 'Test')
  fill_in('champion_city', :with => 'cville')
  fill_in('champion_state', :with => 'VA')
  fill_in('champion_email', :with => 'JT@internet.com')
  fill_in('champion_password', :with => 'passwordtest')
end

When /^I go to the url \/c\/my_user_name$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a list of just my fundraisers$/ do
  pending # express the regexp above with the code you wish you had
end


Then /^there should be a donation link next to each one$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^there should be a "(.*?)" next to each one$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^the Twitter link should populate a default tweet with my twitter name on it\.$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^that a champion has created a fundraiser for my charity$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^they have sent me an invite to join the site$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should get a link to sign up$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the fundraiser id should be in the email link$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^that id should be tied to my charity after I sign up$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^that I am on the home page$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I click on the "(.*?)" link$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should be taken to a sign up page$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should enter fields for Charity name, address, phone, contact email, username, password, twitter handle, facebook page, and website$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I press the submit button then I should be taken to a confirmation page$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^that I am a charity already signed up$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I sign in then I should be able to setup my payment options$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I should see an option to integrate Donor Town Square with my account$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I can enter my Donor Town Square username and password in order to link the accounts$/ do
  pending # express the regexp above with the code you wish you had
end

When /^there is a link to Donor Town Square's setup page if I don't have an account yet$/ do
  pending # express the regexp above with the code you wish you had
end


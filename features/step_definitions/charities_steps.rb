#Scenario: A charity receives an invitation
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

#scenario: a charity signs themselves up
Given /^that I am on the home page$/ do
  visit('')
end

Given /^I click on the "(.*?)" link$/ do |arg1|
  click_link(arg1)
end

Then /^I should be taken to a sign up page$/ do
  page.should have_content('New charity')
end

Then /^I should enter fields for Charity name, address, phone, contact email, username, password, twitter handle, facebook page, and website$/ do
  fill_in('charity_charity_name', :with => 'nice people')
  fill_in('charity_street1', :with => '101 main street')
  fill_in('charity_street2', :with => '202 second street')
  fill_in('charity_city', :with => 'springfield')
  fill_in('charity_state', :with => 'state')
  fill_in('charity_zip', :with => '12345')
  fill_in('charity_phone', :with => '111-222-3333')
  fill_in('charity_email', :with => 'niceppl@aol.net')
  fill_in('charity_twitter_handle', :with => 'niceperson')
  fill_in('charity_facebook_page', :with => 'facebook.nicepeople')
  fill_in('charity_website_url', :with => 'www.nicepeople.com')
end

When /^I press the submit button then I should be taken to a confirmation page$/ do
  click_button('Create Charity')
  page.should have_content('Charity was successfully created.')
end

#scenario: A charity signs up for a payment type
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


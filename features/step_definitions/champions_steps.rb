Given /^I am on the new champions page$/ do
  visit('/champions/new')
  page.has_content?('Champion')
end

When /^I enter my user info$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I create my champion$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see my info on the show page$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end
require 'sinatra/base'

Given(/^I am on the homepage$/) do
	visit '/'
end

When(/^I follow "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I enter (.*)$/) do |name|
		visit '/newgame'
	  fill_in('name', with: name)
	  page.has_content?('name')
end

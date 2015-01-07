require 'sinatra/base'

Given(/^I am on the homepage$/) do
	visit '/'
end

When(/^I follow "(.*?)"$/) do |arg1|
  visit '/newgame'
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.has_content?('Would you like to play Battleships?!')
end

When(/^I enter (.*)$/) do |name|
		visit '/newgame'
	  fill_in('name', with: name)
	  page.has_content?('name')
end

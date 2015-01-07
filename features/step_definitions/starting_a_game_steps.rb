require 'sinatra/base'

Given(/^I am on the homepage$/) do
	visit '/'
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content text
end

Given(/^I am on newgame page$/) do
 	visit '/newgame'
end

Given(/^I enter my name$/) do
  fill_in('name', with: 'name')
end

Given(/^click on submit$/) do
  click_on("Submit")
end


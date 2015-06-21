require 'capybara/cucumber'
 
Capybara.default_driver = :selenium

Given(/^I am on the Google homepage$/) do
    visit 'http://www.google.co.uk'
end

Then(/^I will search for "(.*?)"$/) do |searchText|
    fill_in 'gbqfq', :with => searchText
end

Then(/^I should see "(.*?)"$/) do |expectedText|
    page.should have_content(expectedText)
end

Then(/^I will click the about link$/) do
    click_link('About')
end

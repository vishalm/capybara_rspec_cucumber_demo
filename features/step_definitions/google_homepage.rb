Given(/^I am logging google home page$/) do
  launch_selenium_driver
  GoogleHomePage.new(driver).go_to_homepage
  GoogleHomePage.new(driver).verify_page('Google').should be_true
end

When(/^I select (.*) from the header$/) do |option|
  GoogleHomePage.new(driver).goto_product(option)

end
Then(/^I should see (.*) product page$/) do |option|
  GoogleHomePage.new(driver).verify_page(option).should be_true
end
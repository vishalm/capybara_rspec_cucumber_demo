require "spec_helper"

describe GoogleHomePage do
  let(:google_page) {GoogleHomePage.new(driver)}

  before(:each)do
    launch_selenium_driver
  end

  it 'should go to google homepage' do
    google_page.go_to_homepage
    google_page.verify_page('Google').should be_true
  end

  it 'should go to google news page' do
    google_page.go_to_homepage
    google_page.goto_product('Images')
    google_page.verify_page('Images').should be_true
  end

end
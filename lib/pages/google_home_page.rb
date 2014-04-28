class GoogleHomePage

  def initialize(page_driver)
    @driver = page_driver
  end

  attr_reader :driver

  def go_to_homepage
    driver.visit('http://www.google.co.in/')
  end

  def goto_product(product)
    driver.find(:xpath, ".//span[contains(text(), '#{product}')]").click
    sleep 10
  end

  def verify_page(product)
    driver.title.include?(product)
  end

end
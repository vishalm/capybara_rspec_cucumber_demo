module CreateDriver

  def page_driver
    #executor = nil

    if ENV_FIREFOX_SELENIUM
      executor = :firefox

      Capybara.register_driver executor do |app|
        Capybara::Selenium::Driver.new(app, :browser => :firefox, :desired_capabilities => :firefox)
      end
    end
    #
    #if ENV_CHROME_SELENIUM
    #  executor = :chrome
    #
    #  Capybara.register_driver executor do |app|
    #    Capybara::Selenium::Driver.new(app, :browser => :chrome, :desired_capabilities => :chrome)
    #  end
    #
    #end
    #
    #if ENV_IE_SELENIUM
    #  executor = :internet_explorer
    #
    #  Capybara.register_driver executor do |app|
    #    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer, :desired_capabilities => :internet_explorer)
    #  end
    #end
    #
    #if ENV_WEB_KIT
    #  executor = :webkit
    #
    #  Capybara.register_driver executor do |app|
    #    Capybara::Webkit::Driver.new(app, :desired_capabilities => :firefox)
    #  end
    #end
    #
    #if executor.nil?
    #  raise("Unable to create driver either executor: #{executor} is nil")
    #else
    #
      Capybara.server_port = 9887 + ENV['TEST_ENV_NUMBER'].to_i
      Capybara.javascript_driver = executor
      Capybara.default_driver = executor
      Capybara.default_wait_time = 15

      @driver = Capybara::Session.new(executor)
    #end

  end

  def driver
    @driver
  end


  def launch_selenium_driver
    page_driver
  end

end
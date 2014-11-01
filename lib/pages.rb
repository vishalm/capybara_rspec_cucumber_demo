require 'yaml'
#require 'capybara'
#require 'capybara-webkit'
require 'yaml'
require 'rspec'
require 'selenium-webdriver'
#require 'parallel_tests/tasks'
require 'cucumber'

require 'rake'

include RSpec::Matchers

ENV_FIREFOX_SELENIUM = true
ENV_CHROME_SELENIUM = false
ENV_IE_SELENIUM = false
ENV_WEB_KIT = false


require File.dirname(__FILE__) + "/driver/driver"
include CreateDriver

require File.dirname(__FILE__) + "/driver/utilities"
include Utilities

require File.dirname(__FILE__) + "/pages/google_home_page"
require File.dirname(__FILE__) + "/pages/my_calculator"
require File.dirname(__FILE__) + "/pages/complex_calculator"

module Utilities

  def click_at(locator)
    driver.find(:xpath, locator).click
  end

  def wait_for_ajax(timeout = Capybara.default_wait_time)
    timeout.times do
      if driver.evaluate_script 'jQuery.active == 0'
        sleep 2
        break
      else
        sleep 1
      end
    end
  end
end
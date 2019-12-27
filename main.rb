# frozen_string_literal: true

require 'onlyoffice_webdriver_wrapper'
require_relative 'onlyoffice_webdriver_page_opener/methods'

screenshot_timeout = ENV['SCREENSHOT_TIMEOUT'] || 60

chrome = OnlyofficeWebdriverWrapper::WebDriver.new(:chrome)
chrome.open(form_url)
loop do
  OnlyofficeLoggerHelper.log("Current url: #{chrome.get_url}")
  chrome.webdriver_screenshot
  sleep(screenshot_timeout)
end
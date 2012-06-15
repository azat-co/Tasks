require "spec_helper"

require 'capybara/rspec'
require 'capybara/rails'

Capybara.default_selector = :css
Capybara.default_driver   = :rack_test
Capybara.javascript_driver= :webkit
Capybara.save_and_open_page_path = 'tmp'

require "selenium-webdriver"
require "rspec"
require 'mo_test_helpers/selenium_rspec'
include RSpec::Expectations

describe "${className}" do

  before(:each) do
    @base_url = "${baseURL}"
    @accept_next_alert = true
    @verification_errors = []
  end
  
  after(:each) do
    ${receiver}.quit
    @verification_errors.should == []
  end
  
  it "${methodName}" do
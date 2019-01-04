RSpec.configure do |config|  
  config.filter_gems_from_backtrace "capybara", "rack", "railties"
end
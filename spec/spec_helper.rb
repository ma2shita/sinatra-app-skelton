require "rack/test"
require "rspec/its"
require "rspec/json_matcher"
require "json"
require "i18n"
I18n.enforce_available_locales = false

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.include RSpec::JsonMatcher
end

require_relative File.join("..", "init")


RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end

# for spec requires
require "rack/test"
require "json"

# form main require files (same as config.ru)
require File.join(File.expand_path(File.dirname(__FILE__)), "..", "gemfile")
require File.join(File.expand_path(File.dirname(__FILE__)), "..", "web")
require File.join(File.expand_path(File.dirname(__FILE__)), "..", "api")


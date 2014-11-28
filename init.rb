require "bundler"
Bundler.setup
require "sinatra/base"
require "grape"
require "slim"
require "sass"
if Sinatra::Base.development? ||Sinatra::Base.test?
  require "pry-byebug"
  require "pry-rescue"
  require "pry-stack_explorer"
  require "tapp"
  require "sinatra/reloader"
  require "timecop"
  require "rspec-html-matchers"
end

require_relative "web"
require_relative "api"


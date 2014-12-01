require "bundler"
Bundler.setup
require "sinatra/base"
require "grape"
require "slim"
require "sass"
if Sinatra::Base.development? || Sinatra::Base.test?
  require "pry-byebug"
  require "pry-rescue"
  require "pry-stack_explorer"
  require "tapp"
  require "sinatra/reloader"
  require "timecop"
end

Dir.chdir(File.expand_path(File.dirname(__FILE__))) do
  Dir.glob(File.join("models", "**", "*.rb")) { |rb| require_relative rb }
  Dir.glob(File.join("lib", "**", "*.rb")) { |rb| require_relative rb }
end
require_relative "web"
require_relative "api"


require File.join(File.expand_path(File.dirname(__FILE__)), "gemfile")
require File.join(File.expand_path(File.dirname(__FILE__)), "web")
require File.join(File.expand_path(File.dirname(__FILE__)), "api")
run Rack::Cascade.new [App::Web, App::API]


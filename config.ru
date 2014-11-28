require_relative "init"
run Rack::Cascade.new [App::Web, App::API]


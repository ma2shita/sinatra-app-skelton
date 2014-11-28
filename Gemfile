source "https://rubygems.org"

gem "sinatra"
gem "grape"
gem "slim"
gem "sass"

gem "rake"

group :development, :test do
  # for debug
  gem "pry-byebug"
	gem "pry-rescue"
  gem "pry-stack_explorer"
  gem "tapp"
  # for auto reload
  gem "guard"
  gem "guard-shotgun"
  gem "guard-rspec"
  gem "sinatra-contrib"
  gem "thin"
  # for live reload
  gem "guard-livereload" # install live-reload ext. for your browser.
end

group :test do
  gem "rspec"
  gem "rspec-its"
  gem "rspec-json_matcher"
  gem "timecop"
  gem "rspec-html-matchers"
end


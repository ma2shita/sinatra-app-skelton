require "rspec/core"
require "rspec/core/rake_task"
require_relative "init"

task :default => :spec

desc "Run all specs in spec directory (excluding plugin specs)"
RSpec::Core::RakeTask.new(:spec)

desc "Open console w/ Pry"
task :console do
  Pry.start Pry.toplevel_binding
end


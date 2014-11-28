guard "livereload" do
  watch(%r{views/.+\.(slim|sass)$})
  watch("web.rb")
end

guard :shotgun, server: "thin", host: "0.0.0.0", port: "3001" do
  watch("config.ru")
  watch("api.rb")
  watch(%r{(models|lib)/.+\.rb$})
end

guard :rspec, :cmd => "bundle exec rspec" do
  watch("spec/spec_helper.rb") { "spec" }
  watch(%r{spec/.+_spec\.rb$})
  watch(%r{^(api|web)\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
end


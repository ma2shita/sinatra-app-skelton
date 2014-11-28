guard "livereload" do
  watch(%r{views/.+\.(slim|sass)$})
  watch("web.rb")
end

guard :shotgun, server: "thin", host: "0.0.0.0", port: "3001" do
  watch("config.ru")
  watch("api.rb")
end


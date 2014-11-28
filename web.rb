module App
  class Web < Sinatra::Base
    enable :inline_templates
    configure :development do
      register Sinatra::Reloader
    end

    get "/" do
      slim :index
    end
  end
end

__END__

@@ layout
doctype 5
html[lang="ja"]
  head
    title Sinatra Bootstrap
  body
    == yield

@@ index
h1 This is Sinatra Bootstrap
p#txt I have API. Try <a href="/api/hello">this</a>.


require "spec_helper"

describe App::Web do
  include Rack::Test::Methods

  def app
    App::Web
  end

  describe App::Web do
    describe "GET /" do
      it "return Index" do
        get "/"
        expect(last_response.status).to eq 200
        b = last_response.body
        expect(b).to have_tag(:title, :text => "Sinatra Bootstrap")
        expect(b).to have_tag(:h1, :text => /^This is .+ Bootstrap$/)
        expect(b).to have_tag(:p) {
          with_tag(:a, :with => {:href => "/api/hello" })
        }
      end
    end
  end
end


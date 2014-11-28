require "spec_helper"

describe App::Web do
  include Rack::Test::Methods

  def app
    App::Web
  end

  describe "GET /" do
    subject { get "/" }
    its(:status){ should eq 200 }
    its(:body) { should have_tag(:title, :text => "Sinatra Bootstrap") }
    its(:body) { should have_tag(:h1, :text => /^This is .+ Bootstrap$/) }
    its(:body) {
      should have_tag("#txt") {
        with_text(/API/)
        with_tag(:a, :href => "/api/hello")
      }
    }
  end
end


require "spec_helper"

describe App::API do
  include Rack::Test::Methods

  def app
    App::API
  end

  describe "GET /api/hello" do
    before do
      Timecop.freeze(2014, 12, 20, 15, 26, 37)
    end
    after do
      Timecop.return
    end

    it "return Hello w/ now time" do
      get "/api/hello"
      expect(last_response.status).to eq 200
      b = JSON.parse last_response.body
      expect(b["hello"]).to eq "Hello! Today is 2014-12-20 15:26:37 +0900"
    end
  end
end


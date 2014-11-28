require "spec_helper"

describe App::API do
  include Rack::Test::Methods

  def app
    App::API
  end

  describe "GET /api/hello" do
    before { Timecop.freeze(2014, 12, 20, 15, 26, 37) }
    subject { get "/api/hello" }
    its(:status){ should eq 200 }
    let(:params){ {:hello => "Hello! Today is 2014-12-20 15:26:37 +0900"} }
    its(:body){ should be_json_as params }
    after { Timecop.return }
  end

  describe "GET /api/hello2" do
    context "case of fail" do
      subject { get "/api/hello2", :p => 1234 }
      let(:params){ {:hello => 123} }
      its(:body){ should be_json_as params }
    end

    context "reject bad parameter" do
      subject { get "/api/hello2", :p => "world" }
      its(:status){ should eq 400 }
      its(:body){ should be_json_as ({:error => /invalid$/}) }
    end
  end

end


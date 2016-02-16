require File.expand_path(File.dirname(__FILE__) + '/../rails_helper')

describe HelloController do
  describe "GET show" do
    it 'should return hello world' do
      get :show
      resp = JSON.parse(response.body)
      expect(resp["message"]).to eq("Hello World")
    end
  end
end
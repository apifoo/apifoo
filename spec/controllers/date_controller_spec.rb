require File.expand_path(File.dirname(__FILE__) + '/../rails_helper')

describe DateController do
  describe "GET show" do
    it 'should return current date' do
      Timecop.freeze
      get :show
      resp = JSON.parse(response.body)
      expected = Time.now
      expect(resp["day"]).to eq(expected.day)
      expect(resp["month"]).to eq(expected.month)
      expect(resp["year"]).to eq(expected.year)
      expect(resp["dayofweek"]).to eq(expected.strftime("%A"))
    end
  end
end
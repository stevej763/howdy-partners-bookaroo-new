require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /log-in" do
    it "returns http success" do
      get "/log-in"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /welcome" do
    it "returns http success" do
      get "/welcome"
      expect(response).to have_http_status(:success)
    end
  end

end

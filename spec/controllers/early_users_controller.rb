require "spec_helper"
describe EarlyUsersController do
  describe "GET #index" do
    it "response successfully with a 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end
end

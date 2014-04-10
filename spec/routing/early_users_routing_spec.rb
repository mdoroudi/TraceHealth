require "spec_helper"

describe EarlyUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/early_users").should route_to("early_users#index")
    end

    it "routes to #new" do
      get("/early_users/new").should route_to("early_users#new")
    end

    it "routes to #show" do
      get("/early_users/1").should route_to("early_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/early_users/1/edit").should route_to("early_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/early_users").should route_to("early_users#create")
    end

    it "routes to #update" do
      put("/early_users/1").should route_to("early_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/early_users/1").should route_to("early_users#destroy", :id => "1")
    end

  end
end

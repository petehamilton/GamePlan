require "spec_helper"

describe UserSpecificGameplansController do
  describe "routing" do

    it "routes to #index" do
      get("/user_specific_gameplans").should route_to("user_specific_gameplans#index")
    end

    it "routes to #new" do
      get("/user_specific_gameplans/new").should route_to("user_specific_gameplans#new")
    end

    it "routes to #show" do
      get("/user_specific_gameplans/1").should route_to("user_specific_gameplans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_specific_gameplans/1/edit").should route_to("user_specific_gameplans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_specific_gameplans").should route_to("user_specific_gameplans#create")
    end

    it "routes to #update" do
      put("/user_specific_gameplans/1").should route_to("user_specific_gameplans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_specific_gameplans/1").should route_to("user_specific_gameplans#destroy", :id => "1")
    end

  end
end

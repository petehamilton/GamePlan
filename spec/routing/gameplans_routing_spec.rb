require "spec_helper"

describe GameplansController do
  describe "routing" do

    it "routes to #index" do
      get("/gameplans").should route_to("gameplans#index")
    end

    it "routes to #new" do
      get("/gameplans/new").should route_to("gameplans#new")
    end

    it "routes to #show" do
      get("/gameplans/1").should route_to("gameplans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/gameplans/1/edit").should route_to("gameplans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/gameplans").should route_to("gameplans#create")
    end

    it "routes to #update" do
      put("/gameplans/1").should route_to("gameplans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/gameplans/1").should route_to("gameplans#destroy", :id => "1")
    end

  end
end

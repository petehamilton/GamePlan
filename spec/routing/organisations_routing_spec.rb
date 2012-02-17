require "spec_helper"

describe OrganisationsController do
  describe "routing" do

    it "routes to #index" do
      get("/organisations").should route_to("organisations#index")
    end

    it "routes to #new" do
      get("/organisations/new").should route_to("organisations#new")
    end

    it "routes to #show" do
      get("/organisations/1").should route_to("organisations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/organisations/1/edit").should route_to("organisations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/organisations").should route_to("organisations#create")
    end

    it "routes to #update" do
      put("/organisations/1").should route_to("organisations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/organisations/1").should route_to("organisations#destroy", :id => "1")
    end

  end
end

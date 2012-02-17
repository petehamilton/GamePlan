require "spec_helper"

describe CompletedChallengesController do
  describe "routing" do

    it "routes to #index" do
      get("/completed_challenges").should route_to("completed_challenges#index")
    end

    it "routes to #new" do
      get("/completed_challenges/new").should route_to("completed_challenges#new")
    end

    it "routes to #show" do
      get("/completed_challenges/1").should route_to("completed_challenges#show", :id => "1")
    end

    it "routes to #edit" do
      get("/completed_challenges/1/edit").should route_to("completed_challenges#edit", :id => "1")
    end

    it "routes to #create" do
      post("/completed_challenges").should route_to("completed_challenges#create")
    end

    it "routes to #update" do
      put("/completed_challenges/1").should route_to("completed_challenges#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/completed_challenges/1").should route_to("completed_challenges#destroy", :id => "1")
    end

  end
end

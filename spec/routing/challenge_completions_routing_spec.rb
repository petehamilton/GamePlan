require "spec_helper"

describe ChallengeCompletionsController do
  describe "routing" do

    it "routes to #index" do
      get("/challenge_completions").should route_to("challenge_completions#index")
    end

    it "routes to #new" do
      get("/challenge_completions/new").should route_to("challenge_completions#new")
    end

    it "routes to #show" do
      get("/challenge_completions/1").should route_to("challenge_completions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/challenge_completions/1/edit").should route_to("challenge_completions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/challenge_completions").should route_to("challenge_completions#create")
    end

    it "routes to #update" do
      put("/challenge_completions/1").should route_to("challenge_completions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/challenge_completions/1").should route_to("challenge_completions#destroy", :id => "1")
    end

  end
end

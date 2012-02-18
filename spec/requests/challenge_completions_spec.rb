require 'spec_helper'

describe "ChallengeCompletions" do
  describe "GET /challenge_completions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get challenge_completions_path
      response.status.should be(200)
    end
  end
end

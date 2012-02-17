require 'spec_helper'

describe "completed_challenges/show.html.erb" do
  before(:each) do
    @completed_challenge = assign(:completed_challenge, stub_model(CompletedChallenge,
      :user_id => 1,
      :challenge_id => 1,
      :user_specific_gameplan_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end

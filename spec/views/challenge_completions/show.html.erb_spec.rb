require 'spec_helper'

describe "challenge_completions/show.html.erb" do
  before(:each) do
    @challenge_completion = assign(:challenge_completion, stub_model(ChallengeCompletion,
      :challenge => "",
      :user => "",
      :user_specific_gameplan => "",
      :writeup => "Writeup"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Writeup/)
  end
end

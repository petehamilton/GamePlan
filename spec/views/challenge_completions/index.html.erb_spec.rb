require 'spec_helper'

describe "challenge_completions/index.html.erb" do
  before(:each) do
    assign(:challenge_completions, [
      stub_model(ChallengeCompletion,
        :challenge => "",
        :user => "",
        :user_specific_gameplan => "",
        :writeup => "Writeup"
      ),
      stub_model(ChallengeCompletion,
        :challenge => "",
        :user => "",
        :user_specific_gameplan => "",
        :writeup => "Writeup"
      )
    ])
  end

  it "renders a list of challenge_completions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Writeup".to_s, :count => 2
  end
end

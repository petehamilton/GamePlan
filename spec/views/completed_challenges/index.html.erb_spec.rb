require 'spec_helper'

describe "completed_challenges/index.html.erb" do
  before(:each) do
    assign(:completed_challenges, [
      stub_model(CompletedChallenge,
        :user_id => 1,
        :challenge_id => 1,
        :user_specific_gameplan_id => 1
      ),
      stub_model(CompletedChallenge,
        :user_id => 1,
        :challenge_id => 1,
        :user_specific_gameplan_id => 1
      )
    ])
  end

  it "renders a list of completed_challenges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

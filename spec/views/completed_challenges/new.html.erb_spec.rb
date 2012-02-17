require 'spec_helper'

describe "completed_challenges/new.html.erb" do
  before(:each) do
    assign(:completed_challenge, stub_model(CompletedChallenge,
      :user_id => 1,
      :challenge_id => 1,
      :user_specific_gameplan_id => 1
    ).as_new_record)
  end

  it "renders new completed_challenge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => completed_challenges_path, :method => "post" do
      assert_select "input#completed_challenge_user_id", :name => "completed_challenge[user_id]"
      assert_select "input#completed_challenge_challenge_id", :name => "completed_challenge[challenge_id]"
      assert_select "input#completed_challenge_user_specific_gameplan_id", :name => "completed_challenge[user_specific_gameplan_id]"
    end
  end
end

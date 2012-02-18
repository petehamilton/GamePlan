require 'spec_helper'

describe "challenge_completions/edit.html.erb" do
  before(:each) do
    @challenge_completion = assign(:challenge_completion, stub_model(ChallengeCompletion,
      :challenge => "",
      :user => "",
      :user_specific_gameplan => "",
      :writeup => "MyString"
    ))
  end

  it "renders the edit challenge_completion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => challenge_completions_path(@challenge_completion), :method => "post" do
      assert_select "input#challenge_completion_challenge", :name => "challenge_completion[challenge]"
      assert_select "input#challenge_completion_user", :name => "challenge_completion[user]"
      assert_select "input#challenge_completion_user_specific_gameplan", :name => "challenge_completion[user_specific_gameplan]"
      assert_select "input#challenge_completion_writeup", :name => "challenge_completion[writeup]"
    end
  end
end

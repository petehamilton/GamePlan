require 'spec_helper'

describe "user_specific_gameplans/edit.html.erb" do
  before(:each) do
    @user_specific_gameplan = assign(:user_specific_gameplan, stub_model(UserSpecificGameplan,
      :gameplan_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit user_specific_gameplan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_specific_gameplans_path(@user_specific_gameplan), :method => "post" do
      assert_select "input#user_specific_gameplan_gameplan_id", :name => "user_specific_gameplan[gameplan_id]"
      assert_select "input#user_specific_gameplan_user_id", :name => "user_specific_gameplan[user_id]"
    end
  end
end

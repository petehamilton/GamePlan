require 'spec_helper'

describe "user_specific_gameplans/new.html.erb" do
  before(:each) do
    assign(:user_specific_gameplan, stub_model(UserSpecificGameplan,
      :gameplan_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new user_specific_gameplan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_specific_gameplans_path, :method => "post" do
      assert_select "input#user_specific_gameplan_gameplan_id", :name => "user_specific_gameplan[gameplan_id]"
      assert_select "input#user_specific_gameplan_user_id", :name => "user_specific_gameplan[user_id]"
    end
  end
end

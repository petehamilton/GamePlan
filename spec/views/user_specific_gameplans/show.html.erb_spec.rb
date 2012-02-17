require 'spec_helper'

describe "user_specific_gameplans/show.html.erb" do
  before(:each) do
    @user_specific_gameplan = assign(:user_specific_gameplan, stub_model(UserSpecificGameplan,
      :gameplan_id => 1,
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end

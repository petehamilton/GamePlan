require 'spec_helper'

describe "user_specific_gameplans/index.html.erb" do
  before(:each) do
    assign(:user_specific_gameplans, [
      stub_model(UserSpecificGameplan,
        :gameplan_id => 1,
        :user_id => 1
      ),
      stub_model(UserSpecificGameplan,
        :gameplan_id => 1,
        :user_id => 1
      )
    ])
  end

  it "renders a list of user_specific_gameplans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

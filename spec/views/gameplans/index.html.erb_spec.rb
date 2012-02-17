require 'spec_helper'

describe "gameplans/index.html.erb" do
  before(:each) do
    assign(:gameplans, [
      stub_model(Gameplan,
        :organisation_id => 1,
        :name => "Name",
        :desription => "MyText"
      ),
      stub_model(Gameplan,
        :organisation_id => 1,
        :name => "Name",
        :desription => "MyText"
      )
    ])
  end

  it "renders a list of gameplans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

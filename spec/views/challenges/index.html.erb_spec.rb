require 'spec_helper'

describe "challenges/index.html.erb" do
  before(:each) do
    assign(:challenges, [
      stub_model(Challenge,
        :summary => "Summary",
        :description => "MyText",
        :level => 1
      ),
      stub_model(Challenge,
        :summary => "Summary",
        :description => "MyText",
        :level => 1
      )
    ])
  end

  it "renders a list of challenges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Summary".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

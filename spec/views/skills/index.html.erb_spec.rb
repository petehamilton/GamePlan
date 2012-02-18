require 'spec_helper'

describe "skills/index.html.erb" do
  before(:each) do
    assign(:skills, [
      stub_model(Skill,
        :name => "Name"
      ),
      stub_model(Skill,
        :name => "Name"
      )
    ])
  end

  it "renders a list of skills" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

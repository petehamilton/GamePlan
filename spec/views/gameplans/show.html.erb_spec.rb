require 'spec_helper'

describe "gameplans/show.html.erb" do
  before(:each) do
    @gameplan = assign(:gameplan, stub_model(Gameplan,
      :organisation_id => 1,
      :name => "Name",
      :desription => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end

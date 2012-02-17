require 'spec_helper'

describe "challenges/show.html.erb" do
  before(:each) do
    @challenge = assign(:challenge, stub_model(Challenge,
      :summary => "Summary",
      :description => "MyText",
      :level => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Summary/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end

require 'spec_helper'

describe "organisations/show.html.erb" do
  before(:each) do
    @organisation = assign(:organisation, stub_model(Organisation,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end

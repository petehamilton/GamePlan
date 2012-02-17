require 'spec_helper'

describe "organisations/edit.html.erb" do
  before(:each) do
    @organisation = assign(:organisation, stub_model(Organisation,
      :name => "MyString"
    ))
  end

  it "renders the edit organisation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => organisations_path(@organisation), :method => "post" do
      assert_select "input#organisation_name", :name => "organisation[name]"
    end
  end
end

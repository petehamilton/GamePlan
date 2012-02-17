require 'spec_helper'

describe "challenges/new.html.erb" do
  before(:each) do
    assign(:challenge, stub_model(Challenge,
      :summary => "MyString",
      :description => "MyText",
      :level => 1
    ).as_new_record)
  end

  it "renders new challenge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => challenges_path, :method => "post" do
      assert_select "input#challenge_summary", :name => "challenge[summary]"
      assert_select "textarea#challenge_description", :name => "challenge[description]"
      assert_select "input#challenge_level", :name => "challenge[level]"
    end
  end
end

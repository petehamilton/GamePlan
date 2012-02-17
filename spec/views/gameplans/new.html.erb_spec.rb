require 'spec_helper'

describe "gameplans/new.html.erb" do
  before(:each) do
    assign(:gameplan, stub_model(Gameplan,
      :organisation_id => 1,
      :name => "MyString",
      :desription => "MyText"
    ).as_new_record)
  end

  it "renders new gameplan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gameplans_path, :method => "post" do
      assert_select "input#gameplan_organisation_id", :name => "gameplan[organisation_id]"
      assert_select "input#gameplan_name", :name => "gameplan[name]"
      assert_select "textarea#gameplan_desription", :name => "gameplan[desription]"
    end
  end
end

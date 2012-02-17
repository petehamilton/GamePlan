require 'spec_helper'

describe "skills/new.html.erb" do
  before(:each) do
    assign(:skill, stub_model(Skill,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new skill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => skills_path, :method => "post" do
      assert_select "input#skill_name", :name => "skill[name]"
    end
  end
end

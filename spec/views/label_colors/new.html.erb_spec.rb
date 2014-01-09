require 'spec_helper'

describe "label_colors/new" do
  before(:each) do
    assign(:label_color, stub_model(LabelColor,
      :name => "MyString",
      :color => "MyString"
    ).as_new_record)
  end

  it "renders new label_color form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", label_colors_path, "post" do
      assert_select "input#label_color_name[name=?]", "label_color[name]"
      assert_select "input#label_color_color[name=?]", "label_color[color]"
    end
  end
end

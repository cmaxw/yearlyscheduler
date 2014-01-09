require 'spec_helper'

describe "label_colors/edit" do
  before(:each) do
    @label_color = assign(:label_color, stub_model(LabelColor,
      :name => "MyString",
      :color => "MyString"
    ))
  end

  it "renders the edit label_color form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", label_color_path(@label_color), "post" do
      assert_select "input#label_color_name[name=?]", "label_color[name]"
      assert_select "input#label_color_color[name=?]", "label_color[color]"
    end
  end
end

require 'spec_helper'

describe "label_colors/show" do
  before(:each) do
    @label_color = assign(:label_color, stub_model(LabelColor,
      :name => "Name",
      :color => "Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Color/)
  end
end

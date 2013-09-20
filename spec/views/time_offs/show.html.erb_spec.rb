require 'spec_helper'

describe "time_offs/show" do
  before(:each) do
    @time_off = assign(:time_off, stub_model(TimeOff,
      :time_off => "Time Off",
      :type => "Type",
      :number_of_hours => "",
      :reason => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Time Off/)
    rendered.should match(/Type/)
    rendered.should match(//)
    rendered.should match(/MyText/)
  end
end

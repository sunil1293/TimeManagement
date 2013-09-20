require 'spec_helper'

describe "time_offs/index" do
  before(:each) do
    assign(:time_offs, [
      stub_model(TimeOff,
        :time_off => "Time Off",
        :type => "Type",
        :number_of_hours => "",
        :reason => "MyText"
      ),
      stub_model(TimeOff,
        :time_off => "Time Off",
        :type => "Type",
        :number_of_hours => "",
        :reason => "MyText"
      )
    ])
  end

  it "renders a list of time_offs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Time Off".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

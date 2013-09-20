require 'spec_helper'

describe "time_offs/edit" do
  before(:each) do
    @time_off = assign(:time_off, stub_model(TimeOff,
      :time_off => "MyString",
      :type => "",
      :number_of_hours => "",
      :reason => "MyText"
    ))
  end

  it "renders the edit time_off form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", time_off_path(@time_off), "post" do
      assert_select "input#time_off_time_off[name=?]", "time_off[time_off]"
      assert_select "input#time_off_type[name=?]", "time_off[type]"
      assert_select "input#time_off_number_of_hours[name=?]", "time_off[number_of_hours]"
      assert_select "textarea#time_off_reason[name=?]", "time_off[reason]"
    end
  end
end

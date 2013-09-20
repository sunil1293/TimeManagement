require 'spec_helper'

describe "time_offs/new" do
  before(:each) do
    assign(:time_off, stub_model(TimeOff,
      :time_off => "MyString",
      :type => "",
      :number_of_hours => "",
      :reason => "MyText"
    ).as_new_record)
  end

  it "renders new time_off form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", time_offs_path, "post" do
      assert_select "input#time_off_time_off[name=?]", "time_off[time_off]"
      assert_select "input#time_off_type[name=?]", "time_off[type]"
      assert_select "input#time_off_number_of_hours[name=?]", "time_off[number_of_hours]"
      assert_select "textarea#time_off_reason[name=?]", "time_off[reason]"
    end
  end
end

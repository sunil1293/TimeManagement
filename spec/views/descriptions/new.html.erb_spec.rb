require 'spec_helper'

describe "descriptions/new" do
  before(:each) do
    assign(:description, stub_model(Description,
      :status => "MyText",
      :user => nil
    ).as_new_record)
  end

  it "renders new description form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", descriptions_path, "post" do
      assert_select "textarea#description_status[name=?]", "description[status]"
      assert_select "input#description_user[name=?]", "description[user]"
    end
  end
end

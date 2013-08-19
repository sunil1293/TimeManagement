require 'spec_helper'

describe "descriptions/edit" do
  before(:each) do
    @description = assign(:description, stub_model(Description,
      :status => "MyText",
      :user => nil
    ))
  end

  it "renders the edit description form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", description_path(@description), "post" do
      assert_select "textarea#description_status[name=?]", "description[status]"
      assert_select "input#description_user[name=?]", "description[user]"
    end
  end
end

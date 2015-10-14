require 'rails_helper'

RSpec.describe "shift_details/new", type: :view do
  before(:each) do
    assign(:shift_detail, ShiftDetail.new(
      :shift_name => "MyString",
      :description => "MyText",
      :users => nil
    ))
  end

  it "renders new shift_detail form" do
    render

    assert_select "form[action=?][method=?]", shift_details_path, "post" do

      assert_select "input#shift_detail_shift_name[name=?]", "shift_detail[shift_name]"

      assert_select "textarea#shift_detail_description[name=?]", "shift_detail[description]"

      assert_select "input#shift_detail_users_id[name=?]", "shift_detail[users_id]"
    end
  end
end

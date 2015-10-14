require 'rails_helper'

RSpec.describe "shift_details/show", type: :view do
  before(:each) do
    @shift_detail = assign(:shift_detail, ShiftDetail.create!(
      :shift_name => "Shift Name",
      :description => "MyText",
      :users => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Shift Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end

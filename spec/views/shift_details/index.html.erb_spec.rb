require 'rails_helper'

RSpec.describe 'shift_details/index', type: :view do
  before(:each) do
    assign(:shift_details, [
      ShiftDetail.create!(
        shift_name: 'Shift Name',
        description: 'MyText',
        users: nil
      ),
      ShiftDetail.create!(
        shift_name: 'Shift Name',
        description: 'MyText',
        users: nil
      )
    ])
  end

  it 'renders a list of shift_details' do
    render
    assert_select 'tr>td', text: 'Shift Name'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end

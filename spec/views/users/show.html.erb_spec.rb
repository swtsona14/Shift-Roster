require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Name",
      :mobile_no => "Mobile No",
      :emp_id => "Emp",
      :email => "Email",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Mobile No/)
    expect(rendered).to match(/Emp/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password/)
  end
end

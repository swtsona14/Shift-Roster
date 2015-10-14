require 'rails_helper'

RSpec.describe "ShiftDetails", type: :request do
  describe "GET /shift_details" do
    it "works! (now write some real specs)" do
      get shift_details_path
      expect(response).to have_http_status(200)
    end
  end
end

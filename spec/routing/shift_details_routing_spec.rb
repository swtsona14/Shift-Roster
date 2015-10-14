require "rails_helper"

RSpec.describe ShiftDetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/shift_details").to route_to("shift_details#index")
    end

    it "routes to #new" do
      expect(:get => "/shift_details/new").to route_to("shift_details#new")
    end

    it "routes to #show" do
      expect(:get => "/shift_details/1").to route_to("shift_details#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/shift_details/1/edit").to route_to("shift_details#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/shift_details").to route_to("shift_details#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/shift_details/1").to route_to("shift_details#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/shift_details/1").to route_to("shift_details#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/shift_details/1").to route_to("shift_details#destroy", :id => "1")
    end

  end
end

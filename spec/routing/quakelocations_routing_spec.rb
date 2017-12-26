require "rails_helper"

RSpec.describe QuakelocationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/quakelocations").to route_to("quakelocations#index")
    end

    it "routes to #new" do
      expect(:get => "/quakelocations/new").to route_to("quakelocations#new")
    end

    it "routes to #show" do
      expect(:get => "/quakelocations/1").to route_to("quakelocations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/quakelocations/1/edit").to route_to("quakelocations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/quakelocations").to route_to("quakelocations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/quakelocations/1").to route_to("quakelocations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/quakelocations/1").to route_to("quakelocations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/quakelocations/1").to route_to("quakelocations#destroy", :id => "1")
    end

  end
end

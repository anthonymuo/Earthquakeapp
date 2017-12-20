require "rails_helper"

RSpec.describe EarthquakesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/earthquakes").to route_to("earthquakes#index")
    end

    it "routes to #new" do
      expect(:get => "/earthquakes/new").to route_to("earthquakes#new")
    end

    it "routes to #show" do
      expect(:get => "/earthquakes/1").to route_to("earthquakes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/earthquakes/1/edit").to route_to("earthquakes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/earthquakes").to route_to("earthquakes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/earthquakes/1").to route_to("earthquakes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/earthquakes/1").to route_to("earthquakes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/earthquakes/1").to route_to("earthquakes#destroy", :id => "1")
    end

  end
end

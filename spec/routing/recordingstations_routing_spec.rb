require "rails_helper"

RSpec.describe RecordingstationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/recordingstations").to route_to("recordingstations#index")
    end

    it "routes to #new" do
      expect(:get => "/recordingstations/new").to route_to("recordingstations#new")
    end

    it "routes to #show" do
      expect(:get => "/recordingstations/1").to route_to("recordingstations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/recordingstations/1/edit").to route_to("recordingstations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/recordingstations").to route_to("recordingstations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/recordingstations/1").to route_to("recordingstations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/recordingstations/1").to route_to("recordingstations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/recordingstations/1").to route_to("recordingstations#destroy", :id => "1")
    end

  end
end

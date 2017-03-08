require "rails_helper"

RSpec.describe EnfantsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/enfants").to route_to("enfants#index")
    end

    it "routes to #new" do
      expect(:get => "/enfants/new").to route_to("enfants#new")
    end

    it "routes to #show" do
      expect(:get => "/enfants/1").to route_to("enfants#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/enfants/1/edit").to route_to("enfants#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/enfants").to route_to("enfants#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/enfants/1").to route_to("enfants#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/enfants/1").to route_to("enfants#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/enfants/1").to route_to("enfants#destroy", :id => "1")
    end

  end
end

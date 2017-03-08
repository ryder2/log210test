require "rails_helper"

RSpec.describe DemandesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/demandes").to route_to("demandes#index")
    end

    it "routes to #new" do
      expect(:get => "/demandes/new").to route_to("demandes#new")
    end

    it "routes to #show" do
      expect(:get => "/demandes/1").to route_to("demandes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/demandes/1/edit").to route_to("demandes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/demandes").to route_to("demandes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/demandes/1").to route_to("demandes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/demandes/1").to route_to("demandes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/demandes/1").to route_to("demandes#destroy", :id => "1")
    end

  end
end

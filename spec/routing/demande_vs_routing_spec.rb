require "rails_helper"

RSpec.describe DemandeVsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/demande_vs").to route_to("demande_vs#index")
    end

    it "routes to #new" do
      expect(:get => "/demande_vs/new").to route_to("demande_vs#new")
    end

    it "routes to #show" do
      expect(:get => "/demande_vs/1").to route_to("demande_vs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/demande_vs/1/edit").to route_to("demande_vs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/demande_vs").to route_to("demande_vs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/demande_vs/1").to route_to("demande_vs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/demande_vs/1").to route_to("demande_vs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/demande_vs/1").to route_to("demande_vs#destroy", :id => "1")
    end

  end
end

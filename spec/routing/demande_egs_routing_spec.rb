require "rails_helper"

RSpec.describe DemandeEgsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/demande_egs").to route_to("demande_egs#index")
    end

    it "routes to #new" do
      expect(:get => "/demande_egs/new").to route_to("demande_egs#new")
    end

    it "routes to #show" do
      expect(:get => "/demande_egs/1").to route_to("demande_egs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/demande_egs/1/edit").to route_to("demande_egs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/demande_egs").to route_to("demande_egs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/demande_egs/1").to route_to("demande_egs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/demande_egs/1").to route_to("demande_egs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/demande_egs/1").to route_to("demande_egs#destroy", :id => "1")
    end

  end
end

require "rails_helper"

RSpec.describe VsDemandesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vs_demandes").to route_to("vs_demandes#index")
    end

    it "routes to #new" do
      expect(:get => "/vs_demandes/new").to route_to("vs_demandes#new")
    end

    it "routes to #show" do
      expect(:get => "/vs_demandes/1").to route_to("vs_demandes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vs_demandes/1/edit").to route_to("vs_demandes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/vs_demandes").to route_to("vs_demandes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/vs_demandes/1").to route_to("vs_demandes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/vs_demandes/1").to route_to("vs_demandes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vs_demandes/1").to route_to("vs_demandes#destroy", :id => "1")
    end

  end
end

require "rails_helper"

RSpec.describe MotifsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/motifs").to route_to("motifs#index")
    end

    it "routes to #new" do
      expect(:get => "/motifs/new").to route_to("motifs#new")
    end

    it "routes to #show" do
      expect(:get => "/motifs/1").to route_to("motifs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/motifs/1/edit").to route_to("motifs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/motifs").to route_to("motifs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/motifs/1").to route_to("motifs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/motifs/1").to route_to("motifs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/motifs/1").to route_to("motifs#destroy", :id => "1")
    end

  end
end

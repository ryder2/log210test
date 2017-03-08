require "rails_helper"

RSpec.describe FamillesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/familles").to route_to("familles#index")
    end

    it "routes to #new" do
      expect(:get => "/familles/new").to route_to("familles#new")
    end

    it "routes to #show" do
      expect(:get => "/familles/1").to route_to("familles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/familles/1/edit").to route_to("familles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/familles").to route_to("familles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/familles/1").to route_to("familles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/familles/1").to route_to("familles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/familles/1").to route_to("familles#destroy", :id => "1")
    end

  end
end

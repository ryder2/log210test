require "rails_helper"

RSpec.describe ParentinfosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/parentinfos").to route_to("parentinfos#index")
    end

    it "routes to #new" do
      expect(:get => "/parentinfos/new").to route_to("parentinfos#new")
    end

    it "routes to #show" do
      expect(:get => "/parentinfos/1").to route_to("parentinfos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/parentinfos/1/edit").to route_to("parentinfos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/parentinfos").to route_to("parentinfos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/parentinfos/1").to route_to("parentinfos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/parentinfos/1").to route_to("parentinfos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/parentinfos/1").to route_to("parentinfos#destroy", :id => "1")
    end

  end
end

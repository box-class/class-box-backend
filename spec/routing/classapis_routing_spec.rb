require "rails_helper"

RSpec.describe ClassapisController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/classapis").to route_to("classapis#index")
    end

    it "routes to #show" do
      expect(:get => "/classapis/1").to route_to("classapis#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/classapis").to route_to("classapis#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/classapis/1").to route_to("classapis#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/classapis/1").to route_to("classapis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/classapis/1").to route_to("classapis#destroy", :id => "1")
    end
  end
end

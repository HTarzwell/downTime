require "rails_helper"

RSpec.describe DowntimeInstancesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/downtime_instances").to route_to("downtime_instances#index")
    end


    it "routes to #show" do
      expect(:get => "/downtime_instances/1").to route_to("downtime_instances#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/downtime_instances").to route_to("downtime_instances#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/downtime_instances/1").to route_to("downtime_instances#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/downtime_instances/1").to route_to("downtime_instances#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/downtime_instances/1").to route_to("downtime_instances#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe RewardsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/rewards" }.should route_to(:controller => "rewards", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/rewards/new" }.should route_to(:controller => "rewards", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/rewards/1" }.should route_to(:controller => "rewards", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/rewards/1/edit" }.should route_to(:controller => "rewards", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/rewards" }.should route_to(:controller => "rewards", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/rewards/1" }.should route_to(:controller => "rewards", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/rewards/1" }.should route_to(:controller => "rewards", :action => "destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe ResellersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/resellers" }.should route_to(:controller => "resellers", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/resellers/new" }.should route_to(:controller => "resellers", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/resellers/1" }.should route_to(:controller => "resellers", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/resellers/1/edit" }.should route_to(:controller => "resellers", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/resellers" }.should route_to(:controller => "resellers", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/resellers/1" }.should route_to(:controller => "resellers", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/resellers/1" }.should route_to(:controller => "resellers", :action => "destroy", :id => "1")
    end

  end
end

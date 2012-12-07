require "spec_helper"

describe BarsController do
  describe "routing" do

    it "routes to #index" do
      get("/bars").should route_to("bars#index")
    end

    it "routes to #new" do
      get("/bars/new").should route_to("bars#new")
    end

    it "routes to #show" do
      get("/bars/1").should route_to("bars#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bars/1/edit").should route_to("bars#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bars").should route_to("bars#create")
    end

    it "routes to #update" do
      put("/bars/1").should route_to("bars#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bars/1").should route_to("bars#destroy", :id => "1")
    end

  end
end

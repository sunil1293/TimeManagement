require "spec_helper"

describe TimeOffsController do
  describe "routing" do

    it "routes to #index" do
      get("/time_offs").should route_to("time_offs#index")
    end

    it "routes to #new" do
      get("/time_offs/new").should route_to("time_offs#new")
    end

    it "routes to #show" do
      get("/time_offs/1").should route_to("time_offs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/time_offs/1/edit").should route_to("time_offs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/time_offs").should route_to("time_offs#create")
    end

    it "routes to #update" do
      put("/time_offs/1").should route_to("time_offs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/time_offs/1").should route_to("time_offs#destroy", :id => "1")
    end

  end
end

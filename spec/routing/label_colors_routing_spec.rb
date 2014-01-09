require "spec_helper"

describe LabelColorsController do
  describe "routing" do

    it "routes to #index" do
      get("/label_colors").should route_to("label_colors#index")
    end

    it "routes to #new" do
      get("/label_colors/new").should route_to("label_colors#new")
    end

    it "routes to #show" do
      get("/label_colors/1").should route_to("label_colors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/label_colors/1/edit").should route_to("label_colors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/label_colors").should route_to("label_colors#create")
    end

    it "routes to #update" do
      put("/label_colors/1").should route_to("label_colors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/label_colors/1").should route_to("label_colors#destroy", :id => "1")
    end

  end
end

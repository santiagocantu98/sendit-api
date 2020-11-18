require "rails_helper"

RSpec.describe VehiculosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/vehiculos").to route_to("vehiculos#index")
    end

    it "routes to #show" do
      expect(get: "/vehiculos/1").to route_to("vehiculos#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/vehiculos").to route_to("vehiculos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/vehiculos/1").to route_to("vehiculos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/vehiculos/1").to route_to("vehiculos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/vehiculos/1").to route_to("vehiculos#destroy", id: "1")
    end
  end
end

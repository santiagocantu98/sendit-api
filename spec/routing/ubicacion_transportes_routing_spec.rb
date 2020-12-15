require "rails_helper"

RSpec.describe UbicacionTransportesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/ubicacion_transportes").to route_to("ubicacion_transportes#index")
    end

    it "routes to #show" do
      expect(get: "/ubicacion_transportes/1").to route_to("ubicacion_transportes#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/ubicacion_transportes").to route_to("ubicacion_transportes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/ubicacion_transportes/1").to route_to("ubicacion_transportes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/ubicacion_transportes/1").to route_to("ubicacion_transportes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/ubicacion_transportes/1").to route_to("ubicacion_transportes#destroy", id: "1")
    end
  end
end

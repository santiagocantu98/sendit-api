require "rails_helper"

RSpec.describe UbicacionRecurrentesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/ubicacion_recurrentes").to route_to("ubicacion_recurrentes#index")
    end

    it "routes to #show" do
      expect(get: "/ubicacion_recurrentes/1").to route_to("ubicacion_recurrentes#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/ubicacion_recurrentes").to route_to("ubicacion_recurrentes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/ubicacion_recurrentes/1").to route_to("ubicacion_recurrentes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/ubicacion_recurrentes/1").to route_to("ubicacion_recurrentes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/ubicacion_recurrentes/1").to route_to("ubicacion_recurrentes#destroy", id: "1")
    end
  end
end

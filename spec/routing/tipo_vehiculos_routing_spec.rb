require "rails_helper"

RSpec.describe TipoVehiculosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/tipo_vehiculos").to route_to("tipo_vehiculos#index")
    end

    it "routes to #show" do
      expect(get: "/tipo_vehiculos/1").to route_to("tipo_vehiculos#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/tipo_vehiculos").to route_to("tipo_vehiculos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/tipo_vehiculos/1").to route_to("tipo_vehiculos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/tipo_vehiculos/1").to route_to("tipo_vehiculos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/tipo_vehiculos/1").to route_to("tipo_vehiculos#destroy", id: "1")
    end
  end
end

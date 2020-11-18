require "rails_helper"

RSpec.describe TicketSoportesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/ticket_soportes").to route_to("ticket_soportes#index")
    end

    it "routes to #show" do
      expect(get: "/ticket_soportes/1").to route_to("ticket_soportes#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/ticket_soportes").to route_to("ticket_soportes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/ticket_soportes/1").to route_to("ticket_soportes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/ticket_soportes/1").to route_to("ticket_soportes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/ticket_soportes/1").to route_to("ticket_soportes#destroy", id: "1")
    end
  end
end

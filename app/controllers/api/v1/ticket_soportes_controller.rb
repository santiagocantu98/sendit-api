class Api::V1::TicketSoportesController < ApplicationController
  before_action :set_ticket_soporte, only: [:show, :update, :destroy]

  # GET /ticket_soportes
  def index
    @ticket_soportes = TicketSoporte.all

    render json: @ticket_soportes
  end

  # GET /ticket_soportes/1
  def show
    render json: @ticket_soporte
  end

  # POST /ticket_soportes
  def create
    @ticket_soporte = TicketSoporte.new(ticket_soporte_params)

    if @ticket_soporte.save
      render json: @ticket_soporte, status: :created, location: @ticket_soporte
    else
      render json: @ticket_soporte.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ticket_soportes/1
  def update
    if @ticket_soporte.update(ticket_soporte_params)
      render json: @ticket_soporte
    else
      render json: @ticket_soporte.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ticket_soportes/1
  def destroy
    @ticket_soporte.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_soporte
      @ticket_soporte = TicketSoporte.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ticket_soporte_params
      params.require(:ticket_soporte).permit(:descripcion, :estatus, :fecha)
    end
end

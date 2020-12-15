class Api::V1::UbicacionTransportesController < ApplicationController
  before_action :set_ubicacion_transporte, only: [:show, :update, :destroy]

  # GET /ubicacion_transportes
  def index
    @ubicacion_transportes = UbicacionTransporte.all

    render json: @ubicacion_transportes
  end

  # GET /ubicacion_transportes/1
  def show
    render json: @ubicacion_transporte
  end

  # POST /ubicacion_transportes
  def create
    @ubicacion_transporte = UbicacionTransporte.new(ubicacion_transporte_params)

    if @ubicacion_transporte.save
      render json: @ubicacion_transporte, status: :created, location: @ubicacion_transporte
    else
      render json: @ubicacion_transporte.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ubicacion_transportes/1
  def update
    if @ubicacion_transporte.update(ubicacion_transporte_params)
      render json: @ubicacion_transporte
    else
      render json: @ubicacion_transporte.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ubicacion_transportes/1
  def destroy
    @ubicacion_transporte.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ubicacion_transporte
      @ubicacion_transporte = UbicacionTransporte.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ubicacion_transporte_params
      params.require(:ubicacion_transporte).permit(:latitud, :longitud)
    end
end

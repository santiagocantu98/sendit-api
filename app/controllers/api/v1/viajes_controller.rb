class Api::V1::ViajesController < ApplicationController
  before_action :set_viaje, only: [:show, :update, :destroy]

  # GET /viajes
  def index
    @viajes = Viaje.all.order("id ASC")

    render json: @viajes
  end

  # GET /viajes/1
  def show
    render json: @viaje
  end

  # POST /viajes
  def create
    @viaje = Viaje.new(viaje_params)

    if @viaje.save
      render json: @viaje, status: :created
    else
      render json: @viaje.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /viajes/1
  def update
    if @viaje.update(viaje_params)
      render json: @viaje
    else
      render json: @viaje.errors, status: :unprocessable_entity
    end
  end

  # DELETE /viajes/1
  def destroy
    @viaje.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_viaje
      @viaje = Viaje.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def viaje_params
      params.require(:viaje).permit(:lugarOrigen, :lugarDestino, :horaEntregadaAcordada, :horaEntrega, :horaRecogida, :horaRecogidaAcordada, :user_id, :driver_id, :vehiculo_id, :objeto_id, :calificacionTransportista, :calificacionCliente, :estado, :latitudOrigen, :longitudOrigen, :latitudDestino, :longitudDestino)
    end
end

class Api::V1::UbicacionRecurrentesController < ApplicationController
  before_action :set_ubicacion_recurrente, only: [:show, :update, :destroy]

  # GET /ubicacion_recurrentes
  def index
    @ubicacion_recurrentes = UbicacionRecurrente.all

    render json: @ubicacion_recurrentes
  end

  # GET /ubicacion_recurrentes/1
  def show
    render json: @ubicacion_recurrente
  end

  # POST /ubicacion_recurrentes
  def create
    @ubicacion_recurrente = UbicacionRecurrente.new(ubicacion_recurrente_params)

    if @ubicacion_recurrente.save
      render json: @ubicacion_recurrente, status: :created
    else
      render json: @ubicacion_recurrente.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ubicacion_recurrentes/1
  def update
    if @ubicacion_recurrente.update(ubicacion_recurrente_params)
      render json: @ubicacion_recurrente
    else
      render json: @ubicacion_recurrente.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ubicacion_recurrentes/1
  def destroy
    @ubicacion_recurrente.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ubicacion_recurrente
      @ubicacion_recurrente = UbicacionRecurrente.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ubicacion_recurrente_params
      params.require(:ubicacion_recurrente).permit(:direccion, :latitud, :longitud, :user_id)
    end
end

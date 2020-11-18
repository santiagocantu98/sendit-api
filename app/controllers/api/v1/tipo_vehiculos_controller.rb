class Api::V1::TipoVehiculosController < ApplicationController
  before_action :set_tipo_vehiculo, only: [:show, :update, :destroy]

  # GET /tipo_vehiculos
  def index
    @tipo_vehiculos = TipoVehiculo.all

    render json: @tipo_vehiculos
  end

  # GET /tipo_vehiculos/1
  def show
    render json: @tipo_vehiculo
  end

  # POST /tipo_vehiculos
  def create
    @tipo_vehiculo = TipoVehiculo.new(tipo_vehiculo_params)

    if @tipo_vehiculo.save
      render json: @tipo_vehiculo, status: :created
    else
      render json: @tipo_vehiculo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tipo_vehiculos/1
  def update
    if @tipo_vehiculo.update(tipo_vehiculo_params)
      render json: @tipo_vehiculo
    else
      render json: @tipo_vehiculo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tipo_vehiculos/1
  def destroy
    @tipo_vehiculo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_vehiculo
      @tipo_vehiculo = TipoVehiculo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tipo_vehiculo_params
      params.require(:tipo_vehiculo).permit(:descripcion, :clave)
    end
end

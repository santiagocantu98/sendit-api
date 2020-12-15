class Api::V1::RecibosController < ApplicationController
  before_action :set_recibo, only: [:show, :update, :destroy]

  # GET /recibos
  def index
    @recibos = Recibo.all

    render json: @recibos
  end

  # GET /recibos/1
  def show
    render json: @recibo
  end

  # POST /recibos
  def create
    @recibo = Recibo.new(recibo_params)

    if @recibo.save
      render json: @recibo, status: :created
    else
      render json: @recibo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recibos/1
  def update
    if @recibo.update(recibo_params)
      render json: @recibo
    else
      render json: @recibo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recibos/1
  def destroy
    @recibo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recibo
      @recibo = Recibo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recibo_params
      params.require(:recibo).permit(:subtotal, :tarifa, :iva, :total, :viaje_id, :administrador_id)
    end
end

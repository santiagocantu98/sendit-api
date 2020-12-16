class Api::V1::ObjetosController < ApplicationController
  before_action :set_objeto, only: [:show, :update, :destroy]


  def imagenObjeto
    objeto = Objeto.find_by(id: params[:id])
  
    if objeto&.imagenObjeto&.attached?
      redirect_to rails_blob_url(objeto.imagenObjeto)
    else
      head :not_found
    end
  end

  # GET /objetos
  def index
    @objetos = Objeto.all.order("id ASC")

    render json: @objetos
  end

  # GET /objetos/1
  def show
    render json: @objeto
  end

  # POST /objetos
  def create
    @objeto = Objeto.new(objeto_params)

    if @objeto.save
      render json: @objeto, status: :created
    else
      render json: @objeto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /objetos/1
  def update
    if @objeto.update(objeto_params)
      render json: @objeto
    else
      render json: @objeto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /objetos/1
  def destroy
    @objeto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objeto
      @objeto = Objeto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def objeto_params
      params.require(:objeto).permit(:peso, :tamano, :alto, :largo, :ancho, :descripcion, :imagenObjeto)
    end
end

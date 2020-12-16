class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user!

  before_action :set_user, only: [:show, :update, :destroy]


  def imagenUsuario
    user = User.find_by(id: params[:id])
  
    if user&.imagenUsuario&.attached?
      redirect_to rails_blob_url(user.imagenUsuario)
    else
      head :not_found
    end
  end

  # GET /objetos
  def index
    @users = User.all.order("id ASC")

    render json: @users
  end

  # GET /objetos/1
  def show
    render json: @user
  end

  # POST /objetos
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /objetos/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /objetos/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :role, :name, :telefono, :estado_id, :fecha_licencia, :imagenUsuario)
    end
  
end

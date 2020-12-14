class User < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_token_authenticatable

  has_one :estado



  after_initialize :set_delfault_role

  def administrador?
    self.role == "administrador"
  end

  def cliente?
    self.role == "cliente"
  end

  def transportista?
    self.role == "transportista"
  end

  def set_delfault_role
    self.role == "administrador" if self.role.nil?
  end




end

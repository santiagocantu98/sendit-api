class User < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_token_authenticatable

  has_one :estado



#  before_save :set_delfault_role

  def administrador?
    self.type == "administrador"
  end

  def cliente?
    self.type == "cliente"
  end

  def transportista?
    self.type == "transportista"
  end

  def set_delfault_type
    self.type = "administrador" if self.type.nil?
  end




end

class User < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_token_authenticatable

#  before_save :set_delfault_role

#  def admin?
#    self.role == "admin"
#  end

#  def cliente?
#    self.role == "cliente"
#  end

#  def set_delfault_role
#    self.role = "admin" if role.nil?
#  end




end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :borrowings
  has_many :reservations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: [:Użytkownik, :Bibliotekarz, :Admin]
  ROLES = {
    user: 0,
    librarian: 1,
    admin: 2
  }.freeze
  enum approved: { false: false, true: true }, _suffix: true
  #after_initialize :set_default_role, :if => :new_record?
  #def set_default_role
  #  self.role ||= :użytkownik 
  #end
  def active_for_authentication? 
    super && approved?
  end 
    
  def inactive_message 
    approved? ? super : :not_approved
  end
  def role_name
    ROLES.key(role)
  end
  def admin?
    role_name != 'Użytkownik'
  end
end

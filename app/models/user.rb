class User < ApplicationRecord
  has_many :borrowings
  has_many :reservations
  has_many :reviews
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: [:Użytkownik, :Bibliotekarz, :Admin]
  ROLES = {
    user: 0,
    librarian: 1,
    admin: 2
  }.freeze
  enum approved: { false: false, true: true }, _suffix: true

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

class ClientDevise < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :omniauthable, omniauth_providers: [:google_oauth2]

  enum role:[:client, :admin]
  has_many :reserve_tables
  has_many :reserve_rooms
  has_many :appointments
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :publications
  has_many :projets

  enum service: {
    Sante: 0,
    Banque: 1,
    Ingenieri: 2,
    Securite: 3,
    Formation: 4
  }
  
  # scope :search_service, -> (service) { where(service: service) }
  # scope :search_nom, -> (nom) { where("nom LIKE ?", "%#{nom}%") }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
end

require 'rails_helper'

RSpec.describe Projet, type: :model do
  describe "Validation" do
    it "Si aucun Nom n'est saisi, la Validation du projet est valide." do
      user = User.create!(email: "test@gmail.com", password: "password", password_confirmation: 'password')
      publication = Projet.new(nom: nil, contenu: "test", debut: "debut",fin: "fin", user: user)
      expect(publication).to be_valid
    end

    it "Si aucun Contenu n'est saisi, la Validation du projet est valide." do
      user = User.create!(email: "test@gmail.com", password: "password", password_confirmation: 'password')
      publication = Projet.new(nom: "Nom", contenu: nil, debut: "debut",fin: "fin", user: user)
      expect(publication).to be_valid
    end

    it "Si le debut n'est pas saisi, la Validation du projet est valide." do
      user = User.create!(email: "test@gmail.com", password: "password", password_confirmation: 'password')
      publication = Projet.new(nom: "Nom", contenu: "test", debut: nil,fin: "fin", user: user)
      expect(publication).to be_valid
    end

    it "Si la Fin n'est pas saisi, la Validation du projet est valide." do
      user = User.create!(email: "test@gmail.com", password: "password", password_confirmation: 'password')
      publication = Projet.new(nom: "Nom", contenu: "test", debut: "debut",fin: nil, user: user)
      expect(publication).to be_valid
    end
  end
end

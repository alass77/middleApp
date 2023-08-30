require 'rails_helper'

RSpec.describe Publication, type: :model do
  describe "Validation" do
    it "Si aucun Titre n'est saisi, la Validation de la publication est valide." do
      user = User.create!(email: "test@gmail.com", password: "password", password_confirmation: 'password')
      publication = Publication.new(titre: nil, contenu: "test", user: user)
      expect(publication).to be_valid
    end

    it "Si aucun contenu n'est saisi, la Validation de la publication est valide." do
      user = User.create!(email: "test@gmail.com", password: "password", password_confirmation: 'password')
      task = Publication.new(titre: "test", contenu: nil, user: user)
      expect(task).to be_valid
    end

  end
end

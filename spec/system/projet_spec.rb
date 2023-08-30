require 'rails_helper'

RSpec.describe 'Projet management', type: :system do
    before do
        driven_by :rack_test
    end
  it 'creates a new projet' do
    user = User.create(email: 'test@example.com', password: 'password')

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'password'

    click_button 'Log in'

    visit new_projet_path

    fill_in 'Nom', with: 'Nouveau projet'
    fill_in 'Contenu', with: 'Contenu du projet'
    fill_in 'Debut', with: '2023-09-01'
    fill_in 'Fin', with: '2023-12-31'

    click_button 'Create Projet'

    expect(page).to have_content('Projet was successfully created.')
  end

  it 'updates an existing projet' do
    user = User.create(email: 'test@example.com', password: 'password')
    projet = Projet.create(nom: 'Ancien projet', contenu: 'Contenu initial', debut: '2023-09-01', fin: '2023-12-31', user: user)

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'password'

    click_button 'Log in'

    visit edit_projet_path(projet)

    fill_in 'Nom', with: 'Nouveau nom'
    fill_in 'Contenu', with: 'Nouveau contenu'
    fill_in 'Debut', with: '2023-10-01'
    fill_in 'Fin', with: '2023-12-15'

    click_button 'Update Projet'

    expect(page).to have_content('Projet was successfully updated.')
  end
end

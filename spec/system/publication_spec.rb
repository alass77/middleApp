# spec/system/publication_spec.rb

require 'rails_helper'

RSpec.describe 'Publication management', type: :system do
    before do
        driven_by :rack_test
    end
  it 'creates a new publication' do
    user = User.create(email: 'test@example.com', password: 'password')

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'password'

    click_button 'Log in'

    visit new_publication_path

    fill_in 'Titre', with: 'Nouvelle publication'
    fill_in 'Contenu', with: 'Contenu de la publication'

    click_button 'Create Publication'

    expect(page).to have_content('Publication was successfully created.')
  end
  it 'updates an existing publication' do
    user = User.create(email: 'test@example.com', password: 'password')
    publication = Publication.create(titre: 'Ancienne publication', contenu: 'Contenu initial', user: user)

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'password'

    click_button 'Log in'

    visit edit_publication_path(publication)

    fill_in 'Titre', with: 'Nouveau titre'
    fill_in 'Contenu', with: 'Nouveau contenu'

    click_button 'Update Publication'

    expect(page).to have_content('Publication was successfully updated.')
  end
end


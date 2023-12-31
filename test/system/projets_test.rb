require "application_system_test_case"

class ProjetsTest < ApplicationSystemTestCase
  setup do
    @projet = projets(:one)
  end

  test "visiting the index" do
    visit projets_url
    assert_selector "h1", text: "Projets"
  end

  test "creating a Projet" do
    visit projets_url
    click_on "New Projet"

    fill_in "Contenu", with: @projet.contenu
    fill_in "Debut", with: @projet.debut
    fill_in "Fin", with: @projet.fin
    fill_in "Nom", with: @projet.nom
    fill_in "User", with: @projet.user_id
    click_on "Create Projet"

    assert_text "Projet was successfully created"
    click_on "Back"
  end

  test "updating a Projet" do
    visit projets_url
    click_on "Edit", match: :first

    fill_in "Contenu", with: @projet.contenu
    fill_in "Debut", with: @projet.debut
    fill_in "Fin", with: @projet.fin
    fill_in "Nom", with: @projet.nom
    fill_in "User", with: @projet.user_id
    click_on "Update Projet"

    assert_text "Projet was successfully updated"
    click_on "Back"
  end

  test "destroying a Projet" do
    visit projets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projet was successfully destroyed"
  end
end

require "application_system_test_case"

class FilmesTest < ApplicationSystemTestCase
  setup do
    @filme = filmes(:one)
  end

  test "visiting the index" do
    visit filmes_url
    assert_selector "h1", text: "Filmes"
  end

  test "should create filme" do
    visit filmes_url
    click_on "New filme"

    fill_in "Release year", with: @filme.release_year
    fill_in "Title", with: @filme.title
    click_on "Create Filme"

    assert_text "Filme was successfully created"
    click_on "Back"
  end

  test "should update Filme" do
    visit filme_url(@filme)
    click_on "Edit this filme", match: :first

    fill_in "Release year", with: @filme.release_year
    fill_in "Title", with: @filme.title
    click_on "Update Filme"

    assert_text "Filme was successfully updated"
    click_on "Back"
  end

  test "should destroy Filme" do
    visit filme_url(@filme)
    click_on "Destroy this filme", match: :first

    assert_text "Filme was successfully destroyed"
  end
end

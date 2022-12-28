require "application_system_test_case"

class PublicacionesTest < ApplicationSystemTestCase
  setup do
    @publicacione = publicaciones(:one)
  end

  test "visiting the index" do
    visit publicaciones_url
    assert_selector "h1", text: "Publicaciones"
  end

  test "should create publicacione" do
    visit publicaciones_url
    click_on "New publicacione"

    fill_in "Descripcion", with: @publicacione.descripcion
    fill_in "Titulo", with: @publicacione.titulo
    fill_in "Usuario", with: @publicacione.usuario_id
    click_on "Create Publicacione"

    assert_text "Publicacione was successfully created"
    click_on "Back"
  end

  test "should update Publicacione" do
    visit publicacione_url(@publicacione)
    click_on "Edit this publicacione", match: :first

    fill_in "Descripcion", with: @publicacione.descripcion
    fill_in "Titulo", with: @publicacione.titulo
    fill_in "Usuario", with: @publicacione.usuario_id
    click_on "Update Publicacione"

    assert_text "Publicacione was successfully updated"
    click_on "Back"
  end

  test "should destroy Publicacione" do
    visit publicacione_url(@publicacione)
    click_on "Destroy this publicacione", match: :first

    assert_text "Publicacione was successfully destroyed"
  end
end

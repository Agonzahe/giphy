require "application_system_test_case"

class BoardsTest < ApplicationSystemTestCase
  setup do
    @board = boards(:one)
  end

  test "visitar inicio" do
    visit boards_url
    assert_selector "h1", text: "Boards"
  end

  test "crear tablero" do
    visit boards_url
    click_on "nuevo tablero"

    fill_in "Publication", with: @board.publication_id
    fill_in "User", with: @board.user_publications
    click_on "Create Board"

    assert_text "Board was successfully created"
    click_on "Back"
  end

  test "actualizar tablero" do
    visit board_url(@board)
    click_on "editar tablero", match: :first

    fill_in "Publication", with: @board.publication_id
    fill_in "User", with: @board.user_publications
    click_on "actualizar"

    assert_text "tablero actualizado con exito"
    click_on "volver"
  end

  test "eliminar tablebro" do
    visit board_url(@board)
    click_on "eliminar este tablero", match: :first

    assert_text "tablero eliminado"
  end
end
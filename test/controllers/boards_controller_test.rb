require "test_helper"

class BoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @board = boards(:one)
  end

  test "ir al index" do
    get boards_url
    assert_response :success
  end

  test "mover al nuevo" do
    get new_board_url
    assert_response :success
  end

  test "crear tablero" do
    assert_difference("Board.count") do
      post boards_url, params: { board: { publication_id: @board.publication_id, user_id: @board.user_id } }
    end

    assert_redirected_to board_url(Board.last)
  end

  test "ver tablero" do
    get board_url(@board)
    assert_response :success
  end

  test "editar tablero" do
    get edit_board_url(@board)
    assert_response :success
  end

  test "actualizar tablero" do
    patch board_url(@board), params: { board: { publication_id: @board.publication_id, user_id: @board.user_id } }
    assert_redirected_to board_url(@board)
  end

  test "eliminar tablero" do
    assert_difference("Board.count", -1) do
      delete board_url(@board)
    end

    assert_redirected_to boards_url
  end
end
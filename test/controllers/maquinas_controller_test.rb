require "test_helper"

class MaquinasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get maquinas_index_url
    assert_response :success
  end

  test "should get show" do
    get maquinas_show_url
    assert_response :success
  end

  test "should get create" do
    get maquinas_create_url
    assert_response :success
  end

  test "should get new" do
    get maquinas_new_url
    assert_response :success
  end

  test "should get update" do
    get maquinas_update_url
    assert_response :success
  end

  test "should get edit" do
    get maquinas_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get maquinas_destroy_url
    assert_response :success
  end

  test "should get maquina_params" do
    get maquinas_maquina_params_url
    assert_response :success
  end

  test "should get set_params" do
    get maquinas_set_params_url
    assert_response :success
  end
end

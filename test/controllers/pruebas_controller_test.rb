require 'test_helper'

class PruebasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prueba = pruebas(:one)
  end

  test "should get index" do
    get pruebas_url
    assert_response :success
  end

  test "should get new" do
    get new_prueba_url
    assert_response :success
  end

  test "should create prueba" do
    assert_difference('Prueba.count') do
      post pruebas_url, params: { prueba: { date: @prueba.date, people: @prueba.people, time: @prueba.time } }
    end

    assert_redirected_to prueba_url(Prueba.last)
  end

  test "should show prueba" do
    get prueba_url(@prueba)
    assert_response :success
  end

  test "should get edit" do
    get edit_prueba_url(@prueba)
    assert_response :success
  end

  test "should update prueba" do
    patch prueba_url(@prueba), params: { prueba: { date: @prueba.date, people: @prueba.people, time: @prueba.time } }
    assert_redirected_to prueba_url(@prueba)
  end

  test "should destroy prueba" do
    assert_difference('Prueba.count', -1) do
      delete prueba_url(@prueba)
    end

    assert_redirected_to pruebas_url
  end
end

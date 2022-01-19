require "test_helper"

class AutoFuelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_fuel = auto_fuels(:one)
  end

  test "should get index" do
    get auto_fuels_url, as: :json
    assert_response :success
  end

  test "should create auto_fuel" do
    assert_difference('AutoFuel.count') do
      post auto_fuels_url, params: { auto_fuel: { fuel: @auto_fuel.fuel, rental_company_id: @auto_fuel.rental_company_id } }, as: :json
    end

    assert_response 201
  end

  test "should show auto_fuel" do
    get auto_fuel_url(@auto_fuel), as: :json
    assert_response :success
  end

  test "should update auto_fuel" do
    patch auto_fuel_url(@auto_fuel), params: { auto_fuel: { fuel: @auto_fuel.fuel, rental_company_id: @auto_fuel.rental_company_id } }, as: :json
    assert_response 200
  end

  test "should destroy auto_fuel" do
    assert_difference('AutoFuel.count', -1) do
      delete auto_fuel_url(@auto_fuel), as: :json
    end

    assert_response 204
  end
end

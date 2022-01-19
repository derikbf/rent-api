require "test_helper"

class AutoPowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_power = auto_powers(:one)
  end

  test "should get index" do
    get auto_powers_url, as: :json
    assert_response :success
  end

  test "should create auto_power" do
    assert_difference('AutoPower.count') do
      post auto_powers_url, params: { auto_power: { power: @auto_power.power, rental_company_id: @auto_power.rental_company_id } }, as: :json
    end

    assert_response 201
  end

  test "should show auto_power" do
    get auto_power_url(@auto_power), as: :json
    assert_response :success
  end

  test "should update auto_power" do
    patch auto_power_url(@auto_power), params: { auto_power: { power: @auto_power.power, rental_company_id: @auto_power.rental_company_id } }, as: :json
    assert_response 200
  end

  test "should destroy auto_power" do
    assert_difference('AutoPower.count', -1) do
      delete auto_power_url(@auto_power), as: :json
    end

    assert_response 204
  end
end

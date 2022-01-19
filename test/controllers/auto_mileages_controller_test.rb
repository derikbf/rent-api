require "test_helper"

class AutoMileagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_mileage = auto_mileages(:one)
  end

  test "should get index" do
    get auto_mileages_url, as: :json
    assert_response :success
  end

  test "should create auto_mileage" do
    assert_difference('AutoMileage.count') do
      post auto_mileages_url, params: { auto_mileage: { mileage: @auto_mileage.mileage, rental_company_id: @auto_mileage.rental_company_id } }, as: :json
    end

    assert_response 201
  end

  test "should show auto_mileage" do
    get auto_mileage_url(@auto_mileage), as: :json
    assert_response :success
  end

  test "should update auto_mileage" do
    patch auto_mileage_url(@auto_mileage), params: { auto_mileage: { mileage: @auto_mileage.mileage, rental_company_id: @auto_mileage.rental_company_id } }, as: :json
    assert_response 200
  end

  test "should destroy auto_mileage" do
    assert_difference('AutoMileage.count', -1) do
      delete auto_mileage_url(@auto_mileage), as: :json
    end

    assert_response 204
  end
end

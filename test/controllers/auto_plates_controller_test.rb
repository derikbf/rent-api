require "test_helper"

class AutoPlatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_plate = auto_plates(:one)
  end

  test "should get index" do
    get auto_plates_url, as: :json
    assert_response :success
  end

  test "should create auto_plate" do
    assert_difference('AutoPlate.count') do
      post auto_plates_url, params: { auto_plate: { name: @auto_plate.name, rental_company_id: @auto_plate.rental_company_id } }, as: :json
    end

    assert_response 201
  end

  test "should show auto_plate" do
    get auto_plate_url(@auto_plate), as: :json
    assert_response :success
  end

  test "should update auto_plate" do
    patch auto_plate_url(@auto_plate), params: { auto_plate: { name: @auto_plate.name, rental_company_id: @auto_plate.rental_company_id } }, as: :json
    assert_response 200
  end

  test "should destroy auto_plate" do
    assert_difference('AutoPlate.count', -1) do
      delete auto_plate_url(@auto_plate), as: :json
    end

    assert_response 204
  end
end

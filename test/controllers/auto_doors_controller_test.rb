require "test_helper"

class AutoDoorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_door = auto_doors(:one)
  end

  test "should get index" do
    get auto_doors_url, as: :json
    assert_response :success
  end

  test "should create auto_door" do
    assert_difference('AutoDoor.count') do
      post auto_doors_url, params: { auto_door: { door: @auto_door.door, rental_company_id: @auto_door.rental_company_id } }, as: :json
    end

    assert_response 201
  end

  test "should show auto_door" do
    get auto_door_url(@auto_door), as: :json
    assert_response :success
  end

  test "should update auto_door" do
    patch auto_door_url(@auto_door), params: { auto_door: { door: @auto_door.door, rental_company_id: @auto_door.rental_company_id } }, as: :json
    assert_response 200
  end

  test "should destroy auto_door" do
    assert_difference('AutoDoor.count', -1) do
      delete auto_door_url(@auto_door), as: :json
    end

    assert_response 204
  end
end

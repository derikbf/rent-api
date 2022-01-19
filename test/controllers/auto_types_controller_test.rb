require "test_helper"

class AutoTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_type = auto_types(:one)
  end

  test "should get index" do
    get auto_types_url, as: :json
    assert_response :success
  end

  test "should create auto_type" do
    assert_difference('AutoType.count') do
      post auto_types_url, params: { auto_type: { name: @auto_type.name, rental_company_id: @auto_type.rental_company_id } }, as: :json
    end

    assert_response 201
  end

  test "should show auto_type" do
    get auto_type_url(@auto_type), as: :json
    assert_response :success
  end

  test "should update auto_type" do
    patch auto_type_url(@auto_type), params: { auto_type: { name: @auto_type.name, rental_company_id: @auto_type.rental_company_id } }, as: :json
    assert_response 200
  end

  test "should destroy auto_type" do
    assert_difference('AutoType.count', -1) do
      delete auto_type_url(@auto_type), as: :json
    end

    assert_response 204
  end
end

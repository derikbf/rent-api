require "test_helper"

class AutoBrandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_brand = auto_brands(:one)
  end

  test "should get index" do
    get auto_brands_url, as: :json
    assert_response :success
  end

  test "should create auto_brand" do
    assert_difference('AutoBrand.count') do
      post auto_brands_url, params: { auto_brand: { name: @auto_brand.name } }, as: :json
    end

    assert_response 201
  end

  test "should show auto_brand" do
    get auto_brand_url(@auto_brand), as: :json
    assert_response :success
  end

  test "should update auto_brand" do
    patch auto_brand_url(@auto_brand), params: { auto_brand: { name: @auto_brand.name } }, as: :json
    assert_response 200
  end

  test "should destroy auto_brand" do
    assert_difference('AutoBrand.count', -1) do
      delete auto_brand_url(@auto_brand), as: :json
    end

    assert_response 204
  end
end

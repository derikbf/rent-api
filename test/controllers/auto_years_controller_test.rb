require "test_helper"

class AutoYearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_year = auto_years(:one)
  end

  test "should get index" do
    get auto_years_url, as: :json
    assert_response :success
  end

  test "should create auto_year" do
    assert_difference('AutoYear.count') do
      post auto_years_url, params: { auto_year: { year: @auto_year.year } }, as: :json
    end

    assert_response 201
  end

  test "should show auto_year" do
    get auto_year_url(@auto_year), as: :json
    assert_response :success
  end

  test "should update auto_year" do
    patch auto_year_url(@auto_year), params: { auto_year: { year: @auto_year.year } }, as: :json
    assert_response 200
  end

  test "should destroy auto_year" do
    assert_difference('AutoYear.count', -1) do
      delete auto_year_url(@auto_year), as: :json
    end

    assert_response 204
  end
end

require "test_helper"

class AutoModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_model = auto_models(:one)
  end

  test "should get index" do
    get auto_models_url, as: :json
    assert_response :success
  end

  test "should create auto_model" do
    assert_difference('AutoModel.count') do
      post auto_models_url, params: { auto_model: { name: @auto_model.name, rental_company_id: @auto_model.rental_company_id } }, as: :json
    end

    assert_response 201
  end

  test "should show auto_model" do
    get auto_model_url(@auto_model), as: :json
    assert_response :success
  end

  test "should update auto_model" do
    patch auto_model_url(@auto_model), params: { auto_model: { name: @auto_model.name, rental_company_id: @auto_model.rental_company_id } }, as: :json
    assert_response 200
  end

  test "should destroy auto_model" do
    assert_difference('AutoModel.count', -1) do
      delete auto_model_url(@auto_model), as: :json
    end

    assert_response 204
  end
end

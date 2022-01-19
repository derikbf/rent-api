require "test_helper"

class AutoExchangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_exchange = auto_exchanges(:one)
  end

  test "should get index" do
    get auto_exchanges_url, as: :json
    assert_response :success
  end

  test "should create auto_exchange" do
    assert_difference('AutoExchange.count') do
      post auto_exchanges_url, params: { auto_exchange: { exchange: @auto_exchange.exchange, rental_company_id: @auto_exchange.rental_company_id } }, as: :json
    end

    assert_response 201
  end

  test "should show auto_exchange" do
    get auto_exchange_url(@auto_exchange), as: :json
    assert_response :success
  end

  test "should update auto_exchange" do
    patch auto_exchange_url(@auto_exchange), params: { auto_exchange: { exchange: @auto_exchange.exchange, rental_company_id: @auto_exchange.rental_company_id } }, as: :json
    assert_response 200
  end

  test "should destroy auto_exchange" do
    assert_difference('AutoExchange.count', -1) do
      delete auto_exchange_url(@auto_exchange), as: :json
    end

    assert_response 204
  end
end

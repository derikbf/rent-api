require "test_helper"

class CustomerAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_address = customer_addresses(:one)
  end

  test "should get index" do
    get customer_addresses_url, as: :json
    assert_response :success
  end

  test "should create customer_address" do
    assert_difference('CustomerAddress.count') do
      post customer_addresses_url, params: { customer_address: { cep: @customer_address.cep, city: @customer_address.city, complement: @customer_address.complement, country: @customer_address.country, customer_id: @customer_address.customer_id, distric: @customer_address.distric, number: @customer_address.number, uf: @customer_address.uf } }, as: :json
    end

    assert_response 201
  end

  test "should show customer_address" do
    get customer_address_url(@customer_address), as: :json
    assert_response :success
  end

  test "should update customer_address" do
    patch customer_address_url(@customer_address), params: { customer_address: { cep: @customer_address.cep, city: @customer_address.city, complement: @customer_address.complement, country: @customer_address.country, customer_id: @customer_address.customer_id, distric: @customer_address.distric, number: @customer_address.number, uf: @customer_address.uf } }, as: :json
    assert_response 200
  end

  test "should destroy customer_address" do
    assert_difference('CustomerAddress.count', -1) do
      delete customer_address_url(@customer_address), as: :json
    end

    assert_response 204
  end
end

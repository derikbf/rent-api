require "test_helper"

class RentalCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rental_company = rental_companies(:one)
  end

  test "should get index" do
    get rental_companies_url, as: :json
    assert_response :success
  end

  test "should create rental_company" do
    assert_difference('RentalCompany.count') do
      post rental_companies_url, params: { rental_company: { avatar: @rental_company.avatar, cel_phone: @rental_company.cel_phone, cnpj: @rental_company.cnpj, corporate_name: @rental_company.corporate_name, email: @rental_company.email, fantasy_name: @rental_company.fantasy_name, phone: @rental_company.phone } }, as: :json
    end

    assert_response 201
  end

  test "should show rental_company" do
    get rental_company_url(@rental_company), as: :json
    assert_response :success
  end

  test "should update rental_company" do
    patch rental_company_url(@rental_company), params: { rental_company: { avatar: @rental_company.avatar, cel_phone: @rental_company.cel_phone, cnpj: @rental_company.cnpj, corporate_name: @rental_company.corporate_name, email: @rental_company.email, fantasy_name: @rental_company.fantasy_name, phone: @rental_company.phone } }, as: :json
    assert_response 200
  end

  test "should destroy rental_company" do
    assert_difference('RentalCompany.count', -1) do
      delete rental_company_url(@rental_company), as: :json
    end

    assert_response 204
  end
end

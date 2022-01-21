class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :rental_company_id, :avatar, :corporate_name,
                                               :fantasy_name,
                                               :email, 
                                               :cnpj, 
                                               :phone, 
                                               :cel_phone,
                                               :customer_address
                                                           

  link(:self) {api_v1_rental_company_customers_url(object.id)}
end

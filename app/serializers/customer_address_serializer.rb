class CustomerAddressSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :country, :uf, :city, :district, :street, :complement, :number, :cep

  link(:self) {api_v1_rental_company_customer_addresses_url(object.id)}
end

class AutoFuelSerializer < ActiveModel::Serializer
  attributes :id, :rental_company_id, :fuel

  link(:self) {api_v1_rental_company_auto_fuel_url(object.id)}
end

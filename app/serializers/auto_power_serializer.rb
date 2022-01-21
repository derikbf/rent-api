class AutoPowerSerializer < ActiveModel::Serializer
  attributes :id, :rental_company_id, :power

  link(:self) {api_v1_rental_company_auto_power_url(object.id)}
end

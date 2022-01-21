class AutoMileageSerializer < ActiveModel::Serializer
  attributes :id, :rental_company_id, :mileage

  link(:self) {api_v1_rental_company_auto_mileages_url(object.id)}
end

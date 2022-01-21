class AutoYearSerializer < ActiveModel::Serializer
  attributes :id, :rental_company_id, :year

  link(:self) {api_v1_rental_company_auto_years_url(object.id)}
end

class AutoModelSerializer < ActiveModel::Serializer
  attributes :id, :rental_company_id, :name

  link(:self) {api_v1_rental_company_auto_models_url(object.id)}
end

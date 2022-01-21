class AutoSerializer < ActiveModel::Serializer
  attributes :id, :rental_company_id, :category_id, :name, :description

  link(:self) {api_v1_rental_company_auto_url(object.id)}
end

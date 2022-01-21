class CategorySerializer < ActiveModel::Serializer
  attributes :id, :rental_company_id, :name, :description

  link(:self) {api_v1_rental_company_categories_url(object.id)}
end

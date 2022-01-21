class AutoDirectionSerializer < ActiveModel::Serializer
  attributes :id, :rental_company_id, :direction

  link(:self) {api_v1_rental_company_auto_directions_url(object.id)}
end

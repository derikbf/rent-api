class AutoDoorSerializer < ActiveModel::Serializer
  attributes :id, :rental_company_id, :door 

  link(:self) {api_v1_rental_company_auto_doors_url(object.id)}
end

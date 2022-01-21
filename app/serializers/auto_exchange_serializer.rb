class AutoExchangeSerializer < ActiveModel::Serializer
  attributes :id, :rental_company_id, :exchange

  link(:self) {api_v1_rental_company_auto_exchanges_url(object.id)}
end

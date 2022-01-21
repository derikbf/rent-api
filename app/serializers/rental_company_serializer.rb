class RentalCompanySerializer < ActiveModel::Serializer
  attributes :id, :avatar, :corporate_name, :fantasy_name, :email, :cnpj, :phone, :cel_phone

  link(:self) {api_v1_rental_company_url(object.id)}
end

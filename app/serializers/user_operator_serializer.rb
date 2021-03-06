class UserOperatorSerializer < ActiveModel::Serializer
  attributes :id, :rental_company_id, :avatar, :name, :username, :email, :password_digest, :cpf, :phone

  link(:self) {api_v1_rental_company_user_operators_url(object.id)}

end

class RatingSerializer < ActiveModel::Serializer
  attributes :id, :booking_id, :star, :description

  link(:self) {api_v1_booking_ratings_url(object.id)}  
end

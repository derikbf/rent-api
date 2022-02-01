class BookingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :customer_id, :auto_id, :start_date, :end_date, :total

  link(:self) {api_v1_booking_url(object.id)}
end

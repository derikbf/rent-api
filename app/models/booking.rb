class Booking < ApplicationRecord
  acts_as_paranoid

  belongs_to :auto
  belongs_to :customer, optional:true
  belongs_to :user_consumer, optional:true

  enum status: [:progress, :done, :cancelled]
  
  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date

  validate :validate_other_booking_overlap

  def period
    start_date..end_date
  end

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end

  def validate_other_booking_overlap
    other_bookings = Booking.all
    is_overlapping = other_bookings.any? do |other_booking|
      period.overlaps?(other_booking.period)
    end
    errors.add(:overlaps_with_other, "Car is already booked in this time period") if is_overlapping
  end

end


# -----------------------------------
# validate :no_reservation_overlap
  
# private

# def no_reservation_overlap
#   if (Booking.where("(? BETWEEN start_date AND end_date OR ? BETWEEN start_date AND end_date)", self.start_date, self.end_date).any?)
#      errors.add(:end_date, 'it overlaps another reservation')
#   end
# end


# ----------------------------
# def booking_period_is_available
#   return unless 
#    Booking.where.not(id: id)
#           .where(`start_date < ? && ? < end_date`, end_date, start_date)
#           .exists?

#     errors.add(:base, "Car is already booked in this time period")
# ends
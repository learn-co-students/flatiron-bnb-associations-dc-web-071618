class Reservation < ActiveRecord::Base
  belongs_to :guest, class_name: "User"
  belongs_to :listing
  has_one :review
  has_many :trips, class_name: "Reservation", foreign_key: "guest_id"
end

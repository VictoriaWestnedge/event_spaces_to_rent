class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event_space
  validates :start_date, :end_date, :qty_hour, presence: true
end

class EventSpace < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :adress, :description, :price_per_hour, :min_hour, :city, presence: true
  has_one_attached :photo
end

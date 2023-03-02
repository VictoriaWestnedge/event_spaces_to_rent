class EventSpace < ApplicationRecord
  belongs_to :user
  has_many :bookings
  geocoded_by :address #sobre que lo  georeferenciamos
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, :address, :description, :price_per_hour, :min_hour, :city, presence: true
  has_one_attached :photo

  include PgSearch::Model
    pg_search_scope :search_by_city_and_name_and_description,
    against: [ :city, :name, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `sant` will return something! santiago de chile
    }
end

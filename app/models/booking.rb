class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event_space
  validates :start_date, :end_date, :qty_hour, presence: true
  validate :start_date_after_today
  validate :end_date_after_start_date

  private

  def start_date_after_today
    errors.add(:start_date, 'debe ser posterior a la fecha actual') unless start_date > Date.today
  end

  def end_date_after_start_date
    errors.add(:end_date, 'debe ser posterior a la fecha de inicio') unless end_date > start_date
  end
end

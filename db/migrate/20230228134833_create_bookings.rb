class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event_space, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :qty_hour
      t.integer :total_cost

      t.timestamps
    end
  end
end

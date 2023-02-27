class CreateEventSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :event_spaces do |t|
      t.string :name
      t.string :adress
      t.string :description
      t.integer :price_per_hour
      t.integer :min_hour
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

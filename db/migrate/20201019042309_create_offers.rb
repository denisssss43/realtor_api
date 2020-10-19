class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.references :resource, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.decimal :price, precision: 15, scale: 2, null: false
      t.integer :square_meters
      t.integer :room_count
      t.integer :floor_number
      t.integer :apartment_number
      t.boolean :is_furniture
      t.boolean :is_realtor, default: false
      t.integer :rental_period, default: 1
      t.text :description, unique: true, null: false
      t.integer :sidekiq_status, null: false, default: 0

      t.timestamps
    end
  end
end

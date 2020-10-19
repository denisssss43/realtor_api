class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.references :resource, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.decimal :price, precision: 15, scale: 2
      t.int :square_meters
      t.int :room_count
      t.int :floor_number
      t.int :apartment_number
      t.boolean :is_furniture
      t.boolean :is_realtor
      t.int :rental_period
      t.text :description
      t.int :sidekiq_status

      t.timestamps
    end
  end
end

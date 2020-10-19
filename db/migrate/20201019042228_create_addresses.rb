class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :city, null: false, foreign_key: true
      t.string :title
      t.decimal :latitude, precision: 15, scale: 6
      t.decimal :longitude, precision: 15, scale: 6

      t.timestamps
    end
  end
end

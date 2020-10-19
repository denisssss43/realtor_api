class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.references :country, null: false, foreign_key: true
      t.string :title, null: false

      t.timestamps
    end
  end
end

class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.references :country, null: false, foreign_key: true
      t.string :title, null: false

      t.timestamps
    end
  end
end

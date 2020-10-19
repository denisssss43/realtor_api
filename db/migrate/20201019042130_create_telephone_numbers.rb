class CreateTelephoneNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :telephone_numbers do |t|
      t.string :value, null: false, unique: true

      t.timestamps
    end
  end
end

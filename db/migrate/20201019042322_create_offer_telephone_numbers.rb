class CreateOfferTelephoneNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :offer_telephone_numbers do |t|
      t.references :offer, null: false, foreign_key: true
      t.references :telephone_number, null: false, foreign_key: true

      t.timestamps
    end
  end
end

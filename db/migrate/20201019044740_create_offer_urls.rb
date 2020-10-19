class CreateOfferUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :offer_urls do |t|
      t.references :offer, null: false, foreign_key: true
      t.references :url, null: false, foreign_key: true

      t.timestamps
    end
  end
end

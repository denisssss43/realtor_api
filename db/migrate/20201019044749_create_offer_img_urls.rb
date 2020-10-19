class CreateOfferImgUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :offer_img_urls do |t|
      t.references :offer, null: false, foreign_key: true
      t.references :img_url, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateOfferHashtags < ActiveRecord::Migration[6.0]
  def change
    create_table :offer_hashtags do |t|
      t.references :offer, null: false, foreign_key: true
      t.references :hashtag, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateImgUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :img_urls do |t|
      t.string :value

      t.timestamps
    end
  end
end

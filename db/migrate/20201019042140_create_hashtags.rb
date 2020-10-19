class CreateHashtags < ActiveRecord::Migration[6.0]
  def change
    create_table :hashtags do |t|
      t.string :value, null: false, unique: true

      t.timestamps
    end
  end
end

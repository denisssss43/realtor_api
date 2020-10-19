class CreateUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :urls do |t|
      t.string :value, null: false, unique: true

      t.timestamps
    end
  end
end

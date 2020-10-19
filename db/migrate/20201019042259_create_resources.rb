class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.references :resource_type, null: false, foreign_key: true
      t.references :url, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end

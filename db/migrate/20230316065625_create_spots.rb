class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.string :name, null: false
      t.text :text, null: false
      t.integer :region_id
      t.timestamps
    end
  end
end

class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.integer :gallery_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

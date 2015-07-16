class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.references :top, index: true, foreign_key: true
      t.references :bottom, index: true, foreign_key: true
      t.references :shoe, index: true, foreign_key: true
      t.references :accessory, index: true, foreign_key: true
      t.boolean :favorite, default: false
      t.string :dress_level

      t.timestamps null: false
    end
  end
end

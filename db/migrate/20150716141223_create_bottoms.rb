class CreateBottoms < ActiveRecord::Migration
  def change
    create_table :bottoms do |t|
      t.string :category
      t.string :color_family
      t.boolean :favorite, default: false

      t.timestamps null: false
    end
  end
end

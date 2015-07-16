class CreateTops < ActiveRecord::Migration
  def change
    create_table :tops do |t|
      t.string :category
      t.string :color_family
      t.boolean :favorite, default: false

      t.timestamps null: false
    end
  end
end

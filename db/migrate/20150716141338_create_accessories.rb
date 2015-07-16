class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|
      t.string :category
      t.string :type
      t.string :color_family
      t.boolean :favorite, default: false

      t.timestamps null: false
    end
  end
end

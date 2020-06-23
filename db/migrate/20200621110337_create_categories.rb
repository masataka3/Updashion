class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.integer :sub_material_id
      t.integer :textile_id
      t.integer :shop_id
      t.integer :history_id

      t.timestamps
    end
  end
end

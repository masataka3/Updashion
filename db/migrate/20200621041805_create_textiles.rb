class CreateTextiles < ActiveRecord::Migration[5.2]
  def change
    create_table :textiles do |t|
      t.integer :image_id
      t.text :body
      t.string :title

      t.timestamps
    end
  end
end

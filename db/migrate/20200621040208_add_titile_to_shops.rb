class AddTitileToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :title, :string
    add_column :shops, :body, :text
    add_column :shops, :image_id, :integer
  end
end

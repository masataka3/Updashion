# frozen_string_literal: true

class AddTitileToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :title, :string
    add_column :shops, :body, :text
    add_column :shops, :image, :string
    add_column :shops, :address, :string
    add_column :shops, :latitude, :float
    add_column :shops, :longitude, :float
  end
end

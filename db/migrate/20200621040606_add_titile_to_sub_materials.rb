# frozen_string_literal: true

class AddTitileToSubMaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :sub_materials, :title, :string
    add_column :sub_materials, :body, :text
    add_column :sub_materials, :image, :string
  end
end

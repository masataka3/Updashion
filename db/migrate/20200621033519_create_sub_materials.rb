# frozen_string_literal: true

class CreateSubMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_materials, &:timestamps
  end
end

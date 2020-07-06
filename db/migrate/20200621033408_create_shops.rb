# frozen_string_literal: true

class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops, &:timestamps
  end
end

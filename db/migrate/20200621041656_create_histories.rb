# frozen_string_literal: true

class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.string :image
      t.text :body
      t.string :title

      t.timestamps
    end
  end
end

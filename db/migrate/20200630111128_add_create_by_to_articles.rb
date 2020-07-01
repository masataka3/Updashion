class AddCreateByToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :created_by, :string
    add_column :articles, :updated_by, :string
  end
end

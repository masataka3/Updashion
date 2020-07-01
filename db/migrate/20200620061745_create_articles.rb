class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.integer :category_id
      t.integer :comment_id
      t.integer :like_id
      t.string :title
      t.text :body
      t.string :image_id
      
      t.timestamps
    end
  end
end

class Article < ApplicationRecord
	belongs_to :user
    attachment :image
    has_many :comments, dependent: :destroy
    attachment :image


    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end
end

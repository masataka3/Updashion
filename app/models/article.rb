class Article < ApplicationRecord
	belongs_to :user
    attachment :image
    has_many :comments, dependent: :destroy
    has_many :favorites, dependent: :destroy
    attachment :image

    with_options presence: true do
    validates :title
    validates :body
  end
    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end
end

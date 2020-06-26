class Article < ApplicationRecord
	belongs_to :user
    attachment :image
    has_many :comments, dependent: :destroy
    has_many :favorites, dependent: :destroy
    has_many :clips
    with_options presence: true do
    validates :title
    validates :body
  end
    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end

    acts_as_taggable
end

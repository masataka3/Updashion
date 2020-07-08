# frozen_string_literal: true

class Article < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  with_options presence: true do
    validates :title, length: { maximum: 200 }
    validates :body
  end
  def bookmark_by?(user)
    bookmarks.where(user_id: user.id).exists?
  end

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  acts_as_taggable
end

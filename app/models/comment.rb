# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article
  validates :comment, presence: true
  attachment :profile_image, destroy: false
end

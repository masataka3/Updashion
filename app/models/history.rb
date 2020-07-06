# frozen_string_literal: true

class History < ApplicationRecord
  mount_uploader :image, ImageUploader
end

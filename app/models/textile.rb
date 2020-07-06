# frozen_string_literal: true

class Textile < ApplicationRecord
  mount_uploader :image, ImageUploader
end

# frozen_string_literal: true

class SubMaterial < ApplicationRecord
  mount_uploader :image, ImageUploader
end

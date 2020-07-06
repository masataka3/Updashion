# frozen_string_literal: true

class Shop < ApplicationRecord
  mount_uploader :image, ImageUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end

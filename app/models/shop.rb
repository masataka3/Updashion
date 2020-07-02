class Shop < ApplicationRecord
  mount_uploader :image, ImageUploader

  geocoded_by :address
  after_validation :geocode
  def self.search(search, shop_or_sub_material_or_textile_or_history)
    if shop_or_sub_material_or_textile_or_history == "1"
      Shop.where(['title LIKE ?', "%#{search}%"])
    end
  end
end

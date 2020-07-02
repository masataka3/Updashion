class History < ApplicationRecord
  mount_uploader :image, ImageUploader

  def self.search(search, shop_or_sub_material_or_textile_or_history)
    if shop_or_sub_material_or_textile_or_history == "4"
      Shop.where(['title LIKE ?', "%#{search}%"])
  end
   end
end

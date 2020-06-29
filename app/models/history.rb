class History < ApplicationRecord
	mount_uploader :image, ImageUploader

  	def Shop.search(search, shop_or_sub_material_or_textile_or_history, how_search)
	    if shop_or_sub_material_or_textile_or_history == "1"
	      if how_search == "1"
	         Shop.where(['title LIKE ?', "%#{search}%"])
	       elsif how_search == "2"
	         Shop.where(['title LIKE ?', "%#{search}"])
	       elsif how_search == "3"
	         Shop.where(['title LIKE ?', "#{search}%"])
	       elsif how_search == "4"
	         Shop.where(['title LIKE ?', "#{search}"])
	       else
	         Shop.all
	       end
    	end
  	end
end

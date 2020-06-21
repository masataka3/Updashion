class Shop < ApplicationRecord
	belongs_to :category
	attachment :image

end

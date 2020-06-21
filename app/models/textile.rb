class Textile < ApplicationRecord
	belongs_to :category
	attachment :image

end

class SubMaterial < ApplicationRecord
	belongs_to :category
	attachment :image

end

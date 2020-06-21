class History < ApplicationRecord
	belongs_to :category
	attachment :image

end

class Category < ApplicationRecord
	has_many :textiles
	has_many :sub_materials
	has_many :shops
	has_many :historys
end

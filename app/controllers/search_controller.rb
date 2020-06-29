class SearchController < ApplicationController

	def search
	  	@shop_or_sub_material_or_textile_or_history = params[:option]
		@how_search = params[:choice]

		if @shop_or_sub_material_or_textile_or_history == "1"
		   @shops = Shop.search(params[:search], @shop_or_sub_material_or_textile_or_history, @how_search)
		elsif
		   @sub_materials = SubMaterial.search(params[:search], @shop_or_sub_material_or_textile_or_history, @how_search)
		elsif
		   @textiles = Textile.search(params[:search], @shop_or_sub_material_or_textile_or_history, @how_search)
		elsif
		   @history = History.search(params[:search], @shop_or_sub_material_or_textile_or_history, @how_search)
	    end
	end
end

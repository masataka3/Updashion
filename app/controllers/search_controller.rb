class SearchController < ApplicationController
  def search
    @shop_or_sub_material_or_textile_or_history = params[:option]

    if @shop_or_sub_material_or_textile_or_history == "1"
      @shops = Shop.search(params[:search], @shop_or_sub_material_or_textile_or_history)
    elsif @shop_or_sub_material_or_textile_or_history == "2"
      @sub_materials = SubMaterial.search(params[:search], @shop_or_sub_material_or_textile_or_history)
    elsif @shop_or_sub_material_or_textile_or_history == "3"
      @textiles = Textile.search(params[:search], @shop_or_sub_material_or_textile_or_history)
    elsif @shop_or_sub_material_or_textile_or_history == "4"
      @history = History.search(params[:search], @shop_or_sub_material_or_textile_or_history)
       end
  end
end

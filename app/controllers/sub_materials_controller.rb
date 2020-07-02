class SubMaterialsController < ApplicationController
  def index
    @sub_materials = SubMaterial.page(params[:page]).reverse_order
  end

  def show
    @sub_material = SubMaterial.find(params[:id])
  end

  def search
    method = params[:search_method]
    word = params[:search_word]
    @sub_materials = SubMaterial.search(method, title)
  end

  private

  def sub_material_params
    params.require(:sub_material).permit(:title, :body, :image)
  end
end

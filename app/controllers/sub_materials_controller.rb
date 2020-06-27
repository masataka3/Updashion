class SubMaterialsController < ApplicationController
  def index
  	@sub_materials = SubMaterial.all
  end

  def show
  	@sub_material = SubMaterial.find(params[:id])
  end

  def new
  	@sub_material = SubMaterial.new
  end

   def create
    @sub_material = SubMaterial.new(sub_material_params)
    @sub_material.save
  end

  def edit
    @sub_material = SubMaterial.find(params[:id])
  end

  def delete
    @sub_material = SubMaterial.find(params[:id])
    @sub_material.destory
    redirect_to sub_materials_path
  end

  private
  def sub_material_params
    params.require(:sub_material).permit(:title,:body,:image)
  end
end

end

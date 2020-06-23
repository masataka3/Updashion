class SubMaterialsController < ApplicationController
  def index
  	@sub_materials = SubMaterial.all
  end

  def show
  	@sub_material = SubMaterial.new
  end

  def new
  	@sub_material = SubMaterial.new
  end

  def edit
  end

end

class SubMaterialsController < ApplicationController
  def index
  	@sub_materials = Sub_material.all
  end

  def show
  	@sub_material = Sub_material.new
  end

  def new
  	@sub_material = Sub_material.new
  end

  def edit
  end

end

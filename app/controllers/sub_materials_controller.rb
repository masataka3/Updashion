# frozen_string_literal: true

class SubMaterialsController < ApplicationController
  before_action :authenticate_user!
  def index
    @sub_materials = SubMaterial.page(params[:page]).reverse_order
  end

  def show
    @sub_material = SubMaterial.find(params[:id])
  end

  private

  def sub_material_params
    params.require(:sub_material).permit(:title, :body, :image)
  end
end

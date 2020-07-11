# frozen_string_literal: true

class ShopsController < ApplicationController
  before_action :authenticate_user!
  def index
    @shops = Shop.page(params[:page]).reverse_order
  end

  def show
    @shop = Shop.find(params[:id])
  end

  private

  def shop_params
    params.require(:shop).permit(:title, :body, :image, :access, :address, :latitude, :longitude)
  end
end

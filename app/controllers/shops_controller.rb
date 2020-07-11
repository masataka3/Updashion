# frozen_string_literal: true

class ShopsController < ApplicationController
  before_action :authenticate_user!
  def index
    @shops = Shop.page(params[:page]).reverse_order
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def search
    method = params[:search_method]
    word = params[:search_word]
    @shops = Shop.search(method, title)
  end

  private

  def shop_params
    params.require(:shop).permit(:title, :body, :image, :access, :address, :latitude, :longitude)
  end
end

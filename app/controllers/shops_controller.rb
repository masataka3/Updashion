class ShopsController < ApplicationController
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
    params.require(:shop).permit(:title, :body, :image, :address, :latitude, :longitude)
  end
end

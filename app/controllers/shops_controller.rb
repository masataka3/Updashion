class ShopsController < ApplicationController
  def index
  	@shops = Shop.all
  end

  def show
  	@shop = Shop.find(params[:id])
  end

  private
  def shop_params
  	params.require(:shop).permit(:title, :body, :image, :address, :latitude, :longitude)
  end
end





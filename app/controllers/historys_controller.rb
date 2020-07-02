class HistorysController < ApplicationController
  def index
    @historys = History.page(params[:page]).reverse_order
  end

  def show
    @history = History.find(params[:id])
  end

  def search
    method = params[:search_method]
    word = params[:search_word]
    @historys = History.search(method, title)
  end

  private

  def shop_params
    params.require(:shop).permit(:title, :body, :image)
  end
end

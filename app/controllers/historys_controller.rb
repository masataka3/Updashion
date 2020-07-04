class HistorysController < ApplicationController
  before_action :authenticate_user!
  def index
    @histories = History.page(params[:page]).reverse_order
  end

  def show
    @history = History.find(params[:id])
  end

  def search
    logger.debug (params)
    method = params[:search_method]
    word = params[:search_word]
    @historys = History.search(method, title)
  end

  private

  def shop_params
    params.require(:history).permit(:title, :body, :image)
  end
end

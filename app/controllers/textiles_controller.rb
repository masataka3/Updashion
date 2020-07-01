class TextilesController < ApplicationController
  def index
  	@textiles = Textile.page(params[:page]).reverse_order
  end

  def show
  	@textile = Textile.find(params[:id])
  end

   def search
    method = params[:search_method]
    word = params[:search_word]
    @textile = Textile.search(method,title)
  end


  private
  def textile_params
  	params.require(:textile).permit(:title,:body,:image)
  end
end

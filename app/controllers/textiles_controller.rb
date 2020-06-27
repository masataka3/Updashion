class TextilesController < ApplicationController
  def index
  	@textiles = Textile.all
  end

  def show
  	@textile = Textile.find(params[:id])
  end

  def new
  	@textile = Textile.new

  end

  def create
  	@textile = Textile.new(textile_params)
  	@textile.save
  end

  def edit
  	@textile = Textile.find(params[:id])
  end

  def delete
  	@textile = Textile.find(params[:id])
  	@textile.destory
  	redirect_to textiles_path
  end

  private
  def textile_params
  	params.require(:textile).permit(:title,:body,:image)
  end
end

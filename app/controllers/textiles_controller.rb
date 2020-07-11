# frozen_string_literal: true

class TextilesController < ApplicationController
  before_action :authenticate_user!
  def index
    @textiles = Textile.page(params[:page]).reverse_order
  end

  def show
    @textile = Textile.find(params[:id])
  end

  private

  def textile_params
    params.require(:textile).permit(:title, :body, :image)
  end
end

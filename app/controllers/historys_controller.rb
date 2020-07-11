# frozen_string_literal: true

class HistorysController < ApplicationController
  before_action :authenticate_user!
  def index
    @histories = History.page(params[:page]).reverse_order
  end

  def show
    @history = History.find(params[:id])
  end

  private

  def shop_params
    params.require(:history).permit(:title, :body, :image)
  end
end

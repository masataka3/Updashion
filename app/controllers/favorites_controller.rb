class FavoritesController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    favorite = @article.favorites.build(user_id: current_user.id)
    favorite.save
  end

  def destroy
    @article = Article.find(params[:article_id])
    @favorite = current_user.favorites.find_by(article_id: @article.id)
    @favorite.destroy
  end
end

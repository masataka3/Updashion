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

  private

  def redirect
    case params[:redirect_id].to_i
    when 0
      redirect_to articles_path
    when 1
      redirect_to article_path(@article)
    end
end
end

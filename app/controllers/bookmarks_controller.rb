class BookmarksController < ApplicationController

  def create
  	@article = Article.find(params[:article_id])
    @bookmark = @article.bookmarks.build(user_id: current_user.id)
    @bookmark.save

  end

  def destroy
  	@article = Article.find(params[:article_id])
    @bookmark = current_user.bookmarks.find_by(article_id: @article.id)
    @bookmark.destroy
  end

end

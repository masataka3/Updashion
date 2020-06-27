class BookmarksController < ApplicationController
  def create
    bookmark = current_user.bookmarks.build(article_id: params[:article_id])
    bookmark.save!
    redirect_to articles_path, success: t('.flash.bookmark')
  end

  def destroy
    bookmark = current_user.bookmarks.find_by(article_id: params[:article_id])
    bookmark.destroy!
    redirect_to articles_path, success: t('.flash.not_bookmark')
  end
end
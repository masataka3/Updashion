class BookmarksController < ApplicationController
  def create
    bookmark = current_user.bookmarks.build(article_id: params[:article_id])
    bookmark.save!
    redirect_back(fallback_location: root_path)
  end

  def destroy
    bookmark = current_user.bookmarks.find_by(article_id: params[:article_id])
    bookmark.destroy!
    redirect_back(fallback_location: root_path)
  end
end
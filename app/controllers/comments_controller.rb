# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = current_user.comments.new(comment_params)
    @comment.article_id = @article.id
    if @comment.save!
    else
      @comments = Comment.where(id: @article)
    end
  end

  def destroy
    @comment = Comment.find(params[:article_id])
    @article = @comment.article
    @comment.destroy!
    end

  private

  def comment_params
    params.require(:comment).permit(:comment, :profile_image)
  end
end

class ArticlesController < ApplicationController
  def index
    @articles = Article.page(params[:page]).reverse_order
  end

  def show
    @article = Article.find(params[:id])
    @articles = Article.all
    @comment = Comment.new
    @article_comments = @article.comments
    @user = User.find_by(id: @article.user_id)
  end

  def create
    @article = Article.new(article_params)
    @article[:created_by] = current_user.id
    @article[:updated_by] = current_user.id
    @article.user = current_user
    if @article.save
      redirect_to article_path(@article), notice: "新規投稿しました。"

    else
      render "new"
    end
  end

  def edit
    @article = Article.find(params[:id])
    if @article.user.id != current_user.id
      redirect_to articles_path
      end
    end

  def update
    @article = Article.find(params[:id])
    @article[:updated_by] = current_user.id
    if @article.update(article_params)
      redirect_to article_path(@article), notice: "記事を更新しました。"
    else
      render :edit
    end
    end

  def new
    @article = Article.new
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path, notice: "記事を削除しました。"
  end

  def bookmarks
    @articles = current_user.bookmark_articles
  end

  def confirm
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :image, :tag_list)
  end
end

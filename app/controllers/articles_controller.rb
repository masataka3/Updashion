class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
		@comment = Comment.new
		@article_comments = @article.comments
		@user = User.find_by(id: @article.user_id)
	end

	def create
		@article = Article.new(article_params)
			@article.user = current_user
		if  @article.save
		    redirect_to  article_path(@article), notice: "新規投稿しました。"
		else
		   redirect_to article_path(@article)
		end
	end

	def edit
		@article = Article.faind(params[:id])
  end

	def update
		@article = Article.faind(params[:id])
		if  @article.update(article_params)
		    redirect_to article_path(@article), notice: "記事を更新しました。"
	end
  end

	def new
		@article = Article.new
	end

	def destroy
		@article = Article.faind(params[:id])
		@article.destroy
		redirect_to article_path(article), notice: "記事を削除しました。"
	end

	def confirm
	end

	private
	def article_params
		params.require(:article).permit(:title,:body,:image)
	end

end
class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
		@comment = Comment.new
	end

	def create
		@article = Article.new(article_params)
		@article = Article.find(params[:id])
		@article.user_id = current_user.id
		if
		  @article.save
		  redirect_to @article
		else
			render "index"
		end
	end

	def edit
		@article = Article.faind(params[:id])
	end

	def update
		@article = Article.faind(params[:id])
		@article.update(article_params)
	end

	def new
		@article = Article.new
	end

	def destroy
		@article = Article.faind(params[:id])
		@article.destroy
		redirect_to article_path(article)
	end

	def confirm
	end

	private
	def article_params
		params.require(:article).permit(:title,:body,:image)
	end

end

class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save #If this article passes the validation placed in models/article
      redirect_to @article #redirect to the article page
    else
      render 'new' #render the new article page again
    end

  end

private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end

class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]

	def index
    @articles = Article.all
    respond_to do |format|
      format.html
      format.js { render json: @articles }
    end
  end

  def new
    @article = Article.new
  end
   
  def show
  end
  
	def create
		@article = Article.new(article_param)
		if @article.save
		  redirect_to article_path(@article)
		else
		  render :new
		end
	end
  
  def edit
  end

  def update
	  if @article.update_attributes(article_param)
	    redirect_to article_path(@article)
	  else
	    render :edit
	  end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end 

  def home
  end  
   
  private

  def article_param
    params.require(:article).permit(:name,:description)
  end

  def find_article
    @article = Article.find(params[:id])
  end  
end



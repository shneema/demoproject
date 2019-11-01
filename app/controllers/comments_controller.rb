class CommentsController < ApplicationController
	
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @article = @comment.article_id 
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:user_id, :comment)
    end
end



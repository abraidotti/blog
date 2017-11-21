class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    current_user.comments << @comment
    current_user.save
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    if @comment.user_id == current_user.id
      @comment.destroy
      redirect_to article_path(@article)
    else
      redirect_to article_path(@article), notice: "bad commenter id"
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:body)
    end

end

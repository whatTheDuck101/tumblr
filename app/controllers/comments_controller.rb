class CommentsController < ApplicationController
  before_action :post_comment_find, only: [:create, :destroy, :edit, :update]
  def create
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def edit 
  end
  def update 
  end

  def destroy
    @comment.destory
    redirect_to post_path(@post)
  end

  private
  def post_comment_find 
    @post = Post.find(params[:post_id])
    @comment = @post.comment.find(params[:id])

  end

  def comment_params
    params.require[:comment].permit(:name, :body)
  end
end

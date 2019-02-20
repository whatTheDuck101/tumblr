class PostsController < ApplicationController
  
  def index
    @posts = Post.all.order('created_at DESC')
  end
  def new
    @oost = Post.new
  end
  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end
  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end 

  def destroy
  end


  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
  def post_find 
    @post = Post.find(params[:id])
  end 

end

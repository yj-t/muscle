class PostsController < ApplicationController

  def index
    @posts = Post.all
    @menus = Menu.all
  end

  def new
    @post = Post.new
    @post.menus.build
  end

  def create
    #@post = Post.new(post_params)
    @post = current_user.posts.new(menu_params)
    # binding.pry
    @post.save
    redirect_to posts_path
  end

  private
  def menu_params
    params.require(:post).permit(:title, menus_attributes: [:training_type, :count, :user_id])
  end
end

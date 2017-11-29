class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    #@post = Post.new(post_params)
    @menu = Menu.new(menu_params)
    @menu.save
    redirect_to posts_path
  end

  private
  def menu_params
    params.permit(:count)
  end
end

# class PostsController < ApplicationController
#     def index
#     end
# end

class PostsController < ApplicationController

    def index
      @posts = Post.all
    end

    def new
    end

  end

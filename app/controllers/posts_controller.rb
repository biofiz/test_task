class PostsController < ApplicationController
  def index
    @posts = Post.last(10)
  end
end

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    if params.has_key?(:category)
      @category = Category.find_by_name(params[:category])
      @posts = Post.where(category: @category)
    else
      @posts = Post.all
    end

  end
end

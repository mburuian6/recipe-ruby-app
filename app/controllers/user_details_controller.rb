class UserDetailsController < ApplicationController

  def show
    @user = User.find(params[:user])
    @posts = find_all_posts_for_the_user(@user)
  end

  private
  def find_all_posts_for_the_user(user)
    posts = Post.where(user_id: user).order(:updated_at)
  end

end

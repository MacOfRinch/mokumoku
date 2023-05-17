class FollowsController < ApplicationController

  def create
    current_user.follow(params[:user_id], current_user.id)
    redirect_to request.referer
  end

  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.referer
  end

# フォローしているユーザー一覧
  def followings
    @users = current_user&.followings
  end
# フォロワー一覧
  def followers
    @users = current_user&.followers
  end
end

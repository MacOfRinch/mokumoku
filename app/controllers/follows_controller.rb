class FollowsController < ApplicationController
  before_action :set_user, only: %i[create destroy]

  def create
    current_user.follow(@user)
    redirect_to request.referer
  end

  def destroy
    current_user.unfollow(@user)
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

  private

  def set_user
    @user = User.find(params[:user_id])
  end
end

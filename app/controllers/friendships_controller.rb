class FriendshipsController < ApplicationController
  def create
    Friendship.create(friendship_params)
    redirect_to root_path
  end

  def destroy
  end

  private

  def friendship_params
    params.require(:friendship).permit(:user_id, :friend_id)
  end
end

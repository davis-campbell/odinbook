class UsersController < ApplicationController
  before_action :signed_in?

  def home
  end

  def show
    @user = User.find(params[:id])
    redirect_to root_path if @user == current_user
    @request = Request.new
  end

  private
    def signed_in?
      redirect_to new_user_session_path unless user_signed_in?
    end


end

class UsersController < ApplicationController
  def index
  	@users = User.all
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  	@users = User.all

  end


  def edit
  	 @user = User.find(params[:id])
  end

  private
  def user_params
  	params.require(:user).permit(:name,:profile,:profile_image)
  end

end

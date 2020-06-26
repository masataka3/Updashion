class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  	@users = User.all

  end

  def edit
  	 @user = User.find(params[:id])
     if @user != current_user
        redirect_to user_path(current_user), alert: "不正なアクセスです。"
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
     redirect_to user_path(@user), notice: "ユーザー情報を更新しました。"
    else
      render :edit
    end
  end

   def hide
        @user = User.find(params[:id])
        @user.update(is_deleted: true)
        reset_session
        flash[:notice] = "ありがとうございました。またのご利用を心よりお待ちしております。"
        redirect_to root_path
    end

  private
  def user_params
  	params.require(:user).permit(:name,:profile,:profile_image)
  end

end

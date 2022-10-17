class UsersController < ApplicationController

  def new
    @user=User.new
  end

  def show
    @user=User.find_by(id: current_user.id)
  end

  def update
    @user=current_user
    if @user.update(user_params)
       flash[:notice]="更新しました"
       redirect_to users_profile_path
    end
  end

  def profile
    @user=current_user
  end

  private
  def user_params
    params.require(:user).permit(:image,:name,:introduce)
  end

end

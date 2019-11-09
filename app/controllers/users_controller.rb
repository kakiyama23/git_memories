class UsersController < ApplicationController
  def show
    @user = User.find(@paramas[:id])
  end
  
  def edit
  end
  
  def update
    current_user.update(create_params)
  end
  
  private
  def create_params
  params.require(:user).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :nickname, :birthday, :gender)
  end
end

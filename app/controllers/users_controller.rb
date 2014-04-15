class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_parameters = params.require(:user).permit!
    @user = User.new(user_parameters)
    if @user.save
      flash[:notice] = 'User Successfully Created'
    else
      redirect_to action: :new
    end
  end
end
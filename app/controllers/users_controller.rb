class UsersController < ApplicationController

   def create
    create_user
    if user.save
      render json: @user
    else
      render json: @user.errors.full_messages, status: 400
    end
   end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.permit(:username, :ssn, :first_name, :last_name, :password)
  end

  def create_user(user_params)
    @user = User.new(user_params)
  end


end

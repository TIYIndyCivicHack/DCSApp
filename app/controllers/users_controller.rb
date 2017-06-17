class UsersController < ApplicationController
  before_action :current_user, only: [:update, :destroy]
  before_action :require_user, only: [:update, :destroy]

  def index
    render json: @current_user
  end

   def create
    create_user
    if user.save
      render json: @user, serializer: UserExpandedSerializer
    else
      render json: @user.errors.full_messages, status: 400
    end
   end

  def update
    if @current_user.id == params[:id].to_i
      if @current_user.update!(user_params)
        render json: @current_user
      else
        render json: @current_user.errors.full_messages
      end
    end
  end

  def destroy
    @user.destroy
    render json: ["User account deleted succesfully!"]
  end

  private

  def user_params
    params.permit(:username, :ssn, :first_name, :last_name, :password, :token)
  end

  def find_user
    @user = User.find(params[:id])
  end

  def create_user(user_params)
    @user = User.new(user_params)
  end


end

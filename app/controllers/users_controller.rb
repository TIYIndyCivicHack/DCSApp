class UsersController < ApplicationController
  before_action :current_user, only: [:update, :destroy]
  before_action :require_user, only: [:update, :destroy]

  def index
    render json: @current_user
  end

   def create
    create_user
    if @user.save
      render json: @user, serializer: UserExpandedSerializer
      initial_badges
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

  def create_user
    @user = User.new(user_params)
  end

  def initial_badges
    count = 1
      while count <= 3 do
        membership = @user.memberships.new(badge_id: count, user_id: @user, unlocked: true, complete: false)
        count += 1 if membership.save
      end
    @user.reload
  end

end

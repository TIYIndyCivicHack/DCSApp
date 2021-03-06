class SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params[:username])&.authenticate(params[:password])
    if @user
      render json: @user, serializer: UserExpandedSerializer
    else
      render json: ["Login failure. Please check credentials and try again."]
    end
  end

  def destroy
  end

end

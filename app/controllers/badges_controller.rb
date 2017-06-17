class BadgesController < ApplicationController

  def create
  end

  def update
  end

  def destroy
  end

  private

  def badge_params
    params.permit(:category, :complete, :unlocked, :user_id, :name, :points, :description)
  end
  
end

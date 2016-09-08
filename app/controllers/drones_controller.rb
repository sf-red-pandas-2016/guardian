class DronesController < ApplicationController

  def show
    @drone = Drone.find(params[:id])
    @user = current_user
    @friend = Friend.find(@user.friends.first.id)
    drone_path
  end

end

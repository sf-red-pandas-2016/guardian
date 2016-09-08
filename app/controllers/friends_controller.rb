class FriendsController < ApplicationController

  def index
    @friends = current_user.friends
  end

  def create
  end

  # def new
  # end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy

    redirect_to friends_path
  end

  def show
    @friend = Friend.find(params[:id])
  end

  def update
  end


end

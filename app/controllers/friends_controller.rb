class FriendsController < ApplicationController

  def index
    @friends = current_user.friends
  end

  def create
  end

  # def new
  # end

  def show
  end

  def update
  end

  def destroy
  end

end

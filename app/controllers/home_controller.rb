class HomeController < ApplicationController

  def index
    redirect_to '/users/show'
  end
end

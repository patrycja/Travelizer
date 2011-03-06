# controller for home index for creating index and profile sites 

class HomeController < ApplicationController
  def index
    if user_signed_in?
      render "profile"
    else
      render "index"
    end
  end

  def public_profile
    @username = params[:username] 
    @user = User.where("username = ?", @username).first
    if @user 
    else
      render "username_not_found"
    end
  end
end

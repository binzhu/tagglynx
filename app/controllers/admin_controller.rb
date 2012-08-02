class AdminController < ApplicationController
  def login
    if request.post?
      user = User.find_by_username(params[:username])
      if user && user.pwd == params[:pwd]
        session[:user_id] = user.id
        redirect_to '/'
      else
        redirect_to(:back, notice: "invalid login info")
      end
    end
  end

  def logout
    reset_session
    redirect_to '/admin/login'
  end
end

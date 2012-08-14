class AdminController < ApplicationController
  def login
    if request.post?
      user = User.find_by_username(params[:username])
      if user && user.pwd == params[:pwd]
        session[:user_id] = user.id
        
        if session[:url].nil? || session[:title].nil?
          localserver = 'http://localhost:3000'
          rackspaceserver = 'http://198.101.236.20:3000'
          redirect_to rackspaceserver
          return
        end
        redirect_to rackspaceserver + '?url='+session[:url] + '&title=' + session[:title]
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

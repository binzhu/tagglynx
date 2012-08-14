class AdminController < ApplicationController
  def login
    if request.post?
      user = User.find_by_username(params[:username])
      if user && user.pwd == params[:pwd]
        session[:user_id] = user.id
          localserver = 'http://localhost:3000'
          rackspaceserver = 'http://198.101.236.20:3000'
          
        if session[:url].nil? || session[:title].nil?
          redirect_to rackspaceserver # if this happens, session of url could not be set because no params is passed to index
          return                      # by default this should not happen since iframe is always loaded from when there is page open
        else
          redirect_to rackspaceserver + '?url='+session[:url] + '&title=' + session[:title]
          return
        end
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

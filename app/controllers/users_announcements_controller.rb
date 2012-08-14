class UsersAnnouncementsController < ApplicationController
  def dismiss
    if !params[:aid].nil? && false # disabled dismiss function here to test javascript remove "&& false" to enable
      ua = UsersAnnouncement.find(:first, :conditions=>["announcement_id=? AND user_id=?",params[:aid],session[:user_id]])
      puts ua.inspect
      ua.dismiss_date = Time.now
      ua.save!
    end
    return false
  end
  
  # GET /users_announcements
  # GET /users_announcements.json
  def index
    @users_announcements = UsersAnnouncement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users_announcements }
    end
  end

  # GET /users_announcements/1
  # GET /users_announcements/1.json
  def show
    @users_announcement = UsersAnnouncement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users_announcement }
    end
  end

  # GET /users_announcements/new
  # GET /users_announcements/new.json
  def new
    @users_announcement = UsersAnnouncement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @users_announcement }
    end
  end

  # GET /users_announcements/1/edit
  def edit
    @users_announcement = UsersAnnouncement.find(params[:id])
  end

  # POST /users_announcements
  # POST /users_announcements.json
  def create
    @users_announcement = UsersAnnouncement.new(params[:users_announcement])

    respond_to do |format|
      if @users_announcement.save
        format.html { redirect_to @users_announcement, notice: 'Users announcement was successfully created.' }
        format.json { render json: @users_announcement, status: :created, location: @users_announcement }
      else
        format.html { render action: "new" }
        format.json { render json: @users_announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users_announcements/1
  # PUT /users_announcements/1.json
  def update
    @users_announcement = UsersAnnouncement.find(params[:id])

    respond_to do |format|
      if @users_announcement.update_attributes(params[:users_announcement])
        format.html { redirect_to @users_announcement, notice: 'Users announcement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @users_announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_announcements/1
  # DELETE /users_announcements/1.json
  def destroy
    @users_announcement = UsersAnnouncement.find(params[:id])
    @users_announcement.destroy

    respond_to do |format|
      format.html { redirect_to users_announcements_url }
      format.json { head :no_content }
    end
  end
end

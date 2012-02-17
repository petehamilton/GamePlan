class UserSpecificGameplansController < ApplicationController
  # User needs to be logged in
  before_filter :authenticate

  # GET /user_specific_gameplans
  # GET /user_specific_gameplans.json
  def index
    @user_specific_gameplans = UserSpecificGameplan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_specific_gameplans }
    end
  end

  # GET /user_specific_gameplans/1
  # GET /user_specific_gameplans/1.json
  def show
    @user_specific_gameplan = UserSpecificGameplan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_specific_gameplan }
    end
  end

  # GET /user_specific_gameplans/new
  # GET /user_specific_gameplans/new.json
  def new
    @user_specific_gameplan = UserSpecificGameplan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_specific_gameplan }
    end
  end

  # GET /user_specific_gameplans/1/edit
  def edit
    @user_specific_gameplan = UserSpecificGameplan.find(params[:id])
  end

  # POST /user_specific_gameplans
  # POST /user_specific_gameplans.json
  def create
    @user_specific_gameplan = UserSpecificGameplan.new(params[:user_specific_gameplan])

    respond_to do |format|
      if @user_specific_gameplan.save
        format.html { redirect_to @user_specific_gameplan, notice: 'User specific gameplan was successfully created.' }
        format.json { render json: @user_specific_gameplan, status: :created, location: @user_specific_gameplan }
      else
        format.html { render action: "new" }
        format.json { render json: @user_specific_gameplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_specific_gameplans/1
  # PUT /user_specific_gameplans/1.json
  def update
    @user_specific_gameplan = UserSpecificGameplan.find(params[:id])

    respond_to do |format|
      if @user_specific_gameplan.update_attributes(params[:user_specific_gameplan])
        format.html { redirect_to @user_specific_gameplan, notice: 'User specific gameplan was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_specific_gameplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_specific_gameplans/1
  # DELETE /user_specific_gameplans/1.json
  def destroy
    @user_specific_gameplan = UserSpecificGameplan.find(params[:id])
    @user_specific_gameplan.destroy

    respond_to do |format|
      format.html { redirect_to user_specific_gameplans_url }
      format.json { head :ok }
    end
  end
end

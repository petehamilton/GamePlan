class GameplansController < ApplicationController
  # GET /gameplans
  # GET /gameplans.json
  def index
    @gameplans = Gameplan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gameplans }
    end
  end

  # GET /gameplans/1
  # GET /gameplans/1.json
  def show
    @gameplan = Gameplan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gameplan }
    end
  end

  # GET /gameplans/new
  # GET /gameplans/new.json
  def new
    @gameplan = Gameplan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gameplan }
    end
  end

  # GET /gameplans/1/edit
  def edit
    @gameplan = Gameplan.find(params[:id])
  end

  # POST /gameplans
  # POST /gameplans.json
  def create
    @gameplan = Gameplan.new(params[:gameplan])

    respond_to do |format|
      if @gameplan.save
        format.html { redirect_to @gameplan, notice: 'Gameplan was successfully created.' }
        format.json { render json: @gameplan, status: :created, location: @gameplan }
      else
        format.html { render action: "new" }
        format.json { render json: @gameplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gameplans/1
  # PUT /gameplans/1.json
  def update
    @gameplan = Gameplan.find(params[:id])

    respond_to do |format|
      if @gameplan.update_attributes(params[:gameplan])
        format.html { redirect_to @gameplan, notice: 'Gameplan was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @gameplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gameplans/1
  # DELETE /gameplans/1.json
  def destroy
    @gameplan = Gameplan.find(params[:id])
    @gameplan.destroy

    respond_to do |format|
      format.html { redirect_to gameplans_url }
      format.json { head :ok }
    end
  end
end

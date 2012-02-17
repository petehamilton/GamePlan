class CompletedChallengesController < ApplicationController
  # User needs to be logged in
  before_filter :authenticate

  # GET /completed_challenges
  # GET /completed_challenges.json
  def index
    @completed_challenges = CompletedChallenge.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @completed_challenges }
    end
  end

  # GET /completed_challenges/1
  # GET /completed_challenges/1.json
  def show
    @completed_challenge = CompletedChallenge.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @completed_challenge }
    end
  end

  # GET /completed_challenges/new
  # GET /completed_challenges/new.json
  def new
    @completed_challenge = CompletedChallenge.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @completed_challenge }
    end
  end

  # GET /completed_challenges/1/edit
  def edit
    @completed_challenge = CompletedChallenge.find(params[:id])
  end

  # POST /completed_challenges
  # POST /completed_challenges.json
  def create
    @completed_challenge = CompletedChallenge.new(params[:completed_challenge])

    respond_to do |format|
      if @completed_challenge.save
        format.html { redirect_to @completed_challenge, notice: 'Completed challenge was successfully created.' }
        format.json { render json: @completed_challenge, status: :created, location: @completed_challenge }
      else
        format.html { render action: "new" }
        format.json { render json: @completed_challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /completed_challenges/1
  # PUT /completed_challenges/1.json
  def update
    @completed_challenge = CompletedChallenge.find(params[:id])

    respond_to do |format|
      if @completed_challenge.update_attributes(params[:completed_challenge])
        format.html { redirect_to @completed_challenge, notice: 'Completed challenge was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @completed_challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /completed_challenges/1
  # DELETE /completed_challenges/1.json
  def destroy
    @completed_challenge = CompletedChallenge.find(params[:id])
    @completed_challenge.destroy

    respond_to do |format|
      format.html { redirect_to completed_challenges_url }
      format.json { head :ok }
    end
  end
end

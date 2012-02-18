class ChallengesController < ApplicationController
  before_filter :authorize
  
  # GET /challenges
  # GET /challenges.json
  def index
    @challenges = Challenge.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @challenges }
    end
  end

  # GET /challenges/1
  # GET /challenges/1.json
  def show
    @challenge = Challenge.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @challenge }
    end
  end

  # GET /challenges/new
  # GET /challenges/new.json
  def new
    @challenge = Challenge.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @challenge }
    end
  end

  # GET /challenges/1/edit
  def edit
    @challenge = Challenge.find(params[:id])
  end

  # POST /challenges
  # POST /challenges.json
  def create
    @challenge = Challenge.new(params[:challenge])

    respond_to do |format|
      if @challenge.save
        format.html { redirect_to @challenge, notice: 'Challenge was successfully created.' }
        format.json { render json: @challenge, status: :created, location: @challenge }
      else
        format.html { render action: "new" }
        format.json { render json: @challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /challenges/1
  # PUT /challenges/1.json
  def update
    @challenge = Challenge.find(params[:id])

    respond_to do |format|
      if @challenge.update_attributes(params[:challenge])
        format.html { redirect_to @challenge, notice: 'Challenge was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /challenges/1
  # DELETE /challenges/1.json
  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy

    respond_to do |format|
      format.html { redirect_to challenges_url }
      format.json { head :ok }
    end
  end
  

  def choose_challenges
    user = current_user || User.first
    @required_challenges = user.required_challenges
    @chosen_challenges = user.chosen_challenges
    @suggested_challenges = user.suggested_challenges(5)
  end
  
  def do_challenges
    user = current_user || User.first
    @challenges = user.all_challenges
    # raise @progress.inspect
    # raise @challenges.map{|c| c}.inspect
    num_complete = @challenges.select{|c| c.complete(user, user.user_specific_gameplan)}.count
    @progress = (num_complete + 0.0) / @challenges.count
  end
  
  def take_challenge
    @challenge = Challenge.find(params[:id])

    current_user.user_specific_gameplan.challenges << @challenge

    respond_to do |format|
      format.html { redirect_to challenges_url }
      format.json { head :ok }
    end
  end
  
  def submit_challenge
    challenge = Challenge.find(params[:challenge_id])
    challenge_completion = ChallengeCompletion.create({:writeup => params[:writeup], :challenge_id => challenge.id, :user_id => current_user.id, :user_specific_gameplan_id => current_user.user_specific_gameplan.id})
    redirect_to challenge
  end

  def remove_challenge
    @challenge = Challenge.find(params[:id])

    current_user.user_specific_gameplan.challenges.delete(@challenge)

    respond_to do |format|
      format.html { redirect_to challenges_url }
      format.json { head :ok }
    end
  end  
  
end

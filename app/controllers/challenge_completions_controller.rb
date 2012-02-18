class ChallengeCompletionsController < ApplicationController
  # GET /challenge_completions
  # GET /challenge_completions.json
  def index
    @challenge_completions = ChallengeCompletion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @challenge_completions }
    end
  end

  # GET /challenge_completions/1
  # GET /challenge_completions/1.json
  def show
    @challenge_completion = ChallengeCompletion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @challenge_completion }
    end
  end

  # GET /challenge_completions/new
  # GET /challenge_completions/new.json
  def new
    @challenge_completion = ChallengeCompletion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @challenge_completion }
    end
  end

  # GET /challenge_completions/1/edit
  def edit
    @challenge_completion = ChallengeCompletion.find(params[:id])
  end

  # POST /challenge_completions
  # POST /challenge_completions.json
  def create
    @challenge_completion = ChallengeCompletion.new(params[:challenge_completion])

    respond_to do |format|
      if @challenge_completion.save
        format.html { redirect_to @challenge_completion, notice: 'Challenge completion was successfully created.' }
        format.json { render json: @challenge_completion, status: :created, location: @challenge_completion }
      else
        format.html { render action: "new" }
        format.json { render json: @challenge_completion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /challenge_completions/1
  # PUT /challenge_completions/1.json
  def update
    @challenge_completion = ChallengeCompletion.find(params[:id])

    respond_to do |format|
      if @challenge_completion.update_attributes(params[:challenge_completion])
        format.html { redirect_to @challenge_completion, notice: 'Challenge completion was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @challenge_completion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /challenge_completions/1
  # DELETE /challenge_completions/1.json
  def destroy
    @challenge_completion = ChallengeCompletion.find(params[:id])
    @challenge_completion.destroy

    respond_to do |format|
      format.html { redirect_to challenge_completions_url }
      format.json { head :ok }
    end
  end
end

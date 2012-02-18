class ChallengeCompletion < ActiveRecord::Base
  belongs_to :challenge
  belongs_to :user
  belongs_to :user_specific_game_plan
  
  attr_accessible :challenge_id, :user_specific_gameplan, :user_specific_gameplan_id, :user, :user_id, :status, :writeup
end
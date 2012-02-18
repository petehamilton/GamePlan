class ChallengeCompletion < ActiveRecord::Base
  belongs_to :challenge
  belongs_to :user
  belongs_to :user_specific_game_plan
end
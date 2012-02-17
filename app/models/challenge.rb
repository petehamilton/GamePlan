class Challenge < ActiveRecord::Base
  belongs_to :user_specific_gameplan, :through => :usg_challenges
  belongs_to :gameplan, :through => :gameplans_challenges
end
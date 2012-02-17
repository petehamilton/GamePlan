class Challenge < ActiveRecord::Base
  has_many :user_specific_gameplans, :through => :usg_challenges
  has_many :gameplans, :through => :gameplans_challenges
end
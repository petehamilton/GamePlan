class Challenge < ActiveRecord::Base
  has_and_belongs_to_many :gameplans
  has_and_belongs_to_many :user_specific_gameplans
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :challenge_completions
  
  attr_accessible :summary, :description, :level
  
  def matches(skillable_obj)
    return skills - (skills - skillable_obj.skills)
  end
  
  def required(user)
    user.user_specific_gameplan.gameplan.challenges.include? self
  end
end
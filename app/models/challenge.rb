class Challenge < ActiveRecord::Base
  has_and_belongs_to_many :gameplans
  has_and_belongs_to_many :user_specific_gameplans
  has_and_belongs_to_many :skills
  has_many :challenge_completions
  
  attr_accessible :summary, :description, :level
  
  def matches(skillable_obj)
    return skills - (skills - skillable_obj.skills)
  end
  
  def required(user)
    user.user_specific_gameplan.gameplan.challenges.include? self
  end
  
  def complete(user, user_specific_gameplan)
    completions = challenge_completions.select{|c| c.user_specific_gameplan_id == user.user_specific_gameplan.id && c.status==1}
    return completions.length > 0
  end
  
  def pending(user, user_specific_gameplan)
    completions = challenge_completions.select{|c| c.user_specific_gameplan_id == user.user_specific_gameplan.id && c.status==0}
    return completions.length > 0
  end
  
  def incomplete(user, user_specific_gameplan)
    !complete(user, user_specific_gameplan) && !pending(user, user_specific_gameplan)
  end
end
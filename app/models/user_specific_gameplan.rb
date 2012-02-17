class UserSpecificGameplan < ActiveRecord::Base
  belongs_to :gameplan
  belongs_to :user
  has_and_belongs_to_many :challenges
  has_and_belongs_to_many :skills
  
  attr_accessible :gameplan_id, :user_id
  
    
  def matches(skillable_obj)
    return skills - (skills - skillable_obj.skills)
  end
end

class Gameplan < ActiveRecord::Base
  belongs_to :organisation  
  has_many :user_specific_gameplans
  has_and_belongs_to_many :challenges
  has_and_belongs_to_many :skills
  
  attr_accessible :name, :description, :organisation_id
  
  def matches(skillable_obj)
    return skills - (skills - skillable_obj.skills)
  end
end

class Skill < ActiveRecord::Base
  has_and_belongs_to_many :gameplans
  has_and_belongs_to_many :challenges
  
  attr_accessible :name
end

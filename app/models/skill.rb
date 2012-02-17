class Skill < ActiveRecord::Base
  has_and_belongs_to_many :gameplans
  has_and_belongs_to_many :user_specific_gameplans
  has_and_belongs_to_many :challenges
end

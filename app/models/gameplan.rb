class Gameplan < ActiveRecord::Base
  belongs_to :organisation
  
  has_many :user_specific_gameplans
  has_and_belongs_to_many :challenges
  
  attr_accessible :name, :description, :organisation_id
end

class UserSpecificGameplan < ActiveRecord::Base
  belongs_to :gameplan
  belongs_to :user
  has_and_belongs_to_many :challenges
  
  attr_accessible :gameplan_id, :user_id
end

class UserSpecificGameplan < ActiveRecord::Base
  belongs_to :gameplan
  belongs_to :user
  
  has_and_belongs_to_many :challenges
end

class User < ActiveRecord::Base
  include Clearance::User
  belongs_to :organisation
  has_one :user_specific_gameplan
  
  attr_accessible :first_name, :last_name, :email, :password, :rank
  
  validates_presence_of :rank
  
  validates_numericality_of :rank, :less_than_or_equal_to => 3,
                            :greater_than_or_equal_to => 1
                          
  
  def challenges
    user_specific_gameplan_challenges = user_specific_gameplan.challenges
    user_gameplan_challenges = user_specific_gameplan.gameplan.challenges
    return user_specific_gameplan_challenges + user_gameplan_challenges
  end
  
  def suggested_challenges(num)
    # Write some fancy algorithm here!
    return []
  end
end

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
  
  def desired_skills
    user_specific_gameplan.skills + user_specific_gameplan.game_plan.skills
  end
  
  def suggested_challenges(num)
    # Write some fancy algorithm here!
    all_desired_skills = desired_skills
    challenges.each do |c|
      c.matching_skills = desired_skills - (all_desired_skills - c.skills)
    end
    
    # Sort challenges based on matching
    
    return challenges[0..num]
  end
end

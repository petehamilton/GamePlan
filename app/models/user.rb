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
    user_specific_gameplan.skills + user_specific_gameplan.gameplan.skills
  end
  
  def suggested_challenges(num=0)
    # Write some fancy algorithm here!
    
    all_desired_skills = desired_skills
    cs = challenges
    cs.each do |c|
      c[:matching_skills] = desired_skills - (all_desired_skills - c.skills)
      puts "#{c.summary}: #{c[:matching_skills].inspect}"
    end
    
    # Sort challenges based on matching
    # raise cs.to_yaml
    if num > 0
      return cs[0..num]
    else
      return cs
    end
  end
end

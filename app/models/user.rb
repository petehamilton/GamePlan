class User < ActiveRecord::Base
  include Clearance::User
  belongs_to :organisation
  has_one :user_specific_gameplan
  
  attr_accessible :first_name, :last_name, :email, :password, :rank
  
  validates_presence_of :rank
  
  validates_numericality_of :rank, :less_than_or_equal_to => 3,
                            :greater_than_or_equal_to => 1
                          
    
  def required_challenges
    user_specific_gameplan.gameplan.challenges
  end
  
  def chosen_challenges
    user_specific_gameplan.challenges
  end
  
  def all_challenges
    required_challenges + chosen_challenges
  end
  
  def desired_skills
    user_specific_gameplan.gameplan.skills
  end
  
  def suggested_challenges(num=0)
    # Write some fancy algorithm here!
    
    all_desired_skills = desired_skills
    
    cs = all_challenges
    cs.each do |c|
      c[:matching_skills] = all_desired_skills - (all_desired_skills - c.skills)
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

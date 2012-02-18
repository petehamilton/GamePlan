class User < ActiveRecord::Base
  include Clearance::User
  belongs_to :organisation
  has_one :user_specific_gameplan
  has_one :gameplan, :through => :user_specific_gameplan
  
  attr_accessible :first_name, :last_name, :email, :password, :rank
  
  validates_presence_of :rank
  
  validates_numericality_of :rank, :less_than_or_equal_to => 3,
                            :greater_than_or_equal_to => 1
                          
    
  def required_challenges
    gameplan.challenges
  end
  
  def chosen_challenges
    user_specific_gameplan.challenges
  end
  
  def all_challenges
    required_challenges + chosen_challenges
  end
  
  def desired_skills
    gameplan.skills
  end
  
  def suggested_challenges(num=0)
    # Write some fancy algorithm here!
    
    all_desired_skills = desired_skills
    
    cs = Challenge.all - all_challenges
    cs.each do |c|
      c[:matching_skills] = all_desired_skills - (all_desired_skills - c.skills)
    end
    
    # sort descending
    cs.sort! { |a,b| b[:matching_skills].length <=> a[:matching_skills].length }
    cs = cs.find_all{ |c| c[:matching_skills].length > 0 }
    if num > 0
      return cs[0..num]
    else
      return cs
    end
  end
end

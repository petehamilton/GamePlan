class User < ActiveRecord::Base
  include Clearance::User
  belongs_to :organisation
  
  attr_accessible :first_name, :last_name, :email, :password, :rank
  
  validates_presence_of :rank
  
  validates_numericality_of :rank, :less_than_or_equal_to => 3,
                            :greater_than_or_equal_to => 1
end

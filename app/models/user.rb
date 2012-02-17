class User < ActiveRecord::Base
  include Clearance::User
  belongs_to :organisation
  
  attr_accessible :first_name, :last_name, :email, :password
end

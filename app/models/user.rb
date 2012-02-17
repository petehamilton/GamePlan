class User < ActiveRecord::Base
  include Clearance::User
  belongs_to :organisation
  
  attr_accessor :first_name, :last_name, :email, :password
end

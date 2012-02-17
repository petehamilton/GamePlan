class Organisation < ActiveRecord::Base
  has_many :gameplans
  
  attr_accessible :name
end

class Event < ActiveRecord::Base
  has_many :users
  has_one :location

  accepts_nested_attributes_for :location
  
  

end

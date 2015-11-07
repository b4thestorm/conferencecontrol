class Location < ActiveRecord::Base
  has_many :users 
  belongs_to :event

  accepts_nested_attributes_for :users
  

  CONFLOCATION = {
    conference1: 'email1@gmail.com',
    conference2: 'email2@gmail.com',
    conference3: 'email3@gmail.com'
  }


end

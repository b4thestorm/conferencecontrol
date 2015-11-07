class Location < ActiveRecord::Base
  has_many :users 
  belongs_to :event

  CONFLOCATION = {
    conf: 'email1@gmail.com',
    conf2: 'email2@gmail.com',
    conf3: 'email3@gmail.com'
  }

end

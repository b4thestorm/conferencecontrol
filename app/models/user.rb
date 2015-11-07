class User < ActiveRecord::Base
  belongs_to :event
  belongs_to :location

def self.convert(obj)
  list = []
  obj.each do |x|
   list << x.first_name
  end 
  list
end

end

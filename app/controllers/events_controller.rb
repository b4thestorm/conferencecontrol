class EventsController < ApplicationController

def new 
@event = Event.new
@event.build_location
end 

def create 
@event = Event.create(event_params)
if @event.save 
@location = Location.last
@location.update_attribute(:event_id, @event.id)
flash[:notice] = "A new event has been added."
binding.pry
redirect_to new_user_path
else 
flash[:notice] = "Failed to create meeting."
render :new
end 
end 

def show 

end 

def destroy 

end 

private 
def event_params 
params.require(:event).permit(:name, :start, :end ,:url, :notes, location_attributes: [:phone, :name])
end 

end 

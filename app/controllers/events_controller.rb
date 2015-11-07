class EventsController < ApplicationController

def new 
@event = Event.new
end 

def create 
@event = Event.new(event_params)
if @event.save 
  
flash[:notice] = "A new event has been added."
end 

end 

def show 

end 

def destroy 

end 

private 
def event_params 
params.require(:event).permit(:name, :start, :end)
end 

end 

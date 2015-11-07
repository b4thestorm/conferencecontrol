class EventsController < ApplicationController

def new 
@event = Event.new
@location = @event.build_location 
@location.users.build
@user = User.all
@user = User.convert(@user)
end 

def create 
@event = Event.create(event_params)
if @event.save 
@location = Location.last
@location.update_attribute(:event_id, @event.id)
flash[:notice] = "A new meeting has been added"
redirect_to event_path(@event)
else 
flash[:notice] = "Failed to create meeting."
render :new
end 
end 

def show 
@event = Event.find(params[:id])
end 

def edit 
@event = Event.find(params[:id])
@user = User.all 
@user = User.convert(@user)
end 

def update 
@event = Event.find(params[:id])
@user = User.all 
@user = User.convert(@user)
location = Location.where(event_id: params[:id]).take
location.users << User.where(first_name: params["event"]["location_attributes"]["users_attributes"]["0"]["first_name"]).take
location.save
flash[:notice] = "Participant has been added."
render :edit
  #User.where(first_name: params["event"]["location_attributes"]["users_attributes"]["0"]["first_name"]).take
end 

def destroy 

end 

private 
def event_params 
params.require(:event).permit(:name, :start, :end ,:url, :notes, location_attributes: [:phone, :name, users_attributes: [:first_name ] ] )
end 

end 

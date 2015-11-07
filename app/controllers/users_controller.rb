class UsersController < ApplicationController

def index 

end 

def new 
@user = User.new
end 

def create 
@user = User.new(user_params)
if @user.save 
  flash[:notice] = "Thank you for registering"
end 
redirect_to new_event_path
end 


def destroy 

end 

private

def user_params 
params.require(:user).permit(:first_name, :last_name, :phone, :email)
end

end 

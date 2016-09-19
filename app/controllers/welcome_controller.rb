class WelcomeController < ApplicationController

  def index
    @activities = current_user.get_voted(Activity).limit(6) 
    @bikes = current_user.get_voted(Bike).limit(20)
  end

end

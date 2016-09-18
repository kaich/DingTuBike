class WelcomeController < ApplicationController

  def index
      @bikes = current_user.get_voted(Bike).limit(20)
  end

end

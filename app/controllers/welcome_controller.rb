class WelcomeController < ApplicationController

  def index
      @bikes = Bike.all.limit(20)
      
  end

end

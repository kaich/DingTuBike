class WelcomeController < ApplicationController

  def index
    @activities = Activity.order(:cached_weighted_total => :desc).limit(6) 
    @bikes = Bike.order(:cached_weighted_total => :desc).limit(20)
  end

end

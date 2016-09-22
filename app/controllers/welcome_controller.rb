class WelcomeController < ApplicationController

  def index
    @hot_activities = Activity.order(:cached_weighted_total => :desc).limit(6) 
    @recent_activities = Activity.order(:created_at => :desc).limit(15) 
    @bikes = Bike.order(:cached_weighted_total => :desc).limit(20)
  end

end

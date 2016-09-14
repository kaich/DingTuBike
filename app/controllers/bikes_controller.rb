class BikesController  < ApplicationController

    include BikesHelper

    def index
      @bikes = Bike.paginate(:page => params[:page], :per_page => 3)
    end

    def new
      @bike = Bike.new
    end

    def create
      @bike = Bike.new(bike_params)

      respond_to do |wants|
          if @bike.save
              flash[:success] = "Successfully created..."
              wants.html { redirect_to(@bike) }
          else
              flash[:danger] = "Successfully created..."
              wants.html {render action: "new"}
          end
      end

    end

    def show
      @bike = Bike.find(params[:id])
    end

    def edit

    end

    def update

    end

    def favorite 
        @bike = Bike.find(params[:id])
        @isfavorite = favorite? @bike
        if @isfavorite 
            current_user.dislikes @bike                
            @isfavorite = false
        else
            current_user.likes @bike
            @isfavorite = true
        end
    end

private
    def bike_params
        params.require(:bike).permit(:name,:brand,:model,:made_address,:market_time,:information,{avatars: []})
    end

end

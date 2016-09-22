class BikesController  < ApplicationController

    include BikesHelper

    def index
      @bikes = Bike.search_by("name",params[:search]).paginate(:page => params[:page], :per_page => 20)
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
              flash[:danger] = "Failed created..."
              wants.html {render action: "new"}
          end
      end

    end


    def show
      @bike = Bike.find(params[:id])
    end


    def edit
      @bike = Bike.find(params[:id])
    end


    def update
      @bike = Bike.find(params[:id])
    
      respond_to do |format|
        if @bike.update(bike_params)
          flash[:notice] = ' was successfully updated.'
          format.html { redirect_to(@bike) }
          format.xml  { head :ok }
        else
          format.html { render action: 'edit' }
          format.xml  { render xml: @bike.errors, status: :unprocessable_entity }
        end
      end
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

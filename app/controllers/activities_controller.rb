class ActivitiesController < ApplicationController

    def new
        @activity = Activity.new
    end

    def create
        @activity = Activity.new(activity_params)
        
        respond_to do |wants|
            if @activity.save
                flash[:success] = 'modemodemodel was successfully created.'
                wants.html { redirect_to(@activity) }
                wants.xml { render :xml => @activity, :status => :created, :location => @activity }
            else
                flash[:dander] = 'modemodemodel was successfully created.'
                wants.html { render :action => "new" }
                wants.xml { render :xml => @activity.errors, :status => :unprocessable_entity }
            end
        end
    end


    def show
        @activity = Activity.find(params[:id])
    
        respond_to do |format|
            format.html # show.html.erb
            format.xml  { render xml: @activity }
        end
    end



    private

    def activity_params 
        params.require(:activity).permit(:name,:cover,:start_time,:end_time,:rule,:information) 
    end

end

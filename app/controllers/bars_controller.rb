class BarsController < ApplicationController

    # List all bars
    def index
      bars = Bar.all
      render json: bars
    end
  
    # Show details of a single bar
    def show
      bar = Bar.find(params[:id])
      render json: bar
    end
  
    # Create a new bar
    def create
      bar = Bar.new(bar_params)
      if bar.save
        render json: bar, status: :created
      else
        render json: bar.errors, status: :unprocessable_entity
      end
    end
  
    # Update an existing bar
    def update
      bar = Bar.find(params[:id])
      if bar.update(bar_params)
        render json: bar
      else
        render json: bar.errors, status: :unprocessable_entity
      end
    end
  
    # Delete a bar
    def destroy
      bar = Bar.find(params[:id])
      bar.destroy
      head :no_content
    end
  
    private
  
    # Strong parameters to filter permitted data
    def bar_params
      params.require(:bar).permit(:name, :drink_name, :drink_description, :drink_picture_url, :city_walkability, :city_crime_rate)
    end
  
  end
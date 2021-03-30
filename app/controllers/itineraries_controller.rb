class ItinerariesController < ApplicationController
  
    def index
        @itineraries = Itinerary.all
        render json: @itineraries
    end    

    def show
        @itinerary = Itinerary.find(params[:id])
        render json: @itinerary
    end    

    def new
        @itinerary = Itinerary.new

        render json: ItinerarySerializer.new(@itinerary)
    end

    def create
        @itinerary = Itinerary.create(itinerary_params)

        render json: ItinerarySerializer.create(@itinerary)
    end

    def update
        @itinerary = Itinerary.find(params[:id])
        @itinerary.update(itinerary_params)

        render json: ItinerarySerializer.update(@itinerary)
    end

    def destroy
        @itinerary = Itinerary.find(params[:id])    
        @itinerary.destroy
    end

    private

    def itinerary_params
        params.require(:itinerary).permit(:name, :date, :description, :user_id)
    end
end
class ItinerariesController < ApplicationController

    def index
        @itinerary = Itinerary.all
        render json: @itinerary
    end
    
    def show 
        @itinerary = Itinerary.find(params[:id])
        render json: @itinerary
    end    
end

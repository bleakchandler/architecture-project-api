class ItinerarySitesController < ApplicationController

    def index
        @itinerary_sites = ItinerarySites.all
        render json: @itinerary_sites
    end
    
    def show 
        @itinerary_sites = ItinerarySites.find(params[:id])
        render json: @itinerary_sites
    end    


   
end

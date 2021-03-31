class ItinerarySitesController < ApplicationController

    def index
        @itinerary_sites = ItinerarySite.all
        render json: @itinerary_sites
    end
    
    def show 
        @itinerary_sites = ItinerarySite.find(params[:id])
        render json: @itinerary_sites
    end    

    def destroy
        @itinerary_sites = ItinerarySite.find(params[:id])   
        @itinerary_sites.destroy 
    end
end

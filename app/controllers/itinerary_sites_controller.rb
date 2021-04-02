class ItinerarySitesController < ApplicationController

    def index
        @itinerary_sites = ItinerarySite.all
        render json: @itinerary_sites
    end    

    def show
        @itinerary_site = ItinerarySite.find(params[:id])
        render json: @itinerary_site
    end    


    def new
        @itinerary_site = ItinerarySite.new

        render json: @itinerary_site
    end

    def create
        @itinerary_site = ItinerarySite.create(itinerary_site_params)

        render json: @itinerary_site
    end

    def destroy
        @itinerary_site = ItinerarySite.find(params[:id])  
        @itinerary_site.destroy
    end

    def update
        @itinerary_site = ItinerarySite.find(params[:id])
        @itinerary_site.update(itinerary_site_params)

        render json: @itinerary_site
    end

    private

    def itinerary_site_params
        params.require(:itinerary_site).permit(:name, :site_id, :itinerary_id)
    end
end

class SitesController < ApplicationController
    def index
        @sites = Site.all
        render json: @sites
    end    

    def show
        @site = Site.find(params[:id])
        render json: @site
    end    
end

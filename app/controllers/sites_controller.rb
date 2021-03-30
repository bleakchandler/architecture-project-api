class SitesController < ApplicationController
    def index
        @sites = Site.all
        render json: @sites
    end    

    def show
        @site = Site.find(params[:id])
        render json: @site
    end    


    def new
        @site = Site.new

        render json: SiteSerializer.new(site)
    end

    def create
        @site = Site.create(site_params)

        render json: SiteSerializer.create(@site)
    end

    def update
        @site = Site.find(params[:id])
        @site.update(site_params)

        render json: SiteSerializer.update(@site)
    end

    private

    def site_params
        params.require(:site).permit(:name, :description, :photo_url, :location, :architectural_style)
    end
end

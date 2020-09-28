class VenuesController < ApplicationController

    before_action :get_venue, only: [:show]

    def index
        @venues = Venue.all 
    end

    def show
    end

    private

    def venue_params
        params.require(:venue).permit!
    end

    def get_venue
        @venue = Venue.find(params[:id])
    end
end

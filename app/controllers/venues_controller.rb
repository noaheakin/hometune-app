class VenuesController < ApplicationController

    before_action :get_venue, only: [:show]

    def index
        @venues = Venue.all 
    end

    def show
    end

    def button
        @venues = Venue.all
        @venues = @venues.alphabetized
        redirect_to venues_path
    end

    private

    def venue_params
        params.require(:venue).permit!
    end

    def get_venue
        @venue = Venue.find(params[:id])
    end
end

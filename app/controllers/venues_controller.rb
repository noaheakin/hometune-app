class VenuesController < ApplicationController

    before_action :get_venue, only: [:show]

    def index
        @venues = Venue.all 
        #@options_array = ["alphabetical", "rose"]
    end

    def show
    end

    def alphabetized_venue_button
        @venues = Venue.all
        @venues = @venues.alphabetized
        render "index"
    end

    def most_popular_venue_button
        @venues = Venue.all
        @venues = @venues.most_popular
        render "index"
    end

    def least_popular_venue_button
        @venues = Venue.all
        @venues = @venues.least_popular
        render "index"
    end

    def by_location_venue_button
        @venues = Venue.all
        @venues = @venues.by_location
        render "index"
    end

    def highest_capacity_button
        @venues = Venue.all
        @venues = @venues.highest_capacity
        render "index"
    end

    def lowest_capacity_button
        @venues = Venue.all
        @venues = @venues.lowest_capacity
        render "index"
    end

    private

    def venue_params
        params.require(:venue).permit!
    end

    def get_venue
        @venue = Venue.find(params[:id])
    end
end

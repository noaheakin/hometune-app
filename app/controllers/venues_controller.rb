class VenuesController < ApplicationController

    before_action :get_venue, only: [:show]

    def index
        @venues = Venue.all 
        #@options_array = ["alphabetical", "rose"]
    end

    def show
    end

    def alphabetized_button
        @venues = Venue.all
        @venues = @venues.alphabetized
        render "index"
    end

    def most_popular_button
        @venues = Venue.all
        @venues = @venues.most_popular
        render "index"
    end

    def most_popular_button
        @venues = Venue.all
        @venues = @venues.most_popular
        render "index"
    end

    def most_popular_button
        @venues = Venue.all
        @venues = @venues.most_popular
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

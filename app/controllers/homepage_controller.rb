class HomepageController < ApplicationController

    def index
        @concerts = Concert.all
        @artists = Artist.all
        @venues = Venue.all
    end


end
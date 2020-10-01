class ConcertsController < ApplicationController
    
    before_action :get_concert, only: [:show]

    def index
        @concerts = Concert.all 
    end

    def show
    end

    def by_venue_concert_button
        @concerts = Concert.all
        @concerts = @concerts.by_venue
        render "index"
    end

    def by_popular_venue_concert_button
        @concerts = Concert.all
        @concerts = @concerts.by_popular_venue
        render "index"
    end

    def by_artist_concert_button
        @concerts = Concert.all
        @concerts = @concerts.by_artist
        render "index"
    end

    def by_popular_artist_concert_button
        @concerts = Concert.all
        @concerts = @concerts.by_popular_artist
        render "index"
    end

    def by_closest_date_concert_button
        @concerts = Concert.all
        @concerts = @concerts.by_closest_date
        render "index"
    end

    def by_furthest_date_concert_button
        @concerts = Concert.all
        @concerts = @concerts.by_furthest_date
        render "index"
    end

    def by_twenty_one_and_up_concert_button
        @concerts = Concert.all
        @concerts = @concerts.by_twenty_one_and_up
        render "index"
    end

    def by_under_twenty_one_concert_button
        @concerts = Concert.all
        @concerts = @concerts.by_under_twenty_one
        render "index"
    end

    def by_location_concert_button
        @concerts = Concert.all
        @concerts = @concerts.by_location
        render "index"
    end

    def by_genre_concert_button
        @concerts = Concert.all
        @concerts = @concerts.by_genre
        render "index"
    end

    private

    def concert_params
        params.require(:concert).permit!
    end

    def get_concert
        @concert = Concert.find(params[:id])
    end

end

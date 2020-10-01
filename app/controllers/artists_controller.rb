class ArtistsController < ApplicationController
    before_action :get_artist, only: [:show]

    def index
        @artists = Artist.all
    end

    def show
    end

    def alphabetized_artist_button
        @artists = Artist.all
        @artists = @artists.alphabetized
        render "index"
    end

    def most_popular_artist_button
        @artists = Artist.all
        @artists = @artists.most_popular
        render "index"
    end

    def least_popular_artist_button
        @artists = Artist.all
        @artists = @artists.least_popular
        render "index"
    end

    def by_genre_artist_button
        @artists = Artist.all
        @artists = @artists.by_genre
        render "index"
    end


    private

    def artist_params
        params.require(:artist).permit(:name, :genre, :bio, :popularity)
    end

    def get_artist
        @artist = Artist.find(params[:id])
    end
end

class ArtistsController < ApplicationController
    before_action :get_artist, only: [:show]

    def index
        @artist = Artist.all
    end

    def show
    end


    private

    def artist_params
        params.require(:artist).permit(:name, :genre, :bio, :popularity)
    end

    def get_artist
        @artist = Artist.find(params[:id])
    end
end

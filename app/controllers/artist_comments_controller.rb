class ArtistCommentsController < ApplicationController
    before_action :set_artist_comment, only: [:show]

    def index
        @artist_comments = ArtistComment.all
    end

    def show
    end

    def new
        @artist_comment = ArtistComment.new
    end

    def create
        @artist_comment = ArtistComment.create(artist_comment_params)
    end

    private

    def artist_comment_params
        params.require(:artist_comment).permit(:user_id, :artist_id, :content)
    end

    def set_artist_comment
        @artist_comment = ArtistComment.find(params[:id])
    end
end

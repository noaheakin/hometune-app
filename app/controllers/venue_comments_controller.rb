class VenueCommentsController < ApplicationController
    
    before_action :set_venue_comment, only: [:show]

    def show
    end

    def new
        @venue_comment = VenueComment.new
    end

    def create
        @venue_comment = VenueComment.create(venue_comment_params)
    end

    private

    def venue_comment_params
        params.require(:venue_comment).permit!
    end

    def set_venue_comment
        @venue_comment = VenueComment.find(params[:id])
    end
end

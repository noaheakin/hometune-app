class VenueCommentsController < ApplicationController
    
    before_action :set_venue_comment, only: [:show]

    def show
    end

    def new
        @venue_comment = VenueComment.new
        @venues = Venue.all
    end

    def create
        @venue_comment = VenueComment.new(venue_comment_params)
        @venue_comment.user_id = session[:user_id]
        @venue_comment.save
        if @venue_comment.valid?
            redirect_to venue_path(@venue_comment.venue)
        else
            flash[:errors] = @venue_comment.errors.full_messages
            redirect_to new_venue_comment_path
        end
    end

    private

    def venue_comment_params
        params.require(:venue_comment).permit(:user_id, :venue_id, :content)
    end

    def set_venue_comment
        @venue_comment = VenueComment.find(params[:id])
    end
end

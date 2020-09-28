class ConcertsController < ApplicationController
    
    before_action :get_concert, only: [:show]

    def index
        @concerts = Concert.all 
    end

    def show
    end

    private

    def concert_params
        params.require(:concert).permit!
    end

    def get_concert
        @concert = Concert.find(params[:id])
    end

end

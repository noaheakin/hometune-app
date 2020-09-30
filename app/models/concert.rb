class Concert < ApplicationRecord
    belongs_to :artist
    belongs_to :venue

    # displays readable concert date
    def display_date
        self.date.strftime("%A, %B %d, %Y - %I:%M %p")  
    end
    #sort by venue, artist, popular artists, popular artists, date both ways, genre, location
end

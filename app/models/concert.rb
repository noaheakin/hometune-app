class Concert < ApplicationRecord
    belongs_to :artist
    belongs_to :venue

    # displays readable concert date
    def display_date
        self.date.strftime("%A, %B %d, %Y - %I:%M %p")  
    end
end

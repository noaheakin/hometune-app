class Concert < ApplicationRecord
    belongs_to :artist
    belongs_to :venue

    # displays readable concert date
    def display_date
        self.date.strftime("%A, %B %d, %Y - %I:%M %p")  
    end

    # sorts concerts by venue
    def self.by_venue
        self.all.sort_by do |concert| 
            concert.venue.name
        end
    end
    
    # sorts concerts by popular artist
    def self.by_popular_venue
        self.by_venue.sort_by do |concert|
            concert.venue.popularity
        end.reverse
    end

    # sorts concerts by artist
    def self.by_artist
        self.all.sort_by do |concert| 
            concert.artist.name
        end
    end

    # sorts concerts by popular artist
    def self.by_popular_artist
        self.by_artist.sort_by do |concert|
            concert.artist.popularity
        end.reverse
    end

    # sorts concerts by closest date
    def self.by_closest_date
        self.all.sort_by do |concert|
            concert.date
        end
    end

    # sorts concerts by furthest date
    def self.by_furthest_date
        self.all.sort_by do |concert|
            concert.date
        end.reverse
    end

    # shows all 21+ concerts
    def self.by_twenty_one_and_up
        self.all.select do |concert|
            concert.twenty_one_and_up
        end
    end

    # shows all under 21 concerts
    def self.by_under_twenty_one
        self.all.select do |concert|
            !concert.twenty_one_and_up
        end
    end

    # sorts concerts by location
    def self.by_location
        self.by_venue.sort_by do |concert|
            concert.venue.location
        end
    end

    # sorts concerts by genre
    def self.by_genre
        self.by_artist.sort_by do |concert|
            concert.artist.genre
        end
    end

    def all_ages?
        if self.twenty_one_and_up
            "21+ only"
        else
            "All ages"
        end
    end

end

class Venue < ApplicationRecord
    has_many :concerts
    has_many :artists, through: :concerts

    has_many :venue_comments
    has_many :users, through: :venue_comments

    # shows venue comments sorted by most recent
    def most_recent_comments
        self.venue_comments.reverse
    end

    # alphabetizes the venues
    def self.alphabetized
        self.all.sort_by(&:name)
    end

    # sorts by most popular
    def self.most_popular
        self.all.sort_by(&:popularity).reverse
    end

    # sorts by least popular
    def self.least_popular
        self.all.sort_by(&:popularity)
    end

    # sorts by location
    def self.by_location
        self.all.sort_by(&:location)
    end

    # sorts by highest capacity
    def self.highest_capacity
        self.all.sort_by(&:capacity).reverse
    end

    # sorts by lowest capacity
    def self.lowest_capacity
        self.all.sort_by(&:capacity)
    end

end

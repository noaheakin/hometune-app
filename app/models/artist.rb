class Artist < ApplicationRecord
    has_many :artist_comments
    has_many :users, through: :artist_comments

    has_many :concerts
    has_many :venues, through: :concerts

    # alphabetizes the artists
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

    # sorts by genre
    def self.by_genre
        self.all.sort_by(&:genre)
    end


end

class User < ApplicationRecord
    has_many :artist_comments
    has_many :artists, through: :artist_comments

    has_many :venue_comments
    has_many :venues, through: :venue_comments
end

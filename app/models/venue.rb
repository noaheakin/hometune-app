class Venue < ApplicationRecord
    has_many :concerts
    has_many :artists, through: :concerts

    has_many :venue_comments
    has_many :users, through: :venue_comments
end

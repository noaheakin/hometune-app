class Artist < ApplicationRecord
    has_many :artist_comments
    has_many :users, through: :artist_comments

    has_many :concerts
    has_many :venues, through: :concerts
end

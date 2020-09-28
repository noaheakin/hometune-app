class Artist < ApplicationRecord
    has_many :artist_comments
    has_many :users, through: :artist_comments
end

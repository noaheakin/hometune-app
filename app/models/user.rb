class User < ApplicationRecord
    has_many :artist_comments
    has_many :artists, through: :artist_comments

    has_many :venue_comments
    has_many :venues, through: :venue_comments

    validates_presence_of :username
    validates_uniqueness_of :username
    
    has_secure_password
end

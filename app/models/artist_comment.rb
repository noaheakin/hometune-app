class ArtistComment < ApplicationRecord
    belongs_to :user
    belongs_to :artist

    validates :content, length: { minimum: 5}
end

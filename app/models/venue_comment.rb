class VenueComment < ApplicationRecord
    belongs_to :venue 
    belongs_to :user
    
    validates :content, length: { minimum: 5}
end

class Concert < ApplicationRecord
    belongs_to :artist
    belongs_to :venue

    # displays readable concert date
    def self.display_date
    end
end

class Site < ApplicationRecord
    has_many: itinerary_sites
    has_many: itineraries, through: :itinerary_sites
end

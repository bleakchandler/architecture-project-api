class ItinerarySite < ApplicationRecord
  belongs_to :site
  belongs_to :itinerary
end

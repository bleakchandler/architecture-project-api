class ItinerarySiteSerializer < ActiveModel::Serializer
  attributes :id, :name, :site, :itinerary
  belongs_to :itinerary
  belongs_to :site
end

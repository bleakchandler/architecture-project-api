class SiteSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :description, :architectural_style, :photo_url
  has_many :itinerary_sites
  has_many :itineraries, through: :itinerary_sites
end

class ItinerarySerializer < ActiveModel::Serializer
  attributes :id, :date, :description, :name, :user_id
  has_many :itinerary_sites
  has_many :sites, through: :itinerary_sites
end

class Itinerary < ApplicationRecord
  belongs_to :user
  has_many :itinerary_sites
  has_many :sites, through: :itinerary_sites
end

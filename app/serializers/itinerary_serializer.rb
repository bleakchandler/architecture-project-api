class ItinerarySerializer < ActiveModel::Serializer
  attributes :id, :date, :description, :name
end

class SiteSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :description, :architectural_style, :photo_url
end

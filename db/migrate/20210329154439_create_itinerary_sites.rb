class CreateItinerarySites < ActiveRecord::Migration[6.1]
  def change
    create_table :itinerary_sites do |t|
      t.string :name
      t.belongs_to :site, null: false, foreign_key: true
      t.belongs_to :itinerary, null: false, foreign_key: true

      t.timestamps
    end
  end
end

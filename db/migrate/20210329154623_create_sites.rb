class CreateSites < ActiveRecord::Migration[6.1]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :architectural_style
      t.string :photo_url

      t.timestamps
    end
  end
end

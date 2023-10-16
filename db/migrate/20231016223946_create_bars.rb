class CreateBars < ActiveRecord::Migration[7.1]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :drink_name
      t.string :drink_description
      t.string :drink_picture_url
      t.string :city_walkability
      t.string :city_crime_rate

      t.timestamps
    end
  end
end

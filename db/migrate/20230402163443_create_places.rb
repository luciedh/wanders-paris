class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :title
      t.text :description
      t.string :address
      t.string :string
      t.integer :geo_lat
      t.integer :geo_long
      t.integer :post_code
      t.string :img_url
      t.string :audio_url
      t.integer :geolocalisation
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

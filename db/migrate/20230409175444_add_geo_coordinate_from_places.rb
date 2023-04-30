class AddGeoCoordinateFromPlaces < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :geo_lat, :float
    add_column :places, :geo_long, :float
  end
end

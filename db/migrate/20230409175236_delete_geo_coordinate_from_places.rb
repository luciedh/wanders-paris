class DeleteGeoCoordinateFromPlaces < ActiveRecord::Migration[7.0]
  def change
    remove_column :places, :geo_lat, :integer
    remove_column :places, :geo_long, :integer
  end
end

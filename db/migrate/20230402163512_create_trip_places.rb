class CreateTripPlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :trip_places do |t|
      t.references :trip, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end

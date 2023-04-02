class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.string :title
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

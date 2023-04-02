class RemoveStringFromPlaces < ActiveRecord::Migration[7.0]
  def change
    remove_column :places, :string, :string
  end
end

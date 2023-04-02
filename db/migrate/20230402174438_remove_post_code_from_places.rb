class RemovePostCodeFromPlaces < ActiveRecord::Migration[7.0]
  def change
    remove_column :places, :post_code, :integer
  end
end

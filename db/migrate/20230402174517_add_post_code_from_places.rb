class AddPostCodeFromPlaces < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :post_code, :string
  end
end

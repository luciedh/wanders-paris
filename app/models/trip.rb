class Trip < ApplicationRecord
  belongs_to :category
  has_many :places, through: :trip_places
end

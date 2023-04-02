class Place < ApplicationRecord
  belongs_to :category
  has_many :favourite_places
  has_many :trip_places
  has_many :trips, through: :trip_places
  validates :title, :description, :address, :img_url, presence: true
end

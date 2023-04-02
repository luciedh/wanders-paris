class TripPlace < ApplicationRecord
  belongs_to :trip
  belongs_to :place
end

class Category < ApplicationRecord
  has_many :trips
  has_many :places
end
